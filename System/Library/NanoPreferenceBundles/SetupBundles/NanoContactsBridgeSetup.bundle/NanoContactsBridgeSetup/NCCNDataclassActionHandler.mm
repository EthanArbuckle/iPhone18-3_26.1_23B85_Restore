@interface NCCNDataclassActionHandler
+ (OS_os_log)os_log;
- (BOOL)createABAccountForACAccount:(id)account withChildren:(id)children;
- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)source;
- (BOOL)perform;
- (NCCNDataclassActionHandler)initWithParameters:(id)parameters;
- (void)disableLocalSourceIfNeededAddingAccount:(id)account;
@end

@implementation NCCNDataclassActionHandler

+ (OS_os_log)os_log
{
  if (qword_239F0 != -1)
  {
    sub_DE0C();
  }

  v3 = qword_239F8;

  return v3;
}

- (NCCNDataclassActionHandler)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = NCCNDataclassActionHandler;
  v5 = [(NCCNDataclassActionHandler *)&v14 init];
  if (v5)
  {
    account = [parametersCopy account];
    account = v5->_account;
    v5->_account = account;

    childAccounts = [parametersCopy childAccounts];
    childAccounts = v5->_childAccounts;
    v5->_childAccounts = childAccounts;

    implementation = [parametersCopy implementation];
    implementation = v5->_implementation;
    v5->_implementation = implementation;

    v12 = v5;
  }

  return v5;
}

- (BOOL)perform
{
  selfCopy = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)createABAccountForACAccount:(id)account withChildren:(id)children
{
  childrenCopy = children;
  accountCopy = account;
  implementation = [(NCCNDataclassActionHandler *)self implementation];
  v9 = [implementation createContactsAccountForParentAccount:accountCopy withChildAccounts:childrenCopy];

  return v9;
}

- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)source
{
  sourceCopy = source;
  implementation = [(NCCNDataclassActionHandler *)self implementation];
  v6 = [implementation mergeContactsFromLocalContainerToContainer:sourceCopy];

  return v6;
}

- (void)disableLocalSourceIfNeededAddingAccount:(id)account
{
  if (([account MCIsManaged] & 1) == 0)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "It is necessary to disable the AB local source", v5, 2u);
    }

    [(NCCNDataclassActionHandler *)self setLocalSourceEnabled:0];
  }
}

@end