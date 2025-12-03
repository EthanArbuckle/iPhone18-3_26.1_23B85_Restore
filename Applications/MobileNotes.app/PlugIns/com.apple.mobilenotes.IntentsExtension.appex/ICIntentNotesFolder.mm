@interface ICIntentNotesFolder
+ (ICIntentNotesFolder)currentDefaultNotesFolder;
- (ICIntentNotesFolder)initWithIdentifier:(id)identifier title:(id)title depth:(int64_t)depth shareDescription:(id)description systemImageName:(id)name;
- (ICIntentNotesFolder)initWithObject:(id)object;
- (ICIntentNotesFolder)initWithVirtualSmartFolder:(id)folder;
@end

@implementation ICIntentNotesFolder

+ (ICIntentNotesFolder)currentDefaultNotesFolder
{
  v2 = [ICIntentNotesFolder alloc];
  v3 = +[ICAppURLUtilities appURLForDefaultFolder];
  absoluteString = [v3 absoluteString];
  v5 = +[ICFolder localizedTitleForDefaultFolder];
  v6 = +[ICFolder defaultSystemImageName];
  v7 = [(ICIntentNotesFolder *)v2 initWithIdentifier:absoluteString title:v5 depth:0 shareDescription:0 systemImageName:v6];

  return v7;
}

- (ICIntentNotesFolder)initWithObject:(id)object
{
  objectCopy = object;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100002A78;
  v42 = sub_100002A88;
  v43 = 0;
  objectID = [objectCopy objectID];
  if ([objectID ic_isModernAccountType])
  {

LABEL_4:
    managedObjectContext = [objectCopy managedObjectContext];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002A90;
    v34[3] = &unk_100020768;
    v35 = objectCopy;
    v37 = &v38;
    selfCopy = self;
    [managedObjectContext performBlockAndWait:v34];

    v9 = v35;
    goto LABEL_5;
  }

  objectID2 = [objectCopy objectID];
  ic_isModernAccountProxyType = [objectID2 ic_isModernAccountProxyType];

  if (ic_isModernAccountProxyType)
  {
    goto LABEL_4;
  }

  objectID3 = [objectCopy objectID];
  ic_isLegacyAccountType = [objectID3 ic_isLegacyAccountType];

  if (ic_isLegacyAccountType)
  {
    managedObjectContext2 = [objectCopy managedObjectContext];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100002C0C;
    v30[3] = &unk_100020768;
    v31 = objectCopy;
    v33 = &v38;
    selfCopy2 = self;
    [managedObjectContext2 performBlockAndWait:v30];

    v9 = v31;
  }

  else
  {
    objectID4 = [objectCopy objectID];
    ic_isModernFolderType = [objectID4 ic_isModernFolderType];

    if (ic_isModernFolderType)
    {
      managedObjectContext3 = [objectCopy managedObjectContext];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100002D60;
      v26[3] = &unk_100020768;
      v27 = objectCopy;
      v29 = &v38;
      selfCopy3 = self;
      [managedObjectContext3 performBlockAndWait:v26];

      v9 = v27;
    }

    else
    {
      objectID5 = [objectCopy objectID];
      ic_isLegacyFolderType = [objectID5 ic_isLegacyFolderType];

      if (ic_isLegacyFolderType)
      {
        managedObjectContext4 = [objectCopy managedObjectContext];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100002EC4;
        v22[3] = &unk_100020768;
        v23 = objectCopy;
        v25 = &v38;
        selfCopy4 = self;
        [managedObjectContext4 performBlockAndWait:v22];

        v9 = v23;
      }

      else
      {
        v9 = os_log_create("com.apple.notes", "Intents");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          objectID6 = [objectCopy objectID];
          sub_100012C6C(objectID6, buf, v9);
        }
      }
    }
  }

LABEL_5:

  v10 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v10;
}

- (ICIntentNotesFolder)initWithVirtualSmartFolder:(id)folder
{
  folderCopy = folder;
  v5 = [ICAppURLUtilities appURLForVirtualSmartFolder:folderCopy];
  absoluteString = [v5 absoluteString];
  title = [folderCopy title];
  systemImageName = [folderCopy systemImageName];

  v9 = [(ICIntentNotesFolder *)self initWithIdentifier:absoluteString title:title depth:0 shareDescription:0 systemImageName:systemImageName];
  return v9;
}

- (ICIntentNotesFolder)initWithIdentifier:(id)identifier title:(id)title depth:(int64_t)depth shareDescription:(id)description systemImageName:(id)name
{
  identifierCopy = identifier;
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = ICIntentNotesFolder;
  v16 = [(ICIntentNotesFolder *)&v30 initWithIdentifier:identifierCopy displayString:titleCopy];
  v17 = v16;
  if (v16)
  {
    v28 = v16;
    v18 = [titleCopy mutableCopy];
    v29 = descriptionCopy;
    for (i = [descriptionCopy mutableCopy]; depth; --depth)
    {
      [v18 insertString:@" " atIndex:0];
      [i insertString:@" " atIndex:0];
    }

    v20 = [[ICIntentNotesFolder alloc] initWithIdentifier:identifierCopy displayString:v18];
    v21 = [UIImageSymbolConfiguration configurationWithScale:3];
    v22 = [UIImage _systemImageNamed:nameCopy withConfiguration:v21];
    v23 = +[UIColor ICTintColor];
    [v22 imageWithTintColor:v23];
    v25 = v24 = nameCopy;

    v26 = [INImage imageWithUIImage:v25];
    [(ICIntentNotesFolder *)v20 setDisplayImage:v26];

    [(ICIntentNotesFolder *)v20 setSubtitleString:i];
    nameCopy = v24;

    v17 = v28;
    descriptionCopy = v29;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end