@interface BSColor(BaseBoardUI)
- (uint64_t)UIColor;
@end

@implementation BSColor(BaseBoardUI)

- (uint64_t)UIColor
{
  v2 = MEMORY[0x1E69DC888];
  [self red];
  v4 = v3;
  [self green];
  v6 = v5;
  [self blue];
  v8 = v7;
  [self alpha];

  return [v2 colorWithRed:v4 green:v6 blue:v8 alpha:v9];
}

@end