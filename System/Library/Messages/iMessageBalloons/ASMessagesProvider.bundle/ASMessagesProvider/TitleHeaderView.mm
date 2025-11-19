@interface TitleHeaderView
- (BOOL)isAccessibilityElement;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (id)_accessibilitySupplementaryFooterViews;
- (void)didTapWithAccessoryView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityTraits:(unint64_t)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TitleHeaderView

- (void)didTapWithAccessoryView:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
  if (v3)
  {
    v8[3] = sub_BE70(0, &unk_948000);
    v8[0] = a3;
    v6 = a3;
    v7 = self;
    sub_F714(v3);
    v3(v8);
    sub_F704(v3);
    sub_10A2C(v8, &unk_93FBD0);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1946C0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TitleHeaderView(0);
  v4 = a3;
  v5 = v9.receiver;
  [(TitleHeaderView *)&v9 traitCollectionDidChange:v4];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
  v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines];

  v8 = v7(v5);

  [v6 setNumberOfLines:{v8, v9.receiver, v9.super_class}];
  [v5 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_194B48();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_197F24();
}

- (NSString)accessibilityLabel
{
  v2 = self;
  sub_198304();
  v4 = v3;

  if (v4)
  {
    v5 = sub_769210();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    sub_769240();
    v4 = self;
    v5 = sub_769210();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v7 setAccessibilityLabel:v5];
}

- (BOOL)isAccessibilityElement
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    sub_769240();

    v6 = sub_769350();

    return v6 > 0;
  }

  else
  {
    v9.receiver = v3;
    v9.super_class = type metadata accessor for TitleHeaderView(0);
    v8 = [(TitleHeaderView *)&v9 isAccessibilityElement];

    return v8;
  }
}

- (void)setIsAccessibilityElement:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v4 setIsAccessibilityElement:v3];
}

- (void)setAccessibilityTraits:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v4 setAccessibilityTraits:a3];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = self;
  v3 = sub_198770();

  if (v3)
  {
    v4.super.isa = sub_769450().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end