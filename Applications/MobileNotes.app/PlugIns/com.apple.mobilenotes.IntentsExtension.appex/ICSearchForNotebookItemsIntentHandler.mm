@interface ICSearchForNotebookItemsIntentHandler
- (void)handleSearchForNotebookItems:(id)a3 completion:(id)a4;
- (void)resolveContentForSearchForNotebookItems:(id)a3 withCompletion:(id)a4;
- (void)resolveTitleForSearchForNotebookItems:(id)a3 withCompletion:(id)a4;
@end

@implementation ICSearchForNotebookItemsIntentHandler

- (void)resolveTitleForSearchForNotebookItems:(id)a3 withCompletion:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v11 title];
  v7 = [v6 spokenPhrase];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v11 title];
    v10 = [INSpeakableStringResolutionResult successWithResolvedString:v9];
    v5[2](v5, v10);

    v5 = v10;
  }

  else
  {
    v9 = +[INSpeakableStringResolutionResult notRequired];
    v5[2](v5, v9);
  }
}

- (void)resolveContentForSearchForNotebookItems:(id)a3 withCompletion:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v10 content];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v10 content];
    v9 = [INStringResolutionResult successWithResolvedString:v8];
    v5[2](v5, v9);

    v5 = v9;
  }

  else
  {
    v8 = +[INStringResolutionResult notRequired];
    v5[2](v5, v8);
  }
}

- (void)handleSearchForNotebookItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 title];
  v9 = [v8 spokenPhrase];

  v10 = [v6 content];
  v11 = [v6 dateTime];
  v12 = [v11 startDateComponents];

  v13 = [v6 dateTime];
  v14 = [v13 endDateComponents];

  if (v12)
  {
    v15 = +[NSCalendar currentCalendar];
    v70 = [v15 dateFromComponents:v12];

    if (v14)
    {
LABEL_3:
      v16 = +[NSCalendar currentCalendar];
      v67 = [v16 dateFromComponents:v14];

      goto LABEL_6;
    }
  }

  else
  {
    v70 = 0;
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v67 = 0;
LABEL_6:
  v63 = v14;
  v64 = v12;
  v66 = [v6 dateSearchType];
  v17 = [v6 groupName];
  v18 = [v17 vocabularyIdentifier];

  v69 = v10;
  if (v18)
  {
    v19 = [v6 groupName];
    v20 = [v19 vocabularyIdentifier];
    v21 = [NSURL URLWithString:v20];

    v22 = [(ICBaseIntentHandler *)self noteContext];
    v23 = [v22 modernManagedObjectContext];
    v24 = [v23 persistentStoreCoordinator];
    [v24 managedObjectIDForURIRepresentation:v21];
    v26 = v25 = v7;

    v27 = [(ICBaseIntentHandler *)self noteContext];
    v28 = [v27 htmlManagedObjectContext];
    v29 = [v28 persistentStoreCoordinator];
    v30 = [v29 managedObjectIDForURIRepresentation:v21];

    v31 = v26;
    v7 = v25;
    v10 = v69;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v62 = v31;
  v32 = [(ICBaseIntentHandler *)self notesWithText:v10 title:v9 fromDate:v70 toDate:v67 dateSearchType:v66 modernFolderID:v30 legacyFolderID:?];
  v33 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_100013914(v33);
  }

  v34 = [v32 count];
  v65 = v7;
  v68 = v9;
  if (v34 > kICMaximumSiriNoteCount + 1)
  {
    v35 = [v32 subarrayWithRange:0];

    v32 = v35;
  }

  v61 = v30;
  v36 = objc_alloc_init(NSMutableArray);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v37 = v32;
  v38 = [v37 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = *v72;
    do
    {
      v42 = 0;
      do
      {
        if (*v72 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v43 = *(*(&v71 + 1) + 8 * v42);
        v44 = [v6 includeAllNoteContents];
        if (v40 < 5)
        {
          v45 = 1;
        }

        else
        {
          v45 = v44;
        }

        v46 = [(ICBaseIntentHandler *)self intentNoteForSearchIndexableNote:v43 includeContent:v45];
        if (v46)
        {
          [v36 addObject:v46];
        }

        ++v40;

        v42 = v42 + 1;
      }

      while (v39 != v42);
      v39 = [v37 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v39);
  }

  v47 = [NSUserActivity alloc];
  v48 = objc_opt_class();
  v49 = NSStringFromClass(v48);
  v50 = [v47 initWithActivityType:v49];

  v51 = objc_alloc_init(NSMutableDictionary);
  v52 = NSStringFromSelector("title");
  [v51 setObject:v68 forKeyedSubscript:v52];

  v53 = NSStringFromSelector("content");
  [v51 setObject:v69 forKeyedSubscript:v53];

  v54 = NSStringFromSelector("fromDate");
  [v51 setObject:v70 forKeyedSubscript:v54];

  v55 = NSStringFromSelector("toDate");
  [v51 setObject:v67 forKeyedSubscript:v55];

  v56 = [NSNumber numberWithInteger:v66];
  v57 = NSStringFromSelector("dateSearchType");
  [v51 setObject:v56 forKeyedSubscript:v57];

  v58 = [NSNumber numberWithInteger:v34];
  v59 = NSStringFromSelector("count");
  [v51 setObject:v58 forKeyedSubscript:v59];

  [v50 setUserInfo:v51];
  v60 = [[INSearchForNotebookItemsIntentResponse alloc] initWithCode:3 userActivity:v50];
  [v60 setNotes:v36];
  (v65)[2](v65, v60);
}

@end