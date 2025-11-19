@interface ParallaxView.ContentView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation ParallaxView.ContentView

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ParallaxView.ContentView();
  v2 = [(ParallaxView.ContentView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_4F3F00(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_4F2768();
}

@end