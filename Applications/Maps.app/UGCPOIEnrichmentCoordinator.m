@interface UGCPOIEnrichmentCoordinator
+ (id)_addCoordinatorWithMapItem:(id)a3 entryPoint:(int64_t)a4;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 originTarget:(id)a4;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 preferredSourceType:(int64_t)a4 originTarget:(id)a5;
+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 preferredSourceType:(int64_t)a4 originTarget:(id)a5 suppressRatings:(BOOL)a6;
+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)a3 albumIndex:(unint64_t)a4;
+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)a3 withStartingIndex:(unint64_t)a4;
+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)a3 entryPoint:(int64_t)a4 originTarget:(id)a5;
+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)a3 initialOverallState:(int64_t)a4 entryPoint:(int64_t)a5 originTarget:(id)a6;
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
  v3 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UGCPOIEnrichmentCoordinator *)self submissionStatusDelegate];
    [v5 poiEnrichmentCoordinatorDidUpdateUserSubmission:self];
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

+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)a3 albumIndex:(unint64_t)a4
{
  v5 = [a1 photoThumbnailGalleryCoordinatorWithMapItem:a3 withStartingIndex:0];
  [v5 setAlbumIndex:a4];

  return v5;
}

+ (id)photoThumbnailGalleryCoordinatorWithMapItem:(id)a3 withStartingIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(UGCPhotoGalleryCoordinator);
  [(UGCPOIEnrichmentCoordinator *)v6 setMapItem:v5];

  [(UGCPhotoGalleryCoordinator *)v6 setSelectedIndex:a4];

  return v6;
}

+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)a3 entryPoint:(int64_t)a4 originTarget:(id)a5
{
  v7 = a5;
  v8 = [(UGCPOIEnrichmentCoordinator *)UGCRatingsAndPhotosCoordinator _addCoordinatorWithMapItem:a3 entryPoint:a4];
  [v8 setOriginTarget:v7];

  return v8;
}

+ (id)_addCoordinatorWithMapItem:(id)a3 entryPoint:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(UGCRatingsAndPhotosCoordinator);
  [(UGCPOIEnrichmentCoordinator *)v6 setMapItem:v5];

  [(UGCPOIEnrichmentCoordinator *)v6 setEntryPoint:a4];

  return v6;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 preferredSourceType:(int64_t)a4 originTarget:(id)a5
{
  v7 = a5;
  v8 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:a3 entryPoint:0];
  [v8 setHasPhotoPickerEmphasis:1];
  [v8 setPreferredSourceType:a4];
  [v8 setOriginTarget:v7];

  return v8;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 preferredSourceType:(int64_t)a4 originTarget:(id)a5 suppressRatings:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:a3 entryPoint:0];
  [v10 setHasPhotoPickerEmphasis:1];
  [v10 setSuppressRatings:v6];
  [v10 setPreferredSourceType:a4];
  [v10 setOriginTarget:v9];

  return v10;
}

+ (id)photoEmphasizedAddCoordinatorWithMapItem:(id)a3 originTarget:(id)a4
{
  v5 = a4;
  v6 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:a3 entryPoint:0];
  [v6 setHasPhotoPickerEmphasis:1];
  [v6 setOriginTarget:v5];

  return v6;
}

+ (id)ratingsAndPhotosCoordinatorWithMapItem:(id)a3 initialOverallState:(int64_t)a4 entryPoint:(int64_t)a5 originTarget:(id)a6
{
  v9 = a6;
  v10 = [UGCPOIEnrichmentCoordinator _addCoordinatorWithMapItem:a3 entryPoint:a5];
  [v10 setInitialOverallState:a4];
  [v10 setOriginTarget:v9];

  return v10;
}

@end