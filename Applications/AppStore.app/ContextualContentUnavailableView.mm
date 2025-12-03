@interface ContextualContentUnavailableView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore32ContextualContentUnavailableView)initWithCoder:(id)coder;
- (_TtC8AppStore32ContextualContentUnavailableView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ContextualContentUnavailableView

- (_TtC8AppStore32ContextualContentUnavailableView)initWithCoder:(id)coder
{
  v4 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext;
  if (qword_10096E860 != -1)
  {
    v9 = v5;
    swift_once();
    v5 = v9;
  }

  v10 = sub_1000056A8(v5, qword_1009D28C0);
  sub_1001C0900(v10, v7);
  v11 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *(&self->super.super.super.isa + v8) = sub_10051F6F0(v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_navigationBarMargins) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContextTopPadding) = 0x4030000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ContextualContentUnavailableView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason];
  [v2 bounds];
  [v3 setFrame:?];
  sub_100690AC0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason) sizeThatFits:{fits.width, fits.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC8AppStore32ContextualContentUnavailableView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end