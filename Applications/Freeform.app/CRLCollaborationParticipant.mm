@interface CRLCollaborationParticipant
- (BOOL)isActive;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelf;
- (NSArray)presences;
- (NSPersonNameComponents)nameComponents;
- (NSSet)isFollowedBy;
- (NSString)personName;
- (NSUUID)id;
- (_TtC8Freeform23CRLCollaboratorPresence)latestPresence;
- (_TtC8Freeform23CRLCollaboratorPresence)localPresence;
- (_TtC8Freeform23CRLCollaboratorPresence)oldestPresence;
- (_TtC8Freeform27CRLCollaborationParticipant)init;
- (id)collaboratorColorForType:(int64_t)a3;
- (id)contact;
- (id)presenceWith:(id)a3;
- (int64_t)collaboratorColorIndex;
- (void)populateContactIfNeeded;
- (void)populateContactInBackgroundWithCompletionHandler:(id)a3;
- (void)removePresenceWith:(id)a3;
- (void)setCnContact:(id)a3;
- (void)setIsFollowedBy:(id)a3;
- (void)setIsFollowing:(id)a3;
- (void)setPresences:(id)a3;
- (void)updateCachedCollaboratorColors;
@end

@implementation CRLCollaborationParticipant

- (void)setCnContact:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  *(self + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact) = a3;
  v3 = a3;
}

- (void)setIsFollowing:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1007D39D8(a3);
}

- (NSSet)isFollowedBy
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1007E03E8(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant);
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setIsFollowedBy:(id)a3
{
  type metadata accessor for CRLCollaborationParticipant(0);
  sub_1007E03E8(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSArray)presences
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  type metadata accessor for CRLCollaboratorPresence();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setPresences:(id)a3
{
  type metadata accessor for CRLCollaboratorPresence();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
  sub_1007D40B4();
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

  v6 = sub_1007D4BE0(v8);

  sub_10000CAAC(v8, &unk_1019F4D00);
  return v6;
}

- (void)removePresenceWith:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1007D5BB0(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)presenceWith:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = self;
  static Published.subscript.getter();

  v12 = v7;
  v9 = sub_101107CA8(sub_1007E1894, v11, v13);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (BOOL)isActive
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  if (v6 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != 0;
}

- (_TtC8Freeform23CRLCollaboratorPresence)latestPresence
{
  v2 = self;
  v3 = sub_1007D608C();

  return v3;
}

- (_TtC8Freeform23CRLCollaboratorPresence)oldestPresence
{
  v2 = self;
  v3 = sub_1007D63F0();

  return v3;
}

- (_TtC8Freeform23CRLCollaboratorPresence)localPresence
{
  v2 = self;
  v3 = sub_1007D6520();

  return v3;
}

- (void)populateContactInBackgroundWithCompletionHandler:(id)a3
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100685EBC;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  static TaskPriority.background.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  type metadata accessor for MainActor();
  v12 = v10;
  sub_10067F2EC(v8);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  v14[5] = v8;
  v14[6] = v9;
  sub_10064191C(0, 0, v7, &unk_10147CF30, v14);

  sub_1000C1014(v8);
}

- (void)populateContactIfNeeded
{
  v2 = self;
  sub_1007D6930();
}

- (id)contact
{
  v2 = self;
  sub_1007D6930();
  v3 = *(v2 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact);
  v4 = v3;

  return v3;
}

- (BOOL)isSelf
{
  v2 = self;
  v3 = sub_1007D6C84();

  return v3 & 1;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  sub_1007D6EB8(v5);

  v7 = type metadata accessor for PersonNameComponents();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (NSString)personName
{
  v2 = self;
  sub_1007D778C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC8Freeform27CRLCollaborationParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)collaboratorColorIndex
{
  v2 = self;
  v3 = sub_1007D842C();

  return v3;
}

- (id)collaboratorColorForType:(int64_t)a3
{
  v4 = self;
  v5 = sub_1007D8530(a3);

  return v5;
}

- (void)updateCachedCollaboratorColors
{
  v2 = self;
  sub_1007D8808();
}

@end