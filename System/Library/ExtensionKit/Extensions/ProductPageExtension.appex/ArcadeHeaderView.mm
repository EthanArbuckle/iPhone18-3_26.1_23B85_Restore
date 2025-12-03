@interface ArcadeHeaderView
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeHeaderView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10011503C();
}

- (void)preferredContentSizeCategoryDidChange
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  selfCopy = self;
  [(ArcadeHeaderView *)selfCopy addSubview:v4];
  [*(&self->super.super.super.super.super.isa + v3) setNeedsLayout];
  [*(&self->super.super.super.super.super.isa + v3) layoutIfNeeded];
  [*(&self->super.super.super.super.super.isa + v3) removeFromSuperview];
  [(ArcadeHeaderView *)selfCopy setNeedsLayout];
}

@end