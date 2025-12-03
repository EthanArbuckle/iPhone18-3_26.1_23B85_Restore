@interface _PHPhotoLibraryValidator
- (PLPhotoLibrary)photoLibrary;
- (_PHPhotoLibraryValidator)initWithPhotoLibrary:(id)library;
@end

@implementation _PHPhotoLibraryValidator

- (PLPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (_PHPhotoLibraryValidator)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v5 = [(_PHPhotoLibraryValidator *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
  }

  return v6;
}

@end