@interface LoadingCell
- (_TtC23ShelfKitCollectionViews11LoadingCell)initWithCoder:(id)a3;
- (void)prepareForReuse;
@end

@implementation LoadingCell

- (_TtC23ShelfKitCollectionViews11LoadingCell)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner;
  v6 = objc_allocWithZone(UIActivityIndicatorView);
  v7 = a3;
  *(&self->super.super.super.super.super.super.isa + v5) = [v6 initWithActivityIndicatorStyle:100];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_objectGraph) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(LoadingCell *)&v4 prepareForReuse];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner;
  if (([*&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews11LoadingCell_spinner] isAnimating] & 1) == 0)
  {
    [*&v2[v3] startAnimating];
  }
}

@end