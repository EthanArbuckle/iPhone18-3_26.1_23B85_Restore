@interface AvatarGlyphDataSource
- (BOOL)isEnabled;
- (NSArray)categories;
- (_TtC10StickerKit21AvatarGlyphDataSource)initWithDataSources:(id)sources;
- (id)accessibilityTextForItem:(id)item;
- (id)indexPathForIdentifier:(id)identifier ofType:(int64_t)type;
- (int64_t)numberOfItemsInCategory:(id)category;
- (void)configureWith:(id)with;
@end

@implementation AvatarGlyphDataSource

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_19A730D70();

  return v3;
}

- (NSArray)categories
{
  selfCopy = self;
  sub_19A731068();

  type metadata accessor for ImageGlyphCategory(0);
  v3 = sub_19A7AB234();

  return v3;
}

- (void)configureWith:(id)with
{
  v5 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  withCopy = with;
  selfCopy = self;
  v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(with, 2);
  v8 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig);
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) = v7;

  sub_19A652B98(withCopy);
}

- (int64_t)numberOfItemsInCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  v6 = sub_19A731D24(categoryCopy);

  return v6;
}

- (id)indexPathForIdentifier:(id)identifier ofType:(int64_t)type
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  sub_19A7AB014();
  v10 = v9;
  selfCopy = self;
  sub_19A731FDC(v10, type, v8);

  v12 = sub_19A7A9094();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_19A7A9014();
    (*(v13 + 8))(v8, v12);
    v15 = v16;
  }

  return v15;
}

- (id)accessibilityTextForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_19A732950(itemCopy);
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

- (_TtC10StickerKit21AvatarGlyphDataSource)initWithDataSources:(id)sources
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF160);
  v3 = sub_19A7AB254();
  return sub_19A733188(v3);
}

@end