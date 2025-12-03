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
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
  if (v3)
  {
    v8[3] = sub_100005744(0, &unk_100984370);
    v8[0] = view;
    viewCopy = view;
    selfCopy = self;
    sub_1002BB3F4(v3);
    v3(v8);
    sub_10001F63C(v3);
    sub_10002B894(v8, &unk_1009711D0);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1003F2A54(width, height);
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
  v6 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
  v7 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];

  v8 = v7(v5);

  [v6 setNumberOfLines:{v8, v9.receiver, v9.super_class}];
  [v5 setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003F2EDC();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003F62B8();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_1003F6698();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
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
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    v5 = String._bridgeToObjectiveC()();
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
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String.count.getter();

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
  v3 = sub_1003F6B04();

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end