@interface INUIExtensionContext
@end

@implementation INUIExtensionContext

void __41___INUIExtensionContext_viewWasCancelled__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 viewWasCancelled];
}

void __66___INUIExtensionContext_queryRepresentedPropertiesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 queryRepresentedPropertiesWithCompletion:*(a1 + 40)];
}

void __46___INUIExtensionContext_desiresInteractivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 desiresInteractivity:*(a1 + 40)];
}

void __101___INUIExtensionContext_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  [v2 configureForParameters:*(a1 + 40) ofInteraction:*(a1 + 48) interactiveBehavior:*(a1 + 64) context:*(a1 + 72) completion:*(a1 + 56)];
}

void __48___INUIExtensionContext__errorHandlingHostProxy__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[_INUIExtensionContext _errorHandlingHostProxy]_block_invoke";
    v7 = 2114;
    v8 = v2;
    _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Unable to retrieve extension context host: %{public}@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end