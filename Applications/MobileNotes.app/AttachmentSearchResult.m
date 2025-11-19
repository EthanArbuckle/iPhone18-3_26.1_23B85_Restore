@interface AttachmentSearchResult
- (BOOL)isEqual:(id)a3;
- (NSString)title;
- (_TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult)init;
- (int64_t)hash;
@end

@implementation AttachmentSearchResult

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for AttachmentID();
  sub_1002C3D18(&qword_1006C2F60, &type metadata accessor for AttachmentID);
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

  v6 = sub_1002B7368(v8);

  sub_1000073B4(v8, &qword_1006BE7A0);
  return v6 & 1;
}

- (_TtC11MobileNotesP33_F583289AB4A4398FFA2D9CF750E5A2EB22AttachmentSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end