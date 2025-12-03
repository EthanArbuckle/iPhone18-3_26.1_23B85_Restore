@interface TitleHeaderView
- (BOOL)isAccessibilityElement;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (id)_accessibilitySupplementaryFooterViews;
- (void)didTapWithAccessoryView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityTraits:(unint64_t)traits;
- (void)setIsAccessibilityElement:(BOOL)element;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitleHeaderView

- (void)didTapWithAccessoryView:(id)view
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
  if (v3)
  {
    v8[3] = sub_BE70(0, &unk_948000);
    v8[0] = view;
    viewCopy = view;
    selfCopy = self;
    sub_F714(v3);
    v3(v8);
    sub_F704(v3);
    sub_10A2C(v8, &unk_93FBD0);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1946C0(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for TitleHeaderView(0);
  changeCopy = change;
  v5 = v9.receiver;
  [(TitleHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
  v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines];

  v8 = v7(v5);

  [v6 setNumberOfLines:{v8, v9.receiver, v9.super_class}];
  [v5 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_194B48();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_197F24();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
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

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    sub_769240();
    selfCopy = self;
    v5 = sub_769210();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v7 setAccessibilityLabel:v5];
}

- (BOOL)isAccessibilityElement
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_769240();

    v6 = sub_769350();

    return v6 > 0;
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = type metadata accessor for TitleHeaderView(0);
    isAccessibilityElement = [(TitleHeaderView *)&v9 isAccessibilityElement];

    return isAccessibilityElement;
  }
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  elementCopy = element;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v4 setIsAccessibilityElement:elementCopy];
}

- (void)setAccessibilityTraits:(unint64_t)traits
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  [(TitleHeaderView *)&v4 setAccessibilityTraits:traits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  selfCopy = self;
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