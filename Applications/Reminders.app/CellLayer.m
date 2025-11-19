@interface CellLayer
- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)init;
- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)initWithCoder:(id)a3;
- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)initWithLayer:(id)a3;
@end

@implementation CellLayer

- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CellLayer *)&v3 init];
}

- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000C36C(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(CellLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  sub_100004758(v9);
  return v6;
}

- (_TtC9RemindersP33_E28D896C953424B0133C5B43DB432AE59CellLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(CellLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end