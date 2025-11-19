@interface NotesAssistantUtilities
+ (id)URLForSearchIndexableNote:(id)a3;
+ (id)saNoteObjectForSearchIndexableNote:(id)a3;
+ (id)searchIndexableNoteForObject:(id)a3 modernNoteContext:(id)a4 htmlNoteContext:(id)a5;
+ (id)sharedHTMLNoteManagedObjectContext;
@end

@implementation NotesAssistantUtilities

+ (id)sharedHTMLNoteManagedObjectContext
{
  v2 = +[NoteContext sharedContext];
  v3 = [v2 managedObjectContext];

  return v3;
}

+ (id)saNoteObjectForSearchIndexableNote:(id)a3
{
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000C948;
  v16 = sub_10000C958;
  v17 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 managedObjectContext];
    v6 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000C960;
    v11[3] = &unk_100020C78;
    v11[5] = &v12;
    v11[4] = v4;
    [v5 performBlockAndWait:v11];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = v3;
    v5 = [v7 managedObjectContext];
    v6 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000CA70;
    v10[3] = &unk_100020C78;
    v10[5] = &v12;
    v10[4] = v7;
    [v5 performBlockAndWait:v10];
  }

LABEL_6:
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (id)searchIndexableNoteForObject:(id)a3 modernNoteContext:(id)a4 htmlNoteContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10000C948;
  v34 = sub_10000C958;
  v35 = ICProtocolCast();
  v10 = v31[5];
  if (!v10)
  {
    objc_opt_class();
    v11 = ICDynamicCast();
    objc_opt_class();
    v12 = ICDynamicCast();
    v13 = v12;
    if (v12)
    {
      v14 = [v12 identifier];

      v11 = v14;
    }

    if (!v11)
    {
      goto LABEL_12;
    }

    if ([ICAppURLUtilities isShowNoteURL:v11])
    {
      v15 = [ICAppURLUtilities predicateForNotesMentionedInURL:v11];
      v16 = v15;
      if (!v15)
      {
LABEL_11:

        goto LABEL_12;
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000CE70;
      v26[3] = &unk_100020790;
      v16 = v15;
      v27 = v16;
      v28 = v8;
      v29 = &v30;
      [v28 performBlockAndWait:v26];

      v17 = v27;
    }

    else
    {
      if (![ICAppURLUtilities isShowHTMLNoteURL:v11])
      {
LABEL_12:

        v10 = v31[5];
        goto LABEL_13;
      }

      v16 = [ICAppURLUtilities objectIDURIRepresentationForHTMLNoteMentionedInURL:v11];
      v18 = [v9 persistentStoreCoordinator];
      v19 = [v18 managedObjectIDForURIRepresentation:v16];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000CF08;
      v22[3] = &unk_100020CA0;
      v25 = &v30;
      v23 = v9;
      v17 = v19;
      v24 = v17;
      [v23 performBlockAndWait:v22];
    }

    goto LABEL_11;
  }

LABEL_13:
  v20 = v10;
  _Block_object_dispose(&v30, 8);

  return v20;
}

+ (id)URLForSearchIndexableNote:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [ICAppURLUtilities appURLForNote:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [ICAppURLUtilities appURLForHTMLNote:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end