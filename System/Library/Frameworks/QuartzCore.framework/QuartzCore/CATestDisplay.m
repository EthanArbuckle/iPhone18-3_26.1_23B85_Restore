@interface CATestDisplay
+ (id)fakeDisplayWithType:(int64_t)a3;
+ (id)testDisplays;
- (CATestDisplay)initWithType:(int64_t)a3;
- (CGRect)bounds;
- (CGSize)overscanAmounts;
- (id)availableModes;
- (id)preferredMode;
@end

@implementation CATestDisplay

- (CGSize)overscanAmounts
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)availableModes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = [(CATestDisplay *)self preferredMode];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

- (CGRect)bounds
{
  v3 = [-[CATestDisplay preferredMode](self "preferredMode")];
  v4 = [-[CATestDisplay preferredMode](self "preferredMode")];
  v5 = 0.0;
  v6 = 0.0;
  v7 = v3;
  result.size.height = v4;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)preferredMode
{
  {
    [CATestDisplay preferredMode]::mode = [CADisplayMode displayModeWithWidth:320 height:180 refreshRate:0 isVRR:10.0];
  }

  return [CATestDisplay preferredMode]::mode;
}

- (CATestDisplay)initWithType:(int64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CATestDisplay;
  result = [(CATestDisplay *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

+ (id)testDisplays
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = +[CATestDisplay mainTestDisplay];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
}

+ (id)fakeDisplayWithType:(int64_t)a3
{
  {
    +[CATestDisplay fakeDisplayWithType:]::fake = [[CATestDisplay alloc] initWithType:a3];
  }

  return +[CATestDisplay fakeDisplayWithType:]::fake;
}

@end