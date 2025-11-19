@interface AKToolsListViewController
- (AKToolsListViewController)initWithCoder:(id)a3;
- (AKToolsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AKToolsListViewControllerDelegate)delegate;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_buttonViewForImageDescription;
- (id)_buttonViewForLoupe;
- (id)_buttonViewForOpacity;
- (id)_buttonViewForShapes;
- (id)_buttonViewForSignature;
- (id)_buttonViewForText;
- (id)_buttonViewWithImage:(id)a3 title:(id)a4 tintColor:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_bottomPaddingCellIndexRow;
- (int64_t)_shapesCellIndexRow;
- (int64_t)_topPaddingCellIndexRow;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_reloadCellItemTypes;
- (void)_shapeButtonPressed:(id)a3;
- (void)_updateDeviceLocked;
- (void)addRowView:(id)a3 toCellView:(id)a4;
- (void)setSupportsImageDescriptionEditing:(BOOL)a3;
- (void)setSupportsOpacityEditing:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKToolsListViewController

- (AKToolsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = AKToolsListViewController;
  v4 = [(AKToolsListViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(AKToolsListViewController *)v6 _updateDeviceLocked];
    [(AKToolsListViewController *)v6 _reloadCellItemTypes];
  }

  return v5;
}

- (AKToolsListViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = AKToolsListViewController;
  v3 = [(AKToolsListViewController *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [(AKToolsListViewController *)v5 _updateDeviceLocked];
    [(AKToolsListViewController *)v5 _reloadCellItemTypes];
  }

  return v4;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = AKToolsListViewController;
  [(AKToolsListViewController *)&v27 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKToolsListViewController *)self setTableView:v4];

  v5 = [(AKToolsListViewController *)self tableView];
  [v5 setDelegate:self];

  v6 = [(AKToolsListViewController *)self tableView];
  [v6 setDataSource:self];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v11 = [(AKToolsListViewController *)self tableView];
  [v11 setSeparatorInset:{v7, v8, v9, v10}];

  v12 = [(AKToolsListViewController *)self tableView];
  [v12 setSeparatorStyle:0];

  v13 = [(AKToolsListViewController *)self tableView];
  [v13 setAlwaysBounceVertical:0];

  v14 = [(AKToolsListViewController *)self tableView];
  [v14 setAlwaysBounceHorizontal:0];

  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = [(AKToolsListViewController *)self tableView];
  [v16 setBackgroundColor:v15];

  v17 = [(AKToolsListViewController *)self tableView];
  [v17 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKImageDescriptionRowIdentifier"];

  v18 = [(AKToolsListViewController *)self tableView];
  [v18 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKTextRowIdentifier"];

  v19 = [(AKToolsListViewController *)self tableView];
  [v19 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKLoupeRowIdentifier"];

  v20 = [(AKToolsListViewController *)self tableView];
  [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKSignatureRowIdentifier"];

  v21 = [(AKToolsListViewController *)self tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKShapesRowIdentifier"];

  v22 = [(AKToolsListViewController *)self tableView];
  [v22 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKOpacityRowIdentifier"];

  v23 = [(AKToolsListViewController *)self tableView];
  [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKPaddingRowIdentifier"];

  v24 = [(AKToolsListViewController *)self tableView];
  [v24 setAccessibilityIdentifier:@"shapes-picker-popover"];

  v25 = [(AKToolsListViewController *)self view];
  v26 = [(AKToolsListViewController *)self tableView];
  [v25 ak_addSubview:v26 withEdgeInsets:{v7, v8, v9, v10}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = AKToolsListViewController;
  [(AKToolsListViewController *)&v10 viewWillAppear:a3];
  v4 = [(AKToolsListViewController *)self tableView];
  [v4 layoutIfNeeded];

  v5 = [(AKToolsListViewController *)self tableView];
  [v5 contentSize];
  v7 = v6;

  v8 = [(AKToolsListViewController *)self _buttonViewForShapes];
  [v8 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(AKToolsListViewController *)self setPreferredContentSize:v9 + 32.0, v7];
}

- (void)_updateDeviceLocked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = off_27E39B5B8;
  v9 = off_27E39B5B8;
  if (!off_27E39B5B8)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F42CE78;
    v5[3] = &unk_278C7B9D0;
    v5[4] = &v6;
    sub_23F42CE78(v5);
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v4 = sub_23F4BD000();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  self->_isDeviceLocked = v3(0) - 1 < 2;
}

- (void)_shapeButtonPressed:(id)a3
{
  v4 = [a3 currentTag];
  v5 = [(AKToolsListViewController *)self delegate];
  if (v4 != 763000)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v6 toolsList:self didSelectToolWithTag:v4];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v15 = [(AKToolsListViewController *)self delegate];
  v7 = [(AKToolsListViewController *)self cellItemTypes];
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];
  v10 = [v9 integerValue];

  if (v10 <= 1)
  {
    if (!v10)
    {
      v13 = v15;
      v14 = self;
      v12 = 764014;
      goto LABEL_13;
    }

    v11 = v15;
    if (v10 != 1)
    {
      goto LABEL_15;
    }

    v12 = 764019;
LABEL_10:
    v13 = v15;
    v14 = self;
LABEL_13:
    [v13 toolsList:v14 didSelectToolWithTag:v12];
    goto LABEL_14;
  }

  if (v10 == 2)
  {
    v12 = 764020;
    goto LABEL_10;
  }

  v11 = v15;
  if (v10 != 4)
  {
    if (v10 != 5)
    {
      goto LABEL_15;
    }

    v12 = 764066;
    goto LABEL_10;
  }

  [v15 toolsListDidSelectOpacityItem:self];
LABEL_14:
  v11 = v15;
LABEL_15:
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AKToolsListViewController *)self cellItemTypes:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AKToolsListViewController *)self cellItemTypes];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];
  v10 = [v9 integerValue];

  v11 = 0;
  if (v10 > 3)
  {
    if ((v10 - 6) < 2)
    {
      v11 = [v6 dequeueReusableCellWithIdentifier:@"AKPaddingRowIdentifier"];
      goto LABEL_23;
    }

    if (v10 == 4)
    {
      v11 = [v6 dequeueReusableCellWithIdentifier:@"AKOpacityRowIdentifier"];
      [v11 setAccessibilityIdentifier:@"opacity-cell"];
      v23 = [MEMORY[0x277D75348] _labelColor];
      [v11 setTintColor:v23];

      v24 = [v11 contentView];
      v25 = [v24 viewWithTag:1000];

      if (v25)
      {
        goto LABEL_23;
      }

      v14 = [(AKToolsListViewController *)self _buttonViewForOpacity];
      goto LABEL_22;
    }

    if (v10 == 5)
    {
      v11 = [v6 dequeueReusableCellWithIdentifier:@"AKImageDescriptionRowIdentifier" forIndexPath:v7];
      [v11 setAccessibilityIdentifier:@"image-description-cell"];
      v15 = [v11 contentView];
      v16 = [v15 viewWithTag:1000];

      if (!v16)
      {
        v14 = [(AKToolsListViewController *)self _buttonViewForImageDescription];
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v11 = [v6 dequeueReusableCellWithIdentifier:@"AKLoupeRowIdentifier"];
        [v11 setAccessibilityIdentifier:@"magnifier-cell"];
        v21 = [v11 contentView];
        v22 = [v21 viewWithTag:1000];

        if (v22)
        {
          goto LABEL_23;
        }

        v14 = [(AKToolsListViewController *)self _buttonViewForLoupe];
      }

      else
      {
        v11 = [v6 dequeueReusableCellWithIdentifier:@"AKShapesRowIdentifier"];
        [v11 setAccessibilityIdentifier:@"shapes-cell"];
        v17 = [v11 contentView];
        v18 = [v17 viewWithTag:1000];

        if (v18)
        {
          goto LABEL_23;
        }

        v14 = [(AKToolsListViewController *)self _buttonViewForShapes];
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      v11 = [v6 dequeueReusableCellWithIdentifier:@"AKTextRowIdentifier" forIndexPath:v7];
      [v11 setAccessibilityIdentifier:@"text-cell"];
      v19 = [v11 contentView];
      v20 = [v19 viewWithTag:1000];

      if (v20)
      {
        goto LABEL_23;
      }

      v14 = [(AKToolsListViewController *)self _buttonViewForText];
      goto LABEL_22;
    }

    if (v10 == 1)
    {
      v11 = [v6 dequeueReusableCellWithIdentifier:@"AKSignatureRowIdentifier"];
      [v11 setAccessibilityIdentifier:@"signature-cell"];
      v12 = [v11 contentView];
      v13 = [v12 viewWithTag:1000];

      if (!v13)
      {
        v14 = [(AKToolsListViewController *)self _buttonViewForSignature];
LABEL_22:
        v26 = v14;
        v27 = [v11 contentView];
        [(AKToolsListViewController *)self addRowView:v26 toCellView:v27];
      }
    }
  }

LABEL_23:
  v28 = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:v28];

  return v11;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  if (v6 == [(AKToolsListViewController *)self _shapesCellIndexRow])
  {
    v7 = 52.0;
  }

  else
  {
    v8 = [v5 row];
    v7 = 12.0;
    if (v8 != [(AKToolsListViewController *)self _topPaddingCellIndexRow])
    {
      v9 = [v5 row];
      if (v9 == [(AKToolsListViewController *)self _bottomPaddingCellIndexRow])
      {
        v7 = 12.0;
      }

      else
      {
        v7 = 44.0;
      }
    }
  }

  return v7;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  if (v6 == -[AKToolsListViewController _shapesCellIndexRow](self, "_shapesCellIndexRow") || (v7 = [v5 row], v7 == -[AKToolsListViewController _topPaddingCellIndexRow](self, "_topPaddingCellIndexRow")))
  {
    v8 = 0;
  }

  else
  {
    v9 = [v5 row];
    v8 = v9 != [(AKToolsListViewController *)self _bottomPaddingCellIndexRow];
  }

  return v8;
}

- (id)_buttonViewForImageDescription
{
  v3 = sub_23F42C478(@"quote.bubble");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Description" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:v6];

  return v7;
}

- (id)_buttonViewForText
{
  v3 = sub_23F42C478(@"textbox");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Text" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:v6];

  return v7;
}

- (id)_buttonViewForSignature
{
  v3 = sub_23F42C478(@"signature");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:v6];

  return v7;
}

- (id)_buttonViewForLoupe
{
  v3 = sub_23F42C478(@"a.magnify");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Magnifier" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  v6 = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:v6];

  return v7;
}

- (id)_buttonViewForShapes
{
  v3 = [AKShapesPicker alloc];
  v4 = [(AKShapesPicker *)v3 initWithFrame:0 shapeTags:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKShapesPicker *)v4 addTarget:self action:sel__shapeButtonPressed_ forControlEvents:4096];

  return v4;
}

- (id)_buttonViewForOpacity
{
  v3 = sub_23F42C478(@"square.and.line.vertical.and.square.fill");
  v4 = [v3 imageWithRenderingMode:2];

  v5 = +[AKController akBundle];
  v6 = [v5 localizedStringForKey:@"Opacity" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v4 title:v6 tintColor:0];

  return v7;
}

- (void)addRowView:(id)a3 toCellView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTag:1000];
  [v5 ak_addSubview:v6 withEdgeInsets:{0.0, 16.0, 0.0, -16.0}];
}

- (id)_buttonViewWithImage:(id)a3 title:(id)a4 tintColor:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D755E8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithImage:v10];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentMode:4];
  [v11 setTintColor:v8];

  LODWORD(v12) = 1144750080;
  [v11 setContentHuggingPriority:0 forAxis:v12];
  v13 = objc_alloc(MEMORY[0x277D756B8]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setText:v9];

  LODWORD(v15) = 1132068864;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  v16 = objc_alloc(MEMORY[0x277D75A68]);
  v22[0] = v11;
  v22[1] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 initWithArrangedSubviews:v17];

  [v18 setDistribution:0];
  [v18 setSpacing:11.0];
  v19 = [v11 widthAnchor];
  v20 = [v19 constraintEqualToConstant:36.0];
  [v20 setActive:1];

  return v18;
}

- (void)_reloadCellItemTypes
{
  v12 = [objc_opt_class() defaultCellItemTypes];
  v3 = [(AKToolsListViewController *)self supportsImageDescriptionEditing];
  v4 = [(AKToolsListViewController *)self supportsOpacityEditing];
  v5 = [(AKToolsListViewController *)self isDeviceLocked];
  v6 = v5;
  if (!v3 && !v4 && !v5)
  {
    v7 = v12;
    goto LABEL_10;
  }

  v8 = [v12 mutableCopy];
  v9 = v8;
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

LABEL_14:
    [v9 insertObject:&unk_2851BB400 atIndex:{objc_msgSend(v12, "count") - 2}];
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v8 insertObject:&unk_2851BB3E8 atIndex:1];
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6)
  {
LABEL_8:
    [v9 removeObject:&unk_2851BB388];
  }

LABEL_9:
  v10 = [v9 copy];

  v7 = v10;
LABEL_10:
  v13 = v7;
  [(AKToolsListViewController *)self setCellItemTypes:v7];
  v11 = [(AKToolsListViewController *)self tableView];
  [v11 reloadData];
}

- (int64_t)_shapesCellIndexRow
{
  v2 = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [v2 indexOfObject:&unk_2851BB3B8];

  return v3;
}

- (int64_t)_topPaddingCellIndexRow
{
  v2 = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [v2 indexOfObject:&unk_2851BB358];

  return v3;
}

- (int64_t)_bottomPaddingCellIndexRow
{
  v2 = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [v2 indexOfObject:&unk_2851BB3D0];

  return v3;
}

- (void)setSupportsOpacityEditing:(BOOL)a3
{
  if (self->_supportsOpacityEditing != a3)
  {
    self->_supportsOpacityEditing = a3;
    [(AKToolsListViewController *)self _reloadCellItemTypes];
  }
}

- (void)setSupportsImageDescriptionEditing:(BOOL)a3
{
  if (self->_supportsImageDescriptionEditing != a3)
  {
    self->_supportsImageDescriptionEditing = a3;
    [(AKToolsListViewController *)self _reloadCellItemTypes];
  }
}

- (AKToolsListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end