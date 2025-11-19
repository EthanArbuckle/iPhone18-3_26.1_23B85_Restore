@interface AXTapticSoundTestingContainer
- (id)description;
@end

@implementation AXTapticSoundTestingContainer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AXTapticSoundTestingContainer *)self sound];
  [(AXTapticSoundTestingContainer *)self delay];
  v6 = [v3 stringWithFormat:@"%@ [delay: %f]", v4, v5];

  return v6;
}

@end