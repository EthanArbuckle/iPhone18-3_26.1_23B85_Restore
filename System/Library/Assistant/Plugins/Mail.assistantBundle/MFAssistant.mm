@interface MFAssistant
+ (id)loadEmailContentForEmails:(id)emails delegate:(id)delegate;
+ (void)permuteEmail:(id)email withResults:(id)results;
@end

@implementation MFAssistant

+ (id)loadEmailContentForEmails:(id)emails delegate:(id)delegate
{
  emailsCopy = emails;
  delegateCopy = delegate;
  v21 = emailsCopy;
  v7 = objc_alloc_init(NSMutableArray);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = emailsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = *v23;
    v11 = MSCriterionTypeMessageReference;
    v12 = MSCriterionQualifierContains;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [[MSCriterion alloc] initWithType:v11 qualifier:v12 expression:*(*(&v22 + 1) + 8 * i)];
        [v7 addObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v7 count] < 2)
  {
    lastObject = [v7 lastObject];
  }

  else
  {
    lastObject = [[MSCriterion alloc] initWithCriteria:v7 allRequired:0];
  }

  v16 = lastObject;
  v17 = [NSArray arrayWithObjects:MSResultsKeyMessageReference, MSResultsKeySender, MSResultsKeySubject, MSResultsKeyDateSent, MSResultsKeyRecipientTo, MSResultsKeyRecipientCc, MSResultsKeyBodySummary, MSResultsKeyOutgoing, MSResultsKeyStatus, _MSResultsKeyIsLocalDraft, _MSResultsKeyRFC822Data, 0, v21, v22];
  v18 = [MSSearch findMessageData:v17 matchingCriterion:v16 options:0 delegate:delegateCopy];
  if (!v18)
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v16;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "#Warning Could not initiate search for %@", buf, 0xCu);
    }
  }

  return v18;
}

+ (void)permuteEmail:(id)email withResults:(id)results
{
  emailCopy = email;
  resultsCopy = results;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [resultsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    v10 = MSResultsKeySender;
    v11 = MSResultsKeySubject;
    v24 = MSResultsKeyDateSent;
    v23 = MSResultsKeyRecipientTo;
    v22 = MSResultsKeyRecipientCc;
    v21 = MSResultsKeyOutgoing;
    v20 = MSResultsKeyBodySummary;
    v18 = MSResultsKeyStatus;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [resultsCopy objectForKey:v13];
        if ([v13 isEqualToString:v10])
        {
          v15 = MFSAPersonAttributeFromEmail(v14);
          [emailCopy setFromEmail:v15];
LABEL_8:

          goto LABEL_13;
        }

        if ([v13 isEqualToString:v11])
        {
          [emailCopy setSubject:v14];
        }

        else if ([v13 isEqualToString:v24])
        {
          [emailCopy setDateSent:v14];
        }

        else
        {
          if ([v13 isEqualToString:v23])
          {
            v15 = MFSAPersonAttributesFromEmails(v14);
            [emailCopy setRecipientsTo:v15];
            goto LABEL_8;
          }

          if ([v13 isEqualToString:v22])
          {
            v15 = MFSAPersonAttributesFromEmails(v14);
            [emailCopy setRecipientsCc:v15];
            goto LABEL_8;
          }

          if ([v13 isEqualToString:v21])
          {
            [emailCopy setOutgoing:v14];
          }

          else if ([v13 isEqualToString:v20])
          {
            message = [emailCopy message];
            v16 = [message length] == 0;

            if (v16)
            {
              [emailCopy setMessage:v14];
            }
          }

          else if ([v13 isEqualToString:v18])
          {
            v15 = v14;
            [emailCopy setStatusFlags:{objc_msgSend(v15, "unsignedIntegerValue")}];
            goto LABEL_8;
          }
        }

LABEL_13:

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v17 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      v8 = v17;
    }

    while (v17);
  }
}

@end