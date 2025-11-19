@interface VKKeyboardCameraServiceViewController
- (void)keyboardCamera:(id)a3 didUpdateString:(id)a4;
- (void)setTextContentType:(id)a3;
- (void)userDidAcceptWithKeyboardCamera:(id)a3;
- (void)userDidCancelWithKeyboardCamera:(id)a3;
- (void)viewDidLoad;
@end

@implementation VKKeyboardCameraServiceViewController

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = VKKeyboardCameraServiceViewController;
  [(VKKeyboardCameraServiceViewController *)&v24 viewDidLoad];
  [STDynamicActivityAttributionPublisher setCurrentAttributionKey:@"KC_DisplayName" andApp:0];
  [AVCaptureDevice setCinematicFramingControlMode:1];
  [AVCaptureDevice setCinematicFramingEnabled:0];
  v3 = objc_alloc_init(VKKeyboardCameraViewController);
  keyboardCamera = self->_keyboardCamera;
  self->_keyboardCamera = v3;

  [(VKKeyboardCameraViewController *)self->_keyboardCamera setDelegate:self];
  [(VKKeyboardCameraViewController *)self->_keyboardCamera setTextContentType:self->_textContentType];
  [(VKKeyboardCameraServiceViewController *)self addChildViewController:self->_keyboardCamera];
  [(VKKeyboardCameraViewController *)self->_keyboardCamera didMoveToParentViewController:self];
  v5 = [(VKKeyboardCameraViewController *)self->_keyboardCamera view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(VKKeyboardCameraServiceViewController *)self view];
  [v6 addSubview:v5];

  v22 = [v5 topAnchor];
  v23 = [(VKKeyboardCameraServiceViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v18 = [v5 leftAnchor];
  v19 = [(VKKeyboardCameraServiceViewController *)self view];
  v17 = [v19 leftAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v25[1] = v16;
  v7 = [v5 rightAnchor];
  v8 = [(VKKeyboardCameraServiceViewController *)self view];
  v9 = [v8 rightAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v25[2] = v10;
  v11 = [v5 bottomAnchor];
  v12 = [(VKKeyboardCameraServiceViewController *)self view];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v25[3] = v14;
  v15 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  MSNMonitorBeginException();
}

- (void)setTextContentType:(id)a3
{
  objc_storeStrong(&self->_textContentType, a3);
  v5 = a3;
  [(VKKeyboardCameraViewController *)self->_keyboardCamera setTextContentType:v5];
}

- (void)userDidCancelWithKeyboardCamera:(id)a3
{
  v3 = [(VKKeyboardCameraServiceViewController *)self client];
  [v3 keyboardCameraDidCancel];
}

- (void)userDidAcceptWithKeyboardCamera:(id)a3
{
  v3 = [(VKKeyboardCameraServiceViewController *)self client];
  [v3 keyboardCameraDidAccept];
}

- (void)keyboardCamera:(id)a3 didUpdateString:(id)a4
{
  v5 = a4;
  v6 = [(VKKeyboardCameraServiceViewController *)self client];
  [v6 keyboardCameraDidUpdateString:v5];
}

@end