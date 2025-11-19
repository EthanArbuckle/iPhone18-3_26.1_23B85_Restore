@interface BSColor(BaseBoardUI)
- (uint64_t)UIColor;
@end

@implementation BSColor(BaseBoardUI)

- (uint64_t)UIColor
{
  v2 = MEMORY[0x1E69DC888];
  [a1 red];
  v4 = v3;
  [a1 green];
  v6 = v5;
  [a1 blue];
  v8 = v7;
  [a1 alpha];

  return [v2 colorWithRed:v4 green:v6 blue:v8 alpha:v9];
}

@end