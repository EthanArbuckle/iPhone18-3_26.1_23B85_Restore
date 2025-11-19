@interface MOSuggestionSheetListPlayButton
- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithCoder:(id)a3;
- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionSheetListPlayButton

- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  v9 = type metadata accessor for MOSuggestionSheetListPlayButton();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MOSuggestionSheetOversizedBoundsButton *)&v12 initWithFrame:x, y, width, height];
  MOSuggestionSheetListPlayButton.sharedInit()();

  return v10;
}

- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  *v4 = 0;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionSheetListPlayButton();
  v5 = a3;
  v6 = [(MOSuggestionSheetOversizedBoundsButton *)&v10 initWithCoder:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    MOSuggestionSheetListPlayButton.sharedInit()();
  }

  return v7;
}

@end