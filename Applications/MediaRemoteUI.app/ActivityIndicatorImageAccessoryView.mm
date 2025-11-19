@interface ActivityIndicatorImageAccessoryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4;
- (_TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView)initWithCoder:(id)a3;
- (_TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ActivityIndicatorImageAccessoryView

- (_TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_isActivityRunning) = 0;
  v3 = OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UIActivityIndicatorView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ActivityIndicatorImageAccessoryView();
  v2 = v5.receiver;
  [(ActivityIndicatorImageAccessoryView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_activityIndicatorView];
  [v2 bounds];
  [v4 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView_imageView) sizeThatFits:{a3.width, a3.height}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3 forLayoutMode:(int64_t)a4
{
  [(ActivityIndicatorImageAccessoryView *)self sizeThatFits:a4, a3.width, a3.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC13MediaRemoteUI35ActivityIndicatorImageAccessoryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end