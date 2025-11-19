@interface ICNoteContainerActionMenu
+ (id)menuWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
+ (id)menuWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 completion:(id)a8;
+ (id)menuWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
+ (id)menuWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 completion:(id)a8;
- (ICNAEventReporter)eventReporter;
- (ICNoteContainerActionMenu)init;
- (ICNoteContainerActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (ICNoteContainerActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7;
- (ICViewControllerManager)viewControllerManager;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)debugSectionMenu;
- (id)mainSectionMenu;
- (id)menuSections;
- (id)smartFolderSectionMenu;
- (void)setCompletion:(id)a3;
- (void)setContext:(id)a3;
- (void)setRecentlyDeletedMathNotesFolder:(id)a3;
@end

@implementation ICNoteContainerActionMenu

- (void)setContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_context);
  *(self + OBJC_IVAR___ICNoteContainerActionMenu_context) = a3;
  v3 = a3;
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

- (void)setRecentlyDeletedMathNotesFolder:(id)a3
{
  v4 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder);
  *(self + OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder) = a3;
  v3 = a3;
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICNoteContainerActionMenu)initWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1002CBA88;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = sub_10039740C(v13, v14, a5, v16, v11, v12);
  sub_10000C840(v11);

  return v17;
}

+ (id)menuWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1002CBA88;
  }

  else
  {
    v12 = 0;
  }

  v24 = *(swift_getObjCClassMetadata() + 240);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_100010854(v11);
  v21 = v24(v17, v18, a5, v20, v11, v12);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v22.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  sub_10000C840(v11);

  return v22.super.super.isa;
}

+ (id)menuWithNoteContainer:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1002CBA88;
  }

  else
  {
    v13 = 0;
  }

  v25 = *(swift_getObjCClassMetadata() + 240);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  sub_100010854(v12);
  v22 = v25(v18, v19, a5, v21, v12, v13);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v23.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(a7).super.super.isa;

  sub_10000C840(v12);

  return v23.super.super.isa;
}

- (ICNoteContainerActionMenu)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1002CBA88;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = sub_1003975A0(v13, v14, a5, v16, v11, v12);
  sub_10000C840(v11);

  return v17;
}

+ (id)menuWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1002CBA88;
  }

  else
  {
    v12 = 0;
  }

  v24 = *(swift_getObjCClassMetadata() + 248);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  sub_100010854(v11);
  v21 = v24(v17, v18, a5, v20, v11, v12);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v22.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  sub_10000C840(v11);

  return v22.super.super.isa;
}

+ (id)menuWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_1002CBA88;
  }

  else
  {
    v13 = 0;
  }

  v25 = *(swift_getObjCClassMetadata() + 248);
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  sub_100010854(v12);
  v22 = v25(v18, v19, a5, v21, v12, v13);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v23.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(a7).super.super.isa;

  sub_10000C840(v12);

  return v23.super.super.isa;
}

- (UIViewController)presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)completion
{
  if (*(self + OBJC_IVAR___ICNoteContainerActionMenu_completion))
  {
    v2 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_completion + 8);
    v5[4] = *(self + OBJC_IVAR___ICNoteContainerActionMenu_completion);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10017C07C;
    v5[3] = &unk_100659A40;
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

  v7 = (self + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  v8 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_10000C840(v8);
}

- (id)menuSections
{
  v2 = self;
  sub_100393518();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)mainSectionMenu
{
  v2 = self;
  v3 = sub_100393814();

  return v3;
}

- (id)smartFolderSectionMenu
{
  v2 = self;
  v3 = sub_10039373C();

  return v3;
}

- (id)debugSectionMenu
{
  v2 = self;
  v3 = sub_100393A14();

  return v3;
}

- (ICNoteContainerActionMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end