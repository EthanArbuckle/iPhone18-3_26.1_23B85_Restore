@interface NSURL
- (id)ft_referralURLWithSourceIdentifier:(id)identifier appConfigTreatmentID:(id)d widgetEngagement:(id)engagement otherQueryItems:(id)items sharedDirectoryFileURL:(id)l;
@end

@implementation NSURL

- (id)ft_referralURLWithSourceIdentifier:(id)identifier appConfigTreatmentID:(id)d widgetEngagement:(id)engagement otherQueryItems:(id)items sharedDirectoryFileURL:(id)l
{
  identifierCopy = identifier;
  dCopy = d;
  engagementCopy = engagement;
  itemsCopy = items;
  lCopy = l;
  if (!identifierCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0948();
    if (itemsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (itemsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0A28();
  }

LABEL_6:
  v16 = [[NSURLComponents alloc] initWithURL:self resolvingAgainstBaseURL:1];
  queryItems = [v16 queryItems];
  v18 = [NSMutableArray arrayWithArray:queryItems];

  if (dCopy)
  {
    v19 = FCWidgetModeGroupIDPathComponent;
    [dCopy stringValue];
    v21 = v20 = dCopy;
    v22 = [NSURLQueryItem queryItemWithName:v19 value:v21];
    [v18 addObject:v22];

    dCopy = v20;
  }

  if (engagementCopy)
  {
    v39 = identifierCopy;
    v23 = dCopy;
    v24 = +[NSUUID UUID];
    uUIDString = [v24 UUIDString];

    v26 = [lCopy URLByAppendingPathComponent:uUIDString];
    data = [engagementCopy data];
    v28 = [data writeToURL:v26 atomically:1];

    if (v28)
    {
      v29 = FCWidgetEngagementFilePathQueryItemName;
      path = [v26 path];
      v31 = [NSURLQueryItem queryItemWithName:v29 value:path];
      [v18 addObject:v31];
    }

    dCopy = v23;
    identifierCopy = v39;
  }

  v32 = +[NSDate date];
  fc_stringWithISO8601Format = [v32 fc_stringWithISO8601Format];

  if (fc_stringWithISO8601Format)
  {
    v34 = [NSURLQueryItem queryItemWithName:FCUserActionDatePathComponent value:fc_stringWithISO8601Format];
    [v18 addObject:v34];
  }

  [v18 addObjectsFromArray:itemsCopy];
  [v16 setQueryItems:v18];
  v35 = [v16 URL];
  v36 = FTCampaignIdentifierForSourceIdentifier(identifierCopy);
  v37 = [v35 nss_URLWithCampaignID:v36];

  return v37;
}

@end