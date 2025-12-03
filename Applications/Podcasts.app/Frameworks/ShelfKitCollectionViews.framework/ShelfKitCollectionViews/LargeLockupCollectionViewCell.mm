@interface LargeLockupCollectionViewCell
- (BOOL)isEditing;
- (_TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEditing:(BOOL)editing;
@end

@implementation LargeLockupCollectionViewCell

- (_TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionButton) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_itemIsDeletable) = 0;
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_deletionUITriggered);
  *v3 = UINavigationBar.overrideBackButtonStyle.setter;
  v3[1] = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  v2 = v4.receiver;
  [(LargeLockupCollectionViewCell *)&v4 prepareForReuse];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView];
  sub_265FE4();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_304618();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3045F8();
  selfCopy = self;
  isa = sub_3045E8().super.super.isa;
  v10 = type metadata accessor for LargeLockupCollectionViewCell();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(LargeLockupCollectionViewCell *)&v11 _bridgedUpdateConfigurationUsingState:isa];

  sub_263FA8();
  (*(v5 + 8))(v7, v4);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_264630(event, x, y);

  return v10;
}

- (BOOL)isEditing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  return [(LargeLockupCollectionViewCell *)&v3 isEditing];
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  v4 = v5.receiver;
  [(LargeLockupCollectionViewCell *)&v5 setEditing:editingCopy];
  sub_264D64();
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for LargeLockupCollectionViewCell();
  v2 = v13.receiver;
  [(LargeLockupCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews29LargeLockupCollectionViewCell_embeddedView];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

@end