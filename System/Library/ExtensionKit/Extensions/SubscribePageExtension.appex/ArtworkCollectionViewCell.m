@interface ArtworkCollectionViewCell
- (_TtC22SubscribePageExtension25ArtworkCollectionViewCell)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension25ArtworkCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ArtworkCollectionViewCell

- (_TtC22SubscribePageExtension25ArtworkCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_itemLayoutContext;
  v9 = sub_1007469A4();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_artworkView) = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13.receiver = self;
  v13.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v10 = [(ArtworkCollectionViewCell *)&v13 initWithFrame:x, y, width, height];
  v11 = [(ArtworkCollectionViewCell *)v10 contentView];
  [v11 addSubview:*(&v10->super.super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_artworkView)];

  return v10;
}

- (_TtC22SubscribePageExtension25ArtworkCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension25ArtworkCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
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
  sub_100743384(v5, v3);
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ArtworkCollectionViewCell();
  v2 = v4.receiver;
  [(ArtworkCollectionViewCell *)&v4 layoutSubviews];
  v3 = [v2 contentView];
  [v3 frame];

  sub_100743324();
}

@end