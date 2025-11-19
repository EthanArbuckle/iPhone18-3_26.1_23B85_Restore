@interface WFFormSheetImagePickerController
- (CGSize)preferredContentSize;
@end

@implementation WFFormSheetImagePickerController

- (CGSize)preferredContentSize
{
  v2 = 540.0;
  v3 = 620.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end