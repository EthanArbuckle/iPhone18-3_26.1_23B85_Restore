@interface UserInterfaceStyleObserverView
- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithCoder:(id)coder;
- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UserInterfaceStyleObserverView

- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  height = [(UserInterfaceStyleObserverView *)&v9 initWithFrame:x, y, width, height];
  [(UserInterfaceStyleObserverView *)height setAutoresizingMask:0];
  [(UserInterfaceStyleObserverView *)height setUserInteractionEnabled:0];

  return height;
}

- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_1001CC2AC([(UserInterfaceStyleObserverView *)selfCopy traitCollection]);
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  sub_1001CC2AC([(UserInterfaceStyleObserverView *)selfCopy traitCollection]);
}

@end