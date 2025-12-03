@interface FMSideBarViewController
- (_TtC6FindMy23FMSideBarViewController)initWithCoder:(id)coder;
- (_TtC6FindMy23FMSideBarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)indexChangedWithSender:(id)sender;
- (void)indexNotChangedWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation FMSideBarViewController

- (_TtC6FindMy23FMSideBarViewController)initWithCoder:(id)coder
{
  *&self->contentDelegate[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_contentDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_devicesSubscription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10025AE30();
}

- (void)indexChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10025BAC8(senderCopy);
}

- (void)indexNotChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10025BDB4(senderCopy);
}

- (_TtC6FindMy23FMSideBarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end