@interface CNContactContentViewController
+ (Class)classForContentViewControllerImpl;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysWithDescription:(id)a3;
- (CNContactContentViewController)init;
- (CNContactContentViewController)initWithContact:(id)a3;
- (CNContactContentViewController)initWithEnvironment:(id)a3;
- (CNContactContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CNContactContentViewControllerDelegate)contactDelegate;
- (CNContactViewControllerCustomHeaderViewDelegate)personHeaderViewDelegate;
- (CNPresenterDelegate)presentingDelegate;
@end

@implementation CNContactContentViewController

+ (id)descriptorForRequiredKeys
{
  v2 = [a1 classForContentViewControllerImpl];

  return [v2 descriptorForRequiredKeys];
}

+ (Class)classForContentViewControllerImpl
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  v3 = [v2 featureFlags];
  [v3 isFeatureEnabled:10];

  v4 = objc_opt_class();

  return v4;
}

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CNContactContentViewControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (CNContactViewControllerCustomHeaderViewDelegate)personHeaderViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_personHeaderViewDelegate);

  return WeakRetained;
}

- (CNContactContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = [CNUIContactsEnvironment currentEnvironment:a3];
  v6 = [(CNContactContentViewController *)self initWithEnvironment:v5];

  return v6;
}

- (CNContactContentViewController)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [(CNContactContentViewController *)self initWithEnvironment:v3];

  return v4;
}

- (CNContactContentViewController)initWithContact:(id)a3
{
  v4 = a3;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [(CNContactContentViewController *)self initWithEnvironment:v5];

  if (v6)
  {
    [(CNContactContentViewController *)v6 setContact:v4];
  }

  return v6;
}

- (CNContactContentViewController)initWithEnvironment:(id)a3
{
  v4 = a3;
  if (([(CNContactContentViewController *)self isMemberOfClass:objc_opt_class()]& 1) != 0 || [(CNContactContentViewController *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = [objc_alloc(+[CNContactContentViewController classForContentViewControllerImpl](CNContactContentViewController "classForContentViewControllerImpl"))];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNContactContentViewController;
    v5 = [(CNContactContentViewController *)&v8 initWithNibName:0 bundle:0];
  }

  v6 = v5;

  return v6;
}

+ (id)descriptorForRequiredKeysWithDescription:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 "classForContentViewControllerImpl")];

  return v5;
}

@end