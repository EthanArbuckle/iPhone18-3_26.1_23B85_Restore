@interface SafariLibraryPath
@end

@implementation SafariLibraryPath

void __SafariLibraryPath_block_invoke(id a1)
{
  v1 = _SFSafariContainerPath();
  v4 = v1;
  if (v1)
  {
    [v1 stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    SafariNonContaineredLibraryPath();
  }
  v2 = ;
  v3 = SafariLibraryPath_path;
  SafariLibraryPath_path = v2;
}

@end