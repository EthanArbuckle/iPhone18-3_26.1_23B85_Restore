@interface MOSuggestionCarouselAssetCell
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation MOSuggestionCarouselAssetCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  return [(MOSuggestionCarouselAssetCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  v4 = v8.receiver;
  [(MOSuggestionCarouselAssetCell *)&v8 setSelected:v3];
  v5 = *&v4[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_checkPlatterView];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isSelected];
    (*((swift_isaMask & *v6) + 0xA0))(v7);
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  v2 = v4.receiver;
  [(MOSuggestionCarouselAssetCell *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView];
  [v2 bounds];
  [v3 setFrame:?];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionCarouselAssetCell();
  v2 = v7.receiver;
  [(MOSuggestionCarouselAssetCell *)&v7 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionCarouselAssetCell_assetView];
  v4 = *((swift_isaMask & *v3) + 0xC8);
  v5 = v3;
  v4(v5, v6);
}

@end