@interface LPVisualMediaViewStyle
- (LPVisualMediaViewStyle)initWithPlatform:(int64_t)platform;
@end

@implementation LPVisualMediaViewStyle

- (LPVisualMediaViewStyle)initWithPlatform:(int64_t)platform
{
  v24.receiver = self;
  v24.super_class = LPVisualMediaViewStyle;
  v4 = [(LPVisualMediaViewStyle *)&v24 init];
  if (v4)
  {
    v5 = [[LPVideoPlayButtonStyle alloc] initWithPlatform:platform];
    v6 = *(v4 + 1);
    *(v4 + 1) = v5;

    v7 = objc_alloc_init(LPImageViewStyle);
    v8 = *(v4 + 2);
    *(v4 + 2) = v7;

    v9 = [[LPSize alloc] initWithSquareSize:30.0];
    [*(v4 + 2) setFixedSize:v9];

    v10 = objc_alloc_init(LPPadding);
    v11 = *(v4 + 3);
    *(v4 + 3) = v10;

    v12 = [[LPPointUnit alloc] initWithValue:12.0];
    [*(v4 + 3) setTrailing:v12];

    trailing = [*(v4 + 3) trailing];
    [*(v4 + 3) setLeading:trailing];

    v14 = [[LPPointUnit alloc] initWithValue:11.0];
    [*(v4 + 3) setTop:v14];

    v15 = [*(v4 + 3) top];
    [*(v4 + 3) setBottom:v15];

    *(v4 + 2) = xmmword_1AE9C6770;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v17 = *(v4 + 6);
    *(v4 + 6) = blackColor;

    *(v4 + 56) = xmmword_1AE9C6770;
    LODWORD(v18) = 1058306785;
    LODWORD(v19) = 1.0;
    v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.500000117 :0.0 :v18 :v19];
    v21 = *(v4 + 9);
    *(v4 + 9) = v20;

    v22 = v4;
  }

  return v4;
}

@end