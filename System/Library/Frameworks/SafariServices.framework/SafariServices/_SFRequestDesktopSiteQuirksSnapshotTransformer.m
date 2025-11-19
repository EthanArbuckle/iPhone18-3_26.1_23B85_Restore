@interface _SFRequestDesktopSiteQuirksSnapshotTransformer
- (id)objectFromData:(id)a3;
@end

@implementation _SFRequestDesktopSiteQuirksSnapshotTransformer

- (id)objectFromData:(id)a3
{
  v3 = a3;
  v4 = [[_SFRequestDesktopSiteQuirksSnapshot alloc] initWithSnapshotData:v3 error:0];

  return v4;
}

@end