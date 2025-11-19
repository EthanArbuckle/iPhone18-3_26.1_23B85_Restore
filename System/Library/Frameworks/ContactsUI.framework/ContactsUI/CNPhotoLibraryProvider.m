@interface CNPhotoLibraryProvider
+ (id)photoLibraryWithError:(id *)a3;
@end

@implementation CNPhotoLibraryProvider

+ (id)photoLibraryWithError:(id *)a3
{
  v4 = [(objc_class *)getPHPhotoLibraryClass() isMultiLibraryModeEnabled];
  PHPhotoLibraryClass = getPHPhotoLibraryClass();
  if (v4)
  {
    [(objc_class *)PHPhotoLibraryClass openPhotoLibraryWithWellKnownIdentifier:1 error:a3];
  }

  else
  {
    [(objc_class *)PHPhotoLibraryClass sharedPhotoLibrary];
  }
  v6 = ;

  return v6;
}

@end