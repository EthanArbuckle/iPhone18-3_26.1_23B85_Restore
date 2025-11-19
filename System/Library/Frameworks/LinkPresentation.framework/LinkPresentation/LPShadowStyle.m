@interface LPShadowStyle
+ (id)cardHeadingIconShadow;
+ (id)collaborationPreviewShadow;
+ (id)wordmarkShadow;
- (LPShadowStyle)init;
@end

@implementation LPShadowStyle

- (LPShadowStyle)init
{
  v6.receiver = self;
  v6.super_class = LPShadowStyle;
  v2 = [(LPShadowStyle *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)cardHeadingIconShadow
{
  v2 = objc_alloc_init(LPShadowStyle);
  [(LPShadowStyle *)v2 setRadius:7.0];
  v3 = +[LPSettings showDebugIndicators];
  v4 = 0.07;
  if (v3)
  {
    v4 = 1.0;
  }

  [(LPShadowStyle *)v2 setOpacity:v4];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  [(LPShadowStyle *)v2 setColor:v5];

  return v2;
}

+ (id)collaborationPreviewShadow
{
  v2 = objc_alloc_init(LPShadowStyle);
  [(LPShadowStyle *)v2 setRadius:3.0];
  v3 = +[LPSettings showDebugIndicators];
  v4 = 0.15;
  if (v3)
  {
    v4 = 1.0;
  }

  [(LPShadowStyle *)v2 setOpacity:v4];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  [(LPShadowStyle *)v2 setColor:v5];

  v6 = [[LPSize alloc] initWithSize:0.0, 1.0];
  [(LPShadowStyle *)v2 setOffset:v6];

  return v2;
}

+ (id)wordmarkShadow
{
  v2 = objc_alloc_init(LPShadowStyle);
  [(LPShadowStyle *)v2 setRadius:1.0];
  v3 = [[LPSize alloc] initWithSize:1.0, 1.0];
  [(LPShadowStyle *)v2 setOffset:v3];

  return v2;
}

@end