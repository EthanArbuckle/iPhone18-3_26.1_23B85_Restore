@interface UNNotificationCommunicationContext
@end

@implementation UNNotificationCommunicationContext

id __77___UNNotificationCommunicationContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v3 un_logDigest];
  v5 = [v2 appendObject:v4 withName:@"identifier"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) associatedObjectUri];
  v8 = [v7 un_logDigest];
  v9 = [v6 appendObject:v8 withName:@"associatedObjectUri"];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) bundleIdentifier];
  v12 = [v10 appendObject:v11 withName:@"bundleIdentifier"];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) displayName];
  v15 = [v14 un_logDigest];
  v16 = [v13 appendObject:v15 withName:@"displayName"];

  v17 = *(a1 + 32);
  v18 = [*(a1 + 40) recipients];
  [v17 appendArraySection:v18 withName:@"recipients" skipIfEmpty:1];

  v19 = *(a1 + 32);
  v20 = [*(a1 + 40) sender];
  v21 = [v19 appendObject:v20 withName:@"sender"];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) contentURL];
  v24 = [v22 appendObject:v23 withName:@"contentURL"];

  v25 = *(a1 + 32);
  v26 = [*(a1 + 40) imageName];
  v27 = [v25 appendObject:v26 withName:@"imageName"];

  v28 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isSystemImage"), @"isSystemImage"}];
  v29 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"mentionsCurrentUser"), @"mentionsCurrentUser"}];
  v30 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"notifyRecipientAnyway"), @"notifyRecipientAnyway"}];
  v31 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isReplyToCurrentUser"), @"isReplyToCurrentUser"}];
  v32 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"recipientCount"), @"recipientCount"}];
  v33 = *(a1 + 32);
  v34 = [*(a1 + 40) capabilities];
  v35 = &stru_1F308F460;
  if (!v34)
  {
    v35 = @"Unspecified";
  }

  if (v34)
  {
    v36 = @"Video";
  }

  else
  {
    v36 = v35;
  }

  [v33 appendString:v36 withName:@"capabilities"];
  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isBusinessCorrespondence"), @"isBusinessCorrespondence"}];
}

@end