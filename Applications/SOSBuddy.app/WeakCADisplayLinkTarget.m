@interface WeakCADisplayLinkTarget
- (_TtC8SOSBuddy23WeakCADisplayLinkTarget)init;
- (void)updateFrom:(id)a3;
@end

@implementation WeakCADisplayLinkTarget

- (void)updateFrom:(id)a3
{
  v5 = self + OBJC_IVAR____TtC8SOSBuddy23WeakCADisplayLinkTarget__target;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = a3;
    v10 = self;
    v8(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC8SOSBuddy23WeakCADisplayLinkTarget)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end