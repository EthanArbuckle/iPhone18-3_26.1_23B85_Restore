@interface NEIKEv2IKESAProposal
+ (NSObject)chooseSAProposalFromLocalProposals:(void *)a3 remoteProposals:(int)a4 preferRemoteProposals:;
- (BOOL)isEqual:(id)a3;
- (NEIKEv2IKESAProposal)init;
- (NSObject)copyFromRemote:(int)a3 preferRemoteProposal:;
- (id)chosenAdditionalKEMProtocols;
- (id)copyWithZone:(_NSZone *)a3;
- (id)kemProtocol;
- (id)prfProtocol;
- (uint64_t)hasEAPMethods;
- (uint64_t)isAValidResponse;
- (unint64_t)hash;
- (unint64_t)softLifetimeSecondsForInitiator:(void *)a1;
- (void)matchesLocalProposal:(int)a3 preferRemoteProposal:;
- (void)setAuthenticationProtocol:(uint64_t)a1;
- (void)setChosenAdditionalKEMProtocols:(void *)a1;
@end

@implementation NEIKEv2IKESAProposal

- (id)copyWithZone:(_NSZone *)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    v7 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
    v8 = [v6 initWithArray:v7 copyItems:1];
    [v4 setEncryptionProtocols:v8];
  }

  v9 = [(NEIKEv2IKESAProposal *)self integrityProtocols];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v12 = [v10 initWithArray:v11 copyItems:1];
    [v4 setIntegrityProtocols:v12];
  }

  v13 = [(NEIKEv2IKESAProposal *)self prfProtocols];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E695DEC8]);
    v15 = [(NEIKEv2IKESAProposal *)self prfProtocols];
    v16 = [v14 initWithArray:v15 copyItems:1];
    [v4 setPrfProtocols:v16];
  }

  v17 = [(NEIKEv2IKESAProposal *)self kemProtocols];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E695DEC8]);
    v19 = [(NEIKEv2IKESAProposal *)self kemProtocols];
    v20 = [v18 initWithArray:v19 copyItems:1];
    [v4 setKemProtocols:v20];
  }

  if (self && ([(NEIKEv2IKESAProposal *)self additionalKEMProtocols], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
  {
    v78 = v4;
    v22 = objc_alloc(MEMORY[0x1E695DF90]);
    v23 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    v24 = [v22 initWithCapacity:{objc_msgSend(v23, "count")}];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    v25 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v81;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v81 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v80 + 1) + 8 * i);
          v30 = objc_alloc(MEMORY[0x1E695DEC8]);
          [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
          v32 = v31 = self;
          v33 = [v32 objectForKeyedSubscript:v29];
          v34 = [v30 initWithArray:v33 copyItems:1];
          [v24 setObject:v34 forKeyedSubscript:v29];

          self = v31;
        }

        v26 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v26);
    }

    v35 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v24];
    v4 = v78;
  }

  else
  {
    v35 = 0;
  }

  [v4 setAdditionalKEMProtocols:{v35, v78}];

  v36 = [(NEIKEv2IKESAProposal *)self eapProtocols];

  if (v36)
  {
    v38 = objc_alloc(MEMORY[0x1E695DEC8]);
    v39 = [(NEIKEv2IKESAProposal *)self eapProtocols];
    v40 = [v38 initWithArray:v39 copyItems:1];
    [v4 setEapProtocols:v40];
  }

  if (self)
  {
    if (objc_getProperty(self, v37, 80, 1))
    {
      v41 = objc_alloc(MEMORY[0x1E695DFD8]);
      v44 = [v41 initWithSet:{objc_getProperty(self, v42, 80, 1)}];
      if (v4)
      {
        objc_setProperty_atomic(v4, v43, v44, 80);
      }
    }

    [v4 setLifetimeSeconds:{-[NEIKEv2IKESAProposal lifetimeSeconds](self, "lifetimeSeconds")}];
    proposalNumber = self->_proposalNumber;
    if (v4)
    {
      goto LABEL_28;
    }
  }

  else
  {
    [v4 setLifetimeSeconds:{objc_msgSend(0, "lifetimeSeconds")}];
    proposalNumber = 0;
    if (v4)
    {
LABEL_28:
      v4[8] = proposalNumber;
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v45, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v49 = [Property copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v48, v49, 88);
  }

  if (self)
  {
    v51 = objc_getProperty(self, v50, 96, 1);
  }

  else
  {
    v51 = 0;
  }

  v53 = [v51 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v52, v53, 96);
  }

  if (self)
  {
    v55 = objc_getProperty(self, v54, 104, 1);
  }

  else
  {
    v55 = 0;
  }

  v57 = [v55 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v56, v57, 104);
  }

  if (self)
  {
    v59 = objc_getProperty(self, v58, 112, 1);
  }

  else
  {
    v59 = 0;
  }

  v61 = [v59 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v60, v61, 112);
  }

  if (self)
  {
    v63 = objc_getProperty(self, v62, 120, 1);
  }

  else
  {
    v63 = 0;
  }

  v65 = [v63 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v64, v65, 120);
  }

  if (self)
  {
    v67 = objc_getProperty(self, v66, 128, 1);
  }

  else
  {
    v67 = 0;
  }

  v69 = [v67 copy];
  if (v4)
  {
    objc_setProperty_atomic(v4, v68, v69, 128);
  }

  v70 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];

  if (v70)
  {
    v71 = objc_alloc(MEMORY[0x1E695DF20]);
    v72 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    v73 = [v71 initWithDictionary:v72 copyItems:1];
    [(NEIKEv2IKESAProposal *)v4 setChosenAdditionalKEMProtocols:v73];
  }

  if (self)
  {
    authenticationProtocol = self->_authenticationProtocol;
  }

  else
  {
    authenticationProtocol = 0;
  }

  v75 = [(NEIKEv2AuthenticationProtocol *)authenticationProtocol copy];
  [(NEIKEv2IKESAProposal *)v4 setAuthenticationProtocol:v75];

  v76 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)chosenAdditionalKEMProtocols
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[2];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setChosenAdditionalKEMProtocols:(void *)a1
{
  v2 = a2;
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if ([v4 count])
    {
      v19 = v2;
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v7 objectForKeyedSubscript:v12];
            v14 = [v13 method];

            if (v14)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      if ([v6 count])
      {
        v15 = [v6 sortedArrayUsingSelector:sel_compare_];
      }

      else
      {
        v15 = 0;
      }

      v2 = v19;
    }

    else
    {
      v15 = 0;
    }

    v16 = a1;
    objc_sync_enter(v16);
    objc_storeStrong(v16 + 2, v2);
    v17 = v16[17];
    v16[17] = v15;

    objc_sync_exit(v16);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setAuthenticationProtocol:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

- (unint64_t)hash
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = 16777619 * ([(NEIKEv2IKESAProposal *)self lifetimeSeconds]^ 0x811C9DC5);
  v4 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
  v5 = 16777619 * ([v4 count] ^ v3);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v6 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v64;
    do
    {
      v10 = 0;
      do
      {
        if (*v64 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = 16777619 * (v5 ^ [*(*(&v63 + 1) + 8 * v10++) hash] ^ 0x1000000);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v8);
  }

  v11 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v5 = 16777619 * ([v13 count] ^ v5);

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v15 = [v14 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v60;
      do
      {
        v18 = 0;
        do
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v5 = 16777619 * (v5 ^ [*(*(&v59 + 1) + 8 * v18++) hash] ^ 0x3000000);
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v16);
    }
  }

  v19 = [(NEIKEv2IKESAProposal *)self prfProtocols];
  v20 = 16777619 * ([v19 count] ^ v5);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [(NEIKEv2IKESAProposal *)self prfProtocols];
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      v25 = 0;
      do
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v20 = 16777619 * (v20 ^ [*(*(&v55 + 1) + 8 * v25++) hash] ^ 0x2000000);
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v23);
  }

  v26 = [(NEIKEv2IKESAProposal *)self kemProtocols];
  v27 = 16777619 * ([v26 count] ^ v20);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = [(NEIKEv2IKESAProposal *)self kemProtocols];
  v29 = [v28 countByEnumeratingWithState:&v51 objects:v68 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    do
    {
      v32 = 0;
      do
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v27 = 16777619 * (v27 ^ [*(*(&v51 + 1) + 8 * v32++) hash] ^ 0x4000000);
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v51 objects:v68 count:16];
    }

    while (v30);
  }

  v33 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
  v34 = [v33 count];

  if (v34)
  {
    for (i = 6; i != 13; ++i)
    {
      v36 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v38 = [v36 objectForKeyedSubscript:v37];

      if ([v38 count])
      {
        v39 = [v38 count];
        v47 = 0u;
        v48 = 0u;
        v27 = 16777619 * (v39 ^ v27);
        v49 = 0u;
        v50 = 0u;
        v40 = v38;
        v41 = [v40 countByEnumeratingWithState:&v47 objects:v67 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v48;
          do
          {
            v44 = 0;
            do
            {
              if (*v48 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v27 = 16777619 * (v27 ^ (i << 24) ^ [*(*(&v47 + 1) + 8 * v44++) hash]);
            }

            while (v42 != v44);
            v42 = [v40 countByEnumeratingWithState:&v47 objects:v67 count:16];
          }

          while (v42);
        }
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
    v7 = [v5 encryptionProtocols];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(NEIKEv2IKESAProposal *)self encryptionProtocols];
      v10 = [v5 encryptionProtocols];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v12, 104, 1);
    }

    else
    {
      Property = 0;
    }

    v15 = Property;
    v17 = objc_getProperty(v5, v16, 104, 1);

    if (v15 != v17)
    {
      v19 = self ? objc_getProperty(self, v18, 104, 1) : 0;
      v20 = v19;
      v22 = [v20 isEqual:{objc_getProperty(v5, v21, 104, 1)}];

      if (!v22)
      {
        goto LABEL_50;
      }
    }

    v23 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
    v24 = [v5 integrityProtocols];
    v25 = v24;
    if (v23 == v24)
    {
    }

    else
    {
      v26 = [(NEIKEv2IKESAProposal *)self integrityProtocols];
      v27 = [v5 integrityProtocols];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v30 = objc_getProperty(self, v29, 112, 1);
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;
    v33 = objc_getProperty(v5, v32, 112, 1);

    if (v31 != v33)
    {
      v35 = self ? objc_getProperty(self, v34, 112, 1) : 0;
      v36 = v35;
      v38 = [v36 isEqual:{objc_getProperty(v5, v37, 112, 1)}];

      if (!v38)
      {
        goto LABEL_50;
      }
    }

    v39 = [(NEIKEv2IKESAProposal *)self prfProtocols];
    v40 = [v5 prfProtocols];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(NEIKEv2IKESAProposal *)self prfProtocols];
      v43 = [v5 prfProtocols];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v46 = objc_getProperty(self, v45, 120, 1);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v49 = objc_getProperty(v5, v48, 120, 1);

    if (v47 != v49)
    {
      v51 = self ? objc_getProperty(self, v50, 120, 1) : 0;
      v52 = v51;
      v54 = [v52 isEqual:{objc_getProperty(v5, v53, 120, 1)}];

      if (!v54)
      {
        goto LABEL_50;
      }
    }

    v55 = [(NEIKEv2IKESAProposal *)self kemProtocols];
    v56 = [v5 kemProtocols];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(NEIKEv2IKESAProposal *)self kemProtocols];
      v59 = [v5 kemProtocols];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_50;
      }
    }

    if (self)
    {
      v62 = objc_getProperty(self, v61, 128, 1);
    }

    else
    {
      v62 = 0;
    }

    v63 = v62;
    v65 = objc_getProperty(v5, v64, 128, 1);

    if (v63 != v65)
    {
      v67 = self ? objc_getProperty(self, v66, 128, 1) : 0;
      v68 = v67;
      v70 = [v68 isEqual:{objc_getProperty(v5, v69, 128, 1)}];

      if (!v70)
      {
        goto LABEL_50;
      }
    }

    v71 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
    v72 = [v5 additionalKEMProtocols];
    v73 = v72;
    if (v71 == v72)
    {
    }

    else
    {
      v74 = [(NEIKEv2IKESAProposal *)self additionalKEMProtocols];
      v75 = [v5 additionalKEMProtocols];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_50;
      }
    }

    v77 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
    v78 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
    v79 = v78;
    if (v77 == v78)
    {
    }

    else
    {
      v80 = [(NEIKEv2IKESAProposal *)self chosenAdditionalKEMProtocols];
      v81 = [(NEIKEv2IKESAProposal *)v5 chosenAdditionalKEMProtocols];
      v82 = [v80 isEqual:v81];

      if (!v82)
      {
LABEL_50:
        v13 = 0;
LABEL_51:

        goto LABEL_52;
      }
    }

    v84 = [(NEIKEv2IKESAProposal *)self lifetimeSeconds];
    v13 = v84 == [v5 lifetimeSeconds];
    goto LABEL_51;
  }

  v13 = 0;
LABEL_52:

  return v13;
}

- (NEIKEv2IKESAProposal)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2IKESAProposal;
  v2 = [(NEIKEv2IKESAProposal *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (id)prfProtocol
{
  v2 = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 120, 1))
    {
      v2 = objc_getProperty(v2, v3, 120, 1);
    }

    else
    {
      v4 = [v2 prfProtocols];
      v2 = [v4 firstObject];
    }
  }

  return v2;
}

- (id)kemProtocol
{
  v2 = self;
  if (self)
  {
    if (objc_getProperty(self, a2, 128, 1))
    {
      v2 = objc_getProperty(v2, v3, 128, 1);
    }

    else
    {
      v4 = [v2 kemProtocols];
      v2 = [v4 firstObject];
    }
  }

  return v2;
}

- (uint64_t)hasEAPMethods
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = [a1 eapProtocols];
    v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v2)
    {
      v3 = *v8;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          if ([*(*(&v7 + 1) + 8 * i) method])
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v2 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSObject)copyFromRemote:(int)a3 preferRemoteProposal:
{
  v192 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v43 = 0;
    goto LABEL_167;
  }

  if (!v5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v191 = "[NEIKEv2IKESAProposal copyFromRemote:preferRemoteProposal:]";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null remote", buf, 0xCu);
    }

    v43 = 0;
    goto LABEL_166;
  }

  v7 = [a1 copy];
  v9 = v7;
  if (!v6[8])
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v21 = "Remote proposal has invalid proposal number 0";
LABEL_114:
    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v21, buf, 2u);
    goto LABEL_164;
  }

  if (v7)
  {
    *(v7 + 8) = v6[8];
    Property = objc_getProperty(v6, v8, 88, 1);
    objc_setProperty_atomic(v9, v11, Property, 96);
  }

  else
  {
    objc_getProperty(v6, v8, 88, 1);
  }

  if (a3)
  {
    v178 = 0uLL;
    v179 = 0uLL;
    v176 = 0uLL;
    v177 = 0uLL;
    v12 = [v6 encryptionProtocols];
    v13 = [v12 countByEnumeratingWithState:&v176 objects:v189 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v177;
LABEL_9:
      v16 = 0;
      while (1)
      {
        if (*v177 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v176 + 1) + 8 * v16);
        v18 = [v9 encryptionProtocols];
        v19 = [v18 indexOfObject:v17];

        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v176 objects:v189 count:16];
          if (v14)
          {
            goto LABEL_9;
          }

          goto LABEL_26;
        }
      }

      v31 = [v9 encryptionProtocols];
      v32 = [v31 objectAtIndexedSubscript:v19];
      v34 = v32;
      if (!v9)
      {

        goto LABEL_45;
      }

      objc_setProperty_atomic(v9, v33, v32, 104);

      v36 = objc_getProperty(v9, v35, 104, 1);
      if (!v36 || (v37 = v36[2], v37 > 0x1F) || ((1 << v37) & 0xD0100000) == 0)
      {
LABEL_46:
        v30 = 0;
        goto LABEL_47;
      }

LABEL_38:
      v30 = 1;
LABEL_47:

      goto LABEL_48;
    }
  }

  else
  {
    v174 = 0uLL;
    v175 = 0uLL;
    v172 = 0uLL;
    v173 = 0uLL;
    v12 = [v9 encryptionProtocols];
    v22 = [v12 countByEnumeratingWithState:&v172 objects:v188 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v173;
LABEL_20:
      v25 = 0;
      while (1)
      {
        if (*v173 != v24)
        {
          objc_enumerationMutation(v12);
        }

        v26 = *(*(&v172 + 1) + 8 * v25);
        v27 = [v6 encryptionProtocols];
        v28 = [v27 containsObject:v26];

        if (v28)
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v12 countByEnumeratingWithState:&v172 objects:v188 count:16];
          if (v23)
          {
            goto LABEL_20;
          }

          goto LABEL_26;
        }
      }

      if (!v9)
      {
LABEL_45:
        v36 = 0;
        goto LABEL_46;
      }

      objc_setProperty_atomic(v9, v29, v26, 104);
      v36 = objc_getProperty(v9, v38, 104, 1);
      if (!v36)
      {
        goto LABEL_46;
      }

      v39 = v36[2];
      v40 = v39 > 0x1F;
      v41 = (1 << v39) & 0xD0100000;
      if (v40 || v41 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_38;
    }
  }

LABEL_26:
  v30 = 0;
LABEL_48:

  if (!v9 || !objc_getProperty(v9, v44, 104, 1))
  {
    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v21 = "No chosen encryption protocol";
    goto LABEL_114;
  }

  if ((v30 & 1) == 0)
  {
    if (a3)
    {
      v170 = 0uLL;
      v171 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v45 = [v6 integrityProtocols];
      v46 = [v45 countByEnumeratingWithState:&v168 objects:v187 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v169;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v169 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v168 + 1) + 8 * i);
            v51 = [v9 integrityProtocols];
            v52 = [v51 indexOfObject:v50];

            if (v52 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v61 = [v9 integrityProtocols];
              v62 = [v61 objectAtIndexedSubscript:v52];
              objc_setProperty_atomic(v9, v63, v62, 112);

              goto LABEL_74;
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v168 objects:v187 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v166 = 0uLL;
      v167 = 0uLL;
      v164 = 0uLL;
      v165 = 0uLL;
      v45 = [v9 integrityProtocols];
      v53 = [v45 countByEnumeratingWithState:&v164 objects:v186 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v165;
        while (2)
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v165 != v55)
            {
              objc_enumerationMutation(v45);
            }

            v57 = *(*(&v164 + 1) + 8 * j);
            v58 = [v6 integrityProtocols];
            v59 = [v58 containsObject:v57];

            if (v59)
            {
              objc_setProperty_atomic(v9, v60, v57, 112);
              goto LABEL_74;
            }
          }

          v54 = [v45 countByEnumeratingWithState:&v164 objects:v186 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_74:

    if (!objc_getProperty(v9, v64, 112, 1))
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v21 = "No chosen integrity protocol";
        goto LABEL_114;
      }

      goto LABEL_164;
    }
  }

  if (a3)
  {
    v162 = 0uLL;
    v163 = 0uLL;
    v160 = 0uLL;
    v161 = 0uLL;
    v65 = [v6 prfProtocols];
    v66 = [v65 countByEnumeratingWithState:&v160 objects:v185 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v161;
      while (2)
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v161 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v160 + 1) + 8 * k);
          v71 = [v9 prfProtocols];
          v72 = [v71 indexOfObject:v70];

          if (v72 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v81 = [v9 prfProtocols];
            v82 = [v81 objectAtIndexedSubscript:v72];
            objc_setProperty_atomic(v9, v83, v82, 120);

            goto LABEL_96;
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v160 objects:v185 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v158 = 0uLL;
    v159 = 0uLL;
    v156 = 0uLL;
    v157 = 0uLL;
    v65 = [v9 prfProtocols];
    v73 = [v65 countByEnumeratingWithState:&v156 objects:v184 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v157;
      while (2)
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v157 != v75)
          {
            objc_enumerationMutation(v65);
          }

          v77 = *(*(&v156 + 1) + 8 * m);
          v78 = [v6 prfProtocols];
          v79 = [v78 containsObject:v77];

          if (v79)
          {
            objc_setProperty_atomic(v9, v80, v77, 120);
            goto LABEL_96;
          }
        }

        v74 = [v65 countByEnumeratingWithState:&v156 objects:v184 count:16];
        if (v74)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_96:

  if (!objc_getProperty(v9, v84, 120, 1))
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "No chosen PRF protocol";
      goto LABEL_114;
    }

LABEL_164:
    v43 = 0;
    goto LABEL_165;
  }

  v85 = [v9 kemProtocols];
  v86 = [v6 kemProtocols];
  v87 = [v86 firstObject];
  v88 = [v85 indexOfObject:v87];

  if (v88 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v89 = [v6 kemProtocols];
      v90 = [v89 countByEnumeratingWithState:&v152 objects:v183 count:16];
      if (!v90)
      {
        goto LABEL_123;
      }

      v91 = v90;
      v92 = *v153;
LABEL_101:
      v93 = 0;
      while (1)
      {
        if (*v153 != v92)
        {
          objc_enumerationMutation(v89);
        }

        v94 = *(*(&v152 + 1) + 8 * v93);
        v95 = [v9 kemProtocols];
        v96 = [v95 indexOfObject:v94];

        if (v96 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v91 == ++v93)
        {
          v91 = [v89 countByEnumeratingWithState:&v152 objects:v183 count:16];
          if (!v91)
          {
LABEL_123:

            goto LABEL_161;
          }

          goto LABEL_101;
        }
      }

      v106 = [v9 kemProtocols];
      v20 = [v106 objectAtIndexedSubscript:v96];
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v148 = 0uLL;
      v149 = 0uLL;
      v89 = [v9 kemProtocols];
      v99 = [v89 countByEnumeratingWithState:&v148 objects:v182 count:16];
      if (!v99)
      {
        goto LABEL_123;
      }

      v100 = v99;
      v101 = *v149;
LABEL_117:
      v102 = 0;
      while (1)
      {
        if (*v149 != v101)
        {
          objc_enumerationMutation(v89);
        }

        v103 = *(*(&v148 + 1) + 8 * v102);
        v104 = [v6 kemProtocols];
        v105 = [v104 containsObject:v103];

        if (v105)
        {
          break;
        }

        if (v100 == ++v102)
        {
          v100 = [v89 countByEnumeratingWithState:&v148 objects:v182 count:16];
          if (!v100)
          {
            goto LABEL_123;
          }

          goto LABEL_117;
        }
      }

      v20 = v103;
    }

    if (v20)
    {
      goto LABEL_127;
    }

    goto LABEL_161;
  }

  v97 = [v9 kemProtocols];
  v20 = [v97 objectAtIndexedSubscript:v88];

  if (!v20)
  {
LABEL_161:
    v130 = ne_log_obj();
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, "No chosen KE method", buf, 2u);
    }

    v20 = 0;
    goto LABEL_164;
  }

LABEL_127:
  objc_setProperty_atomic(v9, v98, v20, 128);
  v107 = [v6 additionalKEMProtocols];

  if (!v107)
  {
    v133 = [v9 additionalKEMProtocols];

    if (v133)
    {
      [(NEIKEv2IKESAProposal *)v9 setChosenAdditionalKEMProtocols:?];
    }

    v43 = v9;
    goto LABEL_165;
  }

  v137 = a3;
  v108 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v20, 0}];
  v109 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v110 = 6;
  v135 = v109;
  v136 = v6;
  v139 = v9;
  while (1)
  {
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v110];
    v112 = [v9 additionalKEMProtocols];
    v113 = [v112 objectForKeyedSubscript:v111];

    v114 = [v6 additionalKEMProtocols];
    v115 = [v114 objectForKeyedSubscript:v111];

    if (!v115)
    {
      goto LABEL_144;
    }

    if (v113)
    {
      break;
    }

    v123 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
    [v109 setObject:v123 forKeyedSubscript:v111];

LABEL_144:
    v122 = 0;
LABEL_159:

    ++v110;
    v9 = v139;
    if (v110 == 13)
    {
      v129 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v109];
      [(NEIKEv2IKESAProposal *)v139 setChosenAdditionalKEMProtocols:v129];

      v43 = v139;
      goto LABEL_178;
    }
  }

  v138 = v111;
  if (v137)
  {
    v146 = 0uLL;
    v147 = 0uLL;
    v144 = 0uLL;
    v145 = 0uLL;
    v116 = v115;
    v117 = [v116 countByEnumeratingWithState:&v144 objects:v181 count:16];
    if (v117)
    {
      v118 = v117;
      v119 = *v145;
      do
      {
        for (n = 0; n != v118; ++n)
        {
          if (*v145 != v119)
          {
            objc_enumerationMutation(v116);
          }

          v121 = [v113 indexOfObject:*(*(&v144 + 1) + 8 * n)];
          if (v121 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v122 = [v113 objectAtIndexedSubscript:v121];
            if (![v108 containsObject:v122])
            {
              goto LABEL_156;
            }
          }
        }

        v118 = [v116 countByEnumeratingWithState:&v144 objects:v181 count:16];
      }

      while (v118);
      v115 = v116;
LABEL_171:
      v109 = v135;
      v111 = v138;
    }

    else
    {
      v115 = v116;
    }

LABEL_174:
  }

  else
  {
    v142 = 0uLL;
    v143 = 0uLL;
    v140 = 0uLL;
    v141 = 0uLL;
    v116 = v113;
    v124 = [v116 countByEnumeratingWithState:&v140 objects:v180 count:16];
    if (!v124)
    {
      v113 = v116;
      goto LABEL_174;
    }

    v125 = v124;
    v126 = *v141;
LABEL_147:
    v127 = 0;
    while (1)
    {
      if (*v141 != v126)
      {
        objc_enumerationMutation(v116);
      }

      v128 = *(*(&v140 + 1) + 8 * v127);
      if (([v108 containsObject:v128] & 1) == 0)
      {
        if ([v115 containsObject:v128])
        {
          break;
        }
      }

      if (v125 == ++v127)
      {
        v125 = [v116 countByEnumeratingWithState:&v140 objects:v180 count:16];
        if (v125)
        {
          goto LABEL_147;
        }

        v113 = v116;
        goto LABEL_171;
      }
    }

    v122 = v128;
LABEL_156:

    v109 = v135;
    v111 = v138;
    if (v122)
    {
      [v135 setObject:v122 forKeyedSubscript:v138];
      v6 = v136;
      if ([v122 method])
      {
        [v108 addObject:v122];
      }

      goto LABEL_159;
    }
  }

  v6 = v136;
  v134 = ne_log_obj();
  if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v134, OS_LOG_TYPE_ERROR, "No chosen additional KE methods", buf, 2u);
  }

  v43 = 0;
  v9 = v139;
LABEL_178:

LABEL_165:
LABEL_166:

LABEL_167:
  v131 = *MEMORY[0x1E69E9840];
  return v43;
}

- (void)matchesLocalProposal:(int)a3 preferRemoteProposal:
{
  v154 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_30;
  }

  if (!v5)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal";
    goto LABEL_27;
  }

  v7 = [a1 encryptionProtocols];

  if (!v7)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.encryptionProtocols";
LABEL_23:
    v16 = v14;
    v17 = 12;
    goto LABEL_24;
  }

  v8 = [v6 encryptionProtocols];

  if (!v8)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.encryptionProtocols";
LABEL_27:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_28;
  }

  v9 = [a1 prfProtocols];

  if (!v9)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.prfProtocols";
    goto LABEL_23;
  }

  v10 = [v6 prfProtocols];

  if (!v10)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.prfProtocols";
    goto LABEL_27;
  }

  v11 = [a1 kemProtocols];

  if (!v11)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v15 = "BACKTRACE %s called with null self.kemProtocols";
    goto LABEL_23;
  }

  v12 = [v6 kemProtocols];

  if (!v12)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315138;
    v150 = "[NEIKEv2IKESAProposal matchesLocalProposal:preferRemoteProposal:]";
    v18 = "%s called with null localProposal.kemProtocols";
    goto LABEL_27;
  }

  if (objc_getProperty(a1, v13, 80, 1))
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v15 = "Not matching proposal with unsupported transform type";
LABEL_12:
      v16 = v14;
      v17 = 2;
LABEL_24:
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_28:

    goto LABEL_29;
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v21 = [v6 encryptionProtocols];
  v22 = [v21 countByEnumeratingWithState:&v137 objects:v153 count:16];
  if (!v22)
  {
    goto LABEL_39;
  }

  v23 = v22;
  v24 = *v138;
LABEL_33:
  v25 = 0;
  while (1)
  {
    if (*v138 != v24)
    {
      objc_enumerationMutation(v21);
    }

    v26 = *(*(&v137 + 1) + 8 * v25);
    v27 = [a1 encryptionProtocols];
    v28 = [v27 containsObject:v26];

    if (v28)
    {
      break;
    }

    if (v23 == ++v25)
    {
      v23 = [v21 countByEnumeratingWithState:&v137 objects:v153 count:16];
      if (!v23)
      {
LABEL_39:

        v29 = ne_log_large_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [a1 encryptionProtocols];
          v31 = [v6 encryptionProtocols];
          *buf = 138412546;
          v150 = v30;
          v151 = 2112;
          v152 = v31;
          v32 = "Failed to match encryption algorithms (%@ vs %@)";
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_33;
    }
  }

  if (v26)
  {
    v33 = *(v26 + 16);
    v34 = v33 >= 0x20;
    v35 = 0xD0100000 >> v33;
    if (v34)
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = [v6 integrityProtocols];
  if ([v37 count])
  {
    v38 = [a1 integrityProtocols];
    v39 = [v38 count];

    if (v39)
    {
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v40 = [v6 integrityProtocols];
      v41 = [v40 countByEnumeratingWithState:&v133 objects:v148 count:16];
      if (!v41)
      {
        goto LABEL_55;
      }

      v42 = v41;
      v43 = *v134;
LABEL_49:
      v44 = 0;
      while (1)
      {
        if (*v134 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v133 + 1) + 8 * v44);
        v46 = [a1 integrityProtocols];
        LOBYTE(v45) = [v46 containsObject:v45];

        if (v45)
        {
          break;
        }

        if (v42 == ++v44)
        {
          v42 = [v40 countByEnumeratingWithState:&v133 objects:v148 count:16];
          if (!v42)
          {
LABEL_55:

            v29 = ne_log_large_obj();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [a1 integrityProtocols];
              v31 = [v6 integrityProtocols];
              *buf = 138412546;
              v150 = v30;
              v151 = 2112;
              v152 = v31;
              v32 = "Failed to match integrity algorithms (%@ vs %@)";
              goto LABEL_72;
            }

            goto LABEL_73;
          }

          goto LABEL_49;
        }
      }

      goto LABEL_62;
    }
  }

  else
  {
  }

  if ((v36 & 1) == 0)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v15 = "Failed to match integrity algorithms, none provided";
    goto LABEL_12;
  }

LABEL_62:
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v47 = [v6 prfProtocols];
  v48 = [v47 countByEnumeratingWithState:&v129 objects:v147 count:16];
  if (!v48)
  {
    goto LABEL_70;
  }

  v49 = v48;
  v50 = *v130;
LABEL_64:
  v51 = 0;
  while (1)
  {
    if (*v130 != v50)
    {
      objc_enumerationMutation(v47);
    }

    v52 = *(*(&v129 + 1) + 8 * v51);
    v53 = [a1 prfProtocols];
    LOBYTE(v52) = [v53 containsObject:v52];

    if (v52)
    {
      break;
    }

    if (v49 == ++v51)
    {
      v49 = [v47 countByEnumeratingWithState:&v129 objects:v147 count:16];
      if (!v49)
      {
LABEL_70:

        v29 = ne_log_large_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [a1 prfProtocols];
          v31 = [v6 prfProtocols];
          *buf = 138412546;
          v150 = v30;
          v151 = 2112;
          v152 = v31;
          v32 = "Failed to match PRF algorithms (%@ vs %@)";
LABEL_72:
          _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, v32, buf, 0x16u);
        }

LABEL_73:

LABEL_29:
        a1 = 0;
        goto LABEL_30;
      }

      goto LABEL_64;
    }
  }

  v54 = [v6 kemProtocols];
  v55 = [a1 kemProtocols];
  v56 = [v55 firstObject];
  v57 = [v54 indexOfObject:v56];

  if (v57 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3)
    {
      v127 = 0uLL;
      v128 = 0uLL;
      v125 = 0uLL;
      v126 = 0uLL;
      v58 = [a1 kemProtocols];
      v59 = [v58 countByEnumeratingWithState:&v125 objects:v146 count:16];
      if (!v59)
      {
        goto LABEL_94;
      }

      v60 = v59;
      v61 = *v126;
LABEL_78:
      v62 = 0;
      while (1)
      {
        if (*v126 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v125 + 1) + 8 * v62);
        v64 = [v6 kemProtocols];
        v65 = [v64 indexOfObject:v63];

        if (v65 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v60 == ++v62)
        {
          v60 = [v58 countByEnumeratingWithState:&v125 objects:v146 count:16];
          if (!v60)
          {
LABEL_94:

LABEL_101:
            v77 = ne_log_large_obj();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = [a1 kemProtocols];
              v79 = [v6 kemProtocols];
              *buf = 138412546;
              v150 = v78;
              v151 = 2112;
              v152 = v79;
              _os_log_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_INFO, "Failed to match Key Exchange methods (%@ vs %@)", buf, 0x16u);
            }

            v75 = 0;
            v141 = 0;
            goto LABEL_152;
          }

          goto LABEL_78;
        }
      }

      v74 = [v6 kemProtocols];
      v75 = [v74 objectAtIndexedSubscript:v65];

      goto LABEL_98;
    }

    v123 = 0uLL;
    v124 = 0uLL;
    v121 = 0uLL;
    v122 = 0uLL;
    v58 = [v6 kemProtocols];
    v67 = [v58 countByEnumeratingWithState:&v121 objects:v145 count:16];
    if (!v67)
    {
      goto LABEL_94;
    }

    v68 = v67;
    v69 = *v122;
LABEL_88:
    v70 = 0;
    while (1)
    {
      if (*v122 != v69)
      {
        objc_enumerationMutation(v58);
      }

      v71 = *(*(&v121 + 1) + 8 * v70);
      v72 = [a1 kemProtocols];
      v73 = [v72 containsObject:v71];

      if (v73)
      {
        break;
      }

      if (v68 == ++v70)
      {
        v68 = [v58 countByEnumeratingWithState:&v121 objects:v145 count:16];
        if (!v68)
        {
          goto LABEL_94;
        }

        goto LABEL_88;
      }
    }

    v66 = v71;
  }

  else
  {
    v58 = [v6 kemProtocols];
    v66 = [v58 objectAtIndexedSubscript:v57];
  }

  v75 = v66;
LABEL_98:

  if (!v75)
  {
    goto LABEL_101;
  }

  v76 = [a1 additionalKEMProtocols];
  if (v76)
  {
  }

  else
  {
    v80 = [v6 additionalKEMProtocols];

    if (!v80)
    {
      v141 = 1;
      goto LABEL_152;
    }
  }

  v81 = [[NEIKEv2KEMProtocol alloc] initWithMethod:0];
  v144 = v81;
  v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];

  v108 = v75;
  v82 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v75, 0}];
  v83 = 6;
  v84 = 0x1E696A000uLL;
  v110 = a3;
  while (1)
  {
    v85 = [*(v84 + 3480) numberWithUnsignedInteger:v83];
    v86 = [v6 additionalKEMProtocols];
    v87 = [v86 objectForKeyedSubscript:v85];

    v88 = [a1 additionalKEMProtocols];
    v89 = [v88 objectForKeyedSubscript:v85];

    if (v87 | v89)
    {
      break;
    }

LABEL_140:

    if (++v83 == 13)
    {
      v141 = 1;
      goto LABEL_151;
    }
  }

  if (v87)
  {
    v90 = v89 == 0;
  }

  else
  {
    v90 = 1;
  }

  if (v90)
  {
    if (v87)
    {
      v89 = v109;
    }

    else
    {
      v87 = v109;
    }

    v91 = v109;
  }

  v111 = v83;
  v112 = v85;
  if (a3)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v92 = v89;
    v93 = v89;
    v94 = [v93 countByEnumeratingWithState:&v117 objects:v143 count:16];
    if (!v94)
    {
      v104 = v93;
      goto LABEL_148;
    }

    v95 = v94;
    v96 = v87;
    v97 = *v118;
LABEL_119:
    v98 = 0;
    while (1)
    {
      if (*v118 != v97)
      {
        objc_enumerationMutation(v93);
      }

      v99 = *(*(&v117 + 1) + 8 * v98);
      if (([v82 containsObject:v99] & 1) == 0)
      {
        if ([v96 containsObject:v99])
        {
          goto LABEL_137;
        }
      }

      if (v95 == ++v98)
      {
        v95 = [v93 countByEnumeratingWithState:&v117 objects:v143 count:16];
        if (v95)
        {
          goto LABEL_119;
        }

        v104 = v93;
        v85 = v112;
        v87 = v96;
        goto LABEL_148;
      }
    }
  }

  v92 = v89;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = v87;
  v100 = [v93 countByEnumeratingWithState:&v113 objects:v142 count:16];
  if (v100)
  {
    v101 = v100;
    v96 = v87;
    v102 = *v114;
LABEL_129:
    v103 = 0;
    while (1)
    {
      if (*v114 != v102)
      {
        objc_enumerationMutation(v93);
      }

      v99 = *(*(&v113 + 1) + 8 * v103);
      if (([v82 containsObject:v99] & 1) == 0)
      {
        if ([v92 containsObject:v99])
        {
          break;
        }
      }

      if (v101 == ++v103)
      {
        v101 = [v93 countByEnumeratingWithState:&v113 objects:v142 count:16];
        if (v101)
        {
          goto LABEL_129;
        }

        v87 = v93;
        v85 = v112;
        goto LABEL_146;
      }
    }

LABEL_137:
    if ([v99 method])
    {
      [v82 addObject:v99];
    }

    v83 = v111;
    v85 = v112;
    a3 = v110;
    v84 = 0x1E696A000;
    goto LABEL_140;
  }

  v87 = v93;
LABEL_146:
  v104 = v92;
LABEL_148:

  v105 = ne_log_large_obj();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
  {
    v106 = [a1 additionalKEMProtocols];
    v107 = [v6 additionalKEMProtocols];
    *buf = 138412546;
    v150 = v106;
    v151 = 2112;
    v152 = v107;
    _os_log_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_INFO, "Failed to match Additional Key Exchange methods (%@ vs %@)", buf, 0x16u);
  }

  v141 = 0;
LABEL_151:

  v75 = v108;
LABEL_152:

  a1 = v141;
LABEL_30:

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

- (uint64_t)isAValidResponse
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_3;
  }

  if (objc_getProperty(a1, a2, 80, 1))
  {
    goto LABEL_3;
  }

  if (!a1[8])
  {
    goto LABEL_3;
  }

  v6 = [a1 kemProtocols];
  v7 = [v6 count];

  if (v7 != 1)
  {
    goto LABEL_3;
  }

  v8 = [a1 prfProtocols];
  v9 = [v8 count];

  if (v9 != 1)
  {
    goto LABEL_3;
  }

  v10 = [a1 encryptionProtocols];
  v11 = [v10 count];

  if (v11 != 1)
  {
    goto LABEL_3;
  }

  v12 = [a1 encryptionProtocols];
  v13 = [v12 firstObject];
  if (v13)
  {
    v14 = v13[2] & 0xFFFFFFFFFFFFFFFELL;

    if (v14 != 30)
    {
      goto LABEL_11;
    }

LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

LABEL_11:
  v15 = [a1 encryptionProtocols];
  v16 = [v15 firstObject];
  if (v16)
  {
    v17 = v16[2];
    v18 = 1;
    if (v17 <= 0x1F)
    {
      v18 = ((1 << v17) & 0xD0100000) == 0;
    }
  }

  else
  {
    v18 = 1;
  }

  v19 = [a1 integrityProtocols];
  v20 = [v19 count];

  if (v20 != v18)
  {
    goto LABEL_3;
  }

  v21 = [a1 additionalKEMProtocols];

  if (v21)
  {
    v22 = [a1 additionalKEMProtocols];
    v23 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v22, "count") + 1}];
    v24 = [a1 kemProtocols];
    v25 = [v24 firstObject];
    [v23 addObject:v25];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v22;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [v26 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * i), v33}];
          if ([v31 count] != 1)
          {
            goto LABEL_31;
          }

          v32 = [v31 firstObject];
          if ([v23 containsObject:v32])
          {

LABEL_31:
            v3 = 0;
            goto LABEL_32;
          }

          if ([v32 method])
          {
            [v23 addObject:v32];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
        v3 = 1;
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v3 = 1;
    }

LABEL_32:
  }

  else
  {
    v3 = 1;
  }

LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (NSObject)chooseSAProposalFromLocalProposals:(void *)a3 remoteProposals:(int)a4 preferRemoteProposals:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v25 = v6;
  if (!v6)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
LABEL_29:
      v9 = 0;
      goto LABEL_25;
    }

    *buf = 136315138;
    v39 = "+[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:]";
    v24 = "%s called with null localProposals";
LABEL_31:
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v24, buf, 0xCu);
    goto LABEL_29;
  }

  if (!v7)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *buf = 136315138;
    v39 = "+[NEIKEv2IKESAProposal chooseSAProposalFromLocalProposals:remoteProposals:preferRemoteProposals:]";
    v24 = "%s called with null remoteProposals";
    goto LABEL_31;
  }

  if (a4)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      while (2)
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __97__NEIKEv2IKESAProposal_chooseSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals___block_invoke;
          v31[3] = &unk_1E7F07BD0;
          v31[4] = v12;
          v13 = [v25 indexOfObjectPassingTest:{v31, v25}];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = [v25 objectAtIndexedSubscript:v13];
            v19 = v18;
            v20 = v12;
            v21 = 1;
            goto LABEL_24;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v9)
    {
      v14 = *v28;
      while (2)
      {
        for (j = 0; j != v9; j = (j + 1))
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v27 + 1) + 8 * j);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __97__NEIKEv2IKESAProposal_chooseSAProposalFromLocalProposals_remoteProposals_preferRemoteProposals___block_invoke_2;
          v26[3] = &unk_1E7F07BD0;
          v26[4] = v16;
          v17 = [v7 indexOfObjectPassingTest:{v26, v25}];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [v7 objectAtIndexedSubscript:v17];
            v18 = v16;
            v20 = v19;
            v21 = 0;
LABEL_24:
            v9 = [(NEIKEv2IKESAProposal *)v18 copyFromRemote:v20 preferRemoteProposal:v21];

            goto LABEL_25;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)softLifetimeSecondsForInitiator:(void *)a1
{
  v4 = [a1 lifetimeSeconds];
  v5 = [a1 lifetimeSeconds];
  v6 = v5;
  if (v4 < 0xB)
  {
    result = [a1 lifetimeSeconds];
    v9 = -2;
    if (!a2)
    {
      v9 = -1;
    }

    v10 = result + v9;
    if (v6 >= 2)
    {
      return v10;
    }
  }

  else
  {
    v7 = 8;
    if (!a2)
    {
      v7 = 9;
    }

    return v5 * v7 / 0xAuLL;
  }

  return result;
}

@end