@interface ENTextMessage
+ (id)textMessageWithMessage:(id)a3 embeddedURLs:(id)a4;
- (ENTextMessage)initWithCoder:(id)a3;
- (ENTextMessage)initWithMessage:(id)a3 embeddedURLs:(id)a4;
- (NSString)signature;
- (NSString)verificationString;
- (NSURL)ensTestVerificationURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENTextMessage

+ (id)textMessageWithMessage:(id)a3 embeddedURLs:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ENTextMessage alloc] initWithMessage:v6 embeddedURLs:v5];

  return v7;
}

- (ENTextMessage)initWithMessage:(id)a3 embeddedURLs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ENTextMessage;
  v8 = [(ENTextMessage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(ENTextMessage *)v8 setMessage:v6];
    [(ENTextMessage *)v9 setEmbeddedURLs:v7];
    v10 = [(ENTextMessage *)v9 ensTestVerificationURL];
  }

  return v9;
}

- (id)description
{
  NSAppendPrintF_safe();
  v8 = 0;
  message = self->_message;
  NSAppendPrintF_safe();
  v3 = v8;

  embeddedURLs = self->_embeddedURLs;
  NSAppendPrintF_safe();
  v4 = v3;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_message forKey:@"textMessage"];
  embeddedURLs = self->_embeddedURLs;
  if (embeddedURLs)
  {
    [v5 encodeObject:embeddedURLs forKey:@"textMessageURLs"];
  }
}

- (ENTextMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textMessage"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"textMessageURLs"];

  v7 = [objc_opt_class() textMessageWithMessage:v5 embeddedURLs:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  message = self->_message;
  embeddedURLs = self->_embeddedURLs;

  return [v4 initWithMessage:message embeddedURLs:embeddedURLs];
}

- (NSURL)ensTestVerificationURL
{
  ensTestVerificationURL = self->_ensTestVerificationURL;
  if (!ensTestVerificationURL)
  {
    v4 = [(ENTextMessage *)self embeddedURLs];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__ENTextMessage_ensTestVerificationURL__block_invoke;
    v7[3] = &unk_278A4B660;
    v7[4] = self;
    [v4 enumerateObjectsUsingBlock:v7];

    ensTestVerificationURL = self->_ensTestVerificationURL;
  }

  v5 = ensTestVerificationURL;

  return v5;
}

void __39__ENTextMessage_ensTestVerificationURL__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [MEMORY[0x277CCACE0] componentsWithURL:v6 resolvingAgainstBaseURL:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 queryItems];
    v10 = v9;
    if (v9)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__1;
      v38 = __Block_byref_object_dispose__1;
      v39 = 0;
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__1;
      v32 = __Block_byref_object_dispose__1;
      v33 = 0;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __39__ENTextMessage_ensTestVerificationURL__block_invoke_10;
      v27[3] = &unk_278A4B638;
      v27[4] = &v34;
      v27[5] = &v28;
      [v9 enumerateObjectsUsingBlock:v27];
      v11 = v29[5];
      if (v11)
      {
        objc_storeStrong((*(a1 + 32) + 32), v11);
        if (!v35[5])
        {
          v12 = [v8 scheme];
          v13 = [v12 isEqualToString:@"https"];

          if (v13)
          {
            v14 = [v8 host];
            v15 = [v14 componentsSeparatedByString:@"."];
            v16 = [v15 firstObject];

            v17 = [ENRegion regionWithCode:v16];
            v18 = *(a1 + 32);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;

            v20 = [*(*(a1 + 32) + 40) regionCode];
            v21 = v35[5];
            v35[5] = v20;
          }
        }

        v22 = [MEMORY[0x277CCAB68] stringWithFormat:@"ens://v?c=%@", v29[5]];
        v23 = v22;
        if (v35[5])
        {
          [v22 appendFormat:@"&r=%@", v35[5]];
        }

        v24 = [MEMORY[0x277CBEBC0] URLWithString:v23];
        v25 = *(a1 + 32);
        v26 = *(v25 + 24);
        *(v25 + 24) = v24;

        *a4 = 1;
      }

      _Block_object_dispose(&v28, 8);

      _Block_object_dispose(&v34, 8);
    }
  }
}

void __39__ENTextMessage_ensTestVerificationURL__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 name];
  v4 = [v3 value];

  if (v6 && v4)
  {
    if ([v6 isEqualToString:@"r"])
    {
      v5 = 32;
    }

    else
    {
      if (![v6 isEqualToString:@"c"])
      {
        goto LABEL_8;
      }

      v5 = 40;
    }

    objc_storeStrong((*(*(a1 + v5) + 8) + 40), v4);
  }

LABEL_8:
}

- (NSString)verificationString
{
  v2 = [(ENTextMessage *)self message];
  v3 = [v2 rangeOfString:@"Authentication:" options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 substringToIndex:v3 + v4];
  }

  return v5;
}

- (NSString)signature
{
  v2 = [(ENTextMessage *)self message];
  v3 = [v2 rangeOfString:@":" options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v2 substringFromIndex:v3 + v4];
  }

  return v5;
}

@end