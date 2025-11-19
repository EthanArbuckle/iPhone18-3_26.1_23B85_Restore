@interface ASOServiceAdAttribution
+ (id)log;
+ (id)processReengagementWithParameters:(id)a3 storeIdentifier:(id)a4 clientBundleID:(id)a5;
+ (id)processReengagementWithParameters:(id)a3 storeIdentifier:(id)a4 clientBundleID:(id)a5 attributionKitRecorder:(id)a6;
+ (void)recordAttributionKitImpressionWithCompactJWS:(id)a3 storeIdentifier:(id)a4 hostBundleID:(id)a5 interactionType:(int64_t)a6 attributionKitRecorder:(id)a7;
+ (void)recordImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7;
+ (void)recordImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7 attributionKitRecorder:(id)a8 skanRecorder:(id)a9;
+ (void)recordSKAdNetworkImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7 skanRecorder:(id)a8;
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

+ (void)recordImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v16 = objc_opt_new();
  v15 = +[ASDInstallAttribution sharedInstance];
  [ASOServiceAdAttribution recordImpressionWithParameters:v14 storeIdentifier:v13 hostAdamID:v12 clientBundleId:v11 interactionType:a7 attributionKitRecorder:v16 skanRecorder:v15];
}

+ (void)recordImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7 attributionKitRecorder:(id)a8 skanRecorder:(id)a9
{
  v21 = a3;
  v14 = a5;
  v15 = a8;
  v16 = a9;
  v17 = a6;
  v18 = a4;
  v19 = +[ASOAttributionKitBridge compactJWSDictionaryKey];
  v20 = [v21 objectForKeyedSubscript:v19];

  if (v20)
  {
    [ASOServiceAdAttribution recordAttributionKitImpressionWithCompactJWS:v20 storeIdentifier:v18 hostBundleID:v17 interactionType:a7 attributionKitRecorder:v15];
  }

  else
  {
    [ASOServiceAdAttribution recordSKAdNetworkImpressionWithParameters:v21 storeIdentifier:v18 hostAdamID:v14 clientBundleId:v17 interactionType:a7 skanRecorder:v16];
  }
}

+ (void)recordAttributionKitImpressionWithCompactJWS:(id)a3 storeIdentifier:(id)a4 hostBundleID:(id)a5 interactionType:(int64_t)a6 attributionKitRecorder:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a4;
  v15 = objc_alloc_init(NSNumberFormatter);
  [v15 setNumberStyle:0];
  v16 = [v15 numberFromString:v14];

  if (v16)
  {
    if (a6 == 1)
    {
      [v13 recordClickThroughWithAdvertisedItemID:objc_msgSend(v16 compactJWS:"unsignedLongLongValue") bundleID:{v11, v12}];
    }

    else if (!a6)
    {
      [v13 recordViewThroughWithAdvertisedItemID:objc_msgSend(v16 compactJWS:"unsignedLongLongValue") bundleID:{v11, v12}];
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

+ (void)recordSKAdNetworkImpressionWithParameters:(id)a3 storeIdentifier:(id)a4 hostAdamID:(id)a5 clientBundleId:(id)a6 interactionType:(int64_t)a7 skanRecorder:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a8;
  v16 = [v12 objectForKeyedSubscript:@"adNetworkId"];
  if (v16)
  {
    v17 = [v12 objectForKeyedSubscript:@"adNetworkNonce"];
    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 UUIDString];

      v17 = v18;
    }

    v19 = [v12 objectForKeyedSubscript:@"adNetworkImpressionTimestamp"];
    v33 = [v12 objectForKeyedSubscript:@"adNetworkAttributionSignature"];
    v20 = [v12 objectForKeyedSubscript:@"adNetworkPayloadVersion"];
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

    v30 = a7;
    if (!v20 || [v20 compare:@"4.0" options:64] == -1)
    {
      v22 = [v12 objectForKeyedSubscript:@"adNetworkCampaignId"];
      v29 = 0;
      v21 = 0;
    }

    else
    {
      v21 = [v12 objectForKeyedSubscript:@"sourceIdentifier"];
      v22 = 0;
      v29 = 1;
    }

    v32 = v21;
    if (!(v22 | v21) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v23 = +[ASOServiceAdAttribution log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100017790(v12, v14, v23);
      }

      goto LABEL_22;
    }

    v23 = [v12 objectForKeyedSubscript:@"adNetworkSourceAppStoreIdentifier"];
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
    v26 = [v27 numberFromString:v13];
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
    [v28 setSourceAppBundleId:v14];
    [v28 setVersion:v20];
    [v28 setSourceAppAdamId:v23];
    if (v30)
    {
      if (v30 != 1)
      {
LABEL_34:
        [v15 addInstallAttributionParamsWithConfig:v28];

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

+ (id)processReengagementWithParameters:(id)a3 storeIdentifier:(id)a4 clientBundleID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [ASOServiceAdAttribution processReengagementWithParameters:v9 storeIdentifier:v8 clientBundleID:v7 attributionKitRecorder:v10];

  return v11;
}

+ (id)processReengagementWithParameters:(id)a3 storeIdentifier:(id)a4 clientBundleID:(id)a5 attributionKitRecorder:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = objc_alloc_init(NSNumberFormatter);
  [v13 setNumberStyle:0];
  v14 = [v13 numberFromString:v12];

  if (v14)
  {
    v15 = +[ASOAttributionKitBridge compactJWSDictionaryKey];
    v16 = [v9 objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = +[ASOAttributionKitBridge reengagementURLDictionaryKey];
      v18 = [v9 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [NSURL URLWithString:v18];
      }

      else
      {
        v19 = 0;
      }

      v20 = [v11 processReengagementWithAdvertisedItemID:objc_msgSend(v14 compactJWS:"unsignedLongLongValue") bundleID:v16 url:{v10, v19}];
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