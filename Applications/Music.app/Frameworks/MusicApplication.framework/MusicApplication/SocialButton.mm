@interface SocialButton
- (BOOL)isHighlighted;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)tintColorDidChange;
@end

@implementation SocialButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialButton();
  return [(SocialButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for SocialButton();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(SocialButton *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(SocialButton *)&v8 setHighlighted:highlightedCopy];
  sub_4ECC94(isHighlighted);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  sub_4ECFBC(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_4ED0E8(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SocialButton();
  v2 = v5.receiver;
  [(SocialButton *)&v5 tintColorDidChange];
  v3 = sub_9A330(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16MusicApplication12SocialButton_cachedBackgroundImagesForAppearances;
  swift_beginAccess();
  *&v2[v4] = v3;

  sub_4ED6EC();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for SocialButton();
  v2 = v13.receiver;
  [(SocialButton *)&v13 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v2 music_inheritedLayoutInsets];
  [*&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView] setFrame:{UIEdgeInsetsInsetRect(v4, v6, v8, v10, v11, v12)}];
  [*&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_backgroundImageView] setFrame:{v4, v6, v8, v10}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  if (![(SocialButton *)selfCopy pointInside:eventCopy withEvent:x, y])
  {

    goto LABEL_5;
  }

  isEnabled = [(SocialButton *)selfCopy isEnabled];

  if ((isEnabled & 1) == 0)
  {
LABEL_5:

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v4 setIsAccessibilityElement:elementCopy];
}

- (NSString)accessibilityLabel
{
  if (*(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication12SocialButton_titleCompositingView) + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8))
  {

    v2 = sub_AB9260();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_AB92A0();
    selfCopy = self;
    v5 = sub_AB9260();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v4 setAccessibilityTraits:traits];
}

@end