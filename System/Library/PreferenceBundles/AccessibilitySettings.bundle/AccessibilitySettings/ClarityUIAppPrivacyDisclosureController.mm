@interface ClarityUIAppPrivacyDisclosureController
- (ClarityUIAppPrivacyDisclosureController)initWithApplicationTitle:(id)a3 icon:(id)a4 bundleIdentifier:(id)a5;
- (ClarityUIAppPrivacyDisclosureControllerDelegate)delegate;
- (void)_didTapCancelButton:(id)a3;
- (void)_didTapOpenAppButton:(id)a3;
@end

@implementation ClarityUIAppPrivacyDisclosureController

- (ClarityUIAppPrivacyDisclosureController)initWithApplicationTitle:(id)a3 icon:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = settingsLocString(@"ACCEPT_PRIVACY_TERMS_FOR_APP", @"ClarityUISettings");
  v12 = [NSString localizedStringWithFormat:v11, v8, v8];

  v21.receiver = self;
  v21.super_class = ClarityUIAppPrivacyDisclosureController;
  v13 = [(ClarityUIAppPrivacyDisclosureController *)&v21 initWithTitle:v8 detailText:v12 icon:v10 contentLayout:2];

  if (v13)
  {
    objc_storeStrong(&v13->_bundleIdentifier, a5);
    v14 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v13 action:"_didTapCancelButton:"];
    v15 = [(ClarityUIAppPrivacyDisclosureController *)v13 navigationItem];
    [v15 setRightBarButtonItem:v14];

    v16 = +[OBBoldTrayButton boldButton];
    v17 = settingsLocString(@"OPEN_APP_TITLE", @"ClarityUISettings");
    v18 = [NSString localizedStringWithFormat:v17, v8];
    [v16 setTitle:v18 forState:0];

    [v16 addTarget:v13 action:"_didTapOpenAppButton:" forControlEvents:0x2000];
    v19 = [(ClarityUIAppPrivacyDisclosureController *)v13 buttonTray];
    [v19 addButton:v16];
  }

  return v13;
}

- (void)_didTapOpenAppButton:(id)a3
{
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v5 = +[CLFAppAvailabilityChecker sharedInstance];
  v6 = [(ClarityUIAppPrivacyDisclosureController *)self bundleIdentifier];
  v7 = [v5 standardBundleIdentifierForClarityBundleIdentifier:v6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke;
  v8[3] = &unk_257E78;
  v8[4] = self;
  [v4 openApplication:v7 withOptions:0 completion:v8];
}

void __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == &dword_0 + 1)
    {
      v8 = [v7 userInfo];
      v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v10 = [v9 domain];
      if ([v10 isEqualToString:FBSOpenApplicationErrorDomain])
      {
        v11 = [v9 code];

        if (v11 == &dword_4 + 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke_cold_1(a1, v7, v12);
    }
  }

  else
  {
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke_cold_2(a1, v12);
    }
  }

LABEL_12:
}

- (void)_didTapCancelButton:(id)a3
{
  v4 = [(ClarityUIAppPrivacyDisclosureController *)self delegate];
  [v4 cancelButtonTappedForPrivacyDisclosureController:self];
}

- (ClarityUIAppPrivacyDisclosureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) bundleIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Unable to open application with bundle identifier %@: %@", &v6, 0x16u);
}

void __64__ClarityUIAppPrivacyDisclosureController__didTapOpenAppButton___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Unexpectedly able to open app that we thought needed preflight: %@", &v4, 0xCu);
}

@end