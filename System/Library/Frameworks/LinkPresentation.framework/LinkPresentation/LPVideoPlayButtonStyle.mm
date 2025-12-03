@interface LPVideoPlayButtonStyle
- (LPVideoPlayButtonStyle)initWithPlatform:(int64_t)platform;
@end

@implementation LPVideoPlayButtonStyle

- (LPVideoPlayButtonStyle)initWithPlatform:(int64_t)platform
{
  v17.receiver = self;
  v17.super_class = LPVideoPlayButtonStyle;
  v4 = [(LPVideoPlayButtonStyle *)&v17 init];
  if (v4)
  {
    if (platform == 5)
    {
      v7 = [[LPSize alloc] initWithSquareSize:25.0];
      size = v4->_size;
      v4->_size = v7;

      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v5 = [LPSize alloc];
      if (platform == 3)
      {
        v6 = 30.0;
      }

      else
      {
        v6 = 14.0;
      }

      v10 = [(LPSize *)v5 initWithSquareSize:v6];
      v11 = v4->_size;
      v4->_size = v10;

      labelColor = [MEMORY[0x1E69DC888] blackColor];
    }

    color = v4->_color;
    v4->_color = labelColor;

    v13 = [[LPSize alloc] initWithSquareSize:48.0];
    backgroundSize = v4->_backgroundSize;
    v4->_backgroundSize = v13;

    v4->_disabledOpacity = 0.2;
    v15 = v4;
  }

  return v4;
}

@end