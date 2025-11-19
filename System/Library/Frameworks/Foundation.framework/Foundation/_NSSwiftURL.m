@interface _NSSwiftURL
- ($0AC6E346AE4835514AAA8AC86D8F4844)_rangeForComponent:(int64_t)a3 rangeIncludingSeparators:(id *)a4;
- (BOOL)hasDirectoryPath;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFileReferenceURL;
- (BOOL)isFileURL;
- (Class)classForCoder;
- (NSData)dataRepresentation;
- (NSNumber)port;
- (NSString)_originalString;
- (NSString)description;
- (NSString)query;
- (NSString)relativeString;
- (NSURL)_compatibilityAbsoluteURL;
- (NSURL)baseURL;
- (_NSSwiftURL)init;
- (_NSSwiftURL)initWithCoder:(id)a3;
- (id)_URLByAppendingPathComponent:(id)a3 isDirectory:(BOOL)a4 encodingSlashes:(BOOL)a5;
- (id)_URLByAppendingPathExtension:(id)a3;
- (id)_fileSystemPath:(int64_t)a3 resolveAgainstBase:(BOOL)a4;
- (id)_fragment:(id)a3;
- (id)_query:(id)a3;
- (id)_relativePath:(BOOL)a3;
- (int64_t)hash;
- (void)_resourceInfoPtr;
- (void)set_resourceInfoPtr:(void *)a3;
@end

@implementation _NSSwiftURL

- (Class)classForCoder
{
  type metadata accessor for NSURL();

  return swift_getObjCClassFromMetadata();
}

- (_NSSwiftURL)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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

  v6 = _NSSwiftURL.isEqual(_:)(v8);

  outlined destroy of TermOfAddress?(v8, &_sypSgMd);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init(_seed:)();
  v3 = self;

  String.hash(into:)();

  v4 = Hasher._finalize()();

  return v4;
}

- (NSString)description
{
  v2 = self;
  _SwiftURL.description.getter();

  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

- (NSData)dataRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = _SwiftURL.dataRepresentation.getter();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v6)
    {
      v12 = v3;
      v13 = v5;
      v14 = BYTE2(v5);
      v15 = BYTE3(v5);
      v16 = BYTE4(v5);
      v17 = BYTE5(v5);
      v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v12 length:BYTE6(v5)];
      goto LABEL_9;
    }

    v8 = v3;
    v9 = v3 >> 32;
    if (v3 >> 32 < v3)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
LABEL_7:
    v7 = __DataStorage.bridgedReference(_:)(v8, v9);
    goto LABEL_9;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v10 = v7;
  outlined consume of Data._Representation(v3, v5);

  return v10;
}

- (NSString)relativeString
{
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (NSURL)baseURL
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURL_url);
  if (*(v2 + 24))
  {
    v3 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 432);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)port
{
  v2 = self;
  v3 = _SwiftURL.port.getter();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(NSNumber) initWithInteger_];
  }

  return v5;
}

- (NSString)query
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURL_isDecomposable) == 1)
  {
    v3 = self;
    object = _SwiftURL.query(percentEncoded:)(1).value._object;

    if (object)
    {
      v5 = String._bridgeToObjectiveCImpl()();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasDirectoryPath
{
  v2 = self;
  v3 = _NSSwiftURL.hasDirectoryPath.getter();

  return v3 & 1;
}

- (BOOL)isFileURL
{
  v2 = self;
  v3 = _NSSwiftURL.isFileURL.getter();

  return v3 & 1;
}

- (BOOL)isFileReferenceURL
{
  v2 = self;
  v3 = _NSSwiftURL.isFileReferenceURL()();

  return v3;
}

- (_NSSwiftURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_URLByAppendingPathComponent:(id)a3 isDirectory:(BOOL)a4 encodingSlashes:(BOOL)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v10 = v9;
  v11 = self;
  _NSSwiftURL._URL(byAppendingPathComponent:isDirectory:encodingSlashes:)(v8, v10, a4, a5, v16);

  if (v16[0])
  {
    v12 = v16[1];
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 432))(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_URLByAppendingPathExtension:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = self;
  _NSSwiftURL._URL(byAppendingPathExtension:)(v4, v6, v12);

  if (v12[0])
  {
    v8 = v12[1];
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 432))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)_originalString
{
  if (*((*(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURL_url))[2] + 220))
  {
    v2 = self;

    specialized URLComponents._URLComponents.init(parseInfo:)(v3, v6);
    URLComponents._URLComponents._uncheckedString(original:)(1);
    outlined destroy of URLComponents._URLComponents(v6);
  }

  else
  {
  }

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (void)_resourceInfoPtr
{
  v2 = self;
  v3 = _NSSwiftURL._resourceInfoPtr.getter();

  return v3;
}

- (void)set_resourceInfoPtr:(void *)a3
{
  v4 = self;
  _NSSwiftURL._resourceInfoPtr.setter(a3);
}

- (NSURL)_compatibilityAbsoluteURL
{
  v2 = self;
  _SwiftURL.compatibilityAbsoluteURL.getter(v7);
  if (v7[0])
  {
    v3 = v7[1];
  }

  else
  {
    type metadata accessor for _BridgedNSSwiftURL();
    *(swift_allocObject() + 16) = v2;
    v3 = &protocol witness table for _BridgedNSSwiftURL;
  }

  ObjectType = swift_getObjectType();
  v5 = (v3[54])(ObjectType, v3);
  swift_unknownObjectRelease();

  return v5;
}

- (id)_relativePath:(BOOL)a3
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____NSSwiftURL_hasPath) == 1)
  {
    v5 = self;
    _SwiftURL.relativePath(percentEncoded:)(a3);

    v6 = String._bridgeToObjectiveCImpl()();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fileSystemPath:(int64_t)a3 resolveAgainstBase:(BOOL)a4
{
  v6 = self;
  object = _NSSwiftURL._fileSystemPath(_:resolveAgainstBase:)(a3, a4).value._object;

  if (object)
  {
    v8 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_query:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  _NSSwiftURL._query(_:)(v4, v6, &selRef_query, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fragment:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  _NSSwiftURL._query(_:)(v4, v6, &selRef_fragment, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:));
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_rangeForComponent:(int64_t)a3 rangeIncludingSeparators:(id *)a4
{
  v6 = self;
  v7 = _NSSwiftURL._range(for:rangeIncludingSeparators:)(a3, a4);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

@end