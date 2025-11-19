@interface MTResultsController
- (MTResultsControllerDelegate)delegate;
- (id)description;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)indexOfObject:(id)a3;
- (unint64_t)numberOfObjects;
@end

@implementation MTResultsController

- (id)description
{
  v3 = [(MTResultsController *)self title];
  v4 = [(MTResultsController *)self allObjects];
  v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Section: %@ (%lu)", v3, [v4 count]);

  return v5;
}

- (unint64_t)indexOfObject:(id)a3
{
  v3 = [(MTResultsController *)self indexPathForObject:a3];
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

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [NSIndexPath indexPathForRow:a3 inSection:0];
  v5 = [(MTResultsController *)self objectAtIndexPath:v4];

  return v5;
}

- (unint64_t)numberOfObjects
{
  v2 = [(MTResultsController *)self allObjects];
  v3 = [v2 count];

  return v3;
}

- (MTResultsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end