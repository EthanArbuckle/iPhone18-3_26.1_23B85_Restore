@interface MTListResultsController
- (MTListResultsController)init;
- (id)indexPathForObject:(id)object;
- (id)objectAtIndexPath:(id)path;
- (unint64_t)numberOfObjectsInSection:(unint64_t)section;
- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)setObjects:(id)objects;
@end

@implementation MTListResultsController

- (MTListResultsController)init
{
  v5.receiver = self;
  v5.super_class = MTListResultsController;
  v2 = [(MTListResultsController *)&v5 init];
  if (v2)
  {
    v3 = [[MTResultsChangeGenerator alloc] initWithDelegate:v2];
    [(MTListResultsController *)v2 setChangeGenerator:v3];
  }

  return v2;
}

- (void)setObjects:(id)objects
{
  objectsCopy = objects;
  if (([objectsCopy isEqualToArray:self->_objects] & 1) == 0)
  {
    delegate = [(MTResultsController *)self delegate];
    [delegate controllerWillChangeContent:self];

    changeGenerator = [(MTListResultsController *)self changeGenerator];
    objects = [(MTListResultsController *)self objects];
    [changeGenerator generateChangesForExistingObjects:objects newObjects:objectsCopy inSection:0];

    v7 = [objectsCopy copy];
    objects = self->_objects;
    self->_objects = v7;

    delegate2 = [(MTResultsController *)self delegate];
    [delegate2 controllerDidChangeContent:self];
  }
}

- (id)objectAtIndexPath:(id)path
{
  pathCopy = path;
  objects = [(MTListResultsController *)self objects];
  v6 = [pathCopy row];

  v7 = [objects objectAtIndex:v6];

  return v7;
}

- (id)indexPathForObject:(id)object
{
  objectCopy = object;
  objects = [(MTListResultsController *)self objects];
  v6 = [objects indexOfObject:objectCopy];

  return [NSIndexPath indexPathForRow:v6 inSection:0];
}

- (unint64_t)numberOfObjectsInSection:(unint64_t)section
{
  objects = [(MTListResultsController *)self objects];
  v4 = [objects count];

  return v4;
}

- (void)generator:(id)generator didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  objectCopy = object;
  delegate = [(MTResultsController *)self delegate];
  [delegate controller:self didChangeObject:objectCopy atIndexPath:pathCopy forChangeType:type newIndexPath:indexPathCopy];
}

@end