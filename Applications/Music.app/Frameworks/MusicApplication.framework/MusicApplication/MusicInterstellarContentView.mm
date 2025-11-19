@interface MusicInterstellarContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MusicInterstellarContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBadgeView:(id)a3;
- (void)setPill:(id)a3;
@end

@implementation MusicInterstellarContentView

- (void)setBadgeView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicInterstellarContentView_badgeView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicInterstellarContentView_badgeView) = a3;
  v3 = a3;
}

- (void)setPill:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_285CDC(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = [(MusicInterstellarContentView *)v4 traitCollection];
  v6 = [objc_opt_self() defaultMetrics];
  v7 = sub_ABA310();
  sub_AB9EF0();
  v9 = v8;

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_28676C();
}

- (MusicInterstellarContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end