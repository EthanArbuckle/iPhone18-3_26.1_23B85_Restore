@interface _SFRequestDesktopSiteQuirksSnapshotTransformer
- (id)objectFromData:(id)data;
@end

@implementation _SFRequestDesktopSiteQuirksSnapshotTransformer

- (id)objectFromData:(id)data
{
  dataCopy = data;
  v4 = [[_SFRequestDesktopSiteQuirksSnapshot alloc] initWithSnapshotData:dataCopy error:0];

  return v4;
}

@end