@interface SampleTimer
- (NSString)debugDescription;
- (_TtC24SensitiveContentAnalysis11SampleTimer)init;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SampleTimer

- (NSString)debugDescription
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1AEAF8458(&v6);
  os_unfair_lock_unlock(v2 + 4);

  v4 = sub_1AEAF958C();

  return v4;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *&self->id[OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats + 8];
  v6[1] = *(&self->super.isa + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_stats);
  v7 = v4;
  v5 = self;
  sub_1AEAF43A0();
  v6[0].receiver = v5;
  v6[0].super_class = ObjectType;
  [(objc_super *)v6 dealloc];
}

- (_TtC24SensitiveContentAnalysis11SampleTimer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SampleTimer.encode(with:)(v4);
}

@end