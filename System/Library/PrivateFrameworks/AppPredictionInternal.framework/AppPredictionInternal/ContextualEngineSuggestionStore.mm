@interface ContextualEngineSuggestionStore
- (_TtC21AppPredictionInternal31ContextualEngineSuggestionStore)init;
- (void)configurationDidChangeForFilter:(id)a3;
@end

@implementation ContextualEngineSuggestionStore

- (void)configurationDidChangeForFilter:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x88);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (_TtC21AppPredictionInternal31ContextualEngineSuggestionStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end