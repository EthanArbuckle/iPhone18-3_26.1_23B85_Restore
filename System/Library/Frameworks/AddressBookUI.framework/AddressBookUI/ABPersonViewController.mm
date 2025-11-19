@interface ABPersonViewController
+ (ABPersonViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4;
- (ABAddressBookRef)addressBook;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (CGSize)preferredContentSize;
- (CNContactStore)contactStore;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)loadView;
- (void)reloadContactViewController;
- (void)setAddressBook:(ABAddressBookRef)addressBook;
- (void)setDisplayedPerson:(ABRecordRef)displayedPerson;
@end

@implementation ABPersonViewController

- (void)dealloc
{
  [(CNContactViewController *)self->_cnContactViewController setDelegate:0];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  displayedPerson = self->_displayedPerson;
  if (displayedPerson)
  {
    CFRelease(displayedPerson);
  }

  v5.receiver = self;
  v5.super_class = ABPersonViewController;
  [(ABPersonViewController *)&v5 dealloc];
}

- (ABAddressBookRef)addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    if ([(ABPersonViewController *)self displayedPerson])
    {
      v4 = MEMORY[0x2383B6560]([(ABPersonViewController *)self displayedPerson]);
      self->_addressBook = v4;
      if (!v4)
      {
LABEL_6:
        result = ABAddressBookCreateWithOptionsAndPolicy();
        self->_addressBook = result;
        return result;
      }

      CFRetain(v4);
    }

    result = self->_addressBook;
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

- (void)setAddressBook:(ABAddressBookRef)addressBook
{
  v4 = self->_addressBook;
  if (v4 != addressBook)
  {
    if (v4)
    {
      CFRelease(v4);
      self->_addressBook = 0;
    }

    if (addressBook)
    {
      self->_addressBook = CFRetain(addressBook);
    }
  }
}

- (CNContactStore)contactStore
{
  v2 = MEMORY[0x277CBDAB8];
  v3 = [(ABPersonViewController *)self addressBook];

  return [v2 contactStoreForPublicAddressBook:v3];
}

- (void)setDisplayedPerson:(ABRecordRef)displayedPerson
{
  if (self->_displayedPerson != displayedPerson)
  {
    [(ABPersonViewController *)self setAddressBook:0];
    v5 = self->_displayedPerson;
    if (v5)
    {
      CFRelease(v5);
      self->_displayedPerson = displayedPerson;
    }

    if (displayedPerson)
    {
      self->_displayedPerson = CFRetain(displayedPerson);
    }

    if ([(ABPersonViewController *)self cnContactViewController])
    {

      [(ABPersonViewController *)self reloadContactViewController];
    }
  }
}

- (void)loadView
{
  -[ABPersonViewController setView:](self, "setView:", [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 500.0, 500.0}]);
  [-[ABPersonViewController view](self "view")];
  if (![(ABPersonViewController *)self cnContactViewController])
  {

    [(ABPersonViewController *)self reloadContactViewController];
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = ABPersonViewController;
  [(ABPersonViewController *)&v10 encodeRestorableStateWithCoder:?];
  v5 = [(ABPersonViewController *)self displayedPerson];
  if (v5)
  {
    v6 = v5;
    v7 = ABRecordCopyValue(v5, *MEMORY[0x277CB98C0]);
    v8 = ABRecordCopyValue(v6, *MEMORY[0x277CB98D8]);
    v9 = MEMORY[0x2383B6570](v6);
    if (v7)
    {
      [a3 encodeObject:v7 forKey:@"FirstName"];
      CFRelease(v7);
    }

    if (v8)
    {
      [a3 encodeObject:v8 forKey:@"LastName"];
      CFRelease(v8);
    }

    [a3 encodeInteger:v9 forKey:@"Identifier"];
  }

  [a3 encodeBool:-[ABPersonViewController shouldShowLinkedPeople](self forKey:{"shouldShowLinkedPeople"), @"kABDisplayedPersonShowLinkedPeople"}];
}

+ (ABPersonViewController)viewControllerWithRestorationIdentifierPath:(id)a3 coder:(id)a4
{
  v5 = ABAddressBookCreateWithOptionsAndPolicy();
  v6 = [a4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstName"];
  v7 = [a4 decodeObjectOfClass:objc_opt_class() forKey:@"LastName"];
  v8 = [a4 decodeIntegerForKey:@"Identifier"];
  if (v8 == -1)
  {
    goto LABEL_17;
  }

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v5, v8);
  if (!PersonWithRecordID)
  {
    NSLog(&cfstr_SNoPersonFound_0.isa, "ABRecordRef _getPersonFromSavedState(NSCoder *, ABAddressBookRef)", v8, v6, v7);
    goto LABEL_17;
  }

  v10 = PersonWithRecordID;
  v11 = ABRecordCopyValue(PersonWithRecordID, *MEMORY[0x277CB98C0]);
  v12 = ABRecordCopyValue(v10, *MEMORY[0x277CB98D8]);
  if (v6 && ![v6 isEqualToString:v11] || v7 && !objc_msgSend(v7, "isEqualToString:", v12))
  {
    NSLog(&cfstr_SMismatchOnNam.isa, "ABRecordRef _getPersonFromSavedState(NSCoder *, ABAddressBookRef)", v8, v6, v7, v11, v12);
    v10 = 0;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  NSLog(&cfstr_SFoundPersonFo.isa, "ABRecordRef _getPersonFromSavedState(NSCoder *, ABAddressBookRef)", v8, v6, v7);
  if (v11)
  {
LABEL_11:
    CFRelease(v11);
  }

LABEL_12:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    v13 = [[ABPersonViewController alloc] initWithAddressBook:v5];
    [(ABPersonViewController *)v13 setDisplayedPerson:v10];
    -[ABPersonViewController setShouldShowLinkedPeople:](v13, "setShouldShowLinkedPeople:", [a4 decodeBoolForKey:@"kABDisplayedPersonShowLinkedPeople"]);
    if (!v5)
    {
      return v13;
    }

    goto LABEL_18;
  }

LABEL_17:
  NSLog(&cfstr_SNoPersonFound.isa, "+[ABPersonViewController viewControllerWithRestorationIdentifierPath:coder:]");
  v13 = 0;
  if (v5)
  {
LABEL_18:
    CFRelease(v5);
  }

  return v13;
}

- (CGSize)preferredContentSize
{
  cnContactViewController = self->_cnContactViewController;
  if (cnContactViewController)
  {
    [(CNContactViewController *)cnContactViewController preferredContentSize];
  }

  else
  {
    v3 = *MEMORY[0x277CBF3A8];
    v4 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  [(ABPersonViewController *)self personViewDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v8 = [(ABPersonViewController *)self addressBook];
  v6 = -[CNContactStore publicABPersonFromContact:publicAddressBook:](-[ABPersonViewController contactStore](self, "contactStore"), "publicABPersonFromContact:publicAddressBook:", [a4 contact], &v8);
  return [-[ABPersonViewController personViewDelegate](self "personViewDelegate")];
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  if ([(ABPersonViewController *)self displayedPerson])
  {
    v6 = [(ABPersonViewController *)self displayedPerson];

    [a4 overwritePublicABPerson:v6];
  }
}

- (void)reloadContactViewController
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (![(ABPersonViewController *)self displayedPerson])
  {
    v3 = ABPersonCreate();
    [(ABPersonViewController *)self setDisplayedPerson:v3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = [MEMORY[0x277CBDA58] contactPropertyKeyFromPublicABPropertyID:{-[ABPersonViewController highlightedProperty](self, "highlightedProperty")}];
  v25[0] = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v6 = v5;
  if (v4)
  {
    v6 = [v5 arrayByAddingObject:v4];
  }

  v7 = [MEMORY[0x277CBDA58] contactFromPublicABPerson:-[ABPersonViewController displayedPerson](self keysToFetch:{"displayedPerson"), v6}];
  v8 = v7;
  if (v4 && (v9 = [v7 valueForKey:v4], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v22 = 0u, v23 = 0u, v20 = 0u, v21 = 0u, (v10 = objc_msgSend(v9, "countByEnumeratingWithState:objects:count:", &v20, v24, 16)) != 0))
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 iOSLegacyIdentifier];
        if (v15 == [(ABPersonViewController *)self highlightedMultiValueIdentifier])
        {
          v16 = [v14 identifier];
          goto LABEL_18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v16 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_18:
  v17 = [(NSArray *)[(ABPersonViewController *)self displayedProperties] _cn_map:&__block_literal_global_1];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] willMoveToParentViewController:0];
  if ([(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] isViewLoaded])
  {
    [-[CNContactViewController view](-[ABPersonViewController cnContactViewController](self "cnContactViewController")];
  }

  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] removeFromParentViewController];
  [(ABPersonViewController *)self setCnContactViewController:0];
  -[ABPersonViewController setCnContactViewController:](self, "setCnContactViewController:", [MEMORY[0x277CBDC48] viewControllerForContact:v8]);
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setAllowsEditing:[(ABPersonViewController *)self allowsEditing]];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setAllowsActions:[(ABPersonViewController *)self allowsActions]];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setShouldShowLinkedContacts:[(ABPersonViewController *)self shouldShowLinkedPeople]];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setDisplayedPropertyKeys:v17];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setDelegate:self];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] highlightPropertyWithKey:v4 identifier:v16 important:[(ABPersonViewController *)self highlightedImportant]];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] setContactStore:[(ABPersonViewController *)self contactStore]];
  [(ABPersonViewController *)self addChildViewController:[(ABPersonViewController *)self cnContactViewController]];
  v18 = [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] view];
  [-[ABPersonViewController view](self "view")];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [-[ABPersonViewController view](self "view")];
  [(CNContactViewController *)[(ABPersonViewController *)self cnContactViewController] didMoveToParentViewController:self];
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __53__ABPersonViewController_reloadContactViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDA58];
  v3 = [a2 intValue];

  return [v2 contactPropertyKeyFromPublicABPropertyID:v3];
}

@end