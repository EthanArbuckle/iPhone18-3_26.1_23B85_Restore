@interface ICNoteIntentHandler
- (ICLegacyContext)legacyContext;
- (ICNoteContext)modernContext;
- (ICRecentNotesCoreDataIndexer)recentNotesIndexer;
- (id)defaultNoteForNote:(id)a3;
- (void)handleNote:(id)a3 completion:(id)a4;
- (void)provideNoteOptionsCollectionForNote:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5;
- (void)recentNotesWithCompletion:(id)a3;
- (void)resolveNoteForNote:(id)a3 withCompletion:(id)a4;
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
    v5 = [(ICNoteIntentHandler *)self legacyContext];
    v6 = [v5 managedObjectContext];
    if (v6)
    {
      v7 = v6;
      v8 = [(ICNoteIntentHandler *)self modernContext];
      v9 = [v8 workerManagedObjectContext];

      if (v9)
      {
        v10 = [ICRecentNotesCoreDataIndexer alloc];
        v11 = [(ICNoteIntentHandler *)self legacyContext];
        v12 = [v11 managedObjectContext];
        v13 = [(ICNoteIntentHandler *)self modernContext];
        v14 = [v13 workerManagedObjectContext];
        v15 = [v10 initWithLegacyManagedObjectContext:v12 modernManagedObjectContext:v14];
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

- (void)recentNotesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteIntentHandler *)self legacyContext];
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [(ICNoteIntentHandler *)self modernContext];
    v9 = [v8 managedObjectContext];

    if (v9)
    {
      v10 = [(ICNoteIntentHandler *)self recentNotesIndexer];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004350;
      v13[3] = &unk_100020830;
      v13[4] = self;
      v14 = v4;
      [v10 reloadData:v13];

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
  (*(v4 + 2))(v4, v12, 0);

LABEL_8:
}

- (void)provideNoteOptionsCollectionForNote:(id)a3 searchTerm:(id)a4 withCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([v7 length])
  {
    v9 = [(ICNoteIntentHandler *)self legacyContext];
    v10 = [v9 managedObjectContext];
    if (v10)
    {
      v11 = v10;
      v12 = [(ICNoteIntentHandler *)self modernContext];
      v13 = [v12 managedObjectContext];

      if (v13)
      {
        v14 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:0 searchString:v7 performNLSearch:0 performTopHitSearch:0 tokens:0];
        v15 = +[NSOperationQueue mainQueue];
        [v15 addOperation:v14];

        v18 = v8;
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
    (*(v8 + 2))(v8, v16, 0);
    goto LABEL_10;
  }

  [(ICNoteIntentHandler *)self recentNotesWithCompletion:v8];
LABEL_11:
}

- (void)resolveNoteForNote:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 note];
  v9 = [v8 identifier];

  v10 = [v6 note];
  if (v9)
  {
    v11 = [ICIntentNoteResolutionResult successWithResolvedIntentNote:v10];
    v7[2](v7, v11);
  }

  else
  {
    v12 = [v10 displayString];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000056B0;
    v13[3] = &unk_1000208A8;
    v14 = v7;
    [(ICNoteIntentHandler *)self provideNoteOptionsCollectionForNote:v6 searchTerm:v12 withCompletion:v13];
  }
}

- (void)handleNote:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [[ICNoteIntentResponse alloc] initWithCode:2 userActivity:0];
  v7 = [v6 note];

  [(ICNoteIntentResponse *)v8 setNote:v7];
  v5[2](v5, v8);
}

- (id)defaultNoteForNote:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteIntentHandler *)self legacyContext];
  v6 = [v5 managedObjectContext];
  if (v6)
  {
    v7 = v6;
    v8 = [(ICNoteIntentHandler *)self modernContext];
    v9 = [v8 managedObjectContext];

    if (v9)
    {
      v10 = [(ICNoteIntentHandler *)self recentNotesIndexer];
      [v10 reloadDataAndWait];

      objc_opt_class();
      v11 = [(ICNoteIntentHandler *)self recentNotesIndexer];
      v12 = [v11 firstRelevantItemIdentifier];
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
        v14 = [(ICNoteIntentHandler *)self modernContext];
        v15 = [v14 managedObjectContext];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100005BBC;
        v28[3] = &unk_1000207B8;
        v30 = v38;
        v28[4] = self;
        v29 = v13;
        v31 = &v32;
        [v15 performBlockAndWait:v28];

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

        v18 = [(ICNoteIntentHandler *)self legacyContext];
        v19 = [v18 managedObjectContext];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100005C84;
        v24[3] = &unk_1000207B8;
        v26 = v38;
        v24[4] = self;
        v25 = v13;
        v27 = &v32;
        [v19 performBlockAndWait:v24];

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