@interface PAOpenSafari
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation PAOpenSafari

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = PALogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "########## PAOpenSafari", &v18, 2u);
  }

  v8 = MCFeatureSafariAllowed;
  v9 = sub_9244(MCFeatureSafariAllowed);
  v10 = sub_92A8(v8);
  v11 = v10;
  if (v9 && (v10 & 1) != 0)
  {
    v12 = +[PSSafariSettingsDetail preferencesURL];
    [v5 openSensitiveURL:v12];
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
  v17 = [v16 dictionary];
  v6[2](v6, v17);
}

@end