@interface CRLCollaboratorPresence
- (BOOL)isEqual:(id)equal;
- (NSDate)lastCursorUpdateTime;
- (NSString)description;
- (_TtC8Freeform23CRLCollaboratorPresence)init;
- (_TtC8Freeform23CRLCollaboratorPresence)initWithOwner:(id)owner presenceUUID:(id)d joinTime:(id)time isLocal:(BOOL)local;
- (_TtC8Freeform27CRLCollaborationParticipant)owner;
- (id)collaboratorColorForType:(int64_t)type;
- (id)collaboratorColorName;
- (int64_t)hash;
- (void)setCollaboratorColorIndex:(int64_t)index;
- (void)setLastCursorUpdateTime:(id)time;
@end

@implementation CRLCollaboratorPresence

- (NSDate)lastCursorUpdateTime
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setLastCursorUpdateTime:(id)time
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (_TtC8Freeform27CRLCollaborationParticipant)owner
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC8Freeform23CRLCollaboratorPresence)initWithOwner:(id)owner presenceUUID:(id)d joinTime:(id)time isLocal:(BOOL)local
{
  localCopy = local;
  v8 = type metadata accessor for Date();
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  ownerCopy = owner;
  v15 = sub_1006C2108(ownerCopy, v13, v10, localCopy);

  return v15;
}

- (NSString)description
{
  selfCopy = self;
  sub_1006C1AD4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
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

  v6 = sub_1006C1C14(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = UUID.hashValue.getter();

  return v3;
}

- (void)setCollaboratorColorIndex:(int64_t)index
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex);
  *(self + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex) = index;
  if (v4 != index)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong updateCachedCollaboratorColors];
  }
}

- (id)collaboratorColorForType:(int64_t)type
{
  v3 = sub_1009A2AC0(type, *(self + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex));

  return v3;
}

- (id)collaboratorColorName
{
  sub_1009A31FC(*(self + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex));

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8Freeform23CRLCollaboratorPresence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end