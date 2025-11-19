@interface CRLUIPropertyNotifier
- (_TtC8Freeform21CRLUIPropertyNotifier)init;
- (_TtC8Freeform21CRLUIPropertyNotifier)initWithParent:(id)a3;
@end

@implementation CRLUIPropertyNotifier

- (_TtC8Freeform21CRLUIPropertyNotifier)initWithParent:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount) = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  *(&self->super.isa + v5) = sub_100BD954C(_swiftEmptyArrayStorage, &qword_101A0F178);
  swift_unknownObjectWeakAssign();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CRLUIPropertyNotifier *)&v7 init];
}

- (_TtC8Freeform21CRLUIPropertyNotifier)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  *(&self->super.isa + v3) = sub_100BD954C(_swiftEmptyArrayStorage, &qword_101A0F178);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end