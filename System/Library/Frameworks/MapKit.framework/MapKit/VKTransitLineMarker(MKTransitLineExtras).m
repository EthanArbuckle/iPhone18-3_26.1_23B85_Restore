@interface VKTransitLineMarker(MKTransitLineExtras)
- (MKMapItemIdentifier)mapItemIdentifier;
- (id)shieldColorString;
@end

@implementation VKTransitLineMarker(MKTransitLineExtras)

- (id)shieldColorString
{
  v2 = MEMORY[0x1E696AEC0];
  [a1 shieldColor];
  v4 = [v2 stringWithFormat:@"%.2X", (v3 * 255.0)];
  v5 = MEMORY[0x1E696AEC0];
  [a1 shieldColor];
  v7 = [v5 stringWithFormat:@"%.2X", (v6 * 255.0)];
  v8 = MEMORY[0x1E696AEC0];
  [a1 shieldColor];
  v10 = [v8 stringWithFormat:@"%.2X", (v9 * 255.0)];
  v11 = MEMORY[0x1E696AEC0];
  [a1 shieldColor];
  v13 = [v11 stringWithFormat:@"%.2X", (v12 * 255.0)];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@", v4, v7, v10, v13];

  return v14;
}

- (MKMapItemIdentifier)mapItemIdentifier
{
  v2 = [MKMapItemIdentifier alloc];
  v3 = [a1 identifier];
  v4 = [(MKMapItemIdentifier *)v2 initWithGEOMapItemIdentifier:v3];

  return v4;
}

@end