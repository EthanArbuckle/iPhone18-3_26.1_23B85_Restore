@interface AVTUINSURL
- (unint64_t)hash;
@end

@implementation AVTUINSURL

- (unint64_t)hash
{
  v2 = [(AVTUINSURL *)self path];
  v3 = [v2 lastPathComponent];
  v4 = [v3 hash];

  return v4;
}

@end