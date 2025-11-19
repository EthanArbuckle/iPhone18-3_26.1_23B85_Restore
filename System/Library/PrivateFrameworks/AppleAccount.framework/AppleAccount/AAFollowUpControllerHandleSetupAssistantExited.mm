@interface AAFollowUpControllerHandleSetupAssistantExited
@end

@implementation AAFollowUpControllerHandleSetupAssistantExited

void ___AAFollowUpControllerHandleSetupAssistantExited_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 userInfo];
    if (v3)
    {
      [*(a1 + 32) postFollowUpWithIdentifier:AAFollowUpIdentifierVerifyTerms[0] userInfo:v3 completion:&__block_literal_global_445];
    }

    else
    {
      v4 = _AALogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "No follow up userInfo found... nothing to see here!", v5, 2u);
      }
    }
  }

  else
  {
    v3 = _AALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "No follow up found... nothing to see here!", buf, 2u);
    }
  }
}

void ___AAFollowUpControllerHandleSetupAssistantExited_block_invoke_443(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Reposted follow up with success: %@, error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end