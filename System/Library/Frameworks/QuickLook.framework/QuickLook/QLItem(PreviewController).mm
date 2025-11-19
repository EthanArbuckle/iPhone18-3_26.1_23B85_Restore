@interface QLItem(PreviewController)
- (uint64_t)isEdited;
@end

@implementation QLItem(PreviewController)

- (uint64_t)isEdited
{
  if ([a1 originalContentWasUpdated])
  {
    v2 = [a1 editingMode] == 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = [a1 editedFileURL];

  return v3 || v2;
}

@end