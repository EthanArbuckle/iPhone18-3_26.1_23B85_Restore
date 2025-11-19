@interface AssetMenuBarButtonItem
- (_TtC11BookStoreUI22AssetMenuBarButtonItem)initWithCoder:(id)a3;
- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5;
@end

@implementation AssetMenuBarButtonItem

- (_TtC11BookStoreUI22AssetMenuBarButtonItem)initWithCoder:(id)a3
{
  result = sub_2C6378();
  __break(1u);
  return result;
}

- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5
{
  v6 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_2C5C58();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2C5C18();
  v10 = self;
  v11 = sub_2C5C08();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_249B98(0, 0, v8, &unk_2E9B18, v12);
}

@end