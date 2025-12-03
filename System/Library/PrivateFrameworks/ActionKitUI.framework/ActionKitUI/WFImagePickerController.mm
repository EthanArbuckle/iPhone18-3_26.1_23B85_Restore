@interface WFImagePickerController
- (BOOL)accessibilityPerformMagicTap;
@end

@implementation WFImagePickerController

- (BOOL)accessibilityPerformMagicTap
{
  magicTapHandler = [(WFImagePickerController *)self magicTapHandler];

  if (magicTapHandler)
  {
    magicTapHandler2 = [(WFImagePickerController *)self magicTapHandler];
    v5 = magicTapHandler2[2]();

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = WFImagePickerController;
    return [(WFImagePickerController *)&v7 accessibilityPerformMagicTap];
  }
}

@end