@interface AVTUINSURL
- (unint64_t)hash;
@end

@implementation AVTUINSURL

- (unint64_t)hash
{
  path = [(AVTUINSURL *)self path];
  lastPathComponent = [path lastPathComponent];
  v4 = [lastPathComponent hash];

  return v4;
}

@end