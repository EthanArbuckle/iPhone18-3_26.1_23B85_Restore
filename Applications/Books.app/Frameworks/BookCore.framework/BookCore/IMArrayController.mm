@interface IMArrayController
- (void)setArrangedObjects:(id)objects;
@end

@implementation IMArrayController

- (void)setArrangedObjects:(id)objects
{
  objectsCopy = objects;
  arrangedObjects = [(IMArrayController *)self arrangedObjects];
  if (arrangedObjects == objectsCopy)
  {
  }

  else
  {
    arrangedObjects2 = [(IMArrayController *)self arrangedObjects];
    v7 = [objectsCopy isEqualToArray:arrangedObjects2];

    if ((v7 & 1) == 0)
    {
      [(IMArrayController *)self willChangeValueForKey:@"arrangedObjects"];
      objc_storeStrong(&self->_arrangedObjects, objects);
      [(IMArrayController *)self didChangeValueForKey:@"arrangedObjects"];
    }
  }
}

@end