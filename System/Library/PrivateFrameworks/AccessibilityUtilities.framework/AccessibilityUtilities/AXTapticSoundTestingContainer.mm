@interface AXTapticSoundTestingContainer
- (id)description;
@end

@implementation AXTapticSoundTestingContainer

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sound = [(AXTapticSoundTestingContainer *)self sound];
  [(AXTapticSoundTestingContainer *)self delay];
  v6 = [v3 stringWithFormat:@"%@ [delay: %f]", sound, v5];

  return v6;
}

@end