@interface ICIntentNote
- (ICIntentNote)initWithIdentifier:(id)a3 title:(id)a4 date:(id)a5 contentInfo:(id)a6 isLocked:(BOOL)a7 isShared:(BOOL)a8 isUnread:(BOOL)a9;
- (ICIntentNote)initWithObject:(id)a3 folderNoteSortType:(id)a4;
@end

@implementation ICIntentNote

- (ICIntentNote)initWithObject:(id)a3 folderNoteSortType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100002B0C;
  v35 = sub_100002B1C;
  v36 = 0;
  v8 = [v6 objectID];
  v9 = [v8 ic_isModernNoteType];

  if (v9)
  {
    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = [v10 managedObjectContext];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100002B24;
    v26[3] = &unk_100092360;
    v12 = v10;
    v27 = v12;
    v30 = &v31;
    v28 = self;
    v29 = v7;
    [v11 performBlockAndWait:v26];

    v13 = v27;
  }

  else
  {
    v14 = [v6 objectID];
    v15 = [v14 ic_isLegacyNoteType];

    if (v15)
    {
      objc_opt_class();
      v16 = ICClassAndProtocolCast();
      v17 = [v16 managedObjectContext];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100002CAC;
      v21[3] = &unk_100092360;
      v12 = v16;
      v22 = v12;
      v25 = &v31;
      v23 = self;
      v24 = v7;
      [v17 performBlockAndWait:v21];

      v13 = v22;
    }

    else
    {
      v13 = os_log_create("com.apple.notes", "Intents");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = [v6 objectID];
        sub_100069F88(v18, buf, v13);
      }

      v12 = v13;
    }
  }

  v19 = v32[5];
  _Block_object_dispose(&v31, 8);

  return v19;
}

- (ICIntentNote)initWithIdentifier:(id)a3 title:(id)a4 date:(id)a5 contentInfo:(id)a6 isLocked:(BOOL)a7 isShared:(BOOL)a8 isUnread:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = ICIntentNote;
  v17 = [(ICIntentNote *)&v28 initWithIdentifier:a3 displayString:a4];
  if (v17)
  {
    v18 = [v15 ic_briefFormattedDate];
    v19 = [NSString localizedStringWithFormat:@"%@  %@", v18, v16];
    [(ICIntentNote *)v17 setSubtitleString:v19];

    v20 = [UIImageSymbolConfiguration configurationWithScale:3];
    if (v9)
    {
      v21 = @"person.crop.circle";
    }

    else
    {
      if (!v10)
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