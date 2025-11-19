@interface _NSSwiftURLComponents
- (BOOL)_setEncodedHost:(id)a3;
- (BOOL)_setPercentEncodedFragment:(id)a3;
- (BOOL)_setPercentEncodedHost:(id)a3;
- (BOOL)_setPercentEncodedPassword:(id)a3;
- (BOOL)_setPercentEncodedPath:(id)a3;
- (BOOL)_setPercentEncodedQuery:(id)a3;
- (BOOL)_setPercentEncodedQueryItems:(id)a3;
- (BOOL)_setPercentEncodedUser:(id)a3;
- (BOOL)_setPort:(id)a3;
- (BOOL)_setScheme:(id)a3;
- (NSNumber)_port;
- (NSURL)URL;
- (_NSRange)rangeOfFragment;
- (_NSRange)rangeOfHost;
- (_NSRange)rangeOfPassword;
- (_NSRange)rangeOfPath;
- (_NSRange)rangeOfPort;
- (_NSRange)rangeOfQuery;
- (_NSRange)rangeOfScheme;
- (_NSRange)rangeOfUser;
- (_NSSwiftURLComponents)init;
- (_NSSwiftURLComponents)initWithString:(id)a3;
- (_NSSwiftURLComponents)initWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4;
- (_NSSwiftURLComponents)initWithURL:(id)a3 resolvingAgainstBaseURL:(BOOL)a4;
- (id)URLRelativeToURL:(id)a3;
- (int64_t)hash;
- (void)setFragment:(id)a3;
- (void)setHost:(id)a3;
- (void)setPassword:(id)a3;
- (void)setPath:(id)a3;
- (void)setQuery:(id)a3;
- (void)setQueryItems:(id)a3;
- (void)setUser:(id)a3;
@end

@implementation _NSSwiftURLComponents

- (NSURL)URL
{
  v2 = self;
  _NSSwiftURLComponents.url.getter(v7);

  if (v7[0])
  {
    v3 = v7[1];
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 432))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_setPercentEncodedQueryItems:(id)a3
{
  v3 = self;
  if (a3)
  {
    self = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZAA12URLQueryItemV_Tt0g5(a3);
  }

  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](self);
  v5 = v3;
  os_unfair_lock_lock(v4 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedQueryItems(_:)(&v4[4]);
  os_unfair_lock_unlock(v4 + 43);

  return 1;
}

- (void)setFragment:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.fragment.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);
}

- (void)setQueryItems:(id)a3
{
  v3 = self;
  if (a3)
  {
    self = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZAA12URLQueryItemV_Tt0g5(a3);
  }

  v4 = *(&v3->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](self);
  v5 = v3;
  os_unfair_lock_lock(v4 + 43);
  v6.value._rawValue = &v4[4];
  partial apply for closure #1 in _NSSwiftURLComponents.queryItems.setter(v6);
  os_unfair_lock_unlock(v4 + 43);
}

- (void)setPath:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.path.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);
}

- (BOOL)_setScheme:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock((v5 + 172));
  partial apply for closure #1 in _NSSwiftURLComponents._setScheme(_:)((v5 + 16));
  os_unfair_lock_unlock((v5 + 172));

  return 1;
}

- (void)setHost:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.host.setter();
  os_unfair_lock_unlock(v5 + 43);
}

- (void)setUser:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.user.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);
}

- (_NSRange)rangeOfPath
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfPath.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfQuery
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfQuery.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)setQuery:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.query.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);
}

- (void)setPassword:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents.password.setter(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);
}

- (_NSSwiftURLComponents)init
{
  URLComponents.init()(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
  v3 = swift_allocObject();
  *(v3 + 172) = 0;
  v4 = v10[7];
  *(v3 + 112) = v10[6];
  *(v3 + 128) = v4;
  *(v3 + 144) = v11[0];
  *(v3 + 154) = *(v11 + 10);
  v5 = v10[3];
  *(v3 + 48) = v10[2];
  *(v3 + 64) = v5;
  v6 = v10[5];
  *(v3 + 80) = v10[4];
  *(v3 + 96) = v6;
  v7 = v10[1];
  *(v3 + 16) = v10[0];
  *(v3 + 32) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock) = v3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for _NSSwiftURLComponents();
  return [(NSURLComponents *)&v9 init];
}

- (_NSSwiftURLComponents)initWithString:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v4, v5, 1, v13);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v13) == 1)
  {
    type metadata accessor for _NSSwiftURLComponents();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
    v7 = swift_allocObject();
    *(v7 + 172) = 0;
    v8 = v13[7];
    *(v7 + 112) = v13[6];
    *(v7 + 128) = v8;
    *(v7 + 144) = v14[0];
    *(v7 + 154) = *(v14 + 10);
    v9 = v13[3];
    *(v7 + 48) = v13[2];
    *(v7 + 64) = v9;
    v10 = v13[5];
    *(v7 + 80) = v13[4];
    *(v7 + 96) = v10;
    v11 = v13[1];
    *(v7 + 16) = v13[0];
    *(v7 + 32) = v11;
    *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock) = v7;
    v12.receiver = self;
    v12.super_class = type metadata accessor for _NSSwiftURLComponents();
    return [(NSURLComponents *)&v12 init];
  }
}

- (_NSSwiftURLComponents)initWithURL:(id)a3 resolvingAgainstBaseURL:(BOOL)a4
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v7);
  v6 = v7;
  return _NSSwiftURLComponents.init(url:resolvingAgainstBaseURL:)(&v6, a4);
}

- (int64_t)hash
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  v3 = self;
  os_unfair_lock_lock((v2 + 172));
  v4 = *(v2 + 128);
  v18 = *(v2 + 112);
  v19 = v4;
  v20[0] = *(v2 + 144);
  *(v20 + 10) = *(v2 + 154);
  v5 = *(v2 + 64);
  v14 = *(v2 + 48);
  v15 = v5;
  v6 = *(v2 + 96);
  v16 = *(v2 + 80);
  v17 = v6;
  v7 = *(v2 + 32);
  v12 = *(v2 + 16);
  v13 = v7;
  outlined init with copy of URLComponents(&v12, v10);
  os_unfair_lock_unlock((v2 + 172));
  v10[6] = v18;
  v10[7] = v19;
  v11[0] = v20[0];
  *(v11 + 10) = *(v20 + 10);
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  v10[5] = v17;
  v10[0] = v12;
  v10[1] = v13;
  v8 = URLComponents.hashValue.getter();
  outlined destroy of URLComponents(&v12);

  return v8;
}

- (id)URLRelativeToURL:(id)a3
{
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v11);
    v4 = v11;
  }

  else
  {
    v4 = 0uLL;
  }

  v10 = v4;
  v5 = self;
  _NSSwiftURLComponents.url(relativeTo:)(&v10, &v11);

  swift_unknownObjectRelease();
  if (v11)
  {
    v6 = *(&v11 + 1);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 432))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)_port
{
  v2 = self;
  v3 = _NSSwiftURLComponents._port.getter();

  return v3;
}

- (BOOL)_setPort:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  v5 = a3;
  v6 = self;
  os_unfair_lock_lock(v4 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPort(_:)(&v4[4]);
  os_unfair_lock_unlock(v4 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedUser:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedUser(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedPassword:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedPassword(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedHost:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedHost(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setEncodedHost:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setEncodedHost(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedPath:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedPath(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedQuery:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedQuery(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (BOOL)_setPercentEncodedFragment:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURLComponents_lock);
  MEMORY[0x1EEE9AC00](v4);
  v6 = self;
  os_unfair_lock_lock(v5 + 43);
  partial apply for closure #1 in _NSSwiftURLComponents._setPercentEncodedFragment(_:)(&v5[4]);
  os_unfair_lock_unlock(v5 + 43);

  return 1;
}

- (_NSRange)rangeOfScheme
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfScheme.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfUser
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfUser.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfPassword
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfPassword.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfHost
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfHost.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfPort
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfPort.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeOfFragment
{
  v2 = self;
  v3 = _NSSwiftURLComponents.rangeOfFragment.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSSwiftURLComponents)initWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end