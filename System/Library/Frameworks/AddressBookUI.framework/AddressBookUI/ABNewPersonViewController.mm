@interface ABNewPersonViewController
- (ABAddressBookRef)addressBook;
- (CGSize)preferredContentSize;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dealloc;
- (void)loadContactViewController;
- (void)loadView;
- (void)setAddressBook:(ABAddressBookRef)addressBook;
- (void)setDisplayedPerson:(ABRecordRef)displayedPerson;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
@end

@implementation ABNewPersonViewController

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(CNContactViewController *)self->_cnContactViewController setDelegate:0];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = ABNewPersonViewController;
  [(ABNewPersonViewController *)&v4 dealloc];
}

- (ABAddressBookRef)addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    if ([(ABNewPersonViewController *)self displayedPerson])
    {
      v4 = MEMORY[0x2383B6560]([(ABNewPersonViewController *)self displayedPerson]);
      self->_addressBook = v4;
      if (v4)
      {
        CFRetain(v4);
      }
    }

    if ([(ABNewPersonViewController *)self parentGroup])
    {
      v5 = MEMORY[0x2383B6560]([(ABNewPersonViewController *)self parentGroup]);
      self->_addressBook = v5;
      if (!v5)
      {
LABEL_9:
        result = ABAddressBookCreateWithOptionsAndPolicy();
        self->_addressBook = result;
        return result;
      }

      CFRetain(v5);
    }

    result = self->_addressBook;
    if (result)
    {
      return result;
    }

    goto LABEL_9;
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

- (void)setDisplayedPerson:(ABRecordRef)displayedPerson
{
  v5 = self->_displayedPerson;
  if (v5)
  {
    CFRelease(v5);
    self->_displayedPerson = 0;
  }

  if (displayedPerson)
  {
    self->_displayedPerson = CFRetain(displayedPerson);
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  -[ABNewPersonViewController setView:](self, "setView:", [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}]);
  [-[ABNewPersonViewController view](self "view")];

  [(ABNewPersonViewController *)self loadContactViewController];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = ABNewPersonViewController;
  [(ABNewPersonViewController *)&v5 setEditing:1 animated:0];
  [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] setEditing:1 animated:0];
}

- (CGSize)preferredContentSize
{
  [(CNContactViewController *)self->_cnContactViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  newPersonViewDelegate = self->_newPersonViewDelegate;
  if (objc_opt_respondsToSelector())
  {
    if (contact)
    {
      if ([(ABNewPersonViewController *)self displayedPerson])
      {
        if ([objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")])
        {
          addressBook = [(ABNewPersonViewController *)self addressBook];
        }

        else
        {
          addressBook = 0;
        }

        [contact updateNewPublicABPerson:-[ABNewPersonViewController displayedPerson](self inAddressBook:{"displayedPerson"), addressBook}];
      }

      v11 = self->_newPersonViewDelegate;
      displayedPerson = [(ABNewPersonViewController *)self displayedPerson];
      v8 = v11;
      selfCopy2 = self;
    }

    else
    {
      v8 = self->_newPersonViewDelegate;
      selfCopy2 = self;
      displayedPerson = 0;
    }

    [(ABNewPersonViewControllerDelegate *)v8 newPersonViewController:selfCopy2 didCompleteWithNewPerson:displayedPerson];
  }
}

- (void)loadContactViewController
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (![(ABNewPersonViewController *)self displayedPerson])
  {
    if ([(ABNewPersonViewController *)self parentGroup])
    {
      v3 = ABGroupCopySource([(ABNewPersonViewController *)self parentGroup]);
      if (!v3)
      {
        [(ABNewPersonViewController *)self setDisplayedPerson:0];
        goto LABEL_12;
      }

      v4 = v3;
      v5 = ABPersonCreateInSource(v3);
      CFRelease(v4);
    }

    else
    {
      if ([(ABNewPersonViewController *)self parentSource])
      {
        v6 = ABPersonCreateInSource([(ABNewPersonViewController *)self parentSource]);
      }

      else
      {
        v6 = ABPersonCreate();
      }

      v5 = v6;
    }

    [(ABNewPersonViewController *)self setDisplayedPerson:v5];
    if (v5)
    {
      CFRelease(v5);
    }
  }

LABEL_12:
  v16[0] = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [v7 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBDC40], "allCardProperties")}];
  v9 = [MEMORY[0x277CBDA58] contactFromPublicABPerson:-[ABNewPersonViewController displayedPerson](self keysToFetch:"displayedPerson") mutable:{v8, 1}];
  if ([(ABNewPersonViewController *)self parentGroup])
  {
    if ([objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")])
    {
      v15 = 0;
      v10 = [objc_msgSend(MEMORY[0x277CBDAB8] contactStoreForPublicAddressBook:{-[ABNewPersonViewController addressBook](self, "addressBook")), "groupsMatchingPredicate:error:", objc_msgSend(MEMORY[0x277CBDB10], "predicateForiOSLegacyIdentifier:", MEMORY[0x2383B6570](-[ABNewPersonViewController parentGroup](self, "parentGroup"))), &v15}];
      firstObject = v10;
      if (!v10)
      {
        NSLog(&cfstr_CanTRetrieveGr.isa, v15);
        goto LABEL_21;
      }

      if ([v10 count] == 1)
      {
        firstObject = [firstObject firstObject];
        goto LABEL_21;
      }

      NSLog(&cfstr_CanTRetrieveAS.isa, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(firstObject, "count")}]);
    }

    else
    {
      NSLog(&cfstr_CanTRetrieveGr_0.isa);
    }
  }

  firstObject = 0;
LABEL_21:
  if ([(ABNewPersonViewController *)self mergeContact])
  {
    allCardProperties = [MEMORY[0x277CBDC40] allCardProperties];
    [v9 addProperties:allCardProperties excludingProperties:objc_msgSend(MEMORY[0x277CBDC40] fromContact:{"nameProperties"), -[ABNewPersonViewController mergeContact](self, "mergeContact")}];
  }

  [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] willMoveToParentViewController:0];
  if ([(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] isViewLoaded])
  {
    [-[CNContactViewController view](-[ABNewPersonViewController cnContactViewController](self "cnContactViewController")];
  }

  [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] removeFromParentViewController];
  [(ABNewPersonViewController *)self setCnContactViewController:0];
  -[ABNewPersonViewController setCnContactViewController:](self, "setCnContactViewController:", [MEMORY[0x277CBDC48] viewControllerForNewContact:v9]);
  [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] setAllowsEditing:1];
  if ([objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")])
  {
    -[CNContactViewController setContactStore:](-[ABNewPersonViewController cnContactViewController](self, "cnContactViewController"), "setContactStore:", [MEMORY[0x277CBDAB8] contactStoreForPublicAddressBook:{-[ABNewPersonViewController addressBook](self, "addressBook")}]);
  }

  if (self->_newPersonViewDelegate)
  {
    [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] setDelegate:self];
  }

  if (firstObject)
  {
    [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] setParentGroup:firstObject];
  }

  [(ABNewPersonViewController *)self addChildViewController:[(ABNewPersonViewController *)self cnContactViewController]];
  view = [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] view];
  [-[ABNewPersonViewController view](self "view")];
  [view setFrame:?];
  [view setAutoresizingMask:18];
  [-[ABNewPersonViewController view](self "view")];
  [(CNContactViewController *)[(ABNewPersonViewController *)self cnContactViewController] didMoveToParentViewController:self];
  [(ABNewPersonViewController *)self setEditing:1 animated:0];
  v14 = *MEMORY[0x277D85DE8];
}

@end