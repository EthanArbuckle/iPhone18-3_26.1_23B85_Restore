@interface FMAccessoryDiscoveryFoundMultipleCard
- (_TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard)initWithContentView:(id)a3;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation FMAccessoryDiscoveryFoundMultipleCard

- (_TtC6FindMy37FMAccessoryDiscoveryFoundMultipleCard)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006C2670);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_10033DF04(v9, v12);

  v15 = *(v7 + 8);
  v15(v9, v6);
  v16 = (*(v7 + 48))(v12, 1, v6);
  v17 = 0;
  if (v16 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15(v12, v6);
    v17 = isa;
  }

  return v17;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10033E460();

  (*(v7 + 8))(v9, v6);
}

@end