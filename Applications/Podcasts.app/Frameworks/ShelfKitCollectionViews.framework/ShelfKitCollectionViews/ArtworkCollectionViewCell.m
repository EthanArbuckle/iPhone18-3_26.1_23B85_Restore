@interface ArtworkCollectionViewCell
- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ArtworkCollectionViewCell

- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = self;
  v11.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v8 = [(ArtworkCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  v9 = [(ArtworkCollectionViewCell *)v8 contentView];
  [v9 addSubview:*(&v8->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView)];

  return v8;
}

- (_TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell)initWithCoder:(id)a3
{
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_29574();
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v2 = v9.receiver;
  [(ArtworkCollectionViewCell *)&v9 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews25ArtworkCollectionViewCell_artworkView];
  v4 = [v2 contentView];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  [v3 setFrame:{0.0, 0.0, v6, v8}];
}

@end