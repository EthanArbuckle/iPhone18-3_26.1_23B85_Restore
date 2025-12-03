@interface AEConcreteFileSystemPrimitives
- (BOOL)fileExistsAtURL:(id)l;
@end

@implementation AEConcreteFileSystemPrimitives

- (BOOL)fileExistsAtURL:(id)l
{
  path = [l path];
  v4 = [path cStringUsingEncoding:4];

  return access(v4, 0) == 0;
}

@end