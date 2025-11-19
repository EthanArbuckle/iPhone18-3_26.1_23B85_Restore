@interface SearchFindMyHandle
- (_TtC4Maps18SearchFindMyHandle)init;
- (id)handleIdentifier;
- (id)title;
- (int64_t)hash;
@end

@implementation SearchFindMyHandle

- (id)title
{
  v2 = self;
  Handle.prettyName.getter();
  if (!v3)
  {
    Handle.identifier.getter();
  }

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (id)handleIdentifier
{
  v2 = self;
  Handle.identifier.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = Handle.hashValue.getter();

  return v3;
}

- (_TtC4Maps18SearchFindMyHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end