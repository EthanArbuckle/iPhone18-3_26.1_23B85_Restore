@interface UnifiedRecentImageGlyphDataSource
- (BOOL)isReady;
- (NSArray)categories;
- (id)accessibilityTextForItem:(id)a3;
- (id)indexPathForCategory:(id)a3;
- (id)indexPathForItemAtIndex:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4;
- (id)snapshotIdentifiersInSection:(int64_t)a3;
- (int64_t)categoryIndexForIndexPath:(id)a3;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInCategory:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (void)configureWith:(id)a3;
- (void)deleteItem:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)imageAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)imageForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
- (void)moveItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4 completionHandler:(id)a5;
- (void)moveItemFromIndexPath:(NSIndexPath *)a3 toIndexPath:(NSIndexPath *)a4 completionHandler:(id)a5;
- (void)refresh;
- (void)setIsReady:(BOOL)a3;
- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
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

- (void)setIsReady:(BOOL)a3
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

- (id)indexPathForItemAtIndex:(int64_t)a3
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

      if (v11 > a3)
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

  if (a3 < 32)
  {
LABEL_6:
    MEMORY[0x19A903470](a3, 0);

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

- (void)configureWith:(id)a3
{
  glyphType = self->glyphType;
  v6 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v7 = a3;

  v9 = ImageGlyphUIConfiguration.init(_:glyphType:)(a3, glyphType);
  v8 = *(*self->_uiConfig + 16);

  os_unfair_lock_lock(v8 + 4);
  sub_19A64BA2C();
  os_unfair_lock_unlock(v8 + 4);
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{

  v3 = sub_19A64B174();

  return v3;
}

- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4
{
  swift_unknownObjectRetain();

  v4 = sub_19A64B1E0();
  swift_unknownObjectRelease();

  return v4;
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
  v15[4] = &unk_19A7B9500;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B9508;
  v16[5] = v15;

  sub_19A78E8A0(0, 0, v11, &unk_19A7B9510, v16);
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
  v15[4] = &unk_19A7B94E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B94E8;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;

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

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if (a3)
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

- (id)itemAtIndexPath:(id)a3
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

- (id)accessibilityTextForItem:(id)a3
{
  v3 = a3;

  sub_19A64B7B8(v3);
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

  sub_19A648E54(a3);

  v4 = sub_19A7AB234();

  return v4;
}

- (int64_t)numberOfItemsInCategory:(id)a3
{
  v3 = a3;

  v4 = sub_19A64928C(v3);

  return v4;
}

- (int64_t)categoryIndexForIndexPath:(id)a3
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

- (id)indexPathForCategory:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = a3;

  sub_19A64954C(v7, v6);

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
  v13[4] = &unk_19A7B94C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B94C8;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B94D0, v14);
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
  v13[4] = &unk_19A7B94A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B94A8;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B94B0, v14);
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
  v13[4] = &unk_19A7B9480;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9488;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B9490, v14);
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
  v13[4] = &unk_19A7B9460;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9468;
  v14[5] = v13;
  v15 = a3;

  sub_19A78E8A0(0, 0, v9, &unk_19A7B9470, v14);
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
  v13[4] = &unk_19A7B9450;
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