@interface MusicInterstellarContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MusicInterstellarContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBadgeView:(id)view;
- (void)setPill:(id)pill;
@end

@implementation MusicInterstellarContentView

- (void)setBadgeView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MusicInterstellarContentView_badgeView);
  *(&self->super.super.super.isa + OBJC_IVAR___MusicInterstellarContentView_badgeView) = view;
  viewCopy = view;
}

- (void)setPill:(id)pill
{
  pillCopy = pill;
  selfCopy = self;
  sub_285CDC(pill);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  traitCollection = [(MusicInterstellarContentView *)selfCopy traitCollection];
  defaultMetrics = [objc_opt_self() defaultMetrics];
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
  selfCopy = self;
  sub_28676C();
}

- (MusicInterstellarContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end