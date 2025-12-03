@interface SHAsyncLibrary.SHAsyncLibraryDelegate
- (_TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate)init;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
@end

@implementation SHAsyncLibrary.SHAsyncLibraryDelegate

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  swift_unknownObjectRetain();
  snapshotCopy = snapshot;
  selfCopy = self;
  sub_230FA0B2C(snapshotCopy);
  swift_unknownObjectRelease();
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  v7 = sub_230FDB7FC();
  swift_unknownObjectRetain();
  errorCopy = error;
  selfCopy = self;
  sub_230FA1684(errorCopy, v7);
  swift_unknownObjectRelease();
}

- (_TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_updatesContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88488, &qword_230FE3008);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB88490, &qword_230FE2440);
  v7 = swift_allocObject();
  *(v7 + 4) = 0;
  *(&self->super.isa + v6) = v7;
  *(&self->super.isa + OBJC_IVAR____TtCC9ShazamKit14SHAsyncLibrary22SHAsyncLibraryDelegate_inflightItems) = MEMORY[0x277D84FA0];
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(SHAsyncLibrary.SHAsyncLibraryDelegate *)&v9 init];
}

@end