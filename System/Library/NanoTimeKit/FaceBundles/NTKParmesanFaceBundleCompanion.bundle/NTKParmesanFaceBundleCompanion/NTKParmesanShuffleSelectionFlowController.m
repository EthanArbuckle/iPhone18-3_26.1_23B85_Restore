@interface NTKParmesanShuffleSelectionFlowController
- (NTKParmesanShuffleSelectionDelegate)delegate;
- (NTKParmesanShuffleSelectionFlowController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setDelegate:(id)a3;
- (void)userDidSelectCancel:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NTKParmesanShuffleSelectionFlowController

- (NTKParmesanShuffleSelectionDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23BFEFAC0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23BFEFD1C(a3);
}

- (void)userDidSelectCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_23BFFA960();
  swift_unknownObjectRelease();
  [(NTKParmesanShuffleSelectionFlowController *)v4 dismissViewControllerAnimated:1 completion:0];

  sub_23BF4A9A4(&v5);
}

- (NTKParmesanShuffleSelectionFlowController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end