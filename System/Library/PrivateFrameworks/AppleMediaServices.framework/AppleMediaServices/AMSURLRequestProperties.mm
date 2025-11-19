@interface AMSURLRequestProperties
- (AMSURLRequestProperties)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (v8 == self)
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

  v9 = v8;
  v10 = [(AMSURLRequestProperties *)self account];
  if (v10 || ([(AMSURLRequestProperties *)v9 account], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(AMSURLRequestProperties *)self account];
    v5 = [(AMSURLRequestProperties *)v9 account];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      v12 = 0;
      goto LABEL_32;
    }

    v95 = v4;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v96 = [(AMSURLRequestProperties *)self additionalMetrics];
  if (!v96)
  {
    v6 = [(AMSURLRequestProperties *)v9 additionalMetrics];
    if (!v6)
    {
      v14 = v3;
      v92 = 0;
      v94 = 0;
LABEL_21:
      v15 = [(AMSURLRequestProperties *)self anisetteType];
      if (v15 != [(AMSURLRequestProperties *)v9 anisetteType])
      {
        v12 = 0;
        v3 = v14;
        v18 = v11;
        v19 = v93;
        v20 = v96;
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
          v20 = v96;
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

      v87 = [(AMSURLRequestProperties *)self clientInfo];
      if (v87 || ([(AMSURLRequestProperties *)v9 bag], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = [(AMSURLRequestProperties *)self clientInfo];
        v4 = [(AMSURLRequestProperties *)v9 bag];
        v19 = v93;
        if (([v22 isEqual:v4] & 1) == 0)
        {

          v24 = v87;
          if (!v87)
          {
            v24 = v83;
          }

          v12 = 0;
          v20 = v96;
          if (v86)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        }

        v82 = v22;
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

      v25 = [(AMSURLRequestProperties *)self dialogOptions];
      if (v25 != [(AMSURLRequestProperties *)v9 dialogOptions]|| (v26 = [(AMSURLRequestProperties *)self disableBiometricsResponseHandling], v26 != [(AMSURLRequestProperties *)v9 disableBiometricsResponseHandling]) || (v27 = [(AMSURLRequestProperties *)self disableLoadURLMetrics], v27 != [(AMSURLRequestProperties *)v9 disableLoadURLMetrics]) || (v28 = [(AMSURLRequestProperties *)self disableResponseDecoding], v28 != [(AMSURLRequestProperties *)v9 disableResponseDecoding]) || (v29 = [(AMSURLRequestProperties *)self excludeIdentifierHeadersForAccount], v29 != [(AMSURLRequestProperties *)v9 excludeIdentifierHeadersForAccount]))
      {
        v12 = 0;
        v3 = v84;
        v30 = v23;
        v20 = v96;
        if ((v30 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      v81 = [(AMSURLRequestProperties *)self gsTokenIdentifier];
      v80 = v23;
      if (v81 || ([(AMSURLRequestProperties *)v9 gsTokenIdentifier], (v74 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v33 = [(AMSURLRequestProperties *)self gsTokenIdentifier];
        v78 = [(AMSURLRequestProperties *)v9 gsTokenIdentifier];
        v79 = v33;
        if (![v33 isEqual:v78])
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

      v77 = [(AMSURLRequestProperties *)self keychainOptions];
      if (!v77)
      {
        v72 = [(AMSURLRequestProperties *)v9 keychainOptions];
        if (!v72)
        {
          v72 = 0;
          v73 = 0;
LABEL_80:
          v38 = [(AMSURLRequestProperties *)self knownToBeTrusted];
          if (v38 != [(AMSURLRequestProperties *)v9 knownToBeTrusted])
          {
            v12 = 0;
            v3 = v84;
            goto LABEL_92;
          }

          v39 = [(AMSURLRequestProperties *)self logUUID];
          if (v39 || ([(AMSURLRequestProperties *)v9 logUUID], (v68 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v40 = [(AMSURLRequestProperties *)self logUUID];
            [(AMSURLRequestProperties *)v9 logUUID];
            v19 = v70 = v40;
            if (([v40 isEqual:?] & 1) == 0)
            {

              if (v39)
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

          v43 = [(AMSURLRequestProperties *)self maxRetryCount];
          if (v43 != [(AMSURLRequestProperties *)v9 maxRetryCount]|| (v44 = [(AMSURLRequestProperties *)self mescalType], v44 != [(AMSURLRequestProperties *)v9 mescalType]))
          {
            v12 = 0;
            goto LABEL_110;
          }

          v67 = [(AMSURLRequestProperties *)self purchaseInfo];
          if (v67 || ([(AMSURLRequestProperties *)v9 purchaseInfo], (v63 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v45 = [(AMSURLRequestProperties *)self purchaseInfo];
            v65 = [(AMSURLRequestProperties *)v9 purchaseInfo];
            v66 = v45;
            if (([v45 isEqual:v65] & 1) == 0)
            {

              v12 = 0;
LABEL_130:
              if (v67)
              {
                v51 = v67;
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

          v46 = [(AMSURLRequestProperties *)self remoteSecuritySigningEnabled];
          if (v46 != [(AMSURLRequestProperties *)v9 remoteSecuritySigningEnabled])
          {
            v12 = 0;
            goto LABEL_120;
          }

          v47 = [(AMSURLRequestProperties *)self responseDecoder];
          v61 = [(AMSURLRequestProperties *)v9 responseDecoder];
          v62 = v47;
          if (v47 != v61 || (v48 = [(AMSURLRequestProperties *)self reversePushType], v48 != [(AMSURLRequestProperties *)v9 reversePushType]) || (v49 = [(AMSURLRequestProperties *)self shouldSetCookiesFromResponse], v49 != [(AMSURLRequestProperties *)v9 shouldSetCookiesFromResponse]) || (v50 = [(AMSURLRequestProperties *)self shouldSetStorefrontFromResponse], v50 != [(AMSURLRequestProperties *)v9 shouldSetStorefrontFromResponse]))
          {

            v12 = 0;
            if (v64)
            {
LABEL_121:

              if (!v67)
              {
              }

              if (!v69)
              {
LABEL_112:
                if (!v39)
                {
                }

                v3 = v84;
                v19 = v93;
                if (!v73)
                {
LABEL_94:
                  v20 = v96;
                  v41 = v77;
                  if (!v77)
                  {

                    v41 = 0;
                  }

                  if (!v76)
                  {
LABEL_98:
                    v42 = v81;
                    if (!v81)
                    {

                      v42 = 0;
                    }

                    if (!v80)
                    {
LABEL_54:
                      v31 = v87;
                      if (!v87)
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

          v60 = [(AMSURLRequestProperties *)self userInfo];
          if (v60 || ([(AMSURLRequestProperties *)v9 userInfo], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v52 = [(AMSURLRequestProperties *)self userInfo];
            v58 = [(AMSURLRequestProperties *)v9 userInfo];
            v59 = v52;
            if (![v52 isEqual:v58])
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

          v53 = [(AMSURLRequestProperties *)self paymentSheetTaskClass];
          v12 = v53 == [(AMSURLRequestProperties *)v9 paymentSheetTaskClass];
          if (!v57)
          {
LABEL_142:
            if (v60)
            {
              v54 = v60;
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

      v34 = [(AMSURLRequestProperties *)self keychainOptions];
      v35 = [(AMSURLRequestProperties *)v9 keychainOptions];
      v75 = v34;
      v36 = v34;
      v37 = v35;
      if ([v36 isEqual:v35])
      {
        v71 = v37;
        v73 = 1;
        goto LABEL_80;
      }

      if (!v77)
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
        v20 = v96;
        goto LABEL_97;
      }

      v12 = 0;
      if ((v76 & 1) == 0)
      {
        v3 = v84;
LABEL_89:
        v20 = v96;
        goto LABEL_98;
      }

LABEL_67:
      v3 = v84;
      goto LABEL_68;
    }
  }

  v13 = [(AMSURLRequestProperties *)self additionalMetrics];
  v4 = [(AMSURLRequestProperties *)v9 additionalMetrics];
  if ([v13 isEqual:v4])
  {
    v91 = v4;
    v92 = v6;
    v93 = v13;
    v14 = v3;
    v94 = 1;
    goto LABEL_21;
  }

  if (v96)
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
  if (!v10)
  {
  }

LABEL_35:
  return v12;
}

- (unint64_t)hash
{
  v50 = [(AMSURLRequestProperties *)self account];
  v3 = [v50 hash];
  v49 = [(AMSURLRequestProperties *)self additionalMetrics];
  v4 = [v49 hash] ^ v3;
  v48 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties anisetteType](self, "anisetteType")}];
  v5 = [v48 hash];
  v47 = [(AMSURLRequestProperties *)self bag];
  v6 = v4 ^ [v47 hash];
  v46 = [(AMSURLRequestProperties *)self clientInfo];
  v7 = v6 ^ [v46 hash] ^ v5;
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
  v40 = [(AMSURLRequestProperties *)self gsTokenIdentifier];
  v13 = [v40 hash];
  v39 = [(AMSURLRequestProperties *)self keychainOptions];
  v14 = v13 ^ [v39 hash];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties knownToBeTrusted](self, "knownToBeTrusted")}];
  v15 = v14 ^ [v38 hash];
  v37 = [(AMSURLRequestProperties *)self logUUID];
  v16 = v15 ^ [v37 hash];
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties maxRetryCount](self, "maxRetryCount")}];
  v17 = v12 ^ v16 ^ [v36 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties mescalType](self, "mescalType")}];
  v19 = [v18 hash];
  v20 = [(AMSURLRequestProperties *)self purchaseInfo];
  v21 = v19 ^ [v20 hash];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties remoteSecuritySigningEnabled](self, "remoteSecuritySigningEnabled")}];
  v23 = v21 ^ [v22 hash];
  v24 = [(AMSURLRequestProperties *)self responseDecoder];
  v25 = v23 ^ v24;
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSURLRequestProperties reversePushType](self, "reversePushType")}];
  v35 = v17 ^ v25 ^ [v26 hash];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties shouldSetCookiesFromResponse](self, "shouldSetCookiesFromResponse")}];
  v28 = [v27 hash];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSURLRequestProperties shouldSetStorefrontFromResponse](self, "shouldSetStorefrontFromResponse")}];
  v30 = v28 ^ [v29 hash];
  v31 = [(AMSURLRequestProperties *)self userInfo];
  v32 = v30 ^ [v31 hash];
  v33 = v32 ^ [(AMSURLRequestProperties *)self paymentSheetTaskClass];

  return v35 ^ v33;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AMSURLRequestProperties *)self account];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  v9 = [(AMSURLRequestProperties *)self additionalMetrics];
  v10 = [v9 copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = [(AMSURLRequestProperties *)self anisetteType];
  v12 = [(AMSURLRequestProperties *)self bag];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(AMSURLRequestProperties *)self clientInfo];
  v15 = [v14 copyWithZone:a3];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  *(v5 + 56) = [(AMSURLRequestProperties *)self dialogOptions];
  *(v5 + 8) = [(AMSURLRequestProperties *)self disableBiometricsResponseHandling];
  *(v5 + 9) = [(AMSURLRequestProperties *)self disableLoadURLMetrics];
  *(v5 + 10) = [(AMSURLRequestProperties *)self disableResponseDecoding];
  *(v5 + 11) = [(AMSURLRequestProperties *)self excludeIdentifierHeadersForAccount];
  v17 = [(AMSURLRequestProperties *)self gsTokenIdentifier];
  v18 = [v17 copyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(AMSURLRequestProperties *)self keychainOptions];
  v21 = [v20 copyWithZone:a3];
  v22 = *(v5 + 72);
  *(v5 + 72) = v21;

  *(v5 + 12) = [(AMSURLRequestProperties *)self knownToBeTrusted];
  v23 = [(AMSURLRequestProperties *)self logUUID];
  v24 = [v23 copyWithZone:a3];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  *(v5 + 88) = [(AMSURLRequestProperties *)self maxRetryCount];
  *(v5 + 96) = [(AMSURLRequestProperties *)self mescalType];
  v26 = [(AMSURLRequestProperties *)self purchaseInfo];
  v27 = *(v5 + 104);
  *(v5 + 104) = v26;

  *(v5 + 13) = [(AMSURLRequestProperties *)self remoteSecuritySigningEnabled];
  v28 = [(AMSURLRequestProperties *)self responseDecoder];
  v29 = *(v5 + 112);
  *(v5 + 112) = v28;

  *(v5 + 120) = [(AMSURLRequestProperties *)self reversePushType];
  *(v5 + 14) = [(AMSURLRequestProperties *)self shouldSetCookiesFromResponse];
  *(v5 + 15) = [(AMSURLRequestProperties *)self shouldSetStorefrontFromResponse];
  v30 = [(AMSURLRequestProperties *)self userInfo];
  v31 = [v30 copyWithZone:a3];
  v32 = *(v5 + 128);
  *(v5 + 128) = v31;

  v33 = [(AMSURLRequestProperties *)self paymentSheetTaskClass];
  v34 = *(v5 + 136);
  *(v5 + 136) = v33;

  return v5;
}

@end