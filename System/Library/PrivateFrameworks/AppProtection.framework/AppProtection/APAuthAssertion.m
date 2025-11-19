@interface APAuthAssertion
+ (void)acquireForSubject:(id)a3 completion:(id)a4;
- (APAuthAssertion)init;
- (APAuthAssertion)initWithSubject:(id)a3 uuid:(id)a4;
- (NSString)description;
- (void)addObserver:(id)a3;
- (void)invalidate;
@end

@implementation APAuthAssertion

- (APAuthAssertion)initWithSubject:(id)a3 uuid:(id)a4
{
  v7 = OBJC_IVAR___APAuthAssertion_invalidated;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD1E8, &unk_185B6D2D0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(&self->super.isa + v7) = v8;
  *(&self->super.isa + OBJC_IVAR___APAuthAssertion_observers) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR___APAuthAssertion_subject) = a3;
  *(&self->super.isa + OBJC_IVAR___APAuthAssertion_uuid) = a4;
  v12.receiver = self;
  v12.super_class = APAuthAssertion;
  v9 = a3;
  v10 = a4;
  return [(APAuthAssertion *)&v12 init];
}

+ (void)acquireForSubject:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  sub_185B2BA4C(v7, sub_185B06F6C, v6);
}

- (NSString)description
{
  v2 = self;
  APAuthAssertion.description.getter();

  v3 = sub_185B67E1C();

  return v3;
}

- (void)invalidate
{
  v2 = self;
  sub_185B2B504();
}

- (void)addObserver:(id)a3
{
  v4 = OBJC_IVAR___APAuthAssertion_observers;
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  v5 = self;
  MEMORY[0x1865FCFA0]();
  if (*((*(&self->super.isa + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(&self->super.isa + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(&self->super.isa + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_185B67F8C();
  }

  sub_185B67FAC();
  swift_endAccess();

  swift_unknownObjectRelease();
}

- (APAuthAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end