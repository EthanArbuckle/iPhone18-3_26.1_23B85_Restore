@interface LSApplicationProxy
- (id)coverageFilePath;
@end

@implementation LSApplicationProxy

- (id)coverageFilePath
{
  v2 = [(LSApplicationProxy *)self bundleContainerURL];
  v3 = [v2 path];

  v4 = [v3 stringByAppendingPathComponent:@"GeoJSON"];

  return v4;
}

@end