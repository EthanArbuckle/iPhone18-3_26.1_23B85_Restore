@interface SafariNonContaineredLibraryPath
@end

@implementation SafariNonContaineredLibraryPath

void __SafariNonContaineredLibraryPath_block_invoke(id a1)
{
  SafariNonContaineredLibraryPath_path = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];

  _objc_release_x1();
}

@end