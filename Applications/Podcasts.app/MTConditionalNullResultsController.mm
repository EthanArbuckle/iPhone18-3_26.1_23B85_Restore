@interface MTConditionalNullResultsController
- (MTResultsChangeGenerator)changeGenerator;
- (id)_extraObjects;
- (id)allObjects;
- (void)_initializeFrc;
- (void)controllerDidChangeContent:(id)content;
- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation MTConditionalNullResultsController

- (void)_initializeFrc
{
  v5.receiver = self;
  v5.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v5 _initializeFrc];
  v3 = [(MTCoreDataResultsController *)self frc];
  fetchedObjects = [v3 fetchedObjects];
  -[MTConditionalNullResultsController setHasResults:](self, "setHasResults:", [fetchedObjects count] != 0);
}

- (id)allObjects
{
  v3 = [(MTCoreDataResultsController *)self frc];
  fetchedObjects = [v3 fetchedObjects];
  v5 = [fetchedObjects count];

  if (v5)
  {
    _extraObjects = &__NSArray0__struct;
  }

  else
  {
    _extraObjects = [(MTConditionalNullResultsController *)self _extraObjects];
  }

  return _extraObjects;
}

- (id)_extraObjects
{
  v3 = objc_opt_new();
  numberOfPlaceholderObjects = [(MTConditionalNullResultsController *)self numberOfPlaceholderObjects];
  if (numberOfPlaceholderObjects)
  {
    v5 = numberOfPlaceholderObjects;
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
  if ((v7 != 0) != [(MTConditionalNullResultsController *)self hasResults])
  {
    _extraObjects = [(MTConditionalNullResultsController *)self _extraObjects];
    if (v7)
    {
      v9 = &__NSArray0__struct;
    }

    else
    {
      v9 = _extraObjects;
    }

    if (v7)
    {
      v10 = _extraObjects;
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    changeGenerator = [(MTConditionalNullResultsController *)self changeGenerator];
    [changeGenerator generateChangesForExistingObjects:v10 newObjects:v9 inSection:0];
  }

  v12.receiver = self;
  v12.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v12 controllerDidChangeContent:contentCopy];
  [(MTConditionalNullResultsController *)self setHasResults:v7 != 0];
}

- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  objectCopy = object;
  v14 = [(MTCoreDataResultsController *)self frc];
  v15.receiver = self;
  v15.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v15 controller:v14 didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
}

@end