@interface FedStatsPluginMLHostClient
- (BOOL)fetchAssets:(id)assets error:(id *)error;
- (_TtC26FedStatsMLHostPluginClassB26FedStatsPluginMLHostClient)init;
- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error;
- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error;
- (id)recipeIdentifiers;
- (id)treatmentIdentifierForRecipe:(id)recipe;
- (void)removeAssets;
@end

@implementation FedStatsPluginMLHostClient

- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error
{
  v5 = sub_1000137E0();
  v7 = v6;
  selfCopy = self;
  FedStatsPluginMLHostClient.recipeDictionary(forRecipe:)(v5, v7);

  v9.super.isa = sub_100013780().super.isa;

  return v9.super.isa;
}

- (id)treatmentIdentifierForRecipe:(id)recipe
{
  sub_1000137E0();
  v3 = sub_1000137D0();

  return v3;
}

- (id)recipeIdentifiers
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC26FedStatsMLHostPluginClassB26FedStatsPluginMLHostClient_experimentCfgs);

  sub_10000D740(v3);
  v4.super.isa = sub_100013880().super.isa;

  return v4.super.isa;
}

- (BOOL)fetchAssets:(id)assets error:(id *)error
{
  sub_1000054F8(&unk_10001C670, &unk_100014320);
  v6 = sub_100013790();
  selfCopy = self;
  FedStatsPluginMLHostClient.fetchAssets(_:)(v6);

  if (v8)
  {
    if (error)
    {
      v9 = sub_100013550();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  return v8 == 0;
}

- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error
{
  v6 = sub_1000135D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000137E0();
  v13 = v12;
  v14 = sub_1000137E0();
  v16 = v15;
  selfCopy = self;
  FedStatsPluginMLHostClient.assetURL(forRecipe:forKey:)(v11, v13, v14, v16, v10);

  sub_1000135A0(v18);
  v20 = v19;
  (*(v7 + 8))(v10, v6);

  return v20;
}

- (void)removeAssets
{
  selfCopy = self;
  FedStatsPluginMLHostClient.removeAssets()();
}

- (_TtC26FedStatsMLHostPluginClassB26FedStatsPluginMLHostClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end