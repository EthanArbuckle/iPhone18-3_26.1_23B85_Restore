@interface UGCPhotoViewerDataProvider
- (UGCMorePhotosDataProviderUpdateDelegate)delegate;
- (UGCPhotoAlbumCategory)albumCategory;
@end

@implementation UGCPhotoViewerDataProvider

- (UGCMorePhotosDataProviderUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UGCPhotoAlbumCategory)albumCategory
{
  v2 = [[UGCPhotoAlbumCategory alloc] initWithTitle:&stru_1016631F0 categoryType:0];

  return v2;
}

@end