@interface UGCPhotosSectionController
- (NSArray)rowItems;
- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate;
- (UGCPhotoSectionControllerDelegate)delegate;
- (UGCPhotosSectionController)initWithPhotosForm:(id)a3 mapItem:(id)a4 presentingViewController:(id)a5 deferAddPhotoPresentationToParent:(BOOL)a6 analyticsDelegate:(id)a7 showSuggestedPhotos:(BOOL)a8;
- (id)addPhotosControllerRequestsAnchoringView:(id)a3;
- (id)configureCollectionViewHeader;
- (id)imagePreviewAtIndex:(unint64_t)a3;
- (unint64_t)numberOfImagePreviews;
- (void)_addFakePhoto;
- (void)_addPhotosToEditorController;
- (void)_addPhotosWithMetadataToEditor:(id)a3;
- (void)_checkForNearbyPhotos;
- (void)_dismissTakePhotoController:(id)a3;
- (void)_photoCarouselControllerRequestsPhotoCreditEditor;
- (void)_presentAddPhotosControllerWithSourceType:(int64_t)a3;
- (void)_removeAddPhotosRowItemIfNeeded;
- (void)addPhotosCellRequestsAddingNewPhoto:(id)a3 usingSourceType:(int64_t)a4;
- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5;
- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3 forSourceType:(int64_t)a4;
- (void)removeAddPhotosRowItem;
- (void)suggestedPhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4;
- (void)takePhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4;
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

- (id)imagePreviewAtIndex:(unint64_t)a3
{
  v4 = [(UGCPhotosForm *)self->_photosForm activePhotoList];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (unint64_t)numberOfImagePreviews
{
  v2 = [(UGCPhotosForm *)self->_photosForm activePhotoList];
  v3 = [v2 count];

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
  v9 = [(UGCPhotoWithMetadata *)v7 identifier];
  [(UGCPhotoCarouselController *)photoEditorController addImage:v10 forIdentifier:v9];
}

- (void)removeAddPhotosRowItem
{
  self->_showingAddYourPhotosCell = 0;
  [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell setHidden:0];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setHidden:0];
  [(UGCAddPhotosCell *)self->_addPhotosCell setHidden:1];
  v3 = [(UGCPhotosSectionController *)self delegate];
  [v3 photosSectionController:self willShowPhotoCarousel:1];

  v4 = [(UGCPhotosSectionController *)self delegate];
  [v4 sectionControllerDidUpdateRowItems:self];
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
        v15 = [(UGCPhotoCarouselCell *)v11 initWithFrame:CGRectZero.origin.x, y, width, height];
        [(UGCPhotoCarouselCell *)v15 setCarouselController:self->_photoEditorController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [(UGCPhotosSectionController *)self configureCollectionViewHeader];
          headerView = self->_headerView;
          self->_headerView = v16;

          [(UGCPhotoCreditSectionHeaderView *)self->_headerView setPreservesSuperviewLayoutMargins:1];
          v18 = [UGCPOIEnrichmentRowItem rowItemWithView:self->_headerView];
          [(UGCPhotoCreditSectionHeaderView *)self->_headerView setHidden:self->_showingAddYourPhotosCell];
          [v5 addObject:v18];
        }

        v19 = [[UGCPOIEnrichmentEditorCell alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
        photoEditorContainerCell = self->_photoEditorContainerCell;
        self->_photoEditorContainerCell = v19;

        [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell setHidden:self->_showingAddYourPhotosCell];
        [(UGCPOIEnrichmentEditorCell *)self->_photoEditorContainerCell addSubview:v15];
        v21 = [[MUEdgeLayout alloc] initWithItem:v15 container:self->_photoEditorContainerCell];
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

          v26 = [(UGCPhotosForm *)self->_photosForm activePhotoList];
          if ([v26 count])
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
  v3 = [(UGCPhotosForm *)self->_photosForm numberOfAddedPhotos];
  v4 = [(UGCPhotoCarouselController *)self->_photoEditorController collectionViewHeaderTitleForNumberOfSelectedPhotos:v3];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setTitle:v4];

  v5 = v3 < [(UGCPhotosForm *)self->_photosForm maximumNumberOfPhotos];
  headerView = self->_headerView;

  [(UGCPhotoCreditSectionHeaderView *)headerView setAccessoryActionButtonEnabled:v5];
}

- (void)updatePhotoCreditInCollectionViewHeader
{
  v3 = [(UGCPhotoCarouselController *)self->_photoEditorController configurePhotoCreditStringForCollectionViewHeader];
  [(UGCPhotoCreditSectionHeaderView *)self->_headerView setSubtitle:v3];
}

- (id)configureCollectionViewHeader
{
  v3 = self->_photoEditorController;
  v4 = objc_alloc_init(UGCPhotoCreditSectionHeaderView);
  v5 = [(UGCPhotoCarouselController *)v3 collectionViewHeaderTitleForNumberOfSelectedPhotos:[(UGCPhotosForm *)self->_photosForm numberOfAddedPhotos]];
  [(UGCPhotoCreditSectionHeaderView *)v4 setTitle:v5];

  v6 = [(UGCPhotoCarouselController *)v3 collectionViewButtonTitle];
  objc_initWeak(&location, self);
  v7 = [(UGCPhotoCarouselController *)v3 configurePhotoCreditStringForCollectionViewHeader];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100A37CC4;
  v11[3] = &unk_101661B98;
  objc_copyWeak(&v12, &location);
  [(UGCPhotoCreditSectionHeaderView *)v4 setSubtitleActionTitle:v7 completionHandler:v11];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A37D08;
  v9[3] = &unk_101660108;
  objc_copyWeak(&v10, &location);
  [(UGCPhotoCreditSectionHeaderView *)v4 setAccessoryActionTitle:v6 selectionHandler:v9];
  [(UGCPhotoCreditSectionHeaderView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_dismissTakePhotoController:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100A37DD0;
  v3[3] = &unk_101661B18;
  v3[4] = self;
  [a3 dismissWithCompletion:v3];
}

- (void)_removeAddPhotosRowItemIfNeeded
{
  if (self->_showingAddYourPhotosCell)
  {
    self->_showingAddYourPhotosCell = 0;
    [(UGCPhotosSectionController *)self removeAddPhotosRowItem];
  }
}

- (id)addPhotosControllerRequestsAnchoringView:(id)a3
{
  addPhotosCell = self->_addPhotosCell;
  if (!addPhotosCell)
  {
    addPhotosCell = self->_photoEditorController;
  }

  v5 = [addPhotosCell anchoringView];

  return v5;
}

- (void)_addPhotosWithMetadataToEditor:(id)a3
{
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = [v10 isEqual:objc_opt_class()];
        photoEditorController = self->_photoEditorController;
        if (v11)
        {
          v13 = [v9 photoMetadata];
          v14 = [v13 clientImageUuid];
          [(UGCPhotoCarouselController *)photoEditorController addPhotoWithMetadata:v9 forIdentifier:v14];

          [(UGCPhotosSectionController *)self updateSelectedPhotosCountInCollectionViewHeader];
        }

        else
        {
          v15 = [v9 image];
          v16 = [v9 photoMetadata];
          v17 = [v16 clientImageUuid];
          [(UGCPhotoCarouselController *)photoEditorController addImage:v15 forIdentifier:v17];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)takePhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4
{
  photosForm = self->_photosForm;
  v7 = a4;
  v12 = a3;
  [(UGCPhotosForm *)photosForm addPhotoListWithMetadata:v7];
  [(UGCPhotosSectionController *)self _addPhotosWithMetadataToEditor:v7];

  [(UGCPhotosSectionController *)self _removeAddPhotosRowItemIfNeeded];
  v8 = self->_photosForm;
  v9 = [(UGCPhotosForm *)v8 activePhotoList];
  v10 = [v9 count];
  v11 = sub_1006E6728(v8);

  [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v10[v11]];
  [(UGCPhotosSectionController *)self _dismissTakePhotoController:v12];
}

- (void)suggestedPhotoController:(id)a3 didSelectPhotosWithMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UGCPhotosForm *)self->_photosForm addPhotoListWithMetadata:v7];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
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
        v14 = [v13 photoMetadata];
        v15 = [v14 clientImageUuid];
        [v6 addPhotoWithMetadata:v13 forIdentifier:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = self->_photosForm;
  v17 = [(UGCPhotosForm *)v16 activePhotoList];
  v18 = [v17 count];
  v19 = sub_1006E6728(v16);

  [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v18[v19]];
  [(UGCPhotosSectionController *)self updateSelectedPhotosCountInCollectionViewHeader];
}

- (void)photoCarouselControllerRequestsAddingNewPhoto:(id)a3 forSourceType:(int64_t)a4
{
  v6 = [UGCAddPhotosController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v8 = sub_1006E6728(self->_photosForm);
  v9 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v10 = [v9 _placeQuestionnaire];
  v11 = [(UGCAddPhotosController *)v6 initWithPresentingViewController:WeakRetained sourceType:a4 multipleSelectionLimit:v8 placeQuestionnaire:v10 delegate:self];
  takePhotoController = self->_takePhotoController;
  self->_takePhotoController = v11;

  v13 = self->_takePhotoController;

  [(UGCAddPhotosController *)v13 present];
}

- (void)photoCarouselController:(id)a3 requestsRemovingImageForIdentifier:(id)a4 completion:(id)a5
{
  v12 = a5;
  v7 = [(UGCPhotosForm *)self->_photosForm removePhotoWithIdentifier:a4];
  if (v7)
  {
    v8 = self->_photosForm;
    v9 = [(UGCPhotosForm *)v8 activePhotoList];
    v10 = [v9 count];
    v11 = sub_1006E6728(v8);

    [(UGCPhotoCarouselController *)self->_photoEditorController setMaximumNumberOfPhotos:&v10[v11]];
  }

  v12[2](v12, v7);
}

- (void)_presentAddPhotosControllerWithSourceType:(int64_t)a3
{
  v5 = [UGCAddPhotosController alloc];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  v7 = sub_1006E6728(self->_photosForm);
  v8 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v9 = [v8 _placeQuestionnaire];
  v10 = [(UGCAddPhotosController *)v5 initWithPresentingViewController:WeakRetained sourceType:a3 multipleSelectionLimit:v7 placeQuestionnaire:v9 delegate:self];
  takePhotoController = self->_takePhotoController;
  self->_takePhotoController = v10;

  v12 = self->_takePhotoController;

  [(UGCAddPhotosController *)v12 present];
}

- (void)addPhotosCellRequestsAddingNewPhoto:(id)a3 usingSourceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(UGCPhotosSectionController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UGCPhotosSectionController *)self delegate];
    [v9 photosSectionController:self userActionCapturedForAction:2147 value:@"business info"];
  }

  if ([(UGCPhotosSectionController *)self deferAddPhotoPresentationToParent])
  {
    v10 = objc_alloc_init(MUPresentationOptions);
    [v10 setSourceView:v6];
    [v6 frame];
    [v10 setSourceRect:?];
    v11 = [(UGCPhotosSectionController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(UGCPhotosSectionController *)self delegate];
      [v13 photosSectionController:self selectedAddPhotosUsingSourceType:a4 presentationOptions:v10];
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
    v16[1] = a4;
    [UGCInformedConsentViewController presentIfNeededWithPresentingViewController:WeakRetained presentationContext:0 completion:v15];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    [(UGCPhotosSectionController *)self _presentAddPhotosControllerWithSourceType:a4];
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
    v4 = [(UGCPhotosForm *)self->_photosForm activePhotoList];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 url];

        photoEditorController = self->_photoEditorController;
        if (v10)
        {
          v12 = [v9 url];
          v13 = [v9 identifier];
          [(UGCPhotoCarouselController *)photoEditorController addImageURL:v12 forIdentifier:v13];
        }

        else
        {
          if (isKindOfClass)
          {
            v12 = [v9 identifier];
            [(UGCPhotoCarouselController *)photoEditorController addPhotoWithMetadata:v9 forIdentifier:v12];
            goto LABEL_13;
          }

          v12 = [v9 image];
          v13 = [v9 identifier];
          [(UGCPhotoCarouselController *)photoEditorController addImage:v12 forIdentifier:v13];
        }

LABEL_13:
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v6)
      {
LABEL_15:

        return;
      }
    }
  }
}

- (UGCPhotosSectionController)initWithPhotosForm:(id)a3 mapItem:(id)a4 presentingViewController:(id)a5 deferAddPhotoPresentationToParent:(BOOL)a6 analyticsDelegate:(id)a7 showSuggestedPhotos:(BOOL)a8
{
  v8 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v44.receiver = self;
  v44.super_class = UGCPhotosSectionController;
  v19 = [(UGCPhotosSectionController *)&v44 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_analyticsDelegate, v18);
    objc_storeStrong(&v20->_photosForm, a3);
    objc_storeWeak(&v20->_presentingViewController, v17);
    v21 = +[UIApplication sharedMapsDelegate];
    v22 = [v21 appCoordinator];
    v23 = [v22 baseActionCoordinator];
    actionCoordinator = v20->_actionCoordinator;
    v20->_actionCoordinator = v23;

    v20->_deferAddPhotoPresentationToParent = a6;
    if (v16 && MapsFeature_IsEnabled_SydneyARP())
    {
      v25 = [UGCARPPhotoCarouselController alloc];
      WeakRetained = objc_loadWeakRetained(&v20->_presentingViewController);
      v27 = [v15 maximumNumberOfPhotos];
      [(UGCPhotosForm *)v20->_photosForm activePhotoList];
      v28 = v43 = v15;
      v29 = [v28 count] != 0;
      [(MKMapItem *)v16 _coordinate];
      v30 = [(UGCARPPhotoCarouselController *)v25 initWithDelegate:v20 presentingViewController:WeakRetained maximumNumberOfPhotos:v27 previouslySubmittedPhotosExist:v29 mapItemCoordinate:v8 showPhotoCarousel:?];
      photoEditorController = v20->_photoEditorController;
      v20->_photoEditorController = &v30->super;

      v15 = v43;
    }

    else
    {
      v32 = [UGCPhotoCarouselController alloc];
      v33 = [(UGCPhotosForm *)v20->_photosForm activePhotoList];
      v34 = -[UGCPhotoCarouselController initWithDelegate:maximumNumberOfPhotos:prefersMenu:](v32, "initWithDelegate:maximumNumberOfPhotos:prefersMenu:", v20, [v33 count] + sub_1006E6728(v20->_photosForm), 1);
      v35 = v20->_photoEditorController;
      v20->_photoEditorController = v34;

      WeakRetained = +[MapsTheme ugcAddPhotoCellBackgroundColor];
      [(UGCPhotoCarouselController *)v20->_photoEditorController setCellBackgroundColor:WeakRetained];
    }

    v36 = v16;
    mapItem = v20->_mapItem;
    v20->_mapItem = v16;

    [(UGCPhotosSectionController *)v20 _addPhotosToEditorController];
    [(UGCPhotoCarouselController *)v20->_photoEditorController setDelegate:v20];
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      deferAddPhotoPresentationToParent = v20->_deferAddPhotoPresentationToParent;
      if (!deferAddPhotoPresentationToParent)
      {
        v39 = [(UGCPhotosForm *)v20->_photosForm addedPhotos];
        v40 = [v39 count];

        if (v40)
        {
          v41 = [(UGCPhotosForm *)v20->_photosForm addedPhotos];
          v20->_showingAddYourPhotosCell = [v41 count] == 0;

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