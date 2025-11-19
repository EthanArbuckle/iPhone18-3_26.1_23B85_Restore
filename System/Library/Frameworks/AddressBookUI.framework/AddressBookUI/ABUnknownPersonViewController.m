@interface ABUnknownPersonViewController
- (ABAddressBookRef)addressBook;
- (ABUnknownPersonViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 property:(id)a5 labeledValue:(id)a6;
- (CGSize)preferredContentSize;
- (CNContactViewController)cnContactViewController;
- (id)contactStore;
- (uint64_t)loadContactViewController;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)loadContactViewController;
- (void)loadView;
- (void)setAddressBook:(ABAddressBookRef)addressBook;
- (void)setDisplayedPerson:(ABRecordRef)displayedPerson;
@end

@implementation ABUnknownPersonViewController

- (ABUnknownPersonViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ABUnknownPersonViewController;
  v4 = [(ABUnknownPersonViewController *)&v7 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_allowsAddingToAddressBook = 1;
    v4->_allowsActions = 0;
    [-[ABUnknownPersonViewController navigationItem](v4 "navigationItem")];
  }

  return v5;
}

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
  v5.super_class = ABUnknownPersonViewController;
  [(ABUnknownPersonViewController *)&v5 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  -[ABUnknownPersonViewController setView:](self, "setView:", [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}]);
  [-[ABUnknownPersonViewController view](self "view")];

  [(ABUnknownPersonViewController *)self loadContactViewController];
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = ABUnknownPersonViewController;
  [(ABUnknownPersonViewController *)&v8 encodeRestorableStateWithCoder:?];
  if ([(ABUnknownPersonViewController *)self displayedPerson])
  {
    v5 = MEMORY[0x277CBDA58];
    v6 = [(ABUnknownPersonViewController *)self displayedPerson];
    v9[0] = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
    [a3 encodeObject:objc_msgSend(v5 forKey:{"contactFromPublicABPerson:keysToFetch:", v6, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v9, 1)), @"kABUnknownPersonRecordKey"}];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = ABUnknownPersonViewController;
  [(ABUnknownPersonViewController *)&v9 decodeRestorableStateWithCoder:?];
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kABUnknownPersonRecordKey"];
  if (v5)
  {
    v6 = v5;
    v8 = [(ABUnknownPersonViewController *)self addressBook];
    v7 = [-[ABUnknownPersonViewController contactStore](self "contactStore")];
    if (v7)
    {
      [(ABUnknownPersonViewController *)self setDisplayedPerson:v7];
    }
  }
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

- (ABAddressBookRef)addressBook
{
  result = self->_addressBook;
  if (!result)
  {
    if ([(ABUnknownPersonViewController *)self displayedPerson])
    {
      v4 = MEMORY[0x2383B6560]([(ABUnknownPersonViewController *)self displayedPerson]);
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

- (id)contactStore
{
  v2 = MEMORY[0x277CBDAB8];
  v3 = [(ABUnknownPersonViewController *)self addressBook];

  return [v2 contactStoreForPublicAddressBook:v3];
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

- (CNContactViewController)cnContactViewController
{
  if (!self->_cnContactViewController && ([(ABUnknownPersonViewController *)self displayedPerson]|| [(ABUnknownPersonViewController *)self alternateName]))
  {
    [(ABUnknownPersonViewController *)self loadContactViewController];
  }

  return self->_cnContactViewController;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  [(ABUnknownPersonViewController *)self unknownPersonViewDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_10:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a4)
  {
    v6 = [(ABUnknownPersonViewController *)self addressBook];
    v13 = v6;
    if (![(ABUnknownPersonViewController *)self displayedPerson])
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CBDA58];
    v8 = [(ABUnknownPersonViewController *)self displayedPerson];
    v14[0] = *MEMORY[0x277CBD018];
    if (![objc_msgSend(objc_msgSend(v7 contactFromPublicABPerson:v8 keysToFetch:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v14, 1)), "identifier"), "isEqualToString:", objc_msgSend(a4, "identifier")}])
    {
      goto LABEL_8;
    }

    if (([a4 updateNewPublicABPerson:-[ABUnknownPersonViewController displayedPerson](self inAddressBook:{"displayedPerson"), v6}] & 1) == 0)
    {
      NSLog(&cfstr_CouldnTUpdateD.isa, a4);
    }

    v9 = [(ABUnknownPersonViewController *)self displayedPerson];
    if (!v9)
    {
LABEL_8:
      v9 = [-[ABUnknownPersonViewController contactStore](self "contactStore")];
    }

    [-[ABUnknownPersonViewController unknownPersonViewDelegate](self "unknownPersonViewDelegate")];
    goto LABEL_10;
  }

  v11 = [(ABUnknownPersonViewController *)self unknownPersonViewDelegate];
  v12 = *MEMORY[0x277D85DE8];

  [v11 unknownPersonViewController:self didResolveToPerson:0];
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContact:(id)a4 property:(id)a5 labeledValue:(id)a6
{
  [(ABUnknownPersonViewController *)self unknownPersonViewDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  v12 = [(ABUnknownPersonViewController *)self addressBook];
  v10 = [-[ABUnknownPersonViewController contactStore](self "contactStore")];
  return [-[ABUnknownPersonViewController unknownPersonViewDelegate](self "unknownPersonViewDelegate")];
}

- (void)loadContactViewController
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (![(ABUnknownPersonViewController *)self displayedPerson]&& ![(ABUnknownPersonViewController *)self alternateName])
  {
    [(ABUnknownPersonViewController *)a2 loadContactViewController];
  }

  v4 = MEMORY[0x277CBDA58];
  v5 = [(ABUnknownPersonViewController *)self displayedPerson];
  v10[0] = [MEMORY[0x277CBDC48] descriptorForRequiredKeys];
  v6 = [v4 contactFromPublicABPerson:v5 keysToFetch:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 1)}];
  [(CNContactViewController *)self->_cnContactViewController willMoveToParentViewController:0];
  if ([(CNContactViewController *)self->_cnContactViewController isViewLoaded])
  {
    [-[CNContactViewController view](self->_cnContactViewController "view")];
  }

  [(CNContactViewController *)self->_cnContactViewController removeFromParentViewController];
  self->_cnContactViewController = 0;
  -[ABUnknownPersonViewController setCnContactViewController:](self, "setCnContactViewController:", [MEMORY[0x277CBDC48] viewControllerForUnknownContact:v6]);
  [(CNContactViewController *)self->_cnContactViewController setAllowsEditing:0];
  [(CNContactViewController *)self->_cnContactViewController setMessage:[(ABUnknownPersonViewController *)self message]];
  [(CNContactViewController *)self->_cnContactViewController setAllowsActions:[(ABUnknownPersonViewController *)self allowsActions]];
  [(CNContactViewController *)self->_cnContactViewController setAlternateName:[(ABUnknownPersonViewController *)self alternateName]];
  if ([(ABUnknownPersonViewController *)self allowsAddingToAddressBook])
  {
    if ([objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")])
    {
      v7 = [(ABUnknownPersonViewController *)self contactStore];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    [(CNContactViewController *)self->_cnContactViewController setContactStore:v7];
  }

  if ([(ABUnknownPersonViewController *)self unknownPersonViewDelegate])
  {
    [(CNContactViewController *)self->_cnContactViewController setDelegate:self];
  }

  [(ABUnknownPersonViewController *)self addChildViewController:self->_cnContactViewController];
  v8 = [(CNContactViewController *)self->_cnContactViewController view];
  [v8 setAutoresizingMask:18];
  [-[ABUnknownPersonViewController view](self "view")];
  [v8 setFrame:?];
  [-[ABUnknownPersonViewController view](self "view")];
  [(CNContactViewController *)self->_cnContactViewController didMoveToParentViewController:self];
  v9 = *MEMORY[0x277D85DE8];
}

- (uint64_t)loadContactViewController
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ABUnknownPersonViewController.m" lineNumber:249 description:@"We should always have a person here."];
}

@end