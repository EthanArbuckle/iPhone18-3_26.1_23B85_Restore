@interface MOSuggestionRoundView
- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithCoder:(id)coder;
- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithFrame:(CGRect)frame;
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

- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MOSuggestionRoundView();
  return [(MOSuggestionRoundView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MomentsUIService21MOSuggestionRoundView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MOSuggestionRoundView();
  coderCopy = coder;
  v5 = [(MOSuggestionRoundView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end