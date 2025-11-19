@interface ENDeveloperSettingsController
- (id)specifiers;
- (void)chooseOverrideConfigurationFile:(id)a3;
- (void)clearOverrideConfigurationFile:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)presentError:(id)a3 title:(id)a4;
- (void)setOverrideConfigurationFile:(id)a3 completionHandler:(id)a4;
@end

@implementation ENDeveloperSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(ENDeveloperSettingsController *)self loadSpecifiersFromPlistName:@"ENDeveloperSettings" target:self];
    if (CFPrefs_GetInt64())
    {
      v6 = v5;
    }

    else
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = [v5 specifierForID:@"developerServerConfiguration"];
      [v6 addObject:v7];

      v8 = [v5 specifierForID:@"ConfigurationFileGroup"];
      [v6 addObject:v8];

      v9 = [v5 specifierForID:@"chooseConfigurationFile"];
      [v6 addObject:v9];

      v10 = [v5 specifierForID:@"clearConfigurationFile"];
      [v6 addObject:v10];
    }

    v11 = [v6 copy];
    v12 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v11;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)chooseOverrideConfigurationFile:(id)a3
{
  v4 = [UTType typeWithIdentifier:kUTTypePropertyList];
  v5 = [UTType typeWithIdentifier:kUTTypeJSON];
  v6 = [UIDocumentPickerViewController alloc];
  v9[0] = v4;
  v9[1] = v5;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  v8 = [v6 initForOpeningContentTypes:v7 asCopy:1];

  [v8 setDelegate:self];
  [(ENDeveloperSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)clearOverrideConfigurationFile:(id)a3
{
  NSLog(@"Clear override configuration file.", a2, a3);
  v4 = objc_alloc_init(ENManager);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F6C;
  v5[3] = &unk_4168;
  v5[4] = self;
  [v4 clearDeveloperServerConfigurationWithCompletionHandler:v5];
}

- (void)presentError:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = [a3 localizedDescription];
  v11 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_4318 table:0];

  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(ENDeveloperSettingsController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setOverrideConfigurationFile:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0;
  v20 = 0;
  v7 = [v5 getResourceValue:&v21 forKey:NSURLTypeIdentifierKey error:&v20];
  v8 = v21;
  v9 = v20;
  if (v7)
  {
    v10 = [NSData dataWithContentsOfURL:v5];
    if (UTTypeConformsTo(v8, kUTTypePropertyList))
    {
      v19 = 0;
      v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v19];
      v12 = v19;
    }

    else
    {
      if (!UTTypeConformsTo(v8, kUTTypeJSON))
      {
        v11 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
        v6[2](v6, v11);
LABEL_11:

        goto LABEL_12;
      }

      v18 = 0;
      v11 = [NSJSONSerialization JSONObjectWithData:v10 options:0 error:&v18];
      v12 = v18;
    }

    v13 = v12;
    if (v13)
    {
      v14 = v13;
      v6[2](v6, v13);

      v11 = v14;
    }

    else
    {
      v15 = objc_alloc_init(ENManager);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_139C;
      v16[3] = &unk_4190;
      v17 = v6;
      [v15 setDeveloperServerConfiguration:v11 completionHandler:v16];
    }

    goto LABEL_11;
  }

  v6[2](v6, v9);
LABEL_12:
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = [a4 firstObject];
  v6 = [v5 path];
  NSLog(@"Override configuration file: %@", v6);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1478;
  v8[3] = &unk_41B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [(ENDeveloperSettingsController *)self setOverrideConfigurationFile:v7 completionHandler:v8];
}

@end