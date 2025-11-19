@interface PaperTextAttachmentView
- (BOOL)_wantsToolPickerVisible:(id)a3;
@end

@implementation PaperTextAttachmentView

- (BOOL)_wantsToolPickerVisible:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = PaperTextAttachmentView._wantsToolPickerVisible(_:)(v4);

  return self & 1;
}

@end