@interface CRLFollowCoordinator
- (BOOL)isFollowing;
- (NSArray)crlaxCurrentICCs;
- (NSSet)participantsFollowingLocalParticipant;
- (NSUUID)expectingViewportFromUUID;
- (_TtC8Freeform27CRLCollaborationParticipant)followingParticipant;
- (_TtC8Freeform27CRLCollaborationParticipant)localParticipant;
- (_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator)accessibilityExperienceCoordinator;
- (void)addInteractiveCanvasController:(id)a3;
- (void)addUIDelegate:(id)a3;
- (void)canvasDidZoomOrScrollWhileFollowingNotification:(id)a3;
- (void)crlaxEndFollowingForCanvasScrollIfNeeded;
- (void)crlaxNotifyFollowFeatureOfBenignScrollViewDidScrollEvent;
- (void)dealloc;
- (void)deviceDidRotateWhileFollowingNotification:(id)a3;
- (void)didProcessViewportUpdates;
- (void)endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:(BOOL)a3;
- (void)groupSessionPresenceWasAddedWithNotification:(id)a3;
- (void)localParticipantWantsToStartFollowingCollaborator:(id)a3;
- (void)localParticipantWantsToStartFollowingCollaborator:(id)a3 isRefollow:(BOOL)a4;
- (void)removeInteractiveCanvasController:(id)a3;
- (void)removeUIDelegate:(id)a3;
- (void)selectionPathDidChangeWithNotification:(id)a3;
- (void)sendUpdateIfNeeded;
- (void)setAccessibilityExperienceCoordinator:(id)a3;
- (void)setExpectingViewportForOneTimeScrollFrom:(id)a3;
- (void)setExpectingViewportFromUUID:(id)a3;
- (void)setFollowingParticipant:(id)a3;
- (void)willProcessViewportUpdates;
@end

@implementation CRLFollowCoordinator

- (BOOL)isFollowing
{
  v2 = self;
  v3 = sub_1008FB7A4();

  return v3 & 1;
}

- (_TtC8Freeform27CRLCollaborationParticipant)followingParticipant
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setFollowingParticipant:(id)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = self;
  static Published.subscript.setter();
}

- (_TtC8Freeform27CRLCollaborationParticipant)localParticipant
{
  v2 = self;
  v3 = sub_1008FBA1C();

  return v3;
}

- (NSSet)participantsFollowingLocalParticipant
{
  v2 = self;
  sub_1008FBCE0();

  type metadata accessor for CRLCollaborationParticipant(0);
  sub_10090F834(&qword_101A00E38, type metadata accessor for CRLCollaborationParticipant);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (NSUUID)expectingViewportFromUUID
{
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  swift_beginAccess();
  sub_10000BE14(self + v6, v5, &qword_1019F6990);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setExpectingViewportFromUUID:(id)a3
{
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  swift_beginAccess();
  v11 = self;
  sub_10002C638(v7, self + v10, &qword_1019F6990);
  swift_endAccess();
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLFollowCoordinator();
  [(CRLFollowCoordinator *)&v5 dealloc];
}

- (void)addInteractiveCanvasController:(id)a3
{
  v4 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
  v5 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers);
  v8 = a3;
  v6 = self;
  if ([v5 containsObject:v8])
  {
    v7 = v8;
    v8 = v6;
  }

  else
  {
    [*(self + v4) addObject:v8];
    v7 = v6;
  }
}

- (void)removeInteractiveCanvasController:(id)a3
{
  v4 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
  v5 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers);
  v8 = a3;
  v6 = self;
  if ([v5 containsObject:v8])
  {
    [*(self + v4) removeObject:v8];
    v7 = v6;
  }

  else
  {
    v7 = v8;
    v8 = v6;
  }
}

- (void)addUIDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
  v6 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates);
  swift_unknownObjectRetain();
  v7 = self;
  if ([v6 containsObject:a3])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    [*(self + v5) addObject:a3];

    swift_unknownObjectRelease();
  }
}

- (void)removeUIDelegate:(id)a3
{
  v5 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
  v6 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates);
  swift_unknownObjectRetain();
  v7 = self;
  if ([v6 containsObject:a3])
  {
    [*(self + v5) removeObject:a3];

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (void)endFollowSessionForLocalParticipantWithShouldShowRefollowPlacard:(BOOL)a3
{
  v4 = self;
  sub_1008FEE94(a3);
}

- (void)localParticipantWantsToStartFollowingCollaborator:(id)a3 isRefollow:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_100900650(v6, v4);
}

- (void)localParticipantWantsToStartFollowingCollaborator:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100900650(v4, 0);
}

- (void)selectionPathDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10090FA78();
}

- (void)deviceDidRotateWhileFollowingNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10090FB9C();
}

- (void)canvasDidZoomOrScrollWhileFollowingNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10090FC64();
}

- (void)sendUpdateIfNeeded
{
  if (*(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
  {
    v3 = self;
    sub_1009056EC(0, 1);
  }
}

- (void)groupSessionPresenceWasAddedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100909550(v4);
}

- (void)willProcessViewportUpdates
{
  v2 = self;
  sub_100909C00();
}

- (void)didProcessViewportUpdates
{
  v2 = self;
  sub_10090A820();
}

- (void)setExpectingViewportForOneTimeScrollFrom:(id)a3
{
  v5 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  sub_10063FD1C(v13, v10);
  v16 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  swift_beginAccess();
  v17 = self;
  sub_10002C638(v10, self + v16, &qword_1019F6990);
  swift_endAccess();
  v18 = type metadata accessor for CRLFollowViewportState();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply;
  swift_beginAccess();
  sub_10002C638(v7, v17 + v19, &qword_101A07B80);
  swift_endAccess();
}

- (void)crlaxNotifyFollowFeatureOfBenignScrollViewDidScrollEvent
{
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = self;
  static Date.now.getter();
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_crlaxFollowFeatureLastScrollTimestamp;
  swift_beginAccess();
  sub_10002C638(v5, v6 + v8, &qword_101A0A320);
  swift_endAccess();
}

- (_TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator)accessibilityExperienceCoordinator
{
  v2 = self;
  v3 = sub_10090E86C();

  return v3;
}

- (void)setAccessibilityExperienceCoordinator:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator);
  *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator) = a3;
  v3 = a3;
}

- (NSArray)crlaxCurrentICCs
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers);
  v3 = self;
  isa = [v2 allObjects];
  if (!isa)
  {
    sub_100006370(0, &qword_1019F8508);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)crlaxEndFollowingForCanvasScrollIfNeeded
{
  v2 = self;
  sub_10090E9DC();
}

@end