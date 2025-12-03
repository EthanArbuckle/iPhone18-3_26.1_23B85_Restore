@interface BAManifestDownload
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BAManifestDownload

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = BAManifestDownload;
  return [(BAURLDownload *)&v4 copyWithZone:zone];
}

@end