@interface ArcadeHeaderView
- (void)layoutSubviews;
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation ArcadeHeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_10011503C();
}

- (void)preferredContentSizeCategoryDidChange
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  v5 = self;
  [(ArcadeHeaderView *)v5 addSubview:v4];
  [*(&self->super.super.super.super.super.isa + v3) setNeedsLayout];
  [*(&self->super.super.super.super.super.isa + v3) layoutIfNeeded];
  [*(&self->super.super.super.super.super.isa + v3) removeFromSuperview];
  [(ArcadeHeaderView *)v5 setNeedsLayout];
}

@end