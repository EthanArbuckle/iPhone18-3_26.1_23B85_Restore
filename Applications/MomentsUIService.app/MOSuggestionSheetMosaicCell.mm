@interface MOSuggestionSheetMosaicCell
- (BOOL)isSelected;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
@end

@implementation MOSuggestionSheetMosaicCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  return [(MOSuggestionSheetMosaicCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v4 = v8.receiver;
  [(MOSuggestionSheetMosaicCell *)&v8 setSelected:selectedCopy];
  v5 = *&v4[OBJC_IVAR____TtC16MomentsUIService27MOSuggestionSheetMosaicCell_checkPlatterView];
  if (v5)
  {
    v6 = v5;
    isSelected = [v4 isSelected];
    (*((swift_isaMask & *v6) + 0xA0))(isSelected);
  }

  MOSuggestionSheetMosaicCell.updateUnselectedBlur()();
}

- (void)layoutSubviews
{
  selfCopy = self;
  MOSuggestionSheetMosaicCell.layoutSubviews()();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MOSuggestionSheetMosaicCell();
  v2 = v4.receiver;
  prepareForReuse = [(MOSuggestionSheetMosaicCell *)&v4 prepareForReuse];
  (*((swift_isaMask & *v2) + 0x170))(prepareForReuse);
}

@end