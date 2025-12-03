@interface ICSelectionStateController
- (BOOL)objectSelectionHasChangedComparedToModel:(id)model;
- (BOOL)selectedContainerEqualTo:(id)to;
- (NSArray)mostRecentSelections;
- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL;
- (_TtC11MobileNotes26ICSelectionStateController)init;
- (_TtP11MobileNotes34ICSelectionStateControllerDelegate_)delegate;
- (id)dataRepresentationWithEditorModel:(id)model;
- (int64_t)activityStreamViewMode;
- (void)adoptCurrentModelWithArchive:(id)archive systemPaperAccountAlert:(BOOL)alert completion:(id)completion;
- (void)adoptDeferredAnimated:(BOOL)animated startEditing:(BOOL)editing;
- (void)adoptInstantNoteModel:(id)model archive:(id)archive;
- (void)adoptModel:(id)model withArchive:(id)archive systemPaperAccountAlert:(BOOL)alert completion:(id)completion;
- (void)clear;
- (void)navigateBackwards;
- (void)navigateForwards;
- (void)navigationControllerDidTransitionWithNewContainerItemID:(id)d newTagSelection:(id)selection forgetObjectSelection:(BOOL)objectSelection;
- (void)openURL:(id)l rootNoteBrowseViewController:(id)controller currentNoteContainerViewMode:(int64_t)mode completion:(id)completion;
- (void)pushAttachmentSelectionWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0;
- (void)pushAutoselectedObjectWithObjectID:(id)d;
- (void)pushContainerSelectionWithObjectID:(id)d;
- (void)pushContainerSelectionWithObjectID:(id)d forceApply:(BOOL)apply noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)animated ensurePresented:(BOOL)self0 ensureSelectedNote:(id)self1 keepEditorShowing:(id)self2 containerSelectionCompletionBlocks:(id)self3;
- (void)pushContainerSelectionWithObjectID:(id)d noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)animated ensurePresented:(BOOL)presented ensureSelectedNote:(id)self0 keepEditorShowing:(id)self1 containerSelectionCompletionBlocks:(id)self2;
- (void)pushInvitationWithObjectID:(id)d animated:(BOOL)animated;
- (void)pushModel:(id)model navigating:(BOOL)navigating;
- (void)pushNoteSelectionWithObjectID:(id)d;
- (void)pushNoteSelectionWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0;
- (void)pushObjectWithObjectID:(id)d;
- (void)pushSearchResult:(id)result animated:(BOOL)animated;
- (void)pushTagSelection:(id)selection;
- (void)setActivityStreamSelection:(id)selection;
- (void)setActivityStreamViewMode:(int64_t)mode;
- (void)setCurrentSelectedSearchResult:(id)result;
- (void)setup;
- (void)setupWithArchive:(id)archive;
- (void)willDismissSearch;
@end

@implementation ICSelectionStateController

- (void)setupWithArchive:(id)archive
{
  archiveCopy = archive;
  selfCopy = self;
  sub_10000D818(archive);
}

- (void)adoptCurrentModelWithArchive:(id)archive systemPaperAccountAlert:(BOOL)alert completion:(id)completion
{
  v8 = _Block_copy(completion);
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

  archiveCopy = archive;
  selfCopy = self;
  sub_100017560(archiveCopy, alert, v8, v9);
  sub_10000C840(v8);
}

- (NSDictionary)currentFirstVisibleObjectIDURLForContainerObjectIDURL
{
  v2 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  selfCopy = self;
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
  selfCopy = self;
  sub_10000D818(0);
}

- (void)adoptModel:(id)model withArchive:(id)archive systemPaperAccountAlert:(BOOL)alert completion:(id)completion
{
  v10 = _Block_copy(completion);
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

  modelCopy = model;
  archiveCopy = archive;
  selfCopy = self;
  sub_1003192FC(modelCopy, archiveCopy, alert, v10, v11);
  sub_10000C840(v10);
}

- (void)adoptDeferredAnimated:(BOOL)animated startEditing:(BOOL)editing
{
  editingCopy = editing;
  animatedCopy = animated;
  selfCopy = self;
  sub_10031965C(animatedCopy, editingCopy);
}

- (void)adoptInstantNoteModel:(id)model archive:(id)archive
{
  modelCopy = model;
  archiveCopy = archive;
  selfCopy = self;
  sub_10031A18C(modelCopy, archiveCopy);
}

- (id)dataRepresentationWithEditorModel:(id)model
{
  selfCopy = self;
  modelCopy = model;
  v6 = sub_10031A40C(model);
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
  selfCopy = self;
  sub_10031A8F0();
}

- (void)pushTagSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_10031AC14(selection);
}

- (void)pushContainerSelectionWithObjectID:(id)d
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10031C510(d);
  swift_unknownObjectRelease();
}

- (void)pushContainerSelectionWithObjectID:(id)d noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)animated ensurePresented:(BOOL)presented ensureSelectedNote:(id)self0 keepEditorShowing:(id)self1 containerSelectionCompletionBlocks:(id)self2
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  contentCopy = content;
  noteCopy = note;
  showingCopy = showing;
  blocksCopy = blocks;
  selfCopy = self;
  sub_10031CA00(d, controller, viewController, loaded, content, animated, presented, note, showing, blocks);
  swift_unknownObjectRelease();
}

- (void)pushContainerSelectionWithObjectID:(id)d forceApply:(BOOL)apply noteBrowseViewController:(id)controller usingRootViewController:(BOOL)viewController deferUntilDataLoaded:(BOOL)loaded dismissOverlayContent:(id)content animated:(BOOL)animated ensurePresented:(BOOL)self0 ensureSelectedNote:(id)self1 keepEditorShowing:(id)self2 containerSelectionCompletionBlocks:(id)self3
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  contentCopy = content;
  noteCopy = note;
  showingCopy = showing;
  blocksCopy = blocks;
  selfCopy = self;
  sub_10031D148(d, apply, controller, viewController, loaded, content, animated, presented, note, showing, blocks);
  swift_unknownObjectRelease();
}

- (void)pushAutoselectedObjectWithObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_10031DA8C(d);
}

- (void)pushNoteSelectionWithObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_100320070(d);
}

- (void)pushNoteSelectionWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0
{
  dCopy = d;
  stateCopy = state;
  selfCopy = self;
  sub_10031E7EC(d, state, editing, picker, content, available, animated, presented);
}

- (void)pushAttachmentSelectionWithObjectID:(id)d scrollState:(id)state startEditing:(BOOL)editing showInkPicker:(BOOL)picker dismissOverlayContent:(BOOL)content showLatestUpdatesIfAvailable:(BOOL)available animated:(BOOL)animated ensurePresented:(BOOL)self0
{
  dCopy = d;
  stateCopy = state;
  selfCopy = self;
  sub_10031F2AC(d, state, editing, picker, content, available, animated, presented);
}

- (void)pushInvitationWithObjectID:(id)d animated:(BOOL)animated
{
  dCopy = d;
  selfCopy = self;
  sub_10031FA1C(d, animated);
}

- (void)pushObjectWithObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_100322180(d);
}

- (void)navigationControllerDidTransitionWithNewContainerItemID:(id)d newTagSelection:(id)selection forgetObjectSelection:(BOOL)objectSelection
{
  swift_unknownObjectRetain();
  selectionCopy = selection;
  selfCopy = self;
  sub_100322B58(d, selection, objectSelection);
  swift_unknownObjectRelease();
}

- (void)pushSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  selfCopy = self;
  sub_100323584(resultCopy, animatedCopy);
}

- (void)pushModel:(id)model navigating:(BOOL)navigating
{
  modelCopy = model;
  selfCopy = self;
  sub_100324D08(model, navigating);
}

- (void)willDismissSearch
{
  selfCopy = self;
  sub_100325104();
}

- (void)openURL:(id)l rootNoteBrowseViewController:(id)controller currentNoteContainerViewMode:(int64_t)mode completion:(id)completion
{
  v10 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  if (l)
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

  controllerCopy = controller;
  selfCopy = self;
  sub_10032B47C(v12, controller, v13, v16);
  sub_10000C840(v13);

  sub_1000073B4(v12, &qword_1006BCC20);
}

- (void)navigateBackwards
{
  selfCopy = self;
  sub_10032612C();
}

- (void)navigateForwards
{
  selfCopy = self;
  sub_10032666C();
}

- (void)setActivityStreamSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_100327724(selection);
}

- (int64_t)activityStreamViewMode
{
  v2 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  selfCopy = self;
  v4 = v2;
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (void)setActivityStreamViewMode:(int64_t)mode
{
  selfCopy = self;
  sub_100327AB4(mode);
}

- (void)setCurrentSelectedSearchResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_100327DB4(result);
}

- (BOOL)objectSelectionHasChangedComparedToModel:(id)model
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  modelCopy = model;
  selfCopy = self;
  v7 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return v9;
}

- (BOOL)selectedContainerEqualTo:(id)to
{
  v4 = *(self + OBJC_IVAR____TtC11MobileNotes26ICSelectionStateController_selectionStateAccessQueue);
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  swift_unknownObjectRelease();
  return v8;
}

- (NSArray)mostRecentSelections
{
  selfCopy = self;
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