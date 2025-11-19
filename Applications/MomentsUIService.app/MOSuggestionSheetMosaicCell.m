@interface MOSuggestionSheetMosaicCell
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation MOSuggestionSheetMosaicCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  return [(MOSuggestionSheetMosaicCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v4 = v8.receiver;
  [(MOSuggestionSheetMosaicCell *)&v8 setSelected:v3];
  v5 = *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isSelected];
    (*((swift_isaMask & *v6) + 0xA0))(v7);
  }

  MOSuggestionSheetMosaicCell.updateUnselectedBlur()();
}

- (void)layoutSubviews
{
  v2 = self;
  MOSuggestionSheetMosaicCell.layoutSubviews()();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v2 = v4.receiver;
  v3 = [(MOSuggestionSheetMosaicCell *)&v4 prepareForReuse];
  (*((swift_isaMask & *v2) + 0x170))(v3);
}

@end