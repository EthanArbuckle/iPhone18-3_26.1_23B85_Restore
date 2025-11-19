@interface ReservationContactInfoViewController
- (NSPersonNameComponents)nameComponents;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (ReservationContactInfoViewController)initWithNameComponents:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 guestDisplayPreferences:(id)a6 requirements:(id)a7;
- (ReservationContactInfoViewControllerDelegate)contactDelegate;
- (id)inputCellForType:(unint64_t)a3;
- (id)itemsForGuestDisplayPreferences:(id)a3 requirements:(id)a4;
- (id)stringForNameMissing:(BOOL)a3 phoneNumberMissing:(BOOL)a4 emailAddressMissing:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)textFieldTextForContactCellType:(unint64_t)a3;
- (id)titleStringForContactCellType:(unint64_t)a3;
- (int64_t)inputCellTypeForContactCellType:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureCell:(id)a3 withItem:(id)a4;
- (void)configureContactItems;
- (void)configureTableView;
- (void)doneButtonTapped:(id)a3;
- (void)syncStateForInputCell:(id)a3 type:(unint64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFooterText;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ReservationContactInfoViewController

- (ReservationContactInfoViewControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (NSString)phoneNumber
{
  v3 = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  if ([v3 phoneNumberFieldShouldBeDisplayed])
  {
    v4 = [(ReservationContactInfoViewController *)self phoneNumberCell];
    v5 = [v4 text];
  }

  else
  {
    v5 = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
  }

  return v5;
}

- (NSString)emailAddress
{
  v3 = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  if ([v3 emailAddressFieldShouldBeDisplayed])
  {
    v4 = [(ReservationContactInfoViewController *)self emailCell];
    v5 = [v4 text];
  }

  else
  {
    v5 = [(ReservationContactInfoViewController *)self initializedEmailAddress];
  }

  return v5;
}

- (NSPersonNameComponents)nameComponents
{
  v3 = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  v4 = [v3 nameFieldShouldBeDisplayed];

  v5 = [(ReservationContactInfoViewController *)self initializedNameComponents];
  v6 = v5;
  if (v4)
  {

    if (v6)
    {
      v7 = [(ReservationContactInfoViewController *)self initializedNameComponents];
      v6 = [v7 copy];
    }

    else
    {
      v6 = objc_alloc_init(NSPersonNameComponents);
    }

    v8 = [(ReservationContactInfoViewController *)self firstNameCell];
    v9 = [v8 text];
    [v6 setGivenName:v9];

    v10 = [(ReservationContactInfoViewController *)self lastNameCell];
    v11 = [v10 text];
    [v6 setFamilyName:v11];
  }

  return v6;
}

- (id)stringForNameMissing:(BOOL)a3 phoneNumberMissing:(BOOL)a4 emailAddressMissing:(BOOL)a5
{
  v5 = !a3 || !a4;
  v6 = !a5;
  if (v5 || v6)
  {
    if (v5 || a5)
    {
      v8 = !a3 || a4;
      if (v8 || v6)
      {
        v9 = !a4 || a3;
        if (v9 || v6)
        {
          if (a3 || a4 || v6)
          {
            if (v9 || a5)
            {
              if (v8 || a5)
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
  v8 = [(ReservationContactInfoViewController *)self requirements];
  v3 = [v8 nameRequired];
  v4 = [(ReservationContactInfoViewController *)self requirements];
  v5 = [v4 phoneNumberRequired];
  v6 = [(ReservationContactInfoViewController *)self requirements];
  v7 = -[ReservationContactInfoViewController stringForNameMissing:phoneNumberMissing:emailAddressMissing:](self, "stringForNameMissing:phoneNumberMissing:emailAddressMissing:", v3, v5, [v6 emailAddressRequired]);
  [(ReservationContactInfoViewController *)self setFooterText:v7];
}

- (id)inputCellForType:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(ReservationContactInfoViewController *)self emailCell];
    }

    else if (a3 == 3)
    {
      v4 = [(ReservationContactInfoViewController *)self phoneNumberCell];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(ReservationContactInfoViewController *)self lastNameCell];
    }
  }

  else
  {
    v4 = [(ReservationContactInfoViewController *)self firstNameCell];
  }

  return v4;
}

- (void)syncStateForInputCell:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = v6;
      [(ReservationContactInfoViewController *)self setEmailCell:v6];
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v7 = v6;
      [(ReservationContactInfoViewController *)self setPhoneNumberCell:v6];
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v7 = v6;
    [(ReservationContactInfoViewController *)self setLastNameCell:v6];
  }

  else
  {
    v7 = v6;
    [(ReservationContactInfoViewController *)self setFirstNameCell:v6];
  }

  v6 = v7;
LABEL_11:
}

- (id)titleStringForContactCellType:(unint64_t)a3
{
  if (a3 > 3)
  {
    v5 = &stru_1016631F0;
  }

  else
  {
    v3 = *(&off_101624A68 + a3);
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:@"localized string not found" table:0];
  }

  return v5;
}

- (int64_t)inputCellTypeForContactCellType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 2;
  }

  else
  {
    return qword_101213220[a3 - 1];
  }
}

- (id)textFieldTextForContactCellType:(unint64_t)a3
{
  v4 = &stru_1016631F0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_28;
      }

      v5 = [(ReservationContactInfoViewController *)self initializedNameComponents];
      v6 = [v5 familyName];

      if (![v6 length] || (-[ReservationContactInfoViewController lastNameCell](self, "lastNameCell"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
      {
        v8 = [(ReservationContactInfoViewController *)self lastNameCell];

        if (v8)
        {
          v9 = [(ReservationContactInfoViewController *)self lastNameCell];
LABEL_18:
          v18 = v9;
          v4 = [v9 text];

LABEL_27:
          goto LABEL_28;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v15 = [(ReservationContactInfoViewController *)self initializedNameComponents];
      v6 = [v15 givenName];

      if (![v6 length] || (-[ReservationContactInfoViewController firstNameCell](self, "firstNameCell"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
      {
        v17 = [(ReservationContactInfoViewController *)self firstNameCell];

        if (v17)
        {
          v9 = [(ReservationContactInfoViewController *)self firstNameCell];
          goto LABEL_18;
        }

LABEL_24:
        v4 = &stru_1016631F0;
        goto LABEL_27;
      }
    }

    v4 = v6;
    goto LABEL_27;
  }

  if (a3 == 2)
  {
    v19 = [(ReservationContactInfoViewController *)self initializedEmailAddress];
    if (!v19 || (v20 = v19, [(ReservationContactInfoViewController *)self emailCell], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, v21))
    {
      v22 = [(ReservationContactInfoViewController *)self emailCell];

      if (v22)
      {
        v14 = [(ReservationContactInfoViewController *)self emailCell];
        goto LABEL_23;
      }

LABEL_25:
      v4 = &stru_1016631F0;
      goto LABEL_28;
    }

    v25 = [(ReservationContactInfoViewController *)self initializedEmailAddress];
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_28;
    }

    v10 = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
    if (!v10 || (v11 = v10, [(ReservationContactInfoViewController *)self phoneNumberCell], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = [(ReservationContactInfoViewController *)self phoneNumberCell];

      if (v13)
      {
        v14 = [(ReservationContactInfoViewController *)self phoneNumberCell];
LABEL_23:
        v23 = v14;
        v4 = [v14 text];

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    v25 = [(ReservationContactInfoViewController *)self initializedPhoneNumber];
  }

  v4 = v25;
LABEL_28:

  return v4;
}

- (void)configureCell:(id)a3 withItem:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [v6 required];
  v8 = +[NSBundle mainBundle];
  v9 = v8;
  if (v7)
  {
    v10 = @"reservation_required_key";
  }

  else
  {
    v10 = @"reservation_optional_key";
  }

  v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];
  [v18 setPlaceholderText:v11];

  v12 = [v6 editable];
  v13 = [v18 textField];
  [v13 setEnabled:v12];

  v14 = [v18 textField];
  if ([v14 isEnabled])
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v15 = ;
  [v18 setDetailTextColor:v15];

  v16 = -[ReservationContactInfoViewController titleStringForContactCellType:](self, "titleStringForContactCellType:", [v6 type]);
  [v18 setTitleText:v16];

  v17 = -[ReservationContactInfoViewController textFieldTextForContactCellType:](self, "textFieldTextForContactCellType:", [v6 type]);
  [v18 setText:v17];

  [v18 setType:{-[ReservationContactInfoViewController inputCellTypeForContactCellType:](self, "inputCellTypeForContactCellType:", objc_msgSend(v6, "type"))}];
  [v18 setRequired:{objc_msgSend(v6, "required")}];
  [v18 setSelectionStyle:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9];

  if (([v6 row] & 0x8000000000000000) == 0)
  {
    v11 = [v6 row];
    v12 = [(ReservationContactInfoViewController *)self contactItems];
    v13 = [v12 count];

    if (v11 < v13)
    {
      v14 = [(ReservationContactInfoViewController *)self contactItems];
      v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

      [(ReservationContactInfoViewController *)self configureCell:v10 withItem:v15];
      -[ReservationContactInfoViewController syncStateForInputCell:type:](self, "syncStateForInputCell:type:", v10, [v15 type]);
    }
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(ReservationContactInfoViewController *)self contactItems:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = [a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 textField];
    [v4 becomeFirstResponder];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v8 viewDidAppear:a3];
  v4 = [(ReservationContactInfoViewController *)self contactItems];
  v5 = [v4 firstObject];

  v6 = -[ReservationContactInfoViewController inputCellForType:](self, "inputCellForType:", [v5 type]);
  v7 = [v6 textField];
  [v7 becomeFirstResponder];
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(ReservationContactInfoViewController *)self contactDelegate];
  [v4 reservationContactInfoViewControllerDidSelectDone:self];
}

- (void)configureTableView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [(ReservationContactInfoViewController *)self tableView];
  [v4 setTableFooterView:v3];

  v5 = [(ReservationContactInfoViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 registerClass:v6 forCellReuseIdentifier:v8];

  v9 = [(ReservationContactInfoViewController *)self tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(ReservationContactInfoViewController *)self tableView];
  [v10 setScrollEnabled:1];
}

- (id)itemsForGuestDisplayPreferences:(id)a3 requirements:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSMutableArray arrayWithCapacity:4];
  if ([v5 nameFieldShouldBeDisplayed])
  {
    if ([v5 nameFieldFirstNameOptional])
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v8 = [v6 nameRequired] ^ 1;
    }

    if ([v5 nameFieldLastNameOptional])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 nameRequired] ^ 1;
    }

    if ([v6 nameRequired] && objc_msgSend(v5, "nameFieldFirstNameOptional"))
    {
      v10 = [v5 nameFieldLastNameOptional];
      v9 &= v10 ^ 1;
      LOBYTE(v8) = v10 | v8;
    }

    v11 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 0, [v5 nameEditable], (v8 & 1) == 0);
    v12 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 1, [v5 nameEditable], v9 ^ 1);
    v18[0] = v11;
    v18[1] = v12;
    v13 = [NSArray arrayWithObjects:v18 count:2];
    [v7 addObjectsFromArray:v13];
  }

  if ([v5 phoneNumberFieldShouldBeDisplayed])
  {
    v14 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 3, [v5 phoneNumberEditable], objc_msgSend(v6, "phoneNumberRequired"));
    [v7 addObject:v14];
  }

  if ([v5 emailAddressFieldShouldBeDisplayed])
  {
    v15 = -[ContactCellItem initWithType:editable:required:]([ContactCellItem alloc], "initWithType:editable:required:", 2, [v5 emailAddressEditable], objc_msgSend(v6, "emailAddressRequired"));
    [v7 addObject:v15];
  }

  v16 = [NSArray arrayWithArray:v7];

  return v16;
}

- (void)configureContactItems
{
  v5 = [(ReservationContactInfoViewController *)self guestDisplayPreferences];
  v3 = [(ReservationContactInfoViewController *)self requirements];
  v4 = [(ReservationContactInfoViewController *)self itemsForGuestDisplayPreferences:v5 requirements:v3];
  [(ReservationContactInfoViewController *)self setContactItems:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ReservationContactInfoViewController *)self contactDelegate];
  [v4 reservationContactInfoViewControllerDidSelectDone:self];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ReservationContactInfoViewController;
  [(ReservationContactInfoViewController *)&v3 viewDidLoad];
  [(ReservationContactInfoViewController *)self configureContactItems];
  [(ReservationContactInfoViewController *)self configureTableView];
}

- (ReservationContactInfoViewController)initWithNameComponents:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 guestDisplayPreferences:(id)a6 requirements:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = ReservationContactInfoViewController;
  v18 = [(ReservationContactInfoViewController *)&v28 initWithStyle:1];
  if (v18)
  {
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"reservation_enter_info_key" value:@"localized string not found" table:0];
    [(ReservationContactInfoViewController *)v18 setTitle:v20];

    v21 = [v16 copy];
    guestDisplayPreferences = v18->_guestDisplayPreferences;
    v18->_guestDisplayPreferences = v21;

    objc_storeStrong(&v18->_requirements, a7);
    [(ReservationContactInfoViewController *)v18 updateFooterText];
    v23 = [v14 copy];
    initializedEmailAddress = v18->_initializedEmailAddress;
    v18->_initializedEmailAddress = v23;

    v25 = [v15 copy];
    initializedPhoneNumber = v18->_initializedPhoneNumber;
    v18->_initializedPhoneNumber = v25;

    objc_storeStrong(&v18->_initializedNameComponents, a3);
  }

  return v18;
}

@end