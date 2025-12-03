@interface EditingSectionedCollection
- (_TtC16MusicApplication26EditingSectionedCollection)init;
- (_TtC16MusicApplication26EditingSectionedCollection)initWithCoder:(id)coder;
- (id)allItems;
- (id)firstItem;
- (id)firstSection;
- (id)identifiersForSectionAtIndex:(int64_t)index;
- (id)itemsInSectionAtIndex:(int64_t)index;
- (id)lastItem;
- (id)lastSection;
- (id)sectionAtIndex:(int64_t)index;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)enumerateSectionsUsingBlock:(id)block;
@end

@implementation EditingSectionedCollection

- (_TtC16MusicApplication26EditingSectionedCollection)initWithCoder:(id)coder
{
  *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords] = _swiftEmptyArrayStorage;
  *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries] = _swiftEmptyArrayStorage;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (id)sectionAtIndex:(int64_t)index
{
  v5 = OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection;
  v6 = *&self->MPSectionedCollection_opaque[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection];
  selfCopy = self;
  if ([v6 numberOfSections] <= index)
  {
    v8 = sub_AB9260();
  }

  else
  {
    v8 = [*&self->MPSectionedCollection_opaque[v5] sectionAtIndex:index];
  }

  v9 = v8;

  return v9;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v3 = *(self + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_entries);
  if (*(v3 + 16) <= section)
  {
    return 0;
  }

  if ((section & 0x8000000000000000) == 0)
  {
    return *(*(v3 + 8 * section + 32) + 16);
  }

  __break(1u);
  return self;
}

- (void)enumerateSectionsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_408B1C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block
{
  v6 = _Block_copy(block);
  _Block_copy(v6);
  selfCopy = self;
  sub_408C14(index, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)enumerateItemsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;

  [(EditingSectionedCollection *)selfCopy enumerateSectionsUsingBlock:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v4);

  if (v7)
  {
    __break(1u);
  }
}

- (id)itemsInSectionAtIndex:(int64_t)index
{
  selfCopy = self;
  sub_406734(index);

  v5.super.isa = sub_AB9740().super.isa;

  return v5.super.isa;
}

- (id)firstSection
{
  selfCopy = self;
  if ([(EditingSectionedCollection *)selfCopy numberOfSections]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(EditingSectionedCollection *)selfCopy sectionAtIndex:0];
  }

  return v3;
}

- (id)lastSection
{
  selfCopy = self;
  numberOfSections = [(EditingSectionedCollection *)selfCopy numberOfSections];
  if (numberOfSections < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(EditingSectionedCollection *)selfCopy sectionAtIndex:numberOfSections - 1];
  }

  return v4;
}

- (id)firstItem
{
  selfCopy = self;
  v3 = sub_406AB0();

  return v3;
}

- (id)lastItem
{
  selfCopy = self;
  v3 = sub_406C34();

  return v3;
}

- (id)allItems
{
  selfCopy = self;
  sub_406D80();

  v3.super.isa = sub_AB9740().super.isa;

  return v3.super.isa;
}

- (id)identifiersForSectionAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = sub_407568(index);

  return v5;
}

- (_TtC16MusicApplication26EditingSectionedCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end