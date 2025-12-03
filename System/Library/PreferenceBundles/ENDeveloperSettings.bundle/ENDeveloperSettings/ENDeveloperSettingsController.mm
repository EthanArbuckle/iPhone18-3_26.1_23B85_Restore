@interface ENDeveloperSettingsController
- (id)specifiers;
- (void)chooseOverrideConfigurationFile:(id)file;
- (void)clearOverrideConfigurationFile:(id)file;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)presentError:(id)error title:(id)title;
- (void)setOverrideConfigurationFile:(id)file completionHandler:(id)handler;
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

- (void)chooseOverrideConfigurationFile:(id)file
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

- (void)clearOverrideConfigurationFile:(id)file
{
  NSLog(@"Clear override configuration file.", a2, file);
  v4 = objc_alloc_init(ENManager);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F6C;
  v5[3] = &unk_4168;
  v5[4] = self;
  [v4 clearDeveloperServerConfigurationWithCompletionHandler:v5];
}

- (void)presentError:(id)error title:(id)title
{
  titleCopy = title;
  localizedDescription = [error localizedDescription];
  v11 = [UIAlertController alertControllerWithTitle:titleCopy message:localizedDescription preferredStyle:1];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_4318 table:0];

  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];
  [v11 addAction:v10];

  [(ENDeveloperSettingsController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)setOverrideConfigurationFile:(id)file completionHandler:(id)handler
{
  fileCopy = file;
  handlerCopy = handler;
  v21 = 0;
  v20 = 0;
  v7 = [fileCopy getResourceValue:&v21 forKey:NSURLTypeIdentifierKey error:&v20];
  v8 = v21;
  v9 = v20;
  if (v7)
  {
    v10 = [NSData dataWithContentsOfURL:fileCopy];
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
        handlerCopy[2](handlerCopy, v11);
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
      handlerCopy[2](handlerCopy, v13);

      v11 = v14;
    }

    else
    {
      v15 = objc_alloc_init(ENManager);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_139C;
      v16[3] = &unk_4190;
      v17 = handlerCopy;
      [v15 setDeveloperServerConfiguration:v11 completionHandler:v16];
    }

    goto LABEL_11;
  }

  handlerCopy[2](handlerCopy, v9);
LABEL_12:
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  firstObject = [ls firstObject];
  path = [firstObject path];
  NSLog(@"Override configuration file: %@", path);

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1478;
  v8[3] = &unk_41B8;
  v8[4] = self;
  v9 = firstObject;
  v7 = firstObject;
  [(ENDeveloperSettingsController *)self setOverrideConfigurationFile:v7 completionHandler:v8];
}

@end