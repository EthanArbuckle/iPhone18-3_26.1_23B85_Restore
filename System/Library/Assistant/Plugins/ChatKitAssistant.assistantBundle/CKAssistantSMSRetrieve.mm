@interface CKAssistantSMSRetrieve
- (id)_validateRetrieve;
- (void)performWithCompletion:(id)a3;
@end

@implementation CKAssistantSMSRetrieve

- (id)_validateRetrieve
{
  v2 = [(CKAssistantSMSRetrieve *)self identifiers];
  v3 = [v2 count];

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

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "SMSRetrieve performWithCompletion", buf, 2u);
    }
  }

  v6 = [(CKAssistantSMSRetrieve *)self _validateRetrieve];
  if (!v6)
  {
    v7 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(CKAssistantSMSRetrieve *)self identifiers];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v15 + 1) + 8 * v11) identifier];
          v13 = CKAssistantGetDraftForIdentifier();

          if (v13)
          {
            [v7 addObject:v13];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v6 = objc_alloc_init(SADomainObjectRetrieveCompleted);
    [v6 setObjects:v7];
  }

  v14 = [v6 dictionary];
  v4[2](v4, v14);
}

@end