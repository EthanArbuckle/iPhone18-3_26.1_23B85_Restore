@interface MOSuggestionSheetListPlayButton
- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithCoder:(id)coder;
- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetListPlayButton

- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  v9 = type metadata accessor for MOSuggestionSheetListPlayButton();
  *v8 = 0;
  v8[1] = 0;
  v12.receiver = self;
  v12.super_class = v9;
  height = [(MOSuggestionSheetOversizedBoundsButton *)&v12 initWithFrame:x, y, width, height];
  MOSuggestionSheetListPlayButton.sharedInit()();

  return height;
}

- (_TtC16MomentsUIService31MOSuggestionSheetListPlayButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MomentsUIService31MOSuggestionSheetListPlayButton_mediaAssetID);
  *v4 = 0;
  v4[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOSuggestionSheetListPlayButton();
  coderCopy = coder;
  v6 = [(MOSuggestionSheetOversizedBoundsButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    MOSuggestionSheetListPlayButton.sharedInit()();
  }

  return v7;
}

@end