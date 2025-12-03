@interface NotesAssistantUtilities
+ (id)URLForSearchIndexableNote:(id)note;
+ (id)saNoteObjectForSearchIndexableNote:(id)note;
+ (id)searchIndexableNoteForObject:(id)object modernNoteContext:(id)context htmlNoteContext:(id)noteContext;
+ (id)sharedHTMLNoteManagedObjectContext;
@end

@implementation NotesAssistantUtilities

+ (id)sharedHTMLNoteManagedObjectContext
{
  v2 = +[NoteContext sharedContext];
  managedObjectContext = [v2 managedObjectContext];

  return managedObjectContext;
}

+ (id)saNoteObjectForSearchIndexableNote:(id)note
{
  noteCopy = note;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_A4B8;
  v16 = sub_A4C8;
  v17 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = noteCopy;
    managedObjectContext = [v4 managedObjectContext];
    v6 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_A4D0;
    v11[3] = &unk_18668;
    v11[5] = &v12;
    v11[4] = v4;
    [managedObjectContext performBlockAndWait:v11];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = noteCopy;
    managedObjectContext = [v7 managedObjectContext];
    v6 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_A5E0;
    v10[3] = &unk_18668;
    v10[5] = &v12;
    v10[4] = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

LABEL_6:
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (id)searchIndexableNoteForObject:(id)object modernNoteContext:(id)context htmlNoteContext:(id)noteContext
{
  objectCopy = object;
  contextCopy = context;
  noteContextCopy = noteContext;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_A4B8;
  v34 = sub_A4C8;
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
      identifier = [v12 identifier];

      v11 = identifier;
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
      v26[2] = sub_A9E0;
      v26[3] = &unk_18690;
      v16 = v15;
      v27 = v16;
      v28 = contextCopy;
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
      persistentStoreCoordinator = [noteContextCopy persistentStoreCoordinator];
      v19 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v16];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_AA78;
      v22[3] = &unk_186B8;
      v25 = &v30;
      v23 = noteContextCopy;
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

+ (id)URLForSearchIndexableNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [ICAppURLUtilities appURLForNote:noteCopy];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [ICAppURLUtilities appURLForHTMLNote:noteCopy];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end