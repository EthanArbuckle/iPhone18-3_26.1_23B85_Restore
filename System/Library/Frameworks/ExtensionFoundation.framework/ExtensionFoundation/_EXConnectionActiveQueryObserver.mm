@interface _EXConnectionActiveQueryObserver
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver)init;
@end

@implementation _EXConnectionActiveQueryObserver

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

  v6 = _EXConnectionActiveQueryObserver.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  active = _EXConnectionActiveQueryObserver.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1865F36D0](active, v5);

  return v6;
}

- (_TtC19ExtensionFoundation32_EXConnectionActiveQueryObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end