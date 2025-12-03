@interface NSObject
- (id)valueForKeyPath:(id)path exception:(id *)exception;
@end

@implementation NSObject

- (id)valueForKeyPath:(id)path exception:(id *)exception
{
  pathCopy = path;
  v6 = [self valueForKeyPath:pathCopy];

  return v6;
}

@end