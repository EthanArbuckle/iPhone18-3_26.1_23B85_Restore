@interface NEFilterFlow
- (NEFilterFlow)init;
- (NEFilterFlow)initWithCoder:(id)coder;
- (NEFilterFlow)initWithURL:(id)l sourceAppIdentifier:(id)identifier;
- (NSString)identifierString;
- (NSUUID)identifier;
- (_BYTE)shouldCloseWithVerdict:(_BYTE *)verdict;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)updateCurrentVerdictFromDataVerdict:(unint64_t)verdict direction:;
- (void)encodeWithCoder:(id)coder;
- (void)updateSourceAppInfoWithQueue:(void *)queue completionHandler:;
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

- (NEFilterFlow)initWithURL:(id)l sourceAppIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v9 = [(NEFilterFlow *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_URL, l);
    objc_storeStrong(&v10->_sourceAppIdentifier, identifier);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  sourceAppIdentifier = [(NEFilterFlow *)self sourceAppIdentifier];
  v14 = *(v6 + 48);
  *(v6 + 48) = sourceAppIdentifier;

  sourceAppVersion = [(NEFilterFlow *)self sourceAppVersion];
  v16 = *(v6 + 56);
  *(v6 + 56) = sourceAppVersion;

  sourceAppUniqueIdentifier = [(NEFilterFlow *)self sourceAppUniqueIdentifier];
  v18 = *(v6 + 40);
  *(v6 + 40) = sourceAppUniqueIdentifier;

  [v6 setPid:{-[NEFilterFlow pid](self, "pid")}];
  [v6 setEpid:{-[NEFilterFlow epid](self, "epid")}];
  [v6 setInBytes:{-[NEFilterFlow inBytes](self, "inBytes")}];
  [v6 setOutBytes:{-[NEFilterFlow outBytes](self, "outBytes")}];
  crypto_signature = [(NEFilterFlow *)self crypto_signature];
  [v6 setCrypto_signature:crypto_signature];

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
  sourceAppAuditToken = [(NEFilterFlow *)self sourceAppAuditToken];
  [v6 setSourceAppAuditToken:sourceAppAuditToken];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeObject:objc_getProperty(self forKey:{v4, 112, 1), @"currentVerdict"}];
    isRemediationFlow = self->_isRemediationFlow;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"currentVerdict"];
    isRemediationFlow = 0;
  }

  [coderCopy encodeBool:isRemediationFlow forKey:@"isRemediationFlow"];
  v6 = [(NEFilterFlow *)self URL];
  [coderCopy encodeObject:v6 forKey:@"URL"];

  if (self)
  {
    Property = objc_getProperty(self, v7, 128, 1);
  }

  else
  {
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"flowUUID"];
  sourceAppIdentifier = [(NEFilterFlow *)self sourceAppIdentifier];
  [coderCopy encodeObject:sourceAppIdentifier forKey:@"sourceAppIdentifier"];

  sourceAppVersion = [(NEFilterFlow *)self sourceAppVersion];
  [coderCopy encodeObject:sourceAppVersion forKey:@"SourceAppVersion"];

  sourceAppUniqueIdentifier = [(NEFilterFlow *)self sourceAppUniqueIdentifier];
  [coderCopy encodeObject:sourceAppUniqueIdentifier forKey:@"sourceAppUniqueIdentifier"];

  [coderCopy encodeInt:-[NEFilterFlow pid](self forKey:{"pid"), @"PID"}];
  [coderCopy encodeInt:-[NEFilterFlow epid](self forKey:{"epid"), @"EPID"}];
  [coderCopy encodeInt64:-[NEFilterFlow inBytes](self forKey:{"inBytes"), @"inBytes"}];
  [coderCopy encodeInt64:-[NEFilterFlow outBytes](self forKey:{"outBytes"), @"OutBytes"}];
  crypto_signature = [(NEFilterFlow *)self crypto_signature];
  [coderCopy encodeObject:crypto_signature forKey:@"cryptoSignature"];

  if (self)
  {
    sourceAppIdentifierFromApp = self->_sourceAppIdentifierFromApp;
  }

  else
  {
    sourceAppIdentifierFromApp = 0;
  }

  [coderCopy encodeBool:sourceAppIdentifierFromApp forKey:@"sourceAppSigningIdentifierFromApp"];
  [coderCopy encodeInteger:-[NEFilterFlow direction](self forKey:{"direction"), @"direction"}];
  sourceAppAuditToken = [(NEFilterFlow *)self sourceAppAuditToken];
  [coderCopy encodeObject:sourceAppAuditToken forKey:@"sourceAppAuditToken"];
}

- (NEFilterFlow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEFilterFlow;
  v5 = [(NEFilterFlow *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentVerdict"];
    currentVerdict = v5->_currentVerdict;
    v5->_currentVerdict = v6;

    v5->_isRemediationFlow = [coderCopy decodeBoolForKey:@"isRemediationFlow"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowUUID"];
    flowUUID = v5->_flowUUID;
    v5->_flowUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppIdentifier"];
    sourceAppIdentifier = v5->_sourceAppIdentifier;
    v5->_sourceAppIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceAppVersion"];
    sourceAppVersion = v5->_sourceAppVersion;
    v5->_sourceAppVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppUniqueIdentifier"];
    sourceAppUniqueIdentifier = v5->_sourceAppUniqueIdentifier;
    v5->_sourceAppUniqueIdentifier = v16;

    v5->_pid = [coderCopy decodeIntForKey:@"PID"];
    v5->_epid = [coderCopy decodeIntForKey:@"EPID"];
    v5->_inBytes = [coderCopy decodeInt64ForKey:@"inBytes"];
    v5->_outBytes = [coderCopy decodeInt64ForKey:@"OutBytes"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cryptoSignature"];
    crypto_signature = v5->_crypto_signature;
    v5->_crypto_signature = v18;

    v5->_sourceAppIdentifierFromApp = [coderCopy decodeBoolForKey:@"sourceAppSigningIdentifierFromApp"];
    v5->_direction = [coderCopy decodeIntegerForKey:@"direction"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceAppAuditToken"];
    sourceAppAuditToken = v5->_sourceAppAuditToken;
    v5->_sourceAppAuditToken = v20;
  }

  return v5;
}

- (uint64_t)updateCurrentVerdictFromDataVerdict:(unint64_t)verdict direction:
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = 0;
  if (!self || !v5)
  {
    goto LABEL_28;
  }

  if (![v5 drop])
  {
    passBytes = [v6 passBytes];
    v14 = verdict & 0xFFFFFFFFFFFFFFFDLL;
    if (passBytes == -1)
    {
      if (!v14)
      {
        [objc_getProperty(self v13];
        [objc_getProperty(self v23];
      }

      if (verdict > 1)
      {
        goto LABEL_27;
      }

      [objc_getProperty(self v13];
      Property = objc_getProperty(self, v24, 112, 1);
      v26 = 0;
    }

    else
    {
      if (!v14)
      {
        v15 = [objc_getProperty(self v13];
        passBytes2 = [v6 passBytes];
        v17 = v15 + passBytes2;
        if (__CFADD__(v15, passBytes2) || (v18 = [v6 peekBytes], v20 = v17 + v18, __CFADD__(v17, v18)))
        {
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v42 = 138412546;
            v43 = v6;
            v44 = 2112;
            v45 = objc_getProperty(self, v22, 112, 1);
            _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Inbound data verdict %@ causes overflow in current verdict %@", &v42, 0x16u);
          }
        }

        else
        {
          [objc_getProperty(self v19];
          [objc_getProperty(self v27];
        }
      }

      if (verdict > 1)
      {
        goto LABEL_27;
      }

      v28 = [objc_getProperty(self v13];
      passBytes3 = [v6 passBytes];
      v30 = v28 + passBytes3;
      if (__CFADD__(v28, passBytes3) || (v31 = [v6 peekBytes], v33 = v30 + v31, __CFADD__(v30, v31)))
      {
        v34 = ne_log_obj();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_getProperty(self, v35, 112, 1);
          v42 = 138412546;
          v43 = v6;
          v44 = 2112;
          v45 = v41;
          _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "Outbound data verdict %@ causes overflow in current verdict %@", &v42, 0x16u);
        }

        goto LABEL_27;
      }

      [objc_getProperty(self v32];
      Property = objc_getProperty(self, v36, 112, 1);
      v26 = v33;
    }

    [Property setOutboundPeekOffset:v26];
LABEL_27:
    statisticsReportFrequency = [v6 statisticsReportFrequency];
    [objc_getProperty(self v38];
    v7 = [(NEFilterFlow *)self shouldCloseWithVerdict:v6];
    goto LABEL_28;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifierString = [self identifierString];
    v42 = 138412290;
    v43 = identifierString;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEFAULT, "Dropping flow %@", &v42, 0xCu);
  }

  v7 = 1;
  [objc_getProperty(self v10];
  [objc_getProperty(self v11];
LABEL_28:

  v39 = *MEMORY[0x1E69E9840];
  return v7;
}

- (_BYTE)shouldCloseWithVerdict:(_BYTE *)verdict
{
  v4 = a2;
  if (verdict)
  {
    if ([objc_getProperty(verdict v3] == -1 && objc_msgSend(objc_getProperty(verdict, v5, 112, 1), "outboundPassOffset") == -1 && !objc_msgSend(objc_getProperty(verdict, v6, 112, 1), "statisticsReportFrequency") && (verdict[12] & 1) == 0)
    {
      verdict = ([v4 shouldReport] ^ 1);
    }

    else
    {
      verdict = 0;
    }
  }

  return verdict;
}

- (void)updateSourceAppInfoWithQueue:(void *)queue completionHandler:
{
  v5 = a2;
  queueCopy = queue;
  v7 = +[NEAppInfoCache sharedAppInfoCache];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    euuid = [selfCopy euuid];
    uuid = [selfCopy uuid];
    if (uuid)
    {
      v11 = uuid;
      euuid2 = [selfCopy euuid];
      if (euuid2)
      {
        v13 = euuid2;
        uuid2 = [selfCopy uuid];
        v15 = NEGetNullUUID();
        if ([uuid2 isEqual:v15])
        {
        }

        else
        {
          v28 = uuid2;
          euuid3 = [selfCopy euuid];
          v17 = NEGetNullUUID();
          v29 = euuid3;
          v18 = euuid3;
          v19 = v17;
          if (([v18 isEqual:v17] & 1) == 0)
          {
            uuid3 = [selfCopy uuid];
            euuid4 = [selfCopy euuid];
            v26 = [uuid3 isEqual:euuid4];

            if ((v26 & 1) == 0)
            {
              v24 = [selfCopy pid];
              if (v24 == [selfCopy epid])
              {
                [selfCopy setEpid:0];
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

  euuid = 0;
LABEL_12:
  epid = [self epid];
  sourceAppIdentifier = [self sourceAppIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __63__NEFilterFlow_updateSourceAppInfoWithQueue_completionHandler___block_invoke;
  v30[3] = &unk_1E7F07718;
  v22 = v5;
  v31 = v22;
  selfCopy2 = self;
  v23 = queueCopy;
  v33 = v23;
  [(NEAppInfoCache *)v7 appInfoForPid:epid UUID:euuid bundleID:sourceAppIdentifier completionHandler:v30];
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