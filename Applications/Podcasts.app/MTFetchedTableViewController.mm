@interface MTFetchedTableViewController
- (BOOL)hasSectionNameKeyPathChanged;
- (MTFetchedTableViewController)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)fetchRequestInManagedObjectContext:(id)context;
- (id)newCellInstanceWithReuseIdentifier:(id)identifier;
- (id)reuseIdentifierForRow:(id)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateTableAnimated:(BOOL)animated;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didReceiveMemoryWarning;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)initializeFrc;
- (void)refetchWithPredicate:(id)predicate;
- (void)refetchWithPredicate:(id)predicate sortDescriptors:(id)descriptors animated:(BOOL)animated;
- (void)refetchWithSortDescriptors:(id)descriptors animated:(BOOL)animated;
- (void)reloadVisibleCellsWithAnimation:(int64_t)animation;
- (void)setChangeIsUserDriven:(BOOL)driven;
- (void)setRefreshControl:(id)control;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MTFetchedTableViewController

- (MTFetchedTableViewController)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors
{
  nameCopy = name;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v12 = [(MTFetchedTableViewController *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fetchPredicate, predicate);
    objc_storeStrong(&v13->_sortDescriptors, descriptors);
    objc_storeStrong(&v13->_fetchEntityName, name);
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
    mainQueueContext = [v5 mainQueueContext];

    v7 = [(MTFetchedTableViewController *)self fetchRequestInManagedObjectContext:mainQueueContext];
    v8 = [[NSFetchedResultsController alloc] initWithFetchRequest:v7 managedObjectContext:mainQueueContext sectionNameKeyPath:self->_sectionNameKeyPath cacheName:0];
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

- (void)setChangeIsUserDriven:(BOOL)driven
{
  userDrivenCounter = self->_userDrivenCounter;
  if (driven)
  {
    v4 = userDrivenCounter + 1;
  }

  else
  {
    v4 = userDrivenCounter - 1;
  }

  self->_userDrivenCounter = v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(MTFetchedTableViewController *)self initializeFrc];
  v5.receiver = self;
  v5.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidLoad
{
  tableView = [(MTFetchedTableViewController *)self tableView];
  [tableView setRestorationIdentifier:@"FetchedResultsTableView"];

  v6.receiver = self;
  v6.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v6 viewDidLoad];
  editButtonItem = [(MTFetchedTableViewController *)self editButtonItem];
  editButtonItem_localIvar = self->_editButtonItem_localIvar;
  self->_editButtonItem_localIvar = editButtonItem;
}

- (void)refetchWithSortDescriptors:(id)descriptors animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorsCopy = descriptors;
  v8 = [(MTFetchedTableViewController *)self frc];
  fetchRequest = [v8 fetchRequest];
  [fetchRequest setSortDescriptors:descriptorsCopy];

  [(MTFetchedTableViewController *)self setSortDescriptors:descriptorsCopy];
  [(MTFetchedTableViewController *)self _updateTableAnimated:animatedCopy];
}

- (void)refetchWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v6 = [(MTFetchedTableViewController *)self frc];
  fetchRequest = [v6 fetchRequest];
  [fetchRequest setPredicate:predicateCopy];

  [(MTFetchedTableViewController *)self setFetchPredicate:predicateCopy];
  [(MTFetchedTableViewController *)self _updateTableAnimated:1];
}

- (void)refetchWithPredicate:(id)predicate sortDescriptors:(id)descriptors animated:(BOOL)animated
{
  animatedCopy = animated;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v12 = [(MTFetchedTableViewController *)self frc];
  fetchRequest = [v12 fetchRequest];
  [fetchRequest setPredicate:predicateCopy];

  [(MTFetchedTableViewController *)self setFetchPredicate:predicateCopy];
  fetchRequest2 = [v12 fetchRequest];
  [fetchRequest2 setSortDescriptors:descriptorsCopy];

  [(MTFetchedTableViewController *)self setSortDescriptors:descriptorsCopy];
  [(MTFetchedTableViewController *)self _updateTableAnimated:animatedCopy];
}

- (id)reuseIdentifierForRow:(id)row
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    pathCopy = path;
    v10 = [(MTFetchedTableViewController *)self frc];
    managedObjectContext = [v10 managedObjectContext];
    v9 = [v10 objectAtIndexPath:pathCopy];

    if (v9)
    {
      [managedObjectContext deleteObject:v9];
      [managedObjectContext saveInCurrentBlock];
    }
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = [(MTFetchedTableViewController *)self frc];
  sections = [v3 sections];
  v5 = [sections count];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(MTFetchedTableViewController *)self frc];
  sections = [v5 sections];
  v7 = [sections objectAtIndex:section];

  numberOfObjects = [v7 numberOfObjects];
  return numberOfObjects;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(MTFetchedTableViewController *)self reuseIdentifierForRow:pathCopy];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [(MTFetchedTableViewController *)self newCellInstanceWithReuseIdentifier:v8];
  }

  v10 = [(MTFetchedTableViewController *)self frc];
  v11 = [v10 objectAtIndexPath:pathCopy];

  [(MTFetchedTableViewController *)self configureCell:v9 withObject:v11 atIndexPath:pathCopy];

  return v9;
}

- (id)newCellInstanceWithReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];

  return v4;
}

- (void)controllerWillChangeContent:(id)content
{
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    tableView = [(MTFetchedTableViewController *)self tableView];
    [tableView beginUpdates];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    tableView = [(MTFetchedTableViewController *)self tableView];
    [tableView endUpdates];
  }
}

- (void)setRefreshControl:(id)control
{
  controlCopy = control;
  refreshControl = [(MTFetchedTableViewController *)self refreshControl];
  if (refreshControl == controlCopy)
  {
    goto LABEL_4;
  }

  refreshControl2 = [(MTFetchedTableViewController *)self refreshControl];
  isRefreshing = [refreshControl2 isRefreshing];

  if (isRefreshing)
  {
    refreshControl = [(MTFetchedTableViewController *)self refreshControl];
    [refreshControl endRefreshing];
LABEL_4:
  }

  v8.receiver = self;
  v8.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v8 setRefreshControl:controlCopy];
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  tableView = [(MTFetchedTableViewController *)self tableView];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    if (type > 2)
    {
      if (type != 3)
      {
        if (type != 4)
        {
          goto LABEL_14;
        }

        v14 = [tableView cellForRowAtIndexPath:pathCopy];
        if (v14)
        {
          [(MTFetchedTableViewController *)self configureCell:v14 withObject:objectCopy atIndexPath:pathCopy];
        }

        goto LABEL_13;
      }

      v15 = [NSArray arrayWithObject:pathCopy];
      [tableView deleteRowsAtIndexPaths:v15 withRowAnimation:5];
    }

    else if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_14;
      }

      v14 = [NSArray arrayWithObject:pathCopy];
      [tableView deleteRowsAtIndexPaths:v14 withRowAnimation:5];
      goto LABEL_13;
    }

    v14 = [NSArray arrayWithObject:indexPathCopy];
    [tableView insertRowsAtIndexPaths:v14 withRowAnimation:5];
LABEL_13:
  }

LABEL_14:
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  v10 = [(MTFetchedTableViewController *)self tableView:controller];
  if (![(MTFetchedTableViewController *)self changeIsUserDriven])
  {
    if (type == 2)
    {
      v9 = [NSIndexSet indexSetWithIndex:index];
      [v10 deleteSections:v9 withRowAnimation:5];
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_7;
      }

      v9 = [NSIndexSet indexSetWithIndex:index];
      [v10 insertSections:v9 withRowAnimation:5];
    }
  }

LABEL_7:
}

- (id)fetchRequestInManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(NSFetchRequest);
  sortDescriptors = [(MTFetchedTableViewController *)self sortDescriptors];
  if (sortDescriptors)
  {
    [v5 setSortDescriptors:sortDescriptors];
  }

  else
  {
    v7 = +[NSArray array];
    [v5 setSortDescriptors:v7];
  }

  fetchEntityName = [(MTFetchedTableViewController *)self fetchEntityName];
  v9 = [NSEntityDescription entityForName:fetchEntityName inManagedObjectContext:contextCopy];

  [v5 setEntity:v9];
  fetchPredicate = [(MTFetchedTableViewController *)self fetchPredicate];

  if (fetchPredicate)
  {
    fetchPredicate2 = [(MTFetchedTableViewController *)self fetchPredicate];
    [v5 setPredicate:fetchPredicate2];
  }

  return v5;
}

- (BOOL)hasSectionNameKeyPathChanged
{
  sectionNameKeyPath = [(NSFetchedResultsController *)self->_frc sectionNameKeyPath];
  sectionNameKeyPath2 = [(MTFetchedTableViewController *)self sectionNameKeyPath];

  if (sectionNameKeyPath == sectionNameKeyPath2)
  {
    return 0;
  }

  sectionNameKeyPath3 = [(NSFetchedResultsController *)self->_frc sectionNameKeyPath];
  sectionNameKeyPath4 = [(MTFetchedTableViewController *)self sectionNameKeyPath];
  v7 = [sectionNameKeyPath3 isEqualToString:sectionNameKeyPath4];

  return v7 ^ 1;
}

- (void)_updateTableAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hasSectionNameKeyPathChanged = [(MTFetchedTableViewController *)self hasSectionNameKeyPathChanged];
  if (hasSectionNameKeyPathChanged)
  {
    [(NSFetchedResultsController *)self->_frc setDelegate:0];
    frc = self->_frc;
    self->_frc = 0;

    [(MTFetchedTableViewController *)self initializeFrc];
  }

  if (animatedCopy && [(MTFetchedTableViewController *)self rowAnimation]!= 5)
  {
    if (hasSectionNameKeyPathChanged)
    {
      tableView = [(MTFetchedTableViewController *)self tableView];
      [tableView beginUpdates];

      tableView2 = [(MTFetchedTableViewController *)self tableView];
      numberOfSections = [tableView2 numberOfSections];

      v14 = [[NSIndexSet alloc] initWithIndexesInRange:{0, numberOfSections}];
      tableView3 = [(MTFetchedTableViewController *)self tableView];
      [tableView3 deleteSections:v14 withRowAnimation:0];

      v16 = [(MTFetchedTableViewController *)self frc];
      sections = [v16 sections];
      v18 = [sections count];

      v19 = [NSIndexSet indexSetWithIndexesInRange:0, v18];

      tableView4 = [(MTFetchedTableViewController *)self tableView];
      [tableView4 insertSections:v19 withRowAnimation:0];

      tableView5 = [(MTFetchedTableViewController *)self tableView];
      [tableView5 endUpdates];

      v9 = 0;
      goto LABEL_12;
    }

    fetchedObjects = [(NSFetchedResultsController *)self->_frc fetchedObjects];
    v23 = [fetchedObjects copy];

    v24 = [NSSet setWithArray:v23];
    v25 = [v24 mutableCopy];
    v26 = self->_frc;
    v57 = 0;
    v27 = [(NSFetchedResultsController *)v26 performFetch:&v57];
    v9 = v57;
    if (v27)
    {
      v50 = v27;
      fetchedObjects2 = [(NSFetchedResultsController *)self->_frc fetchedObjects];
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
          v38 = [fetchedObjects2 objectAtIndex:j];
          v39 = [v23 containsObject:v38];

          if ((v39 & 1) == 0)
          {
            v40 = [NSIndexPath indexPathForRow:j inSection:0];
            [v52 addObject:v40];
          }
        }
      }

      tableView6 = [(MTFetchedTableViewController *)self tableView];
      [tableView6 beginUpdates];

      if ([v52 count] || objc_msgSend(v28, "count") || (objc_msgSend(fetchedObjects2, "isEqualToArray:", v23) & 1) != 0)
      {
        tableView7 = [(MTFetchedTableViewController *)self tableView];
        [tableView7 insertRowsAtIndexPaths:v52 withRowAnimation:{-[MTFetchedTableViewController rowAnimation](self, "rowAnimation")}];

        tableView8 = [(MTFetchedTableViewController *)self tableView];
        [tableView8 deleteRowsAtIndexPaths:v28 withRowAnimation:{-[MTFetchedTableViewController rowAnimation](self, "rowAnimation")}];
      }

      else
      {
        tableView9 = [(MTFetchedTableViewController *)self tableView];
        numberOfSections2 = [tableView9 numberOfSections];

        tableView8 = [[NSIndexSet alloc] initWithIndexesInRange:{0, numberOfSections2}];
        tableView10 = [(MTFetchedTableViewController *)self tableView];
        [tableView10 reloadSections:tableView8 withRowAnimation:0];
      }

      LOBYTE(v27) = v50;
      v25 = v49;

      tableView11 = [(MTFetchedTableViewController *)self tableView];
      [tableView11 endUpdates];
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
      tableView12 = [(MTFetchedTableViewController *)self tableView];
      [tableView12 reloadData];
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

- (void)reloadVisibleCellsWithAnimation:(int64_t)animation
{
  tableView = [(MTFetchedTableViewController *)self tableView];
  tableView2 = [(MTFetchedTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];
  [tableView reloadRowsAtIndexPaths:indexPathsForVisibleRows withRowAnimation:animation];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v3 encodeRestorableStateWithCoder:coder];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MTFetchedTableViewController;
  [(MTFetchedTableViewController *)&v4 decodeRestorableStateWithCoder:coder];
  [(MTFetchedTableViewController *)self initializeFrc];
}

@end