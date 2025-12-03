@interface BrickCollectionViewCell
- (_TtC23ShelfKitCollectionViews23BrickCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation BrickCollectionViewCell

- (_TtC23ShelfKitCollectionViews23BrickCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_objectGraph) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_isHovering) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_21B248();
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = swift_getObjectType();
  v2 = v17.receiver;
  [(BrickCollectionViewCell *)&v17 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews23BrickCollectionViewCell_artworkContainer];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [contentView layoutMargins];
  v14 = v13;
  v16 = v15;

  [v3 setFrame:{UIEdgeInsetsInsetRect(v6, v8, v10, v12, v14, v16)}];
}

@end