@interface MFVIPSendersListTableViewController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (MFVIPSendersListTableViewController)initWithStyle:(int64_t)style;
- (UIBarButtonItem)dismissButtonItem;
- (double)preferredNoContentViewHeight;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_labelWithPreferenceStyleFormattingForString:(id)string;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addNewVIPSender;
- (void)_copyUnknownPersonForVIP:(id)p;
- (void)_dismissIfNeeded;
- (void)_refreshVIPSendersList;
- (void)_updateVIPSendersList:(id)list;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dismissContactPicker:(id)picker;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSectionCount:(int64_t)count;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MFVIPSendersListTableViewController

- (MFVIPSendersListTableViewController)initWithStyle:(int64_t)style
{
  v14.receiver = self;
  v14.super_class = MFVIPSendersListTableViewController;
  v3 = [(MFVIPSendersListTableViewController *)&v14 initWithStyle:style];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"VIP_EDIT" value:&stru_100662A88 table:@"Main"];
    [(MFVIPSendersListTableViewController *)v3 setTitle:v5];

    [(MFVIPSendersListTableViewController *)v3 setHidesBottomBarWhenPushed:1];
    v6 = +[VIPManager defaultInstance];
    sortedVIPs = [v6 sortedVIPs];
    v8 = [sortedVIPs mutableCopy];
    allVIPs = v3->_allVIPs;
    v3->_allVIPs = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[VIPManager defaultInstance];
    [v10 addObserver:v3 selector:"_updateVIPSendersList:" name:EMVIPsDidChangeNotification object:v11];

    if ([(NSMutableArray *)v3->_allVIPs count])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(MFVIPSendersListTableViewController *)v3 setSectionCount:v12];
  }

  return v3;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v16 viewDidLoad];
  [(MFVIPSendersListTableViewController *)self setClearsSelectionOnViewWillAppear:0];
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    dismissButtonItem = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:dismissButtonItem usingStyle:1];

    dismissButtonItem2 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    navigationItem = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:dismissButtonItem2];

    editButtonItem = [(MFVIPSendersListTableViewController *)self editButtonItem];
    navigationItem2 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:editButtonItem];

    tableView = [(MFVIPSendersListTableViewController *)self tableView];
    [tableView setScrollEnabled:1];

    tableView2 = [(MFVIPSendersListTableViewController *)self tableView];
    [tableView2 flashScrollIndicators];
  }

  else
  {
    navigationItem3 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:0];

    view = [(MFVIPSendersListTableViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    tableView3 = [(MFVIPSendersListTableViewController *)self tableView];
    tableView2 = tableView3;
    if ((interfaceOrientation - 1) > 1)
    {
      [tableView3 setScrollEnabled:1];

      tableView2 = [(MFVIPSendersListTableViewController *)self tableView];
      [tableView2 flashScrollIndicators];
    }

    else
    {
      [tableView3 setScrollEnabled:0];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v6 viewWillAppear:?];
  [(MFVIPSendersListTableViewController *)self focus:appearCopy];
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    mf_updatePreferredContentSizeBasedOnTableView = [(MFVIPSendersListTableViewController *)self mf_updatePreferredContentSizeBasedOnTableView];
    [(MFVIPSendersListTableViewController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v5 viewWillDisappear:?];
  if (([(MFVIPSendersListTableViewController *)self isBeingDismissed]& 1) != 0 || [(MFVIPSendersListTableViewController *)self isMovingFromParentViewController])
  {
    [(MFVIPSendersListTableViewController *)self unfocus:disappearCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v5 traitCollectionDidChange:changeCopy];
  [(MFVIPSendersListTableViewController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  if (self->_sectionCount == 1)
  {
    tableView = [(MFVIPSendersListTableViewController *)self tableView];
    [tableView setScrollEnabled:0];
  }

  v9.receiver = self;
  v9.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v10.receiver = self;
  v10.super_class = MFVIPSendersListTableViewController;
  [MFVIPSendersListTableViewController setEditing:"setEditing:animated:" animated:?];
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    if (editingCopy)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    dismissButtonItem = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:dismissButtonItem usingStyle:v7];
  }

  navigationItem = [(MFVIPSendersListTableViewController *)self navigationItem];
  [navigationItem setHidesBackButton:editingCopy animated:animatedCopy];
}

- (double)preferredNoContentViewHeight
{
  traitCollection = [(MFVIPSendersListTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraLarge);

  if (v5 == NSOrderedAscending)
  {
    return 203.5;
  }

  traitCollection2 = [(MFVIPSendersListTableViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, UIContentSizeCategoryAccessibilityLarge) == NSOrderedAscending;

  return dbl_1004FC630[v8];
}

- (void)setSectionCount:(int64_t)count
{
  if (self->_sectionCount != count)
  {
    self->_sectionCount = count;
    [(MFVIPSendersListTableViewController *)self preferredContentSize];
    v7 = v6;
    v8 = 0.0;
    if (count == 1)
    {
      [(MFVIPSendersListTableViewController *)self preferredNoContentViewHeight];
      v8 = v9;
    }

    [(MFVIPSendersListTableViewController *)self setPreferredContentSize:v7, v8];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(MFVIPSendersListTableViewController *)self sectionCount]!= 2)
  {
    return 0;
  }

  if (section)
  {
    return 1;
  }

  return [(NSMutableArray *)self->_allVIPs count]+ 1;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  LOBYTE(self) = section < ([(MFVIPSendersListTableViewController *)self sectionCount]- 1);

  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell"];
  if (!v8)
  {
    v8 = [[MFTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  [(MFTableViewCell *)v8 setSelectionStyle:1];
  [(MFTableViewCell *)v8 setAccessoryType:0];
  v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:2];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10023A1CC;
  v17[3] = &unk_100656370;
  objc_copyWeak(&v22, &location);
  v18 = v9;
  v10 = pathCopy;
  v19 = v10;
  v11 = viewCopy;
  v20 = v11;
  v12 = v8;
  v21 = v12;
  v13 = v9;
  [(MFTableViewCell *)v12 mf_updateContentConfigurationWithBlock:v17];
  v14 = v21;
  v15 = v12;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v15;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sectionCount = [(MFVIPSendersListTableViewController *)self sectionCount];
  v6 = 0;
  if (section == 1 && sectionCount >= 2)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"VIP_CUSTOM_ALERT_EXPLANATION" value:&stru_100662A88 table:@"Main"];
  }

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v5 = [(MFVIPSendersListTableViewController *)self sectionCount:view];
  result = 0.0;
  if (v5 == 1)
  {
    [(MFVIPSendersListTableViewController *)self preferredContentSize];
    return v7;
  }

  return result;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = pathCopy;
  if (style == 1)
  {
    v11 = -[NSMutableArray objectAtIndex:](self->_allVIPs, "objectAtIndex:", [pathCopy row]);
    identifier = [v11 identifier];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023A818;
    v16[3] = &unk_10064C6B0;
    v16[4] = self;
    v17 = v10;
    v18 = viewCopy;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10023A8EC;
    v14[3] = &unk_10064C570;
    v15 = identifier;
    v13 = identifier;
    [v18 _performBatchUpdates:v16 completion:v14];
  }
}

- (void)_dismissIfNeeded
{
  if (![(NSMutableArray *)self->_allVIPs count])
  {

    [(MFVIPSendersListTableViewController *)self dismissViewControllerAnimated:1 completion:&stru_100656390];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[MFVIPSendersListTableViewController sectionCount](self, "sectionCount") < 2 || [pathCopy section] || (v6 = objc_msgSend(pathCopy, "row"), v6 != -[NSMutableArray count](self->_allVIPs, "count")))
  {
    section = [pathCopy section];
    v7 = section != [(MFVIPSendersListTableViewController *)self sectionCount]- 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(MFVIPSendersListTableViewController *)self sectionCount]< 2)
  {
    goto LABEL_4;
  }

  if ([pathCopy section])
  {
    v8 = +[MFPreferencesURL vipSenderListURL];
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    [v9 openSensitiveURL:v8 withOptions:0];

    goto LABEL_5;
  }

  v10 = [pathCopy row];
  if (v10 == [(NSMutableArray *)self->_allVIPs count])
  {
LABEL_4:
    [(MFVIPSendersListTableViewController *)self _addNewVIPSender];
    goto LABEL_5;
  }

  v34 = -[NSMutableArray objectAtIndex:](self->_allVIPs, "objectAtIndex:", [pathCopy row]);
  v11 = +[VIPManager defaultInstance];
  v12 = +[MFAddressBookManager sharedManager];
  v13 = [v11 existingPersonForVIP:v34 usingAddressBook:{objc_msgSend(v12, "addressBook")}];

  v14 = [(MFVIPSendersListTableViewController *)self _copyUnknownPersonForVIP:v34];
  emailAddresses = [v34 emailAddresses];
  if ([emailAddresses count])
  {
    v16 = +[MFContactsManager isAuthorizedToUseContacts];
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = ABPersonCopyImageData(v13);
    if (v17)
    {
      ABPersonSetImageData(v14, v17, 0);
      CFRelease(v17);
    }

    v18 = ABRecordCopyValue(v14, kABPersonEmailProperty);
    v19 = v18;
    if (v18)
    {
      MutableCopy = ABMultiValueCreateMutableCopy(v18);
      if (MutableCopy)
      {
        v21 = ABRecordCopyValue(v13, kABPersonEmailProperty);
        v22 = v21;
        record = v14;
        if (v21)
        {
          v23 = ABMultiValueCopyArrayOfAllValues(v21);
          if (v23)
          {
            for (i = 0; i < CFArrayGetCount(v23); ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
              FirstIndexOfValue = ABMultiValueGetFirstIndexOfValue(MutableCopy, ValueAtIndex);
              if (FirstIndexOfValue != -1)
              {
                v27 = ABMultiValueCopyLabelAtIndex(v22, i);
                if (v27)
                {
                  ABMultiValueReplaceLabelAtIndex(MutableCopy, v27, FirstIndexOfValue);
                  CFRelease(v27);
                }
              }
            }

            ABRecordSetValue(record, kABPersonEmailProperty, MutableCopy, 0);
            CFRelease(v23);
          }

          CFRelease(v22);
        }

        CFRelease(MutableCopy);
        v14 = record;
      }

      CFRelease(v19);
    }

    v16 = 0;
  }

  v28 = +[CNContactViewController descriptorForRequiredKeys];
  v35 = v28;
  v29 = [NSArray arrayWithObjects:&v35 count:1];
  v30 = [CNContact contactFromPerson:v14 keysToFetch:v29];

  v31 = [CNContactViewController viewControllerForUnknownContact:v30];
  [v31 setDelegate:self];
  if ((v16 & 1) == 0)
  {
    [v31 setActions:{objc_msgSend(v31, "actions") & 0xFFFFFFFFFFFFFFDFLL}];
  }

  [v31 _setDataOwnerForCopy:3];
  [v31 _setDataOwnerForPaste:3];
  navigationController = [(MFVIPSendersListTableViewController *)self navigationController];
  [navigationController pushViewController:v31 animated:1];

  CFRelease(v14);
LABEL_5:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[MFVIPSendersListTableViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)_copyUnknownPersonForVIP:(id)p
{
  pCopy = p;
  v4 = ABPersonCreate();
  name = [pCopy name];

  if (name)
  {
    name2 = [pCopy name];
    ec_personNameComponents = [name2 ec_personNameComponents];

    namePrefix = [ec_personNameComponents namePrefix];
    ABRecordSetValue(v4, kABPersonPrefixProperty, namePrefix, 0);

    givenName = [ec_personNameComponents givenName];
    ABRecordSetValue(v4, kABPersonFirstNameProperty, givenName, 0);

    middleName = [ec_personNameComponents middleName];
    ABRecordSetValue(v4, kABPersonMiddleNameProperty, middleName, 0);

    familyName = [ec_personNameComponents familyName];
    ABRecordSetValue(v4, kABPersonLastNameProperty, familyName, 0);

    nameSuffix = [ec_personNameComponents nameSuffix];
    ABRecordSetValue(v4, kABPersonSuffixProperty, nameSuffix, 0);
  }

  Mutable = ABMultiValueCreateMutable(1u);
  if (Mutable)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    emailAddresses = [pCopy emailAddresses];
    v15 = [emailAddresses countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(emailAddresses);
          }

          ABMultiValueAddValueAndLabel(Mutable, *(*(&v19 + 1) + 8 * v17), kABOtherLabel, 0);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [emailAddresses countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    ABRecordSetValue(v4, kABPersonEmailProperty, Mutable, 0);
    CFRelease(Mutable);
  }

  return v4;
}

- (UIBarButtonItem)dismissButtonItem
{
  dismissButtonItem = self->_dismissButtonItem;
  if (!dismissButtonItem)
  {
    v4 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_dismissButtonTapped:"];
    v5 = self->_dismissButtonItem;
    self->_dismissButtonItem = v4;

    dismissButtonItem = self->_dismissButtonItem;
  }

  return dismissButtonItem;
}

- (void)_addNewVIPSender
{
  v6 = objc_alloc_init(CNContactPickerViewController);
  [v6 setDelegate:self];
  v3 = +[VIPManager defaultInstance];
  allVIPEmailAddresses = [v3 allVIPEmailAddresses];

  v5 = [NSPredicate predicateWithFormat:@"emailAddresses.@count > 0 AND NONE emailAddresses.value IN %@", allVIPEmailAddresses];
  [v6 setPredicateForEnablingContact:v5];

  [(MFVIPSendersListTableViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"VIP_MAILBOX" value:&stru_100662A88 table:@"Main"];
    [v5 setText:v7];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"VIP_FIRST_PART_EXPLANATION" value:&stru_100662A88 table:@"Main"];
    [v5 setSecondaryText:v9];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"VIP_ADD_PERSON" value:&stru_100662A88 table:@"Main"];
    button = [v5 button];
    [button setTitle:v11];

    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10023B6E0;
    v18 = &unk_10064F278;
    objc_copyWeak(&v19, &location);
    v13 = [UIAction actionWithHandler:&v15];
    buttonProperties = [v5 buttonProperties];
    [buttonProperties setPrimaryAction:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v4 = v5;
  }

  [(MFVIPSendersListTableViewController *)self setContentUnavailableConfiguration:v4];
}

- (void)_refreshVIPSendersList
{
  v3 = +[VIPManager defaultInstance];
  sortedVIPs = [v3 sortedVIPs];
  v5 = [sortedVIPs mutableCopy];
  allVIPs = self->_allVIPs;
  self->_allVIPs = v5;

  [(MFVIPSendersListTableViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updateVIPSendersList:(id)list
{
  v4 = [(NSMutableArray *)self->_allVIPs count];
  [(MFVIPSendersListTableViewController *)self _refreshVIPSendersList];
  if (!v4 && [(NSMutableArray *)self->_allVIPs count])
  {
    [(MFVIPSendersListTableViewController *)self setSectionCount:2];
  }

  tableView = [(MFVIPSendersListTableViewController *)self tableView];
  [tableView reloadData];

  if ([(NSMutableArray *)self->_allVIPs count])
  {
    [(MFVIPSendersListTableViewController *)self isEditing];
    dismissButtonItem = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:"mf_configureMultiBarButtonItem:usingStyle:" usingStyle:?];

    dismissButtonItem2 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    navigationItem = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:dismissButtonItem2];

    editButtonItem = [(MFVIPSendersListTableViewController *)self editButtonItem];
    navigationItem2 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:editButtonItem];

    tableView2 = [(MFVIPSendersListTableViewController *)self tableView];
    [tableView2 setScrollEnabled:1];
  }

  else
  {
    navigationItem3 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:0];

    [(MFVIPSendersListTableViewController *)self setEditing:0];
  }
}

- (id)_labelWithPreferenceStyleFormattingForString:(id)string
{
  stringCopy = string;
  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setText:stringCopy];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline2];
  [v4 setFont:v5];

  v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
  [v4 setTextColor:v6];

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];

  return v4;
}

- (void)dismissContactPicker:(id)picker
{
  pickerCopy = picker;
  if (pickerCopy)
  {
    [pickerCopy setDelegate:0];
    presentedViewController = [(MFVIPSendersListTableViewController *)self presentedViewController];

    if (presentedViewController)
    {
      [(MFVIPSendersListTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  v6 = objc_alloc_init(CNContactStore);
  v7 = [v6 personFromContact:contactCopy];
  v8 = ABRecordCopyCompositeName(v7);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = ABPersonCopyArrayOfAllLinkedPeople(v7);
  v11 = v10;
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v15 = ABRecordCopyValue(ValueAtIndex, kABPersonEmailProperty);
        v16 = v15;
        if (v15)
        {
          v17 = ABMultiValueCopyArrayOfAllValues(v15);
          [v9 addObjectsFromArray:{v17, contactCopy}];
          CFRelease(v16);
        }
      }
    }

    CFRelease(v11);
  }

  v18 = [[EAEmailAddressSet alloc] initWithArray:v9];
  v19 = [[EMVIP alloc] initWithIdentifier:0 name:v8 emailAddresses:v18];
  v20 = +[VIPManager defaultInstance];
  [v20 saveVIP:v19];

  [(MFVIPSendersListTableViewController *)self dismissContactPicker:pickerCopy];
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  v5 = [(MFVIPSendersListTableViewController *)self navigationController:controller];
  v4 = [v5 popViewControllerAnimated:0];
}

@end