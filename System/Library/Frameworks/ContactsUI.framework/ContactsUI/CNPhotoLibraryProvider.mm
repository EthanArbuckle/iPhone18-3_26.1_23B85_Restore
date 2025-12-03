@interface CNPhotoLibraryProvider
+ (id)photoLibraryWithError:(id *)error;
@end

@implementation CNPhotoLibraryProvider

+ (id)photoLibraryWithError:(id *)error
{
  isMultiLibraryModeEnabled = [(objc_class *)getPHPhotoLibraryClass() isMultiLibraryModeEnabled];
  PHPhotoLibraryClass = getPHPhotoLibraryClass();
  if (isMultiLibraryModeEnabled)
  {
    [(objc_class *)PHPhotoLibraryClass openPhotoLibraryWithWellKnownIdentifier:1 error:error];
  }

  else
  {
    [(objc_class *)PHPhotoLibraryClass sharedPhotoLibrary];
  }
  v6 = ;

  return v6;
}

@end