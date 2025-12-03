@interface UGCPhotosSectionController
- (NSArray)rowItems;
- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate;
- (UGCPhotoSectionControllerDelegate)delegate;
- (UGCPhotosSectionController)initWithPhotosForm:(id)form mapItem:(id)item presentingViewController:(id)controller deferAddPhotoPresentationToParent:(BOOL)parent analyticsDelegate:(id)delegate showSuggestedPhotos:(BOOL)photos;
- (id)addPhotosControllerRequestsAnchoringView:(id)view;
- (id)configureCollectionViewHeader;
- (id)imagePreviewAtIndex:(unint64_t)index;
- (unint64_t)numberOfImagePreviews;
- (void)_addFakePhoto;
- (void)_addPhotosToEditorController;
- (void)_addPhotosWithMetadataToEditor:(id)editor;
- (void)_checkForNearbyPhotos;
- (void)_dismissTakePhotoController:(id)controller;
- (void)_photoCarouselControllerRequestsPhotoCreditEditor;
- (void)_presentAddPhotosControllerWithSourceType:(int64_t)type;
- (void)_removeAddPhotosRowItemIfNeeded;
- (void)addPhotosCellRequestsAddingNewPhoto:(id)photo usingSourceType:(int64_t)type;
- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo forSourceType:(int64_t)type;
- (void)removeAddPhotosRowItem;
- (void)suggestedPhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata;
- (void)takePhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata;
- (void)updatePhotoCreditInCollectionViewHeader;
- (void)updateSelectedPhotosCountInCollectionViewHeader;
@end

@implementation UGCPhotosSectionController

- (UGCPhotoSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (id)imagePreviewAtIndex:(unint64_t)index
{
  activePhotoList = [(UGCPhotosForm *)self->_photosForm activePhotoList];
  v5 = [activePhotoList objectAtIndex:index];

  return v5;
}

- (unint64_t)numberOfImagePreviews
{
  activePhotoList = [(UGCPhotosForm *)self->_photosForm activePhotoList];
  v3 = [activePhotoList count];

  return v3;
}

- (void)_addFakePhoto
{
  v10 = [UIImage imageNamed:@"RAPNotListed"];
  v3 = UIImageJPEGRepresentation(v10, 0.800000012);
  v4 = [[CLLocation alloc] initWithLatitude:33.3 longitude:-128.7];
  v5 = [UGCPhotoWithMetadata alloc];
  v6 = +[NSDate date];
  v7 = [(UGCPhotoWithMetadata *)v5 initWithImageData:v3 date:v6 location:v4 source:2];

  [(UGCPhotosForm *)self->_photosForm addPhoto:v7];
  photoEditorController = self->_photoEditorController;
  identifier = [(UGCPhotoWithMetadata *)v7 identifier];
  [(UGCPhotoCarouselController *)photoEditorController addImage:v10 forIdentifier:identifier];
}

- (void)removeAddPhotosRowItem
{
  self->_showingAddYourPhotosCell = 0;
  [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell setHidden:0];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setHidden:0];
  [(UGCAddPhotosCell *)self->_addPhotosCell setHidden:1];
  delegate = [(UGCPhotosSectionController *)self delegate];
  [delegate photosSectionController:self willShowPhotoCarousel:1];

  delegate2 = [(UGCPhotosSectionController *)self delegate];
  [delegate2 sectionControllerDidUpdateRowItems:self];
}

- (void)_checkForNearbyPhotos
{
  objc_initWeak(&location, self);
  mapItem = self->_mapItem;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A375DC;
  v4[3] = &unk_1016619A8;
  objc_copyWeak(&v5, &location);
  [UGCNearbyPhotosAvailibility hasTakenPhotosForMapItem:mapItem completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (NSArray)rowItems
{
  if (self->_photosForm)
  {
    rowItems = self->_rowItems;
    if (rowItems)
    {
LABEL_23:
      v27 = rowItems;

      return v27;
    }

    v5 = objc_alloc_init(NSMutableArray);
    v6 = +[UIDevice currentDevice];
    if ([(UGCPOIEnrichmentHeaderCell *)v6 userInterfaceIdiom]== 5)
    {
      IsEnabled_SydneyARP = MapsFeature_IsEnabled_SydneyARP();

      if (IsEnabled_SydneyARP)
      {
LABEL_7:
        v11 = [UGCPhotoCarouselCell alloc];
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        height = [(UGCPhotoCarouselCell *)v11 initWithFrame:CGRectZero.origin.x, y, width, height];
        [(UGCPhotoCarouselCell *)height setCarouselController:self->_photoEditorController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          configureCollectionViewHeader = [(UGCPhotosSectionController *)self configureCollectionViewHeader];
          headerView = self->_headerView;
          self->_headerView = configureCollectionViewHeader;

          [(UGCPhotoCreditSectionHeaderView *)self->_headerView setPreservesSuperviewLayoutMargins:1];
          v18 = [UGCPOIEnrichmentRowItem rowItemWithView:self->_headerView];
          [(UGCPhotoCreditSectionHeaderView *)self->_headerView setHidden:self->_showingAddYourPhotosCell];
          [v5 addObject:v18];
        }

        height2 = [[UGCPOIEnrichmentEditorCell alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        photoEditorContainerCell = self->_photoEditorContainerCell;
        self->_photoEditorContainerCell = height2;

        [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell setHidden:self->_showingAddYourPhotosCell];
        [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell addSubview:height];
        v21 = [[MUEdgeLayout alloc] initWithItem:height container:self->_photoEditorContainerCell];
        [v21 activate];

        v22 = [UGCPOIEnrichmentRowItem rowItemWithView:self->_photoEditorContainerCell bottomSpacing:16.0];
        if (MapsFeature_IsEnabled_SydneyARP())
        {
          if (self->_showingAddYourPhotosCell)
          {
            v23 = [[UGCAddPhotosCell alloc] initWithDelegate:self];
            addPhotosCell = self->_addPhotosCell;
            self->_addPhotosCell = v23;

            [(UGCAddPhotosCell *)self->_addPhotosCell setClipsToBounds:1];
            v25 = [UGCPOIEnrichmentRowItem rowItemWithView:self->_addPhotosCell bottomSpacing:16.0];
            [v5 addObject:v25];
          }

          activePhotoList = [(UGCPhotosForm *)self->_photosForm activePhotoList];
          if ([activePhotoList count])
          {
          }

          else
          {
            deferAddPhotoPresentationToParent = self->_deferAddPhotoPresentationToParent;

            if (!deferAddPhotoPresentationToParent && (!MapsFeature_IsEnabled_ARPCommunityID() || !GEOConfigGetBOOL() || MKGetHasUserConsentedToAddingContributions() == 1))
            {
              [(UGCPhotosSectionController *)self _checkForNearbyPhotos];
            }
          }
        }

        [v5 addObject:v22];
        v30 = [v5 copy];
        v31 = self->_rowItems;
        self->_rowItems = v30;

        rowItems = self->_rowItems;
        goto LABEL_23;
      }

      v6 = [[UGCPOIEnrichmentHeaderCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"Your Photos Header [UGC]" value:@"localized string not found" table:0];
      [(UGCPOIEnrichmentHeaderCell *)v6 setHeaderText:v9];

      v10 = [UGCPOIEnrichmentRowItem rowItemWithView:v6 bottomSpacing:10.0];
      [v5 addObject:v10];
    }

    goto LABEL_7;
  }

  v27 = &__NSArray0__struct;

  return v27;
}

- (void)updateSelectedPhotosCountInCollectionViewHeader
{
  numberOfAddedPhotos = [(UGCPhotosForm *)self->_photosForm numberOfAddedPhotos];
  v4 = [(UGCPhotoCarouselController *)self->_photoEditorController collectionViewHeaderTitleForNumberOfSelectedPhotos:numberOfAddedPhotos];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setTitle:v4];

  v5 = numberOfAddedPhotos < [(UGCPhotosForm *)self->_photosForm maximumNumberOfPhotos];
  headerView = self->_headerView;

  [(UGCPhotoCreditSectionHeaderView *)headerView setAccessoryActionButtonEnabled:v5];
}

- (void)updatePhotoCreditInCollectionViewHeader
{
  configurePhotoCreditStringForCollectionViewHeader = [(UGCPhotoCarouselController *)self->_photoEditorController configurePhotoCreditStringForCollectionViewHeader];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setSubtitle:configurePhotoCreditStringForCollectionViewHeader];
}

- (id)configureCollectionViewHeader
{
  v3 = self->_photoEditorController;
  v4 = objc_alloc_init(UGCPhotoCreditSectionHeaderView);
  v5 = [(UGCPhotoCarouselController *)v3 collectionViewHeaderTitleForNumberOfSelectedPhotos:[(UGCPhotosForm *)self->_photosForm numberOfAddedPhotos]];
  [(UGCPhotoCreditSectionHeaderView *)v4 setTitle:v5];

  collectionViewButtonTitle = [(UGCPhotoCarouselController *)v3 collectionViewButtonTitle];
  objc_initWeak(&location, self);
  configurePhotoCreditStringForCollectionViewHeader = [(UGCPhotoCarouselController *)v3 configurePhotoCreditStringForCollectionViewHeader];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A37CC4;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [(UGCPhotoCreditSectionHeaderView *)v4 setSubtitleActionTitle:configurePhotoCreditStringForCollectionViewHeader completionHandler:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A37D08;
  v9[3] = &unk_101660108;
  objc_copyWeak(&v10, &location);
  [(UGCPhotoCreditSectionHeaderView *)v4 setAccessoryActionTitle:collectionViewButtonTitle selectionHandler:v9];
  [(UGCPhotoCreditSectionHeaderView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_dismissTakePhotoController:(id)controller
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100A37DD0;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [controller dismissWithCompletion:v3];
}

- (void)_removeAddPhotosRowItemIfNeeded
{
  if (self->_showingAddYourPhotosCell)
  {
    self->_showingAddYourPhotosCell = 0;
    [(UGCPhotosSectionController *)self removeAddPhotosRowItem];
  }
}

- (id)addPhotosControllerRequestsAnchoringView:(id)view
{
  addPhotosCell = self->_addPhotosCell;
  if (!addPhotosCell)
  {
    addPhotosCell = self->_photoEditorController;
  }

  anchoringView = [addPhotosCell anchoringView];

  return anchoringView;
}

- (void)_addPhotosWithMetadataToEditor:(id)editor
{
  editorCopy = editor;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [editorCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(editorCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = [v10 isEqual:objc_opt_class()];
        photoEditorController = self->_photoEditorController;
        if (v11)
        {
          photoMetadata = [v9 photoMetadata];
          clientImageUuid = [photoMetadata clientImageUuid];
          [(UGCPhotoCarouselController *)photoEditorController addPhotoWithMetadata:v9 forIdentifier:clientImageUuid];

          [(UGCPhotosSectionController *)self updateSelectedPhotosCountInCollectionViewHeader];
        }

        else
        {
          image = [v9 image];
          photoMetadata2 = [v9 photoMetadata];
          clientImageUuid2 = [photoMetadata2 clientImageUuid];
          [(UGCPhotoCarouselController *)photoEditorController addImage:image forIdentifier:clientImageUuid2];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [editorCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)takePhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata
{
  photosForm = self->_photosForm;
  metadataCopy = metadata;
  controllerCopy = controller;
  [(UGCPhotosForm *)photosForm addPhotoListWithMetadata:metadataCopy];
  [(UGCPhotosSectionController *)self _addPhotosWithMetadataToEditor:metadataCopy];

  [(UGCPhotosSectionController *)self _removeAddPhotosRowItemIfNeeded];
  v8 = self->_photosForm;
  activePhotoList = [(UGCPhotosForm *)v8 activePhotoList];
  v10 = [activePhotoList count];
  v11 = sub_1006E6728(v8);

  [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v10[v11]];
  [(UGCPhotosSectionController *)self _dismissTakePhotoController:controllerCopy];
}

- (void)suggestedPhotoController:(id)controller didSelectPhotosWithMetadata:(id)metadata
{
  controllerCopy = controller;
  metadataCopy = metadata;
  [(UGCPhotosForm *)self->_photosForm addPhotoListWithMetadata:metadataCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = metadataCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        photoMetadata = [v13 photoMetadata];
        clientImageUuid = [photoMetadata clientImageUuid];
        [controllerCopy addPhotoWithMetadata:v13 forIdentifier:clientImageUuid];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = self->_photosForm;
  activePhotoList = [(UGCPhotosForm *)v16 activePhotoList];
  v18 = [activePhotoList count];
  v19 = sub_1006E6728(v16);

  [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v18[v19]];
  [(UGCPhotosSectionController *)self updateSelectedPhotosCountInCollectionViewHeader];
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)photo forSourceType:(int64_t)type
{
  v6 = [UGCAddPhotosController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v8 = sub_1006E6728(self->_photosForm);
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
  v11 = [(UGCAddPhotosController *)v6 initWithPresentingViewController:WeakRetained sourceType:type multipleSelectionLimit:v8 placeQuestionnaire:_placeQuestionnaire delegate:self];
  takePhotoController = self->_takePhotoController;
  self->_takePhotoController = v11;

  v13 = self->_takePhotoController;

  [(UGCAddPhotosController *)v13 present];
}

- (void)photoCarouselController:(id)controller requestsRemovingImageForIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = [(UGCPhotosForm *)self->_photosForm removePhotoWithIdentifier:identifier];
  if (v7)
  {
    v8 = self->_photosForm;
    activePhotoList = [(UGCPhotosForm *)v8 activePhotoList];
    v10 = [activePhotoList count];
    v11 = sub_1006E6728(v8);

    [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v10[v11]];
  }

  completionCopy[2](completionCopy, v7);
}

- (void)_presentAddPhotosControllerWithSourceType:(int64_t)type
{
  v5 = [UGCAddPhotosController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7 = sub_1006E6728(self->_photosForm);
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _placeQuestionnaire = [_geoMapItem _placeQuestionnaire];
  v10 = [(UGCAddPhotosController *)v5 initWithPresentingViewController:WeakRetained sourceType:type multipleSelectionLimit:v7 placeQuestionnaire:_placeQuestionnaire delegate:self];
  takePhotoController = self->_takePhotoController;
  self->_takePhotoController = v10;

  v12 = self->_takePhotoController;

  [(UGCAddPhotosController *)v12 present];
}

- (void)addPhotosCellRequestsAddingNewPhoto:(id)photo usingSourceType:(int64_t)type
{
  photoCopy = photo;
  delegate = [(UGCPhotosSectionController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(UGCPhotosSectionController *)self delegate];
    [delegate2 photosSectionController:self userActionCapturedForAction:2147 value:@"business info"];
  }

  if ([(UGCPhotosSectionController *)self deferAddPhotoPresentationToParent])
  {
    v10 = objc_alloc_init(MUPresentationOptions);
    [v10 setSourceView:photoCopy];
    [photoCopy frame];
    [v10 setSourceRect:?];
    delegate3 = [(UGCPhotosSectionController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate4 = [(UGCPhotosSectionController *)self delegate];
      [delegate4 photosSectionController:self selectedAddPhotosUsingSourceType:type presentationOptions:v10];
    }
  }

  else if (MapsFeature_IsEnabled_ARPCommunityID() && GEOConfigGetBOOL())
  {
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100A386C4;
    v15[3] = &unk_1016324D0;
    objc_copyWeak(v16, &location);
    v16[1] = type;
    [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:WeakRetained presentationContext:0 completion:v15];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UGCPhotosSectionController *)self _presentAddPhotosControllerWithSourceType:type];
  }
}

- (void)_photoCarouselControllerRequestsPhotoCreditEditor
{
  actionCoordinator = self->_actionCoordinator;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [(ActionCoordination *)actionCoordinator viewControllerShowPhotoCredit:WeakRetained];
}

- (void)_addPhotosToEditorController
{
  if (!self->_deferAddPhotoPresentationToParent)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    activePhotoList = [(UGCPhotosForm *)self->_photosForm activePhotoList];
    v5 = [activePhotoList countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = *v15;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activePhotoList);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 url];

        photoEditorController = self->_photoEditorController;
        if (v10)
        {
          identifier2 = [v9 url];
          identifier = [v9 identifier];
          [(UGCPhotoCarouselController *)photoEditorController addImageURL:identifier2 forIdentifier:identifier];
        }

        else
        {
          if (isKindOfClass)
          {
            identifier2 = [v9 identifier];
            [(UGCPhotoCarouselController *)photoEditorController addPhotoWithMetadata:v9 forIdentifier:identifier2];
            goto LABEL_13;
          }

          identifier2 = [v9 image];
          identifier = [v9 identifier];
          [(UGCPhotoCarouselController *)photoEditorController addImage:identifier2 forIdentifier:identifier];
        }

LABEL_13:
      }

      v6 = [activePhotoList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v6)
      {
LABEL_15:

        return;
      }
    }
  }
}

- (UGCPhotosSectionController)initWithPhotosForm:(id)form mapItem:(id)item presentingViewController:(id)controller deferAddPhotoPresentationToParent:(BOOL)parent analyticsDelegate:(id)delegate showSuggestedPhotos:(BOOL)photos
{
  photosCopy = photos;
  formCopy = form;
  itemCopy = item;
  controllerCopy = controller;
  delegateCopy = delegate;
  v44.receiver = self;
  v44.super_class = UGCPhotosSectionController;
  v19 = [(UGCPhotosSectionController *)&v44 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_analyticsDelegate, delegateCopy);
    objc_storeStrong(&v20->_photosForm, form);
    objc_storeWeak(&v20->_presentingViewController, controllerCopy);
    v21 = +[UIApplication sharedMapsDelegate];
    appCoordinator = [v21 appCoordinator];
    baseActionCoordinator = [appCoordinator baseActionCoordinator];
    actionCoordinator = v20->_actionCoordinator;
    v20->_actionCoordinator = baseActionCoordinator;

    v20->_deferAddPhotoPresentationToParent = parent;
    if (itemCopy && MapsFeature_IsEnabled_SydneyARP())
    {
      v25 = [UGCARPPhotoCarouselController alloc];
      WeakRetained = objc_loadWeakRetained(&v20->_presentingViewController);
      maximumNumberOfPhotos = [formCopy maximumNumberOfPhotos];
      [(UGCPhotosForm *)v20->_photosForm activePhotoList];
      v28 = v43 = formCopy;
      v29 = [v28 count] != 0;
      [(MKMapItem *)itemCopy _coordinate];
      v30 = [(UGCARPPhotoCarouselController *)v25 initWithDelegate:v20 presentingViewController:WeakRetained maximumNumberOfPhotos:maximumNumberOfPhotos previouslySubmittedPhotosExist:v29 mapItemCoordinate:photosCopy showPhotoCarousel:?];
      photoEditorController = v20->_photoEditorController;
      v20->_photoEditorController = &v30->super;

      formCopy = v43;
    }

    else
    {
      v32 = [UGCPhotoCarouselController alloc];
      activePhotoList = [(UGCPhotosForm *)v20->_photosForm activePhotoList];
      v34 = -[UGCPhotoCarouselController initWithDelegate:maximumNumberOfPhotos:prefersMenu:](v32, "initWithDelegate:maximumNumberOfPhotos:prefersMenu:", v20, [activePhotoList count] + sub_1006E6728(v20->_photosForm), 1);
      v35 = v20->_photoEditorController;
      v20->_photoEditorController = v34;

      WeakRetained = +[MapsTheme ugcAddPhotoCellBackgroundColor];
      [(UGCPhotoCarouselController *)v20->_photoEditorController setCellBackgroundColor:WeakRetained];
    }

    v36 = itemCopy;
    mapItem = v20->_mapItem;
    v20->_mapItem = itemCopy;

    [(UGCPhotosSectionController *)v20 _addPhotosToEditorController];
    [(UGCPhotoCarouselController *)v20->_photoEditorController setDelegate:v20];
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      deferAddPhotoPresentationToParent = v20->_deferAddPhotoPresentationToParent;
      if (!deferAddPhotoPresentationToParent)
      {
        addedPhotos = [(UGCPhotosForm *)v20->_photosForm addedPhotos];
        v40 = [addedPhotos count];

        if (v40)
        {
          addedPhotos2 = [(UGCPhotosForm *)v20->_photosForm addedPhotos];
          v20->_showingAddYourPhotosCell = [addedPhotos2 count] == 0;

          goto LABEL_12;
        }

        LOBYTE(deferAddPhotoPresentationToParent) = 1;
      }

      v20->_showingAddYourPhotosCell = deferAddPhotoPresentationToParent;
    }
  }

LABEL_12:

  return v20;
}

@end