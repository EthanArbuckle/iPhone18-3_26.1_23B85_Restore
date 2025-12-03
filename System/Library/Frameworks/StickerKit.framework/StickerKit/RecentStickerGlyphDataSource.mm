@interface RecentStickerGlyphDataSource
- (void)moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex completionHandler:(id)handler;
- (void)moveItemFromIndexPath:(NSIndexPath *)path toIndexPath:(NSIndexPath *)indexPath completionHandler:(id)handler;
@end

@implementation RecentStickerGlyphDataSource

- (void)moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = index;
  v13[3] = toIndex;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19A7BE638;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7BE640;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7BE648, v16);
}

- (void)moveItemFromIndexPath:(NSIndexPath *)path toIndexPath:(NSIndexPath *)indexPath completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = path;
  v13[3] = indexPath;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19A7BE618;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7BE620;
  v16[5] = v15;
  pathCopy = path;
  indexPathCopy = indexPath;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B6B20, v16);
}

@end