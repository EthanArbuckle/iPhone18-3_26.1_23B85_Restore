@interface MTCoreDataResultsController
- (MTCoreDataResultsController)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors propertyKeys:(id)keys;
- (MTCoreDataResultsController)initWithFetchRequest:(id)request propertyKeys:(id)keys;
- (NSArray)sortDescriptors;
- (NSPredicate)predicate;
- (id)allObjects;
- (id)indexPathForObject:(id)object;
- (id)objectAtIndexPath:(id)path;
- (void)_initializeFrc;
- (void)_setFrc:(id)frc;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)reloadData;
- (void)setPredicate:(id)predicate;
- (void)setSortDescriptors:(id)descriptors;
@end

@implementation MTCoreDataResultsController

- (MTCoreDataResultsController)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors propertyKeys:(id)keys
{
  nameCopy = name;
  predicateCopy = predicate;
  keysCopy = keys;
  descriptorsCopy = descriptors;
  v14 = [[NSFetchRequest alloc] initWithEntityName:nameCopy];
  if (kMTPodcastEntityName == nameCopy)
  {
    v15 = [MTPodcast predicateForSyncablePodcastsForSyncType:0];
  }

  else
  {
    if (kMTEpisodeEntityName != nameCopy)
    {
      goto LABEL_6;
    }

    v15 = +[MTEpisode predicateForRSSEpisodes];
  }

  v16 = v15;
  v17 = [v15 AND:predicateCopy];

  predicateCopy = v17;
LABEL_6:
  [v14 setPredicate:predicateCopy];
  if (descriptorsCopy)
  {
    v18 = descriptorsCopy;
  }

  else
  {
    v18 = &__NSArray0__struct;
  }

  [v14 setSortDescriptors:v18];

  v19 = [(MTCoreDataResultsController *)self initWithFetchRequest:v14 propertyKeys:keysCopy];
  return v19;
}

- (MTCoreDataResultsController)initWithFetchRequest:(id)request propertyKeys:(id)keys
{
  requestCopy = request;
  keysCopy = keys;
  v11.receiver = self;
  v11.super_class = MTCoreDataResultsController;
  v8 = [(MTCoreDataResultsController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTCoreDataResultsController *)v8 setFetchRequest:requestCopy];
    [(MTCoreDataResultsController *)v9 setPropertyKeys:keysCopy];
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

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  fetchRequest = [(MTCoreDataResultsController *)self fetchRequest];
  [fetchRequest setPredicate:predicateCopy];
}

- (NSPredicate)predicate
{
  fetchRequest = [(MTCoreDataResultsController *)self fetchRequest];
  predicate = [fetchRequest predicate];

  return predicate;
}

- (void)setSortDescriptors:(id)descriptors
{
  descriptorsCopy = &__NSArray0__struct;
  if (descriptors)
  {
    descriptorsCopy = descriptors;
  }

  v5 = descriptorsCopy;
  fetchRequest = [(MTCoreDataResultsController *)self fetchRequest];
  [fetchRequest setSortDescriptors:v5];
}

- (NSArray)sortDescriptors
{
  fetchRequest = [(MTCoreDataResultsController *)self fetchRequest];
  sortDescriptors = [fetchRequest sortDescriptors];

  return sortDescriptors;
}

- (void)reloadData
{
  [(MTCoreDataResultsController *)self setFrc:0];

  [(MTCoreDataResultsController *)self _initializeFrc];
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [(MTCoreDataResultsController *)self frc];
    fetchedObjects = [v5 fetchedObjects];
    v7 = [fetchedObjects count];

    if ([pathCopy section] || objc_msgSend(pathCopy, "row") >= v7)
    {
      v8 = +[IMLogger sharedLogger];
      [v8 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/FRC/MTCoreDataResultsController.m" lineNumber:111 format:{@"Unable to retrieve object for index path %@ with total number of objects %ld", pathCopy, v7}];
      v9 = 0;
    }

    else
    {
      v8 = [(MTCoreDataResultsController *)self frc];
      v9 = [v8 objectAtIndexPath:pathCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)indexPathForObject:(id)object
{
  objectCopy = object;
  v5 = [(MTCoreDataResultsController *)self frc];
  v6 = [v5 indexPathForObject:objectCopy];

  return v6;
}

- (id)allObjects
{
  v2 = [(MTCoreDataResultsController *)self frc];
  fetchedObjects = [v2 fetchedObjects];

  return fetchedObjects;
}

- (void)_initializeFrc
{
  if (!self->_frc)
  {
    v17[7] = v2;
    v17[8] = v3;
    v5 = +[MTDB sharedInstance];
    mainQueueContext = [v5 mainQueueContext];

    propertyKeys = [(MTCoreDataResultsController *)self propertyKeys];
    v8 = [propertyKeys count];

    if (v8)
    {
      v9 = [MTFetchedResultsController alloc];
      fetchRequest = [(MTCoreDataResultsController *)self fetchRequest];
      v11 = [v9 initWithFetchRequest:fetchRequest managedObjectContext:mainQueueContext sectionNameKeyPath:0 cacheName:0];

      propertyKeys2 = [(MTCoreDataResultsController *)self propertyKeys];
      [v11 setPropertyKeys:propertyKeys2];
    }

    else
    {
      v13 = [NSFetchedResultsController alloc];
      propertyKeys2 = [(MTCoreDataResultsController *)self fetchRequest];
      v11 = [v13 initWithFetchRequest:propertyKeys2 managedObjectContext:mainQueueContext sectionNameKeyPath:0 cacheName:0];
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

- (void)_setFrc:(id)frc
{
  frcCopy = frc;
  frc = self->_frc;
  if (frc != frcCopy)
  {
    v7 = frcCopy;
    [(MTFetchedResultsControllerProtocol *)frc setDelegate:0];
    [(MTFetchedResultsControllerProtocol *)v7 setDelegate:self];
    objc_storeStrong(&self->_frc, frc);
    frcCopy = v7;
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  objectCopy = object;
  delegate = [(MTResultsController *)self delegate];
  [delegate controller:self didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
}

- (void)controllerWillChangeContent:(id)content
{
  delegate = [(MTResultsController *)self delegate];
  [delegate controllerWillChangeContent:self];
}

- (void)controllerDidChangeContent:(id)content
{
  delegate = [(MTResultsController *)self delegate];
  [delegate controllerDidChangeContent:self];
}

@end