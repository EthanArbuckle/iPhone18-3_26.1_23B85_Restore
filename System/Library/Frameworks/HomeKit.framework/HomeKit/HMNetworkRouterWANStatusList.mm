@interface HMNetworkRouterWANStatusList
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMNetworkRouterWANStatusList)init;
- (HMNetworkRouterWANStatusList)initWithStatuses:(id)statuses;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializeWithError:(id *)error;
@end

@implementation HMNetworkRouterWANStatusList

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  statuses = [(HMNetworkRouterWANStatusList *)self statuses];
  v4 = [v2 stringWithFormat:@"<HMNetworkRouterWANStatusList statuses=%@>", statuses];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      statuses = [(HMNetworkRouterWANStatusList *)self statuses];
      statuses2 = [(HMNetworkRouterWANStatusList *)v5 statuses];
      if (statuses == statuses2)
      {
        v10 = 1;
      }

      else
      {
        statuses3 = [(HMNetworkRouterWANStatusList *)self statuses];
        statuses4 = [(HMNetworkRouterWANStatusList *)v5 statuses];
        v10 = [statuses3 isEqual:statuses4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMNetworkRouterWANStatusList allocWithZone:zone];
  statuses = [(HMNetworkRouterWANStatusList *)self statuses];
  v6 = [(HMNetworkRouterWANStatusList *)v4 initWithStatuses:statuses];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  TLV8BufferInit();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  statuses = [(HMNetworkRouterWANStatusList *)self statuses];
  v6 = [statuses countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(statuses);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      if (v8)
      {
        v12 = TLV8BufferAppend();
        if (v12)
        {
          break;
        }
      }

      v21 = 0;
      v13 = [v11 serializeWithError:&v21];
      v14 = v21;
      if (v14)
      {
        v17 = v14;

        if (error)
        {
          v18 = v17;
          v16 = 0;
          *error = v17;
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      [v13 bytes];
      [v13 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
        goto LABEL_16;
      }

      ++v10;
      v8 = 1;
      if (v7 == v10)
      {
        v7 = [statuses countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v15 = v12;
LABEL_16:

    if (error)
    {
      _HMErrorFromOSStatus(v15);
      v17 = 0;
      *error = v16 = 0;
      goto LABEL_20;
    }

    v17 = 0;
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

LABEL_12:

  v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 length:?];
  v17 = 0;
LABEL_20:
  TLV8BufferFree();

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    *error = 0;
  }

  bytes = [dataCopy bytes];
  v9 = [v7 length];
  array = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    v11 = 0;
    v12 = bytes + v9;
    while (1)
    {
      v27 = 0;
      v25 = 0;
      v26 = 0;
      v23 = 0;
      v24 = 0;
      Next = TLV8GetNext();
      if (Next || (Next = TLV8GetOrCopyCoalesced(), Next))
      {
        if (error)
        {
          _HMErrorFromOSStatus(Next);
          *error = v17 = 0;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (!v26)
      {
        break;
      }

      if (v27 == 1)
      {
        v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v22 = v11;
        v15 = [HMNetworkRouterWANStatus parsedFromData:v14 error:&v22];
        v16 = v22;

        if (!v16)
        {
          [array addObject:v15];
        }

        v11 = v16;
      }

      if (v25)
      {
        free(v25);
      }

      if (v23 == v12)
      {
        goto LABEL_19;
      }
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A2978] code:3 userInfo:0];

    v11 = v18;
LABEL_19:
    if (!v11)
    {
      goto LABEL_22;
    }

    if (error)
    {
      v19 = v11;
      v17 = 0;
      *error = v11;
      goto LABEL_27;
    }

LABEL_26:
    v17 = 0;
  }

  else
  {
LABEL_22:
    if ([array count])
    {
      v20 = array;
    }

    else
    {
      v20 = 0;
    }

    [(HMNetworkRouterWANStatusList *)self setStatuses:v20];
    v11 = 0;
    v17 = 1;
  }

LABEL_27:

  return v17;
}

- (HMNetworkRouterWANStatusList)initWithStatuses:(id)statuses
{
  statusesCopy = statuses;
  v9.receiver = self;
  v9.super_class = HMNetworkRouterWANStatusList;
  v6 = [(HMNetworkRouterWANStatusList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statuses, statuses);
  }

  return v7;
}

- (HMNetworkRouterWANStatusList)init
{
  v3.receiver = self;
  v3.super_class = HMNetworkRouterWANStatusList;
  return [(HMNetworkRouterWANStatusList *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMNetworkRouterWANStatusList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMNetworkRouterWANStatusList *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end