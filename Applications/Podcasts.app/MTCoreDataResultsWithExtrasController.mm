@interface MTCoreDataResultsWithExtrasController
- (MTResultsChangeGenerator)changeGenerator;
- (id)_extraObjects;
- (id)allObjects;
- (void)_initializeFrc;
- (void)controllerDidChangeContent:(id)content;
- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation MTCoreDataResultsWithExtrasController

- (void)_initializeFrc
{
  v5.receiver = self;
  v5.super_class = MTCoreDataResultsWithExtrasController;
  [(MTCoreDataResultsController *)&v5 _initializeFrc];
  v3 = [(MTCoreDataResultsController *)self frc];
  fetchedObjects = [v3 fetchedObjects];
  -[MTCoreDataResultsWithExtrasController setNumberOfResults:](self, "setNumberOfResults:", [fetchedObjects count]);
}

- (id)allObjects
{
  v7.receiver = self;
  v7.super_class = MTCoreDataResultsWithExtrasController;
  allObjects = [(MTCoreDataResultsController *)&v7 allObjects];
  if ([allObjects count])
  {
    _extraObjects = [(MTCoreDataResultsWithExtrasController *)self _extraObjects];
    if ([_extraObjects count])
    {
      v5 = [allObjects arrayByAddingObjectsFromArray:_extraObjects];

      allObjects = v5;
    }
  }

  return allObjects;
}

- (id)_extraObjects
{
  v3 = objc_opt_new();
  numberOfExtraObjects = [(MTCoreDataResultsWithExtrasController *)self numberOfExtraObjects];
  if (numberOfExtraObjects)
  {
    v5 = numberOfExtraObjects;
    do
    {
      v6 = +[NSUUID UUID];
      [v3 addObject:v6];

      --v5;
    }

    while (v5);
  }

  v7 = [v3 copy];

  return v7;
}

- (MTResultsChangeGenerator)changeGenerator
{
  changeGenerator = self->_changeGenerator;
  if (!changeGenerator)
  {
    v4 = [[MTResultsChangeGenerator alloc] initWithDelegate:self];
    v5 = self->_changeGenerator;
    self->_changeGenerator = v4;

    changeGenerator = self->_changeGenerator;
  }

  return changeGenerator;
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  v5 = [(MTCoreDataResultsController *)self frc];
  fetchedObjects = [v5 fetchedObjects];

  v7 = [fetchedObjects count];
  if ((v7 != 0) != [(MTCoreDataResultsWithExtrasController *)self _hasResults])
  {
    _extraObjects = [(MTCoreDataResultsWithExtrasController *)self _extraObjects];
    v9 = [fetchedObjects arrayByAddingObjectsFromArray:_extraObjects];

    if (v7)
    {
      v10 = fetchedObjects;
    }

    else
    {
      v10 = v9;
    }

    if (v7)
    {
      v11 = v9;
    }

    else
    {
      v11 = fetchedObjects;
    }

    v12 = v11;
    v13 = v10;
    changeGenerator = [(MTCoreDataResultsWithExtrasController *)self changeGenerator];
    [changeGenerator generateChangesForExistingObjects:v13 newObjects:v12 inSection:0];
  }

  v15.receiver = self;
  v15.super_class = MTCoreDataResultsWithExtrasController;
  [(MTCoreDataResultsController *)&v15 controllerDidChangeContent:contentCopy];
  [(MTCoreDataResultsWithExtrasController *)self setNumberOfResults:v7];
}

- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (pathCopy && type == 2 && [(MTCoreDataResultsWithExtrasController *)self _hasResults])
  {
    v13 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] + -[MTCoreDataResultsWithExtrasController numberOfResults](self, "numberOfResults"), objc_msgSend(pathCopy, "section"));

    pathCopy = v13;
  }

  v14 = [(MTCoreDataResultsController *)self frc];
  [(MTCoreDataResultsController *)self controller:v14 didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
}

@end