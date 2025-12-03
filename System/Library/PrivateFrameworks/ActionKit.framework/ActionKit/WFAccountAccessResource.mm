@interface WFAccountAccessResource
+ (id)userInterfaceClasses;
- (BOOL)supportsMultipleAccounts;
- (Class)accountClass;
- (NSArray)accounts;
- (WFAccountAccessResource)initWithDefinition:(id)definition;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (id)localizedImportErrorReasonForStatus:(unint64_t)status;
- (id)localizedProtectedResourceDescriptionWithContext:(id)context;
- (id)name;
- (id)resourceName;
- (id)username;
- (unint64_t)status;
- (void)dealloc;
- (void)logOut;
- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler;
@end

@implementation WFAccountAccessResource

- (void)logOut
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  accounts = [(WFAccountAccessResource *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        [WFAccount deleteAccount:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [accounts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(WFResource *)self refreshAvailabilityWithForcedNotification];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsMultipleAccounts
{
  accountClass = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)accountClass allowsMultipleAccounts];
}

- (id)username
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(WFAccountAccessResource *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        [*(*(&v13 + 1) + 8 * i) refreshWithCompletionHandler:0];
      }

      v5 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  accounts2 = [(WFAccountAccessResource *)self accounts];
  firstObject = [accounts2 firstObject];
  localizedName = [firstObject localizedName];

  v11 = *MEMORY[0x277D85DE8];

  return localizedName;
}

- (id)resourceName
{
  accountClass = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)accountClass localizedServiceName];
}

- (id)name
{
  associatedAppIdentifier = [(WFAccessResource *)self associatedAppIdentifier];

  if (associatedAppIdentifier)
  {
    v6.receiver = self;
    v6.super_class = WFAccountAccessResource;
    name = [(WFAccessResource *)&v6 name];
  }

  else
  {
    name = [(WFAccountAccessResource *)self resourceName];
  }

  return name;
}

- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  interfaceCopy = interface;
  v8 = NSStringFromClass([(WFAccountAccessResource *)self accountClass]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__WFAccountAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke;
  v10[3] = &unk_278C1F558;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [interfaceCopy authorizeWithAccountClassName:v8 completionHandler:v10];
}

void __78__WFAccountAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) refreshAvailabilityWithForcedNotification];
  if (v5)
  {
    v7 = [*(a1 + 32) accounts];
    v8 = [v7 if_firstObjectWithValue:v5 forKey:@"accountID"];

    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __78__WFAccountAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke_2;
      v9[3] = &unk_278C20008;
      v10 = *(a1 + 40);
      [v8 refreshWithCompletionHandler:v9];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (unint64_t)status
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [(WFAccountAccessResource *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 4;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(accounts);
      }

      if ([*(*(&v10 + 1) + 8 * v7) isValid])
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)localizedImportErrorReasonForStatus:(unint64_t)status
{
  if (status == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"In order to answer this question, Shortcuts needs access to your %@ account.");
    serviceName = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
    v7 = [v4 stringWithFormat:v5, serviceName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  if (status == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"Shortcuts does not have access to your %@ account.");
    serviceName = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
    v7 = [v4 localizedStringWithFormat:v5, serviceName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)context
{
  v4 = MEMORY[0x277CCACA8];
  contextCopy = context;
  v6 = WFLocalizedStringResourceWithKey(@"your %@ account", @"your %@ account");
  v7 = [contextCopy localize:v6];

  serviceName = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
  v9 = [v4 localizedStringWithFormat:v7, serviceName];

  return v9;
}

- (NSArray)accounts
{
  accountClass = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)accountClass accounts];
}

- (Class)accountClass
{
  definition = [(WFResource *)self definition];
  v3 = [definition objectForKey:@"WFAccountClass"];
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)dealloc
{
  [(objc_class *)[(WFAccountAccessResource *)self accountClass] removeAccountObserver:self->_observer];
  v3.receiver = self;
  v3.super_class = WFAccountAccessResource;
  [(WFAccessResource *)&v3 dealloc];
}

- (WFAccountAccessResource)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v14.receiver = self;
  v14.super_class = WFAccountAccessResource;
  v5 = [(WFAccessResource *)&v14 initWithDefinition:definitionCopy];
  if (v5)
  {
    objc_initWeak(&location, v5);
    accountClass = [(WFAccountAccessResource *)v5 accountClass];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__WFAccountAccessResource_initWithDefinition___block_invoke;
    v11[3] = &unk_278C1EEF0;
    objc_copyWeak(&v12, &location);
    v7 = [(objc_class *)accountClass addAccountObserver:v11];
    observer = v5->_observer;
    v5->_observer = v7;

    v9 = v5;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __46__WFAccountAccessResource_initWithDefinition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshAvailabilityWithNotification];
}

+ (id)userInterfaceClasses
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CFC6F8];
  v6[0] = *MEMORY[0x277CFC710];
  v6[1] = v2;
  v7[0] = @"WFAccountAccessResourceUserInterface";
  v7[1] = @"WFAccountAccessResourceUserInterface";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end