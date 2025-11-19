@interface MFVIPSendersListTableViewController
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (MFVIPSendersListTableViewController)initWithStyle:(int64_t)a3;
- (UIBarButtonItem)dismissButtonItem;
- (double)preferredNoContentViewHeight;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_labelWithPreferenceStyleFormattingForString:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addNewVIPSender;
- (void)_copyUnknownPersonForVIP:(id)a3;
- (void)_dismissIfNeeded;
- (void)_refreshVIPSendersList;
- (void)_updateVIPSendersList:(id)a3;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dismissContactPicker:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSectionCount:(int64_t)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MFVIPSendersListTableViewController

- (MFVIPSendersListTableViewController)initWithStyle:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = MFVIPSendersListTableViewController;
  v3 = [(MFVIPSendersListTableViewController *)&v14 initWithStyle:a3];
  if (v3)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"VIP_EDIT" value:&stru_100662A88 table:@"Main"];
    [(MFVIPSendersListTableViewController *)v3 setTitle:v5];

    [(MFVIPSendersListTableViewController *)v3 setHidesBottomBarWhenPushed:1];
    v6 = +[VIPManager defaultInstance];
    v7 = [v6 sortedVIPs];
    v8 = [v7 mutableCopy];
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
    v3 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:v3 usingStyle:1];

    v4 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    v5 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];

    v6 = [(MFVIPSendersListTableViewController *)self editButtonItem];
    v7 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v7 setLeftBarButtonItem:v6];

    v8 = [(MFVIPSendersListTableViewController *)self tableView];
    [v8 setScrollEnabled:1];

    v9 = [(MFVIPSendersListTableViewController *)self tableView];
    [v9 flashScrollIndicators];
  }

  else
  {
    v10 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v10 setRightBarButtonItem:0];

    v11 = [(MFVIPSendersListTableViewController *)self view];
    v12 = [v11 window];
    v13 = [v12 windowScene];
    v14 = [v13 interfaceOrientation];

    v15 = [(MFVIPSendersListTableViewController *)self tableView];
    v9 = v15;
    if ((v14 - 1) > 1)
    {
      [v15 setScrollEnabled:1];

      v9 = [(MFVIPSendersListTableViewController *)self tableView];
      [v9 flashScrollIndicators];
    }

    else
    {
      [v15 setScrollEnabled:0];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v6 viewWillAppear:?];
  [(MFVIPSendersListTableViewController *)self focus:v3];
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    v5 = [(MFVIPSendersListTableViewController *)self mf_updatePreferredContentSizeBasedOnTableView];
    [(MFVIPSendersListTableViewController *)self setTableViewObserver:v5];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v5 viewWillDisappear:?];
  if (([(MFVIPSendersListTableViewController *)self isBeingDismissed]& 1) != 0 || [(MFVIPSendersListTableViewController *)self isMovingFromParentViewController])
  {
    [(MFVIPSendersListTableViewController *)self unfocus:v3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v5 traitCollectionDidChange:v4];
  [(MFVIPSendersListTableViewController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  if (self->_sectionCount == 1)
  {
    v8 = [(MFVIPSendersListTableViewController *)self tableView];
    [v8 setScrollEnabled:0];
  }

  v9.receiver = self;
  v9.super_class = MFVIPSendersListTableViewController;
  [(MFVIPSendersListTableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MFVIPSendersListTableViewController;
  [MFVIPSendersListTableViewController setEditing:"setEditing:animated:" animated:?];
  if ([(NSMutableArray *)self->_allVIPs count])
  {
    if (v5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:v8 usingStyle:v7];
  }

  v9 = [(MFVIPSendersListTableViewController *)self navigationItem];
  [v9 setHidesBackButton:v5 animated:v4];
}

- (double)preferredNoContentViewHeight
{
  v3 = [(MFVIPSendersListTableViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryExtraLarge);

  if (v5 == NSOrderedAscending)
  {
    return 203.5;
  }

  v6 = [(MFVIPSendersListTableViewController *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = UIContentSizeCategoryCompareToCategory(v7, UIContentSizeCategoryAccessibilityLarge) == NSOrderedAscending;

  return dbl_1004FC630[v8];
}

- (void)setSectionCount:(int64_t)a3
{
  if (self->_sectionCount != a3)
  {
    self->_sectionCount = a3;
    [(MFVIPSendersListTableViewController *)self preferredContentSize];
    v7 = v6;
    v8 = 0.0;
    if (a3 == 1)
    {
      [(MFVIPSendersListTableViewController *)self preferredNoContentViewHeight];
      v8 = v9;
    }

    [(MFVIPSendersListTableViewController *)self setPreferredContentSize:v7, v8];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(MFVIPSendersListTableViewController *)self sectionCount]!= 2)
  {
    return 0;
  }

  if (a4)
  {
    return 1;
  }

  return [(NSMutableArray *)self->_allVIPs count]+ 1;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  LOBYTE(self) = v6 < ([(MFVIPSendersListTableViewController *)self sectionCount]- 1);

  return self;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"Cell"];
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
  v10 = v7;
  v19 = v10;
  v11 = v6;
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(MFVIPSendersListTableViewController *)self sectionCount];
  v6 = 0;
  if (a4 == 1 && v5 >= 2)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"VIP_CUSTOM_ALERT_EXPLANATION" value:&stru_100662A88 table:@"Main"];
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(MFVIPSendersListTableViewController *)self sectionCount:a3];
  result = 0.0;
  if (v5 == 1)
  {
    [(MFVIPSendersListTableViewController *)self preferredContentSize];
    return v7;
  }

  return result;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1)
  {
    v11 = -[NSMutableArray objectAtIndex:](self->_allVIPs, "objectAtIndex:", [v9 row]);
    v12 = [v11 identifier];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10023A818;
    v16[3] = &unk_10064C6B0;
    v16[4] = self;
    v17 = v10;
    v18 = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10023A8EC;
    v14[3] = &unk_10064C570;
    v15 = v12;
    v13 = v12;
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[MFVIPSendersListTableViewController sectionCount](self, "sectionCount") < 2 || [v5 section] || (v6 = objc_msgSend(v5, "row"), v6 != -[NSMutableArray count](self->_allVIPs, "count")))
  {
    v8 = [v5 section];
    v7 = v8 != [(MFVIPSendersListTableViewController *)self sectionCount]- 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MFVIPSendersListTableViewController *)self sectionCount]< 2)
  {
    goto LABEL_4;
  }

  if ([v7 section])
  {
    v8 = +[MFPreferencesURL vipSenderListURL];
    v9 = +[LSApplicationWorkspace defaultWorkspace];
    [v9 openSensitiveURL:v8 withOptions:0];

    goto LABEL_5;
  }

  v10 = [v7 row];
  if (v10 == [(NSMutableArray *)self->_allVIPs count])
  {
LABEL_4:
    [(MFVIPSendersListTableViewController *)self _addNewVIPSender];
    goto LABEL_5;
  }

  v34 = -[NSMutableArray objectAtIndex:](self->_allVIPs, "objectAtIndex:", [v7 row]);
  v11 = +[VIPManager defaultInstance];
  v12 = +[MFAddressBookManager sharedManager];
  v13 = [v11 existingPersonForVIP:v34 usingAddressBook:{objc_msgSend(v12, "addressBook")}];

  v14 = [(MFVIPSendersListTableViewController *)self _copyUnknownPersonForVIP:v34];
  v15 = [v34 emailAddresses];
  if ([v15 count])
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
  v32 = [(MFVIPSendersListTableViewController *)self navigationController];
  [v32 pushViewController:v31 animated:1];

  CFRelease(v14);
LABEL_5:
  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 mf_updateBackgroundColorForPopover:{-[MFVIPSendersListTableViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)_copyUnknownPersonForVIP:(id)a3
{
  v3 = a3;
  v4 = ABPersonCreate();
  v5 = [v3 name];

  if (v5)
  {
    v6 = [v3 name];
    v7 = [v6 ec_personNameComponents];

    v8 = [v7 namePrefix];
    ABRecordSetValue(v4, kABPersonPrefixProperty, v8, 0);

    v9 = [v7 givenName];
    ABRecordSetValue(v4, kABPersonFirstNameProperty, v9, 0);

    v10 = [v7 middleName];
    ABRecordSetValue(v4, kABPersonMiddleNameProperty, v10, 0);

    v11 = [v7 familyName];
    ABRecordSetValue(v4, kABPersonLastNameProperty, v11, 0);

    v12 = [v7 nameSuffix];
    ABRecordSetValue(v4, kABPersonSuffixProperty, v12, 0);
  }

  Mutable = ABMultiValueCreateMutable(1u);
  if (Mutable)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [v3 emailAddresses];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v14);
          }

          ABMultiValueAddValueAndLabel(Mutable, *(*(&v19 + 1) + 8 * v17), kABOtherLabel, 0);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v4 = [v3 allVIPEmailAddresses];

  v5 = [NSPredicate predicateWithFormat:@"emailAddresses.@count > 0 AND NONE emailAddresses.value IN %@", v4];
  [v6 setPredicateForEnablingContact:v5];

  [(MFVIPSendersListTableViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
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
    v12 = [v5 button];
    [v12 setTitle:v11];

    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10023B6E0;
    v18 = &unk_10064F278;
    objc_copyWeak(&v19, &location);
    v13 = [UIAction actionWithHandler:&v15];
    v14 = [v5 buttonProperties];
    [v14 setPrimaryAction:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    v4 = v5;
  }

  [(MFVIPSendersListTableViewController *)self setContentUnavailableConfiguration:v4];
}

- (void)_refreshVIPSendersList
{
  v3 = +[VIPManager defaultInstance];
  v4 = [v3 sortedVIPs];
  v5 = [v4 mutableCopy];
  allVIPs = self->_allVIPs;
  self->_allVIPs = v5;

  [(MFVIPSendersListTableViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)_updateVIPSendersList:(id)a3
{
  v4 = [(NSMutableArray *)self->_allVIPs count];
  [(MFVIPSendersListTableViewController *)self _refreshVIPSendersList];
  if (!v4 && [(NSMutableArray *)self->_allVIPs count])
  {
    [(MFVIPSendersListTableViewController *)self setSectionCount:2];
  }

  v7 = [(MFVIPSendersListTableViewController *)self tableView];
  [v7 reloadData];

  if ([(NSMutableArray *)self->_allVIPs count])
  {
    [(MFVIPSendersListTableViewController *)self isEditing];
    v8 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    [UIBarButtonItem mf_configureMultiBarButtonItem:"mf_configureMultiBarButtonItem:usingStyle:" usingStyle:?];

    v9 = [(MFVIPSendersListTableViewController *)self dismissButtonItem];
    v5 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v9];

    v10 = [(MFVIPSendersListTableViewController *)self editButtonItem];
    v6 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v6 setLeftBarButtonItem:v10];

    v11 = [(MFVIPSendersListTableViewController *)self tableView];
    [v11 setScrollEnabled:1];
  }

  else
  {
    v12 = [(MFVIPSendersListTableViewController *)self navigationItem];
    [v12 setRightBarButtonItem:0];

    [(MFVIPSendersListTableViewController *)self setEditing:0];
  }
}

- (id)_labelWithPreferenceStyleFormattingForString:(id)a3
{
  v3 = a3;
  v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setText:v3];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline2];
  [v4 setFont:v5];

  v6 = [UIColor colorWithWhite:0.5 alpha:1.0];
  [v4 setTextColor:v6];

  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];

  return v4;
}

- (void)dismissContactPicker:(id)a3
{
  v5 = a3;
  if (v5)
  {
    [v5 setDelegate:0];
    v4 = [(MFVIPSendersListTableViewController *)self presentedViewController];

    if (v4)
    {
      [(MFVIPSendersListTableViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v22 = a3;
  v21 = a4;
  v6 = objc_alloc_init(CNContactStore);
  v7 = [v6 personFromContact:v21];
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
          [v9 addObjectsFromArray:{v17, v21}];
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

  [(MFVIPSendersListTableViewController *)self dismissContactPicker:v22];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v5 = [(MFVIPSendersListTableViewController *)self navigationController:a3];
  v4 = [v5 popViewControllerAnimated:0];
}

@end