@interface ShadowBackdropView
- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithCoder:(id)coder;
- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ShadowBackdropView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_3DED4();
}

- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ShadowBackdropView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplicationP33_A3A68D9BDEEA2EFD7AF836E311107B9218ShadowBackdropView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ShadowBackdropView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end