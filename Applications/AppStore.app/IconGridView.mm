@interface IconGridView
- (_TtC8AppStore12IconGridView)initWithCoder:(id)coder;
- (_TtC8AppStore12IconGridView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation IconGridView

- (_TtC8AppStore12IconGridView)initWithCoder:(id)coder
{
  v4 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews) = _swiftEmptyArrayStorage;
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_10017D010();
  ReusePool.init(recycler:limit:)();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006E72E4();
}

- (_TtC8AppStore12IconGridView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end