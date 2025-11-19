@interface SocialProfileHeaderRow
- (BOOL)isHighlighted;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (_TtC16MusicApplication22SocialProfileHeaderRow)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SocialProfileHeaderRow

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialProfileHeaderRow();
  return [(SocialProfileHeaderRow *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for SocialProfileHeaderRow();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(SocialProfileHeaderRow *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(SocialProfileHeaderRow *)&v8 setHighlighted:v3];
  sub_4592A8(v7);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4593A4();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  if (![(SocialProfileHeaderRow *)v8 pointInside:v7 withEvent:x, y])
  {

    goto LABEL_5;
  }

  v9 = [(SocialProfileHeaderRow *)v8 isEnabled];

  if ((v9 & 1) == 0)
  {
LABEL_5:

    v8 = 0;
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  [(SocialProfileHeaderRow *)v4 intrinsicContentSize];
  v6 = v5;
  sub_7FD28();
  v7 = sub_AB38E0();

  if (width >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = width;
  }

  if (v7)
  {
    v8 = v6;
  }

  v9 = 48.0;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_4598C8();

  v4 = 48.0;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_4599A4(a3);
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialProfileHeaderRow();
  [(SocialProfileHeaderRow *)&v4 setIsAccessibilityElement:v3];
}

- (NSString)accessibilityLabel
{
  if (*(*(&self->super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView) + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text + 8))
  {

    v2 = sub_AB9260();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)accessibilityValue
{
  v2 = self;
  sub_459CC4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SocialProfileHeaderRow();
  [(SocialProfileHeaderRow *)&v4 setAccessibilityTraits:a3];
}

- (_TtC16MusicApplication22SocialProfileHeaderRow)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end