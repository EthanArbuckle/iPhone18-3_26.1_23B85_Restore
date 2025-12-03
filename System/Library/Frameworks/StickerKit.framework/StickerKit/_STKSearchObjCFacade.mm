@interface _STKSearchObjCFacade
- (BOOL)enableEmojiSearch;
- (BOOL)enableStickerSearch;
- (void)search:(STKStickerSearchQuery *)search completionHandler:(id)handler;
- (void)setEnableEmojiSearch:(BOOL)search;
- (void)setEnableStickerSearch:(BOOL)search;
@end

@implementation _STKSearchObjCFacade

- (BOOL)enableEmojiSearch
{
  v3 = OBJC_IVAR____STKSearchObjCFacade_enableEmojiSearch;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableEmojiSearch:(BOOL)search
{
  v5 = OBJC_IVAR____STKSearchObjCFacade_enableEmojiSearch;
  swift_beginAccess();
  *(&self->super.isa + v5) = search;
}

- (BOOL)enableStickerSearch
{
  v3 = OBJC_IVAR____STKSearchObjCFacade_enableStickerSearch;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEnableStickerSearch:(BOOL)search
{
  v5 = OBJC_IVAR____STKSearchObjCFacade_enableStickerSearch;
  swift_beginAccess();
  *(&self->super.isa + v5) = search;
}

- (void)search:(STKStickerSearchQuery *)search completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = search;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7B6FA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE620;
  v14[5] = v13;
  searchCopy = search;
  selfCopy = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B20, v14);
}

@end