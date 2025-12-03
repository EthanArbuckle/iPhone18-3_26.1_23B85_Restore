@interface SearchFindMyHandle
- (_TtC4Maps18SearchFindMyHandle)init;
- (id)handleIdentifier;
- (id)title;
- (int64_t)hash;
@end

@implementation SearchFindMyHandle

- (id)title
{
  selfCopy = self;
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
  selfCopy = self;
  Handle.identifier.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
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