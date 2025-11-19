@interface EmojiGlyphDataSource
- (NSArray)categories;
- (id)accessibilityTextForItem:(id)a3;
- (id)indexPathForCategory:(id)a3;
- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4;
- (id)indexPathForItemAtIndex:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4;
- (id)snapshotIdentifiersInSection:(int64_t)a3;
- (int64_t)categoryIndexForIndexPath:(id)a3;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInCategory:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)configureWith:(id)a3;
- (void)deleteItem:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)imageAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)imageForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)moveItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4 completionHandler:(id)a5;
- (void)moveItemFromIndexPath:(NSIndexPath *)a3 toIndexPath:(NSIndexPath *)a4 completionHandler:(id)a5;
- (void)refresh;
- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
@end

@implementation EmojiGlyphDataSource

- (NSArray)categories
{

  sub_19A60B5C0();

  type metadata accessor for ImageGlyphCategory(0);
  v2 = sub_19A7AB234();

  return v2;
}

- (void)configureWith:(id)a3
{
  glyphType = self->glyphType;
  v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v7 = a3;

  v8 = ImageGlyphUIConfiguration.init(_:glyphType:)(a3, glyphType);
  v9 = *self->$__lazy_storage_$_uiConfig;
  *self->$__lazy_storage_$_uiConfig = v8;
}

- (void)refresh
{
  v2 = *self->lock;

  os_unfair_lock_lock(v2 + 4);
  sub_19A5F5774(v3);
  os_unfair_lock_unlock(v2 + 4);
}

- (int64_t)numberOfSections
{
  v2 = *self->lock;

  os_unfair_lock_lock(v2 + 4);
  sub_19A60FBA4(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;

  return v3;
}

- (int64_t)numberOfItems
{
  v2 = *self->lock;

  os_unfair_lock_lock(v2 + 4);
  sub_19A60FBA4(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;

  return v3;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{

  v4 = sub_19A60BD50(a3);

  return v4;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{

  return 1;
}

- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4
{

  v4 = sub_19A60B4E4();
  v5 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();

  return v5;
}

- (id)itemAtIndexPath:(id)a3
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();

  v7 = sub_19A60BF54();

  (*(v4 + 8))(v6, v3);

  return v7;
}

- (id)accessibilityTextForItem:(id)a3
{
  v3 = a3;

  sub_19A60F9E8(v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)snapshotIdentifiersInSection:(int64_t)a3
{

  sub_19A60C794(a3);

  v4 = sub_19A7AB234();

  return v4;
}

- (id)indexPathForItemAtIndex:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6];
  v8 = *self->lock;
  v20 = a3;
  v21 = self;
  v17 = sub_19A60F9CC;
  v18 = &v19;

  os_unfair_lock_lock(v8 + 4);
  sub_19A60FBD4(v9);
  os_unfair_lock_unlock(v8 + 4);

  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_19A7A9014();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

- (int64_t)numberOfItemsInCategory:(id)a3
{
  v3 = *self->lock;
  v4 = a3;

  os_unfair_lock_lock(v3 + 4);
  sub_19A60FBBC(&v7);
  os_unfair_lock_unlock(v3 + 4);
  v5 = 0;
  if ((v8 & 1) == 0)
  {
    v5 = sub_19A60BD50(v7);
  }

  return v5;
}

- (int64_t)categoryIndexForIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A7A9024();
  v8 = *self->lock;
  v13 = sub_19A60FBEC;
  v14 = self;

  os_unfair_lock_lock(v8 + 4);
  sub_19A60FBA4(&v15);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v15;
  if (sub_19A7A9064() >= v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = sub_19A7A9064();
  }

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (id)indexPathForCategory:(id)a3
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *self->lock;
  v18 = self;
  v19 = a3;
  v15 = sub_19A60F994;
  v16 = &v17;
  v10 = a3;

  os_unfair_lock_lock(v9 + 4);
  sub_19A60F9B0(&v20);
  os_unfair_lock_unlock(v9 + 4);
  if (v21)
  {

    v11 = 0;
  }

  else
  {
    MEMORY[0x19A903470](0, v20);

    v12 = sub_19A7A9014();
    (*(v6 + 8))(v8, v5);
    v11 = v12;
  }

  return v11;
}

- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_19A7AB014();

  sub_19A60D56C(v8, a4, v7);

  v9 = sub_19A7A9094();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_19A7A9014();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
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
  v13[4] = &unk_19A7B6BD0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B6BD8;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6BE0, v14);
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
  v15[4] = &unk_19A7B6BB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B6BB8;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B6BC0, v16);
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
  v15[4] = &unk_19A7B6B90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B6B98;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B6BA0, v16);
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
  v13[4] = &unk_19A7B6B70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B6B78;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B80, v14);
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
  v13[4] = &unk_19A7B6B50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B6B58;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B60, v14);
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
  v13[4] = &unk_19A7B6B30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B6B38;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B40, v14);
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
  v13[4] = &unk_19A7B6B10;
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