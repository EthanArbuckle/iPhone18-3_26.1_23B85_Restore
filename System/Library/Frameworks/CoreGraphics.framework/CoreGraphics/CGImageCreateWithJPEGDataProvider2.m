@interface CGImageCreateWithJPEGDataProvider2
@end

@implementation CGImageCreateWithJPEGDataProvider2

uint64_t (*__CGImageCreateWithJPEGDataProvider2_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceGetType");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceGetType");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceGetType");
  }

  CGImageCreateWithJPEGDataProvider2_f_102 = result;
  return result;
}

@end