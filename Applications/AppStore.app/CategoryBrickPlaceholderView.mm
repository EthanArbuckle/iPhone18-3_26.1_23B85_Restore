@interface CategoryBrickPlaceholderView
- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithCoder:(id)a3;
- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CategoryBrickPlaceholderView

- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder;
  type metadata accessor for ArtworkView();
  v10 = static ArtworkView.brickArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(&self->super.super.super.isa + v9) = v10;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(CategoryBrickPlaceholderView *)&v13 initWithFrame:x, y, width, height];
  [(CategoryBrickPlaceholderView *)v11 addSubview:*(&v11->super.super.super.isa + OBJC_IVAR____TtC8AppStore28CategoryBrickPlaceholderView_artworkPlaceholder)];
  return v11;
}

- (_TtC8AppStore28CategoryBrickPlaceholderView)initWithCoder:(id)a3
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
  v2 = self;
  sub_100499B5C();
}

@end