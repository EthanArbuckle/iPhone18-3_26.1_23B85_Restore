@interface NEIKEv2ChildSA
- (BOOL)isRekeying;
- (_BYTE)configuredInitiatorTrafficSelectors;
- (_BYTE)configuredResponderTrafficSelectors;
- (_BYTE)initiatorTrafficSelectors;
- (_BYTE)responderTrafficSelectors;
- (id)configProposalsWithoutKEM;
- (id)description;
- (id)ikeSA;
- (id)initWithConfiguration:(int)configuration childID:(void *)d ikeSA:;
- (id)preferredKEMProtocol;
- (uint64_t)generateAllValues;
- (uint64_t)generateInitialValues;
- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol;
- (uint64_t)processCurrentKeyExchange;
- (uint64_t)processPrimaryKeyExchange;
- (uint64_t)setInitiatorTrafficSelectors:(_BYTE *)selectors;
- (uint64_t)setResponderTrafficSelectors:(_BYTE *)selectors;
- (uint64_t)shouldGenerateNewDHKeys;
- (void)dealloc;
- (void)reset;
- (void)setConfigProposalsWithoutKEM:(id)self;
- (void)setState:(void *)state error:;
@end

@implementation NEIKEv2ChildSA

- (void)dealloc
{
  [(NEIKEv2ChildSA *)self reset];
  v3.receiver = self;
  v3.super_class = NEIKEv2ChildSA;
  [(NEIKEv2ChildSA *)&v3 dealloc];
}

- (void)reset
{
  if (self)
  {
    self[9] = 1;
    objc_setProperty_atomic(self, a2, 0, 56);
    objc_setProperty_atomic(self, v3, 0, 208);
    self[8] = 1;
    objc_setProperty_atomic(self, v4, 0, 64);
    objc_setProperty_atomic(self, v5, 0, 72);
    objc_setProperty_atomic(self, v6, 0, 80);
    objc_setProperty_atomic(self, v7, 0, 88);
    objc_setProperty_atomic(self, v8, 0, 104);
    objc_setProperty_atomic(self, v9, 0, 112);
    objc_setProperty_atomic(self, v10, 0, 120);
    objc_setProperty_atomic(self, v11, 0, 128);
    objc_setProperty_atomic(self, v12, 0, 136);
    objc_setProperty_atomic(self, v13, 0, 144);
    objc_setProperty_atomic(self, v14, 0, 152);
    objc_setProperty_atomic(self, v15, 0, 160);
    objc_setProperty_atomic(self, v16, 0, 168);
    if (objc_getProperty(self, v17, 216, 1))
    {
      Property = objc_getProperty(self, v18, 216, 1);
      dispatch_source_cancel(Property);

      objc_setProperty_atomic(self, v20, 0, 216);
    }
  }
}

- (id)description
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    childID = self->_childID;
    Property = objc_getProperty(self, v3, 56, 1);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 80, 1);
    }

    v8 = Property;
    v10 = objc_getProperty(self, v9, 56, 1);
    if (v10)
    {
      v10 = objc_getProperty(v10, v11, 88, 1);
    }
  }

  else
  {
    childID = 0;
    v8 = 0;
    v10 = 0;
  }

  v12 = v10;
  v13 = [v4 initWithFormat:@"ChildSA[%u, %@-%@]", childID, v8, v12];

  return v13;
}

- (id)initWithConfiguration:(int)configuration childID:(void *)d ikeSA:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dCopy = d;
  if (!self)
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    v27.receiver = self;
    v27.super_class = NEIKEv2ChildSA;
    v9 = [&v27 init];
    if (v9)
    {
      v11 = v9;
      objc_setProperty_atomic(v9, v10, v7, 48);
      *(v11 + 9) = 1;
      objc_setProperty_atomic(v11, v12, 0, 56);
      *(v11 + 4) = configuration;
      *(v11 + 4) = 3;
      objc_setProperty_atomic(v11, v13, 0, 40);
      *(v11 + 8) = 0;
      objc_opt_self();
      v14 = nextDatabaseReqID_nextReqid;
      if ((nextDatabaseReqID_nextReqid + 1) >> 14)
      {
        v15 = 1;
      }

      else
      {
        v15 = nextDatabaseReqID_nextReqid + 1;
      }

      nextDatabaseReqID_nextReqid = v15;
      *(v11 + 6) = v14;
      objc_opt_self();
      v16 = nextDatabaseReqID_nextReqid;
      if ((nextDatabaseReqID_nextReqid + 1) >> 14)
      {
        v17 = 1;
      }

      else
      {
        v17 = nextDatabaseReqID_nextReqid + 1;
      }

      nextDatabaseReqID_nextReqid = v17;
      *(v11 + 7) = v16;
      objc_storeWeak(v11 + 3, dCopy);
      self = ne_log_large_obj();
      if (os_log_type_enabled(self, OS_LOG_TYPE_INFO))
      {
        v19 = *(v11 + 4);
        if (dCopy)
        {
          Property = objc_getProperty(dCopy, v18, 32, 1);
        }

        else
        {
          Property = 0;
        }

        v21 = Property;
        v23 = objc_getProperty(v11, v22, 48, 1);
        *buf = 67109634;
        *v29 = v19;
        *&v29[4] = 2112;
        *&v29[6] = v21;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_1BA83C000, self, OS_LOG_TYPE_INFO, "Created Child SA %u (off of %@) with configuration %@", buf, 0x1Cu);
      }

      goto LABEL_14;
    }

    self = ne_log_obj();
    if (os_log_type_enabled(self, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, self, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *v29 = "[NEIKEv2ChildSA initWithConfiguration:childID:ikeSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "%s called with null configuration", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_14:

LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)setState:(void *)state error:
{
  v34 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (self)
  {
    v7 = *(self + 32);
    v8 = (stateCopy | objc_getProperty(self, v5, 40, 1)) != 0;
    v9 = ne_log_obj();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 == a2)
    {
      if (v8)
      {
        if (v10)
        {
          SessionStateString = NEIKEv2CreateSessionStateString(*(self + 32));
          v24 = 138413058;
          selfCopy4 = self;
          v26 = 2112;
          v27 = SessionStateString;
          v28 = 2112;
          Property = objc_getProperty(self, v12, 40, 1);
          v30 = 2112;
          v31 = stateCopy;
          v13 = "%@ not changing state %@ nor error %@ -> %@";
          v14 = v9;
          v15 = 42;
LABEL_11:
          _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, v13, &v24, v15);
        }
      }

      else if (v10)
      {
        SessionStateString = NEIKEv2CreateSessionStateString(*(self + 32));
        v24 = 138412546;
        selfCopy4 = self;
        v26 = 2112;
        v27 = SessionStateString;
        v13 = "%@ not changing state %@ nor error";
        v14 = v9;
        v15 = 22;
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (v8)
    {
      if (v10)
      {
        v16 = NEIKEv2CreateSessionStateString(*(self + 32));
        v17 = NEIKEv2CreateSessionStateString(a2);
        v24 = 138413314;
        selfCopy4 = self;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        Property = v17;
        v30 = 2112;
        v31 = objc_getProperty(self, v18, 40, 1);
        v32 = 2112;
        v33 = stateCopy;
        v19 = "%@ state %@ -> %@ error %@ -> %@";
        v20 = v9;
        v21 = 52;
LABEL_15:
        _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEFAULT, v19, &v24, v21);
      }
    }

    else if (v10)
    {
      v16 = NEIKEv2CreateSessionStateString(*(self + 32));
      v17 = NEIKEv2CreateSessionStateString(a2);
      v24 = 138412802;
      selfCopy4 = self;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      Property = v17;
      v19 = "%@ state %@ -> %@";
      v20 = v9;
      v21 = 32;
      goto LABEL_15;
    }

    *(self + 32) = a2;
    objc_setProperty_atomic(self, v22, stateCopy, 40);
    *(self + 8) = 1;
  }

LABEL_17:

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setConfigProposalsWithoutKEM:(id)self
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 208);
  }
}

- (id)configProposalsWithoutKEM
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    if (objc_getProperty(self, a2, 208, 1))
    {
LABEL_20:
      self = objc_getProperty(selfCopy, v3, 208, 1);
      goto LABEL_21;
    }

    v4 = [objc_getProperty(selfCopy v3];
    if ([v4 count] == 1)
    {
      v5 = [v4 objectAtIndexedSubscript:0];
      copyWithoutKEM = [(NEIKEv2ChildSAProposal *)v5 copyWithoutKEM];

      if (copyWithoutKEM)
      {
        copyWithoutKEM[8] = 1;
      }

      v25[0] = copyWithoutKEM;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      objc_setProperty_atomic(selfCopy, v8, array, 208);
    }

    else
    {
      copyWithoutKEM = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            copyWithoutKEM2 = [(NEIKEv2ChildSAProposal *)*(*(&v20 + 1) + 8 * i) copyWithoutKEM];
            v15 = [copyWithoutKEM count];
            if (copyWithoutKEM2)
            {
              copyWithoutKEM2[8] = v15 + 1;
            }

            [copyWithoutKEM addObject:copyWithoutKEM2];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      if (![copyWithoutKEM count])
      {
        goto LABEL_19;
      }

      array = [copyWithoutKEM array];
      v16 = [array copy];
      objc_setProperty_atomic(selfCopy, v17, v16, 208);
    }

LABEL_19:
    goto LABEL_20;
  }

LABEL_21:
  v18 = *MEMORY[0x1E69E9840];

  return self;
}

- (uint64_t)shouldGenerateNewDHKeys
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = objc_getProperty(self, a2, 184, 1);
    if (v3)
    {
      goto LABEL_3;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    firstObject = objc_getProperty(selfCopy, v4, 176, 1);
    v7 = [firstObject countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v19;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(firstObject);
          }

          kemProtocol = [(NEIKEv2ChildSAProposal *)*(*(&v18 + 1) + 8 * v11) kemProtocol];
          method = [kemProtocol method];

          if (method)
          {
            selfCopy = 1;
            goto LABEL_19;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [firstObject countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v3 = objc_getProperty(selfCopy, v14, 56, 1);
    if (v3)
    {
LABEL_3:
      firstObject = v3;
    }

    else
    {
      v15 = [objc_getProperty(selfCopy v4];
      firstObject = [v15 firstObject];

      if (!firstObject)
      {
        firstObject = ne_log_obj();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v23 = "[NEIKEv2ChildSA shouldGenerateNewDHKeys]";
          _os_log_fault_impl(&dword_1BA83C000, firstObject, OS_LOG_TYPE_FAULT, "%s called with null proposal", buf, 0xCu);
        }

        selfCopy = 0;
        goto LABEL_19;
      }
    }

    kemProtocol2 = [(NEIKEv2ChildSAProposal *)firstObject kemProtocol];
    selfCopy = [kemProtocol2 method] != 0;

LABEL_19:
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isRekeying
{
  v3 = 1;
  if (!objc_getProperty(self, a2, 176, 1))
  {
    return objc_getProperty(self, v4, 184, 1) != 0;
  }

  return v3;
}

- (_BYTE)configuredInitiatorTrafficSelectors
{
  if (self)
  {
    v3 = self[9];
    Property = objc_getProperty(self, a2, 48, 1);
    if (v3)
    {
      [Property localTrafficSelectors];
    }

    else
    {
      [Property remoteTrafficSelectors];
    }
    self = ;
    v2 = vars8;
  }

  return self;
}

- (_BYTE)configuredResponderTrafficSelectors
{
  if (self)
  {
    v3 = self[9];
    Property = objc_getProperty(self, a2, 48, 1);
    if (v3)
    {
      [Property remoteTrafficSelectors];
    }

    else
    {
      [Property localTrafficSelectors];
    }
    self = ;
    v2 = vars8;
  }

  return self;
}

- (uint64_t)setInitiatorTrafficSelectors:(_BYTE *)selectors
{
  v3 = a2;
  v4 = v3;
  if (selectors)
  {
    if (selectors[9])
    {
      v5 = 64;
    }

    else
    {
      v5 = 72;
    }

    v7 = v3;
    objc_setProperty_atomic(selectors, v3, v3, v5);
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (_BYTE)initiatorTrafficSelectors
{
  if (self)
  {
    if (self[9])
    {
      v3 = 64;
    }

    else
    {
      v3 = 72;
    }

    self = objc_getProperty(self, a2, v3, 1);
    v2 = vars8;
  }

  return self;
}

- (uint64_t)setResponderTrafficSelectors:(_BYTE *)selectors
{
  v3 = a2;
  v4 = v3;
  if (selectors)
  {
    if (selectors[9])
    {
      v5 = 72;
    }

    else
    {
      v5 = 64;
    }

    v7 = v3;
    objc_setProperty_atomic(selectors, v3, v3, v5);
    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (_BYTE)responderTrafficSelectors
{
  if (self)
  {
    if (self[9])
    {
      v3 = 72;
    }

    else
    {
      v3 = 64;
    }

    self = objc_getProperty(self, a2, v3, 1);
    v2 = vars8;
  }

  return self;
}

- (id)preferredKEMProtocol
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_getProperty(self, a2, 96, 1))
  {
    kemProtocol2 = objc_getProperty(self, v3, 96, 1);
    goto LABEL_22;
  }

  v5 = objc_getProperty(self, v3, 184, 1);
  if (v5)
  {
    goto LABEL_4;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  firstObject = objc_getProperty(self, v6, 176, 1);
  v9 = [firstObject countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(firstObject);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        kemProtocol = [(NEIKEv2ChildSAProposal *)v13 kemProtocol];
        method = [kemProtocol method];

        if (method)
        {
          v8 = v13;
          goto LABEL_20;
        }
      }

      v10 = [firstObject countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v5 = objc_getProperty(self, v16, 56, 1);
  if (v5)
  {
LABEL_4:
    firstObject = v5;
    goto LABEL_5;
  }

  v17 = [objc_getProperty(self v6];
  firstObject = [v17 firstObject];

  if (firstObject)
  {
LABEL_5:
    v8 = firstObject;
LABEL_20:
    kemProtocol2 = [(NEIKEv2ChildSAProposal *)v8 kemProtocol];
    goto LABEL_21;
  }

  firstObject = ne_log_obj();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v25 = "[NEIKEv2ChildSA preferredKEMProtocol]";
    _os_log_fault_impl(&dword_1BA83C000, firstObject, OS_LOG_TYPE_FAULT, "%s called with null proposal", buf, 0xCu);
  }

  kemProtocol2 = 0;
LABEL_21:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return kemProtocol2;
}

void __50__NEIKEv2ChildSA_startSALifetimeTimerWithSession___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3 && (v3[11] & 1) == 0)
  {
    [v3 forceRekeyChild:WeakRetained[4]];
    if (objc_getProperty(WeakRetained, v5, 216, 1))
    {
      Property = objc_getProperty(WeakRetained, v6, 216, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(WeakRetained, v8, 0, 216);
    }

    v9 = objc_getProperty(v4, v6, 384, 1);
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
    objc_setProperty_atomic(WeakRetained, v11, v10, 216);

    LODWORD(v10) = objc_getProperty(WeakRetained, v12, 216, 1) == 0;
    v13 = ne_log_obj();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        *buf = 138412546;
        v31 = WeakRetained;
        v32 = 2048;
        v33 = v15;
        _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@: Setting Child SA hard lifetime timer for %llu seconds", buf, 0x16u);
      }

      v17 = objc_getProperty(WeakRetained, v16, 216, 1);
      v18 = 1000000000 * *(a1 + 48);
      v19 = v17;
      v20 = dispatch_time(0x8000000000000000, v18);
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);

      v22 = objc_getProperty(WeakRetained, v21, 216, 1);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __50__NEIKEv2ChildSA_startSALifetimeTimerWithSession___block_invoke_6;
      v27[3] = &unk_1E7F07B80;
      v23 = v22;
      objc_copyWeak(&v28, (a1 + 32));
      objc_copyWeak(&v29, (a1 + 40));
      dispatch_source_set_event_handler(v23, v27);

      v25 = objc_getProperty(WeakRetained, v24, 216, 1);
      dispatch_activate(v25);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&v28);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __50__NEIKEv2ChildSA_startSALifetimeTimerWithSession___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && (v2[11] & 1) == 0)
  {
    [v2 removeChild:WeakRetained[4]];
  }
}

- (id)ikeSA
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

- (uint64_t)generateLocalValuesForKEMProtocol:(void *)protocol
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (protocol)
  {
    v5 = objc_getProperty(protocol, v3, 112, 1);

    if (v5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v14 = 136315138;
        v15 = "[NEIKEv2ChildSA(Crypto) generateLocalValuesForKEMProtocol:]";
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null !self.currentKEHandler", &v14, 0xCu);
      }
    }

    else
    {
      v8 = +[NEIKEv2KeyExchangeHandler handlerForMethod:](NEIKEv2KeyExchangeHandler, [v4 method]);
      objc_setProperty_atomic(protocol, v9, v8, 112);

      v7 = 1;
      v11 = objc_getProperty(protocol, v10, 112, 1);

      if (v11)
      {
        goto LABEL_8;
      }

      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to get handler for KE method %@", &v14, 0xCu);
      }
    }
  }

  v7 = 0;
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)generateInitialValues
{
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained = objc_getProperty(WeakRetained, v3, 80, 1);
    }

    v5 = WeakRetained;
    nonceSize = [v5 nonceSize];

    if (nonceSize <= 0xF)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v16 = 67109120;
        LODWORD(v17) = nonceSize;
        _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "Invalid nonce size %u", &v16, 8u);
      }
    }

    else
    {
      v7 = [NEIKEv2Crypto createRandomWithSize:nonceSize];
      objc_setProperty_atomic(selfCopy, v8, v7, 80);

      if (![(NEIKEv2ChildSA *)selfCopy shouldGenerateNewDHKeys])
      {
        selfCopy = 1;
        goto LABEL_15;
      }

      preferredKEMProtocol = [(NEIKEv2ChildSA *)selfCopy preferredKEMProtocol];
      v12 = preferredKEMProtocol;
      if (preferredKEMProtocol && [preferredKEMProtocol method]!= 36 && [v12 method]!= 37)
      {
        selfCopy = [(NEIKEv2ChildSA *)selfCopy generateLocalValuesForKEMProtocol:v12];
LABEL_13:

        goto LABEL_15;
      }

      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = 138412290;
        v17 = v12;
        _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "KE method %@ is not Diffie-Hellman", &v16, 0xCu);
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (uint64_t)processCurrentKeyExchange
{
  selfCopy = self;
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = objc_getProperty(self, a2, 112, 1);
  }

  selfCopy2 = self;

  if (!selfCopy2)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
LABEL_11:

      v17 = *MEMORY[0x1E69E9840];
      return 0;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2ChildSA(Crypto) processCurrentKeyExchange]";
    v16 = "%s called with null self.currentKEHandler";
LABEL_14:
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, v16, &v18, 0xCu);
    goto LABEL_11;
  }

  v5 = objc_getProperty(selfCopy, v4, 104, 1);

  if (!v5)
  {
    v15 = ne_log_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v18 = 136315138;
    v19 = "[NEIKEv2ChildSA(Crypto) processCurrentKeyExchange]";
    v16 = "%s called with null self.remoteKeyExchangeData";
    goto LABEL_14;
  }

  v8 = objc_getProperty(selfCopy, v6, 104, 1);
  if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v7, 0, 104);
    Property = objc_getProperty(selfCopy, v9, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 processPeerPayload:v8];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)processPrimaryKeyExchange
{
  if (result)
  {
    v2 = result;
    result = [(NEIKEv2ChildSA *)result processCurrentKeyExchange];
    if (result)
    {
      v4 = objc_getProperty(v2, v3, 112, 1);
      v6 = v4;
      if (v4)
      {
        v7 = *(v4 + 3);
      }

      else
      {
        v7 = 0;
      }

      objc_setProperty_atomic(v2, v5, v7, 120);

      objc_setProperty_atomic(v2, v8, 0, 112);
      return 1;
    }
  }

  return result;
}

- (uint64_t)generateAllValues
{
  v122 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v93 = 0;
    goto LABEL_101;
  }

  WeakRetained = objc_loadWeakRetained((self + 24));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v121 = "[NEIKEv2ChildSA(Crypto) generateAllValues]";
      _os_log_fault_impl(&dword_1BA83C000, log, OS_LOG_TYPE_FAULT, "%s called with null ikeSA", buf, 0xCu);
    }

    v93 = 0;
    goto LABEL_100;
  }

  log = objc_getProperty(WeakRetained, v3, 96, 1);
  if (!log)
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v121 = "[NEIKEv2ChildSA(Crypto) generateAllValues]";
      _os_log_fault_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_FAULT, "%s called with null ikeProposal", buf, 0xCu);
    }

    goto LABEL_114;
  }

  v6 = objc_getProperty(self, v5, 56, 1);
  if (!v6)
  {
    v97 = ne_log_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v121 = "[NEIKEv2ChildSA(Crypto) generateAllValues]";
      _os_log_fault_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_FAULT, "%s called with null childProposal", buf, 0xCu);
    }

    v34 = 0;
LABEL_114:
    v93 = 0;
    goto LABEL_99;
  }

  v107 = v6;
  if (*(self + 9))
  {
    v8 = 80;
  }

  else
  {
    v8 = 88;
  }

  v10 = objc_getProperty(self, v7, v8, 1);
  if (*(self + 9))
  {
    v11 = 88;
  }

  else
  {
    v11 = 80;
  }

  v12 = objc_getProperty(self, v9, v11, 1);
  v14 = v12;
  if (v10 && v12)
  {
    initiatorNonce = v10;
  }

  else
  {
    initiatorNonce = [(NEIKEv2IKESA *)v4 initiatorNonce];

    initiatorNonce2 = [(NEIKEv2IKESA *)v4 initiatorNonce];

    if (!initiatorNonce2)
    {
      v106 = v14;
      v33 = ne_log_obj();
      v34 = v107;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v121 = "[NEIKEv2ChildSA(Crypto) generateAllValues]";
        _os_log_fault_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.initiatorNonce", buf, 0xCu);
      }

      v117 = 0;
      goto LABEL_97;
    }

    responderNonce = [(NEIKEv2IKESA *)v4 responderNonce];

    responderNonce2 = [(NEIKEv2IKESA *)v4 responderNonce];

    if (!responderNonce2)
    {
      v91 = ne_log_obj();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v121 = "[NEIKEv2ChildSA(Crypto) generateAllValues]";
        _os_log_fault_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_FAULT, "%s called with null ikeSA.responderNonce", buf, 0xCu);
      }

      v117 = 0;
      v34 = v107;

      goto LABEL_98;
    }

    v14 = responderNonce;
  }

  v23 = objc_getProperty(self, v13, 120, 1);
  if (v23)
  {
    v24 = v14;
    v25 = initiatorNonce;
    objc_setProperty_atomic(self, v22, 0, 120);
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v27 = objc_getProperty(self, v26, 136, 1);
    v28 = [v27 countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = *v114;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v114 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v30 += [*(*(&v113 + 1) + 8 * i) length];
        }

        v29 = [v27 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v29);
    }

    else
    {
      v30 = 0;
    }

    initiatorNonce = v25;
    v14 = v24;
  }

  else
  {
    v30 = 0;
  }

  v35 = [initiatorNonce length];
  v36 = [v14 length];
  v37 = v35 + v36 + [v23 length] + v30;
  v38 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataWithMaxCapacity:v37];
  v106 = v14;
  if (!v38)
  {
    v98 = ne_log_obj();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v121 = v37;
      _os_log_fault_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataWithMaxCapacity:%zu] failed", buf, 0xCu);
    }

    v39 = 0;
    v117 = 0;
    v34 = v107;
    goto LABEL_96;
  }

  v39 = v38;
  [(__CFData *)v38 appendData:v23];
  v105 = initiatorNonce;
  [(__CFData *)v39 appendData:initiatorNonce];
  [(__CFData *)v39 appendData:v14];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v41 = objc_getProperty(self, v40, 136, 1);
  v42 = [v41 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v110;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v110 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(__CFData *)v39 appendData:*(*(&v109 + 1) + 8 * j)];
      }

      v43 = [v41 countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v43);
  }

  objc_setProperty_atomic(self, v46, 0, 136);
  [(__CFData *)v39 bytes];
  [(__CFData *)v39 length];
  Hkdf = CCKDFParametersCreateHkdf();
  if (Hkdf)
  {
    v99 = Hkdf;
    v100 = ne_log_obj();
    v34 = v107;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v121) = v99;
      _os_log_fault_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_FAULT, "CCKDFParametersCreateHkdf failed %d", buf, 8u);
    }

    v117 = 0;
    initiatorNonce = v105;
    goto LABEL_96;
  }

  v34 = v107;
  if ([v107 protocol]== 3)
  {
    integrityProtocol = [(NEIKEv2ChildSAProposal *)v107 integrityProtocol];
    keyLength = [(NEIKEv2IntegrityProtocol *)integrityProtocol keyLength];

    encryptionProtocol = [(NEIKEv2ChildSAProposal *)v107 encryptionProtocol];
    keyMaterialLength = [(NEIKEv2EncryptionProtocol *)encryptionProtocol keyMaterialLength];
  }

  else
  {
    if ([v107 protocol]!= 240)
    {
      v90 = ne_log_obj();
      initiatorNonce = v105;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
      {
        v96 = NEIKEv2ProtocolIDCreateString([v107 protocol]);
        *buf = 138412290;
        v121 = v96;
        _os_log_fault_impl(&dword_1BA83C000, v90, OS_LOG_TYPE_FAULT, "Unsupported SA protocol %@", buf, 0xCu);
      }

      v117 = 0;
      goto LABEL_96;
    }

    encryptionProtocol = [(NEIKEv2IKESAProposal *)log prfProtocol];
    keyMaterialLength = [(NEIKEv2PRFProtocol *)encryptionProtocol length];
    keyLength = 0;
  }

  v55 = 2 * (keyLength + keyMaterialLength);
  v56 = [(NSMutableData *)MEMORY[0x1E695DF88] mutableSensitiveDataPrefilledWithMaxCapacity:v55];
  v104 = v56;
  if (!v56)
  {
    v101 = ne_log_obj();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v121) = v55;
      _os_log_fault_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_FAULT, "[NEMutableSensitiveData mutableSensitiveDataPrefilledWithMaxCapacity:%u] failed", buf, 8u);
    }

    v117 = 0;
    initiatorNonce = v105;
    goto LABEL_95;
  }

  v58 = v56;
  v103 = keyLength;
  v59 = objc_getProperty(v4, v57, 216, 1);
  prfProtocol = [(NEIKEv2IKESAProposal *)log prfProtocol];
  [(NEIKEv2PRFProtocol *)prfProtocol ccDigest];
  [v59 bytes];
  [v59 length];
  [(__CFData *)v58 mutableBytes];
  [(__CFData *)v58 length];
  v62 = CCHKDFExpand();

  CCKDFParametersDestroy();
  if (v62)
  {
    v102 = ne_log_obj();
    initiatorNonce = v105;
    if (os_log_type_enabled(v102, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v121) = v62;
      _os_log_fault_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_FAULT, "CCHKDFExpand failed %d", buf, 8u);
    }

    v117 = 0;
    goto LABEL_94;
  }

  bytes = [(__CFData *)v58 bytes];
  v65 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:bytes length:keyMaterialLength];
  if (*(self + 9))
  {
    v66 = 160;
  }

  else
  {
    v66 = 144;
  }

  objc_setProperty_atomic(self, v64, v65, v66);

  if (*(self + 9))
  {
    v68 = 160;
  }

  else
  {
    v68 = 144;
  }

  v69 = objc_getProperty(self, v67, v68, 1);

  if (!v69)
  {
    v89 = ne_log_obj();
    initiatorNonce = v105;
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
LABEL_88:

LABEL_93:
      v59 = 0;
      v39 = 0;
      v23 = 0;
      v117 = 0;
      goto LABEL_94;
    }

    *buf = 67109120;
    LODWORD(v121) = keyMaterialLength;
LABEL_103:
    _os_log_fault_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
    goto LABEL_88;
  }

  v70 = &bytes[keyMaterialLength];
  initiatorNonce = v105;
  if (v103)
  {
    v72 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v70 length:v103];
    if (*(self + 9))
    {
      v73 = 168;
    }

    else
    {
      v73 = 152;
    }

    objc_setProperty_atomic(self, v71, v72, v73);

    if (*(self + 9))
    {
      v75 = 168;
    }

    else
    {
      v75 = 152;
    }

    v76 = objc_getProperty(self, v74, v75, 1);

    if (!v76)
    {
      v92 = ne_log_obj();
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
LABEL_92:

        goto LABEL_93;
      }

      *buf = 67109120;
      LODWORD(v121) = v103;
LABEL_105:
      _os_log_fault_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_FAULT, "[NESensitiveData sensitiveDataWithBytes:length:%u] failed", buf, 8u);
      goto LABEL_92;
    }

    v70 += v103;
  }

  v78 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v70 length:keyMaterialLength];
  if (*(self + 9))
  {
    v79 = 144;
  }

  else
  {
    v79 = 160;
  }

  objc_setProperty_atomic(self, v77, v78, v79);

  if (*(self + 9))
  {
    v81 = 144;
  }

  else
  {
    v81 = 160;
  }

  v82 = objc_getProperty(self, v80, v81, 1);

  if (!v82)
  {
    v89 = ne_log_obj();
    if (!os_log_type_enabled(v89, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_88;
    }

    *buf = 67109120;
    LODWORD(v121) = keyMaterialLength;
    goto LABEL_103;
  }

  if (v103)
  {
    v84 = [(NSData *)MEMORY[0x1E695DEF0] sensitiveDataWithBytes:v103 length:?];
    v85 = (*(self + 9) & 1) != 0 ? 152 : 168;
    objc_setProperty_atomic(self, v83, v84, v85);

    v87 = (*(self + 9) & 1) != 0 ? 152 : 168;
    v88 = objc_getProperty(self, v86, v87, 1);

    if (!v88)
    {
      v92 = ne_log_obj();
      if (!os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_92;
      }

      *buf = 67109120;
      LODWORD(v121) = v103;
      goto LABEL_105;
    }
  }

  v59 = 0;
  v39 = 0;
  v23 = 0;
  v117 = 1;
LABEL_94:

  v34 = v107;
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:
  v93 = v117;
LABEL_99:

LABEL_100:
LABEL_101:
  v94 = *MEMORY[0x1E69E9840];
  return v93;
}

@end