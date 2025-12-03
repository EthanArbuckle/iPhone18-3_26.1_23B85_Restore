@interface EKShareeViewController
- (CGSize)preferredContentSize;
- (EKShareeViewController)initWithSharee:(id)sharee;
- (EKShareeViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)backgroundColor;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int)_subitemAtRow:(int64_t)row;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_allowEditingChanged:(id)changed;
- (void)_reloadTitle;
- (void)loadView;
- (void)localDeleteTapped;
- (void)removeClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EKShareeViewController

- (EKShareeViewController)initWithSharee:(id)sharee
{
  shareeCopy = sharee;
  v10.receiver = self;
  v10.super_class = EKShareeViewController;
  v5 = [(EKShareeViewController *)&v10 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    [(EKShareeViewController *)v5 setSharee:shareeCopy];
    sharee = [(EKShareeViewController *)v6 sharee];
    -[EKShareeViewController setAllowEditing:](v6, "setAllowEditing:", [sharee shareeAccessLevel] == 2);

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v6;
}

- (int)_subitemAtRow:(int64_t)row
{
  v4 = ((row > 1) & ([(EKShareeViewController *)self _shouldDisplayResendInvitationButton]^ 1)) + row;
  v5 = v4 + ((v4 > 2) & ~[(EKShareeViewController *)self _shouldDisplayStopSharingButton]);
  return v5 + ((v5 > 3) & ~[(EKShareeViewController *)self allowLocalDelete]);
}

- (void)_reloadTitle
{
  sharee = [(EKShareeViewController *)self sharee];
  v3 = DisplayStringForIdentity(sharee, 1, 0);
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

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = EKShareeViewController;
  [(EKShareeViewController *)&v11 viewWillAppear:appear];
  if (MEMORY[0x1D38B98D0]([(EKShareeViewController *)self _reloadTitle]))
  {
    backgroundColor = [(EKShareeViewController *)self backgroundColor];
    tableView = [(EKShareeViewController *)self tableView];
    [tableView setBackgroundColor:backgroundColor];
  }

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v6 lineHeight];
  v8 = v7;
  tableView2 = [(EKShareeViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:v8];

  tableView3 = [(EKShareeViewController *)self tableView];
  [tableView3 reloadData];
}

- (void)_allowEditingChanged:(id)changed
{
  changedCopy = changed;
  if (changedCopy)
  {
    -[EKShareeViewController setAllowEditing:](self, "setAllowEditing:", [changedCopy isOn]);
  }

  if ([(EKShareeViewController *)self allowEditing])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  sharee = [(EKShareeViewController *)self sharee];
  [sharee setShareeAccessLevel:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(sharee) = objc_opt_respondsToSelector();

  if (sharee)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 shareeViewControllerDidChangeAccessLevel:self];
  }
}

- (CGSize)preferredContentSize
{
  tableView = [(EKShareeViewController *)self tableView];
  [tableView sizeThatFits:{EKUIContainedControllerIdealWidth(), 1100.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [path section]);
  v6 = 0;
  if (v5 > 1)
  {
    switch(v5)
    {
      case 2:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"resendInvitation"];
        [(EKUICenteredTextTableViewCell *)v6 setAccessoryType:0];
        v10 = EventKitUIBundle();
        sharee = v10;
        v12 = @"Resend Sharing Invitation";
        break;
      case 3:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        [(EKUICenteredTextTableViewCell *)v6 setBackgroundColor:tableCellGroupedBackgroundColor];

        _systemDestructiveTintColor = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
        textLabel = [(EKUICenteredTextTableViewCell *)v6 textLabel];
        [textLabel setTextColor:_systemDestructiveTintColor];

        v10 = EventKitUIBundle();
        sharee = v10;
        v12 = @"Stop Sharing";
        break;
      case 4:
        v6 = [[EKUICenteredTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
        tableCellGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
        [(EKUICenteredTextTableViewCell *)v6 setBackgroundColor:tableCellGroupedBackgroundColor2];

        _systemDestructiveTintColor2 = [MEMORY[0x1E69DC888] _systemDestructiveTintColor];
        textLabel2 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
        [textLabel2 setTextColor:_systemDestructiveTintColor2];

        v10 = EventKitUIBundle();
        sharee = v10;
        v12 = @"DeleteCalendarSharee";
        v13 = @"Delete";
        goto LABEL_12;
      default:
        goto LABEL_20;
    }

    v13 = &stru_1F4EF6790;
LABEL_12:
    v20 = [v10 localizedStringForKey:v12 value:v13 table:0];
    textLabel3 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [textLabel3 setText:v20];

    goto LABEL_19;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_20;
    }

    sharee = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    [sharee setOn:self->_allowEditing];
    [sharee addTarget:self action:sel__allowEditingChanged_ forControlEvents:4096];
    v6 = objc_alloc_init(MEMORY[0x1E69DD028]);
    [(EKUICenteredTextTableViewCell *)v6 setAccessoryView:sharee];
    v14 = EventKitUIBundle();
    v15 = [v14 localizedStringForKey:@"Allow Editing" value:&stru_1F4EF6790 table:0];
    textLabel4 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [textLabel4 setText:v15];

    [(EKUICenteredTextTableViewCell *)v6 setSelectionStyle:0];
  }

  else
  {
    v6 = [[AddressCardTableViewCell alloc] initWithStyle:3 reuseIdentifier:@"addressCard"];
    [(EKUICenteredTextTableViewCell *)v6 setAccessoryType:1];
    sharee = [(EKShareeViewController *)self sharee];
    v22 = DisplayStringForIdentity(sharee, 0, 0);
    v23 = DisplayAddressForIdentity(sharee);
    v24 = [v22 length];
    textLabel5 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    detailTextLabel = textLabel5;
    if (v24)
    {
      [textLabel5 setText:v22];

      detailTextLabel = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
    }

    v68 = v23;
    [detailTextLabel setText:v23];

    textLabel6 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    [textLabel6 setHidden:1];

    detailTextLabel2 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
    [detailTextLabel2 setHidden:1];

    v29 = objc_opt_new();
    textLabel7 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    font = [textLabel7 font];
    [v29 setFont:font];

    textLabel8 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    text = [textLabel8 text];
    [v29 setText:text];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v29 setTextColor:labelColor];

    [v29 setNumberOfLines:1];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [[EKUILabeledAvatarView alloc] initWithIdentity:sharee placement:0 options:0];
    [(EKUILabeledAvatarView *)v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(EKUICenteredTextTableViewCell *)v6 contentView];
    [contentView addSubview:v29];

    contentView2 = [(EKUICenteredTextTableViewCell *)v6 contentView];
    [contentView2 addSubview:v35];

    v38 = 0x1E696A000uLL;
    if ([v22 length])
    {
      v39 = objc_opt_new();
      detailTextLabel3 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      font2 = [detailTextLabel3 font];
      [v39 setFont:font2];

      detailTextLabel4 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      text2 = [detailTextLabel4 text];
      [v39 setText:text2];

      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      [v39 setTextColor:labelColor2];

      [v39 setNumberOfLines:1];
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView3 = [(EKUICenteredTextTableViewCell *)v6 contentView];
      [contentView3 addSubview:v39];

      v46 = _NSDictionaryOfVariableBindings(&cfstr_TitleAvatarAdd.isa, v29, v35, v39, 0);
      v47 = MEMORY[0x1E696ACD8];
      [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-[avatar(==37)]-(12)-[address]-|" options:0 metrics:0 views:v46];
      v67 = v35;
      v49 = v48 = v22;
      [v47 activateConstraints:v49];

      firstBaselineAnchor = [v39 firstBaselineAnchor];
      detailTextLabel5 = [(EKUICenteredTextTableViewCell *)v6 detailTextLabel];
      firstBaselineAnchor2 = [detailTextLabel5 firstBaselineAnchor];
      v53 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:0.0];
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

    firstBaselineAnchor3 = [v29 firstBaselineAnchor];
    textLabel9 = [(EKUICenteredTextTableViewCell *)v6 textLabel];
    firstBaselineAnchor4 = [textLabel9 firstBaselineAnchor];
    v61 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:0.0];
    [v61 setActive:1];

    centerYAnchor = [(EKUILabeledAvatarView *)v35 centerYAnchor];
    contentView4 = [(EKUICenteredTextTableViewCell *)v6 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v65 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v65 setActive:1];
  }

LABEL_19:

LABEL_20:

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(EKShareeViewController *)self _subitemAtRow:section]== 1)
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  traitCollection = [(EKShareeViewController *)self traitCollection];
  v10 = EKUIUsesLargeTextLayout(traitCollection);

  if (!v10)
  {
    v11 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [pathCopy section]);
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
      [viewCopy rowHeight];
    }

    v4 = v12;
    goto LABEL_10;
  }

  v4 = *MEMORY[0x1E69DE3D0];
LABEL_10:

  return v4;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  traitCollection = [(EKShareeViewController *)self traitCollection];
  v7 = EKUIUsesLargeTextLayout(traitCollection);

  if (v7 || [(EKShareeViewController *)self _subitemAtRow:section]!= 2)
  {
    return *MEMORY[0x1E69DE3D0];
  }

  [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:28.0];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[EKShareeViewController _subitemAtRow:](self, "_subitemAtRow:", [pathCopy section]);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v15 = [viewCopy cellForRowAtIndexPath:pathCopy];
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

    tableView = [(EKShareeViewController *)self tableView];
    [(EKIdentityViewController *)tableView deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_12;
  }

  if (!v7)
  {
    v12 = [EKIdentityViewController alloc];
    sharee = [(EKShareeViewController *)self sharee];
    tableView = [(EKIdentityViewController *)v12 initWithIdentity:sharee];

    navigationController = [(EKShareeViewController *)self navigationController];
    [navigationController pushViewController:tableView animated:1];

    goto LABEL_12;
  }

  if (v7 == 2)
  {
    tableView2 = [(EKShareeViewController *)self tableView];
    [tableView2 selectRowAtIndexPath:0 animated:1 scrollPosition:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      tableView = objc_loadWeakRetained(&self->_delegate);
      [(EKIdentityViewController *)tableView shareeViewController:self didCompleteWithAction:1];
LABEL_12:
    }
  }

LABEL_13:
}

- (void)removeClicked:(id)clicked
{
  clickedCopy = clicked;
  sharee = [(EKShareeViewController *)self sharee];
  v6 = DisplayStringForIdentity(sharee, 1, 0);

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

  popoverPresentationController = [(UIAlertController *)self->_removeAlertController popoverPresentationController];
  [popoverPresentationController setSourceView:clickedCopy];

  v25 = *MEMORY[0x1E695F050];
  v26 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v28 = *(MEMORY[0x1E695F050] + 24);
  popoverPresentationController2 = [(UIAlertController *)self->_removeAlertController popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v25, v26, v27, v28}];

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