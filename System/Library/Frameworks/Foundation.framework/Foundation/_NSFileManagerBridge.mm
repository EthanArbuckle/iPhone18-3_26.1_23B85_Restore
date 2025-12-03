@interface _NSFileManagerBridge
- (BOOL)changeCurrentDirectoryPath:(id)path;
- (BOOL)contentsEqualAtPath:(id)path andPath:(id)andPath;
- (BOOL)copyItemAt:(id)at to:(id)to options:(unint64_t)options error:(id *)error;
- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(unint64_t)options error:(id *)error;
- (BOOL)createDirectoryAt:(id)at withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error;
- (BOOL)createDirectoryAtPath:(id)path withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error;
- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes;
- (BOOL)createSymbolicLinkAtPath:(id)path withDestinationPath:(id)destinationPath error:(id *)error;
- (BOOL)fileExistsAtPath:(id)path;
- (BOOL)fileExistsAtPath:(id)path isDirectory:(BOOL *)directory;
- (BOOL)getRelationship:(int64_t *)relationship of:(unint64_t)of in:(unint64_t)in toItemAt:(id)at error:(id *)error;
- (BOOL)getRelationship:(int64_t *)relationship ofDirectoryAt:(id)at toItemAt:(id)itemAt error:(id *)error;
- (BOOL)isDeletableFileAtPath:(id)path;
- (BOOL)linkItemAtPath:(id)path toPath:(id)toPath error:(id *)error;
- (BOOL)moveItemAt:(id)at to:(id)to options:(unint64_t)options error:(id *)error;
- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(unint64_t)options error:(id *)error;
- (BOOL)removeItemAt:(id)at error:(id *)error;
- (BOOL)removeItemAtPath:(id)path error:(id *)error;
- (BOOL)setAttributes:(id)attributes ofItemAtPath:(id)path error:(id *)error;
- (NSString)currentDirectoryPath;
- (_NSFileManagerBridge)init;
- (_NSFileManagerBridge)initWithFileManager:(id)manager;
- (id)attributesOfFileSystemForPath:(id)path error:(id *)error;
- (id)attributesOfItemAtPath:(id)path error:(id *)error;
- (id)contentsAtPath:(id)path;
- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error;
- (id)destinationOfSymbolicLinkAtPath:(id)path error:(id *)error;
- (id)displayNameAtPath:(id)path;
- (id)homeDirectoryForUser:(id)user;
- (id)stringWithFileSystemRepresentation:(const char *)representation length:(int64_t)length;
- (id)subpathsOfDirectoryAtPath:(id)path error:(id *)error;
- (id)urlFor:(unint64_t)for in:(unint64_t)in appropriateFor:(id)appropriateFor create:(BOOL)create error:(id *)error;
- (id)urlsFor:(unint64_t)for in:(unint64_t)in;
@end

@implementation _NSFileManagerBridge

- (BOOL)fileExistsAtPath:(id)path
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v5 = specialized String.withFileSystemRepresentation<A>(_:)(v3, v4);

  return v5 & 1;
}

- (_NSFileManagerBridge)initWithFileManager:(id)manager
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

- (BOOL)fileExistsAtPath:(id)path isDirectory:(BOOL *)directory
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v7 = specialized String.withFileSystemRepresentation<A>(_:)(v5, v6);

  if ((v7 & 1) != 0 && directory)
  {
    *directory = HIBYTE(v7) & 1;
  }

  return v7 & 1;
}

- (BOOL)createDirectoryAtPath:(id)path withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v11 = v10;
  if (attributes)
  {
    v23 = 0;
    selfCopy = self;
    attributesCopy = attributes;
    _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(attributesCopy, &v23);
    attributes = v23;
    if (!v23)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v15 = self + OBJC_IVAR____NSFileManagerBridge__impl;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v19[2] = v9;
    v19[3] = v11;
    directoriesCopy = directories;
    attributesCopy2 = attributes;
    v22 = v15;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v9, v11, partial apply for closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:), v19);

    return 1;
  }

LABEL_8:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)urlFor:(unint64_t)for in:(unint64_t)in appropriateFor:(id)appropriateFor create:(BOOL)create error:(id *)error
{
  if (appropriateFor)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(appropriateFor, &v18);
    v11 = v18;
  }

  else
  {
    v11 = 0uLL;
  }

  v17 = v11;
  selfCopy = self;
  _FileManagerImpl.url(for:in:appropriateFor:create:)(for, in, &v17, create, &v18);

  swift_unknownObjectRelease();
  v13 = v18;
  ObjectType = swift_getObjectType();
  v15 = (*(*(&v13 + 1) + 432))(ObjectType, *(&v13 + 1));
  swift_unknownObjectRelease();

  return v15;
}

- (BOOL)createDirectoryAt:(id)at withIntermediateDirectories:(BOOL)directories attributes:(id)attributes error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v15);
  v14 = v15;
  if (!attributes)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  v13 = 0;
  selfCopy2 = self;
  attributesCopy = attributes;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(attributesCopy, &v13);
  attributes = v13;
  if (v13)
  {

LABEL_5:
    _NSFileManagerBridge.createDirectory(at:withIntermediateDirectories:attributes:)(&v14, directories, attributes);

    swift_unknownObjectRelease();

    return 1;
  }

  __break(1u);
  return result;
}

- (id)attributesOfItemAtPath:(id)path error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
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
    selfCopy = self;
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

- (id)contentsOfDirectoryAtPath:(id)path error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v7 = v6;
  selfCopy = self;
  _FileManagerImpl.contentsOfDirectory(atPath:)(v5, v7);

  v9 = _ContiguousArrayBuffer._asCocoaArray()();

  return v9;
}

- (BOOL)removeItemAt:(id)at error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v8);
  v7 = v8;
  selfCopy = self;
  _NSFileManagerBridge.removeItem(at:)(&v7);

  swift_unknownObjectRelease();
  return 1;
}

- (id)urlsFor:(unint64_t)for in:(unint64_t)in
{
  _SearchPathURLs(for:in:expandTilde:)(for, in, 1, &v6);
  v4 = _ContiguousArrayBuffer._asCocoaArray()();

  return v4;
}

- (BOOL)setAttributes:(id)attributes ofItemAtPath:(id)path error:(id *)error
{
  v16 = 0;
  selfCopy = self;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(attributes, &v16);
  v10._rawValue = v16;
  if (v16)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
    v13 = v12;
    v14._countAndFlagsBits = v11;
    v14._object = v13;
    _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v10, v14);

    if (v15)
    {
      if (error)
      {
        *error = _swift_stdlib_bridgeErrorToNSError();
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

- (id)displayNameAtPath:(id)path
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v6 = v5;
  selfCopy = self;
  specialized _NSFileManagerBridge.displayName(atPath:)(v4, v6);

  v8 = String._bridgeToObjectiveCImpl()();

  return v8;
}

- (BOOL)removeItemAtPath:(id)path error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;

    v10 = v9;
    selfCopy = self;
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

- (id)destinationOfSymbolicLinkAtPath:(id)path error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
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
    selfCopy = self;
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

- (BOOL)changeCurrentDirectoryPath:(id)path
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    selfCopy = self;
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

- (BOOL)createFileAtPath:(id)path contents:(id)contents attributes:(id)attributes
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v10 = v9;
  attributesCopy = attributes;
  selfCopy = self;
  if (contents)
  {
    contentsCopy = contents;
    contents = specialized Data.init(referencing:)(contentsCopy);
    v15 = v14;

    if (attributesCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v15 = 0xF000000000000000;
  if (!attributesCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo18NSFileAttributeKeya_ypTt1g5(attributesCopy, &v19);
  v17 = v19;
  if (v19)
  {

LABEL_7:
    v18 = _NSFileManagerBridge.createFile(atPath:contents:attributes:)(v8, v10, contents, v15, v17);

    outlined consume of Data?(contents, v15);

    return v18 & 1;
  }

  __break(1u);
  return result;
}

- (id)attributesOfFileSystemForPath:(id)path error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v13[2] = v5;
    v13[3] = v7;
    selfCopy = self;
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

- (BOOL)moveItemAtPath:(id)path toPath:(id)toPath options:(unint64_t)options error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(toPath);
  v13 = v12;
  selfCopy = self;
  specialized _FileManagerImpl.moveItem(atPath:toPath:options:)(v8, v10, v11, v13);

  return 1;
}

- (NSString)currentDirectoryPath
{
  selfCopy = self;
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

- (BOOL)moveItemAt:(id)at to:(id)to options:(unint64_t)options error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v13);
  v12 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(to, &v11);
  v10 = v11;
  selfCopy = self;
  specialized _NSFileManagerBridge.moveItem(at:to:options:)(&v12, &v10);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return 1;
}

- (id)subpathsOfDirectoryAtPath:(id)path error:(id *)error
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  specialized String.withFileSystemRepresentation<A>(_:)(v4, v5, v4, v5);

  v6 = _ContiguousArrayBuffer._asCocoaArray()();

  return v6;
}

- (BOOL)createSymbolicLinkAtPath:(id)path withDestinationPath:(id)destinationPath error:(id *)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(destinationPath);
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
    selfCopy = self;
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

- (BOOL)copyItemAtPath:(id)path toPath:(id)toPath options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(toPath);
  v14 = v13;
  selfCopy = self;
  _FileManagerImpl.copyItem(atPath:toPath:options:)(v9, v11, v12, v14, optionsCopy);

  return 1;
}

- (BOOL)getRelationship:(int64_t *)relationship ofDirectoryAt:(id)at toItemAt:(id)itemAt error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)(itemAt, &v13);
  v11 = v13;
  v12 = v14;
  selfCopy = self;
  _FileManagerImpl.getRelationship(_:ofDirectoryAt:toItemAt:)(relationship, &v12, &v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)getRelationship:(int64_t *)relationship of:(unint64_t)of in:(unint64_t)in toItemAt:(id)at error:(id *)error
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v14);
  v13 = v14;
  selfCopy = self;
  _FileManagerImpl.getRelationship(_:of:in:toItemAt:)(relationship, of, in, &v13);
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)linkItemAtPath:(id)path toPath:(id)toPath error:(id *)error
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(toPath);
  v13 = v12;
  selfCopy = self;
  v15._countAndFlagsBits = v8;
  v15._object = v10;
  v16._countAndFlagsBits = v11;
  v16._object = v13;
  _NSFileManagerBridge.linkItem(atPath:toPath:)(v15, v16);

  if (v17)
  {
    if (error)
    {
      *error = _swift_stdlib_bridgeErrorToNSError();
    }

    else
    {
    }
  }

  return v17 == 0;
}

- (BOOL)copyItemAt:(id)at to:(id)to options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(at, &v14);
  v13 = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(to, &v12);
  v11 = v12;
  selfCopy = self;
  _NSFileManagerBridge.copyItem(at:to:options:)(&v13, &v11, optionsCopy);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 1;
}

- (BOOL)isDeletableFileAtPath:(id)path
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(self) = _FileManagerImpl.isDeletableFile(atPath:)(v8);

  return self & 1;
}

- (BOOL)contentsEqualAtPath:(id)path andPath:(id)andPath
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(andPath);
  v11 = v10;
  selfCopy = self;
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  v14._countAndFlagsBits = v9;
  v14._object = v11;
  LOBYTE(v9) = _FileManagerImpl.contentsEqual(atPath:andPath:)(v13, v14);

  return v9 & 1;
}

- (id)contentsAtPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  *&v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(path);
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

- (id)stringWithFileSystemRepresentation:(const char *)representation length:(int64_t)length
{
  selfCopy = self;
  static String._fromUTF8Repairing(_:)();

  v5 = String._bridgeToObjectiveCImpl()();

  return v5;
}

- (id)homeDirectoryForUser:(id)user
{
  if (user)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(user);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
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