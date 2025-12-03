@interface StickerGlyphDataSource
- (BOOL)isEnabled;
- (BOOL)isRestrictedImageGlyph:(id)glyph;
- (id)accessibilityTextForItem:(id)item;
- (id)indexPathForIdentifier:(id)identifier ofType:(int64_t)type;
- (id)indexPathForItemAtIndex:(int64_t)index;
- (id)itemAtIndexPath:(id)path;
- (id)sectionLayoutForSectionIndex:(int64_t)index environment:(id)environment;
- (id)snapshotIdentifiersInSection:(int64_t)section;
- (int64_t)categoryIndexForIndexPath:(id)path;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInCategory:(id)category;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (void)configureWith:(id)with;
- (void)deleteItem:(STKImageGlyph *)item completionHandler:(id)handler;
- (void)fetchStickersWithCompletion:(id)completion;
- (void)imageAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler;
- (void)imageForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler;
- (void)moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex completionHandler:(id)handler;
- (void)moveItemFromIndexPath:(NSIndexPath *)path toIndexPath:(NSIndexPath *)indexPath completionHandler:(id)handler;
- (void)refresh;
- (void)stickerAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler;
- (void)stickerForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler;
@end

@implementation StickerGlyphDataSource

- (BOOL)isEnabled
{

  v3 = sub_19A6F1B1C();
  v4 = *&v3[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration];
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  LODWORD(v4) = *(v4 + v5);

  if (v4 == 1)
  {
    v6 = self->_deviceIsLocked[0];

    v7 = v6 ^ 1;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

- (void)configureWith:(id)with
{
  v5 = (*(self->super.isa + 39))(self, a2);
  v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  withCopy = with;

  v8 = ImageGlyphUIConfiguration.init(_:glyphType:)(with, v5);
  v9 = *&self->$__lazy_storage_$_uiConfig[5];
  *&self->$__lazy_storage_$_uiConfig[5] = v8;
}

- (void)refresh
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_19A7AB394();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_19A6816F0(0, 0, v5, &unk_19A7BE830, v7);
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  v3 = *&self->_lastCount[5];

  if (v3 < 0)
  {
    sub_19A6F40F4();
    v3 = *&self->_lastCount[5];
  }

  return v3;
}

- (int64_t)numberOfItems
{
  v3 = *&self->_lastCount[5];

  if (v3 < 0)
  {
    sub_19A6F40F4();
    v3 = *&self->_lastCount[5];
  }

  return v3;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{

  return 1;
}

- (id)sectionLayoutForSectionIndex:(int64_t)index environment:(id)environment
{

  v4 = sub_19A6F1B1C();
  v5 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();

  return v5;
}

- (id)itemAtIndexPath:(id)path
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();

  v7 = sub_19A6F2020(v6);

  (*(v4 + 8))(v6, v3);

  return v7;
}

- (id)accessibilityTextForItem:(id)item
{
  itemCopy = item;

  sub_19A6F240C(itemCopy);
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

- (id)snapshotIdentifiersInSection:(int64_t)section
{

  sub_19A6F34A0(section);

  v4 = sub_19A7AB234();

  return v4;
}

- (id)indexPathForItemAtIndex:(int64_t)index
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;

  sub_19A6F3A24(index, v6);

  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_19A7A9014();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (id)indexPathForIdentifier:(id)identifier ofType:(int64_t)type
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_19A7AB014();
  v10 = v9;

  sub_19A6F3C14(v8, v10, type, v7);

  v11 = sub_19A7A9094();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_19A7A9014();
    (*(v12 + 8))(v7, v11);
    v14 = v15;
  }

  return v14;
}

- (int64_t)categoryIndexForIndexPath:(id)path
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v7 = sub_19A7A9064();
  (*(v4 + 8))(v6, v3);
  if (v7 <= 0)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (int64_t)numberOfItemsInCategory:(id)category
{
  v4 = *&self->_lastCount[5];

  if (v4 < 0)
  {
    sub_19A6F40F4();
    v4 = *&self->_lastCount[5];
  }

  return v4;
}

- (void)fetchStickersWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_19A7BE818;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_19A7BE820;
  v12[5] = v11;

  sub_19A78E8A0(0, 0, v7, &unk_19A7BE828, v12);
}

- (void)imageAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = path;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BE7F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE800;
  v14[5] = v13;
  pathCopy = path;

  sub_19A78E8A0(0, 0, v9, &unk_19A7BE808, v14);
}

- (void)stickerAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = path;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BE7D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE7E0;
  v14[5] = v13;
  pathCopy = path;

  sub_19A78E8A0(0, 0, v9, &unk_19A7BE7E8, v14);
}

- (void)deleteItem:(STKImageGlyph *)item completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BE7B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE7C0;
  v14[5] = v13;
  itemCopy = item;

  sub_19A78E8A0(0, 0, v9, &unk_19A7BE7C8, v14);
}

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
  v15[4] = &unk_19A7BE798;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7BE7A0;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7BE7A8, v16);
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
  v15[4] = &unk_19A7BE778;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7BE780;
  v16[5] = v15;
  pathCopy = path;
  indexPathCopy = indexPath;

  sub_19A78E8A0(0, 0, v11, &unk_19A7BE788, v16);
}

- (void)imageForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = glyph;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BE758;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE760;
  v14[5] = v13;
  glyphCopy = glyph;

  sub_19A78E8A0(0, 0, v9, &unk_19A7BE768, v14);
}

- (void)stickerForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = glyph;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19A7BE738;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE740;
  v14[5] = v13;
  glyphCopy = glyph;

  sub_19A78E8A0(0, 0, v9, &unk_19A7BE748, v14);
}

- (BOOL)isRestrictedImageGlyph:(id)glyph
{
  glyphCopy = glyph;

  v4 = sub_19A6F9B9C(glyphCopy);

  return v4 & 1;
}

@end