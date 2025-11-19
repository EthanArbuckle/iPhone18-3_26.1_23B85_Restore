@interface IMArrayController
- (void)setArrangedObjects:(id)a3;
@end

@implementation IMArrayController

- (void)setArrangedObjects:(id)a3
{
  v8 = a3;
  v5 = [(IMArrayController *)self arrangedObjects];
  if (v5 == v8)
  {
  }

  else
  {
    v6 = [(IMArrayController *)self arrangedObjects];
    v7 = [v8 isEqualToArray:v6];

    if ((v7 & 1) == 0)
    {
      [(IMArrayController *)self willChangeValueForKey:@"arrangedObjects"];
      objc_storeStrong(&self->_arrangedObjects, a3);
      [(IMArrayController *)self didChangeValueForKey:@"arrangedObjects"];
    }
  }
}

@end