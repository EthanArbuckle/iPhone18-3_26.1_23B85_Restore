@interface ICIntentNote
- (ICIntentNote)initWithIdentifier:(id)identifier title:(id)title date:(id)date contentInfo:(id)info isLocked:(BOOL)locked isShared:(BOOL)shared isUnread:(BOOL)unread;
- (ICIntentNote)initWithObject:(id)object folderNoteSortType:(id)type;
@end

@implementation ICIntentNote

- (ICIntentNote)initWithObject:(id)object folderNoteSortType:(id)type
{
  objectCopy = object;
  typeCopy = type;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100002B0C;
  v35 = sub_100002B1C;
  v36 = 0;
  objectID = [objectCopy objectID];
  ic_isModernNoteType = [objectID ic_isModernNoteType];

  if (ic_isModernNoteType)
  {
    objc_opt_class();
    v10 = ICDynamicCast();
    managedObjectContext = [v10 managedObjectContext];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002B24;
    v26[3] = &unk_100092360;
    v12 = v10;
    v27 = v12;
    v30 = &v31;
    selfCopy = self;
    v29 = typeCopy;
    [managedObjectContext performBlockAndWait:v26];

    v13 = v27;
  }

  else
  {
    objectID2 = [objectCopy objectID];
    ic_isLegacyNoteType = [objectID2 ic_isLegacyNoteType];

    if (ic_isLegacyNoteType)
    {
      objc_opt_class();
      v16 = ICClassAndProtocolCast();
      managedObjectContext2 = [v16 managedObjectContext];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100002CAC;
      v21[3] = &unk_100092360;
      v12 = v16;
      v22 = v12;
      v25 = &v31;
      selfCopy2 = self;
      v24 = typeCopy;
      [managedObjectContext2 performBlockAndWait:v21];

      v13 = v22;
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "Intents");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        objectID3 = [objectCopy objectID];
        sub_100069F88(objectID3, buf, v13);
      }

      v12 = v13;
    }
  }

  v19 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v19;
}

- (ICIntentNote)initWithIdentifier:(id)identifier title:(id)title date:(id)date contentInfo:(id)info isLocked:(BOOL)locked isShared:(BOOL)shared isUnread:(BOOL)unread
{
  sharedCopy = shared;
  lockedCopy = locked;
  dateCopy = date;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = ICIntentNote;
  v17 = [(ICIntentNote *)&v28 initWithIdentifier:identifier displayString:title];
  if (v17)
  {
    ic_briefFormattedDate = [dateCopy ic_briefFormattedDate];
    infoCopy = [NSString localizedStringWithFormat:@"%@  %@", ic_briefFormattedDate, infoCopy];
    [(ICIntentNote *)v17 setSubtitleString:infoCopy];

    v20 = [UIImageSymbolConfiguration configurationWithScale:3];
    if (sharedCopy)
    {
      v21 = @"person.crop.circle";
    }

    else
    {
      if (!lockedCopy)
      {
        v22 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v20];
        v23 = +[UIColor clearColor];
        goto LABEL_8;
      }

      v21 = @"lock.fill";
    }

    v22 = [UIImage systemImageNamed:v21 withConfiguration:v20];
    v23 = +[UIColor secondaryLabelColor];
LABEL_8:
    v24 = v23;
    v25 = [v22 imageWithTintColor:v23];

    v26 = [INImage imageWithUIImage:v25];
    [(ICIntentNote *)v17 setDisplayImage:v26];
  }

  return v17;
}

@end