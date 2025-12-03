@interface ArtworkCollectionViewCell
- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ArtworkCollectionViewCell

- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = self;
  v11.super_class = type metadata accessor for ArtworkCollectionViewCell();
  height = [(ArtworkCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  contentView = [(ArtworkCollectionViewCell *)height contentView];
  [contentView addSubview:*(&height->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView)];

  return height;
}

- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithCoder:(id)coder
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_29574();
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v2 = v9.receiver;
  [(ArtworkCollectionViewCell *)&v9 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView];
  contentView = [v2 contentView];
  [contentView frame];
  v6 = v5;
  v8 = v7;

  [v3 setFrame:{0.0, 0.0, v6, v8}];
}

@end