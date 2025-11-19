@interface SliderView
- (int64_t)semanticContentAttribute;
- (void)layoutSubviews;
- (void)panGestureRecognized:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
@end

@implementation SliderView

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SliderView();
  return [(SliderView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SliderView();
  v4 = v5.receiver;
  [(SliderView *)&v5 setSemanticContentAttribute:a3];
  [*&v4[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v4, "semanticContentAttribute", v5.receiver, v5.super_class)}];
}

- (void)layoutSubviews
{
  v2 = self;
  SliderView.layoutSubviews()();
}

- (void)panGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003A6228(v4);
}

@end