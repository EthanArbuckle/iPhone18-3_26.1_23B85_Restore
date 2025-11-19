@interface CFPrefsSuiteSearchListSource
- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)a3 isRemote:(BOOL)a4;
@end

@implementation CFPrefsSuiteSearchListSource

- (void)handleChangeNotificationForDomainIdentifier:(__CFString *)a3 isRemote:(BOOL)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__CFPrefsSuiteSearchListSource_handleChangeNotificationForDomainIdentifier_isRemote___block_invoke;
  v5[3] = &__block_descriptor_33_e8_v16__0_8l;
  v6 = a4;
  [(CFPrefsSource *)self forEachObserver:v5];
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __85__CFPrefsSuiteSearchListSource_handleChangeNotificationForDomainIdentifier_isRemote___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 domainIdentifier];
  v5 = *(a1 + 32);

  return [a2 handleChangeNotificationForDomainIdentifier:v4 isRemote:v5];
}

@end