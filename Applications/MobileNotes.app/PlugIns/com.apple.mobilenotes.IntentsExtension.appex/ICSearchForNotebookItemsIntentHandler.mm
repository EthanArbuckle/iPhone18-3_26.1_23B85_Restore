@interface ICSearchForNotebookItemsIntentHandler
- (void)handleSearchForNotebookItems:(id)items completion:(id)completion;
- (void)resolveContentForSearchForNotebookItems:(id)items withCompletion:(id)completion;
- (void)resolveTitleForSearchForNotebookItems:(id)items withCompletion:(id)completion;
@end

@implementation ICSearchForNotebookItemsIntentHandler

- (void)resolveTitleForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  title = [itemsCopy title];
  spokenPhrase = [title spokenPhrase];
  v8 = [spokenPhrase length];

  if (v8)
  {
    title2 = [itemsCopy title];
    v10 = [INSpeakableStringResolutionResult successWithResolvedString:title2];
    completionCopy[2](completionCopy, v10);

    completionCopy = v10;
  }

  else
  {
    title2 = +[INSpeakableStringResolutionResult notRequired];
    completionCopy[2](completionCopy, title2);
  }
}

- (void)resolveContentForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  content = [itemsCopy content];
  v7 = [content length];

  if (v7)
  {
    content2 = [itemsCopy content];
    v9 = [INStringResolutionResult successWithResolvedString:content2];
    completionCopy[2](completionCopy, v9);

    completionCopy = v9;
  }

  else
  {
    content2 = +[INStringResolutionResult notRequired];
    completionCopy[2](completionCopy, content2);
  }
}

- (void)handleSearchForNotebookItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  title = [itemsCopy title];
  spokenPhrase = [title spokenPhrase];

  content = [itemsCopy content];
  dateTime = [itemsCopy dateTime];
  startDateComponents = [dateTime startDateComponents];

  dateTime2 = [itemsCopy dateTime];
  endDateComponents = [dateTime2 endDateComponents];

  if (startDateComponents)
  {
    v15 = +[NSCalendar currentCalendar];
    v70 = [v15 dateFromComponents:startDateComponents];

    if (endDateComponents)
    {
LABEL_3:
      v16 = +[NSCalendar currentCalendar];
      v67 = [v16 dateFromComponents:endDateComponents];

      goto LABEL_6;
    }
  }

  else
  {
    v70 = 0;
    if (endDateComponents)
    {
      goto LABEL_3;
    }
  }

  v67 = 0;
LABEL_6:
  v63 = endDateComponents;
  v64 = startDateComponents;
  dateSearchType = [itemsCopy dateSearchType];
  groupName = [itemsCopy groupName];
  vocabularyIdentifier = [groupName vocabularyIdentifier];

  v69 = content;
  if (vocabularyIdentifier)
  {
    groupName2 = [itemsCopy groupName];
    vocabularyIdentifier2 = [groupName2 vocabularyIdentifier];
    v21 = [NSURL URLWithString:vocabularyIdentifier2];

    noteContext = [(ICBaseIntentHandler *)self noteContext];
    modernManagedObjectContext = [noteContext modernManagedObjectContext];
    persistentStoreCoordinator = [modernManagedObjectContext persistentStoreCoordinator];
    [persistentStoreCoordinator managedObjectIDForURIRepresentation:v21];
    v26 = v25 = completionCopy;

    noteContext2 = [(ICBaseIntentHandler *)self noteContext];
    htmlManagedObjectContext = [noteContext2 htmlManagedObjectContext];
    persistentStoreCoordinator2 = [htmlManagedObjectContext persistentStoreCoordinator];
    v30 = [persistentStoreCoordinator2 managedObjectIDForURIRepresentation:v21];

    v31 = v26;
    completionCopy = v25;
    content = v69;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v62 = v31;
  v32 = [(ICBaseIntentHandler *)self notesWithText:content title:spokenPhrase fromDate:v70 toDate:v67 dateSearchType:dateSearchType modernFolderID:v30 legacyFolderID:?];
  v33 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_100013914(v33);
  }

  v34 = [v32 count];
  v65 = completionCopy;
  v68 = spokenPhrase;
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
        includeAllNoteContents = [itemsCopy includeAllNoteContents];
        if (v40 < 5)
        {
          v45 = 1;
        }

        else
        {
          v45 = includeAllNoteContents;
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

  v56 = [NSNumber numberWithInteger:dateSearchType];
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