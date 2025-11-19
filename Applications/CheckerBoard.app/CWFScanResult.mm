@interface CWFScanResult
- (BOOL)isSAE;
- (BOOL)requiresPassword;
- (id)supportedEAPTypes;
@end

@implementation CWFScanResult

- (id)supportedEAPTypes
{
  v2 = [(CWFScanResult *)self scanRecord];
  v3 = [v2 objectForKey:@"AcceptEAPTypes"];

  return v3;
}

- (BOOL)isSAE
{
  v2 = [(CWFScanResult *)self scanRecord];
  v3 = [v2 objectForKey:@"RSN_IE"];

  if (v3 && (([v3 objectForKey:@"IE_KEY_RSN_AUTHSELS"], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v3, "objectForKey:", @"IE_KEY_WPA_AUTHSELS"), (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
    if ([v4 containsObject:&off_100081210])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 containsObject:&off_100081228];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)requiresPassword
{
  if ([(CWFScanResult *)self isEAP])
  {
    v3 = [(CWFScanResult *)self supportedEAPTypes];
    v4 = [v3 containsObject:&off_100081240];

    v5 = [(CWFScanResult *)self supportedEAPTypes];
    if ([v5 containsObject:&off_100081258])
    {
      v6 = 1;
    }

    else
    {
      v8 = [(CWFScanResult *)self supportedEAPTypes];
      v6 = [v8 containsObject:&off_100081270];
    }

    v7 = (v4 | v6) ^ 1;
    return v7 & 1;
  }

  if (([(CWFScanResult *)self isWPA]& 1) != 0 || ([(CWFScanResult *)self isWPA2]& 1) != 0 || ([(CWFScanResult *)self isWEP]& 1) != 0 || ([(CWFScanResult *)self isWAPI]& 1) != 0)
  {
    v7 = 1;
    return v7 & 1;
  }

  return [(CWFScanResult *)self isSAE];
}

@end