@interface STKImageGlyphAggregatingDataSource
- (BOOL)isEnabled;
- (BOOL)isReady;
- (BOOL)isRestrictedImageGlyph:(id)a3;
- (NSArray)categories;
- (STKImageGlyphAggregatingDataSource)init;
- (STKImageGlyphAggregatingDataSource)initWithDataSources:(id)a3;
- (id)accessibilityTextForItem:(id)a3;
- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4;
- (id)indexPathForItemAtIndex:(int64_t)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4;
- (id)snapshotIdentifiersInSection:(int64_t)a3;
- (int64_t)categoryIndexForIndexPath:(id)a3;
- (int64_t)glyphType;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsInCategory:(id)a3;
- (int64_t)numberOfItemsInCategoryIndex:(int64_t)a3;
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
- (void)setGlyphType:(int64_t)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4;
- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4;
@end

@implementation STKImageGlyphAggregatingDataSource

- (BOOL)isEnabled
{
  v3 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isReady
{
  v2 = self;
  v3 = sub_19A652488();

  return v3;
}

- (int64_t)glyphType
{
  v3 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setGlyphType:(int64_t)a3
{
  v5 = OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (STKImageGlyphAggregatingDataSource)initWithDataSources:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF160);
  v4 = sub_19A7AB254();
  *(&self->super.isa + OBJC_IVAR___STKImageGlyphAggregatingDataSource_isEnabled) = 1;
  *(&self->super.isa + OBJC_IVAR___STKImageGlyphAggregatingDataSource_glyphType) = 0;
  *(&self->super.isa + OBJC_IVAR___STKImageGlyphAggregatingDataSource_dataSources) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ImageGlyphAggregatingDataSource();
  return [(STKImageGlyphAggregatingDataSource *)&v6 init];
}

- (void)configureWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A652B98(v4);
}

- (void)refresh
{
  v2 = self;
  sub_19A652D38();
}

- (NSArray)categories
{
  v2 = self;
  v3 = sub_19A652898();
  sub_19A652F7C(v3);

  type metadata accessor for ImageGlyphCategory(0);
  v4 = sub_19A7AB234();

  return v4;
}

- (int64_t)numberOfSections
{
  v2 = self;
  v3 = sub_19A6532EC();

  return v3;
}

- (int64_t)numberOfItems
{
  v2 = self;
  v3 = sub_19A65332C();

  return v3;
}

- (id)sectionLayoutForSectionIndex:(int64_t)a3 environment:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_19A6590E0(a3);
  if (v8)
  {
    v10 = [v8 sectionLayoutForSectionIndex:v9 environment:a4];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v12 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, 3);
    v10 = _s10StickerKit25ImageGlyphUIConfigurationC6layout3forSo25NSCollectionLayoutSectionCSo0hI11Environment_p_tF_0();
  }

  swift_unknownObjectRelease();

  return v10;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v4 = self;
  v5 = sub_19A653658(a3);

  return v5;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v4 = self;
  v5 = sub_19A6536A0(a3);

  return v5;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v8 = self;
  v9 = sub_19A65382C();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)snapshotIdentifiersInSection:(int64_t)a3
{
  v4 = self;
  v5 = sub_19A6590E0(a3);
  if (v5)
  {
    v7 = [v5 snapshotIdentifiersInSection_];
    sub_19A7AB254();
    swift_unknownObjectRelease();
  }

  v8 = sub_19A7AB234();

  return v8;
}

- (void)stickerAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_19A7B98D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B98D8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B98E0, v14);
}

- (id)accessibilityTextForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A6542F4(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_19A7AAFE4();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)imageAtIndexPath:(NSIndexPath *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_19A7B98B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B98B8;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B98C0, v14);
}

- (void)deleteItem:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_19A7B9890;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9898;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B98A0, v14);
}

- (void)moveItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
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
  v15[4] = &unk_19A7B9870;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B9878;
  v16[5] = v15;
  v17 = self;
  sub_19A78E8A0(0, 0, v11, &unk_19A7B9880, v16);
}

- (void)moveItemFromIndexPath:(NSIndexPath *)a3 toIndexPath:(NSIndexPath *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
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
  v15[4] = &unk_19A7B9850;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19A7B9858;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_19A78E8A0(0, 0, v11, &unk_19A7B9860, v16);
}

- (void)stickerForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_19A7B9830;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7B9838;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B9840, v14);
}

- (void)imageForImageGlyph:(STKImageGlyph *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
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
  v13[4] = &unk_19A7B9820;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19A7BE620;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_19A78E8A0(0, 0, v9, &unk_19A7B6B20, v14);
}

- (id)indexPathForItemAtIndex:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_19A657D48(a3, v7);

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

- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  sub_19A7AB014();
  v9 = self;
  sub_19A658194(a4, v8);

  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_19A7A9014();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (int64_t)numberOfItemsInCategory:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x1D8);
  v5 = a3;
  v6 = self;
  v7 = v4(v5);
  if (v7)
  {
    v8 = [v7 numberOfItemsInCategory_];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)numberOfItemsInCategoryIndex:(int64_t)a3
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xD8);
  v6 = self;
  v7 = v5();
  if (v7 >> 62)
  {
    v8 = sub_19A7ABBE4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 <= a3)
  {
    v13 = 0;
    goto LABEL_10;
  }

  result = (v5)(v9);
  if ((result & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x19A906130](a3, result);
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v11 = *(result + 8 * a3 + 32);
LABEL_8:
    v12 = v11;

    v13 = (*((*v4 & v6->super.isa) + 0x180))(v12);

LABEL_10:
    return v13;
  }

  __break(1u);
  return result;
}

- (int64_t)categoryIndexForIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v8 = self;
  v9 = sub_19A658B20(v7);

  (*(v5 + 8))(v7, v4);
  return v9;
}

- (BOOL)isRestrictedImageGlyph:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_19A7669B0();
  v7 = sub_19A659378(v6);
  if (v7)
  {
    v8 = [v7 isRestrictedImageGlyph_];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (STKImageGlyphAggregatingDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end