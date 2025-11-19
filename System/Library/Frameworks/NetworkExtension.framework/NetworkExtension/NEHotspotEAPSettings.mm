@interface NEHotspotEAPSettings
- (BOOL)setIdentity:(SecIdentityRef)identity;
- (BOOL)setTrustedServerCertificates:(NSArray *)certificates;
- (NEHotspotEAPSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEHotspotEAPSettings

- (BOOL)setIdentity:(SecIdentityRef)identity
{
  v24 = *MEMORY[0x1E69E9840];
  result = 0;
  if (identity)
  {
    v4 = *MEMORY[0x1E697B3D0];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E697B3D0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B320], 0}];
    v6 = SecItemCopyMatching(v5, &result);
    if (v6)
    {
      v7 = v6;
      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v17 = objc_opt_class();
      *buf = 138412546;
      v21 = v17;
      v22 = 1024;
      v23 = v7;
      v13 = v17;
      v14 = "%@ failed to find persistent reference for identity. status = %d";
      v15 = p_super;
      v16 = 18;
    }

    else
    {
      if (result)
      {
        p_super = &self->_identityReference->super;
        self->_identityReference = result;
        v9 = 1;
        goto LABEL_10;
      }

      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        v9 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v12 = objc_opt_class();
      *buf = 138412290;
      v21 = v12;
      v13 = v12;
      v14 = "%@ found nil persistent reference for identity";
      v15 = p_super;
      v16 = 12;
    }

    _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);

    goto LABEL_4;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = objc_opt_class();
    v18 = v21;
    _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%@ invalid input data for identity", buf, 0xCu);
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setTrustedServerCertificates:(NSArray *)certificates
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = certificates;
  v5 = v4;
  result = 0;
  if (v4 && [(NSArray *)v4 count]&& [(NSArray *)v5 count]< 0xB)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E697B320], 0}];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v5;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      v15 = *MEMORY[0x1E697B3D0];
      v30 = self;
LABEL_10:
      v16 = 0;
      while (1)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        v18 = CFGetTypeID(v17);
        if (v18 != SecCertificateGetTypeID())
        {
          break;
        }

        [v10 setObject:v17 forKeyedSubscript:v15];
        v19 = SecItemCopyMatching(v10, &result);
        if (v19)
        {
          v25 = v19;
          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            *buf = 138412546;
            v37 = v26;
            v38 = 1024;
            v39 = v25;
            v23 = v26;
            v24 = "%@ failed to find persistent reference for trusted server certificate. status = %d";
            v27 = v21;
            v28 = 18;
            goto LABEL_30;
          }

LABEL_26:

          v7 = 0;
          goto LABEL_27;
        }

        if (!result)
        {
          v21 = ne_log_obj();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          v29 = objc_opt_class();
          *buf = 138412290;
          v37 = v29;
          v23 = v29;
          v24 = "%@ found nil persistent reference for trusted server certificate";
LABEL_29:
          v27 = v21;
          v28 = 12;
LABEL_30:
          _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, v24, buf, v28);

          goto LABEL_26;
        }

        [v6 addObject:?];
        CFRelease(result);
        if (v13 == ++v16)
        {
          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v31 objects:v40 count:16];
          self = v30;
          if (v13)
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }
      }

      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        *buf = 138412290;
        v37 = v22;
        v23 = v22;
        v24 = "%@ invalid certificate data type";
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_18:

    if ([v6 count])
    {
      objc_storeStrong(&self->_trustedServerCertificateReferences, v6);
    }

    v7 = 1;
LABEL_27:
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = objc_opt_class();
      v20 = v37;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ invalid input data for trusted server certificates", buf, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(NEHotspotEAPSettings *)self supportedEAPTypes];
  [v12 encodeObject:v4 forKey:@"SupportedEAPTypes"];

  v5 = [(NEHotspotEAPSettings *)self username];
  [v12 encodeObject:v5 forKey:@"UserName"];

  v6 = [(NEHotspotEAPSettings *)self outerIdentity];
  [v12 encodeObject:v6 forKey:@"OuterIdentity"];

  [v12 encodeInt64:-[NEHotspotEAPSettings ttlsInnerAuthenticationType](self forKey:{"ttlsInnerAuthenticationType"), @"TTLSInnerAuthenticationType"}];
  v7 = [(NEHotspotEAPSettings *)self password];
  [v12 encodeObject:v7 forKey:@"UserPassword"];

  v8 = [(NEHotspotEAPSettings *)self identityReference];
  [v12 encodeObject:v8 forKey:@"IdentityReference"];

  v9 = [(NEHotspotEAPSettings *)self clientTrustChainReference];
  [v12 encodeObject:v9 forKey:@"ClientTrustChainReference"];

  v10 = [(NEHotspotEAPSettings *)self trustedServerNames];
  [v12 encodeObject:v10 forKey:@"TrustedServerNames"];

  v11 = [(NEHotspotEAPSettings *)self trustedServerCertificateReferences];
  [v12 encodeObject:v11 forKey:@"TrustedServerCertificateRefs"];

  [v12 encodeBool:-[NEHotspotEAPSettings isTLSClientCertificateRequired](self forKey:{"isTLSClientCertificateRequired"), @"TLSIsCertificateRequiredKey"}];
  [v12 encodeInt64:-[NEHotspotEAPSettings preferredTLSVersion](self forKey:{"preferredTLSVersion"), @"PreferredTLSVersion"}];
}

- (NEHotspotEAPSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEHotspotEAPSettings *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"SupportedEAPTypes"];
    supportedEAPTypes = v5->_supportedEAPTypes;
    v5->_supportedEAPTypes = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserName"];
    username = v5->_username;
    v5->_username = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OuterIdentity"];
    outerIdentity = v5->_outerIdentity;
    v5->_outerIdentity = v13;

    v5->_ttlsInnerAuthenticationType = [v4 decodeInt64ForKey:@"TTLSInnerAuthenticationType"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserPassword"];
    password = v5->_password;
    v5->_password = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"ClientTrustChainReference"];
    clientTrustChainReference = v5->_clientTrustChainReference;
    v5->_clientTrustChainReference = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"TrustedServerNames"];
    trustedServerNames = v5->_trustedServerNames;
    v5->_trustedServerNames = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"TrustedServerCertificateRefs"];
    trustedServerCertificateReferences = v5->_trustedServerCertificateReferences;
    v5->_trustedServerCertificateReferences = v32;

    v5->_tlsClientCertificateRequired = [v4 decodeBoolForKey:@"TLSIsCertificateRequiredKey"];
    v5->_preferredTLSVersion = [v4 decodeInt64ForKey:@"PreferredTLSVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEHotspotEAPSettings allocWithZone:?]];
  [(NEHotspotEAPSettings *)v4 setSupportedEAPTypes:self->_supportedEAPTypes];
  [(NEHotspotEAPSettings *)v4 setUsername:self->_username];
  [(NEHotspotEAPSettings *)v4 setOuterIdentity:self->_outerIdentity];
  [(NEHotspotEAPSettings *)v4 setTtlsInnerAuthenticationType:self->_ttlsInnerAuthenticationType];
  [(NEHotspotEAPSettings *)v4 setPassword:self->_password];
  [(NEHotspotEAPSettings *)v4 setIdentityReference:self->_identityReference];
  [(NEHotspotEAPSettings *)v4 setClientTrustChainReference:self->_clientTrustChainReference];
  [(NEHotspotEAPSettings *)v4 setTrustedServerNames:self->_trustedServerNames];
  [(NEHotspotEAPSettings *)v4 setTrustedServerCertificateReferences:self->_trustedServerCertificateReferences];
  [(NEHotspotEAPSettings *)v4 setTlsClientCertificateRequired:self->_tlsClientCertificateRequired];
  [(NEHotspotEAPSettings *)v4 setPreferredTLSVersion:self->_preferredTLSVersion];
  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(NEHotspotEAPSettings *)self supportedEAPTypes];
  [v3 appendPrettyObject:v4 withName:@"Supported EAP Types" andIndent:0 options:0];

  v5 = [(NEHotspotEAPSettings *)self username];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(NEHotspotEAPSettings *)self username];
    [v3 appendPrettyObject:v7 withName:@"Username" andIndent:0 options:0];
  }

  v8 = [(NEHotspotEAPSettings *)self password];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(NEHotspotEAPSettings *)self password];
    [v3 appendPrettyObject:v10 withName:@"Password" andIndent:0 options:3];
  }

  v11 = [(NEHotspotEAPSettings *)self outerIdentity];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(NEHotspotEAPSettings *)self outerIdentity];
    [v3 appendPrettyObject:v13 withName:@"Outer Identity" andIndent:0 options:0];
  }

  v14 = [(NEHotspotEAPSettings *)self trustedServerNames];

  if (v14)
  {
    v15 = [(NEHotspotEAPSettings *)self trustedServerNames];
    [v3 appendPrettyObject:v15 withName:@"Trusted Server Names" andIndent:0 options:0];
  }

  if ([(NEHotspotEAPSettings *)self isTLSClientCertificateRequired])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendPrettyObject:v16 withName:@"TLS Client Certificate Required" andIndent:0 options:0];
  v17 = [(NEHotspotEAPSettings *)self preferredTLSVersion];
  if (v17 > NEHotspotConfigurationEAPTLSVersion_1_2)
  {
    v18 = @"TLS 1.2";
  }

  else
  {
    v18 = off_1E7F07B18[v17];
  }

  [v3 appendPrettyObject:v18 withName:@"Preferred TLS Version" andIndent:0 options:0];

  return v3;
}

@end