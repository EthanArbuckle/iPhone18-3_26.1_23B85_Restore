@interface _NSFileManagerBridge
- (BOOL)changeCurrentDirectoryPath:(id)a3;
- (BOOL)contentsEqualAtPath:(id)a3 andPath:(id)a4;
- (BOOL)copyItemAt:(id)a3 to:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)createDirectoryAt:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)createDirectoryAtPath:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5;
- (BOOL)createSymbolicLinkAtPath:(id)a3 withDestinationPath:(id)a4 error:(id *)a5;
- (BOOL)fileExistsAtPath:(id)a3;
- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4;
- (BOOL)getRelationship:(int64_t *)a3 of:(unint64_t)a4 in:(unint64_t)a5 toItemAt:(id)a6 error:(id *)a7;
- (BOOL)getRelationship:(int64_t *)a3 ofDirectoryAt:(id)a4 toItemAt:(id)a5 error:(id *)a6;
- (BOOL)isDeletableFileAtPath:(id)a3;
- (BOOL)linkItemAtPath:(id)a3 toPath:(id)a4 error:(id *)a5;
- (BOOL)moveItemAt:(id)a3 to:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)removeItemAt:(id)a3 error:(id *)a4;
- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4;
- (BOOL)setAttributes:(id)a3 ofItemAtPath:(id)a4 error:(id *)a5;
- (NSString)currentDirectoryPath;
- (_NSFileManagerBridge)init;
- (_NSFileManagerBridge)initWithFileManager:(id)a3;
- (id)attributesOfFileSystemForPath:(id)a3 error:(id *)a4;
- (id)attributesOfItemAtPath:(id)a3 error:(id *)a4;
- (id)contentsAtPath:(id)a3;
- (id)contentsOfDirectoryAtPath:(id)a3 error:(id *)a4;
- (id)destinationOfSymbolicLinkAtPath:(id)a3 error:(id *)a4;
- (id)displayNameAtPath:(id)a3;
- (id)homeDirectoryForUser:(id)a3;
- (id)stringWithFileSystemRepresentation:(const char *)a3 length:(int64_t)a4;
- (id)subpathsOfDirectoryAtPath:(id)a3 error:(id *)a4;
- (id)urlFor:(unint64_t)a3 in:(unint64_t)a4 appropriateFor:(id)a5 create:(BOOL)a6 error:(id *)a7;
- (id)urlsFor:(unint64_t)a3 in:(unint64_t)a4;
@end

@implementation _NSFileManagerBridge

- (BOOL)fileExistsAtPath:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v5 = specialized String.withFileSystemRepresentation<A>(_:)(v3, v4);

  return v5 & 1;
}

- (_NSFileManagerBridge)initWithFileManager:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  outlined init with copy of _FileManagerImpl(v8, self + OBJC_IVAR____NSFileManagerBridge__impl);
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(_NSFileManagerBridge *)&v7 init];
  outlined destroy of _FileManagerImpl(v8);
  return v5;
}

- (BOOL)fileExistsAtPath:(id)a3 isDirectory:(BOOL *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = specialized String.withFileSystemRepresentation<A>(_:)(v5, v6);

  if ((v7 & 1) != 0 && a4)
  {
    *a4 = HIBYTE(v7) & 1;
  }

  return v7 & 1;
}

- (BOOL)createDirectoryAtPath:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v11 = v10;
  if (a5)
  {
    v23 = 0;
    v12 = self;
    v13 = a5;
    _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(v13, &v23);
    a5 = v23;
    if (!v23)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v14 = self;
  }

  v15 = self + OBJC_IVAR____NSFileManagerBridge__impl;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v19[2] = v9;
    v19[3] = v11;
    v20 = a4;
    v21 = a5;
    v22 = v15;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v9, v11, partial apply for closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:), v19);

    return 1;
  }

LABEL_8:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)urlFor:(unint64_t)a3 in:(unint64_t)a4 appropriateFor:(id)a5 create:(BOOL)a6 error:(id *)a7
{
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a5, &v18);
    v11 = v18;
  }

  else
  {
    v11 = 0uLL;
  }

  v17 = v11;
  v12 = self;
  _FileManagerImpl.url(for:in:appropriateFor:create:)(a3, a4, &v17, a6, &v18);

  swift_unknownObjectRelease();
  v13 = v18;
  ObjectType = swift_getObjectType();
  v15 = (*(*(&v13 + 1) + 432))(ObjectType, *(&v13 + 1));
  swift_unknownObjectRelease();

  return v15;
}

- (BOOL)createDirectoryAt:(id)a3 withIntermediateDirectories:(BOOL)a4 attributes:(id)a5 error:(id *)a6
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v15);
  v14 = v15;
  if (!a5)
  {
    v12 = self;
    goto LABEL_5;
  }

  v13 = 0;
  v9 = self;
  v10 = a5;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(v10, &v13);
  a5 = v13;
  if (v13)
  {

LABEL_5:
    _NSFileManagerBridge.createDirectory(at:withIntermediateDirectories:attributes:)(&v14, a4, a5);

    swift_unknownObjectRelease();

    return 1;
  }

  __break(1u);
  return result;
}

- (id)attributesOfItemAtPath:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  v8 = self + OBJC_IVAR____NSFileManagerBridge__impl;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v14[2] = v5;
    v14[3] = v7;
    v14[4] = v8;
    v11 = self;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v5, v7, partial apply for closure #1 in _FileManagerImpl.attributesOfItem(atPath:), v14);

    type metadata accessor for NSFileAttributeKey(0);
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
    v12 = _NativeDictionary.bridged()();

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)contentsOfDirectoryAtPath:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  v8 = self;
  _FileManagerImpl.contentsOfDirectory(atPath:)(v5, v7);

  v9 = _ContiguousArrayBuffer._asCocoaArray()();

  return v9;
}

- (BOOL)removeItemAt:(id)a3 error:(id *)a4
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v8);
  v7 = v8;
  v5 = self;
  _NSFileManagerBridge.removeItem(at:)(&v7);

  swift_unknownObjectRelease();
  return 1;
}

- (id)urlsFor:(unint64_t)a3 in:(unint64_t)a4
{
  _SearchPathURLs(for:in:expandTilde:)(a3, a4, 1, &v6);
  v4 = _ContiguousArrayBuffer._asCocoaArray()();

  return v4;
}

- (BOOL)setAttributes:(id)a3 ofItemAtPath:(id)a4 error:(id *)a5
{
  v16 = 0;
  v8 = self;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(a3, &v16);
  v10._rawValue = v16;
  if (v16)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
    v13 = v12;
    v14._countAndFlagsBits = v11;
    v14._object = v13;
    _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v10, v14);

    if (v15)
    {
      if (a5)
      {
        *a5 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
      }
    }

    return v15 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)displayNameAtPath:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = self;
  specialized _NSFileManagerBridge.displayName(atPath:)(v4, v6);

  v8 = String._bridgeToObjectiveCImpl()();

  return v8;
}

- (BOOL)removeItemAtPath:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = v9;
    v11 = self;
    specialized String.withFileSystemRepresentation<A>(_:)(v5, v7, v5, v7, v9);

    return 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (id)destinationOfSymbolicLinkAtPath:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  v8 = self + OBJC_IVAR____NSFileManagerBridge__impl;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v14[2] = v5;
    v14[3] = v7;
    v14[4] = v8;
    v11 = self;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v5, v7, partial apply for closure #1 in _FileManagerImpl.destinationOfSymbolicLink(atPath:), v14);

    v12 = String._bridgeToObjectiveCImpl()();

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (BOOL)changeCurrentDirectoryPath:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = self;
    v10 = specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v4, v6, closure #1 in _FileManagerImpl.changeCurrentDirectoryPath(_:), 0);

    return v10 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v10 = v9;
  v11 = a5;
  v12 = self;
  if (a4)
  {
    v13 = a4;
    a4 = specialized Data.init(referencing:)(v13);
    v15 = v14;

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v15 = 0xF000000000000000;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(v11, &v19);
  v17 = v19;
  if (v19)
  {

LABEL_7:
    v18 = _NSFileManagerBridge.createFile(atPath:contents:attributes:)(v8, v10, a4, v15, v17);

    outlined consume of Data?(a4, v15);

    return v18 & 1;
  }

  __break(1u);
  return result;
}

- (id)attributesOfFileSystemForPath:(id)a3 error:(id *)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v13[2] = v5;
    v13[3] = v7;
    v10 = self;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v5, v7, partial apply for closure #1 in _FileManagerImpl.attributesOfFileSystem(forPath:), v13);

    type metadata accessor for NSFileAttributeKey(0);
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
    v11 = _NativeDictionary.bridged()();

    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v13 = v12;
  v14 = self;
  specialized _FileManagerImpl.moveItem(atPath:toPath:options:)(v8, v10, v11, v13);

  return 1;
}

- (NSString)currentDirectoryPath
{
  v2 = self;
  _FileManagerImpl.currentDirectoryPath.getter();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)moveItemAt:(id)a3 to:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v13);
  v12 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v11);
  v10 = v11;
  v8 = self;
  specialized _NSFileManagerBridge.moveItem(at:to:options:)(&v12, &v10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

- (id)subpathsOfDirectoryAtPath:(id)a3 error:(id *)a4
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized String.withFileSystemRepresentation<A>(_:)(v4, v5, v4, v5);

  v6 = _ContiguousArrayBuffer._asCocoaArray()();

  return v6;
}

- (BOOL)createSymbolicLinkAtPath:(id)a3 withDestinationPath:(id)a4 error:(id *)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v12 = v11;
  v13 = self + OBJC_IVAR____NSFileManagerBridge__impl;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v18[2] = v7;
    v18[3] = v9;
    v18[4] = v13;
    v18[5] = v10;
    v18[6] = v12;
    v16 = self;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v7, v9, partial apply for closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:), v18);

    return 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

- (BOOL)copyItemAtPath:(id)a3 toPath:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v6 = a5;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v14 = v13;
  v15 = self;
  _FileManagerImpl.copyItem(atPath:toPath:options:)(v9, v11, v12, v14, v6);

  return 1;
}

- (BOOL)getRelationship:(int64_t *)a3 ofDirectoryAt:(id)a4 toItemAt:(id)a5 error:(id *)a6
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a5, &v13);
  v11 = v13;
  v12 = v14;
  v9 = self;
  _FileManagerImpl.getRelationship(_:ofDirectoryAt:toItemAt:)(a3, &v12, &v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)getRelationship:(int64_t *)a3 of:(unint64_t)a4 in:(unint64_t)a5 toItemAt:(id)a6 error:(id *)a7
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a6, &v14);
  v13 = v14;
  v11 = self;
  _FileManagerImpl.getRelationship(_:of:in:toItemAt:)(a3, a4, a5, &v13);
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)linkItemAtPath:(id)a3 toPath:(id)a4 error:(id *)a5
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v13 = v12;
  v14 = self;
  v15._countAndFlagsBits = v8;
  v15._object = v10;
  v16._countAndFlagsBits = v11;
  v16._object = v13;
  _NSFileManagerBridge.linkItem(atPath:toPath:)(v15, v16);

  if (v17)
  {
    if (a5)
    {
      *a5 = _swift_stdlib_bridgeErrorToNSError();
    }

    else
    {
    }
  }

  return v17 == 0;
}

- (BOOL)copyItemAt:(id)a3 to:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v6 = a5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v14);
  v13 = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v12);
  v11 = v12;
  v9 = self;
  _NSFileManagerBridge.copyItem(at:to:options:)(&v13, &v11, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)isDeletableFileAtPath:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(self) = _FileManagerImpl.isDeletableFile(atPath:)(v8);

  return self & 1;
}

- (BOOL)contentsEqualAtPath:(id)a3 andPath:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v11 = v10;
  v12 = self;
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  v14._countAndFlagsBits = v9;
  v14._object = v11;
  LOBYTE(v9) = _FileManagerImpl.contentsEqual(atPath:andPath:)(v13, v14);

  return v9 & 1;
}

- (id)contentsAtPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  *&v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  *(&v13 + 1) = v3;
  v14 = 0;

  v4 = readDataFromFile(path:reportProgress:maxLength:options:)(&v13, 1, 0, 1, 0);
  v6 = v5;

  outlined consume of PathOrURL(v13, *(&v13 + 1), v14);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v13 = v4;
      WORD4(v13) = v6;
      BYTE10(v13) = BYTE2(v6);
      BYTE11(v13) = BYTE3(v6);
      BYTE12(v13) = BYTE4(v6);
      BYTE13(v13) = BYTE5(v6);
      v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v13 length:BYTE6(v6)];
      goto LABEL_9;
    }

    v9 = v4;
    v10 = v4 >> 32;
    if (v4 >> 32 < v4)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
LABEL_7:
    v8 = __DataStorage.bridgedReference(_:)(v9, v10);
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v11 = v8;
  outlined consume of Data._Representation(v4, v6);

  return v11;
}

- (id)stringWithFileSystemRepresentation:(const char *)a3 length:(int64_t)a4
{
  v4 = self;
  static String._fromUTF8Repairing(_:)();

  v5 = String._bridgeToObjectiveCImpl()();

  return v5;
}

- (id)homeDirectoryForUser:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  _FileManagerImpl.homeDirectory(forUser:)(v5, v11);

  if (v11[0])
  {
    v7 = v11[1];
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 432))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_NSFileManagerBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end