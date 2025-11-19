@interface ContextualContentUnavailableView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension32ContextualContentUnavailableView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension32ContextualContentUnavailableView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ContextualContentUnavailableView

- (_TtC20ProductPageExtension32ContextualContentUnavailableView)initWithCoder:(id)a3
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContext;
  if (qword_10093F770 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v10 = sub_10000A61C(v5, qword_10099CFD0);
  sub_10033ECF0(v10, v7);
  v11 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *(&self->super.super.super.isa + v8) = sub_1000F1E60(v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_navigationBarMargins) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_queryContextTopPadding) = 0x4030000000000000;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ContextualContentUnavailableView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason];
  [v2 bounds];
  [v3 setFrame:?];
  sub_10033EA4C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension32ContextualContentUnavailableView_emptyReason) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC20ProductPageExtension32ContextualContentUnavailableView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end