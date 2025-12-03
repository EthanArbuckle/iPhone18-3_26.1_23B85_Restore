@interface BCInternalAuthenticationRequest
- (BCInternalAuthenticationRequest)initWithCoder:(id)coder;
- (BCInternalAuthenticationRequest)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCInternalAuthenticationRequest

- (BCInternalAuthenticationRequest)initWithDictionary:(id)dictionary
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = BCInternalAuthenticationRequest;
  v5 = [(BCInternalAuthenticationRequest *)&v55 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [dictionaryCopy description];
      *buf = 138412290;
      v58 = v7;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationRequest: initWithDictionary %@", buf, 0xCu);
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"responseEncryptionKey"];
    null3 = [MEMORY[0x277CBEB68] null];
    if (v14 == null3)
    {
      v16 = 0;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"responseEncryptionKey"];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"retrieve"];
    null4 = [MEMORY[0x277CBEB68] null];
    if (v17 == null4)
    {
      v19 = 0;
    }

    else
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"retrieve"];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"labels"];
    null5 = [MEMORY[0x277CBEB68] null];
    if (v20 == null5)
    {
      v22 = 0;
    }

    else
    {
      v22 = [dictionaryCopy objectForKeyedSubscript:@"labels"];
    }

    v23 = objc_opt_new();
    if (v10)
    {
      if (v13)
      {
        if (v16)
        {
          if (v19)
          {
            v46 = v19;
            v47 = v16;
            v48 = v13;
            v49 = v10;
            v50 = v5;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v24 = v22;
            v25 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v52;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v52 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v51 + 1) + 8 * i);
                  v30 = [v24 objectForKeyedSubscript:v29];
                  if (v30)
                  {
                    v31 = [[BCAuthenticationLabels alloc] initWithDictionary:v30];
                    [(NSDictionary *)v23 setObject:v31 forKeyedSubscript:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
              }

              while (v26);
            }

            v5 = v50;
            businessIdentifier = v50->_businessIdentifier;
            v50->_businessIdentifier = v49;
            v33 = v49;

            groupIdentifier = v50->_groupIdentifier;
            v50->_groupIdentifier = v48;
            v35 = v48;

            responseEncryptionKey = v50->_responseEncryptionKey;
            v50->_responseEncryptionKey = v47;
            v37 = v47;

            retrieve = v50->_retrieve;
            v50->_retrieve = v46;
            v39 = v46;

            labels = v50->_labels;
            v50->_labels = v23;

            goto LABEL_33;
          }

          v42 = LogCategory_Daemon();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'retrieve' in payload";
            goto LABEL_42;
          }

LABEL_43:

          v41 = 0;
          goto LABEL_44;
        }

        v42 = LogCategory_Daemon();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'responseEncryptionKey' in payload";
      }

      else
      {
        v42 = LogCategory_Daemon();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v43 = "Unable to create  BCInternalAuthenticationRequest: missing 'groupIdentifier' in payload";
      }
    }

    else
    {
      v42 = LogCategory_Daemon();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v43 = "Unable to create BCInternalAuthenticationRequest: missing 'business identifier' in payload";
    }

LABEL_42:
    _os_log_error_impl(&dword_236EA0000, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
    goto LABEL_43;
  }

LABEL_33:
  v41 = v5;
LABEL_44:

  v44 = *MEMORY[0x277D85DE8];
  return v41;
}

- (void)encodeWithCoder:(id)coder
{
  businessIdentifier = self->_businessIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:businessIdentifier forKey:@"businessIdentifier"];
  [coderCopy encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_responseEncryptionKey forKey:@"responseEncryptionKey"];
  [coderCopy encodeObject:self->_retrieve forKey:@"retrieve"];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
}

- (BCInternalAuthenticationRequest)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = BCInternalAuthenticationRequest;
  v5 = [(BCInternalAuthenticationRequest *)&v19 init];
  if (v5)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = coderCopy;
      _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCInternalAuthenticationRequest: initWithCoder %@", buf, 0xCu);
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessIdentifier"];
    businessIdentifier = v5->_businessIdentifier;
    v5->_businessIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseEncryptionKey"];
    responseEncryptionKey = v5->_responseEncryptionKey;
    v5->_responseEncryptionKey = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"retrieve"];
    retrieve = v5->_retrieve;
    v5->_retrieve = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"labels"];
    labels = v5->_labels;
    v5->_labels = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSDictionary)dictionaryValue
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_labels;
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_labels objectForKeyedSubscript:v10, v16];
        dictionaryValue = [v11 dictionaryValue];
        [v4 setObject:dictionaryValue forKeyedSubscript:v10];
      }

      v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [v3 setObject:self->_businessIdentifier forKeyedSubscript:@"businessIdentifier"];
  [v3 setObject:self->_groupIdentifier forKeyedSubscript:@"groupIdentifier"];
  [v3 setObject:self->_responseEncryptionKey forKeyedSubscript:@"responseEncryptionKey"];
  [v3 setObject:self->_retrieve forKeyedSubscript:@"retrieve"];
  [v3 setObject:v4 forKeyedSubscript:@"labels"];
  v13 = [v3 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end