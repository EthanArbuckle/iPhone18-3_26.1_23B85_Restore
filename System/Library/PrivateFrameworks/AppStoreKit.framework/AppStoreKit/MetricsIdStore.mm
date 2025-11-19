@interface MetricsIdStore
- (void)storeAccountDidChange;
@end

@implementation MetricsIdStore

- (void)storeAccountDidChange
{
  if (qword_1EE1E1900 != -1)
  {
    swift_once();
  }

  v2 = sub_1E15A1060(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6BF8);
  swift_allocObject();
  off_1EE1E1908 = sub_1E14C5D90(v2);
}

@end