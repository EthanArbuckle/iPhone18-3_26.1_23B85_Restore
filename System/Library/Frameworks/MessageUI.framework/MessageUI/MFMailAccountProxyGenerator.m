@interface MFMailAccountProxyGenerator
- (MFMailAccountProxyGenerator)initWithAllowsRestrictedAccounts:(BOOL)a3;
- (id)accountProxyContainingEmailAddress:(id)a3 includingInactive:(BOOL)a4;
- (id)accountProxyContainingEmailAddress:(id)a3 includingInactive:(BOOL)a4 originatingBundleID:(id)a5 sourceAccountManagement:(int)a6;
- (id)activeAccountProxiesOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4;
- (id)allAccountProxies;
- (id)defaultMailAccountProxyForDeliveryOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4;
@end

@implementation MFMailAccountProxyGenerator

- (MFMailAccountProxyGenerator)initWithAllowsRestrictedAccounts:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MFMailAccountProxyGenerator;
  v4 = [(MFMailAccountProxyGenerator *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_allowsRestrictedAccounts = a3;
    v6 = objc_alloc_init(_MFMailAccountProxySource);
    proxySource = v5->_proxySource;
    v5->_proxySource = v6;
  }

  return v5;
}

- (id)defaultMailAccountProxyForDeliveryOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4
{
  v4 = *&a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(_MFMailAccountProxySource *)self->_proxySource accountProxiesOriginatingBundleID:v6 sourceAccountManagement:v4];
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 _isActive] && (self->_allowsRestrictedAccounts || (objc_msgSend(v12, "_isRestricted") & 1) == 0))
        {
          if ([v12 isDefaultDeliveryAccount])
          {
            v13 = v12;
            goto LABEL_16;
          }

          if (!v8)
          {
            v8 = v12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  if (!(v13 | v8))
  {
    v14 = +[MFMailAccountProxy log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1BE819000, v14, OS_LOG_TYPE_DEFAULT, "defaultAccount, firstUnrestrictedAccount are nil", v18, 2u);
    }
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v8;
  }

  v16 = v15;

  return v15;
}

- (id)accountProxyContainingEmailAddress:(id)a3 includingInactive:(BOOL)a4
{
  v4 = [(MFMailAccountProxyGenerator *)self accountProxyContainingEmailAddress:a3 includingInactive:a4 originatingBundleID:0 sourceAccountManagement:0];

  return v4;
}

- (id)accountProxyContainingEmailAddress:(id)a3 includingInactive:(BOOL)a4 originatingBundleID:(id)a5 sourceAccountManagement:(int)a6
{
  v6 = *&a6;
  v8 = a4;
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v41 = v11;
  if (v8)
  {
    [(MFMailAccountProxyGenerator *)self allAccountProxies];
  }

  else
  {
    [(MFMailAccountProxyGenerator *)self activeAccountProxiesOriginatingBundleID:v11 sourceAccountManagement:v6];
  }
  v12 = ;
  v13 = v10;
  v14 = [v13 emailAddressValue];
  v15 = [v14 simpleAddress];
  v16 = v15;
  if (v15)
  {
    v48 = v15;
  }

  else
  {
    v48 = [v13 stringValue];
  }

  v17 = v13;
  v18 = [v17 emailAddressValue];
  v19 = [v18 displayName];
  v20 = v19;
  if (v19)
  {
    v46 = v19;
  }

  else
  {
    v46 = [v17 stringValue];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v12;
  v21 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  v40 = v17;
  if (!v21)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_40;
  }

  v22 = v21;
  v23 = 0;
  v24 = 0;
  v43 = *v54;
  do
  {
    v44 = v22;
    for (i = 0; i != v44; ++i)
    {
      if (*v54 != v43)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v53 + 1) + 8 * i);
      v26 = [v25 _emailAddressesAndAliases];
      v27 = [v26 ef_map:&__block_literal_global_19];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = v27;
      v28 = [v47 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v28)
      {
        v29 = *v50;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v50 != v29)
            {
              objc_enumerationMutation(v47);
            }

            if (![*(*(&v49 + 1) + 8 * j) caseInsensitiveCompare:v48])
            {
              v31 = [v25 fullUserName];
              v32 = v31;
              if (v46 && (!v31 || [v46 caseInsensitiveCompare:v31]))
              {
                if (v24)
                {
                  v33 = v24;
                  v34 = v24;
                  v35 = v23;
                  v24 = v25;
                  if (![v25 isDefaultDeliveryAccount])
                  {
                    goto LABEL_33;
                  }
                }

                else
                {
                  v34 = 0;
                  v24 = v25;
                }
              }

              else if (v23)
              {
                v35 = v23;
                v34 = v23;
                v23 = v25;
                v33 = v24;
                if (([v25 isDefaultDeliveryAccount] & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v34 = 0;
                v23 = v25;
              }

              v36 = v25;

              v35 = v23;
              v33 = v24;
LABEL_33:

              v23 = v35;
              v24 = v33;
              continue;
            }
          }

          v28 = [v47 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v28);
      }
    }

    v22 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v22);
LABEL_40:

  if (v23)
  {
    v37 = v23;
  }

  else
  {
    v37 = v24;
  }

  v38 = v37;

  return v37;
}

id __128__MFMailAccountProxyGenerator_accountProxyContainingEmailAddress_includingInactive_originatingBundleID_sourceAccountManagement___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

- (id)activeAccountProxiesOriginatingBundleID:(id)a3 sourceAccountManagement:(int)a4
{
  v4 = *&a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(_MFMailAccountProxySource *)self->_proxySource accountProxiesOriginatingBundleID:v6 sourceAccountManagement:v4, 0];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 _isActive] && (self->_allowsRestrictedAccounts || (objc_msgSend(v12, "_isRestricted") & 1) == 0))
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)allAccountProxies
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(_MFMailAccountProxySource *)self->_proxySource accountProxiesOriginatingBundleID:0 sourceAccountManagement:0, 0];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (self->_allowsRestrictedAccounts || ([*(*(&v10 + 1) + 8 * i) _isRestricted] & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

@end