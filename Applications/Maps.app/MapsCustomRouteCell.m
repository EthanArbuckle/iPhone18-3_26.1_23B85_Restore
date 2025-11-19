@interface MapsCustomRouteCell
+ (NSString)reuseIdentifier;
- (MapsCustomRouteCellDelegate)delegate;
- (_TtC4Maps19MapsCustomRouteCell)init;
- (_TtC4Maps19MapsCustomRouteCell)initWithCoder:(id)a3;
- (_TtC4Maps19MapsCustomRouteCell)initWithFrame:(CGRect)a3;
- (void)setDelegate:(id)a3;
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

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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

- (_TtC4Maps19MapsCustomRouteCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for MapsCustomRouteCell();
  return [(MapsCustomRouteCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC4Maps19MapsCustomRouteCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end