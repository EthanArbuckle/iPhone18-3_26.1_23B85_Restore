@interface BookmarkBadge
- (_TtC23ShelfKitCollectionViews13BookmarkBadge)initWithCoder:(id)coder;
- (void)primaryActionTriggered;
@end

@implementation BookmarkBadge

- (_TtC23ShelfKitCollectionViews13BookmarkBadge)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_bookmarkButtonPresenter) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)primaryActionTriggered
{
  if (*(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews13BookmarkBadge_bookmarkButtonPresenter))
  {
    selfCopy = self;

    sub_30A378();
  }
}

@end