@interface MusicTextContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MusicTextContentView)initWithFrame:(CGRect)frame;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR___MusicTextContentView_label) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (MusicTextContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end