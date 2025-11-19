@interface SFWebExtensionsController
@end

@implementation SFWebExtensionsController

id __169__SFWebExtensionsController_SafariServicesExtras__showAccessRequestDialogForExtension_URLs_callingAPIName_showMoreOptionsForAlwaysAllow_includeDenyButton_responseBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 host];
  v3 = [v2 safari_stringByRemovingWwwAndWildcardDotPrefixes];

  return v3;
}

void __145__SFWebExtensionsController_SafariServicesExtras___showPromptForExtensionDisabledBecauseItHasRequestedAdditionalPermissions_extensionIdentifier___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=SAFARI&path=WEB_EXTENSIONS"];
    v2 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v2 openSensitiveURL:v3 withOptions:0];
  }
}

@end