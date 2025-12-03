@interface ICNoteIntentHandler
- (ICLegacyContext)legacyContext;
- (ICNoteContext)modernContext;
- (ICRecentNotesCoreDataIndexer)recentNotesIndexer;
- (id)defaultNoteForNote:(id)note;
- (void)handleNote:(id)note completion:(id)completion;
- (void)provideNoteOptionsCollectionForNote:(id)note searchTerm:(id)term withCompletion:(id)completion;
- (void)recentNotesWithCompletion:(id)completion;
- (void)resolveNoteForNote:(id)note withCompletion:(id)completion;
@end

@implementation ICNoteIntentHandler

- (ICLegacyContext)legacyContext
{
  legacyContext = self->_legacyContext;
  if (!legacyContext)
  {
    v4 = +[NoteContext sharedContext];
    [v4 enableChangeLogging:1];

    v5 = +[NoteContext sharedContext];
    v6 = self->_legacyContext;
    self->_legacyContext = v5;

    legacyContext = self->_legacyContext;
  }

  return legacyContext;
}

- (ICNoteContext)modernContext
{
  modernContext = self->_modernContext;
  if (!modernContext)
  {
    [ICPluginUtilities setupNoteContextWithOptions:66066];
    v4 = +[ICNoteContext sharedContext];
    v5 = self->_modernContext;
    self->_modernContext = v4;

    modernContext = self->_modernContext;
  }

  return modernContext;
}

- (ICRecentNotesCoreDataIndexer)recentNotesIndexer
{
  if (!self->_recentNotesIndexer)
  {
    legacyContext = [(ICNoteIntentHandler *)self legacyContext];
    managedObjectContext = [legacyContext managedObjectContext];
    if (managedObjectContext)
    {
      v7 = managedObjectContext;
      modernContext = [(ICNoteIntentHandler *)self modernContext];
      workerManagedObjectContext = [modernContext workerManagedObjectContext];

      if (workerManagedObjectContext)
      {
        v10 = [ICRecentNotesCoreDataIndexer alloc];
        legacyContext2 = [(ICNoteIntentHandler *)self legacyContext];
        managedObjectContext2 = [legacyContext2 managedObjectContext];
        modernContext2 = [(ICNoteIntentHandler *)self modernContext];
        workerManagedObjectContext2 = [modernContext2 workerManagedObjectContext];
        v15 = [v10 initWithLegacyManagedObjectContext:managedObjectContext2 modernManagedObjectContext:workerManagedObjectContext2];
        recentNotesIndexer = self->_recentNotesIndexer;
        self->_recentNotesIndexer = v15;

        [(ICRecentNotesCoreDataIndexer *)self->_recentNotesIndexer setMaximumNumberOfNotesPerAccount:20];
      }
    }

    else
    {
    }
  }

  v3 = self->_recentNotesIndexer;

  return v3;
}

- (void)recentNotesWithCompletion:(id)completion
{
  completionCopy = completion;
  legacyContext = [(ICNoteIntentHandler *)self legacyContext];
  managedObjectContext = [legacyContext managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    modernContext = [(ICNoteIntentHandler *)self modernContext];
    managedObjectContext2 = [modernContext managedObjectContext];

    if (managedObjectContext2)
    {
      recentNotesIndexer = [(ICNoteIntentHandler *)self recentNotesIndexer];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004350;
      v13[3] = &unk_100020830;
      v13[4] = self;
      v14 = completionCopy;
      [recentNotesIndexer reloadData:v13];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100012D3C();
  }

  v12 = [[INObjectCollection alloc] initWithItems:&__NSArray0__struct];
  (*(completionCopy + 2))(completionCopy, v12, 0);

LABEL_8:
}

- (void)provideNoteOptionsCollectionForNote:(id)note searchTerm:(id)term withCompletion:(id)completion
{
  termCopy = term;
  completionCopy = completion;
  if ([termCopy length])
  {
    legacyContext = [(ICNoteIntentHandler *)self legacyContext];
    managedObjectContext = [legacyContext managedObjectContext];
    if (managedObjectContext)
    {
      v11 = managedObjectContext;
      modernContext = [(ICNoteIntentHandler *)self modernContext];
      managedObjectContext2 = [modernContext managedObjectContext];

      if (managedObjectContext2)
      {
        v14 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:0 searchString:termCopy performNLSearch:0 performTopHitSearch:0 tokens:0];
        v15 = +[NSOperationQueue mainQueue];
        [v15 addOperation:v14];

        v18 = completionCopy;
        v16 = v14;
        dispatchMainAfterDelay();

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = os_log_create("com.apple.notes", "Intents");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100012D3C();
    }

    v16 = [[INObjectCollection alloc] initWithItems:&__NSArray0__struct];
    (*(completionCopy + 2))(completionCopy, v16, 0);
    goto LABEL_10;
  }

  [(ICNoteIntentHandler *)self recentNotesWithCompletion:completionCopy];
LABEL_11:
}

- (void)resolveNoteForNote:(id)note withCompletion:(id)completion
{
  noteCopy = note;
  completionCopy = completion;
  note = [noteCopy note];
  identifier = [note identifier];

  note2 = [noteCopy note];
  if (identifier)
  {
    v11 = [ICIntentNoteResolutionResult successWithResolvedIntentNote:note2];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    displayString = [note2 displayString];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000056B0;
    v13[3] = &unk_1000208A8;
    v14 = completionCopy;
    [(ICNoteIntentHandler *)self provideNoteOptionsCollectionForNote:noteCopy searchTerm:displayString withCompletion:v13];
  }
}

- (void)handleNote:(id)note completion:(id)completion
{
  completionCopy = completion;
  noteCopy = note;
  v8 = [[ICNoteIntentResponse alloc] initWithCode:2 userActivity:0];
  note = [noteCopy note];

  [(ICNoteIntentResponse *)v8 setNote:note];
  completionCopy[2](completionCopy, v8);
}

- (id)defaultNoteForNote:(id)note
{
  noteCopy = note;
  legacyContext = [(ICNoteIntentHandler *)self legacyContext];
  managedObjectContext = [legacyContext managedObjectContext];
  if (managedObjectContext)
  {
    v7 = managedObjectContext;
    modernContext = [(ICNoteIntentHandler *)self modernContext];
    managedObjectContext2 = [modernContext managedObjectContext];

    if (managedObjectContext2)
    {
      recentNotesIndexer = [(ICNoteIntentHandler *)self recentNotesIndexer];
      [recentNotesIndexer reloadDataAndWait];

      objc_opt_class();
      recentNotesIndexer2 = [(ICNoteIntentHandler *)self recentNotesIndexer];
      firstRelevantItemIdentifier = [recentNotesIndexer2 firstRelevantItemIdentifier];
      v13 = ICDynamicCast();

      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x3032000000;
      v38[3] = sub_100004848;
      v38[4] = sub_100004858;
      v39 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x3032000000;
      v35 = sub_100004848;
      v36 = sub_100004858;
      v37 = 0;
      if ([v13 ic_isModernNoteType])
      {
        modernContext2 = [(ICNoteIntentHandler *)self modernContext];
        managedObjectContext3 = [modernContext2 managedObjectContext];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100005BBC;
        v28[3] = &unk_1000207B8;
        v30 = v38;
        v28[4] = self;
        v29 = v13;
        v31 = &v32;
        [managedObjectContext3 performBlockAndWait:v28];

        v16 = v29;
      }

      else
      {
        if (![v13 ic_isLegacyNoteType])
        {
          v20 = os_log_create("com.apple.notes", "Intents");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100012EB8();
          }

          goto LABEL_15;
        }

        legacyContext2 = [(ICNoteIntentHandler *)self legacyContext];
        managedObjectContext4 = [legacyContext2 managedObjectContext];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100005C84;
        v24[3] = &unk_1000207B8;
        v26 = v38;
        v24[4] = self;
        v25 = v13;
        v27 = &v32;
        [managedObjectContext4 performBlockAndWait:v24];

        v16 = v25;
      }

LABEL_15:
      v17 = v33[5];
      if (v17)
      {
        v21 = v17;
      }

      else
      {
        v22 = os_log_create("com.apple.notes", "Intents");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100012F28();
        }
      }

      _Block_object_dispose(&v32, 8);

      _Block_object_dispose(v38, 8);
      goto LABEL_21;
    }
  }

  else
  {
  }

  v13 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100012F98();
  }

  v17 = 0;
LABEL_21:

  return v17;
}

@end