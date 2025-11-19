@interface BagKey
+ (NSString)addPushTypeURL;
+ (NSString)allowedCustomBuyParams;
+ (NSString)allowedCustomGatewaySheetOptions;
+ (NSString)appTransactionRevision;
+ (NSString)appleIDLookupURL;
+ (NSString)buyProductURL;
+ (NSString)checkForMessagesURL;
+ (NSString)commerceUIURLPatterns;
+ (NSString)countryCode;
+ (NSString)createAppReceiptURL;
+ (NSString)createVPPReceiptURL;
+ (NSString)currencyCode;
+ (NSString)disableInAppPurchasables;
+ (NSString)disableNewExternalGatewaySheet;
+ (NSString)disablePurchaseIntentNotifications;
+ (NSString)dynamicUIPfodURL;
+ (NSString)externalCustomLinkSheetURL;
+ (NSString)externalLinkAccountLearnMoreURL;
+ (NSString)externalLinkAccountSheetURL;
+ (NSString)externalLinkLearnMoreURL;
+ (NSString)externalLinkSheetURL;
+ (NSString)externalPurchaseLearnMoreURL;
+ (NSString)externalPurchaseSpringBoardAppDeleteAlertEnabled;
+ (NSString)externalPurchaseSupportedTokenTypes;
+ (NSString)externalPurchaseTokenCreate;
+ (NSString)externalPurchaseTokenStatus;
+ (NSString)externalPurchaseTokenV2;
+ (NSString)externalPurchaseTokenV2Refresh;
+ (NSString)externalPurchasesSheetURL;
+ (NSString)finishTransactionURL;
+ (NSString)hideableSystemApps;
+ (NSString)ignoreIAPQueueCheckSuppression;
+ (NSString)inAppBuyURL;
+ (NSString)inAppOfferEligibility;
+ (NSString)languageTag;
+ (NSString)legacyClientMediaAPIRate;
+ (NSString)localizationInternalJetpackURL;
+ (NSString)localizationJetpackURL;
+ (NSString)manageSubscriptionsURL;
+ (NSString)mediaAPIHost;
+ (NSString)mediaAPISandboxHost;
+ (NSString)paymentAccountBindingEligibilityURL;
+ (NSString)paymentAccountBindingURL;
+ (NSString)pendingTransactionsCountURL;
+ (NSString)pendingTransactionsURL;
+ (NSString)privilegedBuyParams;
+ (NSString)productsBatchLimit;
+ (NSString)productsURL;
+ (NSString)purchaseMetricsSuppressionList;
+ (NSString)pushEnvironment;
+ (NSString)receiptRefreshMinAge;
+ (NSString)redeemCodeURL;
+ (NSString)refundRequestURL;
+ (NSString)registerPushTokenURL;
+ (NSString)removePushTypeURL;
+ (NSString)restoreTransactionsURL;
+ (NSString)storefrontCountryCode;
+ (NSString)storefrontIdentifier;
+ (NSString)subscriptionStatusMaxAge;
+ (NSString)subscriptionStatusURL;
+ (NSString)timestamp;
+ (NSString)transactionReceiptsMaxAge;
+ (NSString)transactionReceiptsMaxCount;
+ (NSString)transactionReceiptsURL;
+ (NSString)transactionReceiptsURLv2;
+ (NSString)trustedDomains;
@end

@implementation BagKey

+ (NSString)allowedCustomBuyParams
{
  v2 = sub_10021D9C8(&qword_1003CBEB0, &qword_1003F2718);

  return v2;
}

+ (NSString)allowedCustomGatewaySheetOptions
{
  v2 = sub_10021D9C8(&qword_1003CBEB8, &qword_1003F2720);

  return v2;
}

+ (NSString)appleIDLookupURL
{
  v2 = sub_10021D9C8(&qword_1003CBEC0, &qword_1003F2728);

  return v2;
}

+ (NSString)appTransactionRevision
{
  v2 = sub_10021D9C8(&qword_1003CBEC8, &qword_1003F2730);

  return v2;
}

+ (NSString)buyProductURL
{
  v2 = sub_10021D9C8(&qword_1003CBED0, &qword_1003F2738);

  return v2;
}

+ (NSString)checkForMessagesURL
{
  v2 = sub_10021D9C8(&qword_1003CBED8, &qword_1003F2740);

  return v2;
}

+ (NSString)commerceUIURLPatterns
{
  v2 = sub_10021D9C8(&qword_1003CBEE0, &qword_1003F2748);

  return v2;
}

+ (NSString)countryCode
{
  v2 = sub_10021D9C8(&qword_1003CBEE8, &qword_1003F2750);

  return v2;
}

+ (NSString)createAppReceiptURL
{
  v2 = sub_10021D9C8(&qword_1003CBEF0, &qword_1003F2758);

  return v2;
}

+ (NSString)createVPPReceiptURL
{
  v2 = sub_10021D9C8(&qword_1003CBEF8, &qword_1003F2760);

  return v2;
}

+ (NSString)currencyCode
{
  v2 = sub_10021D9C8(&qword_1003CBF00, &qword_1003F2768);

  return v2;
}

+ (NSString)dynamicUIPfodURL
{
  v2 = sub_10021D9C8(&qword_1003CBF08, &qword_1003F2770);

  return v2;
}

+ (NSString)disableInAppPurchasables
{
  v2 = sub_10021D9C8(&qword_1003CBF10, &qword_1003F2778);

  return v2;
}

+ (NSString)disablePurchaseIntentNotifications
{
  v2 = sub_10021D9C8(&qword_1003CBF18, &qword_1003F2780);

  return v2;
}

+ (NSString)externalLinkSheetURL
{
  v2 = sub_10021D9C8(&qword_1003CBF20, &qword_1003F2788);

  return v2;
}

+ (NSString)externalLinkAccountLearnMoreURL
{
  v2 = sub_10021D9C8(&qword_1003CBF28, &qword_1003F2790);

  return v2;
}

+ (NSString)externalLinkAccountSheetURL
{
  v2 = sub_10021D9C8(&qword_1003CBF30, &qword_1003F2798);

  return v2;
}

+ (NSString)externalLinkLearnMoreURL
{
  v2 = sub_10021D9C8(&qword_1003CBF38, &qword_1003F27A0);

  return v2;
}

+ (NSString)externalPurchaseLearnMoreURL
{
  v2 = sub_10021D9C8(&qword_1003CBF40, &qword_1003F27A8);

  return v2;
}

+ (NSString)externalPurchasesSheetURL
{
  v2 = sub_10021D9C8(&qword_1003CBF48, &qword_1003F27B0);

  return v2;
}

+ (NSString)externalCustomLinkSheetURL
{
  v2 = sub_10021D9C8(&qword_1003CBF50, &qword_1003F27B8);

  return v2;
}

+ (NSString)externalPurchaseSpringBoardAppDeleteAlertEnabled
{
  v2 = sub_10021D9C8(&qword_1003CBF58, &qword_1003F27C0);

  return v2;
}

+ (NSString)externalPurchaseTokenCreate
{
  v2 = sub_10021D9C8(&qword_1003CBF60, &qword_1003F27C8);

  return v2;
}

+ (NSString)externalPurchaseTokenV2
{
  v2 = sub_10021D9C8(&qword_1003CBF68, &qword_1003F27D0);

  return v2;
}

+ (NSString)externalPurchaseTokenV2Refresh
{
  v2 = sub_10021D9C8(&qword_1003CBF70, &qword_1003F27D8);

  return v2;
}

+ (NSString)externalPurchaseTokenStatus
{
  v2 = sub_10021D9C8(&qword_1003CBF78, &qword_1003F27E0);

  return v2;
}

+ (NSString)disableNewExternalGatewaySheet
{
  v2 = sub_10021D9C8(&qword_1003CBF80, &qword_1003F27E8);

  return v2;
}

+ (NSString)externalPurchaseSupportedTokenTypes
{
  v2 = sub_10021D9C8(&qword_1003CBF88, &qword_1003F27F0);

  return v2;
}

+ (NSString)finishTransactionURL
{
  v2 = sub_10021D9C8(&qword_1003CBF90, &qword_1003F27F8);

  return v2;
}

+ (NSString)hideableSystemApps
{
  v2 = sub_10021D9C8(&qword_1003CBF98, &qword_1003F2800);

  return v2;
}

+ (NSString)ignoreIAPQueueCheckSuppression
{
  v2 = sub_10021D9C8(&qword_1003CBFA0, &qword_1003F2808);

  return v2;
}

+ (NSString)inAppBuyURL
{
  v2 = sub_10021D9C8(&qword_1003CBFA8, &qword_1003F2810);

  return v2;
}

+ (NSString)inAppOfferEligibility
{
  v2 = sub_10021D9C8(&qword_1003CBFB0, &qword_1003F2818);

  return v2;
}

+ (NSString)languageTag
{
  v2 = sub_10021D9C8(&qword_1003CBFB8, &qword_1003F2820);

  return v2;
}

+ (NSString)legacyClientMediaAPIRate
{
  v2 = sub_10021D9C8(&qword_1003CBFC0, &qword_1003F2828);

  return v2;
}

+ (NSString)localizationJetpackURL
{
  v2 = sub_10021D9C8(&qword_1003CBFC8, &qword_1003F2830);

  return v2;
}

+ (NSString)localizationInternalJetpackURL
{
  v2 = sub_10021D9C8(&qword_1003CBFD0, &qword_1003F2838);

  return v2;
}

+ (NSString)manageSubscriptionsURL
{
  v2 = sub_10021D9C8(&qword_1003CBFD8, &qword_1003F2840);

  return v2;
}

+ (NSString)mediaAPIHost
{
  v2 = sub_10021D9C8(&qword_1003CBFE0, &qword_1003F2848);

  return v2;
}

+ (NSString)mediaAPISandboxHost
{
  v2 = sub_10021D9C8(&qword_1003CBFE8, &qword_1003F2850);

  return v2;
}

+ (NSString)paymentAccountBindingEligibilityURL
{
  v2 = sub_10021D9C8(&qword_1003CBFF0, &qword_1003F2858);

  return v2;
}

+ (NSString)paymentAccountBindingURL
{
  v2 = sub_10021D9C8(&qword_1003CBFF8, &qword_1003F2860);

  return v2;
}

+ (NSString)pendingTransactionsCountURL
{
  v2 = sub_10021D9C8(&qword_1003CC000, &qword_1003F2868);

  return v2;
}

+ (NSString)pendingTransactionsURL
{
  v2 = sub_10021D9C8(&qword_1003CC008, &qword_1003F2870);

  return v2;
}

+ (NSString)privilegedBuyParams
{
  v2 = sub_10021D9C8(&qword_1003CC010, &qword_1003F2878);

  return v2;
}

+ (NSString)productsBatchLimit
{
  v2 = sub_10021D9C8(&qword_1003CC018, &qword_1003F2880);

  return v2;
}

+ (NSString)productsURL
{
  v2 = sub_10021D9C8(&qword_1003CC020, &qword_1003F2888);

  return v2;
}

+ (NSString)purchaseMetricsSuppressionList
{
  v2 = sub_10021D9C8(&qword_1003CC028, &qword_1003F2890);

  return v2;
}

+ (NSString)receiptRefreshMinAge
{
  v2 = sub_10021D9C8(&qword_1003CC030, &qword_1003F2898);

  return v2;
}

+ (NSString)redeemCodeURL
{
  v2 = sub_10021D9C8(&qword_1003CC038, &qword_1003F28A0);

  return v2;
}

+ (NSString)refundRequestURL
{
  v2 = sub_10021D9C8(&qword_1003CC040, &qword_1003F28A8);

  return v2;
}

+ (NSString)restoreTransactionsURL
{
  v2 = sub_10021D9C8(&qword_1003CC048, &qword_1003F28B0);

  return v2;
}

+ (NSString)storefrontCountryCode
{
  v2 = sub_10021D9C8(&qword_1003CC050, &qword_1003F28B8);

  return v2;
}

+ (NSString)storefrontIdentifier
{
  v2 = sub_10021D9C8(&qword_1003CC058, &qword_1003F28C0);

  return v2;
}

+ (NSString)subscriptionStatusMaxAge
{
  v2 = sub_10021D9C8(&qword_1003CC060, &qword_1003F28C8);

  return v2;
}

+ (NSString)subscriptionStatusURL
{
  v2 = sub_10021D9C8(&qword_1003CC068, &qword_1003F28D0);

  return v2;
}

+ (NSString)timestamp
{
  v2 = sub_10021D9C8(&qword_1003CC070, &qword_1003F28D8);

  return v2;
}

+ (NSString)transactionReceiptsMaxAge
{
  v2 = sub_10021D9C8(&qword_1003CC078, &qword_1003F28E0);

  return v2;
}

+ (NSString)transactionReceiptsMaxCount
{
  v2 = sub_10021D9C8(&qword_1003CC080, &qword_1003F28E8);

  return v2;
}

+ (NSString)transactionReceiptsURL
{
  v2 = sub_10021D9C8(&qword_1003CC088, &qword_1003F28F0);

  return v2;
}

+ (NSString)transactionReceiptsURLv2
{
  v2 = sub_10021D9C8(&qword_1003CC090, &qword_1003F28F8);

  return v2;
}

+ (NSString)trustedDomains
{
  v2 = sub_10021D9C8(&qword_1003CC098, &qword_1003F2900);

  return v2;
}

+ (NSString)addPushTypeURL
{
  v2 = sub_10021D9C8(&qword_1003CC0A0, &qword_1003F2908);

  return v2;
}

+ (NSString)pushEnvironment
{
  v2 = sub_10021D9C8(&qword_1003CC0A8, &qword_1003F2910);

  return v2;
}

+ (NSString)registerPushTokenURL
{
  v2 = sub_10021D9C8(&qword_1003CC0B0, &qword_1003F2918);

  return v2;
}

+ (NSString)removePushTypeURL
{
  v2 = sub_10021D9C8(&qword_1003CC0B8, &qword_1003F2920);

  return v2;
}

@end