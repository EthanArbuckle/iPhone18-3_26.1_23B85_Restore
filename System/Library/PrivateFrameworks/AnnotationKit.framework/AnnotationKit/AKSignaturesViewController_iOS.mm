@interface AKSignaturesViewController_iOS
- (AKController)controller;
- (AKSignaturesViewControllerDelegate)delegate;
- (AKSignaturesViewController_iOS)initWithController:(id)controller;
- (BOOL)becomeFirstResponder;
- (CGSize)preferredContentSize;
- (UIResponder)responderToRestore;
- (double)idealHeight;
- (id)_signatures;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelPicker:(id)picker;
- (void)_configureUI;
- (void)_continueToCreateSignature:(id)signature;
- (void)_deleteSignature:(id)signature;
- (void)_updateSignatureCellLayout;
- (void)signatureCreationControllerDidCreateSignature:(id)signature;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKSignaturesViewController_iOS

- (AKSignaturesViewController_iOS)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  v5 = [(AKSignaturesViewController_iOS *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKSignaturesViewController_iOS *)v5 setController:controllerCopy];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(AKSignaturesViewController_iOS *)v6 setTableBackgroundColor:systemBackgroundColor];

    [(AKSignaturesViewController_iOS *)v6 setAllowsEdits:0];
    [(AKSignaturesViewController_iOS *)v6 setShowsNavigationBar:0];
  }

  return v6;
}

- (CGSize)preferredContentSize
{
  presentedInAlert = [(AKSignaturesViewController_iOS *)self presentedInAlert];
  [(AKSignaturesViewController_iOS *)self idealHeight];
  v5 = v4;
  v6 = 540.0;
  if (presentedInAlert)
  {
    v6 = 0.0;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = AKSignaturesViewController_iOS;
  [(AKSignaturesViewController_iOS *)&v20 viewDidLoad];
  v3 = +[AKController akBundle];
  v4 = [v3 localizedStringForKey:@"Signatures" value:&stru_28519E870 table:@"AKSignaturesViewController_iOS"];
  [(AKSignaturesViewController_iOS *)self setTitle:v4];

  v5 = objc_alloc(MEMORY[0x277D75B40]);
  view = [(AKSignaturesViewController_iOS *)self view];
  [view bounds];
  v7 = [v5 initWithFrame:0 style:?];
  [(AKSignaturesViewController_iOS *)self setTableView:v7];

  tableView = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView2 = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView3 setDataSource:self];

  LODWORD(tableView3) = [(AKSignaturesViewController_iOS *)self presentedInAlert];
  tableView4 = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView4 setAlwaysBounceVertical:tableView3 ^ 1];

  tableView5 = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView5 setRowHeight:86.0];

  view2 = [(AKSignaturesViewController_iOS *)self view];
  tableView6 = [(AKSignaturesViewController_iOS *)self tableView];
  [view2 addSubview:tableView6];

  v15 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  view3 = [(AKSignaturesViewController_iOS *)self view];
  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v15];
  [view3 addConstraints:v17];

  view4 = [(AKSignaturesViewController_iOS *)self view];
  v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:v15 views:v15];
  [view4 addConstraints:v19];

  [(AKSignaturesViewController_iOS *)self _configureUI];
}

- (BOOL)becomeFirstResponder
{
  view = [(AKSignaturesViewController_iOS *)self view];
  window = [view window];
  firstResponder = [window firstResponder];

  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  becomeFirstResponder = [(AKSignaturesViewController_iOS *)&v9 becomeFirstResponder];
  if (becomeFirstResponder && firstResponder != self)
  {
    [(AKSignaturesViewController_iOS *)self setResponderToRestore:firstResponder];
  }

  return becomeFirstResponder;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AKSignaturesViewController_iOS;
  [(AKSignaturesViewController_iOS *)&v4 viewDidAppear:appear];
  if (([(AKSignaturesViewController_iOS *)self isFirstResponder]& 1) == 0)
  {
    [(AKSignaturesViewController_iOS *)self becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(AKSignaturesViewController_iOS *)self resignFirstResponder];
  responderToRestore = [(AKSignaturesViewController_iOS *)self responderToRestore];
  v6 = responderToRestore;
  if (responderToRestore)
  {
    [responderToRestore becomeFirstResponder];
  }

  [(AKSignaturesViewController_iOS *)self setResponderToRestore:0];
  v7.receiver = self;
  v7.super_class = AKSignaturesViewController_iOS;
  [(AKSignaturesViewController_iOS *)&v7 viewDidDisappear:disappearCopy];
}

- (double)idealHeight
{
  controller = [(AKSignaturesViewController_iOS *)self controller];
  signatureModelController = [controller signatureModelController];
  signatures = [signatureModelController signatures];
  v6 = [signatures count];

  if ([(AKSignaturesViewController_iOS *)self presentedInAlert])
  {
    v7 = 3;
    if (v6 < 3)
    {
      v7 = v6;
    }

    v8 = (86 * v7);
  }

  else if (v6 <= 6)
  {
    v9 = 4;
    if (v6 > 4)
    {
      v9 = v6;
    }

    v8 = (86 * v9);
  }

  else
  {
    v8 = 559.0;
  }

  v10 = v8 + -1.0;
  if ([(AKSignaturesViewController_iOS *)self showsNavigationBar])
  {
    navBar = [(AKSignaturesViewController_iOS *)self navBar];
    [navBar bounds];
    v10 = v10 + v12;
  }

  return v10;
}

- (void)_configureUI
{
  v34[1] = *MEMORY[0x277D85DE8];
  tableBackgroundColor = [(AKSignaturesViewController_iOS *)self tableBackgroundColor];
  view = [(AKSignaturesViewController_iOS *)self view];
  [view setBackgroundColor:tableBackgroundColor];

  tableBackgroundColor2 = [(AKSignaturesViewController_iOS *)self tableBackgroundColor];
  tableView = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView setBackgroundColor:tableBackgroundColor2];

  allowsEdits = [(AKSignaturesViewController_iOS *)self allowsEdits];
  tableView2 = [(AKSignaturesViewController_iOS *)self tableView];
  [tableView2 setEditing:allowsEdits];

  if ([(AKSignaturesViewController_iOS *)self showsNavigationBar])
  {
    v9 = objc_alloc(MEMORY[0x277D75780]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDelegate:self];
    view2 = [(AKSignaturesViewController_iOS *)self view];
    [view2 addSubview:v10];

    [(AKSignaturesViewController_iOS *)self setNavBar:v10];
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Navbar_0.isa, v10, 0);
    view3 = [(AKSignaturesViewController_iOS *)self view];
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[navBar]|" options:0 metrics:0 views:v12];
    [view3 addConstraints:v14];

    topAnchor = [v10 topAnchor];
    view4 = [(AKSignaturesViewController_iOS *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];

    if (_UISolariumEnabled())
    {
      [v19 setConstant:10.0];
    }

    [v19 setActive:1];
    v20 = objc_alloc(MEMORY[0x277D757A8]);
    title = [(AKSignaturesViewController_iOS *)self title];
    v22 = [v20 initWithTitle:title];

    v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:4 target:self action:sel__continueToCreateSignature_];
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__cancelPicker_];
    v34[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [(AKSignaturesViewController_iOS *)self setRightBarItems:v25];

    v33 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [(AKSignaturesViewController_iOS *)self setLeftBarItems:v26];

    leftBarItems = [(AKSignaturesViewController_iOS *)self leftBarItems];
    [v22 setLeftBarButtonItems:leftBarItems];

    rightBarItems = [(AKSignaturesViewController_iOS *)self rightBarItems];
    [v22 setRightBarButtonItems:rightBarItems];

    title2 = [(AKSignaturesViewController_iOS *)self title];
    [v22 setTitle:title2];

    v32 = v22;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v10 setItems:v30];

    view5 = [(AKSignaturesViewController_iOS *)self view];
    [view5 layoutIfNeeded];
  }

  [(AKSignaturesViewController_iOS *)self _updateSignatureCellLayout];
}

- (void)viewDidLayoutSubviews
{
  navBar = [(AKSignaturesViewController_iOS *)self navBar];

  if (navBar)
  {
    navBar2 = [(AKSignaturesViewController_iOS *)self navBar];
    [navBar2 frame];
    v5 = v4;
    tableView = [(AKSignaturesViewController_iOS *)self tableView];
    [tableView setContentInset:{v5, 0.0, 0.0, 0.0}];
  }
}

- (void)_continueToCreateSignature:(id)signature
{
  AKLog(@"%s");
  delegate = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signaturesViewControllerContinueToCreateSignature:self];
  }
}

- (void)_cancelPicker:(id)picker
{
  AKLog(@"%s");
  delegate = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signaturesViewControllerDidCancel:self];
  }
}

- (id)_signatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  controller = [(AKSignaturesViewController_iOS *)self controller];
  signatureModelController = [controller signatureModelController];
  signatures = [signatureModelController signatures];

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [signatures sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)_deleteSignature:(id)signature
{
  if (signature)
  {
    signatureCopy = signature;
    controller = [(AKSignaturesViewController_iOS *)self controller];
    signatureModelController = [controller signatureModelController];
    v6 = [signatureModelController mutableArrayValueForKey:@"signatures"];

    AKLog(@"Delete signature %@");
    [v6 removeObject:{signatureCopy, signatureCopy}];
  }
}

- (void)_updateSignatureCellLayout
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(AKSignaturesViewController_iOS *)self presentedInAlert])
  {
    controller = [(AKSignaturesViewController_iOS *)self controller];
    signatureModelController = [controller signatureModelController];
    signatures = [signatureModelController signatures];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    view2 = signatures;
    v7 = [view2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      v10 = 4;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(view2);
          }

          if ([*(*(&v25 + 1) + 8 * i) descriptionTag])
          {
            view = [(AKSignaturesViewController_iOS *)self view];
            if ([view effectiveUserInterfaceLayoutDirection] == 1)
            {
              v10 = 8;
            }

            else
            {
              v10 = 7;
            }

            goto LABEL_19;
          }
        }

        v8 = [view2 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 4;
    }

LABEL_19:
  }

  else
  {
    view2 = [(AKSignaturesViewController_iOS *)self view];
    if ([view2 effectiveUserInterfaceLayoutDirection] == 1)
    {
      v10 = 8;
    }

    else
    {
      v10 = 7;
    }
  }

  if (v10 != self->_signatureImageContentMode)
  {
    self->_signatureImageContentMode = v10;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    tableView = [(AKSignaturesViewController_iOS *)self tableView];
    visibleCells = [tableView visibleCells];

    v15 = [visibleCells countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(visibleCells);
          }

          signatureImageContentMode = self->_signatureImageContentMode;
          signatureImageView = [*(*(&v21 + 1) + 8 * j) signatureImageView];
          [signatureImageView setContentMode:signatureImageContentMode];
        }

        v16 = [visibleCells countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AKSignaturesViewController_iOS *)self _signatures:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(AKSignaturesViewController_iOS *)self tableView];
  v7 = [tableView dequeueReusableCellWithIdentifier:@"AKSignatureCellIdentifier"];

  if (!v7)
  {
    v7 = [[AKSignatureTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AKSignatureCellIdentifier"];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  contentView = [(AKSignatureTableViewCell *)v7 contentView];
  [contentView setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(AKSignatureTableViewCell *)v7 setBackgroundColor:clearColor2];

  signatureImageContentMode = [(AKSignaturesViewController_iOS *)self signatureImageContentMode];
  signatureImageView = [(AKSignatureTableViewCell *)v7 signatureImageView];
  [signatureImageView setContentMode:signatureImageContentMode];

  _signatures = [(AKSignaturesViewController_iOS *)self _signatures];
  v14 = [pathCopy row];

  v15 = [_signatures objectAtIndex:v14];

  [(AKSignatureTableViewCell *)v7 setSignature:v15];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([(AKSignaturesViewController_iOS *)self presentedInAlert])
  {
    v8 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v10 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
    [cellCopy setLayoutMargins:{*MEMORY[0x277D768C8], v9, v10, v11}];
    [cellCopy setSeparatorInset:{v8, v9, v10, v11}];
    [cellCopy setPreservesSuperviewLayoutMargins:0];
    v12 = [pathCopy row];
    _signatures = [(AKSignaturesViewController_iOS *)self _signatures];
    v14 = v12 != [_signatures count] - 1;

    [cellCopy setSeparatorStyle:v14];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  controller = [(AKSignaturesViewController_iOS *)self controller];
  _signatures = [(AKSignaturesViewController_iOS *)self _signatures];
  v9 = [_signatures objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  signatureModelController = [controller signatureModelController];
  [signatureModelController setSelectedSignature:v9];

  AKLog(@"Selected signature %@");
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v9}];

  delegate = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signaturesViewControllerDidSelectSignature:self];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (style == 1)
  {
    pathCopy = path;
    _signatures = [(AKSignaturesViewController_iOS *)self _signatures];
    v8 = [_signatures objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    [(AKSignaturesViewController_iOS *)self _deleteSignature:v8];
    tableView = [(AKSignaturesViewController_iOS *)self tableView];
    v11[0] = pathCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

    [tableView deleteRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (void)signatureCreationControllerDidCreateSignature:(id)signature
{
  delegate = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate signaturesViewControllerDidSelectSignature:self];
  }

  [(AKSignaturesViewController_iOS *)self _updateSignatureCellLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  changeCopy = change;
  [(AKSignaturesViewController_iOS *)&v9 traitCollectionDidChange:changeCopy];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(AKSignaturesViewController_iOS *)self setTableBackgroundColor:systemBackgroundColor];

  traitCollection = [(AKSignaturesViewController_iOS *)self traitCollection];
  v7 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (v7)
  {
    tableView = [(AKSignaturesViewController_iOS *)self tableView];
    [tableView reloadData];
  }
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (AKSignaturesViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIResponder)responderToRestore
{
  WeakRetained = objc_loadWeakRetained(&self->_responderToRestore);

  return WeakRetained;
}

@end