@interface WFImagePickerController
- (BOOL)accessibilityPerformMagicTap;
@end

@implementation WFImagePickerController

- (BOOL)accessibilityPerformMagicTap
{
  v3 = [(WFImagePickerController *)self magicTapHandler];

  if (v3)
  {
    v4 = [(WFImagePickerController *)self magicTapHandler];
    v5 = v4[2]();

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