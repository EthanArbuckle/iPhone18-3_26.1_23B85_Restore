@interface TableSearchResult
- (BOOL)isEqual:(id)a3;
- (NSString)title;
- (_TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult)init;
- (int64_t)hash;
@end

@implementation TableSearchResult

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for TableID();
  sub_10040B6EC(&qword_1006C7CC0, &type metadata accessor for TableID);
  v3 = self;
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100401448(v8);

  sub_1000073B4(v8, &qword_1006BE7A0);
  return v6 & 1;
}

- (_TtC11MobileNotesP33_3A26B74EEED685164DF9267FE58E345F17TableSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end