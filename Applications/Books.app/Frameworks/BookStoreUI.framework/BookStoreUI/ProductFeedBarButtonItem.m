@interface ProductFeedBarButtonItem
- (_TtC11BookStoreUI24ProductFeedBarButtonItem)init;
- (_TtC11BookStoreUI24ProductFeedBarButtonItem)initWithCoder:(id)a3;
- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)a3;
@end

@implementation ProductFeedBarButtonItem

- (_TtC11BookStoreUI24ProductFeedBarButtonItem)init
{
  swift_unknownObjectWeakInit();
  v3 = self + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_shouldDisableForRestrictedBook) = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ProductFeedBarButtonItem();
  return [(ProductFeedBarButtonItem *)&v5 init];
}

- (_TtC11BookStoreUI24ProductFeedBarButtonItem)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v5 = self + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_shouldDisableForRestrictedBook) = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ProductFeedBarButtonItem();
  v6 = a3;
  v7 = [(ProductFeedBarButtonItem *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (void)restrictionsForExplicitContentAllowedChanged:(BOOL)a3
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
  sub_249B98(0, 0, v6, &unk_2FC350, v10);
}

@end