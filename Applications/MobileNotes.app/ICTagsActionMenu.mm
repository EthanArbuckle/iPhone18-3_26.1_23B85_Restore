@interface ICTagsActionMenu
+ (id)menuWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children delegate:(id)delegate completion:(id)aBlock;
+ (id)menuWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion;
- (ICNAEventReporter)eventReporter;
- (ICTagsActionMenu)init;
- (ICTagsActionMenu)initWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion;
- (ICTagsActionMenuDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)menuSections;
- (void)setCompletion:(id)completion;
- (void)setPresentingBarButtonItem:(id)item;
@end

@implementation ICTagsActionMenu

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

- (ICTagsActionMenuDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICTagsActionMenu)initWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion
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

  selectionCopy = selection;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v19 = sub_1002CB634(selectionCopy, controllerCopy, item, managerCopy, delegate, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();
  return v19;
}

+ (id)menuWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager delegate:(id)delegate completion:(id)completion
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

  selectionCopy = selection;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v19 = sub_1002CB764(selectionCopy, controllerCopy, item, managerCopy, delegate, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();

  return v19;
}

+ (id)menuWithTagSelection:(id)selection presentingViewController:(id)controller presentingBarButtonItem:(id)item viewControllerManager:(id)manager deferredChildren:(BOOL)children delegate:(id)delegate completion:(id)aBlock
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

  selectionCopy = selection;
  controllerCopy = controller;
  itemCopy = item;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v21 = sub_1002CB8B8(selectionCopy, controllerCopy, item, managerCopy, children, delegate, v15, v16);
  sub_10000C840(v15);

  swift_unknownObjectRelease();

  return v21;
}

- (id)completion
{
  if (*(self + OBJC_IVAR___ICTagsActionMenu_completion))
  {
    v2 = *(self + OBJC_IVAR___ICTagsActionMenu_completion + 8);
    v5[4] = *(self + OBJC_IVAR___ICTagsActionMenu_completion);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10017C07C;
    v5[3] = &unk_100653EF0;
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

  v7 = (self + OBJC_IVAR___ICTagsActionMenu_completion);
  v8 = *(self + OBJC_IVAR___ICTagsActionMenu_completion);
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
  v4 = *(self + OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem);
  *(self + OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem) = item;
  itemCopy = item;
}

- (id)menuSections
{
  selfCopy = self;
  sub_1002C90D8();

  sub_1000054A4(0, &qword_1006C6400);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (ICTagsActionMenu)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end