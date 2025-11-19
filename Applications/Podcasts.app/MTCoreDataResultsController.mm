@interface MTCoreDataResultsController
- (MTCoreDataResultsController)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 propertyKeys:(id)a6;
- (MTCoreDataResultsController)initWithFetchRequest:(id)a3 propertyKeys:(id)a4;
- (NSArray)sortDescriptors;
- (NSPredicate)predicate;
- (id)allObjects;
- (id)indexPathForObject:(id)a3;
- (id)objectAtIndexPath:(id)a3;
- (void)_initializeFrc;
- (void)_setFrc:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)reloadData;
- (void)setPredicate:(id)a3;
- (void)setSortDescriptors:(id)a3;
@end

@implementation MTCoreDataResultsController

- (MTCoreDataResultsController)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 propertyKeys:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [[NSFetchRequest alloc] initWithEntityName:v10];
  if (kMTPodcastEntityName == v10)
  {
    v15 = [MTPodcast predicateForSyncablePodcastsForSyncType:0];
  }

  else
  {
    if (kMTEpisodeEntityName != v10)
    {
      goto LABEL_6;
    }

    v15 = +[MTEpisode predicateForRSSEpisodes];
  }

  v16 = v15;
  v17 = [v15 AND:v11];

  v11 = v17;
LABEL_6:
  [v14 setPredicate:v11];
  if (v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  [v14 setSortDescriptors:v18];

  v19 = [(MTCoreDataResultsController *)self initWithFetchRequest:v14 propertyKeys:v12];
  return v19;
}

- (MTCoreDataResultsController)initWithFetchRequest:(id)a3 propertyKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTCoreDataResultsController;
  v8 = [(MTCoreDataResultsController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTCoreDataResultsController *)v8 setFetchRequest:v6];
    [(MTCoreDataResultsController *)v9 setPropertyKeys:v7];
    [(MTCoreDataResultsController *)v9 _initializeFrc];
  }

  return v9;
}

- (void)dealloc
{
  [(MTCoreDataResultsController *)self _setFrc:0];
  v3.receiver = self;
  v3.super_class = MTCoreDataResultsController;
  [(MTCoreDataResultsController *)&v3 dealloc];
}

- (void)setPredicate:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDataResultsController *)self fetchRequest];
  [v5 setPredicate:v4];
}

- (NSPredicate)predicate
{
  v2 = [(MTCoreDataResultsController *)self fetchRequest];
  v3 = [v2 predicate];

  return v3;
}

- (void)setSortDescriptors:(id)a3
{
  v4 = &__NSArray0__struct;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v6 = [(MTCoreDataResultsController *)self fetchRequest];
  [v6 setSortDescriptors:v5];
}

- (NSArray)sortDescriptors
{
  v2 = [(MTCoreDataResultsController *)self fetchRequest];
  v3 = [v2 sortDescriptors];

  return v3;
}

- (void)reloadData
{
  [(MTCoreDataResultsController *)self setFrc:0];

  [(MTCoreDataResultsController *)self _initializeFrc];
}

- (id)objectAtIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MTCoreDataResultsController *)self frc];
    v6 = [v5 fetchedObjects];
    v7 = [v6 count];

    if ([v4 section] || objc_msgSend(v4, "row") >= v7)
    {
      v8 = +[IMLogger sharedLogger];
      [v8 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/FRC/MTCoreDataResultsController.m" lineNumber:111 format:{@"Unable to retrieve object for index path %@ with total number of objects %ld", v4, v7}];
      v9 = 0;
    }

    else
    {
      v8 = [(MTCoreDataResultsController *)self frc];
      v9 = [v8 objectAtIndexPath:v4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)indexPathForObject:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDataResultsController *)self frc];
  v6 = [v5 indexPathForObject:v4];

  return v6;
}

- (id)allObjects
{
  v2 = [(MTCoreDataResultsController *)self frc];
  v3 = [v2 fetchedObjects];

  return v3;
}

- (void)_initializeFrc
{
  if (!self->_frc)
  {
    v17[7] = v2;
    v17[8] = v3;
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainQueueContext];

    v7 = [(MTCoreDataResultsController *)self propertyKeys];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [MTFetchedResultsController alloc];
      v10 = [(MTCoreDataResultsController *)self fetchRequest];
      v11 = [v9 initWithFetchRequest:v10 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];

      v12 = [(MTCoreDataResultsController *)self propertyKeys];
      [v11 setPropertyKeys:v12];
    }

    else
    {
      v13 = [NSFetchedResultsController alloc];
      v12 = [(MTCoreDataResultsController *)self fetchRequest];
      v11 = [v13 initWithFetchRequest:v12 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];
    }

    [v11 setDelegate:self];
    v17[0] = 0;
    v14 = [v11 performFetch:v17];
    v15 = v17[0];
    v16 = v15;
    if (v14)
    {
      [(MTCoreDataResultsController *)self setFrc:v11];
    }

    else
    {
      [v15 logAndThrow:1];
    }
  }
}

- (void)_setFrc:(id)a3
{
  v5 = a3;
  frc = self->_frc;
  if (frc != v5)
  {
    v7 = v5;
    [(MTFetchedResultsControllerProtocol *)frc setDelegate:0];
    [(MTFetchedResultsControllerProtocol *)v7 setDelegate:self];
    objc_storeStrong(&self->_frc, a3);
    v5 = v7;
  }
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = [(MTResultsController *)self delegate];
  [v14 controller:self didChangeObject:v13 atIndexPath:v12 forChangeType:a6 newIndexPath:v11];
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = [(MTResultsController *)self delegate];
  [v4 controllerWillChangeContent:self];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [(MTResultsController *)self delegate];
  [v4 controllerDidChangeContent:self];
}

@end