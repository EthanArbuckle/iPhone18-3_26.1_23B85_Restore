@interface NSURL
- (id)ft_referralURLWithSourceIdentifier:(id)a3 appConfigTreatmentID:(id)a4 widgetEngagement:(id)a5 otherQueryItems:(id)a6 sharedDirectoryFileURL:(id)a7;
@end

@implementation NSURL

- (id)ft_referralURLWithSourceIdentifier:(id)a3 appConfigTreatmentID:(id)a4 widgetEngagement:(id)a5 otherQueryItems:(id)a6 sharedDirectoryFileURL:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v40 = a7;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C81E4();
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C82C4();
  }

LABEL_6:
  v16 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:1];
  v17 = [v16 queryItems];
  v18 = [NSMutableArray arrayWithArray:v17];

  if (v13)
  {
    v19 = FCWidgetModeGroupIDPathComponent;
    [v13 stringValue];
    v21 = v20 = v13;
    v22 = [NSURLQueryItem queryItemWithName:v19 value:v21];
    [v18 addObject:v22];

    v13 = v20;
  }

  if (v14)
  {
    v39 = v12;
    v23 = v13;
    v24 = +[NSUUID UUID];
    v25 = [v24 UUIDString];

    v26 = [v40 URLByAppendingPathComponent:v25];
    v27 = [v14 data];
    v28 = [v27 writeToURL:v26 atomically:1];

    if (v28)
    {
      v29 = FCWidgetEngagementFilePathQueryItemName;
      v30 = [v26 path];
      v31 = [NSURLQueryItem queryItemWithName:v29 value:v30];
      [v18 addObject:v31];
    }

    v13 = v23;
    v12 = v39;
  }

  v32 = +[NSDate date];
  v33 = [v32 fc_stringWithISO8601Format];

  if (v33)
  {
    v34 = [NSURLQueryItem queryItemWithName:FCUserActionDatePathComponent value:v33];
    [v18 addObject:v34];
  }

  [v18 addObjectsFromArray:v15];
  [v16 setQueryItems:v18];
  v35 = [v16 URL];
  v36 = FTCampaignIdentifierForSourceIdentifier(v12);
  v37 = [v35 nss_URLWithCampaignID:v36];

  return v37;
}

@end