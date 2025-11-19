@interface MOSuggestionRoundView
- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithCoder:(id)a3;
- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MOSuggestionRoundView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MOSuggestionRoundView();
  v2 = v3.receiver;
  [(MOSuggestionRoundView *)&v3 layoutSubviews];
  [v2 setClipsToBounds:{1, v3.receiver, v3.super_class}];
  [v2 bounds];
  [v2 _setCornerRadius:CGRectGetHeight(v4) * 0.5];
}

- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionRoundView();
  return [(MOSuggestionRoundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionRoundView();
  v4 = a3;
  v5 = [(MOSuggestionRoundView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end