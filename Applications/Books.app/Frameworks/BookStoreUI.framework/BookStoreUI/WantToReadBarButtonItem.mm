@interface WantToReadBarButtonItem
- (_TtC11BookStoreUI23WantToReadBarButtonItem)init;
- (_TtC11BookStoreUI23WantToReadBarButtonItem)initWithCoder:(id)a3;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5;
@end

@implementation WantToReadBarButtonItem

- (_TtC11BookStoreUI23WantToReadBarButtonItem)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead) = 0;
  v3 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsIsInWantToRead;
  *(&self->super.super.super.super.isa + v3) = sub_678C8(&_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsCoverResources;
  *(&self->super.super.super.super.isa + v4) = sub_679C4(&_swiftEmptyArrayStorage);
  v7.receiver = self;
  v7.super_class = type metadata accessor for WantToReadBarButtonItem();
  v5 = [(ProductFeedBarButtonItem *)&v7 init];
  sub_93A50();

  return v5;
}

- (_TtC11BookStoreUI23WantToReadBarButtonItem)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_isInWantToRead) = 0;
  v4 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsIsInWantToRead;
  *(&self->super.super.super.super.isa + v4) = sub_678C8(&_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC11BookStoreUI23WantToReadBarButtonItem_editionsCoverResources;
  *(&self->super.super.super.super.isa + v5) = sub_679C4(&_swiftEmptyArrayStorage);
  result = sub_2C6378();
  __break(1u);
  return result;
}

- (void)libraryItemStateCenter:(id)a3 didUpdateItemState:(id)a4 forIdentifier:(id)a5
{
  v7 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_2C58C8();
  v12 = v11;
  v13 = sub_2C5C58();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_2C5C18();
  swift_unknownObjectRetain_n();
  v14 = self;
  v15 = sub_2C5C08();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;
  v16[5] = v10;
  v16[6] = v12;
  v16[7] = a4;
  sub_249B98(0, 0, v9, &unk_2E4E38, v16);

  swift_unknownObjectRelease();
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v4 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2C5C58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2C5C18();
  v8 = self;
  v9 = sub_2C5C08();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_249B98(0, 0, v6, &unk_2E4E20, v10);
}

@end