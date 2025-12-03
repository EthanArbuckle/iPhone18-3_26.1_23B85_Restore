@interface QLItem(PreviewController)
- (uint64_t)isEdited;
@end

@implementation QLItem(PreviewController)

- (uint64_t)isEdited
{
  if ([self originalContentWasUpdated])
  {
    v2 = [self editingMode] == 3;
  }

  else
  {
    v2 = 0;
  }

  editedFileURL = [self editedFileURL];

  return editedFileURL || v2;
}

@end