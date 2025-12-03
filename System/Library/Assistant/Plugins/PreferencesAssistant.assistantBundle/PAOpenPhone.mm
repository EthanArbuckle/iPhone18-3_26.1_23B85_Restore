@interface PAOpenPhone
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PAOpenPhone

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PAOpenPhone", &v12, 2u);
  }

  if (sub_92A8(off_19EB8))
  {
    v8 = +[PSPhoneSettingsDetail preferencesURL];
    [helperCopy openSensitiveURL:v8];
    v9 = SACommandSucceeded_ptr;
  }

  else
  {
    v8 = PALogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = @"missing capability";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "########## %@", &v12, 0xCu);
    }

    v9 = SACommandFailed_ptr;
  }

  v10 = objc_alloc_init(*v9);
  dictionary = [v10 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end