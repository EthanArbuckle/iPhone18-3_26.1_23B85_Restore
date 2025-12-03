@interface NBSelectAudiobookController
- (NBSelectAudiobookDelegate)delegate;
- (void)viewDidLoad;
@end

@implementation NBSelectAudiobookController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = NBSelectAudiobookController;
  [(NBSelectAudiobookController *)&v14 viewDidLoad];
  v3 = objc_alloc_init(NBSelectAudiobookViewController);
  delegate = [(NBSelectAudiobookController *)self delegate];
  [(NBSelectAudiobookViewController *)v3 setDelegate:delegate];

  v5 = v3;
  v6 = [[UINavigationController alloc] initWithRootViewController:v5];

  [(NBSelectAudiobookController *)self setNavigationController:v6];
  navigationController = [(NBSelectAudiobookController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  BPSApplyStyleToNavBarOptions();

  navigationController2 = [(NBSelectAudiobookController *)self navigationController];
  [(NBSelectAudiobookController *)self addChildViewController:navigationController2];

  view = [(NBSelectAudiobookController *)self view];
  navigationController3 = [(NBSelectAudiobookController *)self navigationController];
  view2 = [navigationController3 view];
  [view addSubview:view2];

  navigationController4 = [(NBSelectAudiobookController *)self navigationController];
  [navigationController4 didMoveToParentViewController:self];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end