@interface CLBTransientHUDPresenter
- (CLBTransientHUDPresenter)init;
- (CLBTransientHUDPresenter)initWithWindow:(id)window;
@end

@implementation CLBTransientHUDPresenter

- (CLBTransientHUDPresenter)initWithWindow:(id)window
{
  *(&self->super.isa + OBJC_IVAR___CLBTransientHUDPresenter_dismissTask) = 0;
  *(&self->super.isa + OBJC_IVAR___CLBTransientHUDPresenter_window) = window;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TransientHUDPresenter();
  windowCopy = window;
  return [(CLBTransientHUDPresenter *)&v6 init];
}

- (CLBTransientHUDPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end