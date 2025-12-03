@interface ICNotesFolderIntentHandler
- (ICFolderCoreDataIndexer)folderIndexer;
- (ICLegacyContext)legacyContext;
- (ICNoteContext)modernContext;
- (void)handleNotesFolder:(id)folder completion:(id)completion;
- (void)provideFolderOptionsCollectionForNotesFolder:(id)folder searchTerm:(id)term withCompletion:(id)completion;
- (void)resolveFolderForNotesFolder:(id)folder withCompletion:(id)completion;
@end

@implementation ICNotesFolderIntentHandler

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

- (ICFolderCoreDataIndexer)folderIndexer
{
  if (!self->_folderIndexer)
  {
    legacyContext = [(ICNotesFolderIntentHandler *)self legacyContext];
    managedObjectContext = [legacyContext managedObjectContext];
    if (managedObjectContext)
    {
      v5 = managedObjectContext;
      modernContext = [(ICNotesFolderIntentHandler *)self modernContext];
      workerManagedObjectContext = [modernContext workerManagedObjectContext];

      if (!workerManagedObjectContext)
      {
        goto LABEL_6;
      }

      v8 = [ICFolderCoreDataIndexer alloc];
      legacyContext = [(ICNotesFolderIntentHandler *)self legacyContext];
      managedObjectContext2 = [legacyContext managedObjectContext];
      modernContext2 = [(ICNotesFolderIntentHandler *)self modernContext];
      workerManagedObjectContext2 = [modernContext2 workerManagedObjectContext];
      v12 = [v8 initWithLegacyManagedObjectContext:managedObjectContext2 modernManagedObjectContext:workerManagedObjectContext2];
      folderIndexer = self->_folderIndexer;
      self->_folderIndexer = v12;
    }
  }

LABEL_6:
  v14 = self->_folderIndexer;

  return v14;
}

- (void)provideFolderOptionsCollectionForNotesFolder:(id)folder searchTerm:(id)term withCompletion:(id)completion
{
  termCopy = term;
  completionCopy = completion;
  legacyContext = [(ICNotesFolderIntentHandler *)self legacyContext];
  managedObjectContext = [legacyContext managedObjectContext];
  if (managedObjectContext)
  {
    v11 = managedObjectContext;
    modernContext = [(ICNotesFolderIntentHandler *)self modernContext];
    managedObjectContext2 = [modernContext managedObjectContext];

    if (managedObjectContext2)
    {
      folderIndexer = [(ICNotesFolderIntentHandler *)self folderIndexer];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000061E0;
      v17[3] = &unk_100020880;
      v17[4] = self;
      v18 = termCopy;
      v19 = completionCopy;
      [folderIndexer reloadData:v17];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = os_log_create("com.apple.notes", "Intents");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100012FD8(v15);
  }

  v16 = [[INObjectCollection alloc] initWithItems:&__NSArray0__struct];
  (*(completionCopy + 2))(completionCopy, v16, 0);

LABEL_8:
}

- (void)resolveFolderForNotesFolder:(id)folder withCompletion:(id)completion
{
  folderCopy = folder;
  completionCopy = completion;
  folder = [folderCopy folder];
  identifier = [folder identifier];

  folder2 = [folderCopy folder];
  if (identifier)
  {
    v11 = [ICIntentNotesFolderResolutionResult successWithResolvedIntentNotesFolder:folder2];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    displayString = [folder2 displayString];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006B80;
    v13[3] = &unk_1000208A8;
    v14 = completionCopy;
    [(ICNotesFolderIntentHandler *)self provideFolderOptionsCollectionForNotesFolder:folderCopy searchTerm:displayString withCompletion:v13];
  }
}

- (void)handleNotesFolder:(id)folder completion:(id)completion
{
  completionCopy = completion;
  folderCopy = folder;
  v8 = [[ICNotesFolderIntentResponse alloc] initWithCode:2 userActivity:0];
  folder = [folderCopy folder];

  [(ICNotesFolderIntentResponse *)v8 setFolder:folder];
  completionCopy[2](completionCopy, v8);
}

@end