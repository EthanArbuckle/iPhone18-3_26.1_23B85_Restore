@interface LSApplicationProxy
- (id)coverageFilePath;
@end

@implementation LSApplicationProxy

- (id)coverageFilePath
{
  bundleContainerURL = [(LSApplicationProxy *)self bundleContainerURL];
  path = [bundleContainerURL path];

  v4 = [path stringByAppendingPathComponent:@"GeoJSON"];

  return v4;
}

@end