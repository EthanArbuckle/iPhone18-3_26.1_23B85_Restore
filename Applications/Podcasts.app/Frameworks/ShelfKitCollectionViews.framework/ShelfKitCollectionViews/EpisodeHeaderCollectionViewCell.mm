@interface EpisodeHeaderCollectionViewCell
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)titleLabelTapped:(id)a3;
@end

@implementation EpisodeHeaderCollectionViewCell

- (void)titleLabelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_164100();
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_402FF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for EpisodeHeaderCollectionViewCell();
  v11.receiver = self;
  v11.super_class = v6;
  v7 = self;
  [(EpisodeHeaderCollectionViewCell *)&v11 prepareForReuse];
  *(&v7->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_artworkSubscription) = 0;

  v8 = sub_3031C8();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews31EpisodeHeaderCollectionViewCell_subscribedArtwork;
  swift_beginAccess();
  sub_A32A0(v5, v7 + v9, &unk_402FF0);
  swift_endAccess();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_162270();
}

@end