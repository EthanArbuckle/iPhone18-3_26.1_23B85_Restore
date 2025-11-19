@interface CategoryUpdateView
- (_TtC13HealthRecords18CategoryUpdateView)initWithCoder:(id)a3;
- (void)tintColorDidChange;
@end

@implementation CategoryUpdateView

- (_TtC13HealthRecords18CategoryUpdateView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___countLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___descriptionLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView____lazy_storage___actionLabel) = 0;
  v3 = (self + OBJC_IVAR____TtC13HealthRecords18CategoryUpdateView_viewData);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  result = sub_29D5B4A2C();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CategoryUpdateView();
  v2 = v5.receiver;
  [(CategoryUpdateView *)&v5 tintColorDidChange];
  v3 = sub_29D50D144();
  v4 = [v2 tintColor];
  [v3 setTextColor_];
}

@end