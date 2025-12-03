@interface ICRealtimeCollaborationSelectionController
- (ICNoteEditorViewController)editorController;
- (ICRealtimeCollaborationController)realtimeCollaborationController;
- (ICRealtimeCollaborationSelectionController)init;
- (void)editorDidChangeSelection:(id)selection;
- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state;
- (void)showSelectionForParticipant:(id)participant;
@end

@implementation ICRealtimeCollaborationSelectionController

- (ICNoteEditorViewController)editorController
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (ICRealtimeCollaborationController)realtimeCollaborationController
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)showSelectionForParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  RealtimeCollaborationSelectionController.showSelection(for:)(participantCopy);
}

- (void)editorDidChangeSelection:(id)selection
{
  v4 = sub_10015DA04(&qword_1006C2530);
  __chkstk_darwin(v4 - 8);
  v6 = (&v13 - v5);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectUnownedLoadStrong();
  selfCopy = self;
  sub_10028F950(v6);
  RealtimeCollaborationController.postLocalSelection(_:asDelta:)(v6, 1);

  sub_1000073B4(v6, &qword_1006C2530);
  (*(v8 + 8))(v10, v7);
}

- (ICRealtimeCollaborationSelectionController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state
{
  selfCopy = self;
  _s11MobileNotes40RealtimeCollaborationSelectionControllerC08realtimedf9DidChangeE5StateyyAA0cdF0CF_0();
}

@end