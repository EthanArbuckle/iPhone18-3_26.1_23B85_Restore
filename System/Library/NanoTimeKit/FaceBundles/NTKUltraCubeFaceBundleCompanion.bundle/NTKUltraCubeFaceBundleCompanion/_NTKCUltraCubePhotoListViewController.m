@interface _NTKCUltraCubePhotoListViewController
- (BOOL)_allPhotosSelected;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (NTKCUltraCubePhotoListViewControllerDelegate)delegate;
- (_NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6;
- (id)_currentSelectAllButton;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_addPressed;
- (void)_deletePressed;
- (void)_savePressed;
- (void)_selectAllPhotos;
- (void)_selectAllPressed;
- (void)_updateButtons;
- (void)_updateButtonsForSelectionChanged;
- (void)_updateTitle;
- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)ultracubePreviewViewControllerDidDismiss:(id)a3;
- (void)ultracubePreviewViewControllerWantsToCancel:(id)a3;
- (void)ultracubePreviewViewControllerWantsToDelete:(id)a3;
- (void)ultracubePreviewViewControllerWantsToSave:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _NTKCUltraCubePhotoListViewController

- (_NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)a3 forFace:(id)a4 inGallery:(BOOL)a5 faceView:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_opt_new();
  v52.receiver = self;
  v52.super_class = _NTKCUltraCubePhotoListViewController;
  v14 = [(_NTKCUltraCubePhotoListViewController *)&v52 initWithCollectionViewLayout:v13];
  v15 = v14;
  if (v14)
  {
    [(_NTKCUltraCubePhotoListViewController *)v14 setEditor:v10];
    [(_NTKCUltraCubePhotoListViewController *)v15 setFace:v11];
    [(_NTKCUltraCubePhotoListViewController *)v15 setInGallery:v7];
    [(_NTKCUltraCubePhotoListViewController *)v15 setFaceView:v12];
    v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v15 action:"_savePressed"];
    saveButton = v15->_saveButton;
    v15->_saveButton = v16;

    v18 = [UIBarButtonItem alloc];
    v19 = NTKCCustomizationLocalizedString();
    v20 = [v18 initWithTitle:v19 style:0 target:v15 action:"_selectPressed"];
    selectButton = v15->_selectButton;
    v15->_selectButton = v20;

    v22 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v15 action:"_donePressed"];
    doneButton = v15->_doneButton;
    v15->_doneButton = v22;

    v24 = [UIBarButtonItem alloc];
    v25 = NTKCCustomizationLocalizedString();
    v26 = [v24 initWithTitle:v25 style:0 target:v15 action:"_selectAllPressed"];
    selectAllButton = v15->_selectAllButton;
    v15->_selectAllButton = v26;

    v28 = [UIBarButtonItem alloc];
    v29 = NTKCCustomizationLocalizedString();
    v30 = [v28 initWithTitle:v29 style:0 target:v15 action:"_selectAllPressed"];
    deselectAllButton = v15->_deselectAllButton;
    v15->_deselectAllButton = v30;

    v32 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:v15 action:"_deletePressed"];
    deleteButton = v15->_deleteButton;
    v15->_deleteButton = v32;

    [(UIBarButtonItem *)v15->_deleteButton setEnabled:0];
    v34 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:101];
    [v34 startAnimating];
    v35 = [[UIBarButtonItem alloc] initWithCustomView:v34];
    spinnerButton = v15->_spinnerButton;
    v15->_spinnerButton = v35;

    v37 = [UIBarButtonItem alloc];
    v38 = NTKCCustomizationLocalizedString();
    v39 = [v37 initWithTitle:v38 style:0 target:v15 action:"_addPressed"];
    addButton = v15->_addButton;
    v15->_addButton = v39;

    v41 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v54[0] = v41;
    v54[1] = v15->_addButton;
    v42 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v54[2] = v42;
    v43 = [NSArray arrayWithObjects:v54 count:3];
    defaultToolBarItems = v15->_defaultToolBarItems;
    v15->_defaultToolBarItems = v43;

    v45 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v53[0] = v45;
    v53[1] = v15->_deleteButton;
    v46 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    v53[2] = v46;
    v47 = [NSArray arrayWithObjects:v53 count:3];
    editingToolBarItems = v15->_editingToolBarItems;
    v15->_editingToolBarItems = v47;

    v49 = objc_opt_new();
    selectedIndexes = v15->_selectedIndexes;
    v15->_selectedIndexes = v49;
  }

  return v15;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = _NTKCUltraCubePhotoListViewController;
  [(_NTKCUltraCubePhotoListViewController *)&v12 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  v4 = [(_NTKCUltraCubePhotoListViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor systemBackgroundColor];
  v6 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [v6 setBackgroundColor:v5];

  v7 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[NTKCPhotoListCell reuseIdentifier];
  [v7 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [v10 setAlwaysBounceVertical:1];

  v11 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [v11 setAllowsSelectionDuringEditing:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _NTKCUltraCubePhotoListViewController;
  [(_NTKCUltraCubePhotoListViewController *)&v7 viewWillAppear:a3];
  v4 = [(_NTKCUltraCubePhotoListViewController *)self navigationController];
  [v4 setToolbarHidden:0];

  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  v5 = [(_NTKCUltraCubePhotoListViewController *)self presentedViewController];

  if (v5)
  {
    v6 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
    [v6 reloadData];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _NTKCUltraCubePhotoListViewController;
  [(_NTKCUltraCubePhotoListViewController *)&v7 setEditing:a3 animated:a4];
  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  v5 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v6 = [v5 visibleCells];
  [v6 enumerateObjectsUsingBlock:&stru_48DF0];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v7 = +[NTKCPhotoListCell reuseIdentifier];
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  v9 = [v5 item];
  editor = self->_editor;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7B00;
  v15[3] = &unk_48E18;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = v9;
  [(NTKCompanionUltraCubePhotosEditor *)editor thumbnailImageForPhotoAtIndex:v9 completion:v15];
  [v11 setPhoto:0];
  [v11 setCrop:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v11 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedIndexes, "containsIndex:", v9)}];
  v12 = v16;
  v13 = v11;

  return v11;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 item];
  if ([(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    v9 = [v6 cellForItemAtIndexPath:v7];
    [v9 setSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
    v10 = [v9 isSelected];
    selectedIndexes = self->_selectedIndexes;
    if (v10)
    {
      [(NSMutableIndexSet *)selectedIndexes addIndex:v8];
    }

    else
    {
      [(NSMutableIndexSet *)selectedIndexes removeIndex:v8];
    }

    [(_NTKCUltraCubePhotoListViewController *)self _updateButtonsForSelectionChanged];
LABEL_11:

    goto LABEL_12;
  }

  if ([(NTKCompanionUltraCubePhotosEditor *)self->_editor canChangeOriginalCropOfPhotoAtIndex:v8])
  {
    v12 = [(_NTKCUltraCubePhotoListViewController *)self face];
    v9 = [v12 selectedOptionForCustomEditMode:13 slot:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v9 typeface];
    }

    else
    {
      v13 = &dword_0 + 1;
    }

    v14 = [(_NTKCUltraCubePhotoListViewController *)self face];
    v15 = [v14 device];

    v16 = [[NTKUltraCubePreviewFactory alloc] initWithIndex:v8 device:v15 typeface:v13 editor:self->_editor];
    v17 = [[NTKCUltraCubePreviewViewController alloc] initWithPreviewProvider:v16];
    v18 = BPSBridgeTintColor();
    v19 = [(NTKCUltraCubePreviewViewController *)v17 view];
    [v19 setTintColor:v18];

    [(NTKCUltraCubePreviewViewController *)v17 setDelegate:self];
    [(_NTKCUltraCubePhotoListViewController *)self presentViewController:v17 animated:1 completion:0];

    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

- (void)collectionView:(id)a3 moveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  editor = self->_editor;
  v7 = a5;
  v8 = [a4 item];
  v9 = [v7 item];

  [(NTKCompanionUltraCubePhotosEditor *)editor movePhotoAtIndex:v8 toIndex:v9];
}

- (void)ultracubePreviewViewControllerWantsToCancel:(id)a3
{
  v6 = [a3 previewProvider];
  v4 = [v6 editor];
  [v4 purgeResourcesForPreviewAtIndex:{objc_msgSend(v6, "index")}];
  v5 = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerWantsToDelete:(id)a3
{
  v7 = [a3 previewProvider];
  v4 = [v7 editor];
  v5 = [v7 index];
  [v4 purgeResourcesForPreviewAtIndex:v5];
  [v4 deletePhotoAtIndex:v5];
  v6 = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerWantsToSave:(id)a3
{
  v4 = a3;
  v5 = [v4 currentPreview];
  if (v5)
  {
    v6 = [v4 previewProvider];
    v7 = [v6 editor];
    v8 = [v6 index];
    if (([v7 savePreview:v5 forPhotoAtIndex:v8] & 1) == 0)
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_298EC(v8, v9);
      }
    }

    [v7 purgeResourcesForPreviewAtIndex:v8];
  }

  v10 = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [v10 dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerDidDismiss:(id)a3
{
  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  v4 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [v4 reloadData];
}

- (void)_updateButtons
{
  if ([(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    v3 = [(_NTKCUltraCubePhotoListViewController *)self _currentSelectAllButton];
    v4 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__editingToolBarItems;
    v6 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__doneButton;
  }

  else
  {
    saveButton = self->_saveButton;
    v3 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [v3 setLeftBarButtonItem:saveButton];
    v5 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__defaultToolBarItems;
    v6 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__selectButton;
  }

  v8 = *(&self->super.super.super.super.isa + *v6);
  v9 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  [(_NTKCUltraCubePhotoListViewController *)self setToolbarItems:*(&self->super.super.super.super.isa + *v5)];
  [(UIBarButtonItem *)self->_addButton setEnabled:[(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount]< 0x18];
  [(UIBarButtonItem *)self->_selectButton setEnabled:[(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount]> 0];
  [(_NTKCUltraCubePhotoListViewController *)self _updateTitle];

  [(_NTKCUltraCubePhotoListViewController *)self _updateButtonsForSelectionChanged];
}

- (void)_updateButtonsForSelectionChanged
{
  if ([(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    v3 = [(_NTKCUltraCubePhotoListViewController *)self _currentSelectAllButton];
    v4 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v6 = v5 != 0;
    if (!self->_inGallery)
    {
      v7 = v5;
      v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
      v9 = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
      if (v7)
      {
        v10 = v8 == v9;
      }

      else
      {
        v10 = 1;
      }

      v6 = !v10;
    }

    deleteButton = self->_deleteButton;

    [(UIBarButtonItem *)deleteButton setEnabled:v6];
  }
}

- (id)_currentSelectAllButton
{
  v3 = [(_NTKCUltraCubePhotoListViewController *)self _allPhotosSelected];
  v4 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__selectAllButton;
  if (v3)
  {
    v4 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__deselectAllButton;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (void)_updateTitle
{
  if (![(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    v3 = NTKCCustomizationLocalizedFormat();
    v4 = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
    goto LABEL_5;
  }

  if ([(NSMutableIndexSet *)self->_selectedIndexes count])
  {
    v3 = NTKCCustomizationLocalizedFormat();
    v4 = [(NSMutableIndexSet *)self->_selectedIndexes count];
LABEL_5:
    v5 = [NSString localizedStringWithFormat:v3, v4];

    [(_NTKCUltraCubePhotoListViewController *)self setTitle:v5];
    goto LABEL_6;
  }

  v5 = NTKCCustomizationLocalizedString();
  [(_NTKCUltraCubePhotoListViewController *)self setTitle:v5];
LABEL_6:
}

- (void)_savePressed
{
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_8660;
  v16[3] = &unk_48E40;
  objc_copyWeak(&v17, &location);
  v3 = objc_retainBlock(v16);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_86D4;
  v13 = &unk_48E68;
  objc_copyWeak(&v15, &location);
  v4 = v3;
  v14 = v4;
  v5 = objc_retainBlock(&v10);
  if (self->_inGallery)
  {
    spinnerButton = self->_spinnerButton;
    v7 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem:v10];
    [v7 setLeftBarButtonItem:spinnerButton];

    [(NTKCompanionUltraCubePhotosEditor *)self->_editor generateGalleryPreviewResourceDirectoryWithCompletion:v5];
  }

  else if ([(NTKCompanionUltraCubePhotosEditor *)self->_editor state:v10]== &dword_0 + 2)
  {
    v8 = self->_spinnerButton;
    v9 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [v9 setLeftBarButtonItem:v8];

    [(NTKCompanionUltraCubePhotosEditor *)self->_editor finalizeWithCompletion:v5];
  }

  else
  {
    v4[2](v4);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_selectAllPressed
{
  v3 = [(_NTKCUltraCubePhotoListViewController *)self _allPhotosSelected];
  if (v3)
  {
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  }

  else
  {
    [(_NTKCUltraCubePhotoListViewController *)self _selectAllPhotos];
  }

  v4 = v3 ^ 1;
  v5 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v6 = [v5 visibleCells];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8878;
  v7[3] = &unk_48E88;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v7];

  [(_NTKCUltraCubePhotoListViewController *)self _updateButtonsForSelectionChanged];
}

- (void)_addPressed
{
  v3 = [NTKCPhotosAddController ultraCubeConfigurationWithLimit:24 - [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount]];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8948;
  v4[3] = &unk_48EB0;
  v4[4] = self;
  [NTKCPhotosAddController presentPhotosAddControllerFromViewController:self configuration:v3 withCompletion:v4];
}

- (void)_deletePressed
{
  if (self->_deleteConfirmed)
  {
    self->_deleteConfirmed = 0;
    v3 = objc_opt_new();
    selectedIndexes = self->_selectedIndexes;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_8C5C;
    v17[3] = &unk_48ED8;
    v18 = v3;
    v19 = self;
    v5 = v3;
    [(NSMutableIndexSet *)selectedIndexes enumerateIndexesWithOptions:2 usingBlock:v17];
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
    v6 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
    [v6 deleteItemsAtIndexPaths:v5];

    [(_NTKCUltraCubePhotoListViewController *)self setEditing:0 animated:1];
    v7 = v18;
  }

  else
  {
    v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v9 = @"_PLURAL";
    if (v8 == &dword_0 + 1)
    {
      v9 = @"_SINGULAR";
    }

    v10 = v9;
    v11 = [@"PHOTOS_DELETE_CONFIRMATION" stringByAppendingString:v10];
    v5 = NTKCCustomizationLocalizedString();

    v7 = [UIAlertController alertControllerWithTitle:0 message:v5 preferredStyle:0];
    v12 = [@"PHOTOS_DELETE_BUTTON" stringByAppendingString:v10];

    v13 = NTKCCustomizationLocalizedString();

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_8C40;
    v20[3] = &unk_48CE0;
    v20[4] = self;
    v14 = [UIAlertAction actionWithTitle:v13 style:2 handler:v20];
    [v7 addAction:v14];

    v15 = NTKCCustomizationLocalizedString();
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v7 addAction:v16];

    [(_NTKCUltraCubePhotoListViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (BOOL)_allPhotosSelected
{
  v3 = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  return [(NSMutableIndexSet *)selectedIndexes containsIndexesInRange:0, v3];
}

- (void)_selectAllPhotos
{
  v3 = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  [(NSMutableIndexSet *)selectedIndexes addIndexesInRange:0, v3];
}

- (NTKCUltraCubePhotoListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end