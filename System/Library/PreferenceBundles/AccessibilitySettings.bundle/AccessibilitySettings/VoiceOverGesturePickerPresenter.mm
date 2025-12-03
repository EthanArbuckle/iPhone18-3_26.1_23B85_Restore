@interface VoiceOverGesturePickerPresenter
+ (VoiceOverGesturePickerPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)_cancelButtonTapped:(id)tapped;
- (void)presentWithController:(id)controller;
@end

@implementation VoiceOverGesturePickerPresenter

+ (VoiceOverGesturePickerPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  cancelBlockCopy = cancelBlock;
  blockCopy = block;
  specifierCopy = specifier;
  v10 = [[VoiceOverGesturePickerPresenter alloc] _initWithSpecifier:specifierCopy selectionBlock:blockCopy cancelBlock:cancelBlockCopy];

  return v10;
}

- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  specifierCopy = specifier;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v15.receiver = self;
  v15.super_class = VoiceOverGesturePickerPresenter;
  v12 = [(VoiceOverGesturePickerPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, specifier);
    [(VoiceOverGesturePickerPresenter *)v13 setUserSelectedGestureBlock:blockCopy];
    [(VoiceOverGesturePickerPresenter *)v13 setUserCanceledGestureSelectionBlock:cancelBlockCopy];
  }

  return v13;
}

- (void)presentWithController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(VoiceOverGesturePickerController);
  gesturePickerViewController = self->_gesturePickerViewController;
  self->_gesturePickerViewController = v5;

  [(VoiceOverGesturePickerController *)self->_gesturePickerViewController setSpecifier:self->_specifier];
  [(VoiceOverGesturePickerController *)self->_gesturePickerViewController setPresenter:self];
  v13 = [[UINavigationController alloc] initWithRootViewController:self->_gesturePickerViewController];
  [v13 setModalPresentationStyle:2];
  navigationBar = [v13 navigationBar];
  topItem = [navigationBar topItem];

  v9 = settingsLocString(@"vo.touch.gestures", @"VoiceOverSettings");
  [topItem setTitle:v9];

  v10 = [UIBarButtonItem alloc];
  v11 = settingsLocString(@"vo.cancel", @"VoiceOverSettings");
  v12 = [v10 initWithTitle:v11 style:2 target:self action:"_cancelButtonTapped:"];
  [topItem setLeftBarButtonItem:v12];

  [controllerCopy presentViewController:v13 animated:1 completion:0];
}

- (void)_cancelButtonTapped:(id)tapped
{
  userCanceledGestureSelectionBlock = [(VoiceOverGesturePickerPresenter *)self userCanceledGestureSelectionBlock];

  if (userCanceledGestureSelectionBlock)
  {
    userCanceledGestureSelectionBlock2 = [(VoiceOverGesturePickerPresenter *)self userCanceledGestureSelectionBlock];
    userCanceledGestureSelectionBlock2[2]();
  }
}

@end