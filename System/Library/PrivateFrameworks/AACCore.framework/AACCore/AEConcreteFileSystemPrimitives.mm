@interface AEConcreteFileSystemPrimitives
- (BOOL)fileExistsAtURL:(id)a3;
@end

@implementation AEConcreteFileSystemPrimitives

- (BOOL)fileExistsAtURL:(id)a3
{
  v3 = [a3 path];
  v4 = [v3 cStringUsingEncoding:4];

  return access(v4, 0) == 0;
}

@end