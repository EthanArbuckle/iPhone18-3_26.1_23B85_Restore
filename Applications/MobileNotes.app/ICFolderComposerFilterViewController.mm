@interface ICFolderComposerFilterViewController
- (ICFolderComposerFilterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)doneActionWithSender:(id)a3;
- (void)splitViewWillTransitionToSizeWithNotification:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICFolderComposerFilterViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1002B2174();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002B2640(a3);
}

- (void)doneActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B3AA4();
}

- (void)splitViewWillTransitionToSizeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B35C8(v4);
}

- (ICFolderComposerFilterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end