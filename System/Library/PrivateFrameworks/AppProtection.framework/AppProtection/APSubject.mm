@interface APSubject
+ (id)subjectMonitorRegistry;
- (APSubject)init;
- (APSubject)initWithArena:(id)arena;
- (BOOL)hidden;
- (BOOL)locked;
- (id)effectiveBundleIdentifier;
@end

@implementation APSubject

+ (id)subjectMonitorRegistry
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED6F5160;
  v3 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = *(v7 + 6);
  v9 = *(v4 + 8);
  swift_unknownObjectRetain();
  v9(v7, v2);

  return v8;
}

- (APSubject)initWithArena:(id)arena
{
  sub_185ADF8F0(arena + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena, self + OBJC_IVAR___APSubject_clientArenaStorage);
  v5.receiver = self;
  v5.super_class = APSubject;
  return [(APSubject *)&v5 init];
}

- (BOOL)hidden
{
  result = sub_185B6842C();
  __break(1u);
  return result;
}

- (BOOL)locked
{
  result = sub_185B6842C();
  __break(1u);
  return result;
}

- (APSubject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)effectiveBundleIdentifier
{
  result = sub_185B6842C();
  __break(1u);
  return result;
}

@end