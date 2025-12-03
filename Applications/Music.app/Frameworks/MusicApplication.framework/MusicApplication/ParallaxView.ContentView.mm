@interface ParallaxView.ContentView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation ParallaxView.ContentView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParallaxView.ContentView();
  backgroundColor = [(ParallaxView.ContentView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_4F3F00(color);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_4F2768();
}

@end