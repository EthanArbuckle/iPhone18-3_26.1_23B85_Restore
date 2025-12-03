@interface NoClippingCellLayer
- (_TtC9RemindersP33_02588857A361830D4C82E6221760820319NoClippingCellLayer)init;
- (_TtC9RemindersP33_02588857A361830D4C82E6221760820319NoClippingCellLayer)initWithLayer:(id)layer;
@end

@implementation NoClippingCellLayer

- (_TtC9RemindersP33_02588857A361830D4C82E6221760820319NoClippingCellLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NoClippingCellLayer *)&v3 init];
}

- (_TtC9RemindersP33_02588857A361830D4C82E6221760820319NoClippingCellLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000C36C(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(NoClippingCellLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  sub_100004758(v9);
  return v6;
}

@end