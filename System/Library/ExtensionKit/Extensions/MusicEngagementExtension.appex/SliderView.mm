@interface SliderView
- (int64_t)semanticContentAttribute;
- (void)layoutSubviews;
- (void)panGestureRecognized:(id)recognized;
- (void)setSemanticContentAttribute:(int64_t)attribute;
@end

@implementation SliderView

- (int64_t)semanticContentAttribute
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SliderView();
  return [(SliderView *)&v3 semanticContentAttribute];
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SliderView();
  v4 = v5.receiver;
  [(SliderView *)&v5 setSemanticContentAttribute:attribute];
  [*&v4[OBJC_IVAR____TtC11MusicCoreUI10SliderView_stackView] setSemanticContentAttribute:{objc_msgSend(v4, "semanticContentAttribute", v5.receiver, v5.super_class)}];
}

- (void)layoutSubviews
{
  selfCopy = self;
  SliderView.layoutSubviews()();
}

- (void)panGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  SliderView.panGestureRecognized(_:)(recognizedCopy);
}

@end