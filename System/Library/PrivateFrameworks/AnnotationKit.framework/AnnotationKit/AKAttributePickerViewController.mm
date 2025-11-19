@interface AKAttributePickerViewController
- (AKAttributePickerViewController)initWithController:(id)a3 selectedAnnotations:(id)a4;
- (AKAttributePickerViewControllerDelegate)delegate;
- (AKController)controller;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_attributeStyleChanged:(id)a3;
- (void)_lineAttributesChanged:(id)a3;
- (void)_updatePreferredContentSize;
- (void)revalidateItems;
- (void)setSelectedAnnotations:(id)a3;
- (void)updateLayoutForSelectedAnnotations;
- (void)viewDidLoad;
@end

@implementation AKAttributePickerViewController

- (AKAttributePickerViewController)initWithController:(id)a3 selectedAnnotations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AKAttributePickerViewController;
  v8 = [(AKAttributePickerViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AKAttributePickerViewController *)v8 setController:v6];
    [(AKAttributePickerViewController *)v9 setSelectedAnnotations:v7];
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

  v5 = [(AKAttributePickerViewController *)self tableView];
  [v5 setSeparatorStyle:0];

  v6 = [(AKAttributePickerViewController *)self tableView];
  [v6 setAllowsSelection:0];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v11 = [(AKAttributePickerViewController *)self tableView];
  [v11 setSeparatorInset:{v7, v8, v9, v10}];

  v12 = [(AKAttributePickerViewController *)self tableView];
  [v12 setAlwaysBounceVertical:0];

  v13 = [(AKAttributePickerViewController *)self tableView];
  [v13 setAlwaysBounceHorizontal:0];

  v14 = [MEMORY[0x277D75348] clearColor];
  v15 = [(AKAttributePickerViewController *)self tableView];
  [v15 setBackgroundColor:v14];

  v16 = [(AKAttributePickerViewController *)self tableView];
  [v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"identifier"];

  v17 = [(AKAttributePickerViewController *)self tableView];
  [v17 setDelegate:self];

  v18 = [(AKAttributePickerViewController *)self tableView];
  [v18 setDataSource:self];

  v19 = [(AKAttributePickerViewController *)self view];
  v20 = [(AKAttributePickerViewController *)self tableView];
  [v19 ak_addSubview:v20 withEdgeInsets:{v7, v8, v9, v10}];

  [(AKAttributePickerViewController *)self updateLayoutForSelectedAnnotations];
}

- (void)setSelectedAnnotations:(id)a3
{
  objc_storeStrong(&self->_selectedAnnotations, a3);
  v4 = [(AKAttributePickerViewController *)self viewIfLoaded];

  if (v4)
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

  v9 = [(AKAttributePickerViewController *)self controller];
  if (v24)
  {
    v10 = [AKLineStylePicker alloc];
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
    v15 = [(AKLineStylePicker *)v10 initWithFrame:0 lineType:v9 controller:*MEMORY[0x277CBF3A0], v12, v13, v14];
    [(AKLineStylePicker *)v15 setTag:1000];
    [(AKLineStylePicker *)v15 addTarget:self action:sel__lineAttributesChanged_ forControlEvents:4096];
    v16 = [[AKLineStylePicker alloc] initWithFrame:1 lineType:v9 controller:v11, v12, v13, v14];
    [(AKLineStylePicker *)v16 setTag:1000];
    [(AKLineStylePicker *)v16 addTarget:self action:sel__lineAttributesChanged_ forControlEvents:4096];
    v17 = [[AKLineStylePicker alloc] initWithFrame:2 lineType:v9 controller:v11, v12, v13, v14];
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
    v15 = [(AKFillableShapeStylePicker *)v19 initWithFrame:v9 controller:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(AKLineStylePicker *)v15 setTag:1000];
    [(AKLineStylePicker *)v15 setShowFill:v4 & 1];
    [(AKLineStylePicker *)v15 addTarget:self action:sel__attributeStyleChanged_ forControlEvents:4096];
    v29 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [(AKAttributePickerViewController *)self setRowViews:v16];
    goto LABEL_16;
  }

LABEL_17:
  v20 = [(AKAttributePickerViewController *)self tableView];
  [v20 reloadData];

  [(AKAttributePickerViewController *)self revalidateItems];
  [(AKAttributePickerViewController *)self _updatePreferredContentSize];
}

- (void)_updatePreferredContentSize
{
  v3 = [(AKAttributePickerViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v21);

  v5 = [(AKAttributePickerViewController *)self rowViews];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = *MEMORY[0x277D76C78];
    v9 = *(MEMORY[0x277D76C78] + 8);
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = [(AKAttributePickerViewController *)self tableView];
      v13 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:0];
      v14 = [v12 cellForRowAtIndexPath:v13];

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
      v17 = [(AKAttributePickerViewController *)self rowViews];
      v18 = [v17 count];
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

  v19 = [(AKAttributePickerViewController *)self rowViews];
  -[AKAttributePickerViewController setPreferredContentSize:](self, "setPreferredContentSize:", Width, v10 * [v19 count]);
}

- (void)_attributeStyleChanged:(id)a3
{
  v4 = [a3 currentTag];
  v5 = [(AKAttributePickerViewController *)self delegate];
  if (v4 != 763000)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v6 attributePicker:self didSelectToolWithTag:v4 attributeTag:763000];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_lineAttributesChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 currentTag];
  v6 = [v4 lineStyle];

  v7 = [(AKAttributePickerViewController *)self delegate];
  if (v5 != 763000)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      [v8 attributePicker:self didSelectToolWithTag:v5 attributeTag:v6];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)revalidateItems
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(AKAttributePickerViewController *)self controller];
  v4 = [v3 currentPageController];
  v5 = [v4 pageModelController];

  v6 = [v5 selectedAnnotations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(AKAttributePickerViewController *)self rowViews];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) revalidateItems:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AKAttributePickerViewController *)self rowViews:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"identifier" forIndexPath:v6];
  v8 = [v7 contentView];
  v9 = [v8 viewWithTag:1000];

  v10 = [(AKAttributePickerViewController *)self rowViews];
  v11 = [v6 row];

  v12 = [v10 objectAtIndexedSubscript:v11];

  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v13 = [v7 contentView];
  [v13 ak_addSubview:v12 withEdgeInsets:{0.0, 16.0, 0.0, -16.0}];

  v14 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v14];

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