@interface ICNoteEditorActionMenu
+ (id)deferredActionMenuElementWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8;
+ (id)menuWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 deferredChildren:(BOOL)a8 delegate:(id)a9 completion:(id)a10;
+ (id)menuWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 delegate:(id)a8 completion:(id)aBlock;
- (ICNAEventReporter)eventReporter;
- (ICNoteEditorActionMenu)init;
- (ICNoteEditorActionMenu)initWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 delegate:(id)a8 completion:(id)aBlock;
- (ICNoteEditorActionMenuDelegate)delegate;
- (ICViewControllerManager)viewControllerManager;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)menuSections;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)setCompletion:(id)a3;
- (void)setInvitation:(id)a3;
- (void)setNote:(id)a3;
- (void)setPresentingBarButtonItem:(id)a3;
- (void)willShowMenu;
@end

@implementation ICNoteEditorActionMenu

+ (id)deferredActionMenuElementWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
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

  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  swift_unknownObjectRetain();
  v19 = sub_10001D0F0(a3, a4, v17, v18, a7, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();

  return v19;
}

- (void)setNote:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_note);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_note) = a3;
  v3 = a3;
}

- (void)setInvitation:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_invitation);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_invitation) = a3;
  v3 = a3;
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
      v5 = [v4 eventReporter];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICNoteEditorActionMenu)initWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 delegate:(id)a8 completion:(id)aBlock
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

  v22 = a3;
  v21 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  swift_unknownObjectRetain();
  v19 = sub_10046FDCC(a3, a4, v16, a6, v18, a8, v14, v15);
  sub_10000C840(v14);

  swift_unknownObjectRelease();
  return v19;
}

+ (id)menuWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 delegate:(id)a8 completion:(id)aBlock
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

  v23 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  swift_unknownObjectRetain();
  v21 = sub_10046FF80(a3, a4, v18, a6, v20, a8, v15, v16);
  sub_10000C840(v15);

  swift_unknownObjectRelease();

  return v21;
}

+ (id)menuWithNote:(id)a3 invitation:(id)a4 presentingViewController:(id)a5 presentingBarButtonItem:(id)a6 viewControllerManager:(id)a7 deferredChildren:(BOOL)a8 delegate:(id)a9 completion:(id)a10
{
  v15 = _Block_copy(a10);
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

  v23 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  swift_unknownObjectRetain();
  v21 = sub_100470168(a3, a4, v18, a6, v20, a8, a9, v15, v16);
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

- (void)setCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_10000C840(v8);
}

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentingBarButtonItem:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem);
  *(self + OBJC_IVAR___ICNoteEditorActionMenu_presentingBarButtonItem) = a3;
  v3 = a3;
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)willShowMenu
{
  v2 = self;
  sub_10046C16C();
}

- (id)menuSections
{
  v2 = self;
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

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_100470364(v6);
}

@end