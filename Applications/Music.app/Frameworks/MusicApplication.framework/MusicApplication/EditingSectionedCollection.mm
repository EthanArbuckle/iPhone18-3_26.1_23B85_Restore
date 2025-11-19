@interface EditingSectionedCollection
- (_TtC16MusicApplication26EditingSectionedCollection)init;
- (_TtC16MusicApplication26EditingSectionedCollection)initWithCoder:(id)a3;
- (id)allItems;
- (id)firstItem;
- (id)firstSection;
- (id)identifiersForSectionAtIndex:(int64_t)a3;
- (id)itemsInSectionAtIndex:(int64_t)a3;
- (id)lastItem;
- (id)lastSection;
- (id)sectionAtIndex:(int64_t)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)enumerateItemsInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)enumerateSectionsUsingBlock:(id)a3;
@end

@implementation EditingSectionedCollection

- (_TtC16MusicApplication26EditingSectionedCollection)initWithCoder:(id)a3
{
  *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords] = _swiftEmptyArrayStorage;
  *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries] = _swiftEmptyArrayStorage;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)sectionAtIndex:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
  v6 = *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection];
  v7 = self;
  if ([v6 numberOfSections] <= a3)
  {
    v8 = sub_AB9260();
  }

  else
  {
    v8 = [*&self->MPSectionedCollection_opaque[v5] sectionAtIndex:a3];
  }

  v9 = v8;

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (*(v3 + 16) <= a3)
  {
    return 0;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    return *(*(v3 + 8 * a3 + 32) + 16);
  }

  __break(1u);
  return self;
}

- (void)enumerateSectionsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_408B1C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)enumerateItemsInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_408C14(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v9[2] = v4;
  v5 = swift_allocObject();
  v5[2] = self;
  v5[3] = sub_408A48;
  v5[4] = v9;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_408AF4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_3E12F8;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7EB0;
  aBlock[3] = &block_descriptor_35_2;
  v7 = _Block_copy(aBlock);
  v8 = self;

  [(EditingSectionedCollection *)v8 enumerateSectionsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);

  if (v7)
  {
    __break(1u);
  }
}

- (id)itemsInSectionAtIndex:(int64_t)a3
{
  v4 = self;
  sub_406734(a3);

  v5.super.isa = sub_AB9740().super.isa;

  return v5.super.isa;
}

- (id)firstSection
{
  v2 = self;
  if ([(EditingSectionedCollection *)v2 numberOfSections]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(EditingSectionedCollection *)v2 sectionAtIndex:0];
  }

  return v3;
}

- (id)lastSection
{
  v2 = self;
  v3 = [(EditingSectionedCollection *)v2 numberOfSections];
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(EditingSectionedCollection *)v2 sectionAtIndex:v3 - 1];
  }

  return v4;
}

- (id)firstItem
{
  v2 = self;
  v3 = sub_406AB0();

  return v3;
}

- (id)lastItem
{
  v2 = self;
  v3 = sub_406C34();

  return v3;
}

- (id)allItems
{
  v2 = self;
  sub_406D80();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (id)identifiersForSectionAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_407568(a3);

  return v5;
}

- (_TtC16MusicApplication26EditingSectionedCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end