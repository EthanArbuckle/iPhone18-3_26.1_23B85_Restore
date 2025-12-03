@interface AKAttributePickerViewController
- (AKAttributePickerViewController)initWithController:(id)controller selectedAnnotations:(id)annotations;
- (AKAttributePickerViewControllerDelegate)delegate;
- (AKController)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_attributeStyleChanged:(id)changed;
- (void)_lineAttributesChanged:(id)changed;
- (void)_updatePreferredContentSize;
- (void)revalidateItems;
- (void)setSelectedAnnotations:(id)annotations;
- (void)updateLayoutForSelectedAnnotations;
- (void)viewDidLoad;
@end

@implementation AKAttributePickerViewController

- (AKAttributePickerViewController)initWithController:(id)controller selectedAnnotations:(id)annotations
{
  controllerCopy = controller;
  annotationsCopy = annotations;
  v11.receiver = self;
  v11.super_class = AKAttributePickerViewController;
  v8 = [(AKAttributePickerViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AKAttributePickerViewController *)v8 setController:controllerCopy];
    [(AKAttributePickerViewController *)v9 setSelectedAnnotations:annotationsCopy];
  }

  return v9;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = AKAttributePickerViewController;
  [(AKAttributePickerViewController *)&v21 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKAttributePickerViewController *)self setTableView:v4];

  tableView = [(AKAttributePickerViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  tableView2 = [(AKAttributePickerViewController *)self tableView];
  [tableView2 setAllowsSelection:0];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  tableView3 = [(AKAttributePickerViewController *)self tableView];
  [tableView3 setSeparatorInset:{v7, v8, v9, v10}];

  tableView4 = [(AKAttributePickerViewController *)self tableView];
  [tableView4 setAlwaysBounceVertical:0];

  tableView5 = [(AKAttributePickerViewController *)self tableView];
  [tableView5 setAlwaysBounceHorizontal:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView6 = [(AKAttributePickerViewController *)self tableView];
  [tableView6 setBackgroundColor:clearColor];

  tableView7 = [(AKAttributePickerViewController *)self tableView];
  [tableView7 registerClass:objc_opt_class() forCellReuseIdentifier:@"identifier"];

  tableView8 = [(AKAttributePickerViewController *)self tableView];
  [tableView8 setDelegate:self];

  tableView9 = [(AKAttributePickerViewController *)self tableView];
  [tableView9 setDataSource:self];

  view = [(AKAttributePickerViewController *)self view];
  tableView10 = [(AKAttributePickerViewController *)self tableView];
  [view ak_addSubview:tableView10 withEdgeInsets:{v7, v8, v9, v10}];

  [(AKAttributePickerViewController *)self updateLayoutForSelectedAnnotations];
}

- (void)setSelectedAnnotations:(id)annotations
{
  objc_storeStrong(&self->_selectedAnnotations, annotations);
  viewIfLoaded = [(AKAttributePickerViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {

    [(AKAttributePickerViewController *)self updateLayoutForSelectedAnnotations];
  }
}

- (void)updateLayoutForSelectedAnnotations
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AKAttributePickerViewController *)self selectedAnnotations];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v24 = 0;
    v4 = 0;
    v5 = 0;
    v23 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = objc_opt_respondsToSelector();
        v8 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector())
        {
          objc_opt_class();
          v24 |= objc_opt_isKindOfClass() ^ 1;
        }

        v5 |= v7;
        v4 |= v8;
      }

      v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v3);
  }

  else
  {
    LOBYTE(v24) = 0;
    v4 = 0;
    v5 = 0;
  }

  controller = [(AKAttributePickerViewController *)self controller];
  if (v24)
  {
    v10 = [AKLineStylePicker alloc];
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [(AKLineStylePicker *)v10 initWithFrame:0 lineType:controller controller:*MEMORY[0x277CBF3A0], v12, v13, v14];
    [(AKLineStylePicker *)v15 setTag:1000];
    [(AKLineStylePicker *)v15 addTarget:self action:sel__lineAttributesChanged_ forControlEvents:4096];
    v16 = [[AKLineStylePicker alloc] initWithFrame:1 lineType:controller controller:v11, v12, v13, v14];
    [(AKLineStylePicker *)v16 setTag:1000];
    [(AKLineStylePicker *)v16 addTarget:self action:sel__lineAttributesChanged_ forControlEvents:4096];
    v17 = [[AKLineStylePicker alloc] initWithFrame:2 lineType:controller controller:v11, v12, v13, v14];
    [(AKLineStylePicker *)v17 setTag:1000];
    [(AKLineStylePicker *)v17 addTarget:self action:sel__lineAttributesChanged_ forControlEvents:4096];
    v30[0] = v15;
    v30[1] = v16;
    v30[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    [(AKAttributePickerViewController *)self setRowViews:v18];

LABEL_16:
    goto LABEL_17;
  }

  if (v5)
  {
    v19 = [AKFillableShapeStylePicker alloc];
    v15 = [(AKFillableShapeStylePicker *)v19 initWithFrame:controller controller:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AKLineStylePicker *)v15 setTag:1000];
    [(AKLineStylePicker *)v15 setShowFill:v4 & 1];
    [(AKLineStylePicker *)v15 addTarget:self action:sel__attributeStyleChanged_ forControlEvents:4096];
    v29 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [(AKAttributePickerViewController *)self setRowViews:v16];
    goto LABEL_16;
  }

LABEL_17:
  tableView = [(AKAttributePickerViewController *)self tableView];
  [tableView reloadData];

  [(AKAttributePickerViewController *)self revalidateItems];
  [(AKAttributePickerViewController *)self _updatePreferredContentSize];
}

- (void)_updatePreferredContentSize
{
  view = [(AKAttributePickerViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v21);

  rowViews = [(AKAttributePickerViewController *)self rowViews];
  v6 = [rowViews count];

  if (v6)
  {
    v7 = 0;
    v8 = *MEMORY[0x277D76C78];
    v9 = *(MEMORY[0x277D76C78] + 8);
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      tableView = [(AKAttributePickerViewController *)self tableView];
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v14 = [tableView cellForRowAtIndexPath:v13];

      [v14 systemLayoutSizeFittingSize:{v8, v9}];
      if (v15 > v11)
      {
        v11 = v15;
      }

      if (v16 > v10)
      {
        v10 = v16;
      }

      ++v7;
      rowViews2 = [(AKAttributePickerViewController *)self rowViews];
      v18 = [rowViews2 count];
    }

    while (v7 < v18);
  }

  else
  {
    v11 = 0.0;
    v10 = 0.0;
  }

  if (v11 > 0.0)
  {
    Width = v11;
  }

  rowViews3 = [(AKAttributePickerViewController *)self rowViews];
  -[AKAttributePickerViewController setPreferredContentSize:](self, "setPreferredContentSize:", Width, v10 * [rowViews3 count]);
}

- (void)_attributeStyleChanged:(id)changed
{
  currentTag = [changed currentTag];
  delegate = [(AKAttributePickerViewController *)self delegate];
  if (currentTag != 763000)
  {
    v6 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v6 attributePicker:self didSelectToolWithTag:currentTag attributeTag:763000];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_lineAttributesChanged:(id)changed
{
  changedCopy = changed;
  currentTag = [changedCopy currentTag];
  lineStyle = [changedCopy lineStyle];

  delegate = [(AKAttributePickerViewController *)self delegate];
  if (currentTag != 763000)
  {
    v8 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v8 attributePicker:self didSelectToolWithTag:currentTag attributeTag:lineStyle];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)revalidateItems
{
  v17 = *MEMORY[0x277D85DE8];
  controller = [(AKAttributePickerViewController *)self controller];
  currentPageController = [controller currentPageController];
  pageModelController = [currentPageController pageModelController];

  selectedAnnotations = [pageModelController selectedAnnotations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rowViews = [(AKAttributePickerViewController *)self rowViews];
  v8 = [rowViews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(rowViews);
        }

        [*(*(&v12 + 1) + 8 * v11++) revalidateItems:selectedAnnotations];
      }

      while (v9 != v11);
      v9 = [rowViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AKAttributePickerViewController *)self rowViews:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:pathCopy];
  contentView = [v7 contentView];
  v9 = [contentView viewWithTag:1000];

  rowViews = [(AKAttributePickerViewController *)self rowViews];
  v11 = [pathCopy row];

  v12 = [rowViews objectAtIndexedSubscript:v11];

  if (v9)
  {
    [v9 removeFromSuperview];
  }

  contentView2 = [v7 contentView];
  [contentView2 ak_addSubview:v12 withEdgeInsets:{0.0, 16.0, 0.0, -16.0}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  return v7;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (AKAttributePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end