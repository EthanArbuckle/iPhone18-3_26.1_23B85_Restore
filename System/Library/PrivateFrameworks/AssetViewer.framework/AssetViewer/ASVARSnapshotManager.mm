@interface ASVARSnapshotManager
+ (void)showARSnapshotUIForImage:(id)a3;
@end

@implementation ASVARSnapshotManager

+ (void)showARSnapshotUIForImage:(id)a3
{
  v3 = MEMORY[0x277D4BE60];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  v5 = objc_alloc_init(MEMORY[0x277D4BE68]);
  [v5 setFlashStyle:0];
  [v5 setSaveLocation:1];
  [v6 showScreenshotUIForImage:v4 options:v5];
}

@end