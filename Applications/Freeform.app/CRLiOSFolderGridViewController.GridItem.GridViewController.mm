@interface CRLiOSFolderGridViewController.GridItem.GridViewController
- (_TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController)init;
- (void)viewDidLoad;
@end

@implementation CRLiOSFolderGridViewController.GridItem.GridViewController

- (void)viewDidLoad
{
  swift_getObjectType();
  v5.receiver = self;
  v5.super_class = _s8GridItemC18GridViewControllerCMa();
  selfCopy = self;
  [(CRLiOSFolderGridViewController.Item.ViewController *)&v5 viewDidLoad];
  sub_1005B981C(&unk_101A150B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  *(v4 + 32) = type metadata accessor for UITraitUserInterfaceLevel();
  *(v4 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(v4 + 48) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v4 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
}

- (_TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController)init
{
  v3 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_labelBackdropView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8GridItem18GridViewController_attributionViewBottomConstraint) = 0;
  v5.receiver = self;
  v5.super_class = _s8GridItemC18GridViewControllerCMa();
  return [(CRLiOSFolderGridViewController.Item.ViewController *)&v5 init];
}

@end