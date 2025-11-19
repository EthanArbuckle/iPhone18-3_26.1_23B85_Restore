@interface PhotoViewerToolbarController
- (BOOL)shouldEnablePersonalizedAttribution;
- (BOOL)shouldEnableReportAnIssue;
- (BOOL)shouldShowAddPhotoButton;
- (BOOL)shouldShowPhotoThumbnailFeed;
- (PhotoViewerToolbarController)initWithMapItem:(id)a3;
- (PhotoViewerToolbarControllerActionHandling)delegate;
- (void)_addPhotoTapped;
- (void)_leftButtonTapped;
- (void)_morePhotosButtonTapped;
- (void)_rightButtonTapped;
@end

@implementation PhotoViewerToolbarController

- (PhotoViewerToolbarControllerActionHandling)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldShowPhotoThumbnailFeed
{
  v3 = [MKPOIEnrichmentAvailibility shouldShowMorePhotosGalleryForMapItem:self->_mapItem];
  if (v3)
  {
    LOBYTE(v3) = ![(PhotoViewerToolbarController *)self shouldSuppressPhotoGrid];
  }

  return v3;
}

- (BOOL)shouldShowAddPhotoButton
{
  mapItem = self->_mapItem;
  v3 = [(MKMapItem *)mapItem _mapkit_preferredFirstPhotoVendor];
  v4 = [MKPOIEnrichmentAvailibility shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:mapItem photoAttribution:v3];

  return v4;
}

- (BOOL)shouldEnableReportAnIssue
{
  v3 = [(PhotoViewerToolbarController *)self delegate];
  v4 = [v3 photoViewerToolbarControllerGetCurrentPhoto:self];
  v5 = [v4 attribution];

  if (!v5)
  {
    v5 = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
  }

  v6 = [MKPOIEnrichmentAvailibility shouldShowReportAnIssueOnPhotoGalleryForMapItem:self->_mapItem photoAttribution:v5];

  return v6;
}

- (BOOL)shouldEnablePersonalizedAttribution
{
  v2 = self;
  v3 = [(PhotoViewerToolbarController *)self delegate];
  LOBYTE(v2) = [v3 photoViewerToolbarControllerShouldEnablePersonalizedAttribution:v2];

  return v2;
}

- (void)_morePhotosButtonTapped
{
  v3 = [(PhotoViewerToolbarController *)self delegate];
  [v3 photoViewerToolbarControllerTappedMorePhotos:self];
}

- (void)_rightButtonTapped
{
  v3 = [(PhotoViewerToolbarController *)self delegate];
  [v3 photoViewerToolbarControllerTappedRight:self];
}

- (void)_leftButtonTapped
{
  v3 = [(PhotoViewerToolbarController *)self delegate];
  [v3 photoViewerToolbarControllerTappedLeft:self];
}

- (void)_addPhotoTapped
{
  v3 = [(PhotoViewerToolbarController *)self delegate];
  [v3 photoViewerToolbarControllerTappedAddPhoto:self];
}

- (PhotoViewerToolbarController)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PhotoViewerToolbarController;
  v6 = [(PhotoViewerToolbarController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end