@interface MTResultsController
- (MTResultsControllerDelegate)delegate;
- (id)description;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)indexOfObject:(id)object;
- (unint64_t)numberOfObjects;
@end

@implementation MTResultsController

- (id)description
{
  title = [(MTResultsController *)self title];
  allObjects = [(MTResultsController *)self allObjects];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Section: %@ (%lu)", title, [allObjects count]);

  return v5;
}

- (unint64_t)indexOfObject:(id)object
{
  v3 = [(MTResultsController *)self indexPathForObject:object];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 row];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [NSIndexPath indexPathForRow:index inSection:0];
  v5 = [(MTResultsController *)self objectAtIndexPath:v4];

  return v5;
}

- (unint64_t)numberOfObjects
{
  allObjects = [(MTResultsController *)self allObjects];
  v3 = [allObjects count];

  return v3;
}

- (MTResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end