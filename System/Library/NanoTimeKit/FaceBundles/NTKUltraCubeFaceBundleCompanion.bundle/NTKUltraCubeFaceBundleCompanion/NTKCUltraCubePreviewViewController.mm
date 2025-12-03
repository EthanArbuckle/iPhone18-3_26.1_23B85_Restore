@interface NTKCUltraCubePreviewViewController
- (NTKCUltraCubePreviewViewController)initWithPreviewProvider:(id)provider;
- (void)_ultracubePreviewViewControllerDidDismiss:(id)dismiss;
- (void)_ultracubePreviewViewControllerWantsToCancel:(id)cancel;
- (void)_ultracubePreviewViewControllerWantsToDelete:(id)delete;
- (void)_ultracubePreviewViewControllerWantsToSave:(id)save;
- (void)viewDidLoad;
@end

@implementation NTKCUltraCubePreviewViewController

- (NTKCUltraCubePreviewViewController)initWithPreviewProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[_NTKCUltraCubePreviewViewController alloc] initWithPreviewProvider:providerCopy];

  v14.receiver = self;
  v14.super_class = NTKCUltraCubePreviewViewController;
  v6 = [(NTKCUltraCubePreviewViewController *)&v14 initWithRootViewController:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_implementationVC, v5);
    [(_NTKCUltraCubePreviewViewController *)v7->_implementationVC setDelegate:v7];
    v8 = objc_alloc_init(UINavigationBarAppearance);
    [v8 configureWithOpaqueBackground];
    navigationBar = [(NTKCUltraCubePreviewViewController *)v7 navigationBar];
    [navigationBar setStandardAppearance:v8];

    navigationBar2 = [(NTKCUltraCubePreviewViewController *)v7 navigationBar];
    [navigationBar2 setScrollEdgeAppearance:v8];

    navigationItem = [(NTKCUltraCubePreviewViewController *)v7 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];

    navigationBar3 = [(NTKCUltraCubePreviewViewController *)v7 navigationBar];
    [navigationBar3 setPrefersLargeTitles:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NTKCUltraCubePreviewViewController;
  [(NTKCUltraCubePreviewViewController *)&v3 viewDidLoad];
  [(NTKCUltraCubePreviewViewController *)self setToolbarHidden:0];
}

- (void)_ultracubePreviewViewControllerWantsToCancel:(id)cancel
{
  delegate = [(NTKCUltraCubePreviewViewController *)self delegate];
  [delegate ultracubePreviewViewControllerWantsToCancel:self];
}

- (void)_ultracubePreviewViewControllerWantsToDelete:(id)delete
{
  delegate = [(NTKCUltraCubePreviewViewController *)self delegate];
  [delegate ultracubePreviewViewControllerWantsToDelete:self];
}

- (void)_ultracubePreviewViewControllerWantsToSave:(id)save
{
  delegate = [(NTKCUltraCubePreviewViewController *)self delegate];
  [delegate ultracubePreviewViewControllerWantsToSave:self];
}

- (void)_ultracubePreviewViewControllerDidDismiss:(id)dismiss
{
  delegate = [(NTKCUltraCubePreviewViewController *)self delegate];
  [delegate ultracubePreviewViewControllerDidDismiss:self];
}

@end