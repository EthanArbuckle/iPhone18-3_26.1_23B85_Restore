@interface MOSuggestionSheetOversizedBoundsButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithCoder:(id)coder;
- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithFrame:(CGRect)frame;
@end

@implementation MOSuggestionSheetOversizedBoundsButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(MOSuggestionSheetOversizedBoundsButton *)selfCopy bounds];
  v8 = v7;
  [(MOSuggestionSheetOversizedBoundsButton *)selfCopy bounds];
  v10 = v9;
  [(MOSuggestionSheetOversizedBoundsButton *)selfCopy bounds];
  v15 = CGRectInset(v14, v8 * -1.5, v10 * -1.5);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v15, v13);

  return v11;
}

- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  return [(MOSuggestionSheetOversizedBoundsButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  coderCopy = coder;
  v5 = [(MOSuggestionSheetOversizedBoundsButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end