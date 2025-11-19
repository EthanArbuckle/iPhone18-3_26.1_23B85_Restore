@interface VoiceOverCommandPickerPresenter
+ (VoiceOverCommandPickerPresenter)presenterWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5;
- (id)_initWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5;
- (void)_cancelButtonTapped:(id)a3;
- (void)presentWithController:(id)a3;
@end

@implementation VoiceOverCommandPickerPresenter

+ (VoiceOverCommandPickerPresenter)presenterWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[VoiceOverCommandPickerPresenter alloc] _initWithSpecifier:v9 selectionBlock:v8 cancelBlock:v7];

  return v10;
}

- (id)_initWithSpecifier:(id)a3 selectionBlock:(id)a4 cancelBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = VoiceOverCommandPickerPresenter;
  v12 = [(VoiceOverCommandPickerPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, a3);
    [(VoiceOverCommandPickerPresenter *)v13 setUserSelectedCommandBlock:v10];
    [(VoiceOverCommandPickerPresenter *)v13 setUserCanceledCommandSelectionBlock:v11];
  }

  return v13;
}

- (void)presentWithController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VoiceOverCommandPickerController);
  commandPickerViewController = self->_commandPickerViewController;
  self->_commandPickerViewController = v5;

  [(VoiceOverCommandPickerController *)self->_commandPickerViewController setSpecifier:self->_specifier];
  [(VoiceOverCommandPickerController *)self->_commandPickerViewController setPresenter:self];
  v13 = [[UINavigationController alloc] initWithRootViewController:self->_commandPickerViewController];
  [v13 setModalPresentationStyle:2];
  v7 = [v13 navigationBar];
  v8 = [v7 topItem];

  v9 = settingsLocString(@"vo.commands", @"VoiceOverSettings");
  [v8 setTitle:v9];

  v10 = [UIBarButtonItem alloc];
  v11 = settingsLocString(@"vo.cancel", @"VoiceOverSettings");
  v12 = [v10 initWithTitle:v11 style:2 target:self action:"_cancelButtonTapped:"];
  [v8 setLeftBarButtonItem:v12];

  [v4 presentViewController:v13 animated:1 completion:0];
}

- (void)_cancelButtonTapped:(id)a3
{
  v4 = [(VoiceOverCommandPickerPresenter *)self userCanceledCommandSelectionBlock];

  if (v4)
  {
    v5 = [(VoiceOverCommandPickerPresenter *)self userCanceledCommandSelectionBlock];
    v5[2]();
  }
}

@end