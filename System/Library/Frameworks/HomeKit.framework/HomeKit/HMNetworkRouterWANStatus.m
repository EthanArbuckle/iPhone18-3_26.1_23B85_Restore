@interface HMNetworkRouterWANStatus
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMNetworkRouterWANStatus)init;
- (HMNetworkRouterWANStatus)initWithIdentifier:(id)a3 status:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMNetworkRouterWANStatus

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMNetworkRouterWANStatus *)self identifier];
  v5 = [(HMNetworkRouterWANStatus *)self status];
  v6 = [v3 stringWithFormat:@"<HMNetworkRouterWANStatus identifier=%@, status=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMNetworkRouterWANStatus *)self identifier];
      v8 = [(HMNetworkRouterWANStatus *)v6 identifier];
      if (v7 != v8)
      {
        v9 = [(HMNetworkRouterWANStatus *)self identifier];
        v3 = [(HMNetworkRouterWANStatus *)v6 identifier];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMNetworkRouterWANStatus *)self status];
      v12 = [(HMNetworkRouterWANStatus *)v6 status];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMNetworkRouterWANStatus *)self status];
        v14 = [(HMNetworkRouterWANStatus *)v6 status];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMNetworkRouterWANStatus allocWithZone:a3];
  v5 = [(HMNetworkRouterWANStatus *)self identifier];
  v6 = [(HMNetworkRouterWANStatus *)self status];
  v7 = [(HMNetworkRouterWANStatus *)v4 initWithIdentifier:v5 status:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMNetworkRouterWANStatus *)self identifier];

  if (v5)
  {
    v6 = [(HMNetworkRouterWANStatus *)self identifier];
    v17 = 0;
    v7 = [v6 serializeWithError:&v17];
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
      if (a3)
      {
        _HMErrorFromOSStatus(v9);
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  v10 = [(HMNetworkRouterWANStatus *)self status];

  if (!v10)
  {
LABEL_11:
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v18 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  v11 = [(HMNetworkRouterWANStatus *)self status];
  v16 = 0;
  v7 = [v11 serializeWithError:&v16];
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

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 bytes];
  v9 = [v7 length];
  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  v25 = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v8 + v9;
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
      if (a4)
      {
        _HMErrorFromOSStatus(Next);
        *a4 = v22 = 0;
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
    if (a4)
    {
      v21 = v12;
      v22 = 0;
      *a4 = v12;
      goto LABEL_26;
    }

LABEL_22:
    v22 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = v25;
LABEL_25:
  [(HMNetworkRouterWANStatus *)self setIdentifier:v11, v25];
  [(HMNetworkRouterWANStatus *)self setStatus:v10];
  v12 = 0;
  v22 = 1;
LABEL_26:

  return v22;
}

- (HMNetworkRouterWANStatus)initWithIdentifier:(id)a3 status:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMNetworkRouterWANStatus;
  v9 = [(HMNetworkRouterWANStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_status, a4);
  }

  return v10;
}

- (HMNetworkRouterWANStatus)init
{
  v3.receiver = self;
  v3.super_class = HMNetworkRouterWANStatus;
  return [(HMNetworkRouterWANStatus *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMNetworkRouterWANStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMNetworkRouterWANStatus *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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