@interface AMSURLRequestProperties
- (AMSURLRequestProperties)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation AMSURLRequestProperties

- (AMSURLRequestProperties)init
{
  v10.receiver = self;
  v10.super_class = AMSURLRequestProperties;
  v2 = [(AMSURLRequestProperties *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_excludeIdentifierHeadersForAccount = 0;
    v4 = AMSSetLogKey(0);
    v5 = [v4 copy];
    logUUID = v3->_logUUID;
    v3->_logUUID = v5;

    v3->_maxRetryCount = 3;
    *&v3->_remoteSecuritySigningEnabled = 256;
    v3->_shouldSetStorefrontFromResponse = 1;
    v7 = objc_alloc_init(MEMORY[0x1E695DF20]);
    userInfo = v3->_userInfo;
    v3->_userInfo = v7;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_35;
  }

  v9 = equalCopy;
  account = [(AMSURLRequestProperties *)self account];
  if (account || ([(AMSURLRequestProperties *)v9 account], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    account2 = [(AMSURLRequestProperties *)self account];
    account3 = [(AMSURLRequestProperties *)v9 account];
    if (([account2 isEqual:account3] & 1) == 0)
    {

      v12 = 0;
      goto LABEL_32;
    }

    v95 = account2;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  additionalMetrics = [(AMSURLRequestProperties *)self additionalMetrics];
  if (!additionalMetrics)
  {
    additionalMetrics2 = [(AMSURLRequestProperties *)v9 additionalMetrics];
    if (!additionalMetrics2)
    {
      v14 = v3;
      v92 = 0;
      v94 = 0;
LABEL_21:
      anisetteType = [(AMSURLRequestProperties *)self anisetteType];
      if (anisetteType != [(AMSURLRequestProperties *)v9 anisetteType])
      {
        v12 = 0;
        v3 = v14;
        v18 = v11;
        v19 = v93;
        v20 = additionalMetrics;
        if ((v94 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      [(AMSURLRequestProperties *)self bag];
      v90 = v3 = v14;
      if (v90 || ([(AMSURLRequestProperties *)v9 bag], (v85 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = [(AMSURLRequestProperties *)self bag];
        v88 = [(AMSURLRequestProperties *)v9 bag];
        v89 = v16;
        v17 = [v16 isEqual:v88];
        v18 = v11;
        if (!v17)
        {
          v12 = 0;
          v19 = v93;
          v20 = additionalMetrics;
LABEL_57:

          goto LABEL_58;
        }

        v86 = 1;
      }

      else
      {
        v85 = 0;
        v86 = 0;
        v18 = v11;
      }

      clientInfo = [(AMSURLRequestProperties *)self clientInfo];
      if (clientInfo || ([(AMSURLRequestProperties *)v9 bag], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        clientInfo2 = [(AMSURLRequestProperties *)self clientInfo];
        account2 = [(AMSURLRequestProperties *)v9 bag];
        v19 = v93;
        if (([clientInfo2 isEqual:account2] & 1) == 0)
        {

          v24 = clientInfo;
          if (!clientInfo)
          {
            v24 = v83;
          }

          v12 = 0;
          v20 = additionalMetrics;
          if (v86)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v82 = clientInfo2;
        v84 = v3;
        v23 = 1;
      }

      else
      {
        v83 = 0;
        v84 = v3;
        v23 = 0;
        v19 = v93;
      }

      dialogOptions = [(AMSURLRequestProperties *)self dialogOptions];
      if (dialogOptions != [(AMSURLRequestProperties *)v9 dialogOptions]|| (v26 = [(AMSURLRequestProperties *)self disableBiometricsResponseHandling], v26 != [(AMSURLRequestProperties *)v9 disableBiometricsResponseHandling]) || (v27 = [(AMSURLRequestProperties *)self disableLoadURLMetrics], v27 != [(AMSURLRequestProperties *)v9 disableLoadURLMetrics]) || (v28 = [(AMSURLRequestProperties *)self disableResponseDecoding], v28 != [(AMSURLRequestProperties *)v9 disableResponseDecoding]) || (v29 = [(AMSURLRequestProperties *)self excludeIdentifierHeadersForAccount], v29 != [(AMSURLRequestProperties *)v9 excludeIdentifierHeadersForAccount]))
      {
        v12 = 0;
        v3 = v84;
        v30 = v23;
        v20 = additionalMetrics;
        if ((v30 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      gsTokenIdentifier = [(AMSURLRequestProperties *)self gsTokenIdentifier];
      v80 = v23;
      if (gsTokenIdentifier || ([(AMSURLRequestProperties *)v9 gsTokenIdentifier], (v74 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        gsTokenIdentifier2 = [(AMSURLRequestProperties *)self gsTokenIdentifier];
        gsTokenIdentifier3 = [(AMSURLRequestProperties *)v9 gsTokenIdentifier];
        v79 = gsTokenIdentifier2;
        if (![gsTokenIdentifier2 isEqual:gsTokenIdentifier3])
        {
          v12 = 0;
          goto LABEL_67;
        }

        v76 = 1;
      }

      else
      {
        v74 = 0;
        v76 = 0;
      }

      keychainOptions = [(AMSURLRequestProperties *)self keychainOptions];
      if (!keychainOptions)
      {
        keychainOptions2 = [(AMSURLRequestProperties *)v9 keychainOptions];
        if (!keychainOptions2)
        {
          keychainOptions2 = 0;
          v73 = 0;
LABEL_80:
          knownToBeTrusted = [(AMSURLRequestProperties *)self knownToBeTrusted];
          if (knownToBeTrusted != [(AMSURLRequestProperties *)v9 knownToBeTrusted])
          {
            v12 = 0;
            v3 = v84;
            goto LABEL_92;
          }

          logUUID = [(AMSURLRequestProperties *)self logUUID];
          if (logUUID || ([(AMSURLRequestProperties *)v9 logUUID], (v68 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            logUUID2 = [(AMSURLRequestProperties *)self logUUID];
            [(AMSURLRequestProperties *)v9 logUUID];
            v19 = v70 = logUUID2;
            if (([logUUID2 isEqual:?] & 1) == 0)
            {

              if (logUUID)
              {
              }

              else
              {
              }

              v12 = 0;
              v3 = v84;
              v19 = v93;
LABEL_92:
              if ((v73 & 1) == 0)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }

            v69 = 1;
          }

          else
          {
            v68 = 0;
            v69 = 0;
          }

          maxRetryCount = [(AMSURLRequestProperties *)self maxRetryCount];
          if (maxRetryCount != [(AMSURLRequestProperties *)v9 maxRetryCount]|| (v44 = [(AMSURLRequestProperties *)self mescalType], v44 != [(AMSURLRequestProperties *)v9 mescalType]))
          {
            v12 = 0;
            goto LABEL_110;
          }

          purchaseInfo = [(AMSURLRequestProperties *)self purchaseInfo];
          if (purchaseInfo || ([(AMSURLRequestProperties *)v9 purchaseInfo], (v63 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            purchaseInfo2 = [(AMSURLRequestProperties *)self purchaseInfo];
            purchaseInfo3 = [(AMSURLRequestProperties *)v9 purchaseInfo];
            v66 = purchaseInfo2;
            if (([purchaseInfo2 isEqual:purchaseInfo3] & 1) == 0)
            {

              v12 = 0;
LABEL_130:
              if (purchaseInfo)
              {
                v51 = purchaseInfo;
              }

              else
              {
                v51 = v63;
              }

LABEL_110:
              if ((v69 & 1) == 0)
              {
                goto LABEL_112;
              }

              goto LABEL_111;
            }

            v64 = 1;
          }

          else
          {
            v63 = 0;
            v64 = 0;
          }

          remoteSecuritySigningEnabled = [(AMSURLRequestProperties *)self remoteSecuritySigningEnabled];
          if (remoteSecuritySigningEnabled != [(AMSURLRequestProperties *)v9 remoteSecuritySigningEnabled])
          {
            v12 = 0;
            goto LABEL_120;
          }

          responseDecoder = [(AMSURLRequestProperties *)self responseDecoder];
          responseDecoder2 = [(AMSURLRequestProperties *)v9 responseDecoder];
          v62 = responseDecoder;
          if (responseDecoder != responseDecoder2 || (v48 = [(AMSURLRequestProperties *)self reversePushType], v48 != [(AMSURLRequestProperties *)v9 reversePushType]) || (v49 = [(AMSURLRequestProperties *)self shouldSetCookiesFromResponse], v49 != [(AMSURLRequestProperties *)v9 shouldSetCookiesFromResponse]) || (v50 = [(AMSURLRequestProperties *)self shouldSetStorefrontFromResponse], v50 != [(AMSURLRequestProperties *)v9 shouldSetStorefrontFromResponse]))
          {

            v12 = 0;
            if (v64)
            {
LABEL_121:

              if (!purchaseInfo)
              {
              }

              if (!v69)
              {
LABEL_112:
                if (!logUUID)
                {
                }

                v3 = v84;
                v19 = v93;
                if (!v73)
                {
LABEL_94:
                  v20 = additionalMetrics;
                  v41 = keychainOptions;
                  if (!keychainOptions)
                  {

                    v41 = 0;
                  }

                  if (!v76)
                  {
LABEL_98:
                    v42 = gsTokenIdentifier;
                    if (!gsTokenIdentifier)
                    {

                      v42 = 0;
                    }

                    if (!v80)
                    {
LABEL_54:
                      v31 = clientInfo;
                      if (!clientInfo)
                      {

                        v31 = 0;
                      }

                      if (v86)
                      {
                        goto LABEL_57;
                      }

LABEL_58:
                      v32 = v90;
                      if (!v90)
                      {

                        v32 = 0;
                      }

                      if (!v94)
                      {
LABEL_28:
                        if (!v20)
                        {
                        }

                        if (!v18)
                        {
                          goto LABEL_32;
                        }

                        goto LABEL_31;
                      }

LABEL_27:

                      goto LABEL_28;
                    }

LABEL_53:

                    goto LABEL_54;
                  }

LABEL_97:

                  goto LABEL_98;
                }

LABEL_93:

                goto LABEL_94;
              }

LABEL_111:

              goto LABEL_112;
            }

            goto LABEL_130;
          }

          userInfo = [(AMSURLRequestProperties *)self userInfo];
          if (userInfo || ([(AMSURLRequestProperties *)v9 userInfo], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            userInfo2 = [(AMSURLRequestProperties *)self userInfo];
            userInfo3 = [(AMSURLRequestProperties *)v9 userInfo];
            v59 = userInfo2;
            if (![userInfo2 isEqual:userInfo3])
            {
              v12 = 0;
              goto LABEL_141;
            }

            v57 = 1;
          }

          else
          {
            v56 = 0;
            v57 = 0;
          }

          paymentSheetTaskClass = [(AMSURLRequestProperties *)self paymentSheetTaskClass];
          v12 = paymentSheetTaskClass == [(AMSURLRequestProperties *)v9 paymentSheetTaskClass];
          if (!v57)
          {
LABEL_142:
            if (userInfo)
            {
              v54 = userInfo;
            }

            else
            {
              v54 = v56;
            }

LABEL_120:
            if (v64)
            {
              goto LABEL_121;
            }

            goto LABEL_130;
          }

LABEL_141:

          goto LABEL_142;
        }
      }

      keychainOptions3 = [(AMSURLRequestProperties *)self keychainOptions];
      keychainOptions4 = [(AMSURLRequestProperties *)v9 keychainOptions];
      v75 = keychainOptions3;
      v36 = keychainOptions3;
      v37 = keychainOptions4;
      if ([v36 isEqual:keychainOptions4])
      {
        v71 = v37;
        v73 = 1;
        goto LABEL_80;
      }

      if (!keychainOptions)
      {

        v12 = 0;
        if ((v76 & 1) == 0)
        {
          v3 = v84;
          v19 = v93;
          goto LABEL_89;
        }

        v3 = v84;
        v19 = v93;
LABEL_68:
        v20 = additionalMetrics;
        goto LABEL_97;
      }

      v12 = 0;
      if ((v76 & 1) == 0)
      {
        v3 = v84;
LABEL_89:
        v20 = additionalMetrics;
        goto LABEL_98;
      }

LABEL_67:
      v3 = v84;
      goto LABEL_68;
    }
  }

  additionalMetrics3 = [(AMSURLRequestProperties *)self additionalMetrics];
  account2 = [(AMSURLRequestProperties *)v9 additionalMetrics];
  if ([additionalMetrics3 isEqual:account2])
  {
    v91 = account2;
    v92 = additionalMetrics2;
    v93 = additionalMetrics3;
    v14 = v3;
    v94 = 1;
    goto LABEL_21;
  }

  if (additionalMetrics)
  {
  }

  else
  {
  }

  v12 = 0;
  if (v11)
  {
LABEL_31:
  }

LABEL_32:
  if (!account)
  {
  }

LABEL_35:
  return v12;
}

- (unint64_t)hash
{
  account = [(AMSURLRequestProperties *)self account];
  v3 = [account hash];
  additionalMetrics = [(AMSURLRequestProperties *)self additionalMetrics];
  v4 = [additionalMetrics hash] ^ v3;
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties anisetteType](self, "anisetteType")}];
  v5 = [v48 hash];
  v47 = [(AMSURLRequestProperties *)self bag];
  v6 = v4 ^ [v47 hash];
  clientInfo = [(AMSURLRequestProperties *)self clientInfo];
  v7 = v6 ^ [clientInfo hash] ^ v5;
  v45 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties dialogOptions](self, "dialogOptions")}];
  v8 = [v45 hash];
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties disableBiometricsResponseHandling](self, "disableBiometricsResponseHandling")}];
  v9 = v7 ^ v8 ^ [v44 hash];
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties disableLoadURLMetrics](self, "disableLoadURLMetrics")}];
  v10 = [v43 hash];
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties disableResponseDecoding](self, "disableResponseDecoding")}];
  v11 = v10 ^ [v42 hash];
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties excludeIdentifierHeadersForAccount](self, "excludeIdentifierHeadersForAccount")}];
  v12 = v9 ^ v11 ^ [v41 hash];
  gsTokenIdentifier = [(AMSURLRequestProperties *)self gsTokenIdentifier];
  v13 = [gsTokenIdentifier hash];
  keychainOptions = [(AMSURLRequestProperties *)self keychainOptions];
  v14 = v13 ^ [keychainOptions hash];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties knownToBeTrusted](self, "knownToBeTrusted")}];
  v15 = v14 ^ [v38 hash];
  logUUID = [(AMSURLRequestProperties *)self logUUID];
  v16 = v15 ^ [logUUID hash];
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties maxRetryCount](self, "maxRetryCount")}];
  v17 = v12 ^ v16 ^ [v36 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties mescalType](self, "mescalType")}];
  v19 = [v18 hash];
  purchaseInfo = [(AMSURLRequestProperties *)self purchaseInfo];
  v21 = v19 ^ [purchaseInfo hash];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties remoteSecuritySigningEnabled](self, "remoteSecuritySigningEnabled")}];
  v23 = v21 ^ [v22 hash];
  responseDecoder = [(AMSURLRequestProperties *)self responseDecoder];
  v25 = v23 ^ responseDecoder;
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties reversePushType](self, "reversePushType")}];
  v35 = v17 ^ v25 ^ [v26 hash];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties shouldSetCookiesFromResponse](self, "shouldSetCookiesFromResponse")}];
  v28 = [v27 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties shouldSetStorefrontFromResponse](self, "shouldSetStorefrontFromResponse")}];
  v30 = v28 ^ [v29 hash];
  userInfo = [(AMSURLRequestProperties *)self userInfo];
  v32 = v30 ^ [userInfo hash];
  v33 = v32 ^ [(AMSURLRequestProperties *)self paymentSheetTaskClass];

  return v35 ^ v33;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  account = [(AMSURLRequestProperties *)self account];
  v7 = [account copyWithZone:zone];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  additionalMetrics = [(AMSURLRequestProperties *)self additionalMetrics];
  v10 = [additionalMetrics copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = [(AMSURLRequestProperties *)self anisetteType];
  v12 = [(AMSURLRequestProperties *)self bag];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  clientInfo = [(AMSURLRequestProperties *)self clientInfo];
  v15 = [clientInfo copyWithZone:zone];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  *(v5 + 56) = [(AMSURLRequestProperties *)self dialogOptions];
  *(v5 + 8) = [(AMSURLRequestProperties *)self disableBiometricsResponseHandling];
  *(v5 + 9) = [(AMSURLRequestProperties *)self disableLoadURLMetrics];
  *(v5 + 10) = [(AMSURLRequestProperties *)self disableResponseDecoding];
  *(v5 + 11) = [(AMSURLRequestProperties *)self excludeIdentifierHeadersForAccount];
  gsTokenIdentifier = [(AMSURLRequestProperties *)self gsTokenIdentifier];
  v18 = [gsTokenIdentifier copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  keychainOptions = [(AMSURLRequestProperties *)self keychainOptions];
  v21 = [keychainOptions copyWithZone:zone];
  v22 = *(v5 + 72);
  *(v5 + 72) = v21;

  *(v5 + 12) = [(AMSURLRequestProperties *)self knownToBeTrusted];
  logUUID = [(AMSURLRequestProperties *)self logUUID];
  v24 = [logUUID copyWithZone:zone];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  *(v5 + 88) = [(AMSURLRequestProperties *)self maxRetryCount];
  *(v5 + 96) = [(AMSURLRequestProperties *)self mescalType];
  purchaseInfo = [(AMSURLRequestProperties *)self purchaseInfo];
  v27 = *(v5 + 104);
  *(v5 + 104) = purchaseInfo;

  *(v5 + 13) = [(AMSURLRequestProperties *)self remoteSecuritySigningEnabled];
  responseDecoder = [(AMSURLRequestProperties *)self responseDecoder];
  v29 = *(v5 + 112);
  *(v5 + 112) = responseDecoder;

  *(v5 + 120) = [(AMSURLRequestProperties *)self reversePushType];
  *(v5 + 14) = [(AMSURLRequestProperties *)self shouldSetCookiesFromResponse];
  *(v5 + 15) = [(AMSURLRequestProperties *)self shouldSetStorefrontFromResponse];
  userInfo = [(AMSURLRequestProperties *)self userInfo];
  v31 = [userInfo copyWithZone:zone];
  v32 = *(v5 + 128);
  *(v5 + 128) = v31;

  paymentSheetTaskClass = [(AMSURLRequestProperties *)self paymentSheetTaskClass];
  v34 = *(v5 + 136);
  *(v5 + 136) = paymentSheetTaskClass;

  return v5;
}

@end