@interface MapsCustomRouteCell
+ (NSString)reuseIdentifier;
- (MapsCustomRouteCellDelegate)delegate;
- (_TtC4Maps19MapsCustomRouteCell)init;
- (_TtC4Maps19MapsCustomRouteCell)initWithCoder:(id)coder;
- (_TtC4Maps19MapsCustomRouteCell)initWithFrame:(CGRect)frame;
- (void)setDelegate:(id)delegate;
@end

@implementation MapsCustomRouteCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (MapsCustomRouteCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001EF110();

  swift_unknownObjectRelease();
}

- (_TtC4Maps19MapsCustomRouteCell)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MapsCustomRouteCell();
  return [(MapsCustomRouteCell *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC4Maps19MapsCustomRouteCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for MapsCustomRouteCell();
  return [(MapsCustomRouteCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC4Maps19MapsCustomRouteCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end