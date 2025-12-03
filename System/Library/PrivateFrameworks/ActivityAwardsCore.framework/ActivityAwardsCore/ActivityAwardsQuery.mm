@interface ActivityAwardsQuery
- (_TtC18ActivityAwardsCore19ActivityAwardsQuery)init;
- (void)dealloc;
@end

@implementation ActivityAwardsQuery

- (void)dealloc
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC18ActivityAwardsCore19ActivityAwardsQuery_lock);
  selfCopy = self;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CE5B0, qword_227782AF0);
  sub_227781E08();

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for ActivityAwardsQuery();
  [(ActivityAwardsQuery *)&v4 dealloc];
}

- (_TtC18ActivityAwardsCore19ActivityAwardsQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end