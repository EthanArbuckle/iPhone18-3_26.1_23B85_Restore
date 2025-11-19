@interface ABPeoplePickerNavigationController
- (ABPeoplePickerNavigationController)initWithAddressBook:(void *)a3;
- (BOOL)_allowsAutorotation;
- (BOOL)_isDelayingPresentation;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)contactStore;
- (id)displayedPropertyKeys;
- (void)_endDelayingPresentation;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)setAddressBook:(ABAddressBookRef)addressBook;
- (void)setupViewControllers;
@end

@implementation ABPeoplePickerNavigationController

- (ABPeoplePickerNavigationController)initWithAddressBook:(void *)a3
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

    if (a3)
    {
      v5 = CFRetain(a3);
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
  v2 = [(ABPeoplePickerNavigationController *)self displayedProperties];

  return [(NSArray *)v2 _cn_map:&__block_literal_global_0];
}

uint64_t __59__ABPeoplePickerNavigationController_displayedPropertyKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBDA58];
  v3 = [a2 intValue];

  return [v2 contactPropertyKeyFromPublicABPropertyID:v3];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_contactPicker_didSelectContactProperty_ == a3 || sel_contactPicker_didSelectContact_ == a3)
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
  v2 = [(ABPeoplePickerNavigationController *)&v4 _allowsAutorotation];
  if (v2)
  {
    LOBYTE(v2) = ABAddressBookShouldAllowAutorotation();
  }

  return v2;
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
  v3 = [(ABPeoplePickerNavigationController *)self addressBook];

  return [v2 contactStoreForPublicAddressBook:v3];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  _CNUILog();
  peoplePickerDelegate = self->_peoplePickerDelegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ABPeoplePickerNavigationController *)self contactStore];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    v9 = [(ABPeoplePickerNavigationController *)self addressBook];
    [self->_peoplePickerDelegate peoplePickerNavigationController:self didSelectPerson:{objc_msgSend(v7, "publicABPersonFromContact:publicAddressBook:", a4, &v9)}];
  }
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  _CNUILog();
  peoplePickerDelegate = self->_peoplePickerDelegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(ABPeoplePickerNavigationController *)self contactStore];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    v10 = [(ABPeoplePickerNavigationController *)self addressBook];
    v8 = [v7 publicABPersonFromContact:objc_msgSend(a4 publicAddressBook:{"contact"), &v10}];
    [self->_peoplePickerDelegate peoplePickerNavigationController:self didSelectPerson:v8 property:objc_msgSend(MEMORY[0x277CBDA58] identifier:{"publicABPropertyIDFromContactPropertyKey:", objc_msgSend(a4, "key")), objc_msgSend(v7, "publicMultiValueIdentifierFromLabeledValue:", objc_msgSend(a4, "labeledValue"))}];
  }
}

- (void)contactPickerDidCancel:(id)a3
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