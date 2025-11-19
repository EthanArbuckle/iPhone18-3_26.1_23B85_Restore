@interface MOSuggestionSheetOversizedBoundsButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithCoder:(id)a3;
- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithFrame:(CGRect)a3;
@end

@implementation MOSuggestionSheetOversizedBoundsButton

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(MOSuggestionSheetOversizedBoundsButton *)v6 bounds];
  v8 = v7;
  [(MOSuggestionSheetOversizedBoundsButton *)v6 bounds];
  v10 = v9;
  [(MOSuggestionSheetOversizedBoundsButton *)v6 bounds];
  v15 = CGRectInset(v14, v8 * -1.5, v10 * -1.5);
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v15, v13);

  return v11;
}

- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  return [(MOSuggestionSheetOversizedBoundsButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService38MOSuggestionSheetOversizedBoundsButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionSheetOversizedBoundsButton();
  v4 = a3;
  v5 = [(MOSuggestionSheetOversizedBoundsButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end