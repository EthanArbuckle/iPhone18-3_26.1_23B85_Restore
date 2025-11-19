@interface MemojiGlyphDataSource
- (NSArray)categories;
- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4;
- (int64_t)categoryIndexForIndexPath:(id)a3;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInCategory:(id)a3;
- (int64_t)numberOfSections;
- (void)configureWith:(id)a3;
- (void)deleteItem:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)imageAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)imageForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)moveItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4 completionHandler:(id)a5;
- (void)moveItemFromIndexPath:(NSIndexPath *)a3 toIndexPath:(NSIndexPath *)a4 completionHandler:(id)a5;
- (void)refresh;
- (void)setCategories:(id)a3;
- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
@end

@implementation MemojiGlyphDataSource

- (NSArray)categories
{
  type metadata accessor for ImageGlyphCategory(0);

  v2 = sub_19A7AB234();

  return v2;
}

- (void)setCategories:(id)a3
{
  type metadata accessor for ImageGlyphCategory(0);
  *(self + 4) = sub_19A7AB254();
}

- (void)configureWith:(id)a3
{
  v5 = *(self + 3);
  v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v7 = a3;

  v8 = ImageGlyphUIConfiguration.init(_:glyphType:)(a3, v5);
  v9 = *(self + 13);
  *(self + 13) = v8;
}

- (void)refresh
{

  *(self + 16) = MKBGetDeviceLockState() - 1 < 2;
  sub_19A73B460();
}

- (int64_t)numberOfSections
{
  v2 = *(self + 11);

  os_unfair_lock_lock(v2 + 4);
  sub_19A6FBE70(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;

  return v3;
}

- (int64_t)numberOfItems
{
  v2 = *(self + 11);

  os_unfair_lock_lock(v2 + 4);
  sub_19A6FBE70(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v6;
  v4 = sub_19A737F3C();

  result = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4
{
  v6 = sub_19A7A9094();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_19A7AB014();
  if (a4 != 2)
  {

    goto LABEL_5;
  }

  v11 = *(self + 11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  *&v20[-32] = self;
  *&v20[-24] = v12;
  *&v20[-16] = v13;
  MEMORY[0x1EEE9AC00](v12);
  *&v20[-16] = sub_19A740B14;
  *&v20[-8] = v14;

  os_unfair_lock_lock(v11 + 4);
  sub_19A740AA0(&v21);
  os_unfair_lock_unlock(v11 + 4);
  v15 = v21;
  v16 = v22;

  if (v16)
  {

LABEL_5:
    v17 = 0;
    goto LABEL_7;
  }

  MEMORY[0x19A903470](0, v15);

  v18 = sub_19A7A9014();
  (*(v7 + 8))(v9, v6);
  v17 = v18;
LABEL_7:

  return v17;
}

- (int64_t)numberOfItemsInCategory:(id)a3
{
  v3 = *(self + 11);

  os_unfair_lock_lock(v3 + 4);
  sub_19A6FBE70(&v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v7;
  v5 = sub_19A737F3C();

  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
  }

  return result;
}

- (void)deleteItem:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C04E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7C04F0;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7C04F8, v14);
}

- (void)moveItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19A7C04D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7BE7A0;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7BE7A8, v16);
}

- (void)moveItemFromIndexPath:(NSIndexPath *)a3 toIndexPath:(NSIndexPath *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19A7AB394();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19A7C04B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7C04C0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;

  sub_19A78E8A0(0, 0, v11, &unk_19A7C04C8, v16);
}

- (int64_t)categoryIndexForIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A7A9024();
  v8 = *(self + 11);
  v13 = sub_19A740B80;
  v14 = self;

  os_unfair_lock_lock(v8 + 4);
  sub_19A6FBE70(&v15);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v15;
  v10 = sub_19A7A9064();

  (*(v5 + 8))(v7, v4);
  if (v10 < v9)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)imageAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C0498;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7C04A0;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7C04A8, v14);
}

- (void)imageForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C0478;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7C0480;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7C0488, v14);
}

- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C0458;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7C0460;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7C0468, v14);
}

- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7C0448;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE620;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B20, v14);
}

@end