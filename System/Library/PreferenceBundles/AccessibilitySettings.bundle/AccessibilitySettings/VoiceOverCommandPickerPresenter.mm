@interface VoiceOverCommandPickerPresenter
+ (VoiceOverCommandPickerPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock;
- (void)_cancelButtonTapped:(id)tapped;
- (void)presentWithController:(id)controller;
@end

@implementation VoiceOverCommandPickerPresenter

+ (VoiceOverCommandPickerPresenter)presenterWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  cancelBlockCopy = cancelBlock;
  blockCopy = block;
  specifierCopy = specifier;
  v10 = [[VoiceOverCommandPickerPresenter alloc] _initWithSpecifier:specifierCopy selectionBlock:blockCopy cancelBlock:cancelBlockCopy];

  return v10;
}

- (id)_initWithSpecifier:(id)specifier selectionBlock:(id)block cancelBlock:(id)cancelBlock
{
  specifierCopy = specifier;
  blockCopy = block;
  cancelBlockCopy = cancelBlock;
  v15.receiver = self;
  v15.super_class = VoiceOverCommandPickerPresenter;
  v12 = [(VoiceOverCommandPickerPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, specifier);
    [(VoiceOverCommandPickerPresenter *)v13 setUserSelectedCommandBlock:blockCopy];
    [(VoiceOverCommandPickerPresenter *)v13 setUserCanceledCommandSelectionBlock:cancelBlockCopy];
  }

  return v13;
}

- (void)presentWithController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(VoiceOverCommandPickerController);
  commandPickerViewController = self->_commandPickerViewController;
  self->_commandPickerViewController = v5;

  [(VoiceOverCommandPickerController *)self->_commandPickerViewController setSpecifier:self->_specifier];
  [(VoiceOverCommandPickerController *)self->_commandPickerViewController setPresenter:self];
  v13 = [[UINavigationController alloc] initWithRootViewController:self->_commandPickerViewController];
  [v13 setModalPresentationStyle:2];
  navigationBar = [v13 navigationBar];
  topItem = [navigationBar topItem];

  v9 = settingsLocString(@"vo.commands", @"VoiceOverSettings");
  [topItem setTitle:v9];

  v10 = [UIBarButtonItem alloc];
  v11 = settingsLocString(@"vo.cancel", @"VoiceOverSettings");
  v12 = [v10 initWithTitle:v11 style:2 target:self action:"_cancelButtonTapped:"];
  [topItem setLeftBarButtonItem:v12];

  [controllerCopy presentViewController:v13 animated:1 completion:0];
}

- (void)_cancelButtonTapped:(id)tapped
{
  userCanceledCommandSelectionBlock = [(VoiceOverCommandPickerPresenter *)self userCanceledCommandSelectionBlock];

  if (userCanceledCommandSelectionBlock)
  {
    userCanceledCommandSelectionBlock2 = [(VoiceOverCommandPickerPresenter *)self userCanceledCommandSelectionBlock];
    userCanceledCommandSelectionBlock2[2]();
  }
}

@end