@interface InstallSheetConfirmationViewModel
- (id)miniProductPagePresentingViewController;
- (void)moreButtonPressed;
@end

@implementation InstallSheetConfirmationViewModel

- (id)miniProductPagePresentingViewController
{
  result = *self->hostingController;
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (void)moreButtonPressed
{

  sub_1000057C0();
}

@end