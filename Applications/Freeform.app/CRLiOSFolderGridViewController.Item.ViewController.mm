@interface CRLiOSFolderGridViewController.Item.ViewController
- (_TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CRLiOSFolderGridViewController.Item.ViewController

- (void)loadView
{
  v3 = _s4ItemC14ViewControllerC8ItemViewCMa();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v4;
  v7.super_class = v3;
  selfCopy = self;
  v6 = [(CRLiOSFolderGridViewController.Item.ViewController *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(CRLiOSFolderGridViewController.Item.ViewController *)selfCopy setView:v6, v7.receiver, v7.super_class];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100EE3338();
}

- (_TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end