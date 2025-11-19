@interface MusicTextContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MusicTextContentView)initWithFrame:(CGRect)a3;
- (UILabel)currentAccessibilityLabel;
@end

@implementation MusicTextContentView

- (UILabel)currentAccessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___MusicTextContentView_selectedLabel);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR___MusicTextContentView_selectedLabel);
  }

  else
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR___MusicTextContentView_label);
    v2 = 0;
  }

  v4 = v2;

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR___MusicTextContentView_label) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (MusicTextContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end