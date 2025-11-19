@interface NEFilterFlow
- (NEFilterFlow)init;
- (NEFilterFlow)initWithCoder:(id)a3;
- (NEFilterFlow)initWithURL:(id)a3 sourceAppIdentifier:(id)a4;
- (NSString)identifierString;
- (NSUUID)identifier;
- (_BYTE)shouldCloseWithVerdict:(_BYTE *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)updateCurrentVerdictFromDataVerdict:(unint64_t)a3 direction:;
- (void)encodeWithCoder:(id)a3;
- (void)updateSourceAppInfoWithQueue:(void *)a3 completionHandler:;
@end

@implementation NEFilterFlow

- (NSString)identifierString
{
  if (self)
  {
    self = objc_getProperty(self, a2, 128, 1);
    v2 = vars8;
  }

  return [(NEFilterFlow *)self description];
}

- (NSUUID)identifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 128, 1);
    v2 = vars8;
  }

  return self;
}

- (NEFilterFlow)initWithURL:(id)a3 sourceAppIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(NEFilterFlow *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, a3);
    objc_storeStrong(&v10->_sourceAppIdentifier, a4);
  }

  return v10;
}

- (NEFilterFlow)init
{
  v3.receiver = self;
  v3.super_class = NEFilterFlow;
  result = [(NEFilterFlow *)&v3 init];
  if (result)
  {
    result->_isRemediationFlow = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v4;
  if (self)
  {
    Property = objc_getProperty(self, v5, 112, 1);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Property = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_atomic(v6, v5, Property, 112);
  }

LABEL_4:
  if (self)
  {
    isRemediationFlow = self->_isRemediationFlow;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  isRemediationFlow = 0;
  if (v6)
  {
LABEL_6:
    *(v6 + 10) = isRemediationFlow;
  }

LABEL_7:
  v9 = [(NEFilterFlow *)self URL];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  if (self)
  {
    v12 = objc_getProperty(self, v11, 128, 1);
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong((v6 + 128), v12);
  v13 = [(NEFilterFlow *)self sourceAppIdentifier];
  v14 = *(v6 + 48);
  *(v6 + 48) = v13;

  v15 = [(NEFilterFlow *)self sourceAppVersion];
  v16 = *(v6 + 56);
  *(v6 + 56) = v15;

  v17 = [(NEFilterFlow *)self sourceAppUniqueIdentifier];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  [v6 setPid:{-[NEFilterFlow pid](self, "pid")}];
  [v6 setEpid:{-[NEFilterFlow epid](self, "epid")}];
  [v6 setInBytes:{-[NEFilterFlow inBytes](self, "inBytes")}];
  [v6 setOutBytes:{-[NEFilterFlow outBytes](self, "outBytes")}];
  v19 = [(NEFilterFlow *)self crypto_signature];
  [v6 setCrypto_signature:v19];

  if (self)
  {
    sourceAppIdentifierFromApp = self->_sourceAppIdentifierFromApp;
  }

  else
  {
    sourceAppIdentifierFromApp = 0;
  }

  *(v6 + 13) = sourceAppIdentifierFromApp;
  [v6 setDirection:{-[NEFilterFlow direction](self, "direction")}];
  v21 = [(NEFilterFlow *)self sourceAppAuditToken];
  [v6 setSourceAppAuditToken:v21];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  if (self)
  {
    [v15 encodeObject:objc_getProperty(self forKey:{v4, 112, 1), @"currentVerdict"}];
    isRemediationFlow = self->_isRemediationFlow;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"currentVerdict"];
    isRemediationFlow = 0;
  }

  [v15 encodeBool:isRemediationFlow forKey:@"isRemediationFlow"];
  v6 = [(NEFilterFlow *)self URL];
  [v15 encodeObject:v6 forKey:@"URL"];

  if (self)
  {
    Property = objc_getProperty(self, v7, 128, 1);
  }

  else
  {
    Property = 0;
  }

  [v15 encodeObject:Property forKey:@"flowUUID"];
  v9 = [(NEFilterFlow *)self sourceAppIdentifier];
  [v15 encodeObject:v9 forKey:@"sourceAppIdentifier"];

  v10 = [(NEFilterFlow *)self sourceAppVersion];
  [v15 encodeObject:v10 forKey:@"SourceAppVersion"];

  v11 = [(NEFilterFlow *)self sourceAppUniqueIdentifier];
  [v15 encodeObject:v11 forKey:@"sourceAppUniqueIdentifier"];

  [v15 encodeInt:-[NEFilterFlow pid](self forKey:{"pid"), @"PID"}];
  [v15 encodeInt:-[NEFilterFlow epid](self forKey:{"epid"), @"EPID"}];
  [v15 encodeInt64:-[NEFilterFlow inBytes](self forKey:{"inBytes"), @"inBytes"}];
  [v15 encodeInt64:-[NEFilterFlow outBytes](self forKey:{"outBytes"), @"OutBytes"}];
  v12 = [(NEFilterFlow *)self crypto_signature];
  [v15 encodeObject:v12 forKey:@"cryptoSignature"];

  if (self)
  {
    sourceAppIdentifierFromApp = self->_sourceAppIdentifierFromApp;
  }

  else
  {
    sourceAppIdentifierFromApp = 0;
  }

  [v15 encodeBool:sourceAppIdentifierFromApp forKey:@"sourceAppSigningIdentifierFromApp"];
  [v15 encodeInteger:-[NEFilterFlow direction](self forKey:{"direction"), @"direction"}];
  v14 = [(NEFilterFlow *)self sourceAppAuditToken];
  [v15 encodeObject:v14 forKey:@"sourceAppAuditToken"];
}

- (NEFilterFlow)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEFilterFlow;
  v5 = [(NEFilterFlow *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentVerdict"];
    currentVerdict = v5->_currentVerdict;
    v5->_currentVerdict = v6;

    v5->_isRemediationFlow = [v4 decodeBoolForKey:@"isRemediationFlow"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowUUID"];
    flowUUID = v5->_flowUUID;
    v5->_flowUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppIdentifier"];
    sourceAppIdentifier = v5->_sourceAppIdentifier;
    v5->_sourceAppIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceAppVersion"];
    sourceAppVersion = v5->_sourceAppVersion;
    v5->_sourceAppVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppUniqueIdentifier"];
    sourceAppUniqueIdentifier = v5->_sourceAppUniqueIdentifier;
    v5->_sourceAppUniqueIdentifier = v16;

    v5->_pid = [v4 decodeIntForKey:@"PID"];
    v5->_epid = [v4 decodeIntForKey:@"EPID"];
    v5->_inBytes = [v4 decodeInt64ForKey:@"inBytes"];
    v5->_outBytes = [v4 decodeInt64ForKey:@"OutBytes"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cryptoSignature"];
    crypto_signature = v5->_crypto_signature;
    v5->_crypto_signature = v18;

    v5->_sourceAppIdentifierFromApp = [v4 decodeBoolForKey:@"sourceAppSigningIdentifierFromApp"];
    v5->_direction = [v4 decodeIntegerForKey:@"direction"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppAuditToken"];
    sourceAppAuditToken = v5->_sourceAppAuditToken;
    v5->_sourceAppAuditToken = v20;
  }

  return v5;
}

- (uint64_t)updateCurrentVerdictFromDataVerdict:(unint64_t)a3 direction:
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (!a1 || !v5)
  {
    goto LABEL_28;
  }

  if (![v5 drop])
  {
    v12 = [v6 passBytes];
    v14 = a3 & 0xFFFFFFFFFFFFFFFDLL;
    if (v12 == -1)
    {
      if (!v14)
      {
        [objc_getProperty(a1 v13];
        [objc_getProperty(a1 v23];
      }

      if (a3 > 1)
      {
        goto LABEL_27;
      }

      [objc_getProperty(a1 v13];
      Property = objc_getProperty(a1, v24, 112, 1);
      v26 = 0;
    }

    else
    {
      if (!v14)
      {
        v15 = [objc_getProperty(a1 v13];
        v16 = [v6 passBytes];
        v17 = v15 + v16;
        if (__CFADD__(v15, v16) || (v18 = [v6 peekBytes], v20 = v17 + v18, __CFADD__(v17, v18)))
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v42 = 138412546;
            v43 = v6;
            v44 = 2112;
            v45 = objc_getProperty(a1, v22, 112, 1);
            _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Inbound data verdict %@ causes overflow in current verdict %@", &v42, 0x16u);
          }
        }

        else
        {
          [objc_getProperty(a1 v19];
          [objc_getProperty(a1 v27];
        }
      }

      if (a3 > 1)
      {
        goto LABEL_27;
      }

      v28 = [objc_getProperty(a1 v13];
      v29 = [v6 passBytes];
      v30 = v28 + v29;
      if (__CFADD__(v28, v29) || (v31 = [v6 peekBytes], v33 = v30 + v31, __CFADD__(v30, v31)))
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_getProperty(a1, v35, 112, 1);
          v42 = 138412546;
          v43 = v6;
          v44 = 2112;
          v45 = v41;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Outbound data verdict %@ causes overflow in current verdict %@", &v42, 0x16u);
        }

        goto LABEL_27;
      }

      [objc_getProperty(a1 v32];
      Property = objc_getProperty(a1, v36, 112, 1);
      v26 = v33;
    }

    [Property setOutboundPeekOffset:v26];
LABEL_27:
    v37 = [v6 statisticsReportFrequency];
    [objc_getProperty(a1 v38];
    v7 = [(NEFilterFlow *)a1 shouldCloseWithVerdict:v6];
    goto LABEL_28;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1 identifierString];
    v42 = 138412290;
    v43 = v9;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Dropping flow %@", &v42, 0xCu);
  }

  v7 = 1;
  [objc_getProperty(a1 v10];
  [objc_getProperty(a1 v11];
LABEL_28:

  v39 = *MEMORY[0x1E69E9840];
  return v7;
}

- (_BYTE)shouldCloseWithVerdict:(_BYTE *)a1
{
  v4 = a2;
  if (a1)
  {
    if ([objc_getProperty(a1 v3] == -1 && objc_msgSend(objc_getProperty(a1, v5, 112, 1), "outboundPassOffset") == -1 && !objc_msgSend(objc_getProperty(a1, v6, 112, 1), "statisticsReportFrequency") && (a1[12] & 1) == 0)
    {
      a1 = ([v4 shouldReport] ^ 1);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)updateSourceAppInfoWithQueue:(void *)a3 completionHandler:
{
  v5 = a2;
  v6 = a3;
  v7 = +[NEAppInfoCache sharedAppInfoCache];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1;
    v9 = [v8 euuid];
    v10 = [v8 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = [v8 euuid];
      if (v12)
      {
        v13 = v12;
        v14 = [v8 uuid];
        v15 = NEGetNullUUID();
        if ([v14 isEqual:v15])
        {
        }

        else
        {
          v28 = v14;
          v16 = [v8 euuid];
          v17 = NEGetNullUUID();
          v29 = v16;
          v18 = v16;
          v19 = v17;
          if (([v18 isEqual:v17] & 1) == 0)
          {
            v27 = [v8 uuid];
            v25 = [v8 euuid];
            v26 = [v27 isEqual:v25];

            if ((v26 & 1) == 0)
            {
              v24 = [v8 pid];
              if (v24 == [v8 epid])
              {
                [v8 setEpid:0];
              }
            }

            goto LABEL_11;
          }
        }
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:
  v20 = [a1 epid];
  v21 = [a1 sourceAppIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __63__NEFilterFlow_updateSourceAppInfoWithQueue_completionHandler___block_invoke;
  v30[3] = &unk_1E7F07718;
  v22 = v5;
  v31 = v22;
  v32 = a1;
  v23 = v6;
  v33 = v23;
  [(NEAppInfoCache *)v7 appInfoForPid:v20 UUID:v9 bundleID:v21 completionHandler:v30];
}

void __63__NEFilterFlow_updateSourceAppInfoWithQueue_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NEFilterFlow_updateSourceAppInfoWithQueue_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F0AAA0;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  dispatch_async(v5, block);
}

void __63__NEFilterFlow_updateSourceAppInfoWithQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v14 = *(v2 + 24);
    v3 = [*(a1 + 40) sourceAppIdentifier];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v14 == 0;
    }

    if (v4)
    {
    }

    else if ([v14 length])
    {
      [*(a1 + 40) setSourceAppIdentifier:v14];
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 32);
      v8 = v7;
      if (v7)
      {
        v9 = [(__CFString *)v7 length];
        v10 = v8;
        if (v9)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = &stru_1F3880810;
LABEL_17:
    [*(a1 + 40) setSourceAppVersion:v10];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 40);
      v13 = v12;
      if (v12 && [v12 length])
      {
        [*(a1 + 40) setSourceAppUniqueIdentifier:v13];
      }
    }

    else
    {
      v13 = 0;
    }

    (*(*(a1 + 48) + 16))();

    return;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Could not find app info, return the original flow without filling in app info", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

@end