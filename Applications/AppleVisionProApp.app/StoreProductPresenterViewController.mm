@interface StoreProductPresenterViewController
- (_TtC17AppleVisionProApp35StoreProductPresenterViewController)initWithCoder:(id)coder;
- (_TtC17AppleVisionProApp35StoreProductPresenterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StoreProductPresenterViewController

- (_TtC17AppleVisionProApp35StoreProductPresenterViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController;
  type metadata accessor for StoreProductViewController();
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10003A0FC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10003B4B4(disappear);
}

- (_TtC17AppleVisionProApp35StoreProductPresenterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end