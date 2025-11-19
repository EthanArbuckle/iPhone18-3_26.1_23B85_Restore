@interface AVAudioSessionPortDescription
+ (id)privateCreateArray:(id)a3 owningSession:(id)a4;
- (AVAudioSessionDataSourceDescription)preferredDataSource;
- (AVAudioSessionDataSourceDescription)selectedDataSource;
- (AVAudioSessionPortDescription)initWithRawPortDescriptionXPC:(id)a3 owningSession:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPort:(id)a3 compareStrict:(BOOL)a4;
- (BOOL)setPreferredDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError;
- (NSArray)channels;
- (NSArray)dataSources;
- (id)description;
- (unint64_t)hash;
- (void)configureChannelsAndDataSources:(id)a3;
- (void)dealloc;
@end

@implementation AVAudioSessionPortDescription

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    PortDescriptionImpl::~PortDescriptionImpl(impl);
    MEMORY[0x1B26ED410]();
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioSessionPortDescription;
  [(AVAudioSessionPortDescription *)&v4 dealloc];
}

- (NSArray)dataSources
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 10);
  objc_sync_exit(v2);

  return v3;
}

- (id)description
{
  impl = self->_impl;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(impl + 2);
  v8 = *(impl + 3);
  v9 = *(impl + 4);
  v10 = [*(impl + 11) dataSourceName];
  v11 = [v4 stringWithFormat:@"<%@: %p, type = %@ name = %@; UID = %@; selectedDataSource = %@>", v6, self, v7, v8, v9, v10];;

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionPortDescription *)self isEqualToPort:v5 compareStrict:1];
  }

  return v6;
}

- (BOOL)isEqualToPort:(id)a3 compareStrict:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self == v6)
  {
    goto LABEL_19;
  }

  v7 = [(AVAudioSessionPortDescription *)self UID];
  v8 = [(AVAudioSessionPortDescription *)v6 UID];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = [(AVAudioSessionPortDescription *)self portType];
  v11 = [(AVAudioSessionPortDescription *)v6 portType];
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = [(AVAudioSessionPortDescription *)self portName];
  v14 = [(AVAudioSessionPortDescription *)v6 portName];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    v16 = [(AVAudioSessionPortDescription *)self channels];
    v17 = [(AVAudioSessionPortDescription *)v6 channels];
    v18 = (v16 == 0) ^ (v17 != 0);

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

    v19 = [(AVAudioSessionPortDescription *)self channels];
    if (v19)
    {
      v20 = [(AVAudioSessionPortDescription *)self channels];
      v21 = [(AVAudioSessionPortDescription *)v6 channels];
      v22 = [v20 isEqualToArray:v21];

      if ((v22 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v23 = [(AVAudioSessionPortDescription *)self dataSources];
    if (v23)
    {
    }

    else
    {
      v24 = [(AVAudioSessionPortDescription *)v6 dataSources];

      if (!v24)
      {
        goto LABEL_19;
      }
    }

    v25 = [(AVAudioSessionPortDescription *)self dataSources];
    if (v25)
    {
      v26 = [(AVAudioSessionPortDescription *)v6 dataSources];

      if (!v26)
      {
        goto LABEL_20;
      }
    }

    v27 = [(AVAudioSessionPortDescription *)self dataSources];
    v28 = [(AVAudioSessionPortDescription *)v6 dataSources];
    v29 = [v27 isEqualToArray:v28];

    if ((v29 & 1) == 0)
    {
      goto LABEL_20;
    }

    v30 = [(AVAudioSessionPortDescription *)self selectedDataSource];
    if (v30)
    {

      goto LABEL_18;
    }

    v31 = [(AVAudioSessionPortDescription *)v6 selectedDataSource];

    if (v31)
    {
LABEL_18:
      v32 = [(AVAudioSessionPortDescription *)self selectedDataSource];
      v33 = [(AVAudioSessionPortDescription *)v6 selectedDataSource];
      v34 = [v32 isEqual:v33];

      if (v34)
      {
        goto LABEL_19;
      }

LABEL_20:
      v35 = 0;
      goto LABEL_21;
    }
  }

LABEL_19:
  v35 = 1;
LABEL_21:

  return v35;
}

- (unint64_t)hash
{
  v2 = [(AVAudioSessionPortDescription *)self UID];
  v3 = [v2 hash];

  return v3;
}

- (NSArray)channels
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 9);
  objc_sync_exit(v2);

  return v3;
}

- (AVAudioSessionDataSourceDescription)selectedDataSource
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2->_impl + 11);
  objc_sync_exit(v2);

  return v3;
}

- (AVAudioSessionDataSourceDescription)preferredDataSource
{
  v21 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  WeakRetained = objc_loadWeakRetained(impl);
  v5 = copyDataSourcePreference([WeakRetained opaqueSessionID], *(impl + 1));

  if (v5)
  {
    v6 = self;
    objc_sync_enter(v6);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = *(impl + 10);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 dataSourceID];
          v13 = [v5 isEqualToNumber:v12];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)setPreferredDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = dataSource;
  v7 = [(AVAudioSessionPortDescription *)self privateGetImplementation];
  p_var0 = &v7->var0;
  if (v6)
  {
    v9 = *MEMORY[0x1E69B06A8];
    v28[0] = v9;
    v10 = [(AVAudioSessionPortDescription *)self privateGetID];
    v29[0] = v10;
    v11 = *MEMORY[0x1E69B0698];
    v28[1] = v11;
    v12 = [(AVAudioSessionDataSourceDescription *)v6 dataSourceID];
    v29[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v14 = MEMORY[0x1E69B0240];
  }

  else
  {
    if (!v7->var16)
    {
      v19 = 1;
      goto LABEL_12;
    }

    v9 = *MEMORY[0x1E69B06A8];
    v26[0] = v9;
    v10 = [(AVAudioSessionPortDescription *)self privateGetID];
    v27[0] = v10;
    v11 = *MEMORY[0x1E69B0698];
    v26[1] = v11;
    v12 = [p_var0[12] dataSourceID];
    v27[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v14 = MEMORY[0x1E69AFED8];
  }

  v15 = *v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v13];
  objc_storeStrong(p_var0 + 12, dataSource);
  WeakRetained = objc_loadWeakRetained(p_var0);
  AVAudioSessionGetXPCConnection([WeakRetained opaqueSessionID], &v24);

  v22 = v24;
  v23 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = objc_loadWeakRetained(p_var0);
  avas::client::SetPropertyXPC(&v22, [v18 opaqueSessionID], v15, v16, 1);

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v19 = FormatNSErrorForReturn();
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_12:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (AVAudioSessionPortDescription)initWithRawPortDescriptionXPC:(id)a3 owningSession:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AVAudioSessionPortDescription;
  if ([(AVAudioSessionPortDescription *)&v11 init])
  {
    operator new();
  }

  v8 = 0;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)configureChannelsAndDataSources:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v4 = [(AVAudioSessionPortDescription *)self privateGetImplementation];
  v25 = *MEMORY[0x1E69B0650];
  v5 = [v31 objectForKey:?];
  v28 = *MEMORY[0x1E69B05D8];
  v6 = [v31 objectForKey:?];
  v7 = self;
  objc_sync_enter(v7);
  v27 = v6;
  v8 = [AVAudioSessionChannelDescription privateCreateArray:v6 portUID:v4->var4];
  var13 = v4->var13;
  v4->var13 = v8;

  objc_sync_exit(v7);
  v10 = *MEMORY[0x1E69B05F0];
  v30 = *MEMORY[0x1E69B0600];
  v26 = v10;
  v32 = [v31 objectForKey:v10];
  WeakRetained = objc_loadWeakRetained(&v4->var0);
  if ([WeakRetained allowAllBuiltInDataSources])
  {
    v33 = [v31 objectForKey:v30];
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count") + objc_msgSend(v32, "count")}];
  [v34 addObjectsFromArray:v32];
  if (v33)
  {
    [v34 addObjectsFromArray:v33];
  }

  if ([v34 count] == 1)
  {

    v34 = 0;
  }

  obj = v7;
  objc_sync_enter(obj);
  var1 = v4->var1;
  v13 = objc_loadWeakRetained(&v4->var0);
  v14 = +[AVAudioSessionDataSourceDescription privateCreateArray:portID:sessionID:](AVAudioSessionDataSourceDescription, "privateCreateArray:portID:sessionID:", v34, var1, [v13 opaqueSessionID]);
  var14 = v4->var14;
  v4->var14 = v14;

  var15 = v4->var15;
  v4->var15 = 0;

  if (v5)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v4->var14;
    v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = *v36;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v21 dataSourceID];
          v23 = [v22 isEqualToNumber:v5];

          if (v23)
          {
            objc_storeStrong(&v4->var15, v21);
            goto LABEL_19;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  objc_sync_exit(obj);

  PortDescriptionImpl::ValidateRequiredFields(v4);
  v24 = *MEMORY[0x1E69E9840];
}

+ (id)privateCreateArray:(id)a3 owningSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 count];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [v5 objectAtIndex:i];
        v11 = [[AVAudioSessionPortDescription alloc] initWithRawPortDescriptionXPC:v10 owningSession:v6];
        if (v11)
        {
          [v8 insertObject:v11 atIndex:i];
        }
      }
    }

    v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v12;
}

@end