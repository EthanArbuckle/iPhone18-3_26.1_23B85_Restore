@interface UnifiedRecentImageGlyphDataSource
- (BOOL)isReady;
- (NSArray)categories;
- (id)accessibilityTextForItem:(id)item;
- (id)indexPathForCategory:(id)category;
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
- (void)imageAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler;
- (void)imageForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler;
- (void)moveItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex completionHandler:(id)handler;
- (void)moveItemFromIndexPath:(NSIndexPath *)path toIndexPath:(NSIndexPath *)indexPath completionHandler:(id)handler;
- (void)refresh;
- (void)setIsReady:(BOOL)ready;
- (void)stickerAtIndexPath:(NSIndexPath *)path completionHandler:(id)handler;
- (void)stickerForImageGlyph:(STKImageGlyph *)glyph completionHandler:(id)handler;
@end

@implementation UnifiedRecentImageGlyphDataSource

- (NSArray)categories
{

  sub_19A645D2C();

  type metadata accessor for ImageGlyphCategory(0);
  v2 = sub_19A7AB234();

  return v2;
}

- (BOOL)isReady
{

  v2 = sub_19A645F10();

  return v2 & 1;
}

- (void)setIsReady:(BOOL)ready
{

  sub_19A645FBC();
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

  sub_19A6816F0(0, 0, v5, &unk_19A7B9520, v7);
}

- (id)indexPathForItemAtIndex:(int64_t)index
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_19A646038();
  if (v8 >> 62)
  {
    v14 = sub_19A7ABBE4();

    if (v14)
    {
LABEL_3:
      v10 = sub_19A646038();
      if (v10 >> 62)
      {
        v11 = sub_19A7ABBE4();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11 > index)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (index < 32)
  {
LABEL_6:
    MEMORY[0x19A903470](index, 0);

    v12 = sub_19A7A9014();
    (*(v5 + 8))(v7, v4);
    v13 = v12;
    goto LABEL_10;
  }

LABEL_9:

  v13 = 0;
LABEL_10:

  return v13;
}

- (void)configureWith:(id)with
{
  glyphType = self->glyphType;
  v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  withCopy = with;

  v9 = ImageGlyphUIConfiguration.init(_:glyphType:)(with, glyphType);
  v8 = *(*self->_uiConfig + 16);

  os_unfair_lock_lock(v8 + 4);
  sub_19A64BA2C();
  os_unfair_lock_unlock(v8 + 4);
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{

  v3 = sub_19A64B174();

  return v3;
}

- (id)sectionLayoutForSectionIndex:(int64_t)index environment:(id)environment
{
  swift_unknownObjectRetain();

  v4 = sub_19A64B1E0();
  swift_unknownObjectRelease();

  return v4;
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
  v15[4] = &unk_19A7B9500;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B9508;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B9510, v16);
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
  v15[4] = &unk_19A7B94E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B94E8;
  v16[5] = v15;
  pathCopy = path;
  indexPathCopy = indexPath;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B94F0, v16);
}

- (int64_t)numberOfItems
{

  v2 = sub_19A646038();
  if (v2 >> 62)
  {
    v6 = sub_19A7ABBE4();

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 32;
    goto LABEL_8;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_19A646038();
  if (v4 >> 62)
  {
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_8:

  return v5;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  v4 = sub_19A646038();
  if (v4 >> 62)
  {
    v8 = sub_19A7ABBE4();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5)
    {
LABEL_5:
      v6 = sub_19A646038();
      if (v6 >> 62)
      {
        v7 = sub_19A7ABBE4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_10;
    }
  }

  v7 = 32;
LABEL_10:

  return v7;
}

- (id)itemAtIndexPath:(id)path
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();

  v7 = sub_19A648B0C(v6);

  (*(v4 + 8))(v6, v3);

  return v7;
}

- (id)accessibilityTextForItem:(id)item
{
  itemCopy = item;

  sub_19A64B7B8(itemCopy);
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

  sub_19A648E54(section);

  v4 = sub_19A7AB234();

  return v4;
}

- (int64_t)numberOfItemsInCategory:(id)category
{
  categoryCopy = category;

  v4 = sub_19A64928C(categoryCopy);

  return v4;
}

- (int64_t)categoryIndexForIndexPath:(id)path
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  if (sub_19A7A9064() <= 0)
  {
    v7 = sub_19A7A9064();
  }

  else
  {
    v7 = -1;
  }

  (*(v4 + 8))(v6, v3);
  return v7;
}

- (id)indexPathForCategory:(id)category
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  categoryCopy = category;

  sub_19A64954C(categoryCopy, v6);

  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_19A7A9014();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
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
  v13[4] = &unk_19A7B94C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B94C8;
  v14[5] = v13;
  itemCopy = item;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B94D0, v14);
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
  v13[4] = &unk_19A7B94A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B94A8;
  v14[5] = v13;
  pathCopy = path;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B94B0, v14);
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
  v13[4] = &unk_19A7B9480;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9488;
  v14[5] = v13;
  pathCopy = path;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B9490, v14);
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
  v13[4] = &unk_19A7B9460;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9468;
  v14[5] = v13;
  glyphCopy = glyph;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B9470, v14);
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
  v13[4] = &unk_19A7B9450;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE620;
  v14[5] = v13;
  glyphCopy = glyph;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B20, v14);
}

@end