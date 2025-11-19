@interface AvatarGlyphDataSource
- (BOOL)isEnabled;
- (NSArray)categories;
- (_TtC10StickerKit21AvatarGlyphDataSource)initWithDataSources:(id)a3;
- (id)accessibilityTextForItem:(id)a3;
- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4;
- (int64_t)numberOfItemsInCategory:(id)a3;
- (void)configureWith:(id)a3;
@end

@implementation AvatarGlyphDataSource

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_19A730D70();

  return v3;
}

- (NSArray)categories
{
  v2 = self;
  sub_19A731068();

  type metadata accessor for ImageGlyphCategory(0);
  v3 = sub_19A7AB234();

  return v3;
}

- (void)configureWith:(id)a3
{
  v5 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v6 = a3;
  v9 = self;
  v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(a3, 2);
  v8 = *(&v9->super.super.isa + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig);
  *(&v9->super.super.isa + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) = v7;

  sub_19A652B98(v6);
}

- (int64_t)numberOfItemsInCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_19A731D24(v4);

  return v6;
}

- (id)indexPathForIdentifier:(id)a3 ofType:(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  sub_19A7AB014();
  v10 = v9;
  v11 = self;
  sub_19A731FDC(v10, a4, v8);

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

- (id)accessibilityTextForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A732950(v4);
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

- (_TtC10StickerKit21AvatarGlyphDataSource)initWithDataSources:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF160);
  v3 = sub_19A7AB254();
  return sub_19A733188(v3);
}

@end