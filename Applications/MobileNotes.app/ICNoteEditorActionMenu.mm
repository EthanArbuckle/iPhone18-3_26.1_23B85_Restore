@interface ICNoteEditorActionMenu
+ (id)deferredActionMenuElementWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion;
+ (id)menuWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children delegate:(id)delegate completion:(id)self0;
+ (id)menuWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)aBlock;
- (ICNAEventReporter)eventReporter;
- (ICNoteEditorActionMenu)init;
- (ICNoteEditorActionMenu)initWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)aBlock;
- (ICNoteEditorActionMenuDelegate)delegate;
- (ICViewControllerManager)viewControllerManager;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)menuSections;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)setCompletion:(id)completion;
- (void)setInvitation:(id)invitation;
- (void)setNote:(id)note;
- (void)setPresentingBarButtonItem:(id)item;
- (void)willShowMenu;
@end

@implementation ICNoteEditorActionMenu

+ (id)deferredActionMenuElementWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion
{
  v13 = _Block_copy(completion);
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_1002CBA88;
  }

  else
  {
    v14 = 0;
  }

  noteCopy = note;
  invitationCopy = invitation;
  controllerCopy = controller;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v19 = sub_10001D0F0(note, invitation, controllerCopy, managerCopy, delegate, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();

  return v19;
}

- (void)setNote:(id)note
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_note);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_note) = note;
  noteCopy = note;
}

- (void)setInvitation:(id)invitation
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_invitation);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_invitation) = invitation;
  invitationCopy = invitation;
}

- (ICNoteEditorActionMenuDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICNAEventReporter)eventReporter
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      eventReporter = [v4 eventReporter];
    }

    else
    {
      eventReporter = 0;
    }
  }

  else
  {
    eventReporter = 0;
  }

  return eventReporter;
}

- (ICNoteEditorActionMenu)initWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_1002CBA88;
  }

  else
  {
    v15 = 0;
  }

  noteCopy = note;
  invitationCopy = invitation;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v19 = sub_10046FDCC(note, invitation, controllerCopy, item, managerCopy, delegate, v14, v15);
  sub_10000C840(v14);

  swift_unknownObjectRelease();
  return v19;
}

+ (id)menuWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_1002CBA88;
  }

  else
  {
    v16 = 0;
  }

  noteCopy = note;
  invitationCopy = invitation;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v21 = sub_10046FF80(note, invitation, controllerCopy, item, managerCopy, delegate, v15, v16);
  sub_10000C840(v15);

  swift_unknownObjectRelease();

  return v21;
}

+ (id)menuWithNote:(id)note invitation:(id)invitation presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children delegate:(id)delegate completion:(id)self0
{
  v15 = _Block_copy(completion);
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v15 = sub_1002CBA88;
  }

  else
  {
    v16 = 0;
  }

  noteCopy = note;
  invitationCopy = invitation;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v21 = sub_100470168(note, invitation, controllerCopy, item, managerCopy, children, delegate, v15, v16);
  sub_10000C840(v15);

  swift_unknownObjectRelease();

  return v21;
}

- (id)completion
{
  if (*(self + OBJC_IVAR___ICNoteEditorActionMenu_completion))
  {
    v2 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_completion + 8);
    v5[4] = *(self + OBJC_IVAR___ICNoteEditorActionMenu_completion);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10017C07C;
    v5[3] = &unk_10065EF88;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10028D0C0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___ICNoteEditorActionMenu_completion);
  v8 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_completion);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentingBarButtonItem:(id)item
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem) = item;
  itemCopy = item;
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willShowMenu
{
  selfCopy = self;
  sub_10046C16C();
}

- (id)menuSections
{
  selfCopy = self;
  sub_10046C324();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (ICNoteEditorActionMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  sub_100470364(v6);
}

@end