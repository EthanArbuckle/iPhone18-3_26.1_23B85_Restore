@interface ASOServiceAdAttribution
+ (id)log;
+ (id)processReengagementWithParameters:(id)parameters storeIdentifier:(id)identifier clientBundleID:(id)d;
+ (id)processReengagementWithParameters:(id)parameters storeIdentifier:(id)identifier clientBundleID:(id)d attributionKitRecorder:(id)recorder;
+ (void)recordAttributionKitImpressionWithCompactJWS:(id)s storeIdentifier:(id)identifier hostBundleID:(id)d interactionType:(int64_t)type attributionKitRecorder:(id)recorder;
+ (void)recordImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type;
+ (void)recordImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type attributionKitRecorder:(id)recorder skanRecorder:(id)skanRecorder;
+ (void)recordSKAdNetworkImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type skanRecorder:(id)recorder;
@end

@implementation ASOServiceAdAttribution

+ (id)log
{
  if (qword_10002C700 != -1)
  {
    sub_1000176E0();
  }

  v3 = qword_10002C708;

  return v3;
}

+ (void)recordImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type
{
  idCopy = id;
  dCopy = d;
  identifierCopy = identifier;
  parametersCopy = parameters;
  v16 = objc_opt_new();
  v15 = +[ASDInstallAttribution sharedInstance];
  [ASOServiceAdAttribution recordImpressionWithParameters:parametersCopy storeIdentifier:identifierCopy hostAdamID:dCopy clientBundleId:idCopy interactionType:type attributionKitRecorder:v16 skanRecorder:v15];
}

+ (void)recordImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type attributionKitRecorder:(id)recorder skanRecorder:(id)skanRecorder
{
  parametersCopy = parameters;
  dCopy = d;
  recorderCopy = recorder;
  skanRecorderCopy = skanRecorder;
  idCopy = id;
  identifierCopy = identifier;
  v19 = +[ASOAttributionKitBridge compactJWSDictionaryKey];
  v20 = [parametersCopy objectForKeyedSubscript:v19];

  if (v20)
  {
    [ASOServiceAdAttribution recordAttributionKitImpressionWithCompactJWS:v20 storeIdentifier:identifierCopy hostBundleID:idCopy interactionType:type attributionKitRecorder:recorderCopy];
  }

  else
  {
    [ASOServiceAdAttribution recordSKAdNetworkImpressionWithParameters:parametersCopy storeIdentifier:identifierCopy hostAdamID:dCopy clientBundleId:idCopy interactionType:type skanRecorder:skanRecorderCopy];
  }
}

+ (void)recordAttributionKitImpressionWithCompactJWS:(id)s storeIdentifier:(id)identifier hostBundleID:(id)d interactionType:(int64_t)type attributionKitRecorder:(id)recorder
{
  sCopy = s;
  dCopy = d;
  recorderCopy = recorder;
  identifierCopy = identifier;
  v15 = objc_alloc_init(NSNumberFormatter);
  [v15 setNumberStyle:0];
  v16 = [v15 numberFromString:identifierCopy];

  if (v16)
  {
    if (type == 1)
    {
      [recorderCopy recordClickThroughWithAdvertisedItemID:objc_msgSend(v16 compactJWS:"unsignedLongLongValue") bundleID:{sCopy, dCopy}];
    }

    else if (!type)
    {
      [recorderCopy recordViewThroughWithAdvertisedItemID:objc_msgSend(v16 compactJWS:"unsignedLongLongValue") bundleID:{sCopy, dCopy}];
    }
  }

  else
  {
    v17 = +[ASOServiceAdAttribution log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000176F4();
    }
  }
}

+ (void)recordSKAdNetworkImpressionWithParameters:(id)parameters storeIdentifier:(id)identifier hostAdamID:(id)d clientBundleId:(id)id interactionType:(int64_t)type skanRecorder:(id)recorder
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  idCopy = id;
  recorderCopy = recorder;
  v16 = [parametersCopy objectForKeyedSubscript:@"adNetworkId"];
  if (v16)
  {
    v17 = [parametersCopy objectForKeyedSubscript:@"adNetworkNonce"];
    if (objc_opt_respondsToSelector())
    {
      uUIDString = [v17 UUIDString];

      v17 = uUIDString;
    }

    v19 = [parametersCopy objectForKeyedSubscript:@"adNetworkImpressionTimestamp"];
    v33 = [parametersCopy objectForKeyedSubscript:@"adNetworkAttributionSignature"];
    v20 = [parametersCopy objectForKeyedSubscript:@"adNetworkPayloadVersion"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100017728();
      }

      goto LABEL_23;
    }

    typeCopy = type;
    if (!v20 || [v20 compare:@"4.0" options:64] == -1)
    {
      v22 = [parametersCopy objectForKeyedSubscript:@"adNetworkCampaignId"];
      v29 = 0;
      v21 = 0;
    }

    else
    {
      v21 = [parametersCopy objectForKeyedSubscript:@"sourceIdentifier"];
      v22 = 0;
      v29 = 1;
    }

    v32 = v21;
    if (!(v22 | v21) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v23 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100017790(parametersCopy, idCopy, v23);
      }

      goto LABEL_22;
    }

    v23 = [parametersCopy objectForKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v31 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10001775C();
      }

      v24 = v31;
      goto LABEL_35;
    }

    v27 = objc_alloc_init(NSNumberFormatter);
    [v27 setNumberStyle:0];
    v28 = objc_alloc_init(ASDInstallAttributionParamsConfig);
    v26 = [v27 numberFromString:identifierCopy];
    [v28 setAppAdamId:v26];

    [v28 setAdNetworkId:v16];
    if (v29)
    {
      [v28 setSourceIdentifier:v32];
    }

    else
    {
      [v28 setCampaignId:v22];
    }

    [v28 setImpressionId:v17];
    [v28 setTimestamp:v19];
    [v28 setAttributionSignature:v33];
    [v28 setSourceAppBundleId:idCopy];
    [v28 setVersion:v20];
    [v28 setSourceAppAdamId:v23];
    if (typeCopy)
    {
      if (typeCopy != 1)
      {
LABEL_34:
        [recorderCopy addInstallAttributionParamsWithConfig:v28];

        v24 = v27;
LABEL_35:

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }

      v25 = &ASDInstallAttributionInteractionTypeClick;
    }

    else
    {
      v25 = &ASDInstallAttributionInteractionTypeView;
    }

    [v28 setInteractionType:*v25];
    goto LABEL_34;
  }

  v17 = +[ASOServiceAdAttribution log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_100017818();
  }

LABEL_24:
}

+ (id)processReengagementWithParameters:(id)parameters storeIdentifier:(id)identifier clientBundleID:(id)d
{
  dCopy = d;
  identifierCopy = identifier;
  parametersCopy = parameters;
  v10 = objc_opt_new();
  v11 = [ASOServiceAdAttribution processReengagementWithParameters:parametersCopy storeIdentifier:identifierCopy clientBundleID:dCopy attributionKitRecorder:v10];

  return v11;
}

+ (id)processReengagementWithParameters:(id)parameters storeIdentifier:(id)identifier clientBundleID:(id)d attributionKitRecorder:(id)recorder
{
  parametersCopy = parameters;
  dCopy = d;
  recorderCopy = recorder;
  identifierCopy = identifier;
  v13 = objc_alloc_init(NSNumberFormatter);
  [v13 setNumberStyle:0];
  v14 = [v13 numberFromString:identifierCopy];

  if (v14)
  {
    v15 = +[ASOAttributionKitBridge compactJWSDictionaryKey];
    v16 = [parametersCopy objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = +[ASOAttributionKitBridge reengagementURLDictionaryKey];
      v18 = [parametersCopy objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [NSURL URLWithString:v18];
      }

      else
      {
        v19 = 0;
      }

      v20 = [recorderCopy processReengagementWithAdvertisedItemID:objc_msgSend(v14 compactJWS:"unsignedLongLongValue") bundleID:v16 url:{dCopy, v19}];
      v21 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138477827;
        v24 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[AttributionKit] Received re-engagement url: %{private}@", &v23, 0xCu);
      }
    }

    else
    {
      v19 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10001784C();
      }

      v20 = 0;
    }
  }

  else
  {
    v16 = +[ASOServiceAdAttribution log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100017880();
    }

    v20 = 0;
  }

  return v20;
}

@end