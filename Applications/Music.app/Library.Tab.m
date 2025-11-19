@interface Library.Tab
- (id)musicTabBarController:(id)a3 tab:(id)a4 itemsForBeginningDragSession:(id)a5;
- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (unint64_t)musicTabBarController:(id)a3 sidebarAction:(id)a4 group:(id)a5 operationForAcceptingItemsFromDropSession:(id)a6;
- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5;
- (void)dealloc;
- (void)musicTabBarController:(id)a3 sidebarAction:(id)a4 group:(id)a5 acceptItemsFromDropSession:(id)a6;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4;
- (void)tabBarController:(id)a3 sidebar:(id)a4 didEndDisplayingTab:(id)a5;
- (void)tabBarController:(id)a3 sidebar:(id)a4 willBeginDisplayingTab:(id)a5;
- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5;
- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4;
@end

@implementation Library.Tab

- (void)dealloc
{
  v2 = self;
  v3 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 224);
  v4 = v2;

  v3(v4, &off_1010AA668);

  v5.receiver = v4;
  v5.super_class = _s3TabCMa();
  [(Library.Tab *)&v5 dealloc];
}

- (id)musicTabBarController:(id)a3 tab:(id)a4 itemsForBeginningDragSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1006AF5D0(v9, a5);

  swift_unknownObjectRelease();
  sub_1006B0DCC();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v11.super.isa;
}

- (unint64_t)tabBarController:(id)a3 tab:(id)a4 operationForAcceptingItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1006ACE10(v9, v8, &v16);
  if (v17)
  {
    sub_100059A8C(&v16, v18);
    v11 = v19;
    v12 = v20;
    v13 = sub_10000954C(v18, v19);
    v14 = sub_1006AF7B4(v13, v9, a5, v11, v12);

    swift_unknownObjectRelease();
    sub_10000959C(v18);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1000095E8(&v16, &unk_10119E610);
    return 0;
  }

  return v14;
}

- (void)tabBarController:(id)a3 tab:(id)a4 acceptItemsFromDropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1006AD904(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (unint64_t)musicTabBarController:(id)a3 sidebarAction:(id)a4 group:(id)a5 operationForAcceptingItemsFromDropSession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = self;
  v14 = sub_1006B03A0(v10, v11, a6);

  swift_unknownObjectRelease();
  return v14;
}

- (void)musicTabBarController:(id)a3 sidebarAction:(id)a4 group:(id)a5 acceptItemsFromDropSession:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = self;
  sub_1006B05C4(v10, v11, a6);

  swift_unknownObjectRelease();
}

- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4
{
  sub_100009F78(0, &qword_101181F70);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = self;
  sub_1003DCE8C(v5);
}

- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1006E5330(v7);
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1006E55A0(v9);
}

- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5
{
  sub_100009F78(0, &qword_101183D40);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1006E42D0(v9, v10, v8);

  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1006E58A8(v10);

  return v12;
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 willBeginDisplayingTab:(id)a5
{
  swift_beginAccess();
  v7 = a5;
  v8 = self;
  sub_1003B4FFC(&v10, v7);
  v9 = v10;
  swift_endAccess();
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 didEndDisplayingTab:(id)a5
{
  swift_beginAccess();
  v7 = a5;
  v8 = self;
  v9 = sub_100196024(v7);
  swift_endAccess();
}

@end