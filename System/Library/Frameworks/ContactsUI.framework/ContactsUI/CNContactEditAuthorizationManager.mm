@interface CNContactEditAuthorizationManager
- (BOOL)saveWasAuthorized;
- (BOOL)shouldPromptForPasscodeAuthorization;
- (CNContactEditAuthorizationManager)initWithContact:(id)contact contactStore:(id)store;
- (id)authorizationCheck;
- (void)authorizeForViewController:(id)controller sender:(id)sender animated:(BOOL)animated completionBlock:(id)block;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
- (void)updateWithContact:(id)contact;
@end

@implementation CNContactEditAuthorizationManager

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNContactEditAuthorizationManager *)self setAuthorizationController:0];
  [(CNContactEditAuthorizationManager *)self setAuthorizationResult:result];
  authorizationResultBlock = [(CNContactEditAuthorizationManager *)self authorizationResultBlock];

  if (authorizationResultBlock)
  {
    authorizationResultBlock2 = [(CNContactEditAuthorizationManager *)self authorizationResultBlock];
    authorizationResultBlock2[2](authorizationResultBlock2, result);

    [(CNContactEditAuthorizationManager *)self setAuthorizationResultBlock:0];
  }
}

- (void)authorizeForViewController:(id)controller sender:(id)sender animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  blockCopy = block;
  if ([(CNContactEditAuthorizationManager *)self authorizationResult]== 2)
  {
    blockCopy[2](blockCopy, [(CNContactEditAuthorizationManager *)self authorizationResult]);
  }

  [(CNContactEditAuthorizationManager *)self setAuthorizationResultBlock:blockCopy];
  authorizationController = [(CNContactEditAuthorizationManager *)self authorizationController];

  if (!authorizationController)
  {
    v13 = objc_alloc_init(CNUIEditAuthorizationController);
    [(CNContactEditAuthorizationManager *)self setAuthorizationController:v13];

    authorizationController2 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [authorizationController2 setDelegate:self];

    authorizationController3 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [authorizationController3 setSender:senderCopy];

    authorizationController4 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [authorizationController4 setAnimated:animatedCopy];

    authorizationController5 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [authorizationController5 setGuardedViewController:controllerCopy];
  }

  authorizationController6 = [(CNContactEditAuthorizationManager *)self authorizationController];
  [authorizationController6 presentAuthorizationUI];
}

- (id)authorizationCheck
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  contact = [(CNContactEditAuthorizationManager *)self contact];
  parentContainer = [(CNContactEditAuthorizationManager *)self parentContainer];
  ignoresParentalRestrictions = [(CNContactEditAuthorizationManager *)self ignoresParentalRestrictions];
  contactViewCache = [(CNContactEditAuthorizationManager *)self contactViewCache];
  v8 = [v3 initWithContact:contact parentContainer:parentContainer ignoresParentalRestrictions:ignoresParentalRestrictions linkedParentContainerProvider:contactViewCache];

  return v8;
}

- (BOOL)saveWasAuthorized
{
  selfCopy = self;
  authorizationCheck = [(CNContactEditAuthorizationManager *)self authorizationCheck];
  LOBYTE(selfCopy) = [authorizationCheck shouldBypassRestrictionsGivenAuthorizationResult:{-[CNContactEditAuthorizationManager authorizationResult](selfCopy, "authorizationResult")}];

  return selfCopy;
}

- (BOOL)shouldPromptForPasscodeAuthorization
{
  authorizationCheck = [(CNContactEditAuthorizationManager *)self authorizationCheck];
  shouldPromptForPasscodeAuthorization = [authorizationCheck shouldPromptForPasscodeAuthorization];

  return shouldPromptForPasscodeAuthorization;
}

- (void)updateWithContact:(id)contact
{
  contactCopy = contact;
  p_contact = &self->_contact;
  if (self->_contact != contactCopy)
  {
    v9 = contactCopy;
    objc_storeStrong(p_contact, contact);
    contactViewCache = [(CNContactEditAuthorizationManager *)self contactViewCache];
    v8 = [contactViewCache containerForContact:v9];
    [(CNContactEditAuthorizationManager *)self setParentContainer:v8];
  }

  MEMORY[0x1EEE66BE0](p_contact);
}

- (CNContactEditAuthorizationManager)initWithContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNContactEditAuthorizationManager;
  v9 = [(CNContactEditAuthorizationManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_contactStore, store);
    v10->_authorizationResult = 1;
    v11 = v10;
  }

  return v10;
}

@end