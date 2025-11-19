@interface NTKCFaceDetailKaleidoscopeContentSectionController
+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4;
- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4;
- (UIViewController)parentViewController;
- (id)delegate;
- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4;
- (void)_finalizeEditor;
- (void)_presentPhotoPicker;
- (void)_setPhotoFromAsset:(id)a3;
- (void)_setPhotoFromDictionary:(id)a3;
- (void)_setRawPhoto:(id)a3;
- (void)setExternalAsset:(id)a3;
- (void)setSelectedOptions:(id)a3;
@end

@implementation NTKCFaceDetailKaleidoscopeContentSectionController

+ (BOOL)hasSectionForFace:(id)a3 forEditMode:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 faceStyle] == &dword_14 + 3 || objc_msgSend(v5, "faceStyle") == &stru_B8.addr + 7;
  v7 = a4 == 12 && v6;

  return v7;
}

- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = a3;
  v8 = sub_6824(&v13);
  v9 = v13;

  v12.receiver = self;
  v12.super_class = NTKCFaceDetailKaleidoscopeContentSectionController;
  LOBYTE(v7) = [(NTKCFaceDetailKaleidoscopeContentSectionController *)&v12 collectionChanged:v9 withSelectedOptions:v6];

  v10 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self cell];

  [v10 setUserOptionIndex:v8];
  return v7;
}

- (void)setSelectedOptions:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailKaleidoscopeContentSectionController;
  v4 = a3;
  [(NTKCFaceDetailKaleidoscopeContentSectionController *)&v10 setSelectedOptions:v4];
  v5 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self collection:v10.receiver];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 mode]);
  v7 = [v4 objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if ([v8 asset] != self->_currentAsset)
    {
      v9 = [v8 asset];
      self->_currentAsset = v9;
      if (!self->_externalAssetSet && v9 == stru_3D8.segname && ![(NTKCompanionKaleidoscopeEditor *)self->_editor photosCount])
      {
        [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _handleDidSelectActionRowForOption:v8];
      }
    }
  }
}

- (void)_customizeActionRow:(id)a3 withEditOption:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setShowsTopSeparator:1];
  v9 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _actionNameForOption:v6];

  v8 = [v7 textLabel];

  [v8 setText:v9];
}

- (void)_presentPhotoPicker
{
  v3 = [(NTKCFaceDetailKaleidoscopeContentSectionController *)self parentViewController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_6CFC;
  v4[3] = &unk_24938;
  v4[4] = self;
  [NTKCPhotosAddController presentSinglePhotoAddControllerFromViewController:v3 withCompletion:v4];
}

- (void)setExternalAsset:(id)a3
{
  v4 = a3;
  self->_externalAssetSet = 1;
  [(NTKCFaceDetailKaleidoscopeContentSectionController *)self setHasSpacerRow:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _setPhotoFromAsset:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKCFaceDetailKaleidoscopeContentSectionController *)self _setRawPhoto:v4];
    }
  }
}

- (void)_setPhotoFromDictionary:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6F28;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setPhoto:v4 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setPhotoFromAsset:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7048;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setAsset:v4 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_setRawPhoto:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  editor = self->_editor;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7168;
  v6[3] = &unk_24960;
  objc_copyWeak(&v7, &location);
  [(NTKCompanionKaleidoscopeEditor *)editor setRawImage:v4 completion:v6];
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