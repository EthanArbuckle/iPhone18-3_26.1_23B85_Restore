@interface ShadowBackdropView
- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithCoder:(id)a3;
- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ShadowBackdropView

- (void)layoutSubviews
{
  v2 = self;
  sub_3DED4();
}

- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ShadowBackdropView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ShadowBackdropView *)&v7 initWithCoder:v4];

  return v5;
}

@end