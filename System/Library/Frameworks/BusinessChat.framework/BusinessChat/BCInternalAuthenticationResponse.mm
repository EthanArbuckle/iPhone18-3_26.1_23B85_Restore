@interface BCInternalAuthenticationResponse
- (BCError)error;
- (BCInternalAuthenticationResponse)initWithBusinessIdentifier:(id)a3 groupIdentifier:(id)a4 credentials:(id)a5 error:(id)a6;
- (BCInternalAuthenticationResponse)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryValue;
- (id)responseMessageFor:(id)a3 message:(id)a4;
@end

@implementation BCInternalAuthenticationResponse

- (BCInternalAuthenticationResponse)initWithDictionary:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BCInternalAuthenticationResponse;
  v5 = [(BCInternalAuthenticationResponse *)&v46 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 description];
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationResponse: initWithDictionary %@", buf, 0xCu);
    }

    v8 = [v4 objectForKeyedSubscript:@"businessIdentifier"];
    v9 = [MEMORY[0x277CBEB68] null];
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v4 objectForKeyedSubscript:@"businessIdentifier"];
    }

    v11 = [v4 objectForKeyedSubscript:@"groupIdentifier"];
    v12 = [MEMORY[0x277CBEB68] null];
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v4 objectForKeyedSubscript:@"groupIdentifier"];
    }

    v14 = [v4 objectForKeyedSubscript:@"credentials"];
    v15 = [MEMORY[0x277CBEB68] null];
    if (v14 == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v4 objectForKeyedSubscript:@"credentials"];
    }

    v17 = [v4 objectForKeyedSubscript:@"errors"];
    v18 = [MEMORY[0x277CBEB68] null];
    if (v17 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = [v4 objectForKeyedSubscript:@"errors"];
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

- (BCInternalAuthenticationResponse)initWithBusinessIdentifier:(id)a3 groupIdentifier:(id)a4 credentials:(id)a5 error:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v27.receiver = self;
  v27.super_class = BCInternalAuthenticationResponse;
  v15 = [(BCInternalAuthenticationResponse *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_businessIdentifier, a3);
    objc_storeStrong(&v16->_groupIdentifier, a4);
    objc_storeStrong(&v16->_credentials, a5);
    v17 = @"authenticated";
    if (!v13)
    {
      v17 = @"failed";
    }

    v16->_status = &v17->isa;
    if (v14)
    {
      v18 = [BCError alloc];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "code")}];
      v20 = [v14 domain];
      v21 = [v14 localizedDescription];
      v22 = [(BCError *)v18 initWithCode:v19 domain:v20 message:v21];

      v28[0] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      errors = v16->_errors;
      v16->_errors = v23;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)responseMessageFor:(id)a3 message:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 authenticationRequest];
  v8 = [v7 labels];
  v9 = [v8 objectForKeyedSubscript:@"success"];

  v10 = [v6 replyMessage];
  v11 = [v6 receivedMessage];
  v12 = [v10 imageIdentifier];
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v43 = [v13 imageIdentifier];

  v14 = [v10 imageDescription];
  if (v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  v41 = [v15 imageDescription];

  v42 = v9;
  v16 = [v9 title];
  if (!v16)
  {
    v39 = v11;
    v17 = objc_opt_new();
    v18 = [v5 lastName];
    [v17 setFamilyName:v18];

    v19 = [v5 firstName];
    [v17 setGivenName:v19];

    v20 = objc_opt_new();
    [v20 setStyle:0];
    v21 = MEMORY[0x277CCACA8];
    +[BCShared classBundle];
    v22 = v38 = v5;
    v23 = [v22 localizedStringForKey:@"SIGNED_IN" value:&stru_2849DDCD8 table:0];
    v24 = [v20 stringFromPersonNameComponents:v17];
    v16 = [v21 stringWithFormat:v23, v24];

    v5 = v38;
    v11 = v39;
  }

  v25 = [(BCInternalAuthenticationResponse *)self status];
  v26 = [v25 isEqualToString:@"failed"];

  if (v26)
  {
    v40 = v11;
    v27 = [v5 authenticationRequest];
    v28 = [v27 labels];
    v29 = [v28 objectForKeyedSubscript:@"failure"];

    v30 = [v29 title];
    if (v30)
    {
      v31 = [v29 title];
    }

    else
    {
      v32 = +[BCShared classBundle];
      v31 = [v32 localizedStringForKey:@"ERROR_INTERNAL_AUTHENTICATION_FAILED" value:&stru_2849DDCD8 table:0];

      v16 = v32;
    }

    v16 = v31;
    v11 = v40;
  }

  v33 = [[BCMessageInfo alloc] initWithTitle:v16 subtitle:0 style:@"icon" alternateTitle:0 imageIdentifier:v43 imageDescription:v41];

  v34 = [BCMessage alloc];
  v35 = [v6 rootKey];
  v36 = [(BCMessage *)v34 initFromOriginalMessage:v6 rootKey:v35 rootObject:self receivedMessage:v11 replyMessage:v33];

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
  v4 = [(BCInternalAuthenticationResponse *)self errors];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(BCInternalAuthenticationResponse *)self errors];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryValue];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(BCInternalAuthenticationResponse *)self errors];
  v3 = [v2 firstObject];

  return v3;
}

@end