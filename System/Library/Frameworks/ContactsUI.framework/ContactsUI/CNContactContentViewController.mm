@interface CNContactContentViewController
+ (Class)classForContentViewControllerImpl;
+ (id)descriptorForRequiredKeys;
+ (id)descriptorForRequiredKeysWithDescription:(id)description;
- (CNContactContentViewController)init;
- (CNContactContentViewController)initWithContact:(id)contact;
- (CNContactContentViewController)initWithEnvironment:(id)environment;
- (CNContactContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CNContactContentViewControllerDelegate)contactDelegate;
- (CNContactViewControllerCustomHeaderViewDelegate)personHeaderViewDelegate;
- (CNPresenterDelegate)presentingDelegate;
@end

@implementation CNContactContentViewController

+ (id)descriptorForRequiredKeys
{
  classForContentViewControllerImpl = [self classForContentViewControllerImpl];

  return [classForContentViewControllerImpl descriptorForRequiredKeys];
}

+ (Class)classForContentViewControllerImpl
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  [featureFlags isFeatureEnabled:10];

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

- (CNContactContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = [CNUIContactsEnvironment currentEnvironment:name];
  v6 = [(CNContactContentViewController *)self initWithEnvironment:v5];

  return v6;
}

- (CNContactContentViewController)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [(CNContactContentViewController *)self initWithEnvironment:v3];

  return v4;
}

- (CNContactContentViewController)initWithContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CNUIContactsEnvironment currentEnvironment];
  v6 = [(CNContactContentViewController *)self initWithEnvironment:v5];

  if (v6)
  {
    [(CNContactContentViewController *)v6 setContact:contactCopy];
  }

  return v6;
}

- (CNContactContentViewController)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
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

+ (id)descriptorForRequiredKeysWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = [objc_msgSend(self "classForContentViewControllerImpl")];

  return v5;
}

@end