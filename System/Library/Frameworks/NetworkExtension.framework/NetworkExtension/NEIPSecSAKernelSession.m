@interface NEIPSecSAKernelSession
- (BOOL)addLarvalSA:(id)a3;
- (BOOL)addSA:(id)a3;
- (BOOL)migrateSA:(id)a3;
- (BOOL)removeSA:(id)a3;
- (BOOL)updateSA:(id)a3;
- (NEIPSecSAKernelSession)initWithName:(id)a3 delegate:(id)a4 pfkeySocket:(int)a5;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)removeAllSAs;
- (void)setDelegateQueue:(id)a3;
- (void)startBlackholeDetection:(unsigned int)a3 incomingSA:(id)a4 outgoingSA:(id)a5;
- (void)startIdleTimeout:(unsigned int)a3 incomingSA:(id)a4 outgoingSA:(id)a5;
@end

@implementation NEIPSecSAKernelSession

- (void)dealloc
{
  [(NEIPSecSAKernelSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = NEIPSecSAKernelSession;
  [(NEIPSecSASession *)&v3 dealloc];
}

- (void)startBlackholeDetection:(unsigned int)a3 incomingSA:(id)a4 outgoingSA:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = *(a4 + 12);
  }

  else
  {
    v9 = 0;
  }

  v11 = v8;
  if (v8)
  {
    v10 = v8[12];
  }

  else
  {
    v10 = 0;
  }

  NEIPSecDBCreateStatsTimer(self->_internalSession, 1, a3, v9, v10);
}

- (void)startIdleTimeout:(unsigned int)a3 incomingSA:(id)a4 outgoingSA:(id)a5
{
  v8 = a5;
  if (a4)
  {
    v9 = *(a4 + 12);
  }

  else
  {
    v9 = 0;
  }

  v11 = v8;
  if (v8)
  {
    v10 = v8[12];
  }

  else
  {
    v10 = 0;
  }

  NEIPSecDBCreateStatsTimer(self->_internalSession, 0, a3, v9, v10);
}

- (BOOL)migrateSA:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEIPSecSAKernelSession;
  if (![(NEIPSecSASession *)&v15 migrateSA:v4])
  {
    v12 = ne_log_large_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ Super failed to migrate SA %@", buf, 0x16u);
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "Super failed to migrate SA", buf, 2u);
    }

    goto LABEL_13;
  }

  internalSession = self->_internalSession;
  if (v4)
  {
    v6 = v4[12];
    v7 = [(NEIPSecSA *)v4 createDictionary];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = NEIPSecDBMigrateSA(internalSession, v6, v7);

  v9 = ne_log_large_obj();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ Failed to migrate SA %@", buf, 0x16u);
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@ Migrated SA %@", buf, 0x16u);
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)removeSA:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEIPSecSAKernelSession;
  if (![(NEIPSecSASession *)&v13 removeSA:v4])
  {
    v8 = ne_log_large_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v9 = 0;
      goto LABEL_11;
    }

    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    v10 = "%@ Super failed to remove SA %@";
LABEL_13:
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v4[12];
  }

  else
  {
    v5 = 0;
  }

  v6 = NEIPSecDBDeleteSA(self->_internalSession, v5);
  v7 = ne_log_large_obj();
  v8 = v7;
  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    v10 = "%@ Failed to remove SA %@";
    goto LABEL_13;
  }

  v9 = 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@ Removed SA %@", buf, 0x16u);
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)addSA:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 direction] != 1)
  {
    if ([v4 direction] != 2)
    {
      v22 = ne_log_large_obj();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

        goto LABEL_33;
      }

      *buf = 138412546;
      v35 = self;
      v36 = 2112;
      *v37 = v4;
      v23 = "%@ Invalid SA direction for %@";
LABEL_36:
      _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x16u);
      goto LABEL_32;
    }

    v32.receiver = self;
    v32.super_class = NEIPSecSAKernelSession;
    if (![(NEIPSecSASession *)&v32 addSA:v4])
    {
      v24 = ne_log_large_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = self;
        v36 = 2112;
        *v37 = v4;
        _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "%@ Super failed to add SA %@", buf, 0x16u);
      }

      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      goto LABEL_29;
    }

    v31 = 0;
    internalSession = self->_internalSession;
    v11 = [(NEIPSecSA *)v4 createDictionary];
    v12 = NEIPSecDBAddLarvalSA(internalSession, v11, &v31);
    if (v4)
    {
      v4[12] = v12;

      if (v4[12])
      {
        v13 = [v4 spi];
        if (v13 == bswap32(v31))
        {
          v14 = self->_internalSession;
          v15 = v4[12];
          v16 = [(NEIPSecSA *)v4 createDictionary];
          v17 = NEIPSecDBUpdateSA(v14, v15, v16);

          v18 = ne_log_large_obj();
          v19 = v18;
          if (v17)
          {
            v9 = 1;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v35 = self;
              v36 = 2112;
              *v37 = v4;
              _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "%@ Updated SA %@", buf, 0x16u);
            }

            goto LABEL_40;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v35 = self;
            v36 = 2112;
            *v37 = v4;
            v25 = "%@ Failed to update SA %@";
            v26 = v19;
            v27 = 22;
LABEL_42:
            _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
            goto LABEL_39;
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
    }

    v19 = ne_log_large_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v30 = [v4 spi];
      *buf = 138413058;
      v35 = self;
      v36 = 1024;
      *v37 = v30;
      *&v37[4] = 1024;
      *&v37[6] = bswap32(v31);
      v38 = 2112;
      v39 = v4;
      v25 = "%@ Failed to allocate requested SPI %u (got %u) fo SA %@";
      v26 = v19;
      v27 = 34;
      goto LABEL_42;
    }

LABEL_39:
    v9 = 0;
LABEL_40:

    goto LABEL_34;
  }

  v33.receiver = self;
  v33.super_class = NEIPSecSAKernelSession;
  if (![(NEIPSecSASession *)&v33 addSA:v4])
  {
    v20 = ne_log_large_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v35 = self;
      v36 = 2112;
      *v37 = v4;
      _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%@ Super failed to add SA %@", buf, 0x16u);
    }

    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
LABEL_29:
    _os_log_fault_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_FAULT, "Super failed to add SA", buf, 2u);
LABEL_25:

LABEL_33:
    v9 = 0;
    goto LABEL_34;
  }

  v5 = self->_internalSession;
  v6 = [(NEIPSecSA *)v4 createDictionary];
  v7 = NEIPSecDBAddSA(v5, v6);
  if (!v4)
  {

    goto LABEL_31;
  }

  v4[12] = v7;

  if (!v4[12])
  {
LABEL_31:
    v22 = ne_log_large_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 138412546;
    v35 = self;
    v36 = 2112;
    *v37 = v4;
    v23 = "%@ Failed to add SA %@";
    goto LABEL_36;
  }

  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v35 = self;
    v36 = 2112;
    *v37 = v4;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@ Added SA %@", buf, 0x16u);
  }

  v9 = 1;
LABEL_34:

  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateSA:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 direction] != 2)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[NEIPSecSAKernelSession updateSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null (securityAssociation.direction == NEIPSecSADirectionInbound)", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v15.receiver = self;
  v15.super_class = NEIPSecSAKernelSession;
  if (![(NEIPSecSASession *)&v15 updateSA:v4])
  {
    v10 = ne_log_large_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }

    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    v12 = "%@ Super failed to update SA %@";
LABEL_14:
    _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    goto LABEL_11;
  }

  internalSession = self->_internalSession;
  if (v4)
  {
    v6 = v4[12];
    v7 = [(NEIPSecSA *)v4 createDictionary];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = NEIPSecDBUpdateSA(internalSession, v6, v7);

  v9 = ne_log_large_obj();
  v10 = v9;
  if (!v8)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    v12 = "%@ Failed to update SA %@";
    goto LABEL_14;
  }

  v11 = 1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_INFO, "%@ Updated SA %@", buf, 0x16u);
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)addLarvalSA:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 direction] != 2)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v17 = "[NEIPSecSAKernelSession addLarvalSA:]";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null (securityAssociation.direction == NEIPSecSADirectionInbound)", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = 0;
  internalSession = self->_internalSession;
  v6 = [(NEIPSecSA *)v4 createDictionary];
  v7 = NEIPSecDBAddLarvalSA(internalSession, v6, &v15);
  if (!v4)
  {

    goto LABEL_11;
  }

  v4[12] = v7;

  v4[5] = bswap32(v15);
  if (!v4[12])
  {
LABEL_11:
    v12 = ne_log_large_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to add larval SA %@", buf, 0x16u);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%@ Added larval SA %@", buf, 0x16u);
  }

  v9 = 1;
  [objc_getProperty(self v10];
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = NEIPSecSAKernelSession;
  [(NEIPSecSASession *)&v5 invalidate];
  internalSession = self->_internalSession;
  if (internalSession)
  {
    NEIPSecDBInvalidateSession(internalSession);
    v4 = self->_internalSession;
    if (v4)
    {
      CFRelease(v4);
      self->_internalSession = 0;
    }
  }
}

- (void)removeAllSAs
{
  v4.receiver = self;
  v4.super_class = NEIPSecSAKernelSession;
  [(NEIPSecSASession *)&v4 removeAllSAs];
  internalSession = self->_internalSession;
  if (internalSession)
  {
    NEIPSecDBFlushAll(internalSession);
  }
}

- (void)setDelegateQueue:(id)a3
{
  v5.receiver = self;
  v5.super_class = NEIPSecSAKernelSession;
  v4 = a3;
  [(NEIPSecSASession *)&v5 setDelegateQueue:v4];
  NEIPSecDBSetDispatchQueue(self->_internalSession, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    uniqueIndex = self->super._uniqueIndex;
  }

  else
  {
    uniqueIndex = 0;
  }

  v5 = [(NEIPSecSASession *)self name];
  v6 = [v3 initWithFormat:@"KernelSASession[%llu, %@]", uniqueIndex, v5];

  return v6;
}

- (NEIPSecSAKernelSession)initWithName:(id)a3 delegate:(id)a4 pfkeySocket:(int)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = NEIPSecSAKernelSession;
  v9 = [(NEIPSecSASession *)&v16 initWithName:v8 delegate:a4];
  if (!v9)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[super initWithName:delegate] failed", buf, 2u);
    }

    goto LABEL_7;
  }

  v10 = NEIPSecDBCreateSessionWithSocket(*MEMORY[0x1E695E480], v8, NEIPSecSAKernelSessionReceiveMessage, v9, a5);
  v9->_internalSession = v10;
  if (!v10)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v18 = v8;
      v19 = 1024;
      v20 = a5;
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "NEIPSecDBCreateSessionWithSocket(%@, %d) failed", buf, 0x12u);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v9;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end