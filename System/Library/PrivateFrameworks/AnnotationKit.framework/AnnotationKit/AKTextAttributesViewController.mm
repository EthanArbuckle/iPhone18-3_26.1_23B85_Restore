@interface AKTextAttributesViewController
+ (id)fontSizeNumberFormatter;
- (AKController)controller;
- (AKTextAttributesViewController)initWithController:(id)controller;
- (BOOL)validateUserInterfaceItems;
- (id)convertFont:(id)font;
- (id)convertTextAttributes:(id)attributes;
- (id)createRowAlignmentCell;
- (id)createRowFontSizeCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_alignmentSegmentChanged:(id)changed;
- (void)_commonInit;
- (void)_sendFontAction;
- (void)_sendTextAttributesAction;
- (void)_sizeStepperValueChanged:(id)changed;
- (void)_styleSegmentChanged:(id)changed;
- (void)didSelectFont:(id)font;
- (void)syncFontsToUI:(id)i;
- (void)syncTextAttributesToUI:(id)i;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AKTextAttributesViewController

- (AKTextAttributesViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AKTextAttributesViewController;
  v5 = [(AKTextAttributesViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKTextAttributesViewController *)v5 setController:controllerCopy];
    v7 = [[AKFontListController alloc] initWithController:controllerCopy];
    [(AKTextAttributesViewController *)v6 setPresetFontController:v7];

    [(AKTextAttributesViewController *)v6 _commonInit];
  }

  return v6;
}

- (void)_commonInit
{
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  -[AKTextAttributesViewController setPreferredContentSize:](self, "setPreferredContentSize:", 247.0, (44 * [fonts count] + 88));

  v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  familyName = [v5 familyName];
  [(AKTextAttributesViewController *)self setCurrentFontFamilyName:familyName];

  [(AKTextAttributesViewController *)self setCurrentFontSize:&unk_2851BB8E0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(AKTextAttributesViewController *)self setCurrentFontColor:blackColor];

  v8 = objc_opt_new();
  [(AKTextAttributesViewController *)self setFontUIItemDelegate:v8];

  fontUIItemDelegate = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  [fontUIItemDelegate setParentController:self];

  v10 = objc_opt_new();
  [(AKTextAttributesViewController *)self setTextAttributesUIItemDelegate:v10];

  textAttributesUIItemDelegate = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  [textAttributesUIItemDelegate setParentController:self];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = AKTextAttributesViewController;
  [(AKTextAttributesViewController *)&v19 viewDidLoad];
  tableView = [(AKTextAttributesViewController *)self tableView];
  [tableView setAlwaysBounceVertical:0];

  tableView2 = [(AKTextAttributesViewController *)self tableView];
  [tableView2 setRowHeight:44.0];

  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView3 = [(AKTextAttributesViewController *)self tableView];
  [tableView3 setBackgroundColor:clearColor];

  tableView4 = [(AKTextAttributesViewController *)self tableView];
  v8 = MEMORY[0x277CCAA70];
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  v11 = [v8 indexPathForRow:objc_msgSend(fonts inSection:{"count"), 0}];
  v12 = [(AKTextAttributesViewController *)self tableView:tableView4 cellForRowAtIndexPath:v11];

  tableView5 = [(AKTextAttributesViewController *)self tableView];
  v14 = MEMORY[0x277CCAA70];
  presetFontController2 = [(AKTextAttributesViewController *)self presetFontController];
  fonts2 = [presetFontController2 fonts];
  v17 = [v14 indexPathForRow:objc_msgSend(fonts2 inSection:{"count") + 1, 0}];
  v18 = [(AKTextAttributesViewController *)self tableView:tableView5 cellForRowAtIndexPath:v17];

  [(AKTextAttributesViewController *)self validateUserInterfaceItems];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AKTextAttributesViewController *)self presetFontController:view];
  fonts = [v4 fonts];
  v6 = [fonts count];

  return v6 + 2;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  v11 = [fonts count];

  if (v8 == v11)
  {
    createRowFontSizeCell = [(AKTextAttributesViewController *)self createRowFontSizeCell];
  }

  else
  {
    v13 = [pathCopy row];
    presetFontController2 = [(AKTextAttributesViewController *)self presetFontController];
    fonts2 = [presetFontController2 fonts];
    v16 = [fonts2 count] + 1;

    if (v13 == v16)
    {
      createRowFontSizeCell = [(AKTextAttributesViewController *)self createRowAlignmentCell];
      [createRowFontSizeCell setSeparatorStyle:0];
    }

    else
    {
      presetFontController3 = [(AKTextAttributesViewController *)self presetFontController];
      fonts3 = [presetFontController3 fonts];
      v19 = [fonts3 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      createRowFontSizeCell = [viewCopy dequeueReusableCellWithIdentifier:@"AKTextAttributesFontRowIdentifier"];
      if (!createRowFontSizeCell)
      {
        createRowFontSizeCell = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"AKTextAttributesFontRowIdentifier"];
      }

      v20 = [AKFontListController attributedStringForFont:v19];
      textLabel = [createRowFontSizeCell textLabel];
      [textLabel setAttributedText:v20];

      v22 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
      v23 = [v22 imageWithRenderingMode:2];

      imageView = [createRowFontSizeCell imageView];
      [imageView setImage:v23];

      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      imageView2 = [createRowFontSizeCell imageView];
      [imageView2 setTintColor:systemBlueColor];

      v32 = 1;
      if (v19)
      {
        currentFontFamilyName = [(AKTextAttributesViewController *)self currentFontFamilyName];
        if (currentFontFamilyName)
        {
          v28 = currentFontFamilyName;
          familyName = [v19 familyName];
          currentFontFamilyName2 = [(AKTextAttributesViewController *)self currentFontFamilyName];
          v31 = [familyName containsString:currentFontFamilyName2];

          if (v31)
          {
            v32 = 0;
          }
        }
      }

      imageView3 = [createRowFontSizeCell imageView];
      [imageView3 setHidden:v32];
    }
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [createRowFontSizeCell setBackgroundColor:clearColor];

  return createRowFontSizeCell;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  [cellCopy setSeparatorInset:{*MEMORY[0x277D768C8], v9, v10, v11}];
  [cellCopy setPreservesSuperviewLayoutMargins:0];
  [cellCopy setLayoutMargins:{v8, v9, v10, v11}];
  v12 = [pathCopy row];
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  v15 = [fonts count] - 1;

  if (v12 < v15)
  {
    [cellCopy setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];
  }

  v16 = [pathCopy row];
  presetFontController2 = [(AKTextAttributesViewController *)self presetFontController];
  fonts2 = [presetFontController2 fonts];
  v19 = [fonts2 count] + 1;

  if (v16 == v19)
  {
    [cellCopy setSeparatorStyle:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  v10 = [fonts count];

  if (v7 < v10)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    presetFontController2 = [(AKTextAttributesViewController *)self presetFontController];
    fonts2 = [presetFontController2 fonts];
    v13 = [fonts2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(AKTextAttributesViewController *)self didSelectFont:v13];
    array = [MEMORY[0x277CBEB18] array];
    presetFontController3 = [(AKTextAttributesViewController *)self presetFontController];
    fonts3 = [presetFontController3 fonts];
    v17 = [fonts3 count];

    if (v17 >= 1)
    {
      v18 = 0;
      do
      {
        v19 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:0];
        [array addObject:v19];

        ++v18;
        presetFontController4 = [(AKTextAttributesViewController *)self presetFontController];
        fonts4 = [presetFontController4 fonts];
        v22 = [fonts4 count];
      }

      while (v18 < v22);
    }

    [viewCopy reloadRowsAtIndexPaths:array withRowAnimation:0];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  presetFontController = [(AKTextAttributesViewController *)self presetFontController];
  fonts = [presetFontController fonts];
  if (v6 == [fonts count])
  {
  }

  else
  {
    v9 = [pathCopy row];
    presetFontController2 = [(AKTextAttributesViewController *)self presetFontController];
    fonts2 = [presetFontController2 fonts];
    v12 = [fonts2 count] + 1;

    v13 = pathCopy;
    if (v9 != v12)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (id)createRowFontSizeCell
{
  sizeTableCell = [(AKTextAttributesViewController *)self sizeTableCell];

  if (!sizeTableCell)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"AKTextAttributesRowFontSizeIdentifier"];
    v5 = [AKFontSizePicker alloc];
    contentView = [v4 contentView];
    [contentView bounds];
    v7 = [(AKFontSizePicker *)v5 initWithFrame:3 style:?];

    [(AKFontSizePicker *)v7 setTag:1001];
    [(AKFontSizePicker *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    currentFontSize = [(AKTextAttributesViewController *)self currentFontSize];
    [currentFontSize doubleValue];
    [(AKFontSizePicker *)v7 setValue:?];

    [(AKFontSizePicker *)v7 addTarget:self action:sel__sizeStepperValueChanged_ forControlEvents:4096];
    contentView2 = [v4 contentView];
    [contentView2 addSubview:v7];

    [v4 setPreservesSuperviewLayoutMargins:1];
    [(AKFontSizePicker *)v7 setPreservesSuperviewLayoutMargins:1];
    controller = [(AKTextAttributesViewController *)self controller];
    objc_initWeak(&location, controller);

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_23F4B1208;
    v23[3] = &unk_278C7B8F8;
    objc_copyWeak(&v24, &location);
    [(AKFontSizePicker *)v7 setWillBeginTrackingUpdates:v23];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_23F4B1270;
    v21 = &unk_278C7B8F8;
    objc_copyWeak(&v22, &location);
    [(AKFontSizePicker *)v7 setDidEndTrackingUpdates:&v18];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Sizepicker.isa, v7, 0, v18, v19, v20, v21);
    v12 = MEMORY[0x277CCAAD0];
    v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[sizePicker]|" options:0 metrics:0 views:v11];
    [v12 activateConstraints:v13];

    v14 = MEMORY[0x277CCAAD0];
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[sizePicker]-(1)-|" options:0 metrics:0 views:v11];
    [v14 activateConstraints:v15];

    [(AKTextAttributesViewController *)self setSizeTableCell:v4];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  sizeTableCell2 = [(AKTextAttributesViewController *)self sizeTableCell];

  return sizeTableCell2;
}

- (id)createRowAlignmentCell
{
  v20[4] = *MEMORY[0x277D85DE8];
  alignmentTableCell = [(AKTextAttributesViewController *)self alignmentTableCell];

  if (!alignmentTableCell)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"AKTextAttributesRowAlignmentIdentifier"];
    [v4 setAccessoryType:0];
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"text.alignleft"];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"text.aligncenter"];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"text.alignright"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"text.justify"];
    v8 = [AKSegmentedCtrl alloc];
    v20[0] = v19;
    v20[1] = v5;
    v20[2] = v6;
    v20[3] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    v10 = [(AKSegmentedCtrl *)v8 initWithImages:v9];

    [(AKSegmentedCtrl *)v10 addTarget:self action:sel__alignmentSegmentChanged_ forControlEvents:4096];
    [(AKSegmentedCtrl *)v10 setSelectionType:0];
    [(AKSegmentedCtrl *)v10 setTag:1001];
    [(AKSegmentedCtrl *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [v4 contentView];
    [contentView addSubview:v10];

    [(AKSegmentedCtrl *)v10 setTag:0 forSegment:0];
    [(AKSegmentedCtrl *)v10 setTag:1 forSegment:1];
    [(AKSegmentedCtrl *)v10 setTag:2 forSegment:2];
    [(AKSegmentedCtrl *)v10 setTag:3 forSegment:3];
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Segmentedcontr.isa, v10, 0);
    v13 = MEMORY[0x277CCAAD0];
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[segmentedControl]|" options:0 metrics:0 views:v12];
    [v13 activateConstraints:v14];

    v15 = MEMORY[0x277CCAAD0];
    v16 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[segmentedControl]|" options:0 metrics:0 views:v12];
    [v15 activateConstraints:v16];

    [(AKTextAttributesViewController *)self setAlignmentTableCell:v4];
  }

  alignmentTableCell2 = [(AKTextAttributesViewController *)self alignmentTableCell];

  return alignmentTableCell2;
}

- (void)_sizeStepperValueChanged:(id)changed
{
  v4 = MEMORY[0x277CCABB0];
  [changed value];
  v13 = [v4 numberWithDouble:?];
  [(AKTextAttributesViewController *)self setCurrentFontSize:v13];
  fontSizeNumberFormatter = [objc_opt_class() fontSizeNumberFormatter];
  v6 = [fontSizeNumberFormatter stringFromNumber:v13];

  sizeTableCell = [(AKTextAttributesViewController *)self sizeTableCell];
  detailTextLabel = [sizeTableCell detailTextLabel];
  [detailTextLabel setText:v6];

  sizeTableCell2 = [(AKTextAttributesViewController *)self sizeTableCell];
  contentView = [sizeTableCell2 contentView];
  v11 = [contentView viewWithTag:1001];

  [v13 floatValue];
  [v11 setValue:v12];
  [(AKTextAttributesViewController *)self setLastActionID:3];
  [(AKTextAttributesViewController *)self setLastActionValue:v13];
  [(AKTextAttributesViewController *)self _sendFontAction];
}

- (void)_styleSegmentChanged:(id)changed
{
  changedCopy = changed;
  selectedSegment = [changedCopy selectedSegment];
  segmentCount = [changedCopy segmentCount];
  v6 = [changedCopy selectedSegment] << 24;
  if (segmentCount >= 1)
  {
    for (i = 0; i != segmentCount; ++i)
    {
      v8 = [changedCopy isSelectedForSegment:i];
      v9 = 1 << i;
      if (!v8)
      {
        v9 = 0;
      }

      v6 |= v9;
    }
  }

  [(AKTextAttributesViewController *)self setLastActionID:4];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [(AKTextAttributesViewController *)self setLastActionValue:v10];

  if (selectedSegment > 1)
  {
    if ((selectedSegment & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(AKTextAttributesViewController *)self _sendTextAttributesAction];
    }
  }

  else
  {
    [(AKTextAttributesViewController *)self _sendFontAction];
    controller = [(AKTextAttributesViewController *)self controller];
    actionController = [controller actionController];
    fontUIItemDelegate = [(AKTextAttributesViewController *)self fontUIItemDelegate];
    [actionController validateSender:fontUIItemDelegate];
  }
}

- (void)_alignmentSegmentChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy tagForSegment:{objc_msgSend(changedCopy, "selectedSegment")}];

  [(AKTextAttributesViewController *)self setLastActionID:6];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [(AKTextAttributesViewController *)self setLastActionValue:v6];

  [(AKTextAttributesViewController *)self _sendTextAttributesAction];
}

- (void)_sendFontAction
{
  controller = [(AKTextAttributesViewController *)self controller];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  actionController = [controller actionController];
  fontUIItemDelegate = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  [mEMORY[0x277D75128] sendAction:sel_performActionForSender_ to:actionController from:fontUIItemDelegate forEvent:0];
}

- (void)_sendTextAttributesAction
{
  controller = [(AKTextAttributesViewController *)self controller];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  actionController = [controller actionController];
  textAttributesUIItemDelegate = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  [mEMORY[0x277D75128] sendAction:sel_performActionForSender_ to:actionController from:textAttributesUIItemDelegate forEvent:0];
}

- (BOOL)validateUserInterfaceItems
{
  controller = [(AKTextAttributesViewController *)self controller];
  actionController = [controller actionController];
  fontUIItemDelegate = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  v6 = [actionController validateSender:fontUIItemDelegate];

  actionController2 = [controller actionController];
  textAttributesUIItemDelegate = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  LOBYTE(fontUIItemDelegate) = [actionController2 validateSender:textAttributesUIItemDelegate];

  return v6 | fontUIItemDelegate;
}

- (void)didSelectFont:(id)font
{
  fontCopy = font;
  familyName = [fontCopy familyName];
  [(AKTextAttributesViewController *)self setCurrentFontFamilyName:familyName];

  [(AKTextAttributesViewController *)self setLastActionID:1];
  [(AKTextAttributesViewController *)self setLastActionValue:fontCopy];

  [(AKTextAttributesViewController *)self _sendFontAction];
}

- (id)convertFont:(id)font
{
  fontCopy = font;
  fontDescriptor = [fontCopy fontDescriptor];
  lastActionID = [(AKTextAttributesViewController *)self lastActionID];
  v7 = 0;
  if (lastActionID > 2)
  {
    if (lastActionID == 3)
    {
      lastActionValue = [(AKTextAttributesViewController *)self lastActionValue];
      [lastActionValue doubleValue];
      v17 = [fontCopy fontWithSize:?];
      goto LABEL_18;
    }

    if (lastActionID != 4)
    {
      goto LABEL_19;
    }

    lastActionValue2 = [(AKTextAttributesViewController *)self lastActionValue];
    integerValue = [lastActionValue2 integerValue];

    if (integerValue >> 24)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    symbolicTraits = [fontDescriptor symbolicTraits];
    if ((integerValue & (1 << SBYTE3(integerValue))) != 0)
    {
      v15 = symbolicTraits | v13;
    }

    else
    {
      v15 = symbolicTraits & ~v13;
    }

    lastActionValue = [fontDescriptor fontDescriptorWithSymbolicTraits:v15];
  }

  else
  {
    if (lastActionID == 1)
    {
      lastActionValue3 = [(AKTextAttributesViewController *)self lastActionValue];
      familyName = [lastActionValue3 familyName];
      v10 = [fontDescriptor fontDescriptorWithFamily:familyName];
    }

    else
    {
      if (lastActionID != 2)
      {
        goto LABEL_19;
      }

      lastActionValue3 = [(AKTextAttributesViewController *)self lastActionValue];
      familyName = [lastActionValue3 fontName];
      v10 = [fontDescriptor fontDescriptorWithFace:familyName];
    }

    lastActionValue = v10;
  }

  v17 = [MEMORY[0x277D74300] fontWithDescriptor:lastActionValue size:0.0];
LABEL_18:
  v7 = v17;

LABEL_19:
  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = fontCopy;
  }

  v19 = v18;

  return v18;
}

- (void)syncFontsToUI:(id)i
{
  v42 = *MEMORY[0x277D85DE8];
  iCopy = i;
  null = [MEMORY[0x277CBEB68] null];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = iCopy;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v38;
    v11 = 0x277CCA000uLL;
    v36 = null;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        if (v9 != null)
        {
          familyName = [*(*(&v37 + 1) + 8 * i) familyName];
          v15 = familyName;
          if (v9)
          {
            if (v9 != familyName && ([v9 isEqual:familyName] & 1) == 0)
            {
              v16 = null;
              v17 = v7;
              v18 = v10;
              v19 = v5;
              v20 = v11;
              v21 = v16;

              v9 = v21;
              v11 = v20;
              v5 = v19;
              v10 = v18;
              v7 = v17;
              null = v36;
            }
          }

          else
          {
            v9 = familyName;
          }
        }

        if (v8 != null)
        {
          v22 = *(v11 + 2992);
          [v13 pointSize];
          v23 = [v22 numberWithDouble:?];
          v24 = v23;
          if (v8)
          {
            [v8 doubleValue];
            v26 = v25;
            [v24 doubleValue];
            if (vabdd_f64(v26, v27) >= 0.0005)
            {
              v28 = null;

              v8 = v28;
            }
          }

          else
          {
            v8 = v23;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v9 == null)
  {
    v30 = +[AKController akBundle];
    v31 = [v30 localizedStringForKey:@"Multiple Fonts" value:&stru_28519E870 table:@"AKTextAttributesViewController_iOS"];
    selfCopy2 = self;
    [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v31];
  }

  else
  {
    selfCopy2 = self;
    [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v9];
  }

  if (v8 != null)
  {
    [(AKTextAttributesViewController *)selfCopy2 setCurrentFontSize:v8];
    sizeTableCell = [(AKTextAttributesViewController *)selfCopy2 sizeTableCell];
    contentView = [sizeTableCell contentView];
    v34 = [contentView viewWithTag:1001];

    [v8 doubleValue];
    [v34 setValue:?];
  }
}

- (id)convertTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  lastActionID = [(AKTextAttributesViewController *)self lastActionID];
  if (lastActionID == 4)
  {
    lastActionValue = [(AKTextAttributesViewController *)self lastActionValue];
    integerValue = [lastActionValue integerValue];

    v14 = *MEMORY[0x277D741F0];
    lastActionValue2 = [attributesCopy objectForKey:*MEMORY[0x277D741F0]];
    v15 = *MEMORY[0x277D74150];
    blackColor = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D74150]];
    v16 = integerValue & 4;
    v17 = integerValue & 8;
    if (([lastActionValue2 integerValue] == 1) == v16 >> 2)
    {
      v10 = 0;
    }

    else
    {
      if (attributesCopy)
      {
        dictionary = [attributesCopy mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = dictionary;
      if (v16)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        [v10 setObject:v21 forKey:v14];
      }

      else
      {
        [dictionary removeObjectForKey:v14];
      }
    }

    if (([blackColor integerValue] == 1) == v17 >> 3)
    {
      goto LABEL_36;
    }

    if (v10)
    {
      if (!v17)
      {
LABEL_30:
        [v10 removeObjectForKey:v15];
        goto LABEL_36;
      }
    }

    else
    {
      if (attributesCopy)
      {
        dictionary2 = [attributesCopy mutableCopy];
      }

      else
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = dictionary2;
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v10 setObject:v26 forKey:v15];

    goto LABEL_36;
  }

  if (lastActionID == 5)
  {
    lastActionValue2 = [(AKTextAttributesViewController *)self lastActionValue];
    v8 = *MEMORY[0x277D740C0];
    blackColor = [attributesCopy objectForKey:*MEMORY[0x277D740C0]];
    if (!blackColor)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    if (([blackColor akIsEqualToColor:lastActionValue2] & 1) == 0)
    {
      if (attributesCopy)
      {
        dictionary3 = [attributesCopy mutableCopy];
      }

      else
      {
        dictionary3 = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = dictionary3;
      v20 = lastActionValue2;
      goto LABEL_35;
    }

    v10 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (lastActionID != 6)
  {
    v10 = 0;
    goto LABEL_38;
  }

  lastActionValue3 = [(AKTextAttributesViewController *)self lastActionValue];
  unsignedIntegerValue = [lastActionValue3 unsignedIntegerValue];

  v8 = *MEMORY[0x277D74118];
  lastActionValue2 = [attributesCopy objectForKey:*MEMORY[0x277D74118]];
  if (!lastActionValue2)
  {
    lastActionValue2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  if ([lastActionValue2 alignment] != unsignedIntegerValue)
  {
    blackColor = [lastActionValue2 mutableCopy];
    [blackColor setAlignment:unsignedIntegerValue];
    if (attributesCopy)
    {
      dictionary3 = [attributesCopy mutableCopy];
    }

    else
    {
      dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    }

    v10 = dictionary3;
    v20 = blackColor;
LABEL_35:
    [dictionary3 setObject:v20 forKey:v8];
    goto LABEL_36;
  }

  v10 = 0;
LABEL_37:

LABEL_38:
  if (v10)
  {
    v23 = v10;
  }

  else
  {
    v23 = attributesCopy;
  }

  v24 = v23;

  return v23;
}

- (void)syncTextAttributesToUI:(id)i
{
  selfCopy = self;
  v31 = *MEMORY[0x277D85DE8];
  iCopy = i;
  null = [MEMORY[0x277CBEB68] null];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = iCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v27;
    v10 = *MEMORY[0x277D74118];
    v24 = *MEMORY[0x277D740C0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        defaultParagraphStyle = [v12 objectForKey:{v10, selfCopy}];
        if (!defaultParagraphStyle)
        {
          defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
        }

        if (v8 != null)
        {
          v25 = 0;
          [AKTextAnnotationAttributeHelper resolvedAlignmentAndDirection:defaultParagraphStyle locale:0 alignment:&v25 direction:0];
          if (v8)
          {
            unsignedIntegerValue = [v8 unsignedIntegerValue];
            if (unsignedIntegerValue != v25)
            {
              v15 = null;

              v8 = v15;
            }
          }

          else
          {
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
          }
        }

        if (v7 != null)
        {
          v16 = [v12 objectForKey:v24];
          v17 = v16;
          if (v7)
          {
            if (v7 != v16 && ([v7 akIsEqualToColor:v16] & 1) == 0)
            {
              v18 = null;

              v7 = v18;
            }
          }

          else
          {
            v7 = v16;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  alignmentTableCell = [(AKTextAttributesViewController *)selfCopy alignmentTableCell];
  contentView = [alignmentTableCell contentView];
  v21 = [contentView viewWithTag:1001];

  [v21 deselectAllSegments];
  if (v8 != null)
  {
    [v21 selectSegmentWithTag:{objc_msgSend(v8, "unsignedIntegerValue")}];
  }
}

+ (id)fontSizeNumberFormatter
{
  if (qword_27E39B7E8 != -1)
  {
    sub_23F4BE138();
  }

  v3 = qword_27E39B7E0;

  return v3;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end