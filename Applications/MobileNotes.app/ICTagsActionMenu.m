@interface ICTagsActionMenu
+ (id)menuWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 delegate:(id)a8 completion:(id)aBlock;
+ (id)menuWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8;
- (ICNAEventReporter)eventReporter;
- (ICTagsActionMenu)init;
- (ICTagsActionMenu)initWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8;
- (ICTagsActionMenuDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)completion;
- (id)menuSections;
- (void)setCompletion:(id)a3;
- (void)setPresentingBarButtonItem:(id)a3;
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

- (ICTagsActionMenuDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICTagsActionMenu)initWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8
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
  v19 = sub_1002CB634(v15, v16, a5, v18, a7, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();
  return v19;
}

+ (id)menuWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 delegate:(id)a7 completion:(id)a8
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
  v19 = sub_1002CB764(v15, v16, a5, v18, a7, v13, v14);
  sub_10000C840(v13);

  swift_unknownObjectRelease();

  return v19;
}

+ (id)menuWithTagSelection:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 viewControllerManager:(id)a6 deferredChildren:(BOOL)a7 delegate:(id)a8 completion:(id)aBlock
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

  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  swift_unknownObjectRetain();
  v21 = sub_1002CB8B8(v17, v18, a5, v20, a7, a8, v15, v16);
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

  v7 = (self + OBJC_IVAR___ICTagsActionMenu_completion);
  v8 = *(self + OBJC_IVAR___ICTagsActionMenu_completion);
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
  v4 = *(self + OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem);
  *(self + OBJC_IVAR___ICTagsActionMenu_presentingBarButtonItem) = a3;
  v3 = a3;
}

- (id)menuSections
{
  v2 = self;
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