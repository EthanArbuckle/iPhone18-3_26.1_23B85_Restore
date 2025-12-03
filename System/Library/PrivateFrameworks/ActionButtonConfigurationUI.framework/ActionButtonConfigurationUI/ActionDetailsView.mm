@interface ActionDetailsView
- (_TtC27ActionButtonConfigurationUI17ActionDetailsView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)pageControlValueChanged;
@end

@implementation ActionDetailsView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23DE04320();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_23DE04D44(x, y);

  return v9;
}

- (void)pageControlValueChanged
{
  selfCopy = self;
  sub_23DE047B0();
}

- (_TtC27ActionButtonConfigurationUI17ActionDetailsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end