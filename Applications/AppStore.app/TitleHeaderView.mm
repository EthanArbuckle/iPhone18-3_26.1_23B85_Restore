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
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
  if (v3)
  {
    v8[3] = sub_100005744(0, &unk_100984370);
    v8[0] = a3;
    v6 = a3;
    v7 = self;
    sub_1002BB3F4(v3);
    v3(v8);
    sub_10001F63C(v3);
    sub_10002B894(v8, &unk_1009711D0);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1003F2A54(width, height);
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
  v6 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel];
  v7 = *&v5[OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines];

  v8 = v7(v5);

  [v6 setNumberOfLines:{v8, v9.receiver, v9.super_class}];
  [v5 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003F2EDC();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003F62B8();
}

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = self;
    v5 = String._bridgeToObjectiveC()();
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
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String.count.getter();

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