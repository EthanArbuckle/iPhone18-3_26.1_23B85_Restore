@interface PhotoViewerToolbarController
- (BOOL)shouldEnablePersonalizedAttribution;
- (BOOL)shouldEnableReportAnIssue;
- (BOOL)shouldShowAddPhotoButton;
- (BOOL)shouldShowPhotoThumbnailFeed;
- (PhotoViewerToolbarController)initWithMapItem:(id)item;
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
  _mapkit_preferredFirstPhotoVendor = [(MKMapItem *)mapItem _mapkit_preferredFirstPhotoVendor];
  v4 = [MKPOIEnrichmentAvailibility shouldShowAddPhotoButtonsOnSingleFullScreenPhotoViewerForMapItem:mapItem photoAttribution:_mapkit_preferredFirstPhotoVendor];

  return v4;
}

- (BOOL)shouldEnableReportAnIssue
{
  delegate = [(PhotoViewerToolbarController *)self delegate];
  v4 = [delegate photoViewerToolbarControllerGetCurrentPhoto:self];
  attribution = [v4 attribution];

  if (!attribution)
  {
    attribution = [(MKMapItem *)self->_mapItem _mapkit_preferredFirstPhotoVendor];
  }

  v6 = [MKPOIEnrichmentAvailibility shouldShowReportAnIssueOnPhotoGalleryForMapItem:self->_mapItem photoAttribution:attribution];

  return v6;
}

- (BOOL)shouldEnablePersonalizedAttribution
{
  selfCopy = self;
  delegate = [(PhotoViewerToolbarController *)self delegate];
  LOBYTE(selfCopy) = [delegate photoViewerToolbarControllerShouldEnablePersonalizedAttribution:selfCopy];

  return selfCopy;
}

- (void)_morePhotosButtonTapped
{
  delegate = [(PhotoViewerToolbarController *)self delegate];
  [delegate photoViewerToolbarControllerTappedMorePhotos:self];
}

- (void)_rightButtonTapped
{
  delegate = [(PhotoViewerToolbarController *)self delegate];
  [delegate photoViewerToolbarControllerTappedRight:self];
}

- (void)_leftButtonTapped
{
  delegate = [(PhotoViewerToolbarController *)self delegate];
  [delegate photoViewerToolbarControllerTappedLeft:self];
}

- (void)_addPhotoTapped
{
  delegate = [(PhotoViewerToolbarController *)self delegate];
  [delegate photoViewerToolbarControllerTappedAddPhoto:self];
}

- (PhotoViewerToolbarController)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PhotoViewerToolbarController;
  v6 = [(PhotoViewerToolbarController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
  }

  return v7;
}

@end