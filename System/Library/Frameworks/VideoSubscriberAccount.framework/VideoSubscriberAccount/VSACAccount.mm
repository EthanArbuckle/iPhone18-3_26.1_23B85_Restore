@interface VSACAccount
+ (id)sharedInstance;
- (BOOL)hasAccount;
- (VSACAccount)initWithManualPasswordOption:(unint64_t)option;
- (id)account;
- (id)username;
- (unint64_t)convertedAMSAccountPasswordPromptSettingWithPaid:(BOOL)paid;
- (unint64_t)freeAppPasswordPromptSetting;
- (unint64_t)paidAppPasswordPromptSetting;
@end

@implementation VSACAccount

+ (id)sharedInstance
{
  if (sharedInstance___vs_lazy_init_predicate != -1)
  {
    +[VSACAccount sharedInstance];
  }

  v3 = sharedInstance___vs_lazy_init_variable;

  return v3;
}

uint64_t __29__VSACAccount_sharedInstance__block_invoke()
{
  sharedInstance___vs_lazy_init_variable = objc_alloc_init(VSACAccount);

  return MEMORY[0x2821F96F8]();
}

- (VSACAccount)initWithManualPasswordOption:(unint64_t)option
{
  if (!self)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = VSACAccount;
  v4 = [(VSACAccount *)&v6 init];
  [(VSACAccount *)v4 setOverridingPasswordOption:option];
  return v4;
}

- (BOOL)hasAccount
{
  if ([(VSACAccount *)self overridingPasswordOption])
  {
    return 1;
  }

  account = [(VSACAccount *)self account];
  v3 = account != 0;

  return v3;
}

- (unint64_t)freeAppPasswordPromptSetting
{
  if ([(VSACAccount *)self overridingPasswordOption])
  {

    return [(VSACAccount *)self overridingPasswordOption];
  }

  else if ([(VSACAccount *)self hasAccount])
  {

    return [(VSACAccount *)self convertedAMSAccountPasswordPromptSettingWithPaid:0];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)paidAppPasswordPromptSetting
{
  if ([(VSACAccount *)self overridingPasswordOption])
  {

    return [(VSACAccount *)self overridingPasswordOption];
  }

  else if ([(VSACAccount *)self hasAccount])
  {

    return [(VSACAccount *)self convertedAMSAccountPasswordPromptSettingWithPaid:1];
  }

  else
  {
    return 0;
  }
}

- (id)account
{
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (id)username
{
  account = [(VSACAccount *)self account];
  username = [account username];

  return username;
}

- (unint64_t)convertedAMSAccountPasswordPromptSettingWithPaid:(BOOL)paid
{
  paidCopy = paid;
  account = [(VSACAccount *)self account];
  v5 = account;
  if (account)
  {
    v6 = account;
    v7 = v6;
    if (paidCopy)
    {
      ams_paidPasswordPromptSetting = [v6 ams_paidPasswordPromptSetting];
    }

    else
    {
      ams_paidPasswordPromptSetting = [v6 ams_freePasswordPromptSetting];
    }

    v9 = ams_paidPasswordPromptSetting;
    if (ams_paidPasswordPromptSetting >= 4)
    {
      v10 = VSErrorLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(VSACAccount *)v9 convertedAMSAccountPasswordPromptSettingWithPaid:v10];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)convertedAMSAccountPasswordPromptSettingWithPaid:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_FAULT, "Unhandled AMSAccountPasswordPromptSetting case %lu. Need to update enum.", &v2, 0xCu);
}

@end