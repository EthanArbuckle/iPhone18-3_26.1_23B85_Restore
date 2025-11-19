@interface NSURLComponents
+ (NSURLComponents)allocWithZone:(_NSZone *)a3;
+ (NSURLComponents)componentsWithString:(NSString *)URLString;
+ (NSURLComponents)componentsWithString:(NSString *)URLString encodingInvalidCharacters:(BOOL)encodingInvalidCharacters;
+ (NSURLComponents)componentsWithURL:(NSURL *)url resolvingAgainstBaseURL:(BOOL)resolve;
+ (_NSRange)_matchWithString:(id)a3 requiredComponents:(unint64_t)a4 defaultValues:(id)a5 urlPtr:(id *)a6;
+ (id)_components;
+ (id)_componentsWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4;
+ (id)_componentsWithUrl:(id)a3 resolvingAgainstBaseURL:(BOOL)a4;
+ (id)_parseString:(id)a3 encodingInvalidCharacters:(BOOL)a4 allowEmptyScheme:(BOOL)a5;
- (NSURLComponents)init;
- (void)setEncodedHost:(NSString *)encodedHost;
- (void)setFragment:(NSString *)fragment;
- (void)setHost:(NSString *)host;
- (void)setPassword:(NSString *)password;
- (void)setPath:(NSString *)path;
- (void)setPercentEncodedFragment:(NSString *)percentEncodedFragment;
- (void)setPercentEncodedHost:(NSString *)percentEncodedHost;
- (void)setPercentEncodedPassword:(NSString *)percentEncodedPassword;
- (void)setPercentEncodedPath:(NSString *)percentEncodedPath;
- (void)setPercentEncodedQuery:(NSString *)percentEncodedQuery;
- (void)setPercentEncodedQueryItems:(NSArray *)percentEncodedQueryItems;
- (void)setPercentEncodedUser:(NSString *)percentEncodedUser;
- (void)setPort:(NSNumber *)port;
- (void)setQuery:(NSString *)query;
- (void)setQueryItems:(NSArray *)queryItems;
- (void)setScheme:(NSString *)scheme;
- (void)setUser:(NSString *)user;
@end

@implementation NSURLComponents

+ (id)_parseString:(id)a3 encodingInvalidCharacters:(BOOL)a4 allowEmptyScheme:(BOOL)a5
{
  v5 = a5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, a4, v5);

  if (v9)
  {

    v9 = String._bridgeToObjectiveCImpl()();
  }

  return v9;
}

+ (id)_componentsWithUrl:(id)a3 resolvingAgainstBaseURL:(BOOL)a4
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v8);
  v7 = v8;
  v5 = specialized static NSURLComponents._componentsWith(url:resolvingAgainstBaseURL:)(&v7, a4);
  swift_unknownObjectRelease();

  return v5;
}

- (NSURLComponents)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSURLComponents;
  return [(NSURLComponents *)&v3 init];
}

+ (id)_componentsWithString:(id)a3 encodingInvalidCharacters:(BOOL)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v5, v7, a4, v28);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v28) == 1)
  {

    v8 = 0;
  }

  else
  {
    v25 = v28[6];
    v26 = v28[7];
    v27[0] = v29[0];
    *(v27 + 10) = *(v29 + 10);
    v21 = v28[2];
    v22 = v28[3];
    v23 = v28[4];
    v24 = v28[5];
    v19 = v28[0];
    v20 = v28[1];
    v9 = type metadata accessor for _NSSwiftURLComponents();
    v10 = objc_allocWithZone(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
    v11 = swift_allocObject();
    *(v11 + 172) = 0;
    v12 = v26;
    *(v11 + 112) = v25;
    *(v11 + 128) = v12;
    *(v11 + 144) = v27[0];
    *(v11 + 154) = *(v27 + 10);
    v13 = v22;
    *(v11 + 48) = v21;
    *(v11 + 64) = v13;
    v14 = v24;
    *(v11 + 80) = v23;
    *(v11 + 96) = v14;
    v15 = v20;
    *(v11 + 16) = v19;
    *(v11 + 32) = v15;
    *&v10[OBJC_IVAR____NSSwiftURLComponents_lock] = v11;
    v18.receiver = v10;
    v18.super_class = v9;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    v8 = v16;
  }

  return v8;
}

+ (id)_components
{
  URLComponents.init()(v12);
  v2 = type metadata accessor for _NSSwiftURLComponents();
  v3 = objc_allocWithZone(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
  v4 = swift_allocObject();
  *(v4 + 172) = 0;
  v5 = v12[7];
  *(v4 + 112) = v12[6];
  *(v4 + 128) = v5;
  *(v4 + 144) = v13[0];
  *(v4 + 154) = *(v13 + 10);
  v6 = v12[3];
  *(v4 + 48) = v12[2];
  *(v4 + 64) = v6;
  v7 = v12[5];
  *(v4 + 80) = v12[4];
  *(v4 + 96) = v7;
  v8 = v12[1];
  *(v4 + 16) = v12[0];
  *(v4 + 32) = v8;
  *&v3[OBJC_IVAR____NSSwiftURLComponents_lock] = v4;
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

+ (_NSRange)_matchWithString:(id)a3 requiredComponents:(unint64_t)a4 defaultValues:(id)a5 urlPtr:(id *)a6
{
  v8 = a4;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v11 = v10;
  v17 = 0;
  v12 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSi_SSTt1g5(a5, &v17);
  if (v17)
  {
    v14 = specialized static NSURLComponents._matchWith(string:requiredComponents:defaultValues:urlPtr:)(v9, v11, v8, v17, a6);
    v16 = v15;

    v12 = v14;
    v13 = v16;
  }

  else
  {
    __break(1u);
  }

  result.length = v13;
  result.location = v12;
  return result;
}

+ (NSURLComponents)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSURLComponents == a1)
  {
    return &___immutablePlaceholderURLComponents;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSURLComponents;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

+ (NSURLComponents)componentsWithURL:(NSURL *)url resolvingAgainstBaseURL:(BOOL)resolve
{
  v4 = [objc_allocWithZone(a1) initWithURL:url resolvingAgainstBaseURL:resolve];

  return v4;
}

+ (NSURLComponents)componentsWithString:(NSString *)URLString
{
  v3 = [objc_allocWithZone(a1) initWithString:URLString];

  return v3;
}

+ (NSURLComponents)componentsWithString:(NSString *)URLString encodingInvalidCharacters:(BOOL)encodingInvalidCharacters
{
  v4 = [objc_allocWithZone(a1) initWithString:URLString encodingInvalidCharacters:encodingInvalidCharacters];

  return v4;
}

- (void)setScheme:(NSString *)scheme
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setUser:(NSString *)user
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPassword:(NSString *)password
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setHost:(NSString *)host
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPort:(NSNumber *)port
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPath:(NSString *)path
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setQuery:(NSString *)query
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setFragment:(NSString *)fragment
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedUser:(NSString *)percentEncodedUser
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedPassword:(NSString *)percentEncodedPassword
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedHost:(NSString *)percentEncodedHost
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setEncodedHost:(NSString *)encodedHost
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedPath:(NSString *)percentEncodedPath
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedQuery:(NSString *)percentEncodedQuery
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedFragment:(NSString *)percentEncodedFragment
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setQueryItems:(NSArray *)queryItems
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setPercentEncodedQueryItems:(NSArray *)percentEncodedQueryItems
{
  v5 = objc_lookUpClass("NSURLComponents");

  NSRequestConcreteImplementation(self, a2, v5);
}

@end