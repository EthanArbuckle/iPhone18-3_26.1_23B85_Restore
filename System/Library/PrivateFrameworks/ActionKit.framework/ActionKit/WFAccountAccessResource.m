@interface WFAccountAccessResource
+ (id)userInterfaceClasses;
- (BOOL)supportsMultipleAccounts;
- (Class)accountClass;
- (NSArray)accounts;
- (WFAccountAccessResource)initWithDefinition:(id)a3;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (id)localizedImportErrorReasonForStatus:(unint64_t)a3;
- (id)localizedProtectedResourceDescriptionWithContext:(id)a3;
- (id)name;
- (id)resourceName;
- (id)username;
- (unint64_t)status;
- (void)dealloc;
- (void)logOut;
- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4;
@end

@implementation WFAccountAccessResource

- (void)logOut
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WFAccountAccessResource *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [WFAccount deleteAccount:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(WFResource *)self refreshAvailabilityWithForcedNotification];
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)supportsMultipleAccounts
{
  v2 = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)v2 allowsMultipleAccounts];
}

- (id)username
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WFAccountAccessResource *)self accounts];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) refreshWithCompletionHandler:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = [(WFAccountAccessResource *)self accounts];
  v9 = [v8 firstObject];
  v10 = [v9 localizedName];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)resourceName
{
  v2 = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)v2 localizedServiceName];
}

- (id)name
{
  v3 = [(WFAccessResource *)self associatedAppIdentifier];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = WFAccountAccessResource;
    v4 = [(WFAccessResource *)&v6 name];
  }

  else
  {
    v4 = [(WFAccountAccessResource *)self resourceName];
  }

  return v4;
}

- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = NSStringFromClass([(WFAccountAccessResource *)self accountClass]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__WFAccountAccessResource_makeAvailableWithRemoteInterface_completionHandler___block_invoke;
  v10[3] = &unk_278C1F558;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 authorizeWithAccountClassName:v8 completionHandler:v10];
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
  v2 = [(WFAccountAccessResource *)self accounts];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v10 + 1) + 8 * v7) isValid])
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (id)localizedImportErrorReasonForStatus:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"In order to answer this question, Shortcuts needs access to your %@ account.");
    v6 = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
    v7 = [v4 stringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  if (a3 == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = WFLocalizedString(@"Shortcuts does not have access to your %@ account.");
    v6 = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
    v7 = [v4 localizedStringWithFormat:v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedProtectedResourceDescriptionWithContext:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = WFLocalizedStringResourceWithKey(@"your %@ account", @"your %@ account");
  v7 = [v5 localize:v6];

  v8 = [(objc_class *)[(WFAccountAccessResource *)self accountClass] serviceName];
  v9 = [v4 localizedStringWithFormat:v7, v8];

  return v9;
}

- (NSArray)accounts
{
  v2 = [(WFAccountAccessResource *)self accountClass];

  return [(objc_class *)v2 accounts];
}

- (Class)accountClass
{
  v2 = [(WFResource *)self definition];
  v3 = [v2 objectForKey:@"WFAccountClass"];
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

- (WFAccountAccessResource)initWithDefinition:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFAccountAccessResource;
  v5 = [(WFAccessResource *)&v14 initWithDefinition:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = [(WFAccountAccessResource *)v5 accountClass];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__WFAccountAccessResource_initWithDefinition___block_invoke;
    v11[3] = &unk_278C1EEF0;
    objc_copyWeak(&v12, &location);
    v7 = [(objc_class *)v6 addAccountObserver:v11];
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