@interface Library.Folders.PreviewManager.Cache.KeyManager
- (_TtCCCOE5MusicO9MusicCore7Library7Folders14PreviewManagerP33_4E92466DD7805690A64C66280926D2CB5Cache10KeyManager)init;
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation Library.Folders.PreviewManager.Cache.KeyManager

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001789B4(v7);

  sub_10000959C(v7);
}

- (_TtCCCOE5MusicO9MusicCore7Library7Folders14PreviewManagerP33_4E92466DD7805690A64C66280926D2CB5Cache10KeyManager)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCCCOE5MusicO9MusicCore7Library7Folders14PreviewManagerP33_4E92466DD7805690A64C66280926D2CB5Cache10KeyManager__keys) = &_swiftEmptySetSingleton;
  v4 = OBJC_IVAR____TtCCCOE5MusicO9MusicCore7Library7Folders14PreviewManagerP33_4E92466DD7805690A64C66280926D2CB5Cache10KeyManager_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(&self->super.isa + v4) = UnfairLock.init()();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(Library.Folders.PreviewManager.Cache.KeyManager *)&v6 init];
}

@end