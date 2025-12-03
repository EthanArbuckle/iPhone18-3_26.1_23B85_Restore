@interface CHLegacyDevicesViewController
- (CHLegacyDevicesViewController)initWithCoder:(id)coder;
- (CHLegacyDevicesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CHLegacyDevicesViewController

- (CHLegacyDevicesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CHLegacyDevicesViewController_hostingViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CHLegacyDevicesViewController_subView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006180E0();
}

- (CHLegacyDevicesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end