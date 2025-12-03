@interface TTRITreeTableView
- (_TtC9Reminders17TTRITreeTableView)initWithCoder:(id)coder;
- (_TtC9Reminders17TTRITreeTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
@end

@implementation TTRITreeTableView

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  v7 = self + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 8);
    configurationCopy = configuration;
    swift_unknownObjectRetain();
    selfCopy = self;
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

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  v7 = self + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    swift_getObjectType();
    v9 = *(v8 + 16);
    configurationCopy = configuration;
    swift_unknownObjectRetain();
    selfCopy = self;
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

- (_TtC9Reminders17TTRITreeTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *&self->contextMenuDelegate[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TTRITreeTableView();
  return [(TTRITreeTableView *)&v11 initWithFrame:style style:x, y, width, height];
}

- (_TtC9Reminders17TTRITreeTableView)initWithCoder:(id)coder
{
  *&self->contextMenuDelegate[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRITreeTableView();
  coderCopy = coder;
  v6 = [(TTRITreeTableView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end