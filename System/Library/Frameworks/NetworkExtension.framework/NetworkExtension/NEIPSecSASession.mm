@interface NEIPSecSASession
- (BOOL)addLarvalSA:(id)a;
- (BOOL)addSA:(id)a;
- (BOOL)migrateSA:(id)a;
- (BOOL)removeSA:(id)a;
- (BOOL)updateSA:(id)a;
- (NEIPSecSASession)initWithName:(id)name delegate:(id)delegate;
- (NEIPSecSASessionDelegate)delegate;
- (NSArray)securityAssociations;
- (OS_dispatch_queue)delegateQueue;
- (id)copyEmptySASession;
- (id)description;
- (void)dealloc;
- (void)removeAllSAs;
- (void)setDelegateQueue:(id)queue;
@end

@implementation NEIPSecSASession

- (NEIPSecSASessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)migrateSA:(id)a
{
  aCopy = a;
  if (!self)
  {
    if ([0 containsObject:aCopy])
    {
      [0 removeObject:aCopy];
      Property = 0;
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![objc_getProperty(self v4])
  {
    goto LABEL_7;
  }

  [objc_getProperty(self v6];
  Property = objc_getProperty(self, v7, 24, 1);
LABEL_4:
  [Property addObject:aCopy];
  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)removeSA:(id)a
{
  aCopy = a;
  if (self)
  {
    if ([objc_getProperty(self v4])
    {
      v7 = 1;
      [objc_getProperty(self v6];
    }

    else
    {
      v7 = 0;
    }

    if ([objc_getProperty(self v6])
    {
      Property = objc_getProperty(self, v8, 32, 1);
LABEL_7:
      [Property removeObject:aCopy];
      v7 = 1;
    }
  }

  else
  {
    if ([0 containsObject:aCopy])
    {
      [0 removeObject:aCopy];
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    v11 = [0 containsObject:aCopy];
    Property = 0;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  [aCopy invalidate];

  return v7;
}

- (BOOL)addSA:(id)a
{
  aCopy = a;
  if (aCopy)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 24, 1);
    }

    else
    {
      Property = 0;
    }

    [Property addObject:aCopy];
  }

  return aCopy != 0;
}

- (BOOL)updateSA:(id)a
{
  aCopy = a;
  if (!self)
  {
    if ([0 containsObject:aCopy])
    {
      [0 addObject:aCopy];
      Property = 0;
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![objc_getProperty(self v4])
  {
    goto LABEL_7;
  }

  [objc_getProperty(self v6];
  Property = objc_getProperty(self, v7, 32, 1);
LABEL_4:
  [Property removeObject:aCopy];
  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)addLarvalSA:(id)a
{
  v4.receiver = self;
  v4.super_class = NEIPSecSASession;
  [(NEIPSecSASession *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)removeAllSAs
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@ Removing all SAs", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v26 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  if (self)
  {
    [objc_getProperty(self v11];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = objc_getProperty(self, v12, 24, 1);
  }

  else
  {
    [0 removeAllObjects];
    v13 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v22 + 1) + 8 * v18++) invalidate];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  if (self)
  {
    v20 = objc_getProperty(self, v19, 24, 1);
  }

  else
  {
    v20 = 0;
  }

  [v20 removeAllObjects];
  v21 = *MEMORY[0x1E69E9840];
}

- (OS_dispatch_queue)delegateQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (void)setDelegateQueue:(id)queue
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, queue, 48);
  }
}

- (void)dealloc
{
  [(NEIPSecSASession *)self invalidate];
  v3.receiver = self;
  v3.super_class = NEIPSecSASession;
  [(NEIPSecSASession *)&v3 dealloc];
}

- (id)copyEmptySASession
{
  v3 = objc_alloc(objc_opt_class());
  name = [(NEIPSecSASession *)self name];
  delegate = [(NEIPSecSASession *)self delegate];
  v6 = [v3 initWithName:name delegate:delegate];

  return v6;
}

- (NSArray)securityAssociations
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    uniqueIndex = self->_uniqueIndex;
  }

  else
  {
    uniqueIndex = 0;
  }

  name = [(NEIPSecSASession *)self name];
  v6 = [v3 initWithFormat:@"SASession[%llu, %@]", uniqueIndex, name];

  return v6;
}

- (NEIPSecSASession)initWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = NEIPSecSASession;
  v8 = [(NEIPSecSASession *)&v19 init];
  v10 = v8;
  if (v8)
  {
    v8->_uniqueIndex = atomic_fetch_add_explicit(&sNEIPSecSASessionIndex, 1uLL, memory_order_relaxed);
    objc_setProperty_atomic(v8, v9, nameCopy, 8);
    [(NEIPSecSASession *)v10 setDelegate:delegateCopy];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_setProperty_atomic(v10, v12, v11, 24);

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_setProperty_atomic(v10, v14, v13, 32);

    v15 = v10;
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *v18 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_FAULT, "[super init] failed", v18, 2u);
    }
  }

  return v10;
}

@end