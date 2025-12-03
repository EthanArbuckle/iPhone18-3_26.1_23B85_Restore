@interface UGCPOIEnrichmentCoordinator
+ (id)_addCoordinatorWithMapItem:(id)item entryPoint:(int64_t)point;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item originTarget:(id)target;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item preferredSourceType:(int64_t)type originTarget:(id)target;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item preferredSourceType:(int64_t)type originTarget:(id)target suppressRatings:(BOOL)ratings;
+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)item albumIndex:(unint64_t)index;
+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)item withStartingIndex:(unint64_t)index;
+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)item entryPoint:(int64_t)point originTarget:(id)target;
+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)item initialOverallState:(int64_t)state entryPoint:(int64_t)point originTarget:(id)target;
- (ContaineeViewControllerDelegate)containeeDelegate;
- (ContainerViewController)containerViewController;
- (MUActivityObserving)submissionLookupObserver;
- (UGCPOIEnrichmentCoordinator)init;
- (UGCPOIEnrichmentCoordinatorDelegate)delegate;
- (UGCPOIEnrichmentSubmissionStatusDelegate)submissionStatusDelegate;
- (UIBarButtonItem)anchoringBarButtonItem;
- (UIView)anchoringView;
- (UIViewController)presentingViewController;
- (void)invokeCompletion;
- (void)invokeSubmissionUpdate;
@end

@implementation UGCPOIEnrichmentCoordinator

- (ContaineeViewControllerDelegate)containeeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeDelegate);

  return WeakRetained;
}

- (ContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (MUActivityObserving)submissionLookupObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_submissionLookupObserver);

  return WeakRetained;
}

- (UIView)anchoringView
{
  WeakRetained = objc_loadWeakRetained(&self->_anchoringView);

  return WeakRetained;
}

- (UIBarButtonItem)anchoringBarButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_anchoringBarButtonItem);

  return WeakRetained;
}

- (UGCPOIEnrichmentSubmissionStatusDelegate)submissionStatusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_submissionStatusDelegate);

  return WeakRetained;
}

- (UGCPOIEnrichmentCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)invokeCompletion
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained poiEnrichmentCoordinatorDidFinish:self];
}

- (void)invokeSubmissionUpdate
{
  submissionStatusDelegate = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    submissionStatusDelegate2 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [submissionStatusDelegate2 poiEnrichmentCoordinatorDidUpdateUserSubmission:self];
  }
}

- (UGCPOIEnrichmentCoordinator)init
{
  v6.receiver = self;
  v6.super_class = UGCPOIEnrichmentCoordinator;
  v2 = [(UGCPOIEnrichmentCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[MKLocationManager unretainedUGCInstance];
    locationManager = v2->_locationManager;
    v2->_locationManager = v3;
  }

  return v2;
}

+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)item albumIndex:(unint64_t)index
{
  v5 = [self photoThumbnailGalleryCoordinatorWithMapItem:item withStartingIndex:0];
  [v5 setAlbumIndex:index];

  return v5;
}

+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)item withStartingIndex:(unint64_t)index
{
  itemCopy = item;
  v6 = objc_alloc_init(UGCPhotoGalleryCoordinator);
  [(UGCPOIEnrichmentCoordinator *)v6 setMapItem:itemCopy];

  [(UGCPhotoGalleryCoordinator *)v6 setSelectedIndex:index];

  return v6;
}

+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)item entryPoint:(int64_t)point originTarget:(id)target
{
  targetCopy = target;
  v8 = [(UGCPOIEnrichmentCoordinator *)UGCRatingsAndPhotosCoordinator _addCoordinatorWithMapItem:item entryPoint:point];
  [v8 setOriginTarget:targetCopy];

  return v8;
}

+ (id)_addCoordinatorWithMapItem:(id)item entryPoint:(int64_t)point
{
  itemCopy = item;
  v6 = objc_alloc_init(UGCRatingsAndPhotosCoordinator);
  [(UGCPOIEnrichmentCoordinator *)v6 setMapItem:itemCopy];

  [(UGCPOIEnrichmentCoordinator *)v6 setEntryPoint:point];

  return v6;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item preferredSourceType:(int64_t)type originTarget:(id)target
{
  targetCopy = target;
  v8 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:item entryPoint:0];
  [v8 setHasPhotoPickerEmphasis:1];
  [v8 setPreferredSourceType:type];
  [v8 setOriginTarget:targetCopy];

  return v8;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item preferredSourceType:(int64_t)type originTarget:(id)target suppressRatings:(BOOL)ratings
{
  ratingsCopy = ratings;
  targetCopy = target;
  v10 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:item entryPoint:0];
  [v10 setHasPhotoPickerEmphasis:1];
  [v10 setSuppressRatings:ratingsCopy];
  [v10 setPreferredSourceType:type];
  [v10 setOriginTarget:targetCopy];

  return v10;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)item originTarget:(id)target
{
  targetCopy = target;
  v6 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:item entryPoint:0];
  [v6 setHasPhotoPickerEmphasis:1];
  [v6 setOriginTarget:targetCopy];

  return v6;
}

+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)item initialOverallState:(int64_t)state entryPoint:(int64_t)point originTarget:(id)target
{
  targetCopy = target;
  v10 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:item entryPoint:point];
  [v10 setInitialOverallState:state];
  [v10 setOriginTarget:targetCopy];

  return v10;
}

@end