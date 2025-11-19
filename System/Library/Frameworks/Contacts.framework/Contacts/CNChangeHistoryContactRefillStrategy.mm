@interface CNChangeHistoryContactRefillStrategy
@end

@implementation CNChangeHistoryContactRefillStrategy

void __70___CNChangeHistoryContactRefillStrategy_fetchContactsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v5 = +[CNChangeHistoryTriageLogger log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __70___CNChangeHistoryContactRefillStrategy_fetchContactsWithIdentifiers___block_invoke_cold_1(v3, v5);
    }
  }

  else
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __70___CNChangeHistoryContactRefillStrategy_fetchContactsWithIdentifiers___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1954A0000, a2, OS_LOG_TYPE_FAULT, "Contact has empty identifier: %{public}@", &v2, 0xCu);
}

@end