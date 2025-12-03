@interface VKLabelMarkerShield(MKTransitArtworkExtras)
- (id)shieldColorString;
@end

@implementation VKLabelMarkerShield(MKTransitArtworkExtras)

- (id)shieldColorString
{
  [self color];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v7 * 255.0)];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v2 * 255.0)];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v4 * 255.0)];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2X", (v6 * 255.0)];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@", v8, v9, v10, v11];

  return v12;
}

@end