@interface MusicTab.SidebarDelegate
- (_TtCC5Music8MusicTab15SidebarDelegate)init;
- (id)_tabBarController:(id)controller sidebar:(id)sidebar itemsForBeginningDragSession:(id)session tab:(id)tab;
- (id)_tabBarController:(id)controller sidebar:(id)sidebar sessionPropertiesForDragSession:(id)session;
- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request;
- (unint64_t)_tabBarController:(id)controller sidebar:(id)sidebar sidebarAction:(id)action group:(id)group operationForAcceptingItemsFromDropSession:(id)session;
- (void)_tabBarController:(id)controller sidebar:(id)sidebar sidebarAction:(id)action group:(id)group acceptItemsFromDropSession:(id)session;
- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item;
- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator;
@end

@implementation MusicTab.SidebarDelegate

- (void)tabBarController:(id)controller sidebarVisibilityWillChange:(id)change animator:(id)animator
{
  controllerCopy = controller;
  changeCopy = change;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10016E250(controllerCopy, changeCopy, animator);

  swift_unknownObjectRelease();
}

- (id)tabBarController:(id)controller sidebar:(id)sidebar itemForRequest:(id)request
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  requestCopy = request;
  selfCopy = self;
  v12 = sub_10016ED5C(controllerCopy, sidebarCopy, requestCopy);

  return v12;
}

- (void)tabBarController:(id)controller sidebar:(id)sidebar updateItem:(id)item
{
  v8 = type metadata accessor for UITabSidebarItem.Content();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  controllerCopy = controller;
  sidebarCopy = sidebar;
  itemCopy = item;
  UITabSidebarItem.content.getter();
  v15 = sub_10016E910(v11);
  (*(v9 + 8))(v11, v8);
  if (v15)
  {
    if ([v15 respondsToSelector:"tabBarController:sidebar:updateItem:"])
    {
      [v15 tabBarController:controllerCopy sidebar:sidebarCopy updateItem:itemCopy];
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

- (id)_tabBarController:(id)controller sidebar:(id)sidebar itemsForBeginningDragSession:(id)session tab:(id)tab
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  swift_unknownObjectRetain();
  tabCopy = tab;
  selfCopy = self;
  sub_1003CF028(controllerCopy, session, tabCopy);

  swift_unknownObjectRelease();
  sub_100009F78(0, &qword_10118B920);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v14.super.isa;
}

- (id)_tabBarController:(id)controller sidebar:(id)sidebar sessionPropertiesForDragSession:(id)session
{
  v5 = [objc_allocWithZone(_UIDragSessionProperties) init];
  [v5 set_supportsSystemDrag:0];

  return v5;
}

- (unint64_t)_tabBarController:(id)controller sidebar:(id)sidebar sidebarAction:(id)action group:(id)group operationForAcceptingItemsFromDropSession:(id)session
{
  controllerCopy = controller;
  sidebarCopy = sidebar;
  actionCopy = action;
  groupCopy = group;
  swift_unknownObjectRetain();
  selfCopy = self;
  v17 = sub_1003CF184(controllerCopy, actionCopy, groupCopy, session);

  swift_unknownObjectRelease();
  return v17;
}

- (void)_tabBarController:(id)controller sidebar:(id)sidebar sidebarAction:(id)action group:(id)group acceptItemsFromDropSession:(id)session
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    controllerCopy = controller;
    actionCopy = action;
    groupCopy = group;
    swift_unknownObjectRetain();
    selfCopy = self;
    managingTabGroup = [groupCopy managingTabGroup];
    if (!managingTabGroup)
    {
      managingTabGroup = groupCopy;
    }

    if (swift_dynamicCastObjCProtocolConditional())
    {

      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19)
      {
        v20 = v19;
        if ([v19 respondsToSelector:{"musicTabBarController:sidebarAction:group:acceptItemsFromDropSession:", &OBJC_PROTOCOL____TtP5Music29MusicTabBarControllerDelegate_, &OBJC_PROTOCOL___UITabBarControllerDelegate}])
        {
          [v20 musicTabBarController:controllerCopy sidebarAction:actionCopy group:groupCopy acceptItemsFromDropSession:session];
        }

        swift_unknownObjectRelease();
        managingTabGroup = selfCopy;
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