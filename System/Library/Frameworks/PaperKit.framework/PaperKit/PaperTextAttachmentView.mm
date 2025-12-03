@interface PaperTextAttachmentView
- (BOOL)_wantsToolPickerVisible:(id)visible;
@end

@implementation PaperTextAttachmentView

- (BOOL)_wantsToolPickerVisible:(id)visible
{
  visibleCopy = visible;
  selfCopy = self;
  LOBYTE(self) = PaperTextAttachmentView._wantsToolPickerVisible(_:)(visibleCopy);

  return self & 1;
}

@end