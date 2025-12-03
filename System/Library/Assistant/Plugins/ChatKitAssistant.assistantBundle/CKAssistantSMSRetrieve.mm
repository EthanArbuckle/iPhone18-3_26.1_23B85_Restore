@interface CKAssistantSMSRetrieve
- (id)_validateRetrieve;
- (void)performWithCompletion:(id)completion;
@end

@implementation CKAssistantSMSRetrieve

- (id)_validateRetrieve
{
  identifiers = [(CKAssistantSMSRetrieve *)self identifiers];
  v3 = [identifiers count];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[SACommandFailed alloc] initWithReason:@"No identifiers to retrieve"];
  }

  return v4;
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSRetrieve performWithCompletion", buf, 2u);
    }
  }

  _validateRetrieve = [(CKAssistantSMSRetrieve *)self _validateRetrieve];
  if (!_validateRetrieve)
  {
    v7 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    identifiers = [(CKAssistantSMSRetrieve *)self identifiers];
    v9 = [identifiers countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(identifiers);
          }

          identifier = [*(*(&v15 + 1) + 8 * v11) identifier];
          v13 = CKAssistantGetDraftForIdentifier();

          if (v13)
          {
            [v7 addObject:v13];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [identifiers countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    _validateRetrieve = objc_alloc_init(SADomainObjectRetrieveCompleted);
    [_validateRetrieve setObjects:v7];
  }

  dictionary = [_validateRetrieve dictionary];
  completionCopy[2](completionCopy, dictionary);
}

@end