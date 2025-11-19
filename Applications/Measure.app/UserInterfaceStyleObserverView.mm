@interface UserInterfaceStyleObserverView
- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithCoder:(id)a3;
- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UserInterfaceStyleObserverView

- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(UserInterfaceStyleObserverView *)&v9 initWithFrame:x, y, width, height];
  [(UserInterfaceStyleObserverView *)v7 setAutoresizingMask:0];
  [(UserInterfaceStyleObserverView *)v7 setUserInteractionEnabled:0];

  return v7;
}

- (_TtC7MeasureP33_EDD96BC629EA7EBD01211224C3FF48E430UserInterfaceStyleObserverView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = self;
  sub_1001CC2AC([(UserInterfaceStyleObserverView *)v3 traitCollection]);
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_1001CC2AC([(UserInterfaceStyleObserverView *)v2 traitCollection]);
}

@end