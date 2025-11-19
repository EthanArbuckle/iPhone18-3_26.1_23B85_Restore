@interface NSDirectoryEnumerator
- (void)skipDescendants;
- (void)skipDescendents;
@end

@implementation NSDirectoryEnumerator

- (void)skipDescendents
{
  v4 = NSClassFromString(@"NSDirectoryEnumerator");

  NSRequestConcreteImplementation(self, a2, v4);
}

- (void)skipDescendants
{
  v4 = NSClassFromString(@"NSDirectoryEnumerator");

  NSRequestConcreteImplementation(self, a2, v4);
}

@end