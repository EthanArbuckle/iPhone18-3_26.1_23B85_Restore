@interface EditShortcutViewController
- (BOOL)_isMapUserShortcut;
- (BOOL)_shouldAllowMeCardWriteback;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)shouldAutoSaveEdit;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (EditShortcutViewController)initWithShortcutEditSession:(id)session;
- (ShortcutEditSessionController)sessionController;
- (double)preferredWidth;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_cellForAddress;
- (id)_cellForContactsAtIndexPath:(id)path;
- (id)_cellForLabel;
- (id)_cellForOpenMeCard;
- (id)_cellForTypeAtIndexPath:(id)path;
- (id)_cellForWriteToMeCard;
- (id)_configureCellForAddSharingContactAction:(id)action;
- (id)_editShortcutTypeForIndex:(unint64_t)index;
- (id)_footerStringForShortcutType:(int64_t)type;
- (id)_meCardTextForType:(int64_t)type;
- (id)_sectionForIndex:(unint64_t)index;
- (id)_shortcutTypes;
- (id)_titleForSection:(int64_t)section;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_typeForIndex:(unint64_t)index;
- (void)_addPersonAction;
- (void)_buildContent;
- (void)_cancelAction:(id)action;
- (void)_close;
- (void)_doneAction:(id)action;
- (void)_openContact;
- (void)_refineAction;
- (void)_removeAction;
- (void)_removeContact:(id)contact fromSection:(int64_t)section;
- (void)_save;
- (void)_updateWithType:(int64_t)type;
- (void)didBecomeCurrent;
- (void)didDismissByGesture;
- (void)didEditContactWithAddressAdded:(BOOL)added;
- (void)meCardWritebackToggled:(id)toggled;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setupSubviews;
- (void)shoulDismissForVerticalSwipe_nonUIKitCardsOnly;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EditShortcutViewController

- (ShortcutEditSessionController)sessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);

  return WeakRetained;
}

- (void)meCardWritebackToggled:(id)toggled
{
  toggledCopy = toggled;
  shortcut = [(EditShortcutViewController *)self shortcut];
  isOn = [toggledCopy isOn];

  [shortcut setIsMeCardWritebackEnabled:isOn];
}

- (void)didDismissByGesture
{
  v4.receiver = self;
  v4.super_class = EditShortcutViewController;
  [(ContaineeViewController *)&v4 didDismissByGesture];
  sessionController = [(EditShortcutViewController *)self sessionController];
  [sessionController presentedViewControllerWasDismissedBySwiping:self];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5.receiver = self;
  v5.super_class = EditShortcutViewController;
  [(SimpleContaineeViewController *)&v5 scrollViewDidScroll:scrollCopy];
  if (([scrollCopy isDragging] & 1) != 0 || objc_msgSend(scrollCopy, "isDecelerating"))
  {
    [(ShortcutEditSession *)self->_shortcutEditSession setDidResignTitleFocus:1];
    [(EditShortcutTitleCell *)self->_editTitleCell resignResponder];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  [(EditShortcutTitleCell *)self->_editTitleCell resignResponder];
  if ([(EditShortcutViewController *)self shouldAutoSaveEdit])
  {
    shortcutEditSession = self->_shortcutEditSession;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1008B0B70;
    v6[3] = &unk_101661738;
    v6[4] = self;
    [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v6];
  }

  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  UInteger = GEOConfigGetUInteger();
  v14 = [v12 length];
  if (v14 > UInteger)
  {
    v15 = [v12 substringWithRange:{0, UInteger}];

    [fieldCopy setText:v15];
    v12 = v15;
  }

  v16 = v14 <= UInteger;
  [(ShortcutEditSession *)self->_shortcutEditSession setName:v12];
  v17 = [v12 length] != 0;
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:v17];

  return v16;
}

- (id)_cellForWriteToMeCard
{
  v3 = [UITableViewCell alloc];
  stringValue = [&off_1016E7688 stringValue];
  v5 = [v3 initWithStyle:0 reuseIdentifier:stringValue];

  v6 = +[AddressBookManager sharedManager];
  meCard = [v6 meCard];

  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (meCard)
  {
    v10 = @"[Shortcut] Add to Contact Card";
  }

  else
  {
    v10 = @"[Shortcut] Create a Contact Card";
  }

  v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
  textLabel = [v5 textLabel];
  [textLabel setText:v11];

  v13 = [[UISwitch alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  shortcut = [(EditShortcutViewController *)self shortcut];
  [v13 setOn:{objc_msgSend(shortcut, "isMeCardWritebackEnabled")}];
  [v13 addTarget:self action:"meCardWritebackToggled:" forControlEvents:4096];
  [v5 setAccessoryView:v13];
  [v5 setAccessibilityIdentifier:@"EditShortcutSaveToMeCardCell"];
  textLabel2 = [v5 textLabel];
  [textLabel2 setAccessibilityIdentifier:@"EditShortcutSaveToMeCardCellLabel"];

  return v5;
}

- (id)_cellForOpenMeCard
{
  v3 = [EditShortcutMeCardCell alloc];
  stringValue = [&off_1016E7670 stringValue];
  v5 = [(EditShortcutMeCardCell *)v3 initWithStyle:0 reuseIdentifier:stringValue];

  shortcut = [(EditShortcutViewController *)self shortcut];
  v7 = -[EditShortcutViewController _meCardTextForType:](self, "_meCardTextForType:", [shortcut type]);
  [(EditShortcutMeCardCell *)v5 setMeCardString:v7];

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1008B0FAC;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, &location);
  [(EditShortcutMeCardCell *)v5 setOpenMeCardHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v5;
}

- (id)_cellForAddress
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [[MacEditShortcutAddressCell alloc] initWithStyle:0 reuseIdentifier:0];
    shortcut = [(EditShortcutViewController *)self shortcut];
    geoMapItem = [shortcut geoMapItem];
    addressObject = [geoMapItem addressObject];
    v7 = [addressObject fullAddressWithMultiline:1];
    [(MacEditShortcutAddressCell *)v3 setAddress:v7];
  }

  else
  {
    v8 = [UITableViewCell alloc];
    stringValue = [&off_1016E7658 stringValue];
    v3 = [v8 initWithStyle:0 reuseIdentifier:stringValue];

    textLabel = [(MacEditShortcutAddressCell *)v3 textLabel];
    [textLabel setNumberOfLines:0];

    shortcut2 = [(EditShortcutViewController *)self shortcut];
    geoMapItem2 = [shortcut2 geoMapItem];
    addressObject2 = [geoMapItem2 addressObject];
    v14 = [addressObject2 fullAddressWithMultiline:1];
    textLabel2 = [(MacEditShortcutAddressCell *)v3 textLabel];
    [textLabel2 setText:v14];

    if (sub_10000FA08(self) == 5)
    {
      +[UIColor labelColor];
    }

    else
    {
      +[UIColor secondaryLabelColor];
    }
    v16 = ;
    textLabel3 = [(MacEditShortcutAddressCell *)v3 textLabel];
    [textLabel3 setTextColor:v16];

    [(MacEditShortcutAddressCell *)v3 setAccessibilityIdentifier:@"EditShortcutAddressCell"];
    shortcut = [(MacEditShortcutAddressCell *)v3 textLabel];
    [shortcut setAccessibilityIdentifier:@"EditShortCutAddressCellLabel"];
  }

  return v3;
}

- (id)_configureCellForAddSharingContactAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(SimpleContaineeAction);
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"[Shortcut] Add Person" value:@"localized string not found" table:0];
  [(SimpleContaineeAction *)v5 setTitle:v7];

  [(SimpleContaineeAction *)v5 setGlyph:@"person.circle.fill"];
  [(SimpleContaineeAction *)v5 setGlyphStyle:2];
  v8 = [(SimpleContaineeViewController *)self configurationForAction:v5];
  [actionCopy setContentConfiguration:v8];

  [actionCopy setAccessibilityIdentifier:@"EditShortcutAddPersonCell"];
  textLabel = [actionCopy textLabel];
  [textLabel setAccessibilityIdentifier:@"EditShortCutAddPersonCellLabel"];

  return actionCopy;
}

- (id)_cellForContactsAtIndexPath:(id)path
{
  pathCopy = path;
  contacts = [(ShortcutEditSession *)self->_shortcutEditSession contacts];
  v6 = [contacts count];
  v7 = [pathCopy row];

  if (v6 <= v7)
  {
    v10 = 0;
  }

  else
  {
    contacts2 = [(ShortcutEditSession *)self->_shortcutEditSession contacts];
    v9 = [contacts2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    v10 = [[EditShortcutContactCell alloc] initWithStyle:0 reuseIdentifier:0];
    [(EditShortcutContactCell *)v10 setContactValue:v9];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1008B14B4;
    v13[3] = &unk_101661480;
    objc_copyWeak(&v16, &location);
    v11 = v9;
    v14 = v11;
    v15 = pathCopy;
    [(EditShortcutContactCell *)v10 setAction:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)_cellForTypeAtIndexPath:(id)path
{
  v4 = -[EditShortcutViewController _editShortcutTypeForIndex:](self, "_editShortcutTypeForIndex:", [path row]);
  v5 = [EditShortcutTypeCell alloc];
  shortcut = [(EditShortcutViewController *)self shortcut];
  v7 = [(EditShortcutTypeCell *)v5 initWithShortcut:shortcut shortcutType:v4];

  shortcut2 = [(EditShortcutViewController *)self shortcut];
  -[EditShortcutTypeCell setChecked:](v7, "setChecked:", [shortcut2 type] == objc_msgSend(v4, "type"));

  return v7;
}

- (id)_cellForLabel
{
  editTitleCell = self->_editTitleCell;
  if (editTitleCell)
  {
    [(EditShortcutTitleCell *)editTitleCell updateContent];
    v4 = self->_editTitleCell;
  }

  else
  {
    v5 = [EditShortcutTitleCell alloc];
    shortcut = [(EditShortcutViewController *)self shortcut];
    v4 = [(EditShortcutTitleCell *)v5 initWithShortcut:shortcut delegate:self];

    objc_storeStrong(&self->_editTitleCell, v4);
  }

  return v4;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  section = [path section];

  [(EditShortcutViewController *)self _typeForIndex:section];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[EditShortcutViewController _typeForIndex:](self, "_typeForIndex:", [pathCopy section]);
  if (![(EditShortcutViewController *)self _isMapUserShortcut]&& v8 == 2)
  {
    sessionController = [(EditShortcutViewController *)self sessionController];
    [sessionController showAddShortcut:self->_shortcutEditSession];

    goto LABEL_4;
  }

  if (v8 == 6)
  {
    v12.receiver = self;
    v12.super_class = EditShortcutViewController;
    [(SimpleContaineeViewController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    goto LABEL_4;
  }

  if (v8 == 4)
  {
    [(EditShortcutViewController *)self _addPersonAction];
    goto LABEL_4;
  }

  if (v8 != 3)
  {
LABEL_4:
    actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
    [actionsTableView deselectRowAtIndexPath:pathCopy animated:1];
    goto LABEL_5;
  }

  actionsTableView = -[EditShortcutViewController _editShortcutTypeForIndex:](self, "_editShortcutTypeForIndex:", [pathCopy row]);
  type = [actionsTableView type];
  if (type <= 5 && ((1 << type) & 0x2C) != 0 && !+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1008B18F4;
    v13[3] = &unk_10165F3F0;
    objc_copyWeak(&v16, &location);
    actionsTableView = actionsTableView;
    v14 = actionsTableView;
    v15 = pathCopy;
    [CNContactStore promptForContactsAccessIfNeededBeforePerforming:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    -[EditShortcutViewController _updateWithType:](self, "_updateWithType:", [actionsTableView type]);
  }

LABEL_5:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v11 = v6 == 3 || (v7 = v6, v6 == 4) && (v8 = [pathCopy row], -[ShortcutEditSession contacts](self->_shortcutEditSession, "contacts"), v9 = v6 = -[EditShortcutViewController _typeForIndex:](self, "_typeForIndex:", [pathCopy section]);

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[EditShortcutViewController _typeForIndex:](self, "_typeForIndex:", [pathCopy section]);
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1:
        _cellForLabel = [(EditShortcutViewController *)self _cellForLabel];
        goto LABEL_18;
      case 2:
        _cellForLabel = [(EditShortcutViewController *)self _cellForAddress];
        goto LABEL_18;
      case 3:
        _cellForLabel = [(EditShortcutViewController *)self _cellForTypeAtIndexPath:pathCopy];
        goto LABEL_18;
    }

LABEL_13:
    _cellForLabel = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    goto LABEL_18;
  }

  if (v8 > 5)
  {
    if (v8 == 6)
    {
      v16.receiver = self;
      v16.super_class = EditShortcutViewController;
      _cellForLabel = [(SimpleContaineeViewController *)&v16 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
      goto LABEL_18;
    }

    if (v8 == 7)
    {
      _cellForLabel = [(EditShortcutViewController *)self _cellForWriteToMeCard];
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v8 != 4)
  {
    _cellForLabel = [(EditShortcutViewController *)self _cellForOpenMeCard];
LABEL_18:
    v13 = _cellForLabel;
    goto LABEL_19;
  }

  contacts = [(ShortcutEditSession *)self->_shortcutEditSession contacts];
  v11 = [contacts count];
  v12 = [pathCopy row];

  if (v11 > v12)
  {
    _cellForLabel = [(EditShortcutViewController *)self _cellForContactsAtIndexPath:pathCopy];
    goto LABEL_18;
  }

  v15 = [viewCopy dequeueReusableCellWithIdentifier:@"EditShortcutActionCell" forIndexPath:pathCopy];
  v13 = [(EditShortcutViewController *)self _configureCellForAddSharingContactAction:v15];

LABEL_19:

  return v13;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (sub_10000FA08(self) == 5)
  {
    goto LABEL_2;
  }

  v9 = [(EditShortcutViewController *)self _typeForIndex:section];
  v10 = [viewCopy footerViewForSection:section];
  if (v9 <= 7)
  {
    v4 = [@"EditShortcutSectionType" stringByAppendingString:*(&off_10162D2B0 + v9)];
  }

  v11 = [v4 stringByAppendingString:@"Footer"];
  [v10 setAccessibilityIdentifier:v11];

  if (v9 == 2)
  {
    if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      shortcut = [(EditShortcutViewController *)self shortcut];
      v23 = -[EditShortcutViewController _meCardTextForType:](self, "_meCardTextForType:", [shortcut type]);
LABEL_16:
      v8 = v23;
      goto LABEL_17;
    }

LABEL_2:
    v8 = 0;
    goto LABEL_18;
  }

  if (v9 != 7)
  {
    if (v9 == 4)
    {
      v12 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
      v13 = +[NSBundle mainBundle];
      shortcut = v13;
      if (v12)
      {
        v15 = @"[Pin] Share ETA Footer";
      }

      else
      {
        v15 = @"[Shortcut] Share ETA Footer";
      }

      v23 = [v13 localizedStringForKey:v15 value:@"localized string not found" table:0];
      goto LABEL_16;
    }

    goto LABEL_2;
  }

  v16 = +[AddressBookManager sharedManager];
  meCard = [v16 meCard];

  if (meCard)
  {
    goto LABEL_2;
  }

  v18 = [NSString alloc];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"[Shortcut] Contact Card privacy footer" value:@"localized string not found" table:0];
  shortcut = [v18 initWithString:v20];

  shortcut2 = [(EditShortcutViewController *)self shortcut];
  v22 = -[EditShortcutViewController _footerStringForShortcutType:](self, "_footerStringForShortcutType:", [shortcut2 type]);
  v8 = [NSString stringWithFormat:v22, shortcut];

LABEL_17:
LABEL_18:

  return v8;
}

- (id)_footerStringForShortcutType:(int64_t)type
{
  switch(type)
  {
    case 2:
      v3 = @"[Shortcut] Add home to Contact Card footer";
      goto LABEL_7;
    case 5:
      v3 = @"[Shortcut] Add school to Contact Card footer";
      goto LABEL_7;
    case 3:
      v3 = @"[Shortcut] Add work to Contact Card footer";
LABEL_7:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_titleForSection:(int64_t)section
{
  v4 = [(EditShortcutViewController *)self _typeForIndex:section];
  v5 = &stru_1016631F0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v11 = +[NSBundle mainBundle];
      v5 = v11;
      v12 = @"[Shortcut] Type";
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_17;
      }

      v11 = +[NSBundle mainBundle];
      v5 = v11;
      v12 = @"[Shortcut] Share ETA";
    }

LABEL_15:
    v10 = [(__CFString *)v11 localizedStringForKey:v12 value:@"localized string not found" table:0];
    goto LABEL_16;
  }

  if (v4 == 1)
  {
    if (sub_10000FA08(self) == 5)
    {
      goto LABEL_17;
    }

    v11 = +[NSBundle mainBundle];
    v5 = v11;
    v12 = @"[Shortcut] Label";
    goto LABEL_15;
  }

  if (v4 == 2)
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 localizedStringForKey:@"[Shortcut] Address" value:@"localized string not found" table:0];

    if (sub_10000FA08(self) != 5)
    {
      shortcut = [(EditShortcutViewController *)self shortcut];
      type = [shortcut type];

      if (type <= 5 && ((1 << type) & 0x2C) != 0 && !+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
      {
        v9 = +[NSBundle mainBundle];
        v10 = [v9 localizedStringForKey:@"[Shortcut] Contact Card" value:@"localized string not found" table:0];

LABEL_16:
        v5 = v10;
      }
    }
  }

LABEL_17:

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (sub_10000FA08(self) != 5)
  {
    return UITableViewAutomaticDimension;
  }

  v6 = [(EditShortcutViewController *)self _titleForSection:section];
  if ([v6 isEqualToString:&stru_1016631F0])
  {
    if ([(EditShortcutViewController *)self _typeForIndex:section]== 1)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 14.0;
    }
  }

  else
  {
    v7 = UITableViewAutomaticDimension;
  }

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (sub_10000FA08(self) == 5)
  {
    goto LABEL_2;
  }

  v9 = [(EditShortcutViewController *)self _typeForIndex:section];
  v10 = [viewCopy footerViewForSection:section];
  if (v9 <= 7)
  {
    v4 = [@"EditShortcutSectionType" stringByAppendingString:*(&off_10162D2B0 + v9)];
  }

  v11 = [v4 stringByAppendingString:@"Footer"];
  [v10 setAccessibilityIdentifier:v11];

  v12 = [(EditShortcutViewController *)self tableView:viewCopy titleForFooterInSection:section];

  if (v12)
  {
    v8 = objc_alloc_init(UITableViewHeaderFooterView);
    v13 = +[UIListContentConfiguration footerConfiguration];
    v14 = [(EditShortcutViewController *)self tableView:viewCopy titleForFooterInSection:section];
    [v13 setText:v14];

    [v8 setContentConfiguration:v13];
  }

  else
  {
    if (v9 != 7 || (+[AddressBookManager sharedManager](AddressBookManager, "sharedManager"), v16 = objc_claimAutoreleasedReturnValue(), [v16 meCard], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, !v17))
    {
LABEL_2:
      v8 = 0;
      goto LABEL_8;
    }

    v18 = [NSString alloc];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"[Shortcut] Contact Card link" value:@"localized string not found" table:0];
    v13 = [v18 initWithString:v20];

    shortcut = [(EditShortcutViewController *)self shortcut];
    v22 = -[EditShortcutViewController _footerStringForShortcutType:](self, "_footerStringForShortcutType:", [shortcut type]);

    if (v22)
    {
      v23 = [viewCopy _maps_footerViewWithTitle:v22 linkText:v13 target:self selector:"_openContact"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v8 = v24;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_8:

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(EditShortcutViewController *)self _typeForIndex:section];
  v8 = [(EditShortcutViewController *)self _titleForSection:section];
  if (sub_10000FA08(self) == 5)
  {
    if ([v8 isEqualToString:&stru_1016631F0])
    {
      v9 = objc_alloc_init(UIView);
    }

    else
    {
      v9 = [[MacEditShortcutHeaderFooterView alloc] initWithTitle:v8 reuseIdentifier:@"kMacEditShortcutHeaderFooterIdentifier"];
    }

    v17 = v9;
  }

  else
  {
    if (v7 == 2)
    {
      shortcut = [(EditShortcutViewController *)self shortcut];
      type = [shortcut type];
      if (type <= 5 && ((1 << type) & 0x2C) != 0)
      {
        v12 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];

        if ((v12 & 1) == 0)
        {
          v13 = +[NSBundle mainBundle];
          v14 = [v13 localizedStringForKey:@"[Shortcut] Contact Card" value:@"localized string not found" table:0];

          v15 = [viewCopy _maps_groupedHeaderViewWithTitle:v8 buttonTitle:v14 target:self selector:"_openContact"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          v18 = [@"EditShortcutSectionType" stringByAppendingString:@"Address"];
          [(MacEditShortcutHeaderFooterView *)v17 updateAXIdentifiersWithPrefix:v18];

          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    v19 = [viewCopy _maps_groupedHeaderViewWithTitle:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v17 = v20;

    if (v7 <= 7)
    {
      v19 = [@"EditShortcutSectionType" stringByAppendingString:*(&off_10162D2B0 + v7)];
    }

    [(MacEditShortcutHeaderFooterView *)v17 updateAXIdentifiersWithPrefix:v19];
  }

LABEL_21:

  return v17;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(EditShortcutViewController *)self _typeForIndex:section];
  if (v7 == 6)
  {
    v11.receiver = self;
    v11.super_class = EditShortcutViewController;
    v9 = [(SimpleContaineeViewController *)&v11 tableView:viewCopy numberOfRowsInSection:section];
  }

  else
  {
    if (v7 == 4)
    {
      contacts = [(ShortcutEditSession *)self->_shortcutEditSession contacts];
      v9 = [contacts count] + 1;
    }

    else
    {
      if (v7 != 3)
      {
        v9 = 1;
        goto LABEL_9;
      }

      contacts = [(EditShortcutViewController *)self _shortcutTypes];
      v9 = [contacts count];
    }
  }

LABEL_9:

  return v9;
}

- (void)_openContact
{
  meCardPunchOutURL = [(AddressBookManager *)self->_sharedManager meCardPunchOutURL];
  v3 = +[UIApplication sharedApplication];
  [v3 _maps_openURL:meCardPunchOutURL options:0 completionHandler:0];

  [(EditShortcutViewController *)self _close];
}

- (void)_addPersonAction
{
  sessionController = [(EditShortcutViewController *)self sessionController];
  [sessionController showAddContact:self->_shortcutEditSession];

  [GEOAPPortal captureUserAction:2078 target:253 value:0];
}

- (void)_refineAction
{
  sessionController = [(EditShortcutViewController *)self sessionController];
  [sessionController showRefineLocation:self->_shortcutEditSession];

  [GEOAPPortal captureUserAction:2063 target:253 value:0];
}

- (void)_removeAction
{
  sessionController = [(EditShortcutViewController *)self sessionController];
  [sessionController removeShortcut:self->_shortcutEditSession];

  [GEOAPPortal captureUserAction:2060 target:253 value:0];
}

- (void)_doneAction:(id)action
{
  actionCopy = action;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    objc_initWeak(&location, self);
    shortcutEditSession = self->_shortcutEditSession;
    titleText = [(EditShortcutTitleCell *)self->_editTitleCell titleText];
    [(ShortcutEditSession *)shortcutEditSession setName:titleText];

    v7 = self->_shortcutEditSession;
    v8 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1008B2BBC;
    v14[3] = &unk_1016619A8;
    objc_copyWeak(&v15, &location);
    [(ShortcutEditSession *)v7 saveWithCompletion:v14];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = self->_shortcutEditSession;
    titleText2 = [(EditShortcutTitleCell *)self->_editTitleCell titleText];
    [(ShortcutEditSession *)v9 setName:titleText2];

    v11 = self->_shortcutEditSession;
    v8 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1008B2CC0;
    v12[3] = &unk_1016619A8;
    objc_copyWeak(&v13, &location);
    [(ShortcutEditSession *)v11 saveWithCompletion:v12];
  }

  objc_destroyWeak(v8 + 4);
  objc_destroyWeak(&location);
  [GEOAPPortal captureUserAction:2053 target:0 value:0];
}

- (void)_cancelAction:(id)action
{
  if ([(NSString *)self->_originalShortcutName length])
  {
    [(ShortcutEditSession *)self->_shortcutEditSession setName:self->_originalShortcutName];
  }

  [(ShortcutEditSession *)self->_shortcutEditSession setType:self->_originalShortcutType];

  [(EditShortcutViewController *)self _close];
}

- (void)_close
{
  self->_dismissed = 1;
  sessionController = [(EditShortcutViewController *)self sessionController];
  [sessionController closeViewController:self];
}

- (id)_meCardTextForType:(int64_t)type
{
  switch(type)
  {
    case 2:
      v3 = @"[Shortcut] Home Address Footer";
      goto LABEL_7;
    case 5:
      v3 = @"[Shortcut] School Address Footer";
      goto LABEL_7;
    case 3:
      v3 = @"[Shortcut] Work Address Footer";
LABEL_7:
      v4 = +[NSBundle mainBundle];
      v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_removeContact:(id)contact fromSection:(int64_t)section
{
  contactCopy = contact;
  contacts = [(ShortcutEditSession *)self->_shortcutEditSession contacts];
  v8 = [contacts indexOfObject:contactCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [NSIndexPath indexPathForRow:v8 inSection:section];
    [(ShortcutEditSession *)self->_shortcutEditSession removeSharing:contactCopy];
    actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
    v12 = v9;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [actionsTableView deleteRowsAtIndexPaths:v11 withRowAnimation:100];

    [GEOAPPortal captureUserAction:2079 target:253 value:0];
  }
}

- (unint64_t)_typeForIndex:(unint64_t)index
{
  if ([(NSArray *)self->_sections count]<= index)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  type = [v5 type];

  return type;
}

- (id)_sectionForIndex:(unint64_t)index
{
  if ([(NSArray *)self->_sections count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_sections objectAtIndexedSubscript:index];
  }

  return v5;
}

- (BOOL)_shouldAllowMeCardWriteback
{
  if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  shortcut = [(EditShortcutViewController *)self shortcut];
  if ([shortcut isPersisted] && !self->_needsMeCardUpdate)
  {
    goto LABEL_9;
  }

  if (!+[AddressBookManager addressBookAllowed])
  {
    goto LABEL_9;
  }

  v4 = +[AddressBookManager sharedManager];
  shouldAllowMeCardWrites = [v4 shouldAllowMeCardWrites];

  if (!shouldAllowMeCardWrites)
  {
    goto LABEL_9;
  }

  type = [shortcut type];
  if (type <= 6)
  {
    if (((1 << type) & 0x2C) != 0)
    {
      if (!self->_needsMeCardUpdate)
      {
        LOBYTE(v4) = 1;
        goto LABEL_11;
      }

      BOOL = GEOConfigGetBOOL();
      LOBYTE(v4) = 1;
      goto LABEL_10;
    }

    if (((1 << type) & 0x43) != 0)
    {
LABEL_9:
      BOOL = 0;
      LOBYTE(v4) = 0;
LABEL_10:
      [shortcut setIsMeCardWritebackEnabled:BOOL];
    }
  }

LABEL_11:

  return v4 & 1;
}

- (void)_buildContent
{
  v3 = sub_10000FA08(self);
  v4 = [NSMutableArray alloc];
  v5 = [EditShortcutSection sectionWithType:1];
  v6 = [EditShortcutSection sectionWithType:2];
  v7 = [v4 initWithObjects:{v5, v6, 0}];

  v8 = objc_alloc_init(NSMutableArray);
  if (v3 == 5 && [(EditShortcutViewController *)self allowsOpenContactAction]&& !+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v9 = [EditShortcutSection sectionWithType:5];
    [v7 addObject:v9];
  }

  if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if (![(EditShortcutViewController *)self _isMapUserShortcut])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  shortcutEditSession = [(EditShortcutViewController *)self shortcutEditSession];
  canChangeType = [shortcutEditSession canChangeType];

  if (canChangeType)
  {
LABEL_9:
    v12 = [EditShortcutSection sectionWithType:3];
    [v7 addObject:v12];
  }

LABEL_10:
  if ([(EditShortcutViewController *)self _shouldAllowMeCardWriteback])
  {
    v13 = [EditShortcutSection sectionWithType:7];
    [v7 addObject:v13];
  }

  if ([(EditShortcutViewController *)self allowsAddPersonAction])
  {
    v14 = [EditShortcutSection sectionWithType:4];
    [v7 addObject:v14];
  }

  if (v3 == 5 && [(EditShortcutViewController *)self allowsOpenContactAction]&& !+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v15 = objc_alloc_init(SimpleContaineeAction);
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[Shortcut] Open My Card" value:@"localized string not found" table:0];
    [(SimpleContaineeAction *)v15 setTitle:v17];

    [(SimpleContaineeAction *)v15 setGlyph:@"person.circle"];
    [(SimpleContaineeAction *)v15 setAccessibilityIdentifier:@"EditShortcutMeCardActionCell"];
    [(SimpleContaineeAction *)v15 setLabelAccessibilityIdentifier:@"EditShortcutMeCardActionLabel"];
    objc_initWeak(&location, self);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1008B3914;
    v39[3] = &unk_101661B98;
    objc_copyWeak(&v40, &location);
    [(SimpleContaineeAction *)v15 setAction:v39];
    [v8 addObject:v15];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  if (!+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if ([(EditShortcutViewController *)self _isMapUserShortcut])
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ([(ShortcutEditSession *)self->_shortcutEditSession alreadySaved])
  {
    shortcut = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      shortcut2 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
      isHomeWorkOrSchool = [shortcut2 isHomeWorkOrSchool];

      if (isHomeWorkOrSchool)
      {
LABEL_24:
        v22 = objc_alloc_init(SimpleContaineeAction);
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"[Shortcut] Refine Location" value:@"localized string not found" table:0];
        [(SimpleContaineeAction *)v22 setTitle:v24];

        [(SimpleContaineeAction *)v22 setGlyph:@"mappin.and.ellipse"];
        [(SimpleContaineeAction *)v22 setGlyphStyle:2];
        [(SimpleContaineeAction *)v22 setAccessibilityIdentifier:@"EditShortcutRefineLocationActionCell"];
        [(SimpleContaineeAction *)v22 setLabelAccessibilityIdentifier:@"EditShortcutRefineLocationActionLabel"];
        objc_initWeak(&location, self);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_1008B3958;
        v37[3] = &unk_101661B98;
        objc_copyWeak(&v38, &location);
        [(SimpleContaineeAction *)v22 setAction:v37];
        [v8 addObject:v22];
        objc_destroyWeak(&v38);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_25:
  if ([(EditShortcutViewController *)self allowsRemoveAction])
  {
    v25 = objc_alloc_init(SimpleContaineeAction);
    v26 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v27 = +[NSBundle mainBundle];
    v28 = v27;
    if (v26)
    {
      v29 = @"[Shortcut] Unpin";
    }

    else
    {
      v29 = @"[Shortcut] Remove Favorite";
    }

    v30 = [v27 localizedStringForKey:v29 value:@"localized string not found" table:0];
    [(SimpleContaineeAction *)v25 setTitle:v30];

    [(SimpleContaineeAction *)v25 setGlyph:@"trash.circle.fill"];
    [(SimpleContaineeAction *)v25 setGlyphStyle:3];
    [(SimpleContaineeAction *)v25 setStyle:1];
    [(SimpleContaineeAction *)v25 setAccessibilityIdentifier:@"EditShortcutRemoveActionCell"];
    [(SimpleContaineeAction *)v25 setLabelAccessibilityIdentifier:@"EditShortcutRemoveActionLabel"];
    objc_initWeak(&location, self);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1008B399C;
    v35[3] = &unk_101661B98;
    objc_copyWeak(&v36, &location);
    [(SimpleContaineeAction *)v25 setAction:v35];
    [v8 addObject:v25];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  [(SimpleContaineeViewController *)self setActions:v8];
  if ([v8 count])
  {
    v31 = [EditShortcutSection sectionWithType:6];
    [v7 addObject:v31];
  }

  v32 = [v7 copy];
  sections = self->_sections;
  self->_sections = v32;

  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView reloadData];
}

- (BOOL)_isMapUserShortcut
{
  shortcut = [(EditShortcutViewController *)self shortcut];
  v3 = [shortcut type] == 1;

  return v3;
}

- (id)_editShortcutTypeForIndex:(unint64_t)index
{
  _shortcutTypes = [(EditShortcutViewController *)self _shortcutTypes];
  if ([_shortcutTypes count] <= index)
  {
    [EditShortcutType shortcutWithType:0];
  }

  else
  {
    [_shortcutTypes objectAtIndexedSubscript:index];
  }
  v5 = ;

  return v5;
}

- (id)_shortcutTypes
{
  v2 = +[AddressBookManager addressBookAllowed];
  Integer = GEOConfigGetInteger();
  v4 = [EditShortcutType shortcutWithType:1];
  v5 = v4;
  if ((v2 & 1) != 0 || Integer != 1)
  {
    v7 = [EditShortcutType shortcutWithType:2, v4];
    v11[1] = v7;
    v8 = [EditShortcutType shortcutWithType:3];
    v11[2] = v8;
    v9 = [EditShortcutType shortcutWithType:5];
    v11[3] = v9;
    v6 = [NSArray arrayWithObjects:v11 count:4];
  }

  else
  {
    v12 = v4;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
  }

  return v6;
}

- (double)preferredWidth
{
  if (sub_10000FA08(self) == 5)
  {
    return 290.0;
  }

  v4.receiver = self;
  v4.super_class = EditShortcutViewController;
  [(SimpleContaineeViewController *)&v4 preferredWidth];
  return result;
}

- (void)_save
{
  if ([(ShortcutEditSession *)self->_shortcutEditSession canBeSaved])
  {
    shortcutEditSession = self->_shortcutEditSession;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1008B3D18;
    v4[3] = &unk_101661738;
    v4[4] = self;
    [(ShortcutEditSession *)shortcutEditSession saveWithCompletion:v4];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = EditShortcutViewController;
  [(SimpleContaineeViewController *)&v4 viewWillDisappear:disappear];
  if ([(EditShortcutViewController *)self shouldAutoSaveEdit])
  {
    [(EditShortcutViewController *)self _save];
  }
}

- (void)_updateWithType:(int64_t)type
{
  [(ShortcutEditSession *)self->_shortcutEditSession setType:?];
  if (type > 5 || ((1 << type) & 0x2C) == 0 || +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    self->_needsMeCardUpdate = 1;

    [(EditShortcutViewController *)self _buildContent];
    return;
  }

  shortcut = [(EditShortcutViewController *)self shortcut];
  geoMapItem = [shortcut geoMapItem];
  addressObject = [geoMapItem addressObject];
  cnPostalAddress = [addressObject cnPostalAddress];

  v8 = cnPostalAddress;
  if (cnPostalAddress)
  {
    switch(type)
    {
      case 2:
        v9 = &CNLabelHome;
        break;
      case 5:
        v9 = &CNLabelSchool;
        break;
      case 3:
        v9 = &CNLabelWork;
        break;
      default:
        v10 = 0;
        goto LABEL_16;
    }

    v10 = *v9;
LABEL_16:
    v11 = [CNLabeledValue labeledValueWithLabel:v10 value:cnPostalAddress];
    sessionController = [(EditShortcutViewController *)self sessionController];
    actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
    [sessionController showMeCardWithAddress:v11 from:actionsTableView];

    v8 = cnPostalAddress;
  }
}

- (void)didEditContactWithAddressAdded:(BOOL)added
{
  if (!added)
  {
    [(EditShortcutViewController *)self resetToMapItemType];
  }

  [(EditShortcutViewController *)self _buildContent];
  y = CGPointZero.y;
  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView setContentOffset:{CGPointZero.x, y}];
}

- (void)didBecomeCurrent
{
  v3.receiver = self;
  v3.super_class = EditShortcutViewController;
  [(ContaineeViewController *)&v3 didBecomeCurrent];
  [(EditShortcutViewController *)self _buildContent];
  if (![(ShortcutEditSession *)self->_shortcutEditSession didResignTitleFocus]&& ![(ShortcutEditSession *)self->_shortcutEditSession alreadySaved])
  {
    [(EditShortcutTitleCell *)self->_editTitleCell makeFirstResponder];
  }
}

- (void)shoulDismissForVerticalSwipe_nonUIKitCardsOnly
{
  v3.receiver = self;
  v3.super_class = EditShortcutViewController;
  [(ContaineeViewController *)&v3 shoulDismissForVerticalSwipe_nonUIKitCardsOnly];
  if (!self->_dismissed)
  {
    [(EditShortcutViewController *)self _close];
  }
}

- (void)setupSubviews
{
  v48.receiver = self;
  v48.super_class = EditShortcutViewController;
  [(SimpleContaineeViewController *)&v48 setupSubviews];
  headerView = [(ContaineeViewController *)self headerView];
  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) != 5)
  {
    v21 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(ModalCardHeaderView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[Shortcut] Details" value:@"localized string not found" table:0];
    [(ModalCardHeaderView *)v21 setTitle:v23];

    v7 = [MapsThemeButton buttonWithType:1];
    [v7 addTarget:self action:"_cancelAction:" forControlEvents:64];
    [(ModalCardHeaderView *)v21 setLeadingButton:v7];
    v10 = [MapsThemeButton buttonWithType:1];
    [v10 addTarget:self action:"_doneAction:" forControlEvents:64];
    [(ModalCardHeaderView *)v21 setTrailingButton:v10];
    [headerView addSubview:v21];
    modalHeaderView = self->_modalHeaderView;
    self->_modalHeaderView = v21;
    v25 = v21;

    topAnchor = [(ModalCardHeaderView *)v25 topAnchor];
    topAnchor2 = [headerView topAnchor];
    v46 = topAnchor;
    v44 = [topAnchor constraintEqualToAnchor:?];
    v50[0] = v44;
    leadingAnchor = [(ModalCardHeaderView *)v25 leadingAnchor];
    leadingAnchor2 = [headerView leadingAnchor];
    v43 = leadingAnchor;
    v41 = [leadingAnchor constraintEqualToAnchor:?];
    v50[1] = v41;
    trailingAnchor = [(ModalCardHeaderView *)v25 trailingAnchor];
    trailingAnchor2 = [headerView trailingAnchor];
    v40 = trailingAnchor;
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[2] = v16;
    bottomAnchor = [(ModalCardHeaderView *)v25 bottomAnchor];
    v47 = headerView;
    bottomAnchor2 = [headerView bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v50[3] = v19;
    v20 = [NSArray arrayWithObjects:v50 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  else
  {
    if ([(EditShortcutViewController *)self modalPresentationStyle]!= 2)
    {
      goto LABEL_7;
    }

    v4 = [UINavigationItem alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[Shortcut] Details" value:@"localized string not found" table:0];
    v7 = [v4 initWithTitle:v6];

    v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelAction:"];
    [v7 setLeftBarButtonItem:v8];

    v9 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_doneAction:"];
    [v7 setRightBarButtonItem:v9];

    v10 = objc_alloc_init(UINavigationBar);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 pushNavigationItem:v7 animated:0];
    headerView2 = [(ContaineeViewController *)self headerView];
    [headerView2 addSubview:v10];

    topAnchor3 = [v10 topAnchor];
    topAnchor2 = [headerView topAnchor];
    v46 = topAnchor3;
    v44 = [topAnchor3 constraintEqualToAnchor:?];
    v49[0] = v44;
    leadingAnchor3 = [v10 leadingAnchor];
    leadingAnchor2 = [headerView leadingAnchor];
    v43 = leadingAnchor3;
    v41 = [leadingAnchor3 constraintEqualToAnchor:?];
    v49[1] = v41;
    trailingAnchor3 = [v10 trailingAnchor];
    trailingAnchor2 = [headerView trailingAnchor];
    v40 = trailingAnchor3;
    v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor2];
    v49[2] = v16;
    bottomAnchor = [v10 bottomAnchor];
    v47 = headerView;
    bottomAnchor2 = [headerView bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[3] = v19;
    v20 = [NSArray arrayWithObjects:v49 count:4];
    [NSLayoutConstraint activateConstraints:v20];
  }

  headerView = v47;
LABEL_7:
  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView setAccessibilityIdentifier:@"EditShortcutActionsTable"];

  actionsTableView2 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView2 _setHeaderAndFooterViewsFloat:0];

  actionsTableView3 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"EditShortcutActionCell"];

  if (sub_10000FA08(self) == 5)
  {
    actionsTableView4 = [(SimpleContaineeViewController *)self actionsTableView];
    [actionsTableView4 setSeparatorStyle:0];

    view = [(EditShortcutViewController *)self view];
    widthAnchor = [view widthAnchor];
    LODWORD(v35) = 1144733696;
    v36 = [widthAnchor constraintEqualToConstant:290.0 priority:v35];
    [v36 setActive:1];
  }

  actionsTableView5 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView5 _maps_registerGroupedHeaderView];

  actionsTableView6 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView6 _maps_registerSelectableFooterView];

  actionsTableView7 = [(SimpleContaineeViewController *)self actionsTableView];
  [actionsTableView7 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMacEditShortcutHeaderFooterIdentifier"];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = EditShortcutViewController;
  [(SimpleContaineeViewController *)&v6 viewDidLoad];
  view = [(EditShortcutViewController *)self view];
  [view setAccessibilityIdentifier:@"EditShortcutView"];

  v4 = +[UIColor clearColor];
  view2 = [(EditShortcutViewController *)self view];
  [view2 setBackgroundColor:v4];
}

- (id)preferredFocusEnvironments
{
  actionsTableView = [(SimpleContaineeViewController *)self actionsTableView];
  v5 = actionsTableView;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)keyCommands
{
  v3 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
  {
    v6 = @"[Shortcut KeyCmd] Unpin";
  }

  else
  {
    v6 = @"[Shortcut KeyCmd] Remove Favorite";
  }

  v7 = [v4 localizedStringForKey:v6 value:@"localized string not found" table:0];

  v22.receiver = self;
  v22.super_class = EditShortcutViewController;
  keyCommands = [(ContaineeViewController *)&v22 keyCommands];
  v21 = +[NSBundle mainBundle];
  v20 = [v21 localizedStringForKey:@"[Shortcut KeyCmd] Done" value:@"localized string not found" table:0];
  v19 = [UIKeyCommand commandWithTitle:v20 image:0 action:"_doneAction:" input:@"\r" modifierFlags:0x100000 propertyList:0];
  v23[0] = v19;
  v18 = +[NSBundle mainBundle];
  v9 = [v18 localizedStringForKey:@"[Shortcut KeyCmd] Add Person" value:@"localized string not found" table:0];
  v10 = [UIKeyCommand commandWithTitle:v9 image:0 action:"_addPersonAction" input:@"a" modifierFlags:0x100000 propertyList:0];
  v23[1] = v10;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"[Shortcut KeyCmd] Refine Location" value:@"localized string not found" table:0];
  v13 = [UIKeyCommand commandWithTitle:v12 image:0 action:"_refineAction" input:@"r" modifierFlags:1572864 propertyList:0];
  v23[2] = v13;
  v14 = [UIKeyCommand commandWithTitle:v7 image:0 action:"_removeAction" input:@"\b" modifierFlags:0x100000 propertyList:0];
  v23[3] = v14;
  v15 = [NSArray arrayWithObjects:v23 count:4];
  v16 = [keyCommands arrayByAddingObjectsFromArray:v15];

  return v16;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_doneAction:" == action)
  {
    titleText = [(EditShortcutTitleCell *)self->_editTitleCell titleText];
    v9 = [titleText length] != 0;
  }

  else
  {
    if ("_addPersonAction" == action)
    {
      allowsAddPersonAction = [(EditShortcutViewController *)self allowsAddPersonAction];
    }

    else if ("_refineAction" == action)
    {
      allowsAddPersonAction = [(EditShortcutViewController *)self allowsRefineAction];
    }

    else if ("_removeAction" == action)
    {
      allowsAddPersonAction = [(EditShortcutViewController *)self allowsRemoveAction];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = EditShortcutViewController;
      allowsAddPersonAction = [(EditShortcutViewController *)&v11 canPerformAction:action withSender:senderCopy];
    }

    v9 = allowsAddPersonAction;
  }

  return v9;
}

- (BOOL)shouldAutoSaveEdit
{
  if (sub_10000FA08(self) == 5 && [(EditShortcutViewController *)self modalPresentationStyle]!= 2)
  {
    return ![(EditShortcutViewController *)self openingContactController];
  }

  else
  {
    return 0;
  }
}

- (EditShortcutViewController)initWithShortcutEditSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = EditShortcutViewController;
  v6 = [(EditShortcutViewController *)&v17 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v7 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    objc_storeStrong(&v7->_shortcutEditSession, session);
    shortcut = [(ShortcutEditSession *)v7->_shortcutEditSession shortcut];
    customName = [shortcut customName];
    originalShortcutName = v7->_originalShortcutName;
    v7->_originalShortcutName = customName;

    shortcut2 = [(ShortcutEditSession *)v7->_shortcutEditSession shortcut];
    v7->_originalShortcutType = [shortcut2 type];

    [(EditShortcutViewController *)v7 _buildContent];
    v14 = +[AddressBookManager sharedManager];
    sharedManager = v7->_sharedManager;
    v7->_sharedManager = v14;
  }

  return v7;
}

@end