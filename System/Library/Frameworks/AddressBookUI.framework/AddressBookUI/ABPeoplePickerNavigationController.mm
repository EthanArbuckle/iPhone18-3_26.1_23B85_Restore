@interface ABPeoplePickerNavigationController
- (ABPeoplePickerNavigationController)initWithAddressBook:(void *)book;
- (BOOL)_allowsAutorotation;
- (BOOL)_isDelayingPresentation;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)contactStore;
- (id)displayedPropertyKeys;
- (void)_endDelayingPresentation;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)setAddressBook:(ABAddressBookRef)addressBook;
- (void)setupViewControllers;
@end

@implementation ABPeoplePickerNavigationController

- (ABPeoplePickerNavigationController)initWithAddressBook:(void *)book
{
  v7.receiver = self;
  v7.super_class = ABPeoplePickerNavigationController;
  v4 = [(ABPeoplePickerNavigationController *)&v7 initWithNibName:0 bundle:0];
  if (v4)
  {
    if (([(ABPeoplePickerNavigationController *)v4 isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      NSLog(&cfstr_Abpeoplepicker.isa);
    }

    if (book)
    {
      v5 = CFRetain(book);
    }

    else
    {
      v5 = 0;
    }

    v4->_addressBook = v5;
    [(ABPeoplePickerNavigationController *)v4 _setClipUnderlapWhileTransitioning:1];
  }

  return v4;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
    self->_addressBook = 0;
  }

  self->_peoplePickerDelegate = 0;

  v4.receiver = self;
  v4.super_class = ABPeoplePickerNavigationController;
  [(ABPeoplePickerNavigationController *)&v4 dealloc];
}

- (void)setupViewControllers
{
  if (![-[ABPeoplePickerNavigationController viewControllers](self "viewControllers")])
  {
    if (([(ABPeoplePickerNavigationController *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      NSLog(&cfstr_Abpeoplepicker.isa);
    }

    if ([objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")])
    {
      if (!self->_addressBook)
      {
        self->_addressBook = ABAddressBookCreateWithOptionsAndPolicy();
      }
    }

    v3 = [objc_alloc(MEMORY[0x277CBDC18]) initWithNibName:0 bundle:0];
    self->_contactPicker = v3;
    [(CNContactPickerViewController *)v3 setDelegate:self];
    [(CNContactPickerViewController *)self->_contactPicker setPredicateForEnablingContact:[(ABPeoplePickerNavigationController *)self predicateForEnablingPerson]];
    [(CNContactPickerViewController *)self->_contactPicker setPredicateForSelectionOfContact:[(ABPeoplePickerNavigationController *)self predicateForSelectionOfPerson]];
    [(CNContactPickerViewController *)self->_contactPicker setDisplayedPropertyKeys:[(ABPeoplePickerNavigationController *)self displayedPropertyKeys]];
    [(CNContactPickerViewController *)self->_contactPicker setAllowsCancel:[(ABPeoplePickerNavigationController *)self _shouldPreventCancelButtonsFromShowing]^ 1];
    v4.receiver = self;
    v4.super_class = ABPeoplePickerNavigationController;
    [(ABPeoplePickerNavigationController *)&v4 setNavigationBarHidden:1 animated:0];
    [(ABPeoplePickerNavigationController *)self _setViewController:self->_contactPicker animated:0];
    [(CNContactPickerViewController *)self->_contactPicker _viewWillBePresented];
  }
}

- (id)displayedPropertyKeys
{
  displayedProperties = [(ABPeoplePickerNavigationController *)self displayedProperties];

  return [(NSArray *)displayedProperties _cn_map:&__block_literal_global_0];
}

uint64_t __59__ABPeoplePickerNavigationController_displayedPropertyKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDA58];
  v3 = [a2 intValue];

  return [v2 contactPropertyKeyFromPublicABPropertyID:v3];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_contactPicker_didSelectContactProperty_ == selector || sel_contactPicker_didSelectContact_ == selector)
  {
    [(ABPeoplePickerNavigationController *)self peoplePickerDelegate];
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ABPeoplePickerNavigationController;
    v3 = [(ABPeoplePickerNavigationController *)&v5 respondsToSelector:?];
  }

  return v3 & 1;
}

- (BOOL)_allowsAutorotation
{
  v4.receiver = self;
  v4.super_class = ABPeoplePickerNavigationController;
  _allowsAutorotation = [(ABPeoplePickerNavigationController *)&v4 _allowsAutorotation];
  if (_allowsAutorotation)
  {
    LOBYTE(_allowsAutorotation) = ABAddressBookShouldAllowAutorotation();
  }

  return _allowsAutorotation;
}

- (BOOL)_isDelayingPresentation
{
  v5.receiver = self;
  v5.super_class = ABPeoplePickerNavigationController;
  if ([(ABPeoplePickerNavigationController *)&v5 _isDelayingPresentation])
  {
    return 1;
  }

  if (!self->_ignoreViewWillBePresented && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(ABPeoplePickerNavigationController *)self _viewWillBePresented];
  }

  v4.receiver = self;
  v4.super_class = ABPeoplePickerNavigationController;
  return [(ABPeoplePickerNavigationController *)&v4 _isDelayingPresentation];
}

- (void)_endDelayingPresentation
{
  self->_ignoreViewWillBePresented = 1;
  v3.receiver = self;
  v3.super_class = ABPeoplePickerNavigationController;
  [(ABPeoplePickerNavigationController *)&v3 _endDelayingPresentation];
  self->_ignoreViewWillBePresented = 0;
}

- (void)setAddressBook:(ABAddressBookRef)addressBook
{
  v5 = [objc_msgSend(MEMORY[0x277CFBDB8] "sharedInstance")];
  if (addressBook && v5 && self->_addressBook != addressBook)
  {
    CFRetain(addressBook);
    v6 = self->_addressBook;
    if (v6)
    {
      CFRelease(v6);
    }

    self->_addressBook = addressBook;
  }
}

- (id)contactStore
{
  v2 = MEMORY[0x277CBDAB8];
  addressBook = [(ABPeoplePickerNavigationController *)self addressBook];

  return [v2 contactStoreForPublicAddressBook:addressBook];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  _CNUILog();
  peoplePickerDelegate = self->_peoplePickerDelegate;
  if (objc_opt_respondsToSelector())
  {
    contactStore = [(ABPeoplePickerNavigationController *)self contactStore];
    if (!contactStore)
    {
      contactStore = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    addressBook = [(ABPeoplePickerNavigationController *)self addressBook];
    [self->_peoplePickerDelegate peoplePickerNavigationController:self didSelectPerson:{objc_msgSend(contactStore, "publicABPersonFromContact:publicAddressBook:", contact, &addressBook)}];
  }
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  _CNUILog();
  peoplePickerDelegate = self->_peoplePickerDelegate;
  if (objc_opt_respondsToSelector())
  {
    contactStore = [(ABPeoplePickerNavigationController *)self contactStore];
    if (!contactStore)
    {
      contactStore = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    addressBook = [(ABPeoplePickerNavigationController *)self addressBook];
    v8 = [contactStore publicABPersonFromContact:objc_msgSend(property publicAddressBook:{"contact"), &addressBook}];
    [self->_peoplePickerDelegate peoplePickerNavigationController:self didSelectPerson:v8 property:objc_msgSend(MEMORY[0x277CBDA58] identifier:{"publicABPropertyIDFromContactPropertyKey:", objc_msgSend(property, "key")), objc_msgSend(contactStore, "publicMultiValueIdentifierFromLabeledValue:", objc_msgSend(property, "labeledValue"))}];
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  _CNUILog();
  peoplePickerDelegate = self->_peoplePickerDelegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_peoplePickerDelegate;

    [v5 peoplePickerNavigationControllerDidCancel:self];
  }
}

@end