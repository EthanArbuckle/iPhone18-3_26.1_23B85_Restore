@interface ReservationContactInfoViewController
- (NSPersonNameComponents)nameComponents;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (ReservationContactInfoViewController)initWithNameComponents:(id)components emailAddress:(id)address phoneNumber:(id)number guestDisplayPreferences:(id)preferences requirements:(id)requirements;
- (ReservationContactInfoViewControllerDelegate)contactDelegate;
- (id)inputCellForType:(unint64_t)type;
- (id)itemsForGuestDisplayPreferences:(id)preferences requirements:(id)requirements;
- (id)stringForNameMissing:(BOOL)missing phoneNumberMissing:(BOOL)numberMissing emailAddressMissing:(BOOL)addressMissing;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)textFieldTextForContactCellType:(unint64_t)type;
- (id)titleStringForContactCellType:(unint64_t)type;
- (int64_t)inputCellTypeForContactCellType:(unint64_t)type;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureCell:(id)cell withItem:(id)item;
- (void)configureContactItems;
- (void)configureTableView;
- (void)doneButtonTapped:(id)tapped;
- (void)syncStateForInputCell:(id)cell type:(unint64_t)type;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFooterText;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ReservationContactInfoViewController

- (ReservationContactInfoViewControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (NSString)phoneNumber
{
  guestDisplayPreferences = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  if ([guestDisplayPreferences phoneNumberFieldShouldBeDisplayed])
  {
    phoneNumberCell = [(ReservationContactInfoViewController *)self phoneNumberCell];
    text = [phoneNumberCell text];
  }

  else
  {
    text = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
  }

  return text;
}

- (NSString)emailAddress
{
  guestDisplayPreferences = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  if ([guestDisplayPreferences emailAddressFieldShouldBeDisplayed])
  {
    emailCell = [(ReservationContactInfoViewController *)self emailCell];
    text = [emailCell text];
  }

  else
  {
    text = [(ReservationContactInfoViewController *)self initializedEmailAddress];
  }

  return text;
}

- (NSPersonNameComponents)nameComponents
{
  guestDisplayPreferences = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  nameFieldShouldBeDisplayed = [guestDisplayPreferences nameFieldShouldBeDisplayed];

  initializedNameComponents = [(ReservationContactInfoViewController *)self initializedNameComponents];
  v6 = initializedNameComponents;
  if (nameFieldShouldBeDisplayed)
  {

    if (v6)
    {
      initializedNameComponents2 = [(ReservationContactInfoViewController *)self initializedNameComponents];
      v6 = [initializedNameComponents2 copy];
    }

    else
    {
      v6 = objc_alloc_init(NSPersonNameComponents);
    }

    firstNameCell = [(ReservationContactInfoViewController *)self firstNameCell];
    text = [firstNameCell text];
    [v6 setGivenName:text];

    lastNameCell = [(ReservationContactInfoViewController *)self lastNameCell];
    text2 = [lastNameCell text];
    [v6 setFamilyName:text2];
  }

  return v6;
}

- (id)stringForNameMissing:(BOOL)missing phoneNumberMissing:(BOOL)numberMissing emailAddressMissing:(BOOL)addressMissing
{
  v5 = !missing || !numberMissing;
  v6 = !addressMissing;
  if (v5 || v6)
  {
    if (v5 || addressMissing)
    {
      v8 = !missing || numberMissing;
      if (v8 || v6)
      {
        v9 = !numberMissing || missing;
        if (v9 || v6)
        {
          if (missing || numberMissing || v6)
          {
            if (v9 || addressMissing)
            {
              if (v8 || addressMissing)
              {
                v10 = &stru_1016631F0;
                goto LABEL_18;
              }

              v7 = @"reservation_name_missing_key";
            }

            else
            {
              v7 = @"reservation_phone_missing_key";
            }
          }

          else
          {
            v7 = @"reservation_email_missing_key";
          }
        }

        else
        {
          v7 = @"reservation_phone_email_missing_key";
        }
      }

      else
      {
        v7 = @"reservation_name_email_missing_key";
      }
    }

    else
    {
      v7 = @"reservation_name_phone_missing_key";
    }
  }

  else
  {
    v7 = @"reservation_name_email_phone_missing_key";
  }

  v11 = +[NSBundle mainBundle];
  v10 = [v11 localizedStringForKey:v7 value:@"localized string not found" table:0];

LABEL_18:

  return v10;
}

- (void)updateFooterText
{
  requirements = [(ReservationContactInfoViewController *)self requirements];
  nameRequired = [requirements nameRequired];
  requirements2 = [(ReservationContactInfoViewController *)self requirements];
  phoneNumberRequired = [requirements2 phoneNumberRequired];
  requirements3 = [(ReservationContactInfoViewController *)self requirements];
  v7 = -[ReservationContactInfoViewController stringForNameMissing:phoneNumberMissing:emailAddressMissing:](self, "stringForNameMissing:phoneNumberMissing:emailAddressMissing:", nameRequired, phoneNumberRequired, [requirements3 emailAddressRequired]);
  [(ReservationContactInfoViewController *)self setFooterText:v7];
}

- (id)inputCellForType:(unint64_t)type
{
  emailCell = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      emailCell = [(ReservationContactInfoViewController *)self emailCell];
    }

    else if (type == 3)
    {
      emailCell = [(ReservationContactInfoViewController *)self phoneNumberCell];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      emailCell = [(ReservationContactInfoViewController *)self lastNameCell];
    }
  }

  else
  {
    emailCell = [(ReservationContactInfoViewController *)self firstNameCell];
  }

  return emailCell;
}

- (void)syncStateForInputCell:(id)cell type:(unint64_t)type
{
  cellCopy = cell;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = cellCopy;
      [(ReservationContactInfoViewController *)self setEmailCell:cellCopy];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_11;
      }

      v7 = cellCopy;
      [(ReservationContactInfoViewController *)self setPhoneNumberCell:cellCopy];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_11;
    }

    v7 = cellCopy;
    [(ReservationContactInfoViewController *)self setLastNameCell:cellCopy];
  }

  else
  {
    v7 = cellCopy;
    [(ReservationContactInfoViewController *)self setFirstNameCell:cellCopy];
  }

  cellCopy = v7;
LABEL_11:
}

- (id)titleStringForContactCellType:(unint64_t)type
{
  if (type > 3)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = *(&off_101624A68 + type);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (int64_t)inputCellTypeForContactCellType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_101213220[type - 1];
  }
}

- (id)textFieldTextForContactCellType:(unint64_t)type
{
  text = &stru_1016631F0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_28;
      }

      initializedNameComponents = [(ReservationContactInfoViewController *)self initializedNameComponents];
      familyName = [initializedNameComponents familyName];

      if (![familyName length] || (-[ReservationContactInfoViewController lastNameCell](self, "lastNameCell"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        lastNameCell = [(ReservationContactInfoViewController *)self lastNameCell];

        if (lastNameCell)
        {
          lastNameCell2 = [(ReservationContactInfoViewController *)self lastNameCell];
LABEL_18:
          v18 = lastNameCell2;
          text = [lastNameCell2 text];

LABEL_27:
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else
    {
      initializedNameComponents2 = [(ReservationContactInfoViewController *)self initializedNameComponents];
      familyName = [initializedNameComponents2 givenName];

      if (![familyName length] || (-[ReservationContactInfoViewController firstNameCell](self, "firstNameCell"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
      {
        firstNameCell = [(ReservationContactInfoViewController *)self firstNameCell];

        if (firstNameCell)
        {
          lastNameCell2 = [(ReservationContactInfoViewController *)self firstNameCell];
          goto LABEL_18;
        }

LABEL_24:
        text = &stru_1016631F0;
        goto LABEL_27;
      }
    }

    text = familyName;
    goto LABEL_27;
  }

  if (type == 2)
  {
    initializedEmailAddress = [(ReservationContactInfoViewController *)self initializedEmailAddress];
    if (!initializedEmailAddress || (v20 = initializedEmailAddress, [(ReservationContactInfoViewController *)self emailCell], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
    {
      emailCell = [(ReservationContactInfoViewController *)self emailCell];

      if (emailCell)
      {
        emailCell2 = [(ReservationContactInfoViewController *)self emailCell];
        goto LABEL_23;
      }

LABEL_25:
      text = &stru_1016631F0;
      goto LABEL_28;
    }

    initializedEmailAddress2 = [(ReservationContactInfoViewController *)self initializedEmailAddress];
  }

  else
  {
    if (type != 3)
    {
      goto LABEL_28;
    }

    initializedPhoneNumber = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
    if (!initializedPhoneNumber || (v11 = initializedPhoneNumber, [(ReservationContactInfoViewController *)self phoneNumberCell], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      phoneNumberCell = [(ReservationContactInfoViewController *)self phoneNumberCell];

      if (phoneNumberCell)
      {
        emailCell2 = [(ReservationContactInfoViewController *)self phoneNumberCell];
LABEL_23:
        v23 = emailCell2;
        text = [emailCell2 text];

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    initializedEmailAddress2 = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
  }

  text = initializedEmailAddress2;
LABEL_28:

  return text;
}

- (void)configureCell:(id)cell withItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  required = [itemCopy required];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (required)
  {
    v10 = @"reservation_required_key";
  }

  else
  {
    v10 = @"reservation_optional_key";
  }

  v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
  [cellCopy setPlaceholderText:v11];

  editable = [itemCopy editable];
  textField = [cellCopy textField];
  [textField setEnabled:editable];

  textField2 = [cellCopy textField];
  if ([textField2 isEnabled])
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v15 = ;
  [cellCopy setDetailTextColor:v15];

  v16 = -[ReservationContactInfoViewController titleStringForContactCellType:](self, "titleStringForContactCellType:", [itemCopy type]);
  [cellCopy setTitleText:v16];

  v17 = -[ReservationContactInfoViewController textFieldTextForContactCellType:](self, "textFieldTextForContactCellType:", [itemCopy type]);
  [cellCopy setText:v17];

  [cellCopy setType:{-[ReservationContactInfoViewController inputCellTypeForContactCellType:](self, "inputCellTypeForContactCellType:", objc_msgSend(itemCopy, "type"))}];
  [cellCopy setRequired:{objc_msgSend(itemCopy, "required")}];
  [cellCopy setSelectionStyle:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];

  if (([pathCopy row] & 0x8000000000000000) == 0)
  {
    v11 = [pathCopy row];
    contactItems = [(ReservationContactInfoViewController *)self contactItems];
    v13 = [contactItems count];

    if (v11 < v13)
    {
      contactItems2 = [(ReservationContactInfoViewController *)self contactItems];
      v15 = [contactItems2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

      [(ReservationContactInfoViewController *)self configureCell:v10 withItem:v15];
      -[ReservationContactInfoViewController syncStateForInputCell:type:](self, "syncStateForInputCell:type:", v10, [v15 type]);
    }
  }

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ReservationContactInfoViewController *)self contactItems:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [v5 textField];
    [textField becomeFirstResponder];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v8 viewDidAppear:appear];
  contactItems = [(ReservationContactInfoViewController *)self contactItems];
  firstObject = [contactItems firstObject];

  v6 = -[ReservationContactInfoViewController inputCellForType:](self, "inputCellForType:", [firstObject type]);
  textField = [v6 textField];
  [textField becomeFirstResponder];
}

- (void)doneButtonTapped:(id)tapped
{
  contactDelegate = [(ReservationContactInfoViewController *)self contactDelegate];
  [contactDelegate reservationContactInfoViewControllerDidSelectDone:self];
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = [(ReservationContactInfoViewController *)self tableView];
  [tableView setTableFooterView:v3];

  tableView2 = [(ReservationContactInfoViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [tableView2 registerClass:v6 forCellReuseIdentifier:v8];

  tableView3 = [(ReservationContactInfoViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(ReservationContactInfoViewController *)self tableView];
  [tableView4 setScrollEnabled:1];
}

- (id)itemsForGuestDisplayPreferences:(id)preferences requirements:(id)requirements
{
  preferencesCopy = preferences;
  requirementsCopy = requirements;
  v7 = [NSMutableArray arrayWithCapacity:4];
  if ([preferencesCopy nameFieldShouldBeDisplayed])
  {
    if ([preferencesCopy nameFieldFirstNameOptional])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [requirementsCopy nameRequired] ^ 1;
    }

    if ([preferencesCopy nameFieldLastNameOptional])
    {
      v9 = 1;
    }

    else
    {
      v9 = [requirementsCopy nameRequired] ^ 1;
    }

    if ([requirementsCopy nameRequired] && objc_msgSend(preferencesCopy, "nameFieldFirstNameOptional"))
    {
      nameFieldLastNameOptional = [preferencesCopy nameFieldLastNameOptional];
      v9 &= nameFieldLastNameOptional ^ 1;
      LOBYTE(v8) = nameFieldLastNameOptional | v8;
    }

    v11 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 0, [preferencesCopy nameEditable], (v8 & 1) == 0);
    v12 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 1, [preferencesCopy nameEditable], v9 ^ 1);
    v18[0] = v11;
    v18[1] = v12;
    v13 = [NSArray arrayWithObjects:v18 count:2];
    [v7 addObjectsFromArray:v13];
  }

  if ([preferencesCopy phoneNumberFieldShouldBeDisplayed])
  {
    v14 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 3, [preferencesCopy phoneNumberEditable], objc_msgSend(requirementsCopy, "phoneNumberRequired"));
    [v7 addObject:v14];
  }

  if ([preferencesCopy emailAddressFieldShouldBeDisplayed])
  {
    v15 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 2, [preferencesCopy emailAddressEditable], objc_msgSend(requirementsCopy, "emailAddressRequired"));
    [v7 addObject:v15];
  }

  v16 = [NSArray arrayWithArray:v7];

  return v16;
}

- (void)configureContactItems
{
  guestDisplayPreferences = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  requirements = [(ReservationContactInfoViewController *)self requirements];
  v4 = [(ReservationContactInfoViewController *)self itemsForGuestDisplayPreferences:guestDisplayPreferences requirements:requirements];
  [(ReservationContactInfoViewController *)self setContactItems:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v5 viewWillDisappear:disappear];
  contactDelegate = [(ReservationContactInfoViewController *)self contactDelegate];
  [contactDelegate reservationContactInfoViewControllerDidSelectDone:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v3 viewDidLoad];
  [(ReservationContactInfoViewController *)self configureContactItems];
  [(ReservationContactInfoViewController *)self configureTableView];
}

- (ReservationContactInfoViewController)initWithNameComponents:(id)components emailAddress:(id)address phoneNumber:(id)number guestDisplayPreferences:(id)preferences requirements:(id)requirements
{
  componentsCopy = components;
  addressCopy = address;
  numberCopy = number;
  preferencesCopy = preferences;
  requirementsCopy = requirements;
  v28.receiver = self;
  v28.super_class = ReservationContactInfoViewController;
  v18 = [(ReservationContactInfoViewController *)&v28 initWithStyle:1];
  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"reservation_enter_info_key" value:@"localized string not found" table:0];
    [(ReservationContactInfoViewController *)v18 setTitle:v20];

    v21 = [preferencesCopy copy];
    guestDisplayPreferences = v18->_guestDisplayPreferences;
    v18->_guestDisplayPreferences = v21;

    objc_storeStrong(&v18->_requirements, requirements);
    [(ReservationContactInfoViewController *)v18 updateFooterText];
    v23 = [addressCopy copy];
    initializedEmailAddress = v18->_initializedEmailAddress;
    v18->_initializedEmailAddress = v23;

    v25 = [numberCopy copy];
    initializedPhoneNumber = v18->_initializedPhoneNumber;
    v18->_initializedPhoneNumber = v25;

    objc_storeStrong(&v18->_initializedNameComponents, components);
  }

  return v18;
}

@end