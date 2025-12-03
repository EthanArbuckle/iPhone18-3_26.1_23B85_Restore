@interface VKKeyboardCameraServiceViewController
- (void)keyboardCamera:(id)camera didUpdateString:(id)string;
- (void)setTextContentType:(id)type;
- (void)userDidAcceptWithKeyboardCamera:(id)camera;
- (void)userDidCancelWithKeyboardCamera:(id)camera;
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
  view = [(VKKeyboardCameraViewController *)self->_keyboardCamera view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(VKKeyboardCameraServiceViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(VKKeyboardCameraServiceViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v20;
  leftAnchor = [view leftAnchor];
  view4 = [(VKKeyboardCameraServiceViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v25[1] = v16;
  rightAnchor = [view rightAnchor];
  view5 = [(VKKeyboardCameraServiceViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v10 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v25[2] = v10;
  bottomAnchor = [view bottomAnchor];
  view6 = [(VKKeyboardCameraServiceViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v14;
  v15 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v15];

  MSNMonitorBeginException();
}

- (void)setTextContentType:(id)type
{
  objc_storeStrong(&self->_textContentType, type);
  typeCopy = type;
  [(VKKeyboardCameraViewController *)self->_keyboardCamera setTextContentType:typeCopy];
}

- (void)userDidCancelWithKeyboardCamera:(id)camera
{
  client = [(VKKeyboardCameraServiceViewController *)self client];
  [client keyboardCameraDidCancel];
}

- (void)userDidAcceptWithKeyboardCamera:(id)camera
{
  client = [(VKKeyboardCameraServiceViewController *)self client];
  [client keyboardCameraDidAccept];
}

- (void)keyboardCamera:(id)camera didUpdateString:(id)string
{
  stringCopy = string;
  client = [(VKKeyboardCameraServiceViewController *)self client];
  [client keyboardCameraDidUpdateString:stringCopy];
}

@end