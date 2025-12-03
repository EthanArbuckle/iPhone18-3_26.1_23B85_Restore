@interface MIDIUMPEndpointManager
+ (MIDIUMPEndpointManager)sharedInstance;
- (BOOL)postNotificationName:(id)name endpoint:(id)endpoint functionBlock:(id)block;
- (BOOL)removeEndpoint:(unsigned int)endpoint;
- (BOOL)removeFunctionBlock:(unsigned int)block;
- (MIDIUMPEndpointManager)init;
- (NSArray)UMPEndpoints;
- (id)findEndpoint:(unsigned int)endpoint;
- (id)findFunctionBlock:(unsigned int)block;
- (void)addEndpoint:(id)endpoint;
- (void)addFunctionBlock:(id)block;
- (void)updateEndpoint:(unsigned int)endpoint description:(id)description;
- (void)updateFunctionBlock:(unsigned int)block description:(id)description;
@end

@implementation MIDIUMPEndpointManager

- (void)updateEndpoint:(unsigned int)endpoint description:(id)description
{
  v4 = *&endpoint;
  descriptionCopy = description;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v6 = [(MIDIUMPEndpointManager *)self findEndpoint:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 deserialize:descriptionCopy];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    if (v8)
    {
      [(MIDIUMPEndpointManager *)self postNotificationName:@"MIDIUMPEndpointWasUpdatedNotification" endpoint:v7 functionBlock:0];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }
}

- (BOOL)removeEndpoint:(unsigned int)endpoint
{
  v3 = *&endpoint;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v5 = [(MIDIUMPEndpointManager *)self findEndpoint:v3];
  if (v5)
  {
    [(NSMutableArray *)self->_endpoints removeObject:v5];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    [(MIDIUMPEndpointManager *)self postNotificationName:@"MIDIUMPEndpointWasRemovedNotification" endpoint:v5 functionBlock:0];
  }

  else
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }

  return v5 != 0;
}

- (void)addEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [endpointCopy isMine];
  v4 = -[MIDIUMPEndpointManager findEndpoint:](self, "findEndpoint:", [endpointCopy objectRef]);

  if (v4)
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }

  else
  {
    [(NSMutableArray *)self->_endpoints addObject:endpointCopy];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    [(MIDIUMPEndpointManager *)self postNotificationName:@"MIDIUMPEndpointWasAddedNotification" endpoint:endpointCopy functionBlock:0];
  }
}

- (id)findEndpoint:(unsigned int)endpoint
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_endpoints;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 objectRef] == endpoint)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)updateFunctionBlock:(unsigned int)block description:(id)description
{
  v4 = *&block;
  descriptionCopy = description;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v6 = [(MIDIUMPEndpointManager *)self findFunctionBlock:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 deserialize:descriptionCopy];
    os_unfair_lock_unlock(&self->mMutex.m_lock);
    if (v8)
    {
      uMPEndpoint = [v7 UMPEndpoint];
      [(MIDIUMPEndpointManager *)self postNotificationName:@"MIDIUMPFunctionBlockWasUpdatedNotification" endpoint:uMPEndpoint functionBlock:v7];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->mMutex.m_lock);
  }
}

- (BOOL)removeFunctionBlock:(unsigned int)block
{
  v3 = *&block;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v5 = [(MIDIUMPEndpointManager *)self findFunctionBlock:v3];
  if (v5)
  {
    [(NSMutableArray *)self->_functionBlocks removeObject:v5];
  }

  os_unfair_lock_unlock(&self->mMutex.m_lock);
  return v5 != 0;
}

- (void)addFunctionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->mMutex.m_lock);
  [blockCopy isMine];
  v4 = -[MIDIUMPEndpointManager findFunctionBlock:](self, "findFunctionBlock:", [blockCopy objectRef]);

  if (!v4)
  {
    [(NSMutableArray *)self->_functionBlocks addObject:blockCopy];
  }

  os_unfair_lock_unlock(&self->mMutex.m_lock);
}

- (id)findFunctionBlock:(unsigned int)block
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_functionBlocks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 objectRef] == block)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)postNotificationName:(id)name endpoint:(id)endpoint functionBlock:(id)block
{
  nameCopy = name;
  endpointCopy = endpoint;
  blockCopy = block;
  if (endpointCopy | blockCopy)
  {
    v11 = objc_opt_new();
    v12 = v11;
    if (endpointCopy)
    {
      [v11 setValue:endpointCopy forKey:@"MIDIUMPEndpointObjectKey"];
    }

    if (blockCopy)
    {
      [v12 setValue:blockCopy forKey:@"MIDIUMPFunctionBlockObjectKey"];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:nameCopy object:self userInfo:v12];
  }

  return (endpointCopy | blockCopy) != 0;
}

- (NSArray)UMPEndpoints
{
  os_unfair_lock_lock(&self->mMutex.m_lock);
  v3 = [(NSMutableArray *)self->_endpoints copy];
  os_unfair_lock_unlock(&self->mMutex.m_lock);

  return v3;
}

- (MIDIUMPEndpointManager)init
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MIDIUMPEndpointManager;
  v3 = [(MIDIUMPEndpointManager *)&v20 init];
  if (v3)
  {
    v19 = 0;
    if (!UMPCIGlobalState(&v19, v2))
    {
      v4 = [v19 objectForKey:@"ump_endpoints"];
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            v11 = [MIDIUMPEndpoint alloc];
            v12 = [(MIDIUMPEndpoint *)v11 initWithDescription:v10, v15];
            if ([(MIDIUMPEndpoint *)v12 isMine])
            {
              [(NSMutableArray *)v5 addObject:v12];
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
        }

        while (v7);
      }

      endpoints = v3->_endpoints;
      v3->_endpoints = v5;
    }
  }

  return v3;
}

+ (MIDIUMPEndpointManager)sharedInstance
{
  if (+[MIDIUMPEndpointManager sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[MIDIUMPEndpointManager sharedInstance]::onceToken, &__block_literal_global_1115);
  }

  v3 = +[MIDIUMPEndpointManager sharedInstance]::theInstance;

  return v3;
}

uint64_t __40__MIDIUMPEndpointManager_sharedInstance__block_invoke(UMPCIClients *a1)
{
  UMPCIClients::instance(a1);
  +[MIDIUMPEndpointManager sharedInstance]::theInstance = objc_alloc_init(MIDIUMPEndpointManager);

  return MEMORY[0x2821F96F8]();
}

@end