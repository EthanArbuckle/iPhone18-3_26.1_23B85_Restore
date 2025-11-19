@interface CNContactEditAuthorizationManager
- (BOOL)saveWasAuthorized;
- (BOOL)shouldPromptForPasscodeAuthorization;
- (CNContactEditAuthorizationManager)initWithContact:(id)a3 contactStore:(id)a4;
- (id)authorizationCheck;
- (void)authorizeForViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completionBlock:(id)a6;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
- (void)updateWithContact:(id)a3;
@end

@implementation CNContactEditAuthorizationManager

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNContactEditAuthorizationManager *)self setAuthorizationController:0];
  [(CNContactEditAuthorizationManager *)self setAuthorizationResult:a4];
  v6 = [(CNContactEditAuthorizationManager *)self authorizationResultBlock];

  if (v6)
  {
    v7 = [(CNContactEditAuthorizationManager *)self authorizationResultBlock];
    v7[2](v7, a4);

    [(CNContactEditAuthorizationManager *)self setAuthorizationResultBlock:0];
  }
}

- (void)authorizeForViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  v19 = a3;
  v10 = a4;
  v11 = a6;
  if ([(CNContactEditAuthorizationManager *)self authorizationResult]== 2)
  {
    v11[2](v11, [(CNContactEditAuthorizationManager *)self authorizationResult]);
  }

  [(CNContactEditAuthorizationManager *)self setAuthorizationResultBlock:v11];
  v12 = [(CNContactEditAuthorizationManager *)self authorizationController];

  if (!v12)
  {
    v13 = objc_alloc_init(CNUIEditAuthorizationController);
    [(CNContactEditAuthorizationManager *)self setAuthorizationController:v13];

    v14 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [v14 setDelegate:self];

    v15 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [v15 setSender:v10];

    v16 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [v16 setAnimated:v7];

    v17 = [(CNContactEditAuthorizationManager *)self authorizationController];
    [v17 setGuardedViewController:v19];
  }

  v18 = [(CNContactEditAuthorizationManager *)self authorizationController];
  [v18 presentAuthorizationUI];
}

- (id)authorizationCheck
{
  v3 = objc_alloc(MEMORY[0x1E6996B08]);
  v4 = [(CNContactEditAuthorizationManager *)self contact];
  v5 = [(CNContactEditAuthorizationManager *)self parentContainer];
  v6 = [(CNContactEditAuthorizationManager *)self ignoresParentalRestrictions];
  v7 = [(CNContactEditAuthorizationManager *)self contactViewCache];
  v8 = [v3 initWithContact:v4 parentContainer:v5 ignoresParentalRestrictions:v6 linkedParentContainerProvider:v7];

  return v8;
}

- (BOOL)saveWasAuthorized
{
  v2 = self;
  v3 = [(CNContactEditAuthorizationManager *)self authorizationCheck];
  LOBYTE(v2) = [v3 shouldBypassRestrictionsGivenAuthorizationResult:{-[CNContactEditAuthorizationManager authorizationResult](v2, "authorizationResult")}];

  return v2;
}

- (BOOL)shouldPromptForPasscodeAuthorization
{
  v2 = [(CNContactEditAuthorizationManager *)self authorizationCheck];
  v3 = [v2 shouldPromptForPasscodeAuthorization];

  return v3;
}

- (void)updateWithContact:(id)a3
{
  v5 = a3;
  p_contact = &self->_contact;
  if (self->_contact != v5)
  {
    v9 = v5;
    objc_storeStrong(p_contact, a3);
    v7 = [(CNContactEditAuthorizationManager *)self contactViewCache];
    v8 = [v7 containerForContact:v9];
    [(CNContactEditAuthorizationManager *)self setParentContainer:v8];
  }

  MEMORY[0x1EEE66BE0](p_contact);
}

- (CNContactEditAuthorizationManager)initWithContact:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactEditAuthorizationManager;
  v9 = [(CNContactEditAuthorizationManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v10->_contactStore, a4);
    v10->_authorizationResult = 1;
    v11 = v10;
  }

  return v10;
}

@end