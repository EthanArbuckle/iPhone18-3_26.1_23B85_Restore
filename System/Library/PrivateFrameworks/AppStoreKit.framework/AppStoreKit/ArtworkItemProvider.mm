@interface ArtworkItemProvider
- (_TtC11AppStoreKit19ArtworkItemProvider)init;
- (_TtC11AppStoreKit19ArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4;
- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation ArtworkItemProvider

- (id)loadDataRepresentationForTypeIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1E1AF5DFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  v11 = ArtworkItemProvider.loadDataRepresentation(forTypeIdentifier:completionHandler:)(v6, v8, sub_1E1A26A88, v9);

  return v11;
}

- (_TtC11AppStoreKit19ArtworkItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11AppStoreKit19ArtworkItemProvider)initWithItem:(id)a3 typeIdentifier:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end