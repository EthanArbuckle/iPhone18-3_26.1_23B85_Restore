@interface NCCNDataclassActionHandler
+ (OS_os_log)os_log;
- (BOOL)createABAccountForACAccount:(id)a3 withChildren:(id)a4;
- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)a3;
- (BOOL)perform;
- (NCCNDataclassActionHandler)initWithParameters:(id)a3;
- (void)disableLocalSourceIfNeededAddingAccount:(id)a3;
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

- (NCCNDataclassActionHandler)initWithParameters:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NCCNDataclassActionHandler;
  v5 = [(NCCNDataclassActionHandler *)&v14 init];
  if (v5)
  {
    v6 = [v4 account];
    account = v5->_account;
    v5->_account = v6;

    v8 = [v4 childAccounts];
    childAccounts = v5->_childAccounts;
    v5->_childAccounts = v8;

    v10 = [v4 implementation];
    implementation = v5->_implementation;
    v5->_implementation = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)perform
{
  v2 = self;
  v3 = CNAbstractMethodException();
  objc_exception_throw(v3);
}

- (BOOL)createABAccountForACAccount:(id)a3 withChildren:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCCNDataclassActionHandler *)self implementation];
  v9 = [v8 createContactsAccountForParentAccount:v7 withChildAccounts:v6];

  return v9;
}

- (BOOL)mergeContactsFromLocalSourceIntoSource:(id)a3
{
  v4 = a3;
  v5 = [(NCCNDataclassActionHandler *)self implementation];
  v6 = [v5 mergeContactsFromLocalContainerToContainer:v4];

  return v6;
}

- (void)disableLocalSourceIfNeededAddingAccount:(id)a3
{
  if (([a3 MCIsManaged] & 1) == 0)
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "It is necessary to disable the AB local source", v5, 2u);
    }

    [(NCCNDataclassActionHandler *)self setLocalSourceEnabled:0];
  }
}

@end