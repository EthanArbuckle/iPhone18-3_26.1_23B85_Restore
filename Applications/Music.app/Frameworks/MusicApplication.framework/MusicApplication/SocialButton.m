@interface SocialButton
- (BOOL)isHighlighted;
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation SocialButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialButton();
  return [(SocialButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SocialButton();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SocialButton *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SocialButton *)&v8 setHighlighted:v3];
  sub_4ECC94(v7);
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_4ECFBC(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (![(SocialButton *)v8 pointInside:v7 withEvent:x, y])
  {

    goto LABEL_5;
  }

  v9 = [(SocialButton *)v8 isEnabled];

  if ((v9 & 1) == 0)
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v4 setIsAccessibilityElement:v3];
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_AB92A0();
    v4 = self;
    v5 = sub_AB9260();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v7 setAccessibilityLabel:v5];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialButton();
  [(SocialButton *)&v4 setAccessibilityTraits:a3];
}

@end