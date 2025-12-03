@interface _NTKCUltraCubePhotoListViewController
- (BOOL)_allPhotosSelected;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NTKCUltraCubePhotoListViewControllerDelegate)delegate;
- (_NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view;
- (id)_currentSelectAllButton;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_addPressed;
- (void)_deletePressed;
- (void)_savePressed;
- (void)_selectAllPhotos;
- (void)_selectAllPressed;
- (void)_updateButtons;
- (void)_updateButtonsForSelectionChanged;
- (void)_updateTitle;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)ultracubePreviewViewControllerDidDismiss:(id)dismiss;
- (void)ultracubePreviewViewControllerWantsToCancel:(id)cancel;
- (void)ultracubePreviewViewControllerWantsToDelete:(id)delete;
- (void)ultracubePreviewViewControllerWantsToSave:(id)save;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _NTKCUltraCubePhotoListViewController

- (_NTKCUltraCubePhotoListViewController)initWithUltraCubePhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery faceView:(id)view
{
  galleryCopy = gallery;
  editorCopy = editor;
  faceCopy = face;
  viewCopy = view;
  v13 = objc_opt_new();
  v52.receiver = self;
  v52.super_class = _NTKCUltraCubePhotoListViewController;
  v14 = [(_NTKCUltraCubePhotoListViewController *)&v52 initWithCollectionViewLayout:v13];
  v15 = v14;
  if (v14)
  {
    [(_NTKCUltraCubePhotoListViewController *)v14 setEditor:editorCopy];
    [(_NTKCUltraCubePhotoListViewController *)v15 setFace:faceCopy];
    [(_NTKCUltraCubePhotoListViewController *)v15 setInGallery:galleryCopy];
    [(_NTKCUltraCubePhotoListViewController *)v15 setFaceView:viewCopy];
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
  view = [(_NTKCUltraCubePhotoListViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = +[UIColor systemBackgroundColor];
  collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [collectionView setBackgroundColor:v5];

  collectionView2 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = +[NTKCPhotoListCell reuseIdentifier];
  [collectionView2 registerClass:v8 forCellWithReuseIdentifier:v9];

  collectionView3 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:1];

  collectionView4 = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [collectionView4 setAllowsSelectionDuringEditing:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = _NTKCUltraCubePhotoListViewController;
  [(_NTKCUltraCubePhotoListViewController *)&v7 viewWillAppear:appear];
  navigationController = [(_NTKCUltraCubePhotoListViewController *)self navigationController];
  [navigationController setToolbarHidden:0];

  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  presentedViewController = [(_NTKCUltraCubePhotoListViewController *)self presentedViewController];

  if (presentedViewController)
  {
    collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
    [collectionView reloadData];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = _NTKCUltraCubePhotoListViewController;
  [(_NTKCUltraCubePhotoListViewController *)&v7 setEditing:editing animated:animated];
  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  [visibleCells enumerateObjectsUsingBlock:&stru_48DF0];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  v7 = +[NTKCPhotoListCell reuseIdentifier];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  item = [pathCopy item];
  editor = self->_editor;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7B00;
  v15[3] = &unk_48E18;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v17 = item;
  [(NTKCompanionUltraCubePhotosEditor *)editor thumbnailImageForPhotoAtIndex:item completion:v15];
  [v11 setPhoto:0];
  [v11 setCrop:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v11 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedIndexes, "containsIndex:", item)}];
  v12 = v16;
  v13 = v11;

  return v11;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  if ([(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v9 setSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
    isSelected = [v9 isSelected];
    selectedIndexes = self->_selectedIndexes;
    if (isSelected)
    {
      [(NSMutableIndexSet *)selectedIndexes addIndex:item];
    }

    else
    {
      [(NSMutableIndexSet *)selectedIndexes removeIndex:item];
    }

    [(_NTKCUltraCubePhotoListViewController *)self _updateButtonsForSelectionChanged];
LABEL_11:

    goto LABEL_12;
  }

  if ([(NTKCompanionUltraCubePhotosEditor *)self->_editor canChangeOriginalCropOfPhotoAtIndex:item])
  {
    face = [(_NTKCUltraCubePhotoListViewController *)self face];
    v9 = [face selectedOptionForCustomEditMode:13 slot:0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      typeface = [v9 typeface];
    }

    else
    {
      typeface = &dword_0 + 1;
    }

    face2 = [(_NTKCUltraCubePhotoListViewController *)self face];
    device = [face2 device];

    v16 = [[NTKUltraCubePreviewFactory alloc] initWithIndex:item device:device typeface:typeface editor:self->_editor];
    v17 = [[NTKCUltraCubePreviewViewController alloc] initWithPreviewProvider:v16];
    v18 = BPSBridgeTintColor();
    view = [(NTKCUltraCubePreviewViewController *)v17 view];
    [view setTintColor:v18];

    [(NTKCUltraCubePreviewViewController *)v17 setDelegate:self];
    [(_NTKCUltraCubePhotoListViewController *)self presentViewController:v17 animated:1 completion:0];

    goto LABEL_11;
  }

LABEL_12:

  return 0;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  editor = self->_editor;
  indexPathCopy = indexPath;
  item = [path item];
  item2 = [indexPathCopy item];

  [(NTKCompanionUltraCubePhotosEditor *)editor movePhotoAtIndex:item toIndex:item2];
}

- (void)ultracubePreviewViewControllerWantsToCancel:(id)cancel
{
  previewProvider = [cancel previewProvider];
  editor = [previewProvider editor];
  [editor purgeResourcesForPreviewAtIndex:{objc_msgSend(previewProvider, "index")}];
  parentViewController = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerWantsToDelete:(id)delete
{
  previewProvider = [delete previewProvider];
  editor = [previewProvider editor];
  index = [previewProvider index];
  [editor purgeResourcesForPreviewAtIndex:index];
  [editor deletePhotoAtIndex:index];
  parentViewController = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerWantsToSave:(id)save
{
  saveCopy = save;
  currentPreview = [saveCopy currentPreview];
  if (currentPreview)
  {
    previewProvider = [saveCopy previewProvider];
    editor = [previewProvider editor];
    index = [previewProvider index];
    if (([editor savePreview:currentPreview forPhotoAtIndex:index] & 1) == 0)
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_298EC(index, v9);
      }
    }

    [editor purgeResourcesForPreviewAtIndex:index];
  }

  parentViewController = [(_NTKCUltraCubePhotoListViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)ultracubePreviewViewControllerDidDismiss:(id)dismiss
{
  [(_NTKCUltraCubePhotoListViewController *)self _updateButtons];
  collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)_updateButtons
{
  if ([(_NTKCUltraCubePhotoListViewController *)self isEditing])
  {
    _currentSelectAllButton = [(_NTKCUltraCubePhotoListViewController *)self _currentSelectAllButton];
    navigationItem = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:_currentSelectAllButton];

    v5 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__editingToolBarItems;
    v6 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__doneButton;
  }

  else
  {
    saveButton = self->_saveButton;
    _currentSelectAllButton = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [_currentSelectAllButton setLeftBarButtonItem:saveButton];
    v5 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__defaultToolBarItems;
    v6 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__selectButton;
  }

  v8 = *(&self->super.super.super.super.isa + *v6);
  navigationItem2 = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

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
    _currentSelectAllButton = [(_NTKCUltraCubePhotoListViewController *)self _currentSelectAllButton];
    navigationItem = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:_currentSelectAllButton];

    v5 = [(NSMutableIndexSet *)self->_selectedIndexes count];
    v6 = v5 != 0;
    if (!self->_inGallery)
    {
      v7 = v5;
      v8 = [(NSMutableIndexSet *)self->_selectedIndexes count];
      photosCount = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
      if (v7)
      {
        v10 = v8 == photosCount;
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
  _allPhotosSelected = [(_NTKCUltraCubePhotoListViewController *)self _allPhotosSelected];
  v4 = &OBJC_IVAR____NTKCUltraCubePhotoListViewController__selectAllButton;
  if (_allPhotosSelected)
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
    photosCount = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
    goto LABEL_5;
  }

  if ([(NSMutableIndexSet *)self->_selectedIndexes count])
  {
    v3 = NTKCCustomizationLocalizedFormat();
    photosCount = [(NSMutableIndexSet *)self->_selectedIndexes count];
LABEL_5:
    v5 = [NSString localizedStringWithFormat:v3, photosCount];

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
    navigationItem = [(_NTKCUltraCubePhotoListViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v8];

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
  _allPhotosSelected = [(_NTKCUltraCubePhotoListViewController *)self _allPhotosSelected];
  if (_allPhotosSelected)
  {
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  }

  else
  {
    [(_NTKCUltraCubePhotoListViewController *)self _selectAllPhotos];
  }

  v4 = _allPhotosSelected ^ 1;
  collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8878;
  v7[3] = &unk_48E88;
  v8 = v4;
  [visibleCells enumerateObjectsUsingBlock:v7];

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
    selfCopy = self;
    v5 = v3;
    [(NSMutableIndexSet *)selectedIndexes enumerateIndexesWithOptions:2 usingBlock:v17];
    [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
    collectionView = [(_NTKCUltraCubePhotoListViewController *)self collectionView];
    [collectionView deleteItemsAtIndexPaths:v5];

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
  photosCount = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  return [(NSMutableIndexSet *)selectedIndexes containsIndexesInRange:0, photosCount];
}

- (void)_selectAllPhotos
{
  photosCount = [(NTKCompanionUltraCubePhotosEditor *)self->_editor photosCount];
  selectedIndexes = self->_selectedIndexes;

  [(NSMutableIndexSet *)selectedIndexes addIndexesInRange:0, photosCount];
}

- (NTKCUltraCubePhotoListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end