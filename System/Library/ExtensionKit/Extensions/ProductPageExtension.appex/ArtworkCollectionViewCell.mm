@interface ArtworkCollectionViewCell
- (_TtC20ProductPageExtension25ArtworkCollectionViewCell)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension25ArtworkCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ArtworkCollectionViewCell

- (_TtC20ProductPageExtension25ArtworkCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_itemLayoutContext;
  v9 = sub_10076341C();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13.receiver = self;
  v13.super_class = type metadata accessor for ArtworkCollectionViewCell();
  height = [(ArtworkCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  contentView = [(ArtworkCollectionViewCell *)height contentView];
  [contentView addSubview:*(&height->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_artworkView)];

  return height;
}

- (_TtC20ProductPageExtension25ArtworkCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension25ArtworkCollectionViewCell_itemLayoutContext;
  v5 = sub_10076341C();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v2 = v4.receiver;
  [(ArtworkCollectionViewCell *)&v4 prepareForReuse];
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, v3);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v2 = v4.receiver;
  [(ArtworkCollectionViewCell *)&v4 layoutSubviews];
  contentView = [v2 contentView];
  [contentView frame];

  sub_10075FC8C();
}

@end