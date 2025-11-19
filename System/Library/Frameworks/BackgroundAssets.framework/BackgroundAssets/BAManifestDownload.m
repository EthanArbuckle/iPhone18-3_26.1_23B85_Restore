@interface BAManifestDownload
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BAManifestDownload

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = BAManifestDownload;
  return [(BAURLDownload *)&v4 copyWithZone:a3];
}

@end