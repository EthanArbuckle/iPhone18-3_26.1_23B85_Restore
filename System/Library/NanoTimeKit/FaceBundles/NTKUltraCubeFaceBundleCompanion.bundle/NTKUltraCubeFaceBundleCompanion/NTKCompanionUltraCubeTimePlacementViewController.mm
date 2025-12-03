@interface NTKCompanionUltraCubeTimePlacementViewController
- (NTKCompanionUltraCubeTimePlacementViewController)initWithOptions:(id)options;
- (NTKCompanionUltraCubeTimePlacementViewControllerDelegate)delegate;
- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control;
- (void)setSelectedOption:(int64_t)option;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKCompanionUltraCubeTimePlacementViewController

- (NTKCompanionUltraCubeTimePlacementViewController)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = NTKCompanionUltraCubeTimePlacementViewController;
  v5 = [(NTKCompanionUltraCubeTimePlacementViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[NTKCompanionUltraCubeTimePlacementDataSource alloc] initWithOptions:optionsCopy];
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
  view = [(NTKCompanionUltraCubeTimePlacementViewController *)self view];
  view2 = [(NTK_PUAdjustmentsViewController *)v3 view];
  [(NTKCompanionUltraCubeTimePlacementViewController *)self addChildViewController:v3];
  [view addSubview:view2];
  [(NTK_PUAdjustmentsViewController *)v3 didMoveToParentViewController:self];
  adjustmentsViewController = self->_adjustmentsViewController;
  self->_adjustmentsViewController = v3;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKCompanionUltraCubeTimePlacementViewController;
  [(NTKCompanionUltraCubeTimePlacementViewController *)&v14 viewWillLayoutSubviews];
  view = [(NTKCompanionUltraCubeTimePlacementViewController *)self view];
  [view bounds];
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
  view2 = [(NTK_PUAdjustmentsViewController *)self->_adjustmentsViewController view];
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
  [view2 setFrame:{0.0, v13, CGRectGetWidth(v18), v12}];
}

- (void)setSelectedOption:(int64_t)option
{
  if (self->_selectedOption != option)
  {
    self->_selectedOption = option;
    v5 = [(NTKCompanionUltraCubeTimePlacementDataSource *)self->_adjustmentsDataSource indexPathForOption:?];
    if (v5)
    {
      [(NTK_PUAdjustmentsViewController *)self->_adjustmentsViewController ntk_setSelectedIndexPath:v5];
    }

    _objc_release_x1();
  }
}

- (void)adjustmentsViewControllerDidUpdateSelectedControl:(id)control
{
  controlCopy = control;
  delegate = [(NTKCompanionUltraCubeTimePlacementViewController *)self delegate];
  selectedAdjustmentInfo = [controlCopy selectedAdjustmentInfo];

  self->_selectedOption = [selectedAdjustmentInfo ntk_option];
  [delegate ultracubeTimePlacementViewControllerDidUpdateSelectedOption:self];
}

- (NTKCompanionUltraCubeTimePlacementViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end