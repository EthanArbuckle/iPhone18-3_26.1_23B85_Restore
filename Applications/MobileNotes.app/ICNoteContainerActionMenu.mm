@interface ICNoteContainerActionMenu
+ (id)menuWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
+ (id)menuWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children completion:(id)completion;
+ (id)menuWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
+ (id)menuWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children completion:(id)completion;
- (ICNAEventReporter)eventReporter;
- (ICNoteContainerActionMenu)init;
- (ICNoteContainerActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (ICNoteContainerActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion;
- (ICViewControllerManager)viewControllerManager;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)debugSectionMenu;
- (id)mainSectionMenu;
- (id)menuSections;
- (id)smartFolderSectionMenu;
- (void)setCompletion:(id)completion;
- (void)setContext:(id)context;
- (void)setRecentlyDeletedMathNotesFolder:(id)folder;
@end

@implementation ICNoteContainerActionMenu

- (void)setContext:(id)context
{
  v4 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_context);
  *(self + OBJC_IVAR___ICNoteContainerActionMenu_context) = context;
  contextCopy = context;
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

- (void)setRecentlyDeletedMathNotesFolder:(id)folder
{
  v4 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder);
  *(self + OBJC_IVAR___ICNoteContainerActionMenu_recentlyDeletedMathNotesFolder) = folder;
  folderCopy = folder;
}

- (ICViewControllerManager)viewControllerManager
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICNoteContainerActionMenu)initWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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

  containerCopy = container;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = sub_10039740C(containerCopy, controllerCopy, item, managerCopy, v11, v12);
  sub_10000C840(v11);

  return v17;
}

+ (id)menuWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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
  containerCopy = container;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = containerCopy;
  v18 = controllerCopy;
  v19 = itemCopy;
  v20 = managerCopy;
  sub_100010854(v11);
  v21 = v24(v17, v18, item, v20, v11, v12);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v22.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  sub_10000C840(v11);

  return v22.super.super.isa;
}

+ (id)menuWithNoteContainer:(id)container presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children completion:(id)completion
{
  v12 = _Block_copy(completion);
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
  containerCopy = container;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v18 = containerCopy;
  v19 = controllerCopy;
  v20 = itemCopy;
  v21 = managerCopy;
  sub_100010854(v12);
  v22 = v25(v18, v19, item, v21, v12, v13);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v23.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(children).super.super.isa;

  sub_10000C840(v12);

  return v23.super.super.isa;
}

- (ICNoteContainerActionMenu)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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

  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = sub_1003975A0(folderCopy, controllerCopy, item, managerCopy, v11, v12);
  sub_10000C840(v11);

  return v17;
}

+ (id)menuWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager completion:(id)completion
{
  v11 = _Block_copy(completion);
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
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v17 = folderCopy;
  v18 = controllerCopy;
  v19 = itemCopy;
  v20 = managerCopy;
  sub_100010854(v11);
  v21 = v24(v17, v18, item, v20, v11, v12);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v22.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(1).super.super.isa;

  sub_10000C840(v11);

  return v22.super.super.isa;
}

+ (id)menuWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children completion:(id)completion
{
  v12 = _Block_copy(completion);
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
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  v18 = folderCopy;
  v19 = controllerCopy;
  v20 = itemCopy;
  v21 = managerCopy;
  sub_100010854(v12);
  v22 = v25(v18, v19, item, v21, v12, v13);
  type metadata accessor for NoteContainerActionMenu();
  sub_100397734();
  v23.super.super.isa = ActionMenuProvider.makeMenu(deferredChildren:)(children).super.super.isa;

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

  v7 = (self + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  v8 = *(self + OBJC_IVAR___ICNoteContainerActionMenu_completion);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_10000C840(v8);
}

- (id)menuSections
{
  selfCopy = self;
  sub_100393518();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)mainSectionMenu
{
  selfCopy = self;
  v3 = sub_100393814();

  return v3;
}

- (id)smartFolderSectionMenu
{
  selfCopy = self;
  v3 = sub_10039373C();

  return v3;
}

- (id)debugSectionMenu
{
  selfCopy = self;
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