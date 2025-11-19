@interface AKTextAttributesViewController
+ (id)fontSizeNumberFormatter;
- (AKController)controller;
- (AKTextAttributesViewController)initWithController:(id)a3;
- (BOOL)validateUserInterfaceItems;
- (id)convertFont:(id)a3;
- (id)convertTextAttributes:(id)a3;
- (id)createRowAlignmentCell;
- (id)createRowFontSizeCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_alignmentSegmentChanged:(id)a3;
- (void)_commonInit;
- (void)_sendFontAction;
- (void)_sendTextAttributesAction;
- (void)_sizeStepperValueChanged:(id)a3;
- (void)_styleSegmentChanged:(id)a3;
- (void)didSelectFont:(id)a3;
- (void)syncFontsToUI:(id)a3;
- (void)syncTextAttributesToUI:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation AKTextAttributesViewController

- (AKTextAttributesViewController)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKTextAttributesViewController;
  v5 = [(AKTextAttributesViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKTextAttributesViewController *)v5 setController:v4];
    v7 = [[AKFontListController alloc] initWithController:v4];
    [(AKTextAttributesViewController *)v6 setPresetFontController:v7];

    [(AKTextAttributesViewController *)v6 _commonInit];
  }

  return v6;
}

- (void)_commonInit
{
  v3 = [(AKTextAttributesViewController *)self presetFontController];
  v4 = [v3 fonts];
  -[AKTextAttributesViewController setPreferredContentSize:](self, "setPreferredContentSize:", 247.0, (44 * [v4 count] + 88));

  v5 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v6 = [v5 familyName];
  [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v6];

  [(AKTextAttributesViewController *)self setCurrentFontSize:&unk_2851BB8E0];
  v7 = [MEMORY[0x277D75348] blackColor];
  [(AKTextAttributesViewController *)self setCurrentFontColor:v7];

  v8 = objc_opt_new();
  [(AKTextAttributesViewController *)self setFontUIItemDelegate:v8];

  v9 = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  [v9 setParentController:self];

  v10 = objc_opt_new();
  [(AKTextAttributesViewController *)self setTextAttributesUIItemDelegate:v10];

  v11 = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  [v11 setParentController:self];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = AKTextAttributesViewController;
  [(AKTextAttributesViewController *)&v19 viewDidLoad];
  v3 = [(AKTextAttributesViewController *)self tableView];
  [v3 setAlwaysBounceVertical:0];

  v4 = [(AKTextAttributesViewController *)self tableView];
  [v4 setRowHeight:44.0];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(AKTextAttributesViewController *)self tableView];
  [v6 setBackgroundColor:v5];

  v7 = [(AKTextAttributesViewController *)self tableView];
  v8 = MEMORY[0x277CCAA70];
  v9 = [(AKTextAttributesViewController *)self presetFontController];
  v10 = [v9 fonts];
  v11 = [v8 indexPathForRow:objc_msgSend(v10 inSection:{"count"), 0}];
  v12 = [(AKTextAttributesViewController *)self tableView:v7 cellForRowAtIndexPath:v11];

  v13 = [(AKTextAttributesViewController *)self tableView];
  v14 = MEMORY[0x277CCAA70];
  v15 = [(AKTextAttributesViewController *)self presetFontController];
  v16 = [v15 fonts];
  v17 = [v14 indexPathForRow:objc_msgSend(v16 inSection:{"count") + 1, 0}];
  v18 = [(AKTextAttributesViewController *)self tableView:v13 cellForRowAtIndexPath:v17];

  [(AKTextAttributesViewController *)self validateUserInterfaceItems];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AKTextAttributesViewController *)self presetFontController:a3];
  v5 = [v4 fonts];
  v6 = [v5 count];

  return v6 + 2;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [(AKTextAttributesViewController *)self presetFontController];
  v10 = [v9 fonts];
  v11 = [v10 count];

  if (v8 == v11)
  {
    v12 = [(AKTextAttributesViewController *)self createRowFontSizeCell];
  }

  else
  {
    v13 = [v7 row];
    v14 = [(AKTextAttributesViewController *)self presetFontController];
    v15 = [v14 fonts];
    v16 = [v15 count] + 1;

    if (v13 == v16)
    {
      v12 = [(AKTextAttributesViewController *)self createRowAlignmentCell];
      [v12 setSeparatorStyle:0];
    }

    else
    {
      v17 = [(AKTextAttributesViewController *)self presetFontController];
      v18 = [v17 fonts];
      v19 = [v18 objectAtIndex:{objc_msgSend(v7, "row")}];

      v12 = [v6 dequeueReusableCellWithIdentifier:@"AKTextAttributesFontRowIdentifier"];
      if (!v12)
      {
        v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"AKTextAttributesFontRowIdentifier"];
      }

      v20 = [AKFontListController attributedStringForFont:v19];
      v21 = [v12 textLabel];
      [v21 setAttributedText:v20];

      v22 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
      v23 = [v22 imageWithRenderingMode:2];

      v24 = [v12 imageView];
      [v24 setImage:v23];

      v25 = [MEMORY[0x277D75348] systemBlueColor];
      v26 = [v12 imageView];
      [v26 setTintColor:v25];

      v32 = 1;
      if (v19)
      {
        v27 = [(AKTextAttributesViewController *)self currentFontFamilyName];
        if (v27)
        {
          v28 = v27;
          v29 = [v19 familyName];
          v30 = [(AKTextAttributesViewController *)self currentFontFamilyName];
          v31 = [v29 containsString:v30];

          if (v31)
          {
            v32 = 0;
          }
        }
      }

      v33 = [v12 imageView];
      [v33 setHidden:v32];
    }
  }

  v34 = [MEMORY[0x277D75348] clearColor];
  [v12 setBackgroundColor:v34];

  return v12;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v20 = a4;
  v7 = a5;
  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  [v20 setSeparatorInset:{*MEMORY[0x277D768C8], v9, v10, v11}];
  [v20 setPreservesSuperviewLayoutMargins:0];
  [v20 setLayoutMargins:{v8, v9, v10, v11}];
  v12 = [v7 row];
  v13 = [(AKTextAttributesViewController *)self presetFontController];
  v14 = [v13 fonts];
  v15 = [v14 count] - 1;

  if (v12 < v15)
  {
    [v20 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];
  }

  v16 = [v7 row];
  v17 = [(AKTextAttributesViewController *)self presetFontController];
  v18 = [v17 fonts];
  v19 = [v18 count] + 1;

  if (v16 == v19)
  {
    [v20 setSeparatorStyle:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = [(AKTextAttributesViewController *)self presetFontController];
  v9 = [v8 fonts];
  v10 = [v9 count];

  if (v7 < v10)
  {
    [v23 deselectRowAtIndexPath:v6 animated:1];
    v11 = [(AKTextAttributesViewController *)self presetFontController];
    v12 = [v11 fonts];
    v13 = [v12 objectAtIndex:{objc_msgSend(v6, "row")}];

    [(AKTextAttributesViewController *)self didSelectFont:v13];
    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [(AKTextAttributesViewController *)self presetFontController];
    v16 = [v15 fonts];
    v17 = [v16 count];

    if (v17 >= 1)
    {
      v18 = 0;
      do
      {
        v19 = [MEMORY[0x277CCAA70] indexPathForRow:v18 inSection:0];
        [v14 addObject:v19];

        ++v18;
        v20 = [(AKTextAttributesViewController *)self presetFontController];
        v21 = [v20 fonts];
        v22 = [v21 count];
      }

      while (v18 < v22);
    }

    [v23 reloadRowsAtIndexPaths:v14 withRowAnimation:0];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [(AKTextAttributesViewController *)self presetFontController];
  v8 = [v7 fonts];
  if (v6 == [v8 count])
  {
  }

  else
  {
    v9 = [v5 row];
    v10 = [(AKTextAttributesViewController *)self presetFontController];
    v11 = [v10 fonts];
    v12 = [v11 count] + 1;

    v13 = v5;
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
  v3 = [(AKTextAttributesViewController *)self sizeTableCell];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"AKTextAttributesRowFontSizeIdentifier"];
    v5 = [AKFontSizePicker alloc];
    v6 = [v4 contentView];
    [v6 bounds];
    v7 = [(AKFontSizePicker *)v5 initWithFrame:3 style:?];

    [(AKFontSizePicker *)v7 setTag:1001];
    [(AKFontSizePicker *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(AKTextAttributesViewController *)self currentFontSize];
    [v8 doubleValue];
    [(AKFontSizePicker *)v7 setValue:?];

    [(AKFontSizePicker *)v7 addTarget:self action:sel__sizeStepperValueChanged_ forControlEvents:4096];
    v9 = [v4 contentView];
    [v9 addSubview:v7];

    [v4 setPreservesSuperviewLayoutMargins:1];
    [(AKFontSizePicker *)v7 setPreservesSuperviewLayoutMargins:1];
    v10 = [(AKTextAttributesViewController *)self controller];
    objc_initWeak(&location, v10);

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

  v16 = [(AKTextAttributesViewController *)self sizeTableCell];

  return v16;
}

- (id)createRowAlignmentCell
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = [(AKTextAttributesViewController *)self alignmentTableCell];

  if (!v3)
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
    v11 = [v4 contentView];
    [v11 addSubview:v10];

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

  v17 = [(AKTextAttributesViewController *)self alignmentTableCell];

  return v17;
}

- (void)_sizeStepperValueChanged:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  [a3 value];
  v13 = [v4 numberWithDouble:?];
  [(AKTextAttributesViewController *)self setCurrentFontSize:v13];
  v5 = [objc_opt_class() fontSizeNumberFormatter];
  v6 = [v5 stringFromNumber:v13];

  v7 = [(AKTextAttributesViewController *)self sizeTableCell];
  v8 = [v7 detailTextLabel];
  [v8 setText:v6];

  v9 = [(AKTextAttributesViewController *)self sizeTableCell];
  v10 = [v9 contentView];
  v11 = [v10 viewWithTag:1001];

  [v13 floatValue];
  [v11 setValue:v12];
  [(AKTextAttributesViewController *)self setLastActionID:3];
  [(AKTextAttributesViewController *)self setLastActionValue:v13];
  [(AKTextAttributesViewController *)self _sendFontAction];
}

- (void)_styleSegmentChanged:(id)a3
{
  v14 = a3;
  v4 = [v14 selectedSegment];
  v5 = [v14 segmentCount];
  v6 = [v14 selectedSegment] << 24;
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [v14 isSelectedForSegment:i];
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

  if (v4 > 1)
  {
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [(AKTextAttributesViewController *)self _sendTextAttributesAction];
    }
  }

  else
  {
    [(AKTextAttributesViewController *)self _sendFontAction];
    v11 = [(AKTextAttributesViewController *)self controller];
    v12 = [v11 actionController];
    v13 = [(AKTextAttributesViewController *)self fontUIItemDelegate];
    [v12 validateSender:v13];
  }
}

- (void)_alignmentSegmentChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 tagForSegment:{objc_msgSend(v4, "selectedSegment")}];

  [(AKTextAttributesViewController *)self setLastActionID:6];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [(AKTextAttributesViewController *)self setLastActionValue:v6];

  [(AKTextAttributesViewController *)self _sendTextAttributesAction];
}

- (void)_sendFontAction
{
  v6 = [(AKTextAttributesViewController *)self controller];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v6 actionController];
  v5 = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  [v3 sendAction:sel_performActionForSender_ to:v4 from:v5 forEvent:0];
}

- (void)_sendTextAttributesAction
{
  v6 = [(AKTextAttributesViewController *)self controller];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v6 actionController];
  v5 = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  [v3 sendAction:sel_performActionForSender_ to:v4 from:v5 forEvent:0];
}

- (BOOL)validateUserInterfaceItems
{
  v3 = [(AKTextAttributesViewController *)self controller];
  v4 = [v3 actionController];
  v5 = [(AKTextAttributesViewController *)self fontUIItemDelegate];
  v6 = [v4 validateSender:v5];

  v7 = [v3 actionController];
  v8 = [(AKTextAttributesViewController *)self textAttributesUIItemDelegate];
  LOBYTE(v5) = [v7 validateSender:v8];

  return v6 | v5;
}

- (void)didSelectFont:(id)a3
{
  v4 = a3;
  v5 = [v4 familyName];
  [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v5];

  [(AKTextAttributesViewController *)self setLastActionID:1];
  [(AKTextAttributesViewController *)self setLastActionValue:v4];

  [(AKTextAttributesViewController *)self _sendFontAction];
}

- (id)convertFont:(id)a3
{
  v4 = a3;
  v5 = [v4 fontDescriptor];
  v6 = [(AKTextAttributesViewController *)self lastActionID];
  v7 = 0;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = [(AKTextAttributesViewController *)self lastActionValue];
      [v16 doubleValue];
      v17 = [v4 fontWithSize:?];
      goto LABEL_18;
    }

    if (v6 != 4)
    {
      goto LABEL_19;
    }

    v11 = [(AKTextAttributesViewController *)self lastActionValue];
    v12 = [v11 integerValue];

    if (v12 >> 24)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = [v5 symbolicTraits];
    if ((v12 & (1 << SBYTE3(v12))) != 0)
    {
      v15 = v14 | v13;
    }

    else
    {
      v15 = v14 & ~v13;
    }

    v16 = [v5 fontDescriptorWithSymbolicTraits:v15];
  }

  else
  {
    if (v6 == 1)
    {
      v8 = [(AKTextAttributesViewController *)self lastActionValue];
      v9 = [v8 familyName];
      v10 = [v5 fontDescriptorWithFamily:v9];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_19;
      }

      v8 = [(AKTextAttributesViewController *)self lastActionValue];
      v9 = [v8 fontName];
      v10 = [v5 fontDescriptorWithFace:v9];
    }

    v16 = v10;
  }

  v17 = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
LABEL_18:
  v7 = v17;

LABEL_19:
  if (v7)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  v19 = v18;

  return v18;
}

- (void)syncFontsToUI:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB68] null];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v38;
    v11 = 0x277CCA000uLL;
    v36 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        if (v9 != v4)
        {
          v14 = [*(*(&v37 + 1) + 8 * i) familyName];
          v15 = v14;
          if (v9)
          {
            if (v9 != v14 && ([v9 isEqual:v14] & 1) == 0)
            {
              v16 = v4;
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
              v4 = v36;
            }
          }

          else
          {
            v9 = v14;
          }
        }

        if (v8 != v4)
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
              v28 = v4;

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

  if (v9 == v4)
  {
    v30 = +[AKController akBundle];
    v31 = [v30 localizedStringForKey:@"Multiple Fonts" value:&stru_28519E870 table:@"AKTextAttributesViewController_iOS"];
    v29 = self;
    [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v31];
  }

  else
  {
    v29 = self;
    [(AKTextAttributesViewController *)self setCurrentFontFamilyName:v9];
  }

  if (v8 != v4)
  {
    [(AKTextAttributesViewController *)v29 setCurrentFontSize:v8];
    v32 = [(AKTextAttributesViewController *)v29 sizeTableCell];
    v33 = [v32 contentView];
    v34 = [v33 viewWithTag:1001];

    [v8 doubleValue];
    [v34 setValue:?];
  }
}

- (id)convertTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(AKTextAttributesViewController *)self lastActionID];
  if (v5 == 4)
  {
    v12 = [(AKTextAttributesViewController *)self lastActionValue];
    v13 = [v12 integerValue];

    v14 = *MEMORY[0x277D741F0];
    v9 = [v4 objectForKey:*MEMORY[0x277D741F0]];
    v15 = *MEMORY[0x277D74150];
    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277D74150]];
    v16 = v13 & 4;
    v17 = v13 & 8;
    if (([v9 integerValue] == 1) == v16 >> 2)
    {
      v10 = 0;
    }

    else
    {
      if (v4)
      {
        v19 = [v4 mutableCopy];
      }

      else
      {
        v19 = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = v19;
      if (v16)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:1];
        [v10 setObject:v21 forKey:v14];
      }

      else
      {
        [v19 removeObjectForKey:v14];
      }
    }

    if (([v11 integerValue] == 1) == v17 >> 3)
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
      if (v4)
      {
        v22 = [v4 mutableCopy];
      }

      else
      {
        v22 = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = v22;
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v10 setObject:v26 forKey:v15];

    goto LABEL_36;
  }

  if (v5 == 5)
  {
    v9 = [(AKTextAttributesViewController *)self lastActionValue];
    v8 = *MEMORY[0x277D740C0];
    v11 = [v4 objectForKey:*MEMORY[0x277D740C0]];
    if (!v11)
    {
      v11 = [MEMORY[0x277D75348] blackColor];
    }

    if (([v11 akIsEqualToColor:v9] & 1) == 0)
    {
      if (v4)
      {
        v18 = [v4 mutableCopy];
      }

      else
      {
        v18 = [MEMORY[0x277CBEB38] dictionary];
      }

      v10 = v18;
      v20 = v9;
      goto LABEL_35;
    }

    v10 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (v5 != 6)
  {
    v10 = 0;
    goto LABEL_38;
  }

  v6 = [(AKTextAttributesViewController *)self lastActionValue];
  v7 = [v6 unsignedIntegerValue];

  v8 = *MEMORY[0x277D74118];
  v9 = [v4 objectForKey:*MEMORY[0x277D74118]];
  if (!v9)
  {
    v9 = [MEMORY[0x277D74248] defaultParagraphStyle];
  }

  if ([v9 alignment] != v7)
  {
    v11 = [v9 mutableCopy];
    [v11 setAlignment:v7];
    if (v4)
    {
      v18 = [v4 mutableCopy];
    }

    else
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
    }

    v10 = v18;
    v20 = v11;
LABEL_35:
    [v18 setObject:v20 forKey:v8];
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
    v23 = v4;
  }

  v24 = v23;

  return v23;
}

- (void)syncTextAttributesToUI:(id)a3
{
  v22 = self;
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB68] null];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
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
        v13 = [v12 objectForKey:{v10, v22}];
        if (!v13)
        {
          v13 = [MEMORY[0x277D74248] defaultParagraphStyle];
        }

        if (v8 != v4)
        {
          v25 = 0;
          [AKTextAnnotationAttributeHelper resolvedAlignmentAndDirection:v13 locale:0 alignment:&v25 direction:0];
          if (v8)
          {
            v14 = [v8 unsignedIntegerValue];
            if (v14 != v25)
            {
              v15 = v4;

              v8 = v15;
            }
          }

          else
          {
            v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
          }
        }

        if (v7 != v4)
        {
          v16 = [v12 objectForKey:v24];
          v17 = v16;
          if (v7)
          {
            if (v7 != v16 && ([v7 akIsEqualToColor:v16] & 1) == 0)
            {
              v18 = v4;

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

  v19 = [(AKTextAttributesViewController *)v22 alignmentTableCell];
  v20 = [v19 contentView];
  v21 = [v20 viewWithTag:1001];

  [v21 deselectAllSegments];
  if (v8 != v4)
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