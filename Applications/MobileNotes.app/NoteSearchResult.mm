@interface NoteSearchResult
- (BOOL)isEqual:(id)equal;
- (NSString)title;
- (_TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult)init;
- (int64_t)hash;
@end

@implementation NoteSearchResult

- (NSString)title
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_100254210();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1002545E0(v8);

  sub_1000073B4(v8, &qword_1006BE7A0);
  return v6 & 1;
}

- (_TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end