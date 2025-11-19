@interface LibraryTabGroupManager
- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4;
- (_TtC8ShelfKit22LibraryTabGroupManager)init;
- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5;
- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5;
- (void)dealloc;
- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5;
- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4;
- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5;
- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4;
@end

@implementation LibraryTabGroupManager

- (void)dealloc
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_500EB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, self + OBJC_IVAR____TtC8ShelfKit22LibraryTabGroupManager_tabsContinuation, v3, v5);
  v8 = self;
  sub_3ED724();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for LibraryTabGroupManager();
  v10.receiver = v8;
  v10.super_class = v9;
  [(LibraryTabGroupManager *)&v10 dealloc];
}

- (_TtC8ShelfKit22LibraryTabGroupManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)tabBarController:(id)a3 shouldSelectTab:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2FD3EC();

  return v9 & 1;
}

- (void)tabBarController:(id)a3 didSelectTab:(id)a4 previousTab:(id)a5
{
  v8 = a3;
  v14 = a4;
  v9 = self;
  v10 = a5;
  v11 = [v14 managingTabGroup];
  if (v11)
  {
    v12 = v11;
    v13 = [v14 identifier];
    if (!v13)
    {
      sub_3ED244();
      v13 = sub_3ED204();
    }

    [v12 setDefaultChildIdentifier:v13];

    v9 = v13;
  }

  else
  {
    v12 = v10;
  }
}

- (id)tabBarController:(id)a3 displayedViewControllersForTab:(id)a4 proposedViewControllers:(id)a5
{
  sub_36174(0, &qword_502180);
  v8 = sub_3ED584();
  v9 = a3;
  v10 = a4;
  v11 = self;
  _s8ShelfKit22LibraryTabGroupManagerC16tabBarController_27displayedViewControllersFor08proposedkL0SaySo06UIViewI0CGSo05UITabhI0C_So0P0CAItF_0(v9, v10, v8);

  v12.super.isa = sub_3ED574().super.isa;

  return v12.super.isa;
}

- (void)tabBarController:(id)a3 visibilityDidChangeForTabs:(id)a4
{
  sub_36174(0, &qword_4EA748);
  v6 = sub_3ED584();
  v7 = a3;
  v8 = self;
  sub_2FDB6C(v6);
}

- (void)tabBarController:(id)a3 displayOrderDidChangeForGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2FEF60(v7);
}

- (id)tabBarController:(id)a3 sidebar:(id)a4 itemForRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_2FFA8C(v10);

  return v12;
}

- (void)tabBarController:(id)a3 sidebar:(id)a4 updateItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_2FFFB8(v10);
}

@end