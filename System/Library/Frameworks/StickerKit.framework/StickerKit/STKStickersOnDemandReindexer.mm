@interface STKStickersOnDemandReindexer
+ (void)reindexStickersIfNecessaryWithCompletionHandler:(id)a3;
- (STKStickersOnDemandReindexer)init;
@end

@implementation STKStickersOnDemandReindexer

+ (void)reindexStickersIfNecessaryWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_19A7C3110;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19A7BE620;
  v12[5] = v11;
  sub_19A78E8A0(0, 0, v7, &unk_19A7B6B20, v12);
}

- (STKStickersOnDemandReindexer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersOnDemandReindexer();
  return [(STKStickersOnDemandReindexer *)&v3 init];
}

@end