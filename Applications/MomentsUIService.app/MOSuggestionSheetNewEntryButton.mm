@interface MOSuggestionSheetNewEntryButton
- (_TtC16MomentsUIService31MOSuggestionSheetNewEntryButton)initWithCoder:(id)coder;
- (_TtC16MomentsUIService31MOSuggestionSheetNewEntryButton)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetNewEntryButton

- (_TtC16MomentsUIService31MOSuggestionSheetNewEntryButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MOSuggestionSheetNewEntryButton();
  height = [(MOSuggestionSheetNewEntryButton *)&v9 initWithFrame:x, y, width, height];
  MOSuggestionSheetNewEntryButton.sharedInit()();

  return height;
}

- (_TtC16MomentsUIService31MOSuggestionSheetNewEntryButton)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for MOSuggestionSheetNewEntryButton();
  coderCopy = coder;
  v5 = [(MOSuggestionSheetNewEntryButton *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    MOSuggestionSheetNewEntryButton.sharedInit()();
  }

  return v6;
}

@end