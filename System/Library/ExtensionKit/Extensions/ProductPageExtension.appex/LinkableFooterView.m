@interface LinkableFooterView
- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LinkableFooterView

- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_10076FF9C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100411DEC(v3, v4);
}

- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView)initWithCoder:(id)a3
{
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036118LinkableFooterView_linkedLabel;
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v4, qword_1009A1D80);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_10050BDFC(v7, 0, 0);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100412274();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10041250C(a3);
}

@end