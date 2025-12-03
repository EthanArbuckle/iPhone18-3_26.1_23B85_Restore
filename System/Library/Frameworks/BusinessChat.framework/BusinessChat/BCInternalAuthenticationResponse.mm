@interface BCInternalAuthenticationResponse
- (BCError)error;
- (BCInternalAuthenticationResponse)initWithBusinessIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier credentials:(id)credentials error:(id)error;
- (BCInternalAuthenticationResponse)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (id)responseMessageFor:(id)for message:(id)message;
@end

@implementation BCInternalAuthenticationResponse

- (BCInternalAuthenticationResponse)initWithDictionary:(id)dictionary
{
  v50 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = BCInternalAuthenticationResponse;
  v5 = [(BCInternalAuthenticationResponse *)&v46 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [dictionaryCopy description];
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationResponse: initWithDictionary %@", buf, 0xCu);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];
    null = [MEMORY[0x277CBEB68] null];
    if (v8 == null)
    {
      v10 = 0;
    }

    else
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"businessIdentifier"];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
    null2 = [MEMORY[0x277CBEB68] null];
    if (v11 == null2)
    {
      v13 = 0;
    }

    else
    {
      v13 = [dictionaryCopy objectForKeyedSubscript:@"groupIdentifier"];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"credentials"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v14 == null3)
    {
      v16 = 0;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"credentials"];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"errors"];
    null4 = [MEMORY[0x277CBEB68] null];
    if (v17 == null4)
    {
      v19 = 0;
    }

    else
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"errors"];
    }

    if (v10)
    {
      if (v13)
      {
        if (v19)
        {
          v39 = v16;
          v40 = v13;
          v41 = v10;
          v20 = objc_opt_new();
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [[BCError alloc] initWithDictionary:*(*(&v42 + 1) + 8 * i)];
                if (v26)
                {
                  [(NSArray *)v20 addObject:v26];
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v42 objects:v47 count:16];
            }

            while (v23);
          }

          errors = v5->_errors;
          v5->_errors = v20;

          v13 = v40;
          v10 = v41;
          v16 = v39;
        }

        businessIdentifier = v5->_businessIdentifier;
        v5->_businessIdentifier = v10;
        v29 = v10;

        groupIdentifier = v5->_groupIdentifier;
        v5->_groupIdentifier = v13;
        v31 = v13;

        v32 = @"authenticated";
        if (!v16)
        {
          v32 = @"failed";
        }

        v5->_status = &v32->isa;
        credentials = v5->_credentials;
        v5->_credentials = v16;

        goto LABEL_32;
      }

      v35 = LogCategory_Daemon();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
LABEL_36:

        v34 = 0;
        goto LABEL_37;
      }

      *buf = 0;
      v36 = "Unable to create  BCInternalAuthenticationResponse: missing 'groupIdentifier' in payload";
    }

    else
    {
      v35 = LogCategory_Daemon();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v36 = "Unable to create BCInternalAuthenticationResponse: missing 'business identifier' in payload";
    }

    _os_log_error_impl(&dword_236EA0000, v35, OS_LOG_TYPE_ERROR, v36, buf, 2u);
    goto LABEL_36;
  }

LABEL_32:
  v34 = v5;
LABEL_37:

  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BCInternalAuthenticationResponse)initWithBusinessIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier credentials:(id)credentials error:(id)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  credentialsCopy = credentials;
  errorCopy = error;
  v27.receiver = self;
  v27.super_class = BCInternalAuthenticationResponse;
  v15 = [(BCInternalAuthenticationResponse *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_businessIdentifier, identifier);
    objc_storeStrong(&v16->_groupIdentifier, groupIdentifier);
    objc_storeStrong(&v16->_credentials, credentials);
    v17 = @"authenticated";
    if (!credentialsCopy)
    {
      v17 = @"failed";
    }

    v16->_status = &v17->isa;
    if (errorCopy)
    {
      v18 = [BCError alloc];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      domain = [errorCopy domain];
      localizedDescription = [errorCopy localizedDescription];
      v22 = [(BCError *)v18 initWithCode:v19 domain:domain message:localizedDescription];

      v28[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      errors = v16->_errors;
      v16->_errors = v23;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)responseMessageFor:(id)for message:(id)message
{
  forCopy = for;
  messageCopy = message;
  authenticationRequest = [forCopy authenticationRequest];
  labels = [authenticationRequest labels];
  v9 = [labels objectForKeyedSubscript:@"success"];

  replyMessage = [messageCopy replyMessage];
  receivedMessage = [messageCopy receivedMessage];
  imageIdentifier = [replyMessage imageIdentifier];
  if (imageIdentifier)
  {
    v13 = replyMessage;
  }

  else
  {
    v13 = receivedMessage;
  }

  imageIdentifier2 = [v13 imageIdentifier];

  imageDescription = [replyMessage imageDescription];
  if (imageDescription)
  {
    v15 = replyMessage;
  }

  else
  {
    v15 = receivedMessage;
  }

  imageDescription2 = [v15 imageDescription];

  v42 = v9;
  title = [v9 title];
  if (!title)
  {
    v39 = receivedMessage;
    v17 = objc_opt_new();
    lastName = [forCopy lastName];
    [v17 setFamilyName:lastName];

    firstName = [forCopy firstName];
    [v17 setGivenName:firstName];

    v20 = objc_opt_new();
    [v20 setStyle:0];
    v21 = MEMORY[0x277CCACA8];
    +[BCShared classBundle];
    v22 = v38 = forCopy;
    v23 = [v22 localizedStringForKey:@"SIGNED_IN" value:&stru_2849DDCD8 table:0];
    v24 = [v20 stringFromPersonNameComponents:v17];
    title = [v21 stringWithFormat:v23, v24];

    forCopy = v38;
    receivedMessage = v39;
  }

  status = [(BCInternalAuthenticationResponse *)self status];
  v26 = [status isEqualToString:@"failed"];

  if (v26)
  {
    v40 = receivedMessage;
    authenticationRequest2 = [forCopy authenticationRequest];
    labels2 = [authenticationRequest2 labels];
    v29 = [labels2 objectForKeyedSubscript:@"failure"];

    title2 = [v29 title];
    if (title2)
    {
      title3 = [v29 title];
    }

    else
    {
      v32 = +[BCShared classBundle];
      title3 = [v32 localizedStringForKey:@"ERROR_INTERNAL_AUTHENTICATION_FAILED" value:&stru_2849DDCD8 table:0];

      title = v32;
    }

    title = title3;
    receivedMessage = v40;
  }

  v33 = [[BCMessageInfo alloc] initWithTitle:title subtitle:0 style:@"icon" alternateTitle:0 imageIdentifier:imageIdentifier2 imageDescription:imageDescription2];

  v34 = [BCMessage alloc];
  rootKey = [messageCopy rootKey];
  v36 = [(BCMessage *)v34 initFromOriginalMessage:messageCopy rootKey:rootKey rootObject:self receivedMessage:receivedMessage replyMessage:v33];

  return v36;
}

- (NSDictionary)dictionaryValue
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setObject:self->_businessIdentifier forKeyedSubscript:@"businessIdentifier"];
  [v3 setObject:self->_groupIdentifier forKeyedSubscript:@"groupIdentifier"];
  [v3 setObject:self->_status forKeyedSubscript:@"status"];
  [v3 setObject:self->_credentials forKeyedSubscript:@"credentials"];
  errors = [(BCInternalAuthenticationResponse *)self errors];
  v5 = [errors count];

  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    errors2 = [(BCInternalAuthenticationResponse *)self errors];
    v8 = [errors2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(errors2);
          }

          dictionaryValue = [*(*(&v15 + 1) + 8 * i) dictionaryValue];
          [v6 addObject:dictionaryValue];
        }

        v9 = [errors2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"errors"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BCError)error
{
  errors = [(BCInternalAuthenticationResponse *)self errors];
  firstObject = [errors firstObject];

  return firstObject;
}

@end