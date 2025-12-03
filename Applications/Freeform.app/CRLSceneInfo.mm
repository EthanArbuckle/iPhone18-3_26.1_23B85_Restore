@interface CRLSceneInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupported;
- (CGRect)savedUnscaledRect;
- (CRLCanvasElementInfo)parentInfo;
- (CRLCanvasInfoGeometry)geometry;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSString)debugDescription;
- (_TtC8Freeform12CRLSceneInfo)init;
- (int64_t)hash;
- (void)setEditorClass:(Class)class;
- (void)setParentInfo:(id)info;
@end

@implementation CRLSceneInfo

- (CGRect)savedUnscaledRect
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect);
  v3 = *&self->name[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
  v4 = *&self->name[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
  v5 = *(&self->savedUnscaledRect.origin.x + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

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

  v6 = sub_100809D00(v8);

  sub_1005E09AC(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  type metadata accessor for UUID();
  sub_10006840C(&qword_1019FB870, &type metadata accessor for UUID);
  selfCopy = self;
  dispatch thunk of Hashable.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (BOOL)isSupported
{
  v5 = &type metadata for CRLFeatureFlags;
  v6 = sub_100004D60();
  v4[0] = 20;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v4);
  return v2 & 1;
}

- (CRLCanvasInfoGeometry)geometry
{
  v2 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:*(&self->super.isa + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect) size:{*&self->name[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&self->name[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], *(&self->savedUnscaledRect.origin.x + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect)}];

  return v2;
}

- (Class)layoutClass
{
  sub_10080AD08();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLSceneRep();

  return swift_getObjCClassFromMetadata();
}

- (CRLCanvasElementInfo)parentInfo
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__parentInfo);
  swift_unknownObjectRetain();

  return v4;
}

- (void)setParentInfo:(id)info
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo);
  swift_unknownObjectRetain();
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
}

- (Class)editorClass
{
  swift_getKeyPath();
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo);
  selfCopy = self;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform12CRLSceneInfo__editorClass);

  if (v4)
  {
    return swift_getObjCClassFromMetadata();
  }

  else
  {
    return 0;
  }
}

- (void)setEditorClass:(Class)class
{
  if (class)
  {
    swift_getObjCClassMetadata();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10006840C(&qword_101A02178, type metadata accessor for CRLSceneInfo);
  selfCopy = self;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_10080A790();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC8Freeform12CRLSceneInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end