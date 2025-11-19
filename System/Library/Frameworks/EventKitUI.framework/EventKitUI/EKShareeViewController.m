@interface EKShareeViewController
- (CGSize)preferredContentSize;
- (EKShareeViewController)initWithSharee:(id)a3;
- (EKShareeViewControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)backgroundColor;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int)_subitemAtRow:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_allowEditingChanged:(id)a3;
- (void)_reloadTitle;
- (void)loadView;
- (void)localDeleteTapped;
- (void)removeClicked:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKShareeViewController

- (EKShareeViewController)initWithSharee:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EKShareeViewController;
  v5 = [(EKShareeViewController *)&v10 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(EKShareeViewController *)v5 setSharee:v4];
    v7 = [(EKShareeViewController *)v6 sharee];
    -[EKShareeViewController setAllowEditing:](v6, "setAllowEditing:", [v7 shareeAccessLevel] == 2);

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v6 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (int)_subitemAtRow:(int64_t)a3
{
  v4 = ((a3 > 1) & ([(EKShareeViewController *)self _shouldDisplayResendInvitationButton]^ 1)) + a3;
  v5 = v4 + ((v4 > 2) & ~[(EKShareeViewController *)self _shouldDisplayStopSharingButton]);
  return v5 + ((v5 > 3) & ~[(EKShareeViewController *)self allowLocalDelete]);
}

- (void)_reloadTitle
{
  v4 = [(EKShareeViewController *)self sharee];
  v3 = DisplayStringForIdentity(v4, 1, 0);
  [(EKShareeViewController *)self setTitle:v3];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = EKShareeViewController;
  [(EKShareeViewController *)&v3 loadView];
  [(EKShareeViewController *)self _reloadTitle];
}

- (id)backgroundColor
{
  if ([(UIViewController *)self isPresentedInsidePopover])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] tableViewBackgroundColorOpaque];
  }
  v2 = ;

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = EKShareeViewController;
  [(EKShareeViewController *)&v11 viewWillAppear:a3];
  if (MEMORY[0x1D38B98D0]([(EKShareeViewController *)self _reloadTitle]))
  {
    v4 = [(EKShareeViewController *)self backgroundColor];
    v5 = [(EKShareeViewController *)self tableView];
    [v5 setBackgroundColor:v4];
  }

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v6 lineHeight];
  v8 = v7;
  v9 = [(EKShareeViewController *)self tableView];
  [v9 setEstimatedRowHeight:v8];

  v10 = [(EKShareeViewController *)self tableView];
  [v10 reloadData];
}

- (void)_allowEditingChanged:(id)a3
{
  v8 = a3;
  if (v8)
  {
    -[EKShareeViewController setAllowEditing:](self, "setAllowEditing:", [v8 isOn]);
  }

  if ([(EKShareeViewController *)self allowEditing])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(EKShareeViewController *)self sharee];
  [v5 setShareeAccessLevel:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 shareeViewControllerDidChangeAccessLevel:self];
  }
}

- (CGSize)preferredContentSize
{
  v2 = [(EKShareeViewController *)self tableView];
  [v2 sizeThatFits:{EKUIContainedControllerIdealWidth(), 1100.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(EKShareeViewController *)self _shouldDisplayResendInvitationButton])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = v4 + [(EKShareeViewController *)self _shouldDisplayStopSharingButton];
  return v5 + [(EKShareeViewController *)self allowLocalDelete];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [a4 section]);
  v6 = 0;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"resendInvitation"];
        [(EKUICenteredTextTableViewCell *)v6 setAccessoryType:0];
        v10 = EventKitUIBundle();
        v11 = v10;
        v12 = @"Resend Sharing Invitation";
        break;
      case 3:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        v17 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        [(EKUICenteredTextTableViewCell *)v6 setBackgroundColor:v17];

        v18 = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
        v19 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
        [v19 setTextColor:v18];

        v10 = EventKitUIBundle();
        v11 = v10;
        v12 = @"Stop Sharing";
        break;
      case 4:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        v7 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        [(EKUICenteredTextTableViewCell *)v6 setBackgroundColor:v7];

        v8 = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
        v9 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
        [v9 setTextColor:v8];

        v10 = EventKitUIBundle();
        v11 = v10;
        v12 = @"DeleteCalendarSharee";
        v13 = @"Delete";
        goto LABEL_12;
      default:
        goto LABEL_20;
    }

    v13 = &stru_1F4EF6790;
LABEL_12:
    v20 = [v10 localizedStringForKey:v12 value:v13 table:0];
    v21 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [v21 setText:v20];

    goto LABEL_19;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_20;
    }

    v11 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [v11 setOn:self->_allowEditing];
    [v11 addTarget:self action:sel__allowEditingChanged_ forControlEvents:4096];
    v6 = objc_alloc_init(MEMORY[0x1E69DD028]);
    [(EKUICenteredTextTableViewCell *)v6 setAccessoryView:v11];
    v14 = EventKitUIBundle();
    v15 = [v14 localizedStringForKey:@"Allow Editing" value:&stru_1F4EF6790 table:0];
    v16 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [v16 setText:v15];

    [(EKUICenteredTextTableViewCell *)v6 setSelectionStyle:0];
  }

  else
  {
    v6 = [[AddressCardTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"addressCard"];
    [(EKUICenteredTextTableViewCell *)v6 setAccessoryType:1];
    v11 = [(EKShareeViewController *)self sharee];
    v22 = DisplayStringForIdentity(v11, 0, 0);
    v23 = DisplayAddressForIdentity(v11);
    v24 = [v22 length];
    v25 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    v26 = v25;
    if (v24)
    {
      [v25 setText:v22];

      v26 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
    }

    v68 = v23;
    [v26 setText:v23];

    v27 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [v27 setHidden:1];

    v28 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
    [v28 setHidden:1];

    v29 = objc_opt_new();
    v30 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    v31 = [v30 font];
    [v29 setFont:v31];

    v32 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    v33 = [v32 text];
    [v29 setText:v33];

    v34 = [MEMORY[0x1E69DC888] labelColor];
    [v29 setTextColor:v34];

    [v29 setNumberOfLines:1];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [[EKUILabeledAvatarView alloc] initWithIdentity:v11 placement:0 options:0];
    [(EKUILabeledAvatarView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = [(EKUICenteredTextTableViewCell *)v6 contentView];
    [v36 addSubview:v29];

    v37 = [(EKUICenteredTextTableViewCell *)v6 contentView];
    [v37 addSubview:v35];

    v38 = 0x1E696A000uLL;
    if ([v22 length])
    {
      v39 = objc_opt_new();
      v40 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      v41 = [v40 font];
      [v39 setFont:v41];

      v42 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      v43 = [v42 text];
      [v39 setText:v43];

      v44 = [MEMORY[0x1E69DC888] labelColor];
      [v39 setTextColor:v44];

      [v39 setNumberOfLines:1];
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v45 = [(EKUICenteredTextTableViewCell *)v6 contentView];
      [v45 addSubview:v39];

      v46 = _NSDictionaryOfVariableBindings(&cfstr_TitleAvatarAdd.isa, v29, v35, v39, 0);
      v47 = MEMORY[0x1E696ACD8];
      [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[address]-|" options:0 metrics:0 views:v46];
      v67 = v35;
      v49 = v48 = v22;
      [v47 activateConstraints:v49];

      v50 = [v39 firstBaselineAnchor];
      v51 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      v52 = [v51 firstBaselineAnchor];
      v53 = [v50 constraintEqualToAnchor:v52 constant:0.0];
      [v53 setActive:1];

      v22 = v48;
      v35 = v67;

      v38 = 0x1E696A000;
    }

    else
    {
      v46 = _NSDictionaryOfVariableBindings(&cfstr_TitleAvatar.isa, v29, v35, 0);
    }

    v54 = *(v38 + 3288);
    v55 = [v54 constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[title]-|" options:0 metrics:0 views:v46];
    [v54 activateConstraints:v55];

    v56 = *(v38 + 3288);
    v57 = [v56 constraintsWithVisualFormat:@"V:|-(>=0)-[avatar]-(>=0)-|" options:0 metrics:0 views:v46];
    [v56 activateConstraints:v57];

    v58 = [v29 firstBaselineAnchor];
    v59 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    v60 = [v59 firstBaselineAnchor];
    v61 = [v58 constraintEqualToAnchor:v60 constant:0.0];
    [v61 setActive:1];

    v62 = [(EKUILabeledAvatarView *)v35 centerYAnchor];
    v63 = [(EKUICenteredTextTableViewCell *)v6 contentView];
    v64 = [v63 centerYAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];
    [v65 setActive:1];
  }

LABEL_19:

LABEL_20:

  return v6;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(EKShareeViewController *)self _subitemAtRow:a4]== 1)
  {
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:@"Allow this person to make changes to the calendar." value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EKShareeViewController *)self traitCollection];
  v10 = EKUIUsesLargeTextLayout(v9);

  if (!v10)
  {
    v11 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [v8 section]);
    if ((v11 - 1) < 2)
    {
      v12 = EKUITableRowHeightDefault();
    }

    else if ((v11 - 3) >= 2)
    {
      if (v11)
      {
        goto LABEL_10;
      }

      [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:63.0];
    }

    else
    {
      [v7 rowHeight];
    }

    v4 = v12;
    goto LABEL_10;
  }

  v4 = *MEMORY[0x1E69DE3D0];
LABEL_10:

  return v4;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = [(EKShareeViewController *)self traitCollection];
  v7 = EKUIUsesLargeTextLayout(v6);

  if (v7 || [(EKShareeViewController *)self _subitemAtRow:a4]!= 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:28.0];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [v6 section]);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = [v16 cellForRowAtIndexPath:v6];
      [(EKShareeViewController *)self removeClicked:v15];
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_13;
      }

      [(EKShareeViewController *)self localDeleteTapped];
    }

    v11 = [(EKShareeViewController *)self tableView];
    [(EKIdentityViewController *)v11 deselectRowAtIndexPath:v6 animated:1];
    goto LABEL_12;
  }

  if (!v7)
  {
    v12 = [EKIdentityViewController alloc];
    v13 = [(EKShareeViewController *)self sharee];
    v11 = [(EKIdentityViewController *)v12 initWithIdentity:v13];

    v14 = [(EKShareeViewController *)self navigationController];
    [v14 pushViewController:v11 animated:1];

    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v8 = [(EKShareeViewController *)self tableView];
    [v8 selectRowAtIndexPath:0 animated:1 scrollPosition:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [(EKIdentityViewController *)v11 shareeViewController:self didCompleteWithAction:1];
LABEL_12:
    }
  }

LABEL_13:
}

- (void)removeClicked:(id)a3
{
  v4 = a3;
  v5 = [(EKShareeViewController *)self sharee];
  v6 = DisplayStringForIdentity(v5, 1, 0);

  v7 = MEMORY[0x1E69DC650];
  v8 = MEMORY[0x1E696AEC0];
  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"%@ will immediately lose access to this calendar." value:&stru_1F4EF6790 table:0];
  v11 = [v8 localizedStringWithFormat:v10, v6];
  v12 = [v7 alertControllerWithTitle:v11 message:0 preferredStyle:0];
  removeAlertController = self->_removeAlertController;
  self->_removeAlertController = v12;

  v14 = self->_removeAlertController;
  v15 = MEMORY[0x1E69DC648];
  v16 = EventKitUIBundle();
  v17 = [v16 localizedStringForKey:@"Remove" value:&stru_1F4EF6790 table:0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __40__EKShareeViewController_removeClicked___block_invoke;
  v30[3] = &unk_1E843EB98;
  v30[4] = self;
  v18 = [v15 actionWithTitle:v17 style:2 handler:v30];
  [(UIAlertController *)v14 addAction:v18];

  v19 = self->_removeAlertController;
  v20 = MEMORY[0x1E69DC648];
  v21 = EventKitUIBundle();
  v22 = [v21 localizedStringForKey:@"Cancel - remove clicked" value:@"Cancel" table:0];
  v23 = [v20 actionWithTitle:v22 style:1 handler:0];
  [(UIAlertController *)v19 addAction:v23];

  v24 = [(UIAlertController *)self->_removeAlertController popoverPresentationController];
  [v24 setSourceView:v4];

  v25 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v28 = *(MEMORY[0x1E695F050] + 24);
  v29 = [(UIAlertController *)self->_removeAlertController popoverPresentationController];
  [v29 setSourceRect:{v25, v26, v27, v28}];

  [(EKShareeViewController *)self presentViewController:self->_removeAlertController animated:1 completion:0];
}

void __40__EKShareeViewController_removeClicked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1064));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1064));
    [v4 shareeViewController:*(a1 + 32) didCompleteWithAction:0];
  }
}

- (void)localDeleteTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 shareeViewController:self didCompleteWithAction:2];
  }
}

- (EKShareeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end