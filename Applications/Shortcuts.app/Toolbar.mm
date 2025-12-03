@interface Toolbar
- (UIColor)backgroundColor;
- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list;
- (void)setBackgroundColor:(id)color;
@end

@implementation Toolbar

- (UIColor)backgroundColor
{
  selfCopy = self;
  v3 = sub_10004838C();

  return v3;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100048434(color);
}

- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (list)
  {
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  viewCopy = view;
  return sub_100048610(view, v10, x, y, width, height);
}

@end