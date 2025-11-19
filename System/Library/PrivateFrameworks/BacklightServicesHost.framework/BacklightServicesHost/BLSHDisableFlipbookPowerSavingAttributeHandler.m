@interface BLSHDisableFlipbookPowerSavingAttributeHandler
+ (id)registerHandlerForService:(id)a3 provider:(id)a4;
- (id)initForService:(id)a3 provider:(id)a4;
- (void)activateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
- (void)deactivateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
@end

@implementation BLSHDisableFlipbookPowerSavingAttributeHandler

+ (id)registerHandlerForService:(id)a3 provider:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForService:v7 provider:v6];

  v12[0] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [v7 registerAttributeHandler:v8 forAttributeClasses:v9];

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)initForService:(id)a3 provider:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = BLSHDisableFlipbookPowerSavingAttributeHandler;
  v7 = [(BLSHDisableFlipbookPowerSavingAttributeHandler *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_provider, a4);
  }

  return v8;
}

- (void)activateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[BLSHFlipbookPowerSavingProviding incrementDisablePowerSavingUsageCountForReason:](self->_provider, "incrementDisablePowerSavingUsageCountForReason:", [v11 reason]);
        }

        else
        {
          v12 = bls_assertions_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = objc_opt_class();
            *buf = 134218498;
            v21 = self;
            v22 = 2112;
            v23 = v11;
            v24 = 2112;
            v25 = v13;
            v14 = v13;
            _os_log_fault_impl(&dword_21FD11000, v12, OS_LOG_TYPE_FAULT, "%p cannot activate invalid attribute:%@ not of class:%@", buf, 0x20u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[BLSHFlipbookPowerSavingProviding decrementDisablePowerSavingUsageCountForReason:](self->_provider, "decrementDisablePowerSavingUsageCountForReason:", [v11 reason]);
        }

        else
        {
          v12 = bls_assertions_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            v13 = objc_opt_class();
            *buf = 134218498;
            v21 = self;
            v22 = 2112;
            v23 = v11;
            v24 = 2112;
            v25 = v13;
            v14 = v13;
            _os_log_fault_impl(&dword_21FD11000, v12, OS_LOG_TYPE_FAULT, "%p cannot deactivate invalid attribute:%@ not of class:%@", buf, 0x20u);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end