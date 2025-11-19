@interface VoiceOverCommandProfileValidationPresenter
+ (id)presenterWithValidation:(id)a3;
- (id)_initWithValidation:(id)a3;
- (void)presentWithController:(id)a3;
@end

@implementation VoiceOverCommandProfileValidationPresenter

+ (id)presenterWithValidation:(id)a3
{
  v3 = a3;
  v4 = [[VoiceOverCommandProfileValidationPresenter alloc] _initWithValidation:v3];

  return v4;
}

- (id)_initWithValidation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VoiceOverCommandProfileValidationPresenter;
  v6 = [(VoiceOverCommandProfileValidationPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validation, a3);
  }

  return v7;
}

- (void)presentWithController:(id)a3
{
  v4 = a3;
  v5 = [(VOSCommandProfileValidation *)self->_validation localizedErrorTitle];
  v6 = [(VOSCommandProfileValidation *)self->_validation localizedErrorMessage];
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = settingsLocString(@"vo.cancel", @"VoiceOverSettings");
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __68__VoiceOverCommandProfileValidationPresenter_presentWithController___block_invoke;
  v13[3] = &unk_2557A8;
  v13[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v13];

  [v7 addAction:v9];
  if (([(VOSCommandProfileValidation *)self->_validation isGestureAssignedToOtherCommand]& 1) != 0 || [(VOSCommandProfileValidation *)self->_validation isKeyboardShortcutAssignedToOtherCommand])
  {
    v10 = settingsLocString(@"vo.assign", @"VoiceOverSettings");
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __68__VoiceOverCommandProfileValidationPresenter_presentWithController___block_invoke_2;
    v12[3] = &unk_2557A8;
    v12[4] = self;
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:v12];

    [v7 addAction:v11];
  }

  [v4 presentViewController:v7 animated:1 completion:0];
}

void __68__VoiceOverCommandProfileValidationPresenter_presentWithController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userRejectedValidationResolutionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) userRejectedValidationResolutionBlock];
    v3[2]();
  }
}

void __68__VoiceOverCommandProfileValidationPresenter_presentWithController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) userAcceptedValidationResolutionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) userAcceptedValidationResolutionBlock];
    v3[2]();
  }
}

@end