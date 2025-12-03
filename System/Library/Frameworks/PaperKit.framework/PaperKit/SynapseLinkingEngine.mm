@interface SynapseLinkingEngine
- (_TtC8PaperKit20SynapseLinkingEngine)init;
- (void)linkableItemFinderItemsMightHaveChanged:(id)changed;
@end

@implementation SynapseLinkingEngine

- (_TtC8PaperKit20SynapseLinkingEngine)init
{
  ObjectType = swift_getObjectType();
  *&self->engine[OBJC_IVAR____TtC8PaperKit20SynapseLinkingEngine_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4 = [objc_allocWithZone(MEMORY[0x1E69D5438]) init];
  *(&self->super.isa + OBJC_IVAR____TtC8PaperKit20SynapseLinkingEngine_engine) = v4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(SynapseLinkingEngine *)&v7 init];
  [*(&v5->super.isa + OBJC_IVAR____TtC8PaperKit20SynapseLinkingEngine_engine) setDelegate_];
  return v5;
}

- (void)linkableItemFinderItemsMightHaveChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  specialized SynapseLinkingEngine.linkableItemFinderItemsMightHaveChanged(_:)();
}

@end