@interface RCSavedRecordingsController
- (BOOL)performFetch:(id *)a3;
- (NSArray)cloudRecordings;
- (NSFetchedResultsControllerDelegate)defaultDelegate;
- (RCFolder)folder;
- (RCSavedRecordingsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fetchedObjects;
- (void)invalidate;
- (void)setDefaultDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSearchPredicate:(id)a3 scope:(int)a4 performingFetch:(BOOL)a5;
@end

@implementation RCSavedRecordingsController

- (NSArray)cloudRecordings
{
  if (!self->_hasPerformedFetch)
  {
    v11 = 0;
    v3 = [(RCSavedRecordingsController *)self performFetch:&v11];
    v4 = v11;
    if ((v3 & 1) == 0)
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001BBF9C();
      }
    }
  }

  v6 = [(RCSavedRecordingsController *)self _fetchedObjects];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  v9 = v8;

  return v8;
}

- (id)fetchedObjects
{
  if (!self->_hasPerformedFetch)
  {
    v9 = 0;
    v3 = [(RCSavedRecordingsController *)self performFetch:&v9];
    v4 = v9;
    if ((v3 & 1) == 0)
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001BC010();
      }
    }
  }

  v8.receiver = self;
  v8.super_class = RCSavedRecordingsController;
  v6 = [(RCSavedRecordingsController *)&v8 fetchedObjects];

  return v6;
}

- (RCSavedRecordingsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = RCSavedRecordingsController;
  v8 = [(RCSavedRecordingsController *)&v13 initWithFetchRequest:v7 managedObjectContext:a4 sectionNameKeyPath:0 cacheName:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fetchRequest, a3);
    v10 = [(NSFetchRequest *)v9->_fetchRequest predicate];
    fetchPredicate = v9->_fetchPredicate;
    v9->_fetchPredicate = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSFetchRequest *)self->_fetchRequest entity];
  [v4 setEntity:v5];

  v6 = [(NSFetchRequest *)self->_fetchRequest predicate];
  [v4 setPredicate:v6];

  v7 = [(NSFetchRequest *)self->_fetchRequest propertiesToFetch];
  [v4 setPropertiesToFetch:v7];

  v8 = [(NSFetchRequest *)self->_fetchRequest sortDescriptors];
  [v4 setSortDescriptors:v8];

  [v4 setFetchBatchSize:{-[NSFetchRequest fetchBatchSize](self->_fetchRequest, "fetchBatchSize")}];
  v9 = [RCSavedRecordingsController alloc];
  v10 = [(RCSavedRecordingsController *)self managedObjectContext];
  v11 = [(RCSavedRecordingsController *)v9 initWithFetchRequest:v4 managedObjectContext:v10];

  return v11;
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = RCSavedRecordingsController;
  [(RCSavedRecordingsController *)&v2 setDelegate:0];
}

- (void)setDefaultDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_defaultDelegate, v4);
  v5 = [(RCSavedRecordingsController *)self delegate];

  if (!v5)
  {
    v6.receiver = self;
    v6.super_class = RCSavedRecordingsController;
    [(RCSavedRecordingsController *)&v6 setDelegate:v4];
  }
}

- (void)setDelegate:(id)a3
{
  WeakRetained = a3;
  if (!WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(&self->_defaultDelegate);
  }

  v5.receiver = self;
  v5.super_class = RCSavedRecordingsController;
  [(RCSavedRecordingsController *)&v5 setDelegate:WeakRetained];
}

- (void)setSearchPredicate:(id)a3 scope:(int)a4 performingFetch:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v41 = [(RCSavedRecordingsController *)self delegate];
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  v11 = 0;
  if (v5 && (v9 & 1) != 0)
  {
    v12 = [(RCSavedRecordingsController *)self fetchedObjects];
    v11 = [NSOrderedSet orderedSetWithArray:v12];
  }

  if (v8)
  {
    if (a4)
    {
      v13 = +[RCQueryManager playableRecordingsExcludingDeletedPredicate];
    }

    else
    {
      v13 = self->_fetchPredicate;
    }

    v14 = v13;
    v53[0] = v13;
    v53[1] = v8;
    v15 = [NSArray arrayWithObjects:v53 count:2];
    v16 = [NSCompoundPredicate andPredicateWithSubpredicates:v15];
    [(NSFetchRequest *)self->_fetchRequest setPredicate:v16];

    if (!v5)
    {
      goto LABEL_43;
    }
  }

  else
  {
    [(NSFetchRequest *)self->_fetchRequest setPredicate:self->_fetchPredicate];
    if (!v5)
    {
      goto LABEL_43;
    }
  }

  v50 = 0;
  v17 = [(RCSavedRecordingsController *)self performFetch:&v50];
  v18 = v50;
  if ((v17 & 1) == 0)
  {
    v19 = OSLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001BBF28();
    }
  }

  if (v10)
  {
    v20 = [(RCSavedRecordingsController *)self fetchedObjects];
    v21 = [NSOrderedSet orderedSetWithArray:v20];

    if (([v11 isEqual:v21] & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [v41 controllerWillChangeContent:self];
      }

      v39 = v18;
      v40 = v8;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v38 = v21;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v47;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v47 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v46 + 1) + 8 * i);
            if (([v11 containsObject:{v27, v38, v39, v40}] & 1) == 0)
            {
              v28 = [v22 indexOfObject:v27];
              if (v28 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = [NSIndexPath indexPathForRow:v28 inSection:0];
                [v41 controller:self didChangeObject:v27 atIndexPath:0 forChangeType:1 newIndexPath:v29];
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v24);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v30 = v11;
      v31 = [v30 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v43;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v43 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v42 + 1) + 8 * j);
            if (([v22 containsObject:{v35, v38, v39, v40}] & 1) == 0)
            {
              v36 = [v30 indexOfObject:v35];
              if (v36 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v37 = [NSIndexPath indexPathForRow:v36 inSection:0];
                [v41 controller:self didChangeObject:v35 atIndexPath:v37 forChangeType:2 newIndexPath:0];
              }
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v32);
      }

      v18 = v39;
      v8 = v40;
      v21 = v38;
      if (objc_opt_respondsToSelector())
      {
        [v41 controllerDidChangeContent:self];
      }
    }
  }

LABEL_43:
}

- (BOOL)performFetch:(id *)a3
{
  v5.receiver = self;
  v5.super_class = RCSavedRecordingsController;
  result = [(RCSavedRecordingsController *)&v5 performFetch:a3];
  self->_hasPerformedFetch = result;
  return result;
}

- (RCFolder)folder
{
  WeakRetained = objc_loadWeakRetained(&self->_folder);

  return WeakRetained;
}

- (NSFetchedResultsControllerDelegate)defaultDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultDelegate);

  return WeakRetained;
}

@end