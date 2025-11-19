@interface MTFetchedTableViewController
- (BOOL)hasSectionNameKeyPathChanged;
- (MTFetchedTableViewController)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (id)fetchRequestInManagedObjectContext:(id)a3;
- (id)newCellInstanceWithReuseIdentifier:(id)a3;
- (id)reuseIdentifierForRow:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateTableAnimated:(BOOL)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)initializeFrc;
- (void)refetchWithPredicate:(id)a3;
- (void)refetchWithPredicate:(id)a3 sortDescriptors:(id)a4 animated:(BOOL)a5;
- (void)refetchWithSortDescriptors:(id)a3 animated:(BOOL)a4;
- (void)reloadVisibleCellsWithAnimation:(int64_t)a3;
- (void)setChangeIsUserDriven:(BOOL)a3;
- (void)setRefreshControl:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MTFetchedTableViewController

- (MTFetchedTableViewController)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MTFetchedTableViewController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchPredicate, a4);
    objc_storeStrong(&v13->_sortDescriptors, a5);
    objc_storeStrong(&v13->_fetchEntityName, a3);
    v13->_rowAnimation = 0;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [(MTFetchedTableViewController *)v13 setRestorationIdentifier:v15];

    v16 = v13;
  }

  return v13;
}

- (void)dealloc
{
  [(UIBarButtonItem *)self->_editButtonItem_localIvar setTarget:0];
  v3.receiver = self;
  v3.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v3 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v2 didReceiveMemoryWarning];
}

- (void)initializeFrc
{
  if (!self->_frc)
  {
    v12[7] = v2;
    v12[8] = v3;
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainQueueContext];

    v7 = [(MTFetchedTableViewController *)self fetchRequestInManagedObjectContext:v6];
    v8 = [[NSFetchedResultsController alloc] initWithFetchRequest:v7 managedObjectContext:v6 sectionNameKeyPath:self->_sectionNameKeyPath cacheName:0];
    [v8 setDelegate:self];
    v12[0] = 0;
    v9 = [v8 performFetch:v12];
    v10 = v12[0];
    v11 = v10;
    if (v9)
    {
      [(MTFetchedTableViewController *)self setFrc:v8];
    }

    else
    {
      [v10 logAndThrow:1];
    }
  }
}

- (void)setChangeIsUserDriven:(BOOL)a3
{
  userDrivenCounter = self->_userDrivenCounter;
  if (a3)
  {
    v4 = userDrivenCounter + 1;
  }

  else
  {
    v4 = userDrivenCounter - 1;
  }

  self->_userDrivenCounter = v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(MTFetchedTableViewController *)self initializeFrc];
  v5.receiver = self;
  v5.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidLoad
{
  v3 = [(MTFetchedTableViewController *)self tableView];
  [v3 setRestorationIdentifier:@"FetchedResultsTableView"];

  v6.receiver = self;
  v6.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v6 viewDidLoad];
  v4 = [(MTFetchedTableViewController *)self editButtonItem];
  editButtonItem_localIvar = self->_editButtonItem_localIvar;
  self->_editButtonItem_localIvar = v4;
}

- (void)refetchWithSortDescriptors:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(MTFetchedTableViewController *)self frc];
  v7 = [v8 fetchRequest];
  [v7 setSortDescriptors:v6];

  [(MTFetchedTableViewController *)self setSortDescriptors:v6];
  [(MTFetchedTableViewController *)self _updateTableAnimated:v4];
}

- (void)refetchWithPredicate:(id)a3
{
  v4 = a3;
  v6 = [(MTFetchedTableViewController *)self frc];
  v5 = [v6 fetchRequest];
  [v5 setPredicate:v4];

  [(MTFetchedTableViewController *)self setFetchPredicate:v4];
  [(MTFetchedTableViewController *)self _updateTableAnimated:1];
}

- (void)refetchWithPredicate:(id)a3 sortDescriptors:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v12 = [(MTFetchedTableViewController *)self frc];
  v10 = [v12 fetchRequest];
  [v10 setPredicate:v9];

  [(MTFetchedTableViewController *)self setFetchPredicate:v9];
  v11 = [v12 fetchRequest];
  [v11 setSortDescriptors:v8];

  [(MTFetchedTableViewController *)self setSortDescriptors:v8];
  [(MTFetchedTableViewController *)self _updateTableAnimated:v5];
}

- (id)reuseIdentifierForRow:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = a5;
    v10 = [(MTFetchedTableViewController *)self frc];
    v8 = [v10 managedObjectContext];
    v9 = [v10 objectAtIndexPath:v7];

    if (v9)
    {
      [v8 deleteObject:v9];
      [v8 saveInCurrentBlock];
    }
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MTFetchedTableViewController *)self frc];
  v4 = [v3 sections];
  v5 = [v4 count];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(MTFetchedTableViewController *)self frc];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 numberOfObjects];
  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTFetchedTableViewController *)self reuseIdentifierForRow:v6];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [(MTFetchedTableViewController *)self newCellInstanceWithReuseIdentifier:v8];
  }

  v10 = [(MTFetchedTableViewController *)self frc];
  v11 = [v10 objectAtIndexPath:v6];

  [(MTFetchedTableViewController *)self configureCell:v9 withObject:v11 atIndexPath:v6];

  return v9;
}

- (id)newCellInstanceWithReuseIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:v3];

  return v4;
}

- (void)controllerWillChangeContent:(id)a3
{
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    v4 = [(MTFetchedTableViewController *)self tableView];
    [v4 beginUpdates];
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    v4 = [(MTFetchedTableViewController *)self tableView];
    [v4 endUpdates];
  }
}

- (void)setRefreshControl:(id)a3
{
  v4 = a3;
  v5 = [(MTFetchedTableViewController *)self refreshControl];
  if (v5 == v4)
  {
    goto LABEL_4;
  }

  v6 = [(MTFetchedTableViewController *)self refreshControl];
  v7 = [v6 isRefreshing];

  if (v7)
  {
    v5 = [(MTFetchedTableViewController *)self refreshControl];
    [v5 endRefreshing];
LABEL_4:
  }

  v8.receiver = self;
  v8.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v8 setRefreshControl:v4];
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v16 = a4;
  v11 = a5;
  v12 = a7;
  v13 = [(MTFetchedTableViewController *)self tableView];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    if (a6 > 2)
    {
      if (a6 != 3)
      {
        if (a6 != 4)
        {
          goto LABEL_14;
        }

        v14 = [v13 cellForRowAtIndexPath:v11];
        if (v14)
        {
          [(MTFetchedTableViewController *)self configureCell:v14 withObject:v16 atIndexPath:v11];
        }

        goto LABEL_13;
      }

      v15 = [NSArray arrayWithObject:v11];
      [v13 deleteRowsAtIndexPaths:v15 withRowAnimation:5];
    }

    else if (a6 != 1)
    {
      if (a6 != 2)
      {
        goto LABEL_14;
      }

      v14 = [NSArray arrayWithObject:v11];
      [v13 deleteRowsAtIndexPaths:v14 withRowAnimation:5];
      goto LABEL_13;
    }

    v14 = [NSArray arrayWithObject:v12];
    [v13 insertRowsAtIndexPaths:v14 withRowAnimation:5];
LABEL_13:
  }

LABEL_14:
}

- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6
{
  v10 = [(MTFetchedTableViewController *)self tableView:a3];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    if (a6 == 2)
    {
      v9 = [NSIndexSet indexSetWithIndex:a5];
      [v10 deleteSections:v9 withRowAnimation:5];
    }

    else
    {
      if (a6 != 1)
      {
        goto LABEL_7;
      }

      v9 = [NSIndexSet indexSetWithIndex:a5];
      [v10 insertSections:v9 withRowAnimation:5];
    }
  }

LABEL_7:
}

- (id)fetchRequestInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSFetchRequest);
  v6 = [(MTFetchedTableViewController *)self sortDescriptors];
  if (v6)
  {
    [v5 setSortDescriptors:v6];
  }

  else
  {
    v7 = +[NSArray array];
    [v5 setSortDescriptors:v7];
  }

  v8 = [(MTFetchedTableViewController *)self fetchEntityName];
  v9 = [NSEntityDescription entityForName:v8 inManagedObjectContext:v4];

  [v5 setEntity:v9];
  v10 = [(MTFetchedTableViewController *)self fetchPredicate];

  if (v10)
  {
    v11 = [(MTFetchedTableViewController *)self fetchPredicate];
    [v5 setPredicate:v11];
  }

  return v5;
}

- (BOOL)hasSectionNameKeyPathChanged
{
  v3 = [(NSFetchedResultsController *)self->_frc sectionNameKeyPath];
  v4 = [(MTFetchedTableViewController *)self sectionNameKeyPath];

  if (v3 == v4)
  {
    return 0;
  }

  v5 = [(NSFetchedResultsController *)self->_frc sectionNameKeyPath];
  v6 = [(MTFetchedTableViewController *)self sectionNameKeyPath];
  v7 = [v5 isEqualToString:v6];

  return v7 ^ 1;
}

- (void)_updateTableAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTFetchedTableViewController *)self hasSectionNameKeyPathChanged];
  if (v5)
  {
    [(NSFetchedResultsController *)self->_frc setDelegate:0];
    frc = self->_frc;
    self->_frc = 0;

    [(MTFetchedTableViewController *)self initializeFrc];
  }

  if (v3 && [(MTFetchedTableViewController *)self rowAnimation]!= 5)
  {
    if (v5)
    {
      v11 = [(MTFetchedTableViewController *)self tableView];
      [v11 beginUpdates];

      v12 = [(MTFetchedTableViewController *)self tableView];
      v13 = [v12 numberOfSections];

      v14 = [[NSIndexSet alloc] initWithIndexesInRange:{0, v13}];
      v15 = [(MTFetchedTableViewController *)self tableView];
      [v15 deleteSections:v14 withRowAnimation:0];

      v16 = [(MTFetchedTableViewController *)self frc];
      v17 = [v16 sections];
      v18 = [v17 count];

      v19 = [NSIndexSet indexSetWithIndexesInRange:0, v18];

      v20 = [(MTFetchedTableViewController *)self tableView];
      [v20 insertSections:v19 withRowAnimation:0];

      v21 = [(MTFetchedTableViewController *)self tableView];
      [v21 endUpdates];

      v9 = 0;
      goto LABEL_12;
    }

    v22 = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v23 = [v22 copy];

    v24 = [NSSet setWithArray:v23];
    v25 = [v24 mutableCopy];
    v26 = self->_frc;
    v57 = 0;
    v27 = [(NSFetchedResultsController *)v26 performFetch:&v57];
    v9 = v57;
    if (v27)
    {
      v50 = v27;
      v48 = [(NSFetchedResultsController *)self->_frc fetchedObjects];
      v51 = [NSSet setWithArray:?];
      [v25 minusSet:?];
      v28 = objc_opt_new();
      v52 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v49 = v25;
      v29 = v25;
      v30 = [v29 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v54;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v54 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v23 indexOfObject:*(*(&v53 + 1) + 8 * i)], 0);
            [v28 addObject:v34];
          }

          v31 = [v29 countByEnumeratingWithState:&v53 objects:v59 count:16];
        }

        while (v31);
      }

      v35 = [v51 count];
      if (v35)
      {
        v36 = v35;
        for (j = 0; j != v36; ++j)
        {
          v38 = [v48 objectAtIndex:j];
          v39 = [v23 containsObject:v38];

          if ((v39 & 1) == 0)
          {
            v40 = [NSIndexPath indexPathForRow:j inSection:0];
            [v52 addObject:v40];
          }
        }
      }

      v41 = [(MTFetchedTableViewController *)self tableView];
      [v41 beginUpdates];

      if ([v52 count] || objc_msgSend(v28, "count") || (objc_msgSend(v48, "isEqualToArray:", v23) & 1) != 0)
      {
        v42 = [(MTFetchedTableViewController *)self tableView];
        [v42 insertRowsAtIndexPaths:v52 withRowAnimation:{-[MTFetchedTableViewController rowAnimation](self, "rowAnimation")}];

        v43 = [(MTFetchedTableViewController *)self tableView];
        [v43 deleteRowsAtIndexPaths:v28 withRowAnimation:{-[MTFetchedTableViewController rowAnimation](self, "rowAnimation")}];
      }

      else
      {
        v45 = [(MTFetchedTableViewController *)self tableView];
        v46 = [v45 numberOfSections];

        v43 = [[NSIndexSet alloc] initWithIndexesInRange:{0, v46}];
        v47 = [(MTFetchedTableViewController *)self tableView];
        [v47 reloadSections:v43 withRowAnimation:0];
      }

      LOBYTE(v27) = v50;
      v25 = v49;

      v44 = [(MTFetchedTableViewController *)self tableView];
      [v44 endUpdates];
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(MTFetchedTableViewController *)self setChangeIsUserDriven:1];
    v7 = self->_frc;
    v58 = 0;
    v8 = [(NSFetchedResultsController *)v7 performFetch:&v58];
    v9 = v58;
    if (v8)
    {
      v10 = [(MTFetchedTableViewController *)self tableView];
      [v10 reloadData];
    }

    [(MTFetchedTableViewController *)self setChangeIsUserDriven:0];
    if ((v8 & 1) == 0)
    {
LABEL_8:
      if (v9)
      {
        [v9 logAndThrow:1];
      }
    }
  }

LABEL_12:
}

- (void)reloadVisibleCellsWithAnimation:(int64_t)a3
{
  v7 = [(MTFetchedTableViewController *)self tableView];
  v5 = [(MTFetchedTableViewController *)self tableView];
  v6 = [v5 indexPathsForVisibleRows];
  [v7 reloadRowsAtIndexPaths:v6 withRowAnimation:a3];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v3 encodeRestorableStateWithCoder:a3];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v4 decodeRestorableStateWithCoder:a3];
  [(MTFetchedTableViewController *)self initializeFrc];
}

@end