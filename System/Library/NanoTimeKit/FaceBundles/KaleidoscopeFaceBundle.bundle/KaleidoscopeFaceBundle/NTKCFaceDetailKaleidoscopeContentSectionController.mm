@interface NTKCFaceDetailKaleidoscopeContentSectionController
+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode;
- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options;
- (UIViewController)parentViewController;
- (id)delegate;
- (void)_customizeActionRow:(id)row withEditOption:(id)option;
- (void)_finalizeEditor;
- (void)_presentPhotoPicker;
- (void)_setPhotoFromAsset:(id)asset;
- (void)_setPhotoFromDictionary:(id)dictionary;
- (void)_setRawPhoto:(id)photo;
- (void)setExternalAsset:(id)asset;
- (void)setSelectedOptions:(id)options;
@end

@implementation NTKCFaceDetailKaleidoscopeContentSectionController

+ (BOOL)hasSectionForFace:(id)face forEditMode:(int64_t)mode
{
  faceCopy = face;
  v6 = [faceCopy faceStyle] == &dword_14 + 3 || objc_msgSend(faceCopy, "faceStyle") == &stru_B8.addr + 7;
  v7 = mode == 12 && v6;

  return v7;
}

- (BOOL)collectionChanged:(id)changed withSelectedOptions:(id)options
{
  changedCopy = changed;
  optionsCopy = options;
  changedCopy2 = changed;
  v8 = sub_6824(&changedCopy);
  v9 = changedCopy;

  v12.receiver = self;
  v12.super_class = NTKCFaceDetailKaleidoscopeContentSectionController;
  LOBYTE(changedCopy2) = [(NTKCFaceDetailKaleidoscopeContentSectionController *)&v12 collectionChanged:v9 withSelectedOptions:optionsCopy];

  cell = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self cell];

  [cell setUserOptionIndex:v8];
  return changedCopy2;
}

- (void)setSelectedOptions:(id)options
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailKaleidoscopeContentSectionController;
  optionsCopy = options;
  [(NTKCFaceDetailKaleidoscopeContentSectionController *)&v10 setSelectedOptions:optionsCopy];
  v5 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self collection:v10.receiver];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 mode]);
  v7 = [optionsCopy objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if ([v8 asset] != self->_currentAsset)
    {
      asset = [v8 asset];
      self->_currentAsset = asset;
      if (!self->_externalAssetSet && asset == stru_3D8.segname && ![(NTKCompanionKaleidoscopeEditor *)self->_editor photosCount])
      {
        [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _handleDidSelectActionRowForOption:v8];
      }
    }
  }
}

- (void)_customizeActionRow:(id)row withEditOption:(id)option
{
  optionCopy = option;
  rowCopy = row;
  [rowCopy setShowsTopSeparator:1];
  v9 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _actionNameForOption:optionCopy];

  textLabel = [rowCopy textLabel];

  [textLabel setText:v9];
}

- (void)_presentPhotoPicker
{
  parentViewController = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self parentViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6CFC;
  v4[3] = &unk_24938;
  v4[4] = self;
  [NTKCPhotosAddController presentSinglePhotoAddControllerFromViewController:parentViewController withCompletion:v4];
}

- (void)setExternalAsset:(id)asset
{
  assetCopy = asset;
  self->_externalAssetSet = 1;
  [(NTKCFaceDetailKaleidoscopeContentSectionController *)self setHasSpacerRow:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _setPhotoFromAsset:assetCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _setRawPhoto:assetCopy];
    }
  }
}

- (void)_setPhotoFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6F28;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setPhoto:dictionaryCopy completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setPhotoFromAsset:(id)asset
{
  assetCopy = asset;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7048;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setAsset:assetCopy completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setRawPhoto:(id)photo
{
  photoCopy = photo;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7168;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setRawImage:photoCopy completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_finalizeEditor
{
  editor = self->_editor;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7224;
  v3[3] = &unk_24988;
  v3[4] = self;
  [(NTKCompanionKaleidoscopeEditor *)editor finalizeWithCompletion:v3];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end