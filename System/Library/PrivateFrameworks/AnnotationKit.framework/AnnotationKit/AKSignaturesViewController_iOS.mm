@interface AKSignaturesViewController_iOS
- (AKController)controller;
- (AKSignaturesViewControllerDelegate)delegate;
- (AKSignaturesViewController_iOS)initWithController:(id)a3;
- (BOOL)becomeFirstResponder;
- (CGSize)preferredContentSize;
- (UIResponder)responderToRestore;
- (double)idealHeight;
- (id)_signatures;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelPicker:(id)a3;
- (void)_configureUI;
- (void)_continueToCreateSignature:(id)a3;
- (void)_deleteSignature:(id)a3;
- (void)_updateSignatureCellLayout;
- (void)signatureCreationControllerDidCreateSignature:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AKSignaturesViewController_iOS

- (AKSignaturesViewController_iOS)initWithController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  v5 = [(AKSignaturesViewController_iOS *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(AKSignaturesViewController_iOS *)v5 setController:v4];
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(AKSignaturesViewController_iOS *)v6 setTableBackgroundColor:v7];

    [(AKSignaturesViewController_iOS *)v6 setAllowsEdits:0];
    [(AKSignaturesViewController_iOS *)v6 setShowsNavigationBar:0];
  }

  return v6;
}

- (CGSize)preferredContentSize
{
  v3 = [(AKSignaturesViewController_iOS *)self presentedInAlert];
  [(AKSignaturesViewController_iOS *)self idealHeight];
  v5 = v4;
  v6 = 540.0;
  if (v3)
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
  v6 = [(AKSignaturesViewController_iOS *)self view];
  [v6 bounds];
  v7 = [v5 initWithFrame:0 style:?];
  [(AKSignaturesViewController_iOS *)self setTableView:v7];

  v8 = [(AKSignaturesViewController_iOS *)self tableView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(AKSignaturesViewController_iOS *)self tableView];
  [v9 setDelegate:self];

  v10 = [(AKSignaturesViewController_iOS *)self tableView];
  [v10 setDataSource:self];

  LODWORD(v10) = [(AKSignaturesViewController_iOS *)self presentedInAlert];
  v11 = [(AKSignaturesViewController_iOS *)self tableView];
  [v11 setAlwaysBounceVertical:v10 ^ 1];

  v12 = [(AKSignaturesViewController_iOS *)self tableView];
  [v12 setRowHeight:86.0];

  v13 = [(AKSignaturesViewController_iOS *)self view];
  v14 = [(AKSignaturesViewController_iOS *)self tableView];
  [v13 addSubview:v14];

  v15 = _NSDictionaryOfVariableBindings(&cfstr_Tableview.isa, self->_tableView, 0);
  v16 = [(AKSignaturesViewController_iOS *)self view];
  v17 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_tableView]|" options:0 metrics:0 views:v15];
  [v16 addConstraints:v17];

  v18 = [(AKSignaturesViewController_iOS *)self view];
  v19 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_tableView]|" options:0 metrics:v15 views:v15];
  [v18 addConstraints:v19];

  [(AKSignaturesViewController_iOS *)self _configureUI];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(AKSignaturesViewController_iOS *)self view];
  v4 = [v3 window];
  v5 = [v4 firstResponder];

  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  v6 = [(AKSignaturesViewController_iOS *)&v9 becomeFirstResponder];
  if (v6 && v5 != self)
  {
    [(AKSignaturesViewController_iOS *)self setResponderToRestore:v5];
  }

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AKSignaturesViewController_iOS;
  [(AKSignaturesViewController_iOS *)&v4 viewDidAppear:a3];
  if (([(AKSignaturesViewController_iOS *)self isFirstResponder]& 1) == 0)
  {
    [(AKSignaturesViewController_iOS *)self becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(AKSignaturesViewController_iOS *)self resignFirstResponder];
  v5 = [(AKSignaturesViewController_iOS *)self responderToRestore];
  v6 = v5;
  if (v5)
  {
    [v5 becomeFirstResponder];
  }

  [(AKSignaturesViewController_iOS *)self setResponderToRestore:0];
  v7.receiver = self;
  v7.super_class = AKSignaturesViewController_iOS;
  [(AKSignaturesViewController_iOS *)&v7 viewDidDisappear:v3];
}

- (double)idealHeight
{
  v3 = [(AKSignaturesViewController_iOS *)self controller];
  v4 = [v3 signatureModelController];
  v5 = [v4 signatures];
  v6 = [v5 count];

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
    v11 = [(AKSignaturesViewController_iOS *)self navBar];
    [v11 bounds];
    v10 = v10 + v12;
  }

  return v10;
}

- (void)_configureUI
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = [(AKSignaturesViewController_iOS *)self tableBackgroundColor];
  v4 = [(AKSignaturesViewController_iOS *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AKSignaturesViewController_iOS *)self tableBackgroundColor];
  v6 = [(AKSignaturesViewController_iOS *)self tableView];
  [v6 setBackgroundColor:v5];

  v7 = [(AKSignaturesViewController_iOS *)self allowsEdits];
  v8 = [(AKSignaturesViewController_iOS *)self tableView];
  [v8 setEditing:v7];

  if ([(AKSignaturesViewController_iOS *)self showsNavigationBar])
  {
    v9 = objc_alloc(MEMORY[0x277D75780]);
    v10 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDelegate:self];
    v11 = [(AKSignaturesViewController_iOS *)self view];
    [v11 addSubview:v10];

    [(AKSignaturesViewController_iOS *)self setNavBar:v10];
    v12 = _NSDictionaryOfVariableBindings(&cfstr_Navbar_0.isa, v10, 0);
    v13 = [(AKSignaturesViewController_iOS *)self view];
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[navBar]|" options:0 metrics:0 views:v12];
    [v13 addConstraints:v14];

    v15 = [v10 topAnchor];
    v16 = [(AKSignaturesViewController_iOS *)self view];
    v17 = [v16 safeAreaLayoutGuide];
    v18 = [v17 topAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];

    if (_UISolariumEnabled())
    {
      [v19 setConstant:10.0];
    }

    [v19 setActive:1];
    v20 = objc_alloc(MEMORY[0x277D757A8]);
    v21 = [(AKSignaturesViewController_iOS *)self title];
    v22 = [v20 initWithTitle:v21];

    v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:4 target:self action:sel__continueToCreateSignature_];
    v24 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__cancelPicker_];
    v34[0] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [(AKSignaturesViewController_iOS *)self setRightBarItems:v25];

    v33 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [(AKSignaturesViewController_iOS *)self setLeftBarItems:v26];

    v27 = [(AKSignaturesViewController_iOS *)self leftBarItems];
    [v22 setLeftBarButtonItems:v27];

    v28 = [(AKSignaturesViewController_iOS *)self rightBarItems];
    [v22 setRightBarButtonItems:v28];

    v29 = [(AKSignaturesViewController_iOS *)self title];
    [v22 setTitle:v29];

    v32 = v22;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    [v10 setItems:v30];

    v31 = [(AKSignaturesViewController_iOS *)self view];
    [v31 layoutIfNeeded];
  }

  [(AKSignaturesViewController_iOS *)self _updateSignatureCellLayout];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(AKSignaturesViewController_iOS *)self navBar];

  if (v3)
  {
    v7 = [(AKSignaturesViewController_iOS *)self navBar];
    [v7 frame];
    v5 = v4;
    v6 = [(AKSignaturesViewController_iOS *)self tableView];
    [v6 setContentInset:{v5, 0.0, 0.0, 0.0}];
  }
}

- (void)_continueToCreateSignature:(id)a3
{
  AKLog(@"%s");
  v4 = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 signaturesViewControllerContinueToCreateSignature:self];
  }
}

- (void)_cancelPicker:(id)a3
{
  AKLog(@"%s");
  v4 = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 signaturesViewControllerDidCancel:self];
  }
}

- (id)_signatures
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [(AKSignaturesViewController_iOS *)self controller];
  v3 = [v2 signatureModelController];
  v4 = [v3 signatures];

  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v4 sortedArrayUsingDescriptors:v6];

  return v7;
}

- (void)_deleteSignature:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = [(AKSignaturesViewController_iOS *)self controller];
    v5 = [v7 signatureModelController];
    v6 = [v5 mutableArrayValueForKey:@"signatures"];

    AKLog(@"Delete signature %@");
    [v6 removeObject:{v4, v4}];
  }
}

- (void)_updateSignatureCellLayout
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(AKSignaturesViewController_iOS *)self presentedInAlert])
  {
    v3 = [(AKSignaturesViewController_iOS *)self controller];
    v4 = [v3 signatureModelController];
    v5 = [v4 signatures];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v25 + 1) + 8 * i) descriptionTag])
          {
            v12 = [(AKSignaturesViewController_iOS *)self view];
            if ([v12 effectiveUserInterfaceLayoutDirection] == 1)
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

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    v6 = [(AKSignaturesViewController_iOS *)self view];
    if ([v6 effectiveUserInterfaceLayoutDirection] == 1)
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
    v13 = [(AKSignaturesViewController_iOS *)self tableView];
    v14 = [v13 visibleCells];

    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v14);
          }

          signatureImageContentMode = self->_signatureImageContentMode;
          v20 = [*(*(&v21 + 1) + 8 * j) signatureImageView];
          [v20 setContentMode:signatureImageContentMode];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AKSignaturesViewController_iOS *)self _signatures:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AKSignaturesViewController_iOS *)self tableView];
  v7 = [v6 dequeueReusableCellWithIdentifier:@"AKSignatureCellIdentifier"];

  if (!v7)
  {
    v7 = [[AKSignatureTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"AKSignatureCellIdentifier"];
  }

  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [(AKSignatureTableViewCell *)v7 contentView];
  [v9 setBackgroundColor:v8];

  v10 = [MEMORY[0x277D75348] clearColor];
  [(AKSignatureTableViewCell *)v7 setBackgroundColor:v10];

  v11 = [(AKSignaturesViewController_iOS *)self signatureImageContentMode];
  v12 = [(AKSignatureTableViewCell *)v7 signatureImageView];
  [v12 setContentMode:v11];

  v13 = [(AKSignaturesViewController_iOS *)self _signatures];
  v14 = [v5 row];

  v15 = [v13 objectAtIndex:v14];

  [(AKSignatureTableViewCell *)v7 setSignature:v15];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v15 = a4;
  v7 = a5;
  if ([(AKSignaturesViewController_iOS *)self presentedInAlert])
  {
    v8 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v10 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
    [v15 setLayoutMargins:{*MEMORY[0x277D768C8], v9, v10, v11}];
    [v15 setSeparatorInset:{v8, v9, v10, v11}];
    [v15 setPreservesSuperviewLayoutMargins:0];
    v12 = [v7 row];
    v13 = [(AKSignaturesViewController_iOS *)self _signatures];
    v14 = v12 != [v13 count] - 1;

    [v15 setSeparatorStyle:v14];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(AKSignaturesViewController_iOS *)self controller];
  v8 = [(AKSignaturesViewController_iOS *)self _signatures];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  v10 = [v12 signatureModelController];
  [v10 setSelectedSignature:v9];

  AKLog(@"Selected signature %@");
  [v7 deselectRowAtIndexPath:v6 animated:{1, v9}];

  v11 = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 signaturesViewControllerDidSelectSignature:self];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a4 == 1)
  {
    v6 = a5;
    v7 = [(AKSignaturesViewController_iOS *)self _signatures];
    v8 = [v7 objectAtIndex:{objc_msgSend(v6, "row")}];

    [(AKSignaturesViewController_iOS *)self _deleteSignature:v8];
    v9 = [(AKSignaturesViewController_iOS *)self tableView];
    v11[0] = v6;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

    [v9 deleteRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (void)signatureCreationControllerDidCreateSignature:(id)a3
{
  v4 = [(AKSignaturesViewController_iOS *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 signaturesViewControllerDidSelectSignature:self];
  }

  [(AKSignaturesViewController_iOS *)self _updateSignatureCellLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = AKSignaturesViewController_iOS;
  v4 = a3;
  [(AKSignaturesViewController_iOS *)&v9 traitCollectionDidChange:v4];
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(AKSignaturesViewController_iOS *)self setTableBackgroundColor:v5];

  v6 = [(AKSignaturesViewController_iOS *)self traitCollection];
  v7 = [v6 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v7)
  {
    v8 = [(AKSignaturesViewController_iOS *)self tableView];
    [v8 reloadData];
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