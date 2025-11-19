@interface STKImageGlyphDataSource
+ (STKImageGlyphDataSource)sharedInstance;
- (BOOL)didAcceptRestrictedDistributionTerms;
- (BOOL)isEmojiSection:(int64_t)a3;
- (BOOL)isMemojiSection:(int64_t)a3;
- (BOOL)isReady;
- (BOOL)isRecentSection:(int64_t)a3;
- (NSDiffableDataSourceSnapshot)snapshot;
- (STKImageGlyphDataSource)init;
- (STKImageGlyphDataSource)initWithDataSources:(id)a3;
- (id)imageGlyphCompositionalLayout;
- (id)indexPathForCategoryIndex:(int64_t)a3;
- (int64_t)emojiCategoryIndex;
- (int64_t)emojiPrefixSectionCount;
- (int64_t)memojiCategoryIndex;
- (int64_t)recentCategoryIndex;
- (int64_t)stickersCategoryIndex;
- (uint64_t)allowsRearrangeForSection:(uint64_t)a3;
- (void)configureWith:(id)a3;
- (void)donateImageGlyphToRecents:(id)a3;
- (void)makeSnapshot;
- (void)refresh;
- (void)setSnapshot:(id)a3;
@end

@implementation STKImageGlyphDataSource

- (uint64_t)allowsRearrangeForSection:(uint64_t)a3
{
  v4 = a1;
  LOBYTE(a3) = sub_19A75BF80(a3);

  return a3 & 1;
}

+ (STKImageGlyphDataSource)sharedInstance
{
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B2AA0;

  return v3;
}

- (BOOL)isReady
{
  if (*(&self->super.super.isa + OBJC_IVAR___STKImageGlyphDataSource_isConfiguring))
  {
    return 0;
  }

  else
  {
    v3 = self;
    v2 = sub_19A652488();
  }

  return v2;
}

- (NSDiffableDataSourceSnapshot)snapshot
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-v5];
  v7 = *(&self->super.super.isa + OBJC_IVAR___STKImageGlyphDataSource_lock);
  v15 = self;
  v12 = sub_19A6814C0;
  v13 = &v14;
  v8 = self;
  os_unfair_lock_lock(v7 + 4);
  sub_19A763108();
  os_unfair_lock_unlock(v7 + 4);

  v9 = sub_19A7A94C4();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (void)setSnapshot:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_19A5F5028(0, &qword_1ED8B1FE0);
  sub_19A762B98();
  sub_19A7A94D4();
  v7 = self;
  sub_19A759EF0(v6);
}

- (STKImageGlyphDataSource)init
{
  v2 = objc_allocWithZone(type metadata accessor for ImageGlyphDataSource());
  v3 = sub_19A75A584(0, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)configureWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19A75AFA0(v4);
}

- (void)refresh
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = objc_opt_self();
  v7 = self;
  if (([v6 useNewCollectionView] & 1) == 0)
  {
    v8 = sub_19A7AB394();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_19A755944(0, 0, v5, &unk_19A7C1DA8, v9);

    sub_19A5F2B54(v5, &unk_1EAFCD690);
  }

  sub_19A652D38();
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  sub_19A77AAA0();
}

- (int64_t)memojiCategoryIndex
{
  v2 = self;
  v3 = sub_19A65883C(2);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)stickersCategoryIndex
{
  v2 = self;
  v3 = sub_19A65883C(1);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)recentCategoryIndex
{
  v2 = self;
  v3 = sub_19A65883C(5);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

- (int64_t)emojiCategoryIndex
{
  v2 = self;
  v3 = sub_19A65883C(3);
  v5 = v4;

  if (v5)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (int64_t)emojiPrefixSectionCount
{
  v2 = self;
  v3 = sub_19A659378(3);
  v5 = v4;

  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return v5;
}

- (BOOL)isEmojiSection:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_19A75BAE8(a3);

  return a3 & 1;
}

- (BOOL)isRecentSection:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_19A75BC70(a3);

  return a3 & 1;
}

- (BOOL)isMemojiSection:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_19A75BDF8(a3);

  return a3 & 1;
}

- (id)indexPathForCategoryIndex:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = self;
  sub_19A75C0D0(a3, v7);

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

- (BOOL)didAcceptRestrictedDistributionTerms
{
  if ([objc_opt_self() isInternalBuild])
  {
    v2 = sub_19A6DBCD4();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (void)makeSnapshot
{
  v2 = self;
  sub_19A75C7C0();
}

- (void)donateImageGlyphToRecents:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_19A7AB394();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a3;
  v9 = a3;
  sub_19A755944(0, 0, v6, &unk_19A7C1D98, v8);

  sub_19A5F2B54(v6, &unk_1EAFCD690);
}

- (id)imageGlyphCompositionalLayout
{
  v2 = self;
  v3 = sub_19A75FAC8();

  return v3;
}

- (STKImageGlyphDataSource)initWithDataSources:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end