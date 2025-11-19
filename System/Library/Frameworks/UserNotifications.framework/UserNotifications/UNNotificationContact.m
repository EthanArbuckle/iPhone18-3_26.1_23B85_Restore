@interface UNNotificationContact
@end

@implementation UNNotificationContact

id __64___UNNotificationContact_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) handle];
  v4 = [v3 un_logDigest];
  v5 = [v2 appendObject:v4 withName:@"handle"];

  v6 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"handleType"), @"handleType"}];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) serviceName];
  v9 = [v7 appendObject:v8 withName:@"serviceName"];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) displayName];
  v12 = [v11 un_logDigest];
  v13 = [v10 appendObject:v12 withName:@"displayName"];

  v14 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDisplayNameSuggested"), @"isDisplayNameSuggested"}];
  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) customIdentifier];
  v17 = [v16 un_logDigest];
  v18 = [v15 appendObject:v17 withName:@"customIdentifier"];

  v19 = *(a1 + 32);
  v20 = [*(a1 + 40) cnContactIdentifier];
  v21 = [v19 appendObject:v20 withName:@"cnContactIdentifier"];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) cnContactFullname];
  v24 = [v23 un_logDigest];
  v25 = [v22 appendObject:v24 withName:@"cnContactFullname"];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isCNContactIdentifierSuggested"), @"isCNContactIdentifierSuggested"}];
}

@end