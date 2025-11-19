@interface TTRITreeTableView
- (_TtC9Reminders17TTRITreeTableView)initWithCoder:(id)a3;
- (_TtC9Reminders17TTRITreeTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
@end

@implementation TTRITreeTableView

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v7 = self + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 8);
    v10 = a4;
    swift_unknownObjectRetain();
    v11 = self;
    v12 = v9();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v7 = self + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 16);
    v10 = a4;
    swift_unknownObjectRetain();
    v11 = self;
    v12 = v9();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtC9Reminders17TTRITreeTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *&self->contextMenuDelegate[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TTRITreeTableView();
  return [(TTRITreeTableView *)&v11 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC9Reminders17TTRITreeTableView)initWithCoder:(id)a3
{
  *&self->contextMenuDelegate[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRITreeTableView();
  v5 = a3;
  v6 = [(TTRITreeTableView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end