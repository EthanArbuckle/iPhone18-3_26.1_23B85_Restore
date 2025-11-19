@interface WBS
@end

@implementation WBS

void __WBS_LOG_CHANNEL_PREFIXContentBlockers_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ContentBlockers");
  v1 = WBS_LOG_CHANNEL_PREFIXContentBlockers_log;
  WBS_LOG_CHANNEL_PREFIXContentBlockers_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CalendarEventDetection");
  v1 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_log;
  WBS_LOG_CHANNEL_PREFIXCalendarEventDetection_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AppPasswordAutoFill");
  v1 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_log;
  WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAppStoreBanner_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AppStoreBanner");
  v1 = WBS_LOG_CHANNEL_PREFIXAppStoreBanner_log;
  WBS_LOG_CHANNEL_PREFIXAppStoreBanner_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAuthenticationSession_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AuthenticationSession");
  v1 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession_log;
  WBS_LOG_CHANNEL_PREFIXAuthenticationSession_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAutoFill_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AutoFill");
  v1 = WBS_LOG_CHANNEL_PREFIXAutoFill_log;
  WBS_LOG_CHANNEL_PREFIXAutoFill_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AutoFillAuthentication");
  v1 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log;
  WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXBookmarkSync_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "BookmarkSync");
  v1 = WBS_LOG_CHANNEL_PREFIXBookmarkSync_log;
  WBS_LOG_CHANNEL_PREFIXBookmarkSync_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "BrowserChoiceScreen");
  v1 = WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_log;
  WBS_LOG_CHANNEL_PREFIXBrowserChoiceScreen_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCertificates_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Certificates");
  v1 = WBS_LOG_CHANNEL_PREFIXCertificates_log;
  WBS_LOG_CHANNEL_PREFIXCertificates_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXClientAuthentication_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ClientAuthentication");
  v1 = WBS_LOG_CHANNEL_PREFIXClientAuthentication_log;
  WBS_LOG_CHANNEL_PREFIXClientAuthentication_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXContinuity_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Continuity");
  v1 = WBS_LOG_CHANNEL_PREFIXContinuity_log;
  WBS_LOG_CHANNEL_PREFIXContinuity_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXDownloads_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Downloads");
  v1 = WBS_LOG_CHANNEL_PREFIXDownloads_log;
  WBS_LOG_CHANNEL_PREFIXDownloads_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXEventAttribution_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "EventAttribution");
  v1 = WBS_LOG_CHANNEL_PREFIXEventAttribution_log;
  WBS_LOG_CHANNEL_PREFIXEventAttribution_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Extensions");
  v1 = WBS_LOG_CHANNEL_PREFIXExtensions_log;
  WBS_LOG_CHANNEL_PREFIXExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "OneTimeCodeAutoFill");
  v1 = WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_log;
  WBS_LOG_CHANNEL_PREFIXOneTimeCodeAutoFill_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXOther_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Other");
  v1 = WBS_LOG_CHANNEL_PREFIXOther_log;
  WBS_LOG_CHANNEL_PREFIXOther_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPasswords_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Passwords");
  v1 = WBS_LOG_CHANNEL_PREFIXPasswords_log;
  WBS_LOG_CHANNEL_PREFIXPasswords_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPasswordsIcons_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PasswordsIcons");
  v1 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons_log;
  WBS_LOG_CHANNEL_PREFIXPasswordsIcons_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPasswordSharing_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PasswordSharing");
  v1 = WBS_LOG_CHANNEL_PREFIXPasswordSharing_log;
  WBS_LOG_CHANNEL_PREFIXPasswordSharing_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPageLoading_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PageLoading");
  v1 = WBS_LOG_CHANNEL_PREFIXPageLoading_log;
  WBS_LOG_CHANNEL_PREFIXPageLoading_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPencilInput_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PencilInput");
  v1 = WBS_LOG_CHANNEL_PREFIXPencilInput_log;
  WBS_LOG_CHANNEL_PREFIXPencilInput_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPerSitePreferences_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "PerSitePreferences");
  v1 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences_log;
  WBS_LOG_CHANNEL_PREFIXPerSitePreferences_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPrewarming_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Prewarming");
  v1 = WBS_LOG_CHANNEL_PREFIXPrewarming_log;
  WBS_LOG_CHANNEL_PREFIXPrewarming_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXPrinting_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Printing");
  v1 = WBS_LOG_CHANNEL_PREFIXPrinting_log;
  WBS_LOG_CHANNEL_PREFIXPrinting_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXProcessDictionary_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ProcessDictionary");
  v1 = WBS_LOG_CHANNEL_PREFIXProcessDictionary_log;
  WBS_LOG_CHANNEL_PREFIXProcessDictionary_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXReaderExtraction_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ReaderExtraction");
  v1 = WBS_LOG_CHANNEL_PREFIXReaderExtraction_log;
  WBS_LOG_CHANNEL_PREFIXReaderExtraction_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXReadingList_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ReadingList");
  v1 = WBS_LOG_CHANNEL_PREFIXReadingList_log;
  WBS_LOG_CHANNEL_PREFIXReadingList_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "RequestDesktopSite");
  v1 = WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_log;
  WBS_LOG_CHANNEL_PREFIXRequestDesktopSite_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSearchEngine_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SearchEngine");
  v1 = WBS_LOG_CHANNEL_PREFIXSearchEngine_log;
  WBS_LOG_CHANNEL_PREFIXSearchEngine_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSVCPrivacy_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SVCPrivacy");
  v1 = WBS_LOG_CHANNEL_PREFIXSVCPrivacy_log;
  WBS_LOG_CHANNEL_PREFIXSVCPrivacy_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXSVCDeletion_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "SVCDeletion");
  v1 = WBS_LOG_CHANNEL_PREFIXSVCDeletion_log;
  WBS_LOG_CHANNEL_PREFIXSVCDeletion_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUniversalLinks_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UniversalLinks");
  v1 = WBS_LOG_CHANNEL_PREFIXUniversalLinks_log;
  WBS_LOG_CHANNEL_PREFIXUniversalLinks_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserInteraction_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserInteraction");
  v1 = WBS_LOG_CHANNEL_PREFIXUserInteraction_log;
  WBS_LOG_CHANNEL_PREFIXUserInteraction_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserInterface_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserInterface");
  v1 = WBS_LOG_CHANNEL_PREFIXUserInterface_log;
  WBS_LOG_CHANNEL_PREFIXUserInterface_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserTrackingDetection");
  v1 = WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_log;
  WBS_LOG_CHANNEL_PREFIXUserTrackingDetection_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXUserMediaCapture_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "UserMediaCapture");
  v1 = WBS_LOG_CHANNEL_PREFIXUserMediaCapture_log;
  WBS_LOG_CHANNEL_PREFIXUserMediaCapture_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXViewService_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ViewService");
  v1 = WBS_LOG_CHANNEL_PREFIXViewService_log;
  WBS_LOG_CHANNEL_PREFIXViewService_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebApp_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebApp");
  v1 = WBS_LOG_CHANNEL_PREFIXWebApp_log;
  WBS_LOG_CHANNEL_PREFIXWebApp_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "CredentialProviderExtension");
  v1 = WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_log;
  WBS_LOG_CHANNEL_PREFIXCredentialProviderExtension_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXTranslation_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "Translation");
  v1 = WBS_LOG_CHANNEL_PREFIXTranslation_log;
  WBS_LOG_CHANNEL_PREFIXTranslation_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "AccountAuthenticationModificationExtension");
  v1 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_log;
  WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebExtensions");
  v1 = WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
  WBS_LOG_CHANNEL_PREFIXWebExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXWebPush_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "WebPush");
  v1 = WBS_LOG_CHANNEL_PREFIXWebPush_log;
  WBS_LOG_CHANNEL_PREFIXWebPush_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXManagedExtensions_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ManagedExtensions");
  v1 = WBS_LOG_CHANNEL_PREFIXManagedExtensions_log;
  WBS_LOG_CHANNEL_PREFIXManagedExtensions_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXESim_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "ESim");
  v1 = WBS_LOG_CHANNEL_PREFIXESim_log;
  WBS_LOG_CHANNEL_PREFIXESim_log = v0;
}

void __WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_block_invoke()
{
  v0 = os_log_create("com.apple.mobilesafari", "BrowsingAssistant");
  v1 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log;
  WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log = v0;
}

@end