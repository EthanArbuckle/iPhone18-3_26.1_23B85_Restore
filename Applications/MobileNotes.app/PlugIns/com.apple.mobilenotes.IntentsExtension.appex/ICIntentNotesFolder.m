@interface ICIntentNotesFolder
+ (ICIntentNotesFolder)currentDefaultNotesFolder;
- (ICIntentNotesFolder)initWithIdentifier:(id)a3 title:(id)a4 depth:(int64_t)a5 shareDescription:(id)a6 systemImageName:(id)a7;
- (ICIntentNotesFolder)initWithObject:(id)a3;
- (ICIntentNotesFolder)initWithVirtualSmartFolder:(id)a3;
@end

@implementation ICIntentNotesFolder

+ (ICIntentNotesFolder)currentDefaultNotesFolder
{
  v2 = [ICIntentNotesFolder alloc];
  v3 = +[ICAppURLUtilities appURLForDefaultFolder];
  v4 = [v3 absoluteString];
  v5 = +[ICFolder localizedTitleForDefaultFolder];
  v6 = +[ICFolder defaultSystemImageName];
  v7 = [(ICIntentNotesFolder *)v2 initWithIdentifier:v4 title:v5 depth:0 shareDescription:0 systemImageName:v6];

  return v7;
}

- (ICIntentNotesFolder)initWithObject:(id)a3
{
  v4 = a3;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100002A78;
  v42 = sub_100002A88;
  v43 = 0;
  v5 = [v4 objectID];
  if ([v5 ic_isModernAccountType])
  {

LABEL_4:
    v8 = [v4 managedObjectContext];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002A90;
    v34[3] = &unk_100020768;
    v35 = v4;
    v37 = &v38;
    v36 = self;
    [v8 performBlockAndWait:v34];

    v9 = v35;
    goto LABEL_5;
  }

  v6 = [v4 objectID];
  v7 = [v6 ic_isModernAccountProxyType];

  if (v7)
  {
    goto LABEL_4;
  }

  v12 = [v4 objectID];
  v13 = [v12 ic_isLegacyAccountType];

  if (v13)
  {
    v14 = [v4 managedObjectContext];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100002C0C;
    v30[3] = &unk_100020768;
    v31 = v4;
    v33 = &v38;
    v32 = self;
    [v14 performBlockAndWait:v30];

    v9 = v31;
  }

  else
  {
    v15 = [v4 objectID];
    v16 = [v15 ic_isModernFolderType];

    if (v16)
    {
      v17 = [v4 managedObjectContext];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100002D60;
      v26[3] = &unk_100020768;
      v27 = v4;
      v29 = &v38;
      v28 = self;
      [v17 performBlockAndWait:v26];

      v9 = v27;
    }

    else
    {
      v18 = [v4 objectID];
      v19 = [v18 ic_isLegacyFolderType];

      if (v19)
      {
        v20 = [v4 managedObjectContext];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100002EC4;
        v22[3] = &unk_100020768;
        v23 = v4;
        v25 = &v38;
        v24 = self;
        [v20 performBlockAndWait:v22];

        v9 = v23;
      }

      else
      {
        v9 = os_log_create("com.apple.notes", "Intents");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v21 = [v4 objectID];
          sub_100012C6C(v21, buf, v9);
        }
      }
    }
  }

LABEL_5:

  v10 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v10;
}

- (ICIntentNotesFolder)initWithVirtualSmartFolder:(id)a3
{
  v4 = a3;
  v5 = [ICAppURLUtilities appURLForVirtualSmartFolder:v4];
  v6 = [v5 absoluteString];
  v7 = [v4 title];
  v8 = [v4 systemImageName];

  v9 = [(ICIntentNotesFolder *)self initWithIdentifier:v6 title:v7 depth:0 shareDescription:0 systemImageName:v8];
  return v9;
}

- (ICIntentNotesFolder)initWithIdentifier:(id)a3 title:(id)a4 depth:(int64_t)a5 shareDescription:(id)a6 systemImageName:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v30.receiver = self;
  v30.super_class = ICIntentNotesFolder;
  v16 = [(ICIntentNotesFolder *)&v30 initWithIdentifier:v12 displayString:v13];
  v17 = v16;
  if (v16)
  {
    v28 = v16;
    v18 = [v13 mutableCopy];
    v29 = v14;
    for (i = [v14 mutableCopy]; a5; --a5)
    {
      [v18 insertString:@" " atIndex:0];
      [i insertString:@" " atIndex:0];
    }

    v20 = [[ICIntentNotesFolder alloc] initWithIdentifier:v12 displayString:v18];
    v21 = [UIImageSymbolConfiguration configurationWithScale:3];
    v22 = [UIImage _systemImageNamed:v15 withConfiguration:v21];
    v23 = +[UIColor ICTintColor];
    [v22 imageWithTintColor:v23];
    v25 = v24 = v15;

    v26 = [INImage imageWithUIImage:v25];
    [(ICIntentNotesFolder *)v20 setDisplayImage:v26];

    [(ICIntentNotesFolder *)v20 setSubtitleString:i];
    v15 = v24;

    v17 = v28;
    v14 = v29;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end