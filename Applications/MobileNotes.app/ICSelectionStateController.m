@interface ICSelectionStateController
- (BOOL)objectSelectionHasChangedComparedToModel:(id)a3;
- (BOOL)selectedContainerEqualTo:(id)a3;
- (NSArray)mostRecentSelections;
- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL;
- (_TtC11MobileNotes26ICSelectionStateController)init;
- (_TtP11MobileNotes34ICSelectionStateControllerDelegate_)delegate;
- (id)dataRepresentationWithEditorModel:(id)a3;
- (int64_t)activityStreamViewMode;
- (void)adoptCurrentModelWithArchive:(id)a3 systemPaperAccountAlert:(BOOL)a4 completion:(id)a5;
- (void)adoptDeferredAnimated:(BOOL)a3 startEditing:(BOOL)a4;
- (void)adoptInstantNoteModel:(id)a3 archive:(id)a4;
- (void)adoptModel:(id)a3 withArchive:(id)a4 systemPaperAccountAlert:(BOOL)a5 completion:(id)a6;
- (void)clear;
- (void)navigateBackwards;
- (void)navigateForwards;
- (void)navigationControllerDidTransitionWithNewContainerItemID:(id)a3 newTagSelection:(id)a4 forgetObjectSelection:(BOOL)a5;
- (void)openURL:(id)a3 rootNoteBrowseViewController:(id)a4 currentNoteContainerViewMode:(int64_t)a5 completion:(id)a6;
- (void)pushAttachmentSelectionWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10;
- (void)pushAutoselectedObjectWithObjectID:(id)a3;
- (void)pushContainerSelectionWithObjectID:(id)a3;
- (void)pushContainerSelectionWithObjectID:(id)a3 forceApply:(BOOL)a4 noteBrowseViewController:(id)a5 usingRootViewController:(BOOL)a6 deferUntilDataLoaded:(BOOL)a7 dismissOverlayContent:(id)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10 ensureSelectedNote:(id)a11 keepEditorShowing:(id)a12 containerSelectionCompletionBlocks:(id)a13;
- (void)pushContainerSelectionWithObjectID:(id)a3 noteBrowseViewController:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(id)a7 animated:(BOOL)a8 ensurePresented:(BOOL)a9 ensureSelectedNote:(id)a10 keepEditorShowing:(id)a11 containerSelectionCompletionBlocks:(id)a12;
- (void)pushInvitationWithObjectID:(id)a3 animated:(BOOL)a4;
- (void)pushModel:(id)a3 navigating:(BOOL)a4;
- (void)pushNoteSelectionWithObjectID:(id)a3;
- (void)pushNoteSelectionWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10;
- (void)pushObjectWithObjectID:(id)a3;
- (void)pushSearchResult:(id)a3 animated:(BOOL)a4;
- (void)pushTagSelection:(id)a3;
- (void)setActivityStreamSelection:(id)a3;
- (void)setActivityStreamViewMode:(int64_t)a3;
- (void)setCurrentSelectedSearchResult:(id)a3;
- (void)setup;
- (void)setupWithArchive:(id)a3;
- (void)willDismissSearch;
@end

@implementation ICSelectionStateController

- (void)setupWithArchive:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000D818(a3);
}

- (void)adoptCurrentModelWithArchive:(id)a3 systemPaperAccountAlert:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1002B5F50;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = self;
  sub_100017560(v10, a4, v8, v9);
  sub_10000C840(v8);
}

- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL
{
  v2 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  v3 = self;
  v4 = v2;
  sub_10015DA04(&unk_1006C42E0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v7)
  {
    type metadata accessor for URL();
    sub_10000BF3C(&qword_1006C07C0, &type metadata accessor for URL);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (_TtP11MobileNotes34ICSelectionStateControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setup
{
  v2 = self;
  sub_10000D818(0);
}

- (void)adoptModel:(id)a3 withArchive:(id)a4 systemPaperAccountAlert:(BOOL)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_1001C57CC;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1003192FC(v12, v13, a5, v10, v11);
  sub_10000C840(v10);
}

- (void)adoptDeferredAnimated:(BOOL)a3 startEditing:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = self;
  sub_10031965C(v5, v4);
}

- (void)adoptInstantNoteModel:(id)a3 archive:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10031A18C(v6, v7);
}

- (id)dataRepresentationWithEditorModel:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = sub_10031A40C(a3);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1001C60E4(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (void)clear
{
  v2 = self;
  sub_10031A8F0();
}

- (void)pushTagSelection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10031AC14(a3);
}

- (void)pushContainerSelectionWithObjectID:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10031C510(a3);
  swift_unknownObjectRelease();
}

- (void)pushContainerSelectionWithObjectID:(id)a3 noteBrowseViewController:(id)a4 usingRootViewController:(BOOL)a5 deferUntilDataLoaded:(BOOL)a6 dismissOverlayContent:(id)a7 animated:(BOOL)a8 ensurePresented:(BOOL)a9 ensureSelectedNote:(id)a10 keepEditorShowing:(id)a11 containerSelectionCompletionBlocks:(id)a12
{
  swift_unknownObjectRetain();
  v21 = a4;
  v20 = a7;
  v16 = a10;
  v17 = a11;
  v18 = a12;
  v19 = self;
  sub_10031CA00(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  swift_unknownObjectRelease();
}

- (void)pushContainerSelectionWithObjectID:(id)a3 forceApply:(BOOL)a4 noteBrowseViewController:(id)a5 usingRootViewController:(BOOL)a6 deferUntilDataLoaded:(BOOL)a7 dismissOverlayContent:(id)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10 ensureSelectedNote:(id)a11 keepEditorShowing:(id)a12 containerSelectionCompletionBlocks:(id)a13
{
  swift_unknownObjectRetain();
  v22 = a5;
  v21 = a8;
  v17 = a11;
  v18 = a12;
  v19 = a13;
  v20 = self;
  sub_10031D148(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  swift_unknownObjectRelease();
}

- (void)pushAutoselectedObjectWithObjectID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10031DA8C(a3);
}

- (void)pushNoteSelectionWithObjectID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100320070(a3);
}

- (void)pushNoteSelectionWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = self;
  sub_10031E7EC(a3, a4, a5, a6, a7, a8, a9, a10);
}

- (void)pushAttachmentSelectionWithObjectID:(id)a3 scrollState:(id)a4 startEditing:(BOOL)a5 showInkPicker:(BOOL)a6 dismissOverlayContent:(BOOL)a7 showLatestUpdatesIfAvailable:(BOOL)a8 animated:(BOOL)a9 ensurePresented:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = self;
  sub_10031F2AC(a3, a4, a5, a6, a7, a8, a9, a10);
}

- (void)pushInvitationWithObjectID:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_10031FA1C(a3, a4);
}

- (void)pushObjectWithObjectID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100322180(a3);
}

- (void)navigationControllerDidTransitionWithNewContainerItemID:(id)a3 newTagSelection:(id)a4 forgetObjectSelection:(BOOL)a5
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  sub_100322B58(a3, a4, a5);
  swift_unknownObjectRelease();
}

- (void)pushSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_100323584(v6, v4);
}

- (void)pushModel:(id)a3 navigating:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_100324D08(a3, a4);
}

- (void)willDismissSearch
{
  v2 = self;
  sub_100325104();
}

- (void)openURL:(id)a3 rootNoteBrowseViewController:(id)a4 currentNoteContainerViewMode:(int64_t)a5 completion:(id)a6
{
  v10 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a6);
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v13 = sub_1001C57D4;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4;
  v18 = self;
  sub_10032B47C(v12, a4, v13, v16);
  sub_10000C840(v13);

  sub_1000073B4(v12, &qword_1006BCC20);
}

- (void)navigateBackwards
{
  v2 = self;
  sub_10032612C();
}

- (void)navigateForwards
{
  v2 = self;
  sub_10032666C();
}

- (void)setActivityStreamSelection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100327724(a3);
}

- (int64_t)activityStreamViewMode
{
  v2 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  v3 = self;
  v4 = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (void)setActivityStreamViewMode:(int64_t)a3
{
  v4 = self;
  sub_100327AB4(a3);
}

- (void)setCurrentSelectedSearchResult:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100327DB4(a3);
}

- (BOOL)objectSelectionHasChangedComparedToModel:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  v5 = a3;
  v6 = self;
  v7 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return v9;
}

- (BOOL)selectedContainerEqualTo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  swift_unknownObjectRetain();
  v5 = self;
  v6 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  swift_unknownObjectRelease();
  return v8;
}

- (NSArray)mostRecentSelections
{
  v2 = self;
  sub_100329550();

  type metadata accessor for ICSelectionStateModel(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_TtC11MobileNotes26ICSelectionStateController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end