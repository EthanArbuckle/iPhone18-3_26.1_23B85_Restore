@interface AKToolsListViewController
- (AKToolsListViewController)initWithCoder:(id)coder;
- (AKToolsListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKToolsListViewControllerDelegate)delegate;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_buttonViewForImageDescription;
- (id)_buttonViewForLoupe;
- (id)_buttonViewForOpacity;
- (id)_buttonViewForShapes;
- (id)_buttonViewForSignature;
- (id)_buttonViewForText;
- (id)_buttonViewWithImage:(id)image title:(id)title tintColor:(id)color;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_bottomPaddingCellIndexRow;
- (int64_t)_shapesCellIndexRow;
- (int64_t)_topPaddingCellIndexRow;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_reloadCellItemTypes;
- (void)_shapeButtonPressed:(id)pressed;
- (void)_updateDeviceLocked;
- (void)addRowView:(id)view toCellView:(id)cellView;
- (void)setSupportsImageDescriptionEditing:(BOOL)editing;
- (void)setSupportsOpacityEditing:(BOOL)editing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKToolsListViewController

- (AKToolsListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = AKToolsListViewController;
  v4 = [(AKToolsListViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(AKToolsListViewController *)v6 _updateDeviceLocked];
    [(AKToolsListViewController *)v6 _reloadCellItemTypes];
  }

  return v5;
}

- (AKToolsListViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = AKToolsListViewController;
  v3 = [(AKToolsListViewController *)&v7 initWithCoder:coder];
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

  tableView = [(AKToolsListViewController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(AKToolsListViewController *)self tableView];
  [tableView2 setDataSource:self];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  tableView3 = [(AKToolsListViewController *)self tableView];
  [tableView3 setSeparatorInset:{v7, v8, v9, v10}];

  tableView4 = [(AKToolsListViewController *)self tableView];
  [tableView4 setSeparatorStyle:0];

  tableView5 = [(AKToolsListViewController *)self tableView];
  [tableView5 setAlwaysBounceVertical:0];

  tableView6 = [(AKToolsListViewController *)self tableView];
  [tableView6 setAlwaysBounceHorizontal:0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView7 = [(AKToolsListViewController *)self tableView];
  [tableView7 setBackgroundColor:clearColor];

  tableView8 = [(AKToolsListViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKImageDescriptionRowIdentifier"];

  tableView9 = [(AKToolsListViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKTextRowIdentifier"];

  tableView10 = [(AKToolsListViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKLoupeRowIdentifier"];

  tableView11 = [(AKToolsListViewController *)self tableView];
  [tableView11 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKSignatureRowIdentifier"];

  tableView12 = [(AKToolsListViewController *)self tableView];
  [tableView12 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKShapesRowIdentifier"];

  tableView13 = [(AKToolsListViewController *)self tableView];
  [tableView13 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKOpacityRowIdentifier"];

  tableView14 = [(AKToolsListViewController *)self tableView];
  [tableView14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AKPaddingRowIdentifier"];

  tableView15 = [(AKToolsListViewController *)self tableView];
  [tableView15 setAccessibilityIdentifier:@"shapes-picker-popover"];

  view = [(AKToolsListViewController *)self view];
  tableView16 = [(AKToolsListViewController *)self tableView];
  [view ak_addSubview:tableView16 withEdgeInsets:{v7, v8, v9, v10}];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = AKToolsListViewController;
  [(AKToolsListViewController *)&v10 viewWillAppear:appear];
  tableView = [(AKToolsListViewController *)self tableView];
  [tableView layoutIfNeeded];

  tableView2 = [(AKToolsListViewController *)self tableView];
  [tableView2 contentSize];
  v7 = v6;

  _buttonViewForShapes = [(AKToolsListViewController *)self _buttonViewForShapes];
  [_buttonViewForShapes sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
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

- (void)_shapeButtonPressed:(id)pressed
{
  currentTag = [pressed currentTag];
  delegate = [(AKToolsListViewController *)self delegate];
  if (currentTag != 763000)
  {
    v6 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v6 toolsList:self didSelectToolWithTag:currentTag];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  delegate = [(AKToolsListViewController *)self delegate];
  cellItemTypes = [(AKToolsListViewController *)self cellItemTypes];
  v8 = [pathCopy row];

  v9 = [cellItemTypes objectAtIndex:v8];
  integerValue = [v9 integerValue];

  if (integerValue <= 1)
  {
    if (!integerValue)
    {
      v13 = delegate;
      selfCopy2 = self;
      v12 = 764014;
      goto LABEL_13;
    }

    v11 = delegate;
    if (integerValue != 1)
    {
      goto LABEL_15;
    }

    v12 = 764019;
LABEL_10:
    v13 = delegate;
    selfCopy2 = self;
LABEL_13:
    [v13 toolsList:selfCopy2 didSelectToolWithTag:v12];
    goto LABEL_14;
  }

  if (integerValue == 2)
  {
    v12 = 764020;
    goto LABEL_10;
  }

  v11 = delegate;
  if (integerValue != 4)
  {
    if (integerValue != 5)
    {
      goto LABEL_15;
    }

    v12 = 764066;
    goto LABEL_10;
  }

  [delegate toolsListDidSelectOpacityItem:self];
LABEL_14:
  v11 = delegate;
LABEL_15:
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AKToolsListViewController *)self cellItemTypes:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  cellItemTypes = [(AKToolsListViewController *)self cellItemTypes];
  v9 = [cellItemTypes objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  integerValue = [v9 integerValue];

  v11 = 0;
  if (integerValue > 3)
  {
    if ((integerValue - 6) < 2)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKPaddingRowIdentifier"];
      goto LABEL_23;
    }

    if (integerValue == 4)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKOpacityRowIdentifier"];
      [v11 setAccessibilityIdentifier:@"opacity-cell"];
      _labelColor = [MEMORY[0x277D75348] _labelColor];
      [v11 setTintColor:_labelColor];

      contentView = [v11 contentView];
      v25 = [contentView viewWithTag:1000];

      if (v25)
      {
        goto LABEL_23;
      }

      _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForOpacity];
      goto LABEL_22;
    }

    if (integerValue == 5)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKImageDescriptionRowIdentifier" forIndexPath:pathCopy];
      [v11 setAccessibilityIdentifier:@"image-description-cell"];
      contentView2 = [v11 contentView];
      v16 = [contentView2 viewWithTag:1000];

      if (!v16)
      {
        _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForImageDescription];
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (integerValue > 1)
    {
      if (integerValue == 2)
      {
        v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKLoupeRowIdentifier"];
        [v11 setAccessibilityIdentifier:@"magnifier-cell"];
        contentView3 = [v11 contentView];
        v22 = [contentView3 viewWithTag:1000];

        if (v22)
        {
          goto LABEL_23;
        }

        _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForLoupe];
      }

      else
      {
        v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKShapesRowIdentifier"];
        [v11 setAccessibilityIdentifier:@"shapes-cell"];
        contentView4 = [v11 contentView];
        v18 = [contentView4 viewWithTag:1000];

        if (v18)
        {
          goto LABEL_23;
        }

        _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForShapes];
      }

      goto LABEL_22;
    }

    if (!integerValue)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKTextRowIdentifier" forIndexPath:pathCopy];
      [v11 setAccessibilityIdentifier:@"text-cell"];
      contentView5 = [v11 contentView];
      v20 = [contentView5 viewWithTag:1000];

      if (v20)
      {
        goto LABEL_23;
      }

      _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForText];
      goto LABEL_22;
    }

    if (integerValue == 1)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AKSignatureRowIdentifier"];
      [v11 setAccessibilityIdentifier:@"signature-cell"];
      contentView6 = [v11 contentView];
      v13 = [contentView6 viewWithTag:1000];

      if (!v13)
      {
        _buttonViewForOpacity = [(AKToolsListViewController *)self _buttonViewForSignature];
LABEL_22:
        v26 = _buttonViewForOpacity;
        contentView7 = [v11 contentView];
        [(AKToolsListViewController *)self addRowView:v26 toCellView:contentView7];
      }
    }
  }

LABEL_23:
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v11 setBackgroundColor:clearColor];

  return v11;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 == [(AKToolsListViewController *)self _shapesCellIndexRow])
  {
    v7 = 52.0;
  }

  else
  {
    v8 = [pathCopy row];
    v7 = 12.0;
    if (v8 != [(AKToolsListViewController *)self _topPaddingCellIndexRow])
    {
      v9 = [pathCopy row];
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 == -[AKToolsListViewController _shapesCellIndexRow](self, "_shapesCellIndexRow") || (v7 = [pathCopy row], v7 == -[AKToolsListViewController _topPaddingCellIndexRow](self, "_topPaddingCellIndexRow")))
  {
    v8 = 0;
  }

  else
  {
    v9 = [pathCopy row];
    v8 = v9 != [(AKToolsListViewController *)self _bottomPaddingCellIndexRow];
  }

  return v8;
}

- (id)_buttonViewForImageDescription
{
  v3 = sub_23F42C478(@"quote.bubble");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Description" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:labelColor];

  return v7;
}

- (id)_buttonViewForText
{
  v3 = sub_23F42C478(@"textbox");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Text" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:labelColor];

  return v7;
}

- (id)_buttonViewForSignature
{
  v3 = sub_23F42C478(@"signature");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Signature" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:labelColor];

  return v7;
}

- (id)_buttonViewForLoupe
{
  v3 = sub_23F42C478(@"a.magnify");
  v4 = +[AKController akBundle];
  v5 = [v4 localizedStringForKey:@"Magnifier" value:&stru_28519E870 table:@"AKToolbarViewController_iOS"];

  labelColor = [MEMORY[0x277D75348] labelColor];
  v7 = [(AKToolsListViewController *)self _buttonViewWithImage:v3 title:v5 tintColor:labelColor];

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

- (void)addRowView:(id)view toCellView:(id)cellView
{
  cellViewCopy = cellView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy setTag:1000];
  [cellViewCopy ak_addSubview:viewCopy withEdgeInsets:{0.0, 16.0, 0.0, -16.0}];
}

- (id)_buttonViewWithImage:(id)image title:(id)title tintColor:(id)color
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D755E8];
  colorCopy = color;
  titleCopy = title;
  imageCopy = image;
  v11 = [[v7 alloc] initWithImage:imageCopy];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setContentMode:4];
  [v11 setTintColor:colorCopy];

  LODWORD(v12) = 1144750080;
  [v11 setContentHuggingPriority:0 forAxis:v12];
  v13 = objc_alloc(MEMORY[0x277D756B8]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setText:titleCopy];

  LODWORD(v15) = 1132068864;
  [v14 setContentHuggingPriority:0 forAxis:v15];
  v16 = objc_alloc(MEMORY[0x277D75A68]);
  v22[0] = v11;
  v22[1] = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v18 = [v16 initWithArrangedSubviews:v17];

  [v18 setDistribution:0];
  [v18 setSpacing:11.0];
  widthAnchor = [v11 widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:36.0];
  [v20 setActive:1];

  return v18;
}

- (void)_reloadCellItemTypes
{
  defaultCellItemTypes = [objc_opt_class() defaultCellItemTypes];
  supportsImageDescriptionEditing = [(AKToolsListViewController *)self supportsImageDescriptionEditing];
  supportsOpacityEditing = [(AKToolsListViewController *)self supportsOpacityEditing];
  isDeviceLocked = [(AKToolsListViewController *)self isDeviceLocked];
  v6 = isDeviceLocked;
  if (!supportsImageDescriptionEditing && !supportsOpacityEditing && !isDeviceLocked)
  {
    v7 = defaultCellItemTypes;
    goto LABEL_10;
  }

  v8 = [defaultCellItemTypes mutableCopy];
  v9 = v8;
  if (!supportsImageDescriptionEditing)
  {
    if (!supportsOpacityEditing)
    {
      goto LABEL_7;
    }

LABEL_14:
    [v9 insertObject:&unk_2851BB400 atIndex:{objc_msgSend(defaultCellItemTypes, "count") - 2}];
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v8 insertObject:&unk_2851BB3E8 atIndex:1];
  if (supportsOpacityEditing)
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
  tableView = [(AKToolsListViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)_shapesCellIndexRow
{
  cellItemTypes = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [cellItemTypes indexOfObject:&unk_2851BB3B8];

  return v3;
}

- (int64_t)_topPaddingCellIndexRow
{
  cellItemTypes = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [cellItemTypes indexOfObject:&unk_2851BB358];

  return v3;
}

- (int64_t)_bottomPaddingCellIndexRow
{
  cellItemTypes = [(AKToolsListViewController *)self cellItemTypes];
  v3 = [cellItemTypes indexOfObject:&unk_2851BB3D0];

  return v3;
}

- (void)setSupportsOpacityEditing:(BOOL)editing
{
  if (self->_supportsOpacityEditing != editing)
  {
    self->_supportsOpacityEditing = editing;
    [(AKToolsListViewController *)self _reloadCellItemTypes];
  }
}

- (void)setSupportsImageDescriptionEditing:(BOOL)editing
{
  if (self->_supportsImageDescriptionEditing != editing)
  {
    self->_supportsImageDescriptionEditing = editing;
    [(AKToolsListViewController *)self _reloadCellItemTypes];
  }
}

- (AKToolsListViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end