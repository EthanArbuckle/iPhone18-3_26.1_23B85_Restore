@interface PAOpenFaceTime
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation PAOpenFaceTime

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  helperCopy = helper;
  completionCopy = completion;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PAOpenFaceTime", &v18, 2u);
  }

  v8 = MCFeatureVideoConferencingAllowed;
  v9 = sub_9244(MCFeatureVideoConferencingAllowed);
  v10 = sub_92A8(v8);
  v11 = v10;
  if (v9 && (v10 & 1) != 0)
  {
    v12 = +[PSFaceTimeSettingsDetail preferencesURL];
    [helperCopy openSensitiveURL:v12];
    v13 = SACommandSucceeded_ptr;
  }

  else
  {
    v12 = PALogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"not allowed";
      if (v9)
      {
        v14 = @"allowed";
      }

      v15 = @"has capability";
      if (!v11)
      {
        v15 = @"missing capability";
      }

      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "########## %@ %@", &v18, 0x16u);
    }

    v13 = SACommandFailed_ptr;
  }

  v16 = objc_alloc_init(*v13);
  dictionary = [v16 dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end