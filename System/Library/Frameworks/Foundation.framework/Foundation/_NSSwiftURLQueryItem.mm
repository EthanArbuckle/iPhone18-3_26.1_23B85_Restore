@interface _NSSwiftURLQueryItem
- (NSString)name;
- (NSString)value;
- (_NSSwiftURLQueryItem)initWithName:(id)name value:(id)value;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSSwiftURLQueryItem

- (NSString)value
{
  if (*&self->queryItem[OBJC_IVAR____NSSwiftURLQueryItem_queryItem])
  {
    v3 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)name
{
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (int64_t)hash
{
  v3 = *&self->queryItem[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  Hasher.init(_seed:)();
  selfCopy = self;
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = Hasher._finalize()();

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(NSURLQueryItem *)&v4 encodeWithCoder:coder];
}

- (_NSSwiftURLQueryItem)initWithName:(id)name value:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end