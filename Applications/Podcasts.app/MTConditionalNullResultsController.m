@interface MTConditionalNullResultsController
- (MTResultsChangeGenerator)changeGenerator;
- (id)_extraObjects;
- (id)allObjects;
- (void)_initializeFrc;
- (void)controllerDidChangeContent:(id)a3;
- (void)generator:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
@end

@implementation MTConditionalNullResultsController

- (void)_initializeFrc
{
  v5.receiver = self;
  v5.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v5 _initializeFrc];
  v3 = [(MTCoreDataResultsController *)self frc];
  v4 = [v3 fetchedObjects];
  -[MTConditionalNullResultsController setHasResults:](self, "setHasResults:", [v4 count] != 0);
}

- (id)allObjects
{
  v3 = [(MTCoreDataResultsController *)self frc];
  v4 = [v3 fetchedObjects];
  v5 = [v4 count];

  if (v5)
  {
    v6 = &__NSArray0__struct;
  }

  else
  {
    v6 = [(MTConditionalNullResultsController *)self _extraObjects];
  }

  return v6;
}

- (id)_extraObjects
{
  v3 = objc_opt_new();
  v4 = [(MTConditionalNullResultsController *)self numberOfPlaceholderObjects];
  if (v4)
  {
    v5 = v4;
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

- (void)controllerDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTCoreDataResultsController *)self frc];
  v6 = [v5 fetchedObjects];

  v7 = [v6 count];
  if ((v7 != 0) != [(MTConditionalNullResultsController *)self hasResults])
  {
    v8 = [(MTConditionalNullResultsController *)self _extraObjects];
    if (v7)
    {
      v9 = &__NSArray0__struct;
    }

    else
    {
      v9 = v8;
    }

    if (v7)
    {
      v10 = v8;
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    v11 = [(MTConditionalNullResultsController *)self changeGenerator];
    [v11 generateChangesForExistingObjects:v10 newObjects:v9 inSection:0];
  }

  v12.receiver = self;
  v12.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v12 controllerDidChangeContent:v4];
  [(MTConditionalNullResultsController *)self setHasResults:v7 != 0];
}

- (void)generator:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = [(MTCoreDataResultsController *)self frc];
  v15.receiver = self;
  v15.super_class = MTConditionalNullResultsController;
  [(MTCoreDataResultsController *)&v15 controller:v14 didChangeObject:v13 atIndexPath:v12 forChangeType:a6 newIndexPath:v11];
}

@end