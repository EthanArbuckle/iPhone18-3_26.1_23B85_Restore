@interface ASVARSnapshotManager
+ (void)showARSnapshotUIForImage:(id)image;
@end

@implementation ASVARSnapshotManager

+ (void)showARSnapshotUIForImage:(id)image
{
  v3 = MEMORY[0x277D4BE60];
  imageCopy = image;
  v6 = objc_alloc_init(v3);
  v5 = objc_alloc_init(MEMORY[0x277D4BE68]);
  [v5 setFlashStyle:0];
  [v5 setSaveLocation:1];
  [v6 showScreenshotUIForImage:imageCopy options:v5];
}

@end