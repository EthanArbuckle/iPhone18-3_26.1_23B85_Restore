@interface CategoryBrickPlaceholderView
- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithCoder:(id)coder;
- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v10 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return height;
}

- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v5 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(&self->super.super.super.isa + v4) = v5;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100499B5C();
}

@end