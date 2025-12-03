@interface AMSUIWebActionMapper
+ (id)actionFromJSObject:(id)object context:(id)context;
@end

@implementation AMSUIWebActionMapper

+ (id)actionFromJSObject:(id)object context:(id)context
{
  v15[58] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  if ([AMSUIActionRunner canHandle:objectCopy context:0])
  {
    v7 = [[AMSUIWebActionRunnerAction alloc] initWithJSObject:objectCopy context:contextCopy];
  }

  else
  {
    v8 = [objectCopy objectForKeyedSubscript:@"actionClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v14[0] = @"AMSAccountAction";
    v15[0] = objc_opt_class();
    v14[1] = @"AMSAcknowledgePrivacyAction";
    v15[1] = objc_opt_class();
    v14[2] = @"AMSApplicationLookupAction";
    v15[2] = objc_opt_class();
    v14[3] = @"AMSAppOverlayAction";
    v15[3] = objc_opt_class();
    v14[4] = @"AMSAuthenticateAction";
    v15[4] = objc_opt_class();
    v14[5] = @"AMSAuthorizeApplePayEnrollmentAction";
    v15[5] = objc_opt_class();
    v14[6] = @"AMSBagAction";
    v15[6] = objc_opt_class();
    v14[7] = @"AMSBusinessChatAction";
    v15[7] = objc_opt_class();
    v14[8] = @"AMSBuyAction";
    v15[8] = objc_opt_class();
    v14[9] = @"AMSCallbackAction";
    v15[9] = objc_opt_class();
    v14[10] = @"AMSCampaignAttributionAction";
    v15[10] = objc_opt_class();
    v14[11] = @"AMSCheckDownloadQueueAction";
    v15[11] = objc_opt_class();
    v14[12] = @"AMSDelegateAction";
    v15[12] = objc_opt_class();
    v14[13] = @"AMSDialogAction";
    v15[13] = objc_opt_class();
    v14[14] = @"AMSEngagementAction";
    v15[14] = objc_opt_class();
    v14[15] = @"AMSFamilyAction";
    v15[15] = objc_opt_class();
    v14[16] = @"AMSFetchAttestationVersionAction";
    v15[16] = objc_opt_class();
    v14[17] = @"AMSFetchCardDataAction";
    v15[17] = objc_opt_class();
    v14[18] = @"AMSFetchCardMetadataAction";
    v15[18] = objc_opt_class();
    v14[19] = @"AMSFetchMetricsIdentifierAction";
    v15[19] = objc_opt_class();
    v14[20] = @"AMSFetchTelephonyAction";
    v15[20] = objc_opt_class();
    v14[21] = @"AMSFetchTreatmentAreasAction";
    v15[21] = objc_opt_class();
    v14[22] = @"AMSFetchTreatmentOverridesAction";
    v15[22] = objc_opt_class();
    v14[23] = @"AMSFeatureFlagAction";
    v15[23] = objc_opt_class();
    v14[24] = @"AMSFetchTreatmentsAction";
    v15[24] = objc_opt_class();
    v14[25] = @"AMSFlowAction";
    v15[25] = objc_opt_class();
    v14[26] = @"AMSLoadPluginAction";
    v15[26] = objc_opt_class();
    v14[27] = @"AMSLocalApproveAction";
    v15[27] = objc_opt_class();
    v14[28] = @"AMSLogAction";
    v15[28] = objc_opt_class();
    v14[29] = @"AMSMarketingItemAction";
    v15[29] = objc_opt_class();
    v14[30] = @"AMSMediaAction";
    v15[30] = objc_opt_class();
    v14[31] = @"AMSMediaQueryAction";
    v15[31] = objc_opt_class();
    v14[32] = @"AMSMetricsAction";
    v15[32] = objc_opt_class();
    v14[33] = @"AMSNetworkAction";
    v15[33] = objc_opt_class();
    v14[34] = @"AMSODIAssessmentAction";
    v15[34] = objc_opt_class();
    v14[35] = @"AMSODIAssessmentFeedbackAction";
    v15[35] = objc_opt_class();
    v14[36] = @"AMSOpenApplicationAction";
    v15[36] = objc_opt_class();
    v14[37] = @"AMSOpenFamilyCircleAction";
    v15[37] = objc_opt_class();
    v14[38] = @"AMSOpenSafariAction";
    v15[38] = objc_opt_class();
    v14[39] = @"AMSUIWebOpenAuthenticationSession";
    v15[39] = objc_opt_class();
    v14[40] = @"AMSOpenURLAction";
    v15[40] = objc_opt_class();
    v14[41] = @"AMSOTPAction";
    v15[41] = objc_opt_class();
    v14[42] = @"AMSPaymentSetupAction";
    v15[42] = objc_opt_class();
    v14[43] = @"AMSPluginAction";
    v15[43] = objc_opt_class();
    v14[44] = @"AMSPresentPrivacySplashAction";
    v15[44] = objc_opt_class();
    v14[45] = @"AMSRawPasswordAuthenticateAction";
    v15[45] = objc_opt_class();
    v14[46] = @"AMSRemoveDeviceOfferAction";
    v15[46] = objc_opt_class();
    v14[47] = @"AMSRestrictedFeatureAction";
    v15[47] = objc_opt_class();
    v14[48] = @"AMSOverrideTreatmentsAction";
    v15[48] = objc_opt_class();
    v14[49] = @"AMSSendSMSAction";
    v15[49] = objc_opt_class();
    v14[50] = @"AMSStoreProductPresentAction";
    v15[50] = objc_opt_class();
    v14[51] = @"AMSSubscriptionAction";
    v15[51] = objc_opt_class();
    v14[52] = @"AMSSynchronizeTreatmentsAction";
    v15[52] = objc_opt_class();
    v14[53] = @"AMSItsMeTraceIDAction";
    v15[53] = objc_opt_class();
    v14[54] = @"AMSWalletPassAction";
    v15[54] = objc_opt_class();
    v14[55] = @"AMSVerifyCredentialsAction";
    v15[55] = objc_opt_class();
    v14[56] = @"AMSVerifyPaymentSetupFeatureAction";
    v15[56] = objc_opt_class();
    v14[57] = @"AMSVerifyPrivacyAcknowledgementAction";
    v15[57] = objc_opt_class();
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:58];
    v11 = [v10 objectForKeyedSubscript:v9];
    if (v11)
    {
      v7 = [[v11 alloc] initWithJSObject:objectCopy context:contextCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end