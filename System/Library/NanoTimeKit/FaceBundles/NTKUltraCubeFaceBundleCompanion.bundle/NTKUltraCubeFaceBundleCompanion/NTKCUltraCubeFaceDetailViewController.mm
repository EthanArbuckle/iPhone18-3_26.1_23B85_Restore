@interface NTKCUltraCubeFaceDetailViewController
- (BOOL)_isShareButtonEnabled;
- (id)_sectionForEditOptionCollection:(id)collection;
- (id)reasonFaceCanNotBeAddedToLibrary;
- (void)_addFace;
- (void)_reloadVisibleCellsForEditMode:(int64_t)mode;
- (void)ultracubeSectionDidUpdate:(id)update;
@end

@implementation NTKCUltraCubeFaceDetailViewController

- (id)_sectionForEditOptionCollection:(id)collection
{
  collectionCopy = collection;
  face = [(NTKCUltraCubeFaceDetailViewController *)self face];
  inGallery = [(NTKCUltraCubeFaceDetailViewController *)self inGallery];
  faceVC = [(NTKCUltraCubeFaceDetailViewController *)self faceVC];
  faceView = [faceVC faceView];
  if (+[NTKCFaceDetailUltraCubeSectionController hasUltraCubeSectionForFace:forEditMode:](NTKCFaceDetailUltraCubeSectionController, "hasUltraCubeSectionForFace:forEditMode:", face, [collectionCopy mode]))
  {
    externalAssets = [(NTKCUltraCubeFaceDetailViewController *)self externalAssets];
    v10 = [[NTKCFaceDetailUltraCubeSectionController alloc] initWithTableViewController:self face:face inGallery:inGallery editOptionCollection:collectionCopy faceView:faceView externalAssets:externalAssets];
    ultracubeSection = self->_ultracubeSection;
    self->_ultracubeSection = v10;

    [(NTKCFaceDetailUltraCubeSectionController *)self->_ultracubeSection setParentViewController:self];
    [(NTKCFaceDetailUltraCubeSectionController *)self->_ultracubeSection setDelegate:self];
    v12 = self->_ultracubeSection;
  }

  else if (+[NTKCFaceDetailUltraCubeStyleSectionController hasSectionForFace:forEditMode:](NTKCFaceDetailUltraCubeStyleSectionController, "hasSectionForFace:forEditMode:", face, [collectionCopy mode]))
  {
    v12 = [[NTKCFaceDetailUltraCubeStyleSectionController alloc] initWithTableViewController:self face:face inGallery:inGallery editOptionCollection:collectionCopy faceView:faceView];
    [(NTKCFaceDetailUltraCubeSectionController *)v12 setDelegate:self];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = NTKCUltraCubeFaceDetailViewController;
    v12 = [(NTKCUltraCubeFaceDetailViewController *)&v14 _sectionForEditOptionCollection:collectionCopy];
  }

  return v12;
}

- (void)_addFace
{
  if ([(NTKCFaceDetailUltraCubeSectionController *)self->_ultracubeSection hasChanges])
  {
    addSpinner = [(NTKCUltraCubeFaceDetailViewController *)self addSpinner];
    [addSpinner startAnimating];
    addButton = [(NTKCUltraCubeFaceDetailViewController *)self addButton];
    [addButton setHidden:1];
    ultracubeSection = self->_ultracubeSection;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_17DEC;
    v7[3] = &unk_49128;
    v7[4] = self;
    [(NTKCFaceDetailUltraCubeSectionController *)ultracubeSection saveChangesWithCompletion:v7];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKCUltraCubeFaceDetailViewController;
    [(NTKCUltraCubeFaceDetailViewController *)&v6 _addFace];
  }
}

- (id)reasonFaceCanNotBeAddedToLibrary
{
  if ([(NTKCFaceDetailUltraCubeSectionController *)self->_ultracubeSection canAddFace])
  {
    v5.receiver = self;
    v5.super_class = NTKCUltraCubeFaceDetailViewController;
    reasonFaceCanNotBeAddedToLibrary = [(NTKCUltraCubeFaceDetailViewController *)&v5 reasonFaceCanNotBeAddedToLibrary];
  }

  else
  {
    reasonFaceCanNotBeAddedToLibrary = NTKClockFaceLocalizedString();
  }

  return reasonFaceCanNotBeAddedToLibrary;
}

- (BOOL)_isShareButtonEnabled
{
  face = [(NTKCUltraCubeFaceDetailViewController *)self face];
  resourceDirectory = [face resourceDirectory];
  v5 = [NTKUltraCubePhotosReader readerForResourceDirectory:resourceDirectory];

  if ([v5 count])
  {
    face2 = [(NTKCUltraCubeFaceDetailViewController *)self face];
    isValidConfigurationToAddToLibrary = [face2 isValidConfigurationToAddToLibrary];
  }

  else
  {
    isValidConfigurationToAddToLibrary = 0;
  }

  return isValidConfigurationToAddToLibrary;
}

- (void)ultracubeSectionDidUpdate:(id)update
{
  updateCopy = update;
  [(NTKCUltraCubeFaceDetailViewController *)self _updateAddButton];
  [(NTKCUltraCubeFaceDetailViewController *)self _updateShareButton];
  face = [(NTKCUltraCubeFaceDetailViewController *)self face];
  hasSampleResourceDirectory = [face hasSampleResourceDirectory];

  ultracubePhotosEditor = [updateCopy ultracubePhotosEditor];

  photosCount = [ultracubePhotosEditor photosCount];
  if ((hasSampleResourceDirectory & 1) == 0 && photosCount >= 1)
  {
    faceVC = [(NTKCUltraCubeFaceDetailViewController *)self faceVC];
    faceView = [faceVC faceView];
    face2 = [(NTKCUltraCubeFaceDetailViewController *)self face];
    selectedOptionsForCustomEditModes = [face2 selectedOptionsForCustomEditModes];
    [faceView prepareSwatchImagesForSelectedOptions:selectedOptionsForCustomEditModes];

    [(NTKCUltraCubeFaceDetailViewController *)self _reloadVisibleCellsForEditMode:13];

    [(NTKCUltraCubeFaceDetailViewController *)self _reloadVisibleCellsForEditMode:15];
  }
}

- (void)_reloadVisibleCellsForEditMode:(int64_t)mode
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  editOptionSections = [(NTKCUltraCubeFaceDetailViewController *)self editOptionSections];
  v5 = [editOptionSections countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(editOptionSections);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        collection = [v9 collection];
        mode = [collection mode];

        if (mode == mode)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [editOptionSections countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  rows = [v12 rows];
  v14 = [rows countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(rows);
        }

        v18 = *(*(&v19 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 reloadVisibleCells];
        }
      }

      v15 = [rows countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }
}

@end