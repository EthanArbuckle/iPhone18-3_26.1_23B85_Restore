@interface SiriUIHostingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView)initWithCoder:(id)a3;
- (_TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SiriUIHostingView

- (_TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*&self->SiriUICardSnippetView_opaque[OBJC_IVAR____TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView_rootView] sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(SiriUIHostingView *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView_rootView;
  v4 = *&v2[OBJC_IVAR____TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView_rootView];
  [v2 bounds];
  [v4 setFrame:?];
  [*&v2[v3] setNeedsLayout];
  [*&v2[v3] layoutIfNeeded];
}

- (_TtC4SiriP33_7351ACF3FB3EECEB6B17B4CD84C9F4C317SiriUIHostingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end