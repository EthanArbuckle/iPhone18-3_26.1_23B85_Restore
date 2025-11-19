@interface LinkableFooterView
- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LinkableFooterView

- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_100753094();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1004D042C(v3, v4);
}

- (_TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView)initWithCoder:(id)a3
{
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v9 = sub_10000D0FC(v4, qword_100981A70);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_10004DA8C(v7, 0, 0);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1004D08B4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004D0B4C(a3);
}

@end