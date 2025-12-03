@interface NTKCFaceDetailUltraCubeSectionController
+ (BOOL)hasUltraCubeSectionForFace:(id)face forEditMode:(int64_t)mode;
- (BOOL)_handleDidSelectActionRowForOption:(id)option;
- (BOOL)canAddFace;
- (NTKCFaceDetailUltraCubeSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets;
- (UIViewController)parentViewController;
- (id)_actionNameForOption:(id)option;
- (void)_customizeActionRow:(id)row withEditOption:(id)option;
- (void)_setPhotos:(id)photos;
- (void)_updateUltraCubeSection;
- (void)customUltraCubeControllerDidFinish:(id)finish;
- (void)faceDidChange;
- (void)faceDidChangeResourceDirectory;
- (void)saveChangesWithCompletion:(id)completion;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCFaceDetailUltraCubeSectionController

+ (BOOL)hasUltraCubeSectionForFace:(id)face forEditMode:(int64_t)mode
{
  faceCopy = face;
  v6 = +[NTKUltraCubeFaceBundle identifier];
  bundleIdentifier = [faceCopy bundleIdentifier];

  v8 = [bundleIdentifier isEqualToString:v6];
  if (mode == 12)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NTKCFaceDetailUltraCubeSectionController)initWithTableViewController:(id)controller face:(id)face inGallery:(BOOL)gallery editOptionCollection:(id)collection faceView:(id)view externalAssets:(id)assets
{
  galleryCopy = gallery;
  controllerCopy = controller;
  faceCopy = face;
  collectionCopy = collection;
  viewCopy = view;
  assetsCopy = assets;
  if (assetsCopy)
  {
    v19 = [collectionCopy filteredCollectionWithObjectsPassingTest:&stru_494D0];
  }

  else
  {
    v19 = collectionCopy;
  }

  v20 = v19;
  v24.receiver = self;
  v24.super_class = NTKCFaceDetailUltraCubeSectionController;
  v21 = [(NTKCFaceDetailUltraCubeSectionController *)&v24 initWithTableViewController:controllerCopy face:faceCopy inGallery:galleryCopy editOptionCollection:v19 faceView:viewCopy];
  v22 = v21;
  if (v21)
  {
    [(NTKCFaceDetailUltraCubeSectionController *)v21 setExternalAssets:assetsCopy];
  }

  return v22;
}

- (BOOL)canAddFace
{
  selectedOptions = [(NTKCFaceDetailUltraCubeSectionController *)self selectedOptions];
  collection = [(NTKCFaceDetailUltraCubeSectionController *)self collection];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [collection mode]);
  v6 = [selectedOptions objectForKeyedSubscript:v5];

  if ([v6 ultracubeContent])
  {
    v7 = 0;
  }

  else
  {
    face = [(NTKCFaceDetailUltraCubeSectionController *)self face];
    hasSampleResourceDirectory = [face hasSampleResourceDirectory];

    v7 = ([(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount]!= 0) & ~hasSampleResourceDirectory;
  }

  return v7;
}

- (void)faceDidChange
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailUltraCubeSectionController;
  [(NTKCFaceDetailUltraCubeSectionController *)&v3 faceDidChange];
  [(NTKCFaceDetailUltraCubeSectionController *)self _updateUltraCubeSection];
}

- (void)faceDidChangeResourceDirectory
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailUltraCubeSectionController;
  [(NTKCFaceDetailUltraCubeSectionController *)&v3 faceDidChangeResourceDirectory];
  [(NTKCFaceDetailUltraCubeSectionController *)self _updateUltraCubeSection];
}

- (void)setSelectedOptions:(id)options
{
  v56.receiver = self;
  v56.super_class = NTKCFaceDetailUltraCubeSectionController;
  optionsCopy = options;
  [(NTKCFaceDetailUltraCubeSectionController *)&v56 setSelectedOptions:optionsCopy];
  ultracubePhotosEditor = self->_ultracubePhotosEditor;
  collection = [(NTKCFaceDetailUltraCubeSectionController *)self collection];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [collection mode]);
  v8 = [optionsCopy objectForKeyedSubscript:v7];

  if (!ultracubePhotosEditor || (currentContent = self->_currentContent, currentContent != [v8 ultracubeContent]))
  {
    ultracubeContent = [v8 ultracubeContent];
    self->_currentContent = ultracubeContent;
    if (ultracubeContent)
    {
LABEL_4:
      [(NTKCFaceDetailUltraCubeSectionController *)self reloadActionRow];
      goto LABEL_5;
    }

    v11 = [NTKUltraCubeFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_CONTENT_OPTION_DESCRIPTION" comment:@"Choose xx photos"];
    [(NTKCFaceDetailUltraCubeSectionController *)self setFooter:v11];

    if (!ultracubePhotosEditor)
    {
      externalAssets = self->_externalAssets;
      if (externalAssets && ([(NSArray *)externalAssets firstObject], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v23, (isKindOfClass & 1) != 0))
      {
        v25 = [NTKCompanionUltraCubePhotosEditor alloc];
        face = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        device = [face device];
        v28 = [(NTKCompanionUltraCubePhotosEditor *)v25 initWithResourceDirectory:0 forDevice:device];
        v29 = self->_ultracubePhotosEditor;
        self->_ultracubePhotosEditor = v28;

        [(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor addAssetsFromAssetList:self->_externalAssets];
        v30 = self->_ultracubePhotosEditor;
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_26ED4;
        v55[3] = &unk_494F8;
        v55[4] = self;
        [(NTKCompanionUltraCubePhotosEditor *)v30 generateGalleryPreviewResourceDirectoryWithCompletion:v55];
      }

      else
      {
        face2 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        resourceDirectory = [face2 resourceDirectory];

        face3 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        hasSampleResourceDirectory = [face3 hasSampleResourceDirectory];

        if (hasSampleResourceDirectory)
        {
          v41 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            face4 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
            *buf = 138412290;
            v58 = face4;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "setSelectedOptions: face %@ has sample resource directory; switching to nil for directory editor", buf, 0xCu);
          }

          face5 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
          resourceDirectory2 = [face5 resourceDirectory];
          savedGalleryResourceDirectory = self->_savedGalleryResourceDirectory;
          self->_savedGalleryResourceDirectory = resourceDirectory2;

          resourceDirectory = 0;
        }

        v46 = [NTKCompanionUltraCubePhotosEditor alloc];
        face6 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        device2 = [face6 device];
        v49 = [(NTKCompanionUltraCubePhotosEditor *)v46 initWithResourceDirectory:resourceDirectory forDevice:device2];
        v50 = self->_ultracubePhotosEditor;
        self->_ultracubePhotosEditor = v49;
      }

      goto LABEL_4;
    }

    inGallery = [(NTKCFaceDetailUltraCubeSectionController *)self inGallery];
    v13 = self->_ultracubePhotosEditor;
    if (inGallery)
    {
      if (!v13)
      {
        v14 = [NTKCompanionUltraCubePhotosEditor alloc];
        face7 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        device3 = [face7 device];
        v17 = [(NTKCompanionUltraCubePhotosEditor *)v14 initWithResourceDirectory:0 forDevice:device3];
        v18 = self->_ultracubePhotosEditor;
        self->_ultracubePhotosEditor = v17;

        v13 = self->_ultracubePhotosEditor;
      }

      galleryPreviewResourceDirectory = [(NTKCompanionUltraCubePhotosEditor *)v13 galleryPreviewResourceDirectory];

      v20 = self->_ultracubePhotosEditor;
      if (galleryPreviewResourceDirectory)
      {
        galleryPreviewResourceDirectory2 = [(NTKCompanionUltraCubePhotosEditor *)v20 galleryPreviewResourceDirectory];
      }

      else
      {
        resourceDirectory3 = [(NTKCompanionUltraCubePhotosEditor *)v20 resourceDirectory];

        v52 = self->_ultracubePhotosEditor;
        if (!resourceDirectory3)
        {
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_26F34;
          v54[3] = &unk_494F8;
          v54[4] = self;
          [(NTKCompanionUltraCubePhotosEditor *)v52 generateGalleryPreviewResourceDirectoryWithCompletion:v54];
LABEL_27:
          if (![(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount])
          {
            [(NTKCFaceDetailUltraCubeSectionController *)self _handleDidSelectActionRowForOption:v8];
          }

          goto LABEL_4;
        }

        galleryPreviewResourceDirectory2 = [(NTKCompanionUltraCubePhotosEditor *)v52 resourceDirectory];
      }

      face10 = galleryPreviewResourceDirectory2;
      face8 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
      [face8 setResourceDirectory:face10];
    }

    else
    {
      if (!v13)
      {
        v31 = [NTKCompanionUltraCubePhotosEditor alloc];
        face9 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
        device4 = [face9 device];
        v34 = [(NTKCompanionUltraCubePhotosEditor *)v31 initWithResourceDirectory:0 forDevice:device4];
        v35 = self->_ultracubePhotosEditor;
        self->_ultracubePhotosEditor = v34;
      }

      face10 = [(NTKCFaceDetailUltraCubeSectionController *)self face];
      [face10 setResourceDirectory:0];
    }

    goto LABEL_27;
  }

LABEL_5:
}

- (BOOL)_handleDidSelectActionRowForOption:(id)option
{
  ultracubeContent = [option ultracubeContent];
  if (!ultracubeContent)
  {
    if ([(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount])
    {
      v5 = [NTKCUltraCubePhotoListViewController alloc];
      ultracubePhotosEditor = self->_ultracubePhotosEditor;
      face = [(NTKCFaceDetailUltraCubeSectionController *)self face];
      inGallery = [(NTKCFaceDetailUltraCubeSectionController *)self inGallery];
      faceView = [(NTKCFaceDetailUltraCubeSectionController *)self faceView];
      v10 = [(NTKCUltraCubePhotoListViewController *)v5 initWithUltraCubePhotosEditor:ultracubePhotosEditor forFace:face inGallery:inGallery faceView:faceView];

      [(NTKCUltraCubePhotoListViewController *)v10 setDelegate:self];
      parentViewController = [(NTKCFaceDetailUltraCubeSectionController *)self parentViewController];
      [parentViewController presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      v10 = [NTKCPhotosAddController ultraCubeConfigurationWithLimit:24];
      parentViewController2 = [(NTKCFaceDetailUltraCubeSectionController *)self parentViewController];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_27200;
      v14[3] = &unk_48EB0;
      v14[4] = self;
      [NTKCPhotosAddController presentPhotosAddControllerFromViewController:parentViewController2 configuration:v10 withCompletion:v14];
    }
  }

  return ultracubeContent != 0;
}

- (id)_actionNameForOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = optionCopy;
    if ([v5 ultracubeContent])
    {
      v6 = 0;
    }

    else
    {
      photosCount = [(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount];
      if (photosCount)
      {
        v8 = photosCount;
        v9 = NTKCCustomizationLocalizedFormat();
        v6 = [NSString localizedStringWithFormat:v9, v8];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = NTKCFaceDetailUltraCubeSectionController;
        v6 = [(NTKCFaceDetailUltraCubeSectionController *)&v11 _actionNameForOption:v5];
      }
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NTKCFaceDetailUltraCubeSectionController;
    v6 = [(NTKCFaceDetailUltraCubeSectionController *)&v12 _actionNameForOption:optionCopy];
  }

  return v6;
}

- (void)_customizeActionRow:(id)row withEditOption:(id)option
{
  rowCopy = row;
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NTKCFaceDetailUltraCubeSectionController *)self _actionNameForOption:optionCopy];
    textLabel = [rowCopy textLabel];
    [textLabel setText:v7];

    if ([(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount])
    {
      v9 = +[UIColor secondaryLabelColor];
      v10 = 1;
    }

    else
    {
      v9 = NTKCActionColor();
      v10 = 0;
    }

    textLabel2 = [rowCopy textLabel];
    [textLabel2 setTextColor:v9];

    [rowCopy setAccessoryType:v10];
  }
}

- (void)_setPhotos:(id)photos
{
  [(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor addPhotosFromUIImagePicker:photos];
  [(NTKCFaceDetailUltraCubeSectionController *)self _updateUltraCubeSection];
  if ([(NTKCFaceDetailUltraCubeSectionController *)self inGallery])
  {
    ultracubePhotosEditor = self->_ultracubePhotosEditor;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2753C;
    v5[3] = &unk_494F8;
    v5[4] = self;
    [(NTKCompanionUltraCubePhotosEditor *)ultracubePhotosEditor generateGalleryPreviewResourceDirectoryWithCompletion:v5];
  }

  else
  {

    [(NTKCFaceDetailUltraCubeSectionController *)self saveChangesWithCompletion:0];
  }
}

- (void)_updateUltraCubeSection
{
  if (!self->_currentContent)
  {
    actionRow = [(NTKCFaceDetailUltraCubeSectionController *)self actionRow];

    if (actionRow)
    {
      if (self->_externalAssets && ![(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount])
      {
        [(NTKCFaceDetailUltraCubeSectionController *)self reloadActionRow];
      }

      else
      {
        [(NTKCFaceDetailUltraCubeSectionController *)self _refreshActionRowContent];
      }
    }
  }

  delegate = [(NTKCFaceDetailUltraCubeSectionController *)self delegate];
  [delegate ultracubeSectionDidUpdate:self];
}

- (void)saveChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(NTKCFaceDetailUltraCubeSectionController *)self hasChanges]&& (ultracubePhotosEditor = self->_ultracubePhotosEditor) != 0)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_278A8;
    v6[3] = &unk_49520;
    v6[4] = self;
    v7 = completionCopy;
    [(NTKCompanionUltraCubePhotosEditor *)ultracubePhotosEditor finalizeWithCompletion:v6];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)customUltraCubeControllerDidFinish:(id)finish
{
  finishCopy = finish;
  [(NTKCFaceDetailUltraCubeSectionController *)self _updateUltraCubeSection];
  if (![(NTKCompanionUltraCubePhotosEditor *)self->_ultracubePhotosEditor photosCount])
  {
    savedGalleryResourceDirectory = self->_savedGalleryResourceDirectory;
    if (savedGalleryResourceDirectory)
    {
      face = [(NTKCFaceDetailUltraCubeSectionController *)self face];
      [face setResourceDirectory:savedGalleryResourceDirectory];

      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_savedGalleryResourceDirectory;
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "customUltraCubeControllerDidFinish: empty editor; resetting the resource directory back to the saved gallery version (%@)", &v9, 0xCu);
      }
    }
  }

  [finishCopy dismissViewControllerAnimated:1 completion:0];
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end