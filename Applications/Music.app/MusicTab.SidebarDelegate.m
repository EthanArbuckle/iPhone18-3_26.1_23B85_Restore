@interface MusicTab.SidebarDelegate
- (_TtCC5Music8MusicTab15SidebarDelegate)init;
- (id)_tabBarController:(id)a3 sidebar:(id)a4 itemsForBeginningDragSession:(id)a5 tab:(id)a6;
- (id)_tabBarController:(id)a3 sidebar:(id)a4 sessionPropertiesForDragSession:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (unint64_t)_tabBarController:(id)a3 sidebar:(id)a4 sidebarAction:(id)a5 group:(id)a6 operationForAcceptingItemsFromDropSession:(id)a7;
- (void)_tabBarController:(id)a3 sidebar:(id)a4 sidebarAction:(id)a5 group:(id)a6 acceptItemsFromDropSession:(id)a7;
- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5;
- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5;
@end

@implementation MusicTab.SidebarDelegate

- (void)tabBarController:(id)a3 sidebarVisibilityWillChange:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_10016E250(v8, v9, a5);

  swift_unknownObjectRelease();
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10016ED5C(v8, v9, v10);

  return v12;
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5
{
  v8 = type metadata accessor for UITabSidebarItem.Content();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  UITabSidebarItem.content.getter();
  v15 = sub_10016E910(v11);
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    if ([v15 respondsToSelector:"tabBarController:sidebar:updateItem:"])
    {
      [v15 tabBarController:v12 sidebar:v13 updateItem:v14];
    }

    swift_unknownObjectRelease();
  }
}

- (_TtCC5Music8MusicTab15SidebarDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_tabBarController:(id)a3 sidebar:(id)a4 itemsForBeginningDragSession:(id)a5 tab:(id)a6
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a6;
  v13 = self;
  sub_1003CF028(v10, a5, v12);

  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_10118B920);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)_tabBarController:(id)a3 sidebar:(id)a4 sessionPropertiesForDragSession:(id)a5
{
  v5 = [objc_allocWithZone(_UIDragSessionProperties) init];
  [v5 set_supportsSystemDrag:0];

  return v5;
}

- (unint64_t)_tabBarController:(id)a3 sidebar:(id)a4 sidebarAction:(id)a5 group:(id)a6 operationForAcceptingItemsFromDropSession:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  swift_unknownObjectRetain();
  v16 = self;
  v17 = sub_1003CF184(v12, v14, v15, a7);

  swift_unknownObjectRelease();
  return v17;
}

- (void)_tabBarController:(id)a3 sidebar:(id)a4 sidebarAction:(id)a5 group:(id)a6 acceptItemsFromDropSession:(id)a7
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = a3;
    v15 = a5;
    v16 = a6;
    swift_unknownObjectRetain();
    v17 = self;
    v18 = [v16 managingTabGroup];
    if (!v18)
    {
      v18 = v16;
    }

    if (swift_dynamicCastObjCProtocolConditional())
    {

      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19)
      {
        v20 = v19;
        if ([v19 respondsToSelector:{"musicTabBarController:sidebarAction:group:acceptItemsFromDropSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}])
        {
          [v20 musicTabBarController:v14 sidebarAction:v15 group:v16 acceptItemsFromDropSession:a7];
        }

        swift_unknownObjectRelease();
        v18 = v17;
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

@end