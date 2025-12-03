@interface NTKCCLibraryListViewController
- (NTKCCLibraryListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_viewControllerForFace:(id)face;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadFaces;
- (void)_removeViewControllerForFace:(id)face;
- (void)_updateTitle;
- (void)dealloc;
- (void)faceCollection:(id)collection didAddFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollection:(id)collection didRemoveFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollectionDidLoad:(id)load;
- (void)faceCollectionDidReorderFaces:(id)faces;
- (void)faceConfigurationDidChange:(id)change;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKCCLibraryListViewController

- (NTKCCLibraryListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = NTKCCLibraryListViewController;
  v4 = [(NTKCCLibraryListViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NTKCompanionFaceCollectionsManager sharedInstance];
    v6 = +[CLKDevice currentDevice];
    v7 = [v5 sharedFaceCollectionForDevice:v6 forCollectionIdentifier:NTKCollectionIdentifierLibraryFaces];
    [(NTKCCLibraryListViewController *)v4 setLibrary:v7];

    [(NTKPersistentFaceCollection *)v4->_library addObserver:v4];
    [(NTKCCLibraryListViewController *)v4 _reloadFaces];
    [(NTKCCLibraryListViewController *)v4 _updateTitle];
  }

  return v4;
}

- (void)dealloc
{
  [(NTKPersistentFaceCollection *)self->_library removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKCCLibraryListViewController;
  [(NTKCCLibraryListViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = NTKCCLibraryListViewController;
  [(NTKCCLibraryListViewController *)&v12 viewDidLoad];
  v3 = [UITableView alloc];
  view = [(NTKCCLibraryListViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:0 style:?];
  [(NTKCCLibraryListViewController *)self setTableView:v5];

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [(UITableView *)self->_tableView setEstimatedRowHeight:120.0];
  v6 = BPSBackgroundColor();
  [(UITableView *)self->_tableView setBackgroundColor:v6];

  v7 = NTKCSeparatorColor();
  [(UITableView *)self->_tableView setSeparatorColor:v7];

  [(UITableView *)self->_tableView setIndicatorStyle:2];
  [(UITableView *)self->_tableView setSeparatorInset:0.0, 15.0, 0.0, 0.0];
  tableView = self->_tableView;
  v9 = objc_opt_class();
  v10 = +[NTKCCLibraryListCell reuseIdentifier];
  [(UITableView *)tableView registerClass:v9 forCellReuseIdentifier:v10];

  view2 = [(NTKCCLibraryListViewController *)self view];
  [view2 addSubview:self->_tableView];

  [(UITableView *)self->_tableView contentInset];
  [(UITableView *)self->_tableView setContentInset:4.0];
  if ([(NTKCCLibraryListViewController *)self isEditing])
  {
    [(UITableView *)self->_tableView setEditing:1 animated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKCCLibraryListViewController;
  [(NTKCCLibraryListViewController *)&v4 viewDidLayoutSubviews];
  view = [(NTKCCLibraryListViewController *)self view];
  [view bounds];
  [(UITableView *)self->_tableView setFrame:?];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = NTKCCLibraryListViewController;
  [(NTKCCLibraryListViewController *)&v9 viewWillAppear:appear];
  if ([(NTKCCLibraryListViewController *)self isMovingToParentViewController])
  {
    selectedFaceIndex = [(NTKPersistentFaceCollection *)self->_library selectedFaceIndex];
    v5 = [(UITableView *)self->_tableView numberOfRowsInSection:0];
    if (selectedFaceIndex >= v5)
    {
      v6 = v5;
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_FD20(selectedFaceIndex, v6, v7);
      }
    }

    else
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_CEF4;
      v8[3] = &unk_20CE8;
      v8[4] = self;
      v8[5] = selectedFaceIndex;
      dispatch_async(&_dispatch_main_q, v8);
    }
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = NTKCCLibraryListViewController;
  [NTKCCLibraryListViewController setEditing:"setEditing:animated:" animated:?];
  [(UITableView *)self->_tableView setEditing:editingCopy animated:animatedCopy];
}

- (void)_reloadFaces
{
  library = self->_library;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D054;
  v3[3] = &unk_20738;
  v3[4] = self;
  [(NTKPersistentFaceCollection *)library enumerateFacesUsingBlock:v3];
}

- (void)_updateTitle
{
  v3 = NTKCCustomizationLocalizedString();
  v5 = [v3 stringByAppendingString:@" (%d)"];

  v4 = [NSString localizedStringWithFormat:v5, [(NTKPersistentFaceCollection *)self->_library numberOfFaces]];
  [(NTKCCLibraryListViewController *)self setTitle:v4];
}

- (id)_viewControllerForFace:(id)face
{
  faceCopy = face;
  faceVCs = self->_faceVCs;
  if (!faceVCs)
  {
    v6 = objc_opt_new();
    [(NTKCCLibraryListViewController *)self setFaceVCs:v6];

    faceVCs = self->_faceVCs;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = faceVCs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      face = [v12 face];

      if (face == faceCopy)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v14 = v12;

    if (v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_11:
  }

  device = [faceCopy device];
  if ([device isRunningNapiliGMOrLater])
  {
    v16 = [(NTKPersistentFaceCollection *)self->_library uuidForFace:faceCopy];
    v14 = [[NFGReplicatedSnapshotViewController alloc] initWithFace:faceCopy uuid:v16];
  }

  else
  {
    v14 = [[NTKFaceSnapshotViewController alloc] initWithFace:faceCopy];
  }

  [(NSMutableArray *)self->_faceVCs addObject:v14];

LABEL_17:

  return v14;
}

- (void)_removeViewControllerForFace:(id)face
{
  faceCopy = face;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_faceVCs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      face = [v10 face];

      if (face == faceCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_faceVCs removeObject:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    numberOfFaces = [(NTKPersistentFaceCollection *)self->_library numberOfFaces];
    v8 = 134217984;
    v9 = numberOfFaces;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Library List: number of faces %ld", &v8, 0xCu);
  }

  return [(NTKPersistentFaceCollection *)self->_library numberOfFaces];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = pathCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Library List: cellForRowAtIndexPath %@", &v16, 0xCu);
  }

  tableView = self->_tableView;
  v8 = +[NTKCCLibraryListCell reuseIdentifier];
  v9 = [(UITableView *)tableView dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = -[NTKPersistentFaceCollection faceAtIndex:](self->_library, "faceAtIndex:", [pathCopy row]);
  selectedFaceIndex = [(NTKPersistentFaceCollection *)self->_library selectedFaceIndex];
  name = [v10 name];
  [v9 setFaceName:name];

  v13 = [(NTKCCLibraryListViewController *)self _viewControllerForFace:v10];
  view = [v13 view];
  [v9 setFaceView:view];

  [v9 setCurrentFace:{objc_msgSend(pathCopy, "row") == selectedFaceIndex}];

  return v9;
}

- (id)tableView:(id)view editActionsForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = NTKCCustomizationLocalizedString();
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_D858;
  v14 = &unk_20D60;
  selfCopy = self;
  v16 = viewCopy;
  v7 = viewCopy;
  v8 = [UITableViewRowAction rowActionWithStyle:0 title:v6 handler:&v11];

  v17 = v8;
  selfCopy = [NSArray arrayWithObjects:&v17 count:1, v11, v12, v13, v14, selfCopy];

  return selfCopy;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if (([indexPathCopy isEqual:pathCopy] & 1) == 0)
  {
    v8 = -[NTKPersistentFaceCollection faceAtIndex:](self->_library, "faceAtIndex:", [pathCopy row]);
    -[NTKPersistentFaceCollection moveFace:toIndex:suppressingCallbackToObserver:](self->_library, "moveFace:toIndex:suppressingCallbackToObserver:", v8, [indexPathCopy row], self);
    NTKCCAnalyticsIncrement();
  }
}

- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index
{
  faceCopy = face;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = faceCopy;
    v25 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Library List: from library did select face (%@) at index %ld", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleCells = [(UITableView *)self->_tableView visibleCells];
  v10 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(visibleCells);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 currentFace])
        {
          [v14 setCurrentFace:0];
        }
      }

      v11 = [visibleCells countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  tableView = self->_tableView;
  v16 = [NSIndexPath indexPathForRow:index inSection:0];
  v17 = [(UITableView *)tableView cellForRowAtIndexPath:v16];

  [v17 setCurrentFace:1];
}

- (void)faceCollection:(id)collection didAddFace:(id)face atIndex:(unint64_t)index
{
  faceCopy = face;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = faceCopy;
    v15 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Library List: from library did add face (%@), inserting row %ld", buf, 0x16u);
  }

  [(NTKCCLibraryListViewController *)self _updateTitle];
  tableView = self->_tableView;
  v10 = [NSIndexPath indexPathForRow:index inSection:0];
  v12 = v10;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v11 withRowAnimation:100];
}

- (void)faceCollection:(id)collection didRemoveFace:(id)face atIndex:(unint64_t)index
{
  faceCopy = face;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = faceCopy;
    v15 = 2048;
    indexCopy = index;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Library List: from library did remove face (%@), deleting row %ld", buf, 0x16u);
  }

  [(NTKCCLibraryListViewController *)self _removeViewControllerForFace:faceCopy];
  [(NTKCCLibraryListViewController *)self _updateTitle];
  tableView = self->_tableView;
  v10 = [NSIndexPath indexPathForRow:index inSection:0];
  v12 = v10;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v11 withRowAnimation:100];
}

- (void)faceCollectionDidReorderFaces:(id)faces
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Library List: collection did reorder, reloading section", v7, 2u);
  }

  tableView = self->_tableView;
  v6 = [NSIndexSet indexSetWithIndex:0];
  [(UITableView *)tableView reloadSections:v6 withRowAnimation:100];
}

- (void)faceCollectionDidLoad:(id)load
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Library List: collection did load, reloading data", v5, 2u);
  }

  [(NTKCCLibraryListViewController *)self _updateTitle];
  [(UITableView *)self->_tableView reloadData];
}

- (void)faceConfigurationDidChange:(id)change
{
  library = self->_library;
  changeCopy = change;
  v6 = [(NTKPersistentFaceCollection *)library indexOfFace:changeCopy];
  tableView = self->_tableView;
  v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
  v10 = [(UITableView *)tableView cellForRowAtIndexPath:v8];

  name = [changeCopy name];

  [v10 setFaceName:name];
}

@end