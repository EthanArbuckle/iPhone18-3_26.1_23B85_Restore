@interface NTKCompanionUltraCubeTimePlacementViewController
- (NTKCompanionUltraCubeTimePlacementViewController)initWithOptions:(id)a3;
- (NTKCompanionUltraCubeTimePlacementViewControllerDelegate)delegate;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3;
- (void)setSelectedOption:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKCompanionUltraCubeTimePlacementViewController

- (NTKCompanionUltraCubeTimePlacementViewController)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKCompanionUltraCubeTimePlacementViewController;
  v5 = [(NTKCompanionUltraCubeTimePlacementViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[NTKCompanionUltraCubeTimePlacementDataSource alloc] initWithOptions:v4];
    adjustmentsDataSource = v5->_adjustmentsDataSource;
    v5->_adjustmentsDataSource = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = NTKCompanionUltraCubeTimePlacementViewController;
  [(NTKCompanionUltraCubeTimePlacementViewController *)&v7 viewDidLoad];
  v3 = objc_alloc_init(NTK_PUAdjustmentsViewController);
  [(NTK_PUAdjustmentsViewController *)v3 setDataSource:self->_adjustmentsDataSource];
  [(NTK_PUAdjustmentsViewController *)v3 setDelegate:self];
  [(NTK_PUAdjustmentsViewController *)v3 setLayoutDirection:0];
  v4 = [(NTKCompanionUltraCubeTimePlacementViewController *)self view];
  v5 = [(NTK_PUAdjustmentsViewController *)v3 view];
  [(NTKCompanionUltraCubeTimePlacementViewController *)self addChildViewController:v3];
  [v4 addSubview:v5];
  [(NTK_PUAdjustmentsViewController *)v3 didMoveToParentViewController:self];
  adjustmentsViewController = self->_adjustmentsViewController;
  self->_adjustmentsViewController = v3;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKCompanionUltraCubeTimePlacementViewController;
  [(NTKCompanionUltraCubeTimePlacementViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(NTKCompanionUltraCubeTimePlacementViewController *)self view];
  [v3 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v8 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16);
  v10 = [(NTK_PUAdjustmentsViewController *)self->_adjustmentsViewController view];
  [(NTK_PUAdjustmentsViewController *)self->_adjustmentsViewController ntk_controlHeight];
  v12 = v11;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v8;
  v17.size.height = v9;
  v13 = CGRectGetMaxY(v17) - v12;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [v10 setFrame:{0.0, v13, CGRectGetWidth(v18), v12}];
}

- (void)setSelectedOption:(int64_t)a3
{
  if (self->_selectedOption != a3)
  {
    self->_selectedOption = a3;
    v5 = [(NTKCompanionUltraCubeTimePlacementDataSource *)self->_adjustmentsDataSource indexPathForOption:?];
    if (v5)
    {
      [(NTK_PUAdjustmentsViewController *)self->_adjustmentsViewController ntk_setSelectedIndexPath:v5];
    }

    _objc_release_x1();
  }
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)a3
{
  v4 = a3;
  v6 = [(NTKCompanionUltraCubeTimePlacementViewController *)self delegate];
  v5 = [v4 selectedAdjustmentInfo];

  self->_selectedOption = [v5 ntk_option];
  [v6 ultracubeTimePlacementViewControllerDidUpdateSelectedOption:self];
}

- (NTKCompanionUltraCubeTimePlacementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end