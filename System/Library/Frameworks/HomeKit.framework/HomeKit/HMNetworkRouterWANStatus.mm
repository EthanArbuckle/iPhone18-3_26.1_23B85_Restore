@interface HMNetworkRouterWANStatus
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMNetworkRouterWANStatus)init;
- (HMNetworkRouterWANStatus)initWithIdentifier:(id)identifier status:(id)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializeWithError:(id *)error;
@end

@implementation HMNetworkRouterWANStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(HMNetworkRouterWANStatus *)self identifier];
  status = [(HMNetworkRouterWANStatus *)self status];
  v6 = [v3 stringWithFormat:@"<HMNetworkRouterWANStatus identifier=%@, status=%@>", identifier, status];

  return v6;
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
      v6 = equalCopy;
      identifier = [(HMNetworkRouterWANStatus *)self identifier];
      identifier2 = [(HMNetworkRouterWANStatus *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(HMNetworkRouterWANStatus *)self identifier];
        identifier4 = [(HMNetworkRouterWANStatus *)v6 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = identifier3;
      }

      status = [(HMNetworkRouterWANStatus *)self status];
      status2 = [(HMNetworkRouterWANStatus *)v6 status];
      if (status == status2)
      {
        v10 = 1;
      }

      else
      {
        status3 = [(HMNetworkRouterWANStatus *)self status];
        status4 = [(HMNetworkRouterWANStatus *)v6 status];
        v10 = [status3 isEqual:status4];
      }

      identifier3 = v16;
      if (identifier == identifier2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMNetworkRouterWANStatus allocWithZone:zone];
  identifier = [(HMNetworkRouterWANStatus *)self identifier];
  status = [(HMNetworkRouterWANStatus *)self status];
  v7 = [(HMNetworkRouterWANStatus *)v4 initWithIdentifier:identifier status:status];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  TLV8BufferInit();
  identifier = [(HMNetworkRouterWANStatus *)self identifier];

  if (identifier)
  {
    identifier2 = [(HMNetworkRouterWANStatus *)self identifier];
    v17 = 0;
    v7 = [identifier2 serializeWithError:&v17];
    v8 = v17;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (error)
      {
        _HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  status = [(HMNetworkRouterWANStatus *)self status];

  if (!status)
  {
LABEL_11:
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  status2 = [(HMNetworkRouterWANStatus *)self status];
  v16 = 0;
  v7 = [status2 serializeWithError:&v16];
  v8 = v16;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v14 = *MEMORY[0x1E69E9840];

  return v13;
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
  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  selfCopy = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v9;
  do
  {
    v32 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    Next = TLV8GetNext();
    if (Next || (Next = TLV8GetOrCopyCoalesced(), Next))
    {
      if (error)
      {
        _HMErrorFromOSStatus(Next);
        *error = v22 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (!v31)
    {
      v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A2978] code:3 userInfo:0];

      v12 = v23;
      if (v23)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (v32 == 2)
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      HAPTLVUnsignedNumberValueClass = getHAPTLVUnsignedNumberValueClass();
      v26 = v12;
      v17 = &v26;
      [HAPTLVUnsignedNumberValueClass parsedFromData:v15 error:&v26];
      v10 = v18 = v10;
    }

    else
    {
      if (v32 != 1)
      {
        goto LABEL_13;
      }

      v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v16 = getHAPTLVUnsignedNumberValueClass();
      v27 = v12;
      v17 = &v27;
      [v16 parsedFromData:v15 error:&v27];
      v11 = v18 = v11;
    }

    v20 = *v17;

    v12 = v20;
LABEL_13:
    if (v30)
    {
      free(v30);
    }
  }

  while (v28 != v13);
  if (v12)
  {
LABEL_17:
    if (error)
    {
      v21 = v12;
      v22 = 0;
      *error = v12;
      goto LABEL_26;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = selfCopy;
LABEL_25:
  [(HMNetworkRouterWANStatus *)self setIdentifier:v11, selfCopy];
  [(HMNetworkRouterWANStatus *)self setStatus:v10];
  v12 = 0;
  v22 = 1;
LABEL_26:

  return v22;
}

- (HMNetworkRouterWANStatus)initWithIdentifier:(id)identifier status:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  v12.receiver = self;
  v12.super_class = HMNetworkRouterWANStatus;
  v9 = [(HMNetworkRouterWANStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_status, status);
  }

  return v10;
}

- (HMNetworkRouterWANStatus)init
{
  v3.receiver = self;
  v3.super_class = HMNetworkRouterWANStatus;
  return [(HMNetworkRouterWANStatus *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMNetworkRouterWANStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMNetworkRouterWANStatus *)v6 parseFromData:dataCopy error:&v11];
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