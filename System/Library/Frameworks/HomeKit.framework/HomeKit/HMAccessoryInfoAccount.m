@interface HMAccessoryInfoAccount
- (BOOL)isEqual:(id)a3;
- (HMAccessoryInfoAccount)initWithProtoData:(id)a3;
- (HMAccessoryInfoAccount)initWithProtoPayload:(id)a3;
- (HMAccessoryInfoAccount)initWithUsername:(id)a3 aaAltDSID:(id)a4 amsAltDSID:(id)a5 signedIn:(BOOL)a6;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoAccount

- (unint64_t)hash
{
  v3 = [(HMAccessoryInfoAccount *)self username];
  v4 = [v3 hash];

  v5 = [(HMAccessoryInfoAccount *)self aaAltDSID];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMAccessoryInfoAccount *)self amsAltDSID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryInfoAccount *)self username];
      v8 = [(HMAccessoryInfoAccount *)v6 username];
      if (HMFEqualObjects())
      {
        v9 = [(HMAccessoryInfoAccount *)self aaAltDSID];
        v10 = [(HMAccessoryInfoAccount *)v6 aaAltDSID];
        if (HMFEqualObjects())
        {
          v11 = [(HMAccessoryInfoAccount *)self amsAltDSID];
          v12 = [(HMAccessoryInfoAccount *)v6 amsAltDSID];
          if (HMFEqualObjects())
          {
            v13 = [(HMAccessoryInfoAccount *)self signedIn];
            v14 = v13 ^ [(HMAccessoryInfoAccount *)v6 signedIn]^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (HMAccessoryInfoAccount)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoAccountInfoEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoAccount *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoAccount)initWithProtoPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 username];
  v6 = [v4 aaAltDSID];
  v7 = [v4 amsAltDSID];
  v8 = [v4 signedIn];

  v9 = [(HMAccessoryInfoAccount *)self initWithUsername:v5 aaAltDSID:v6 amsAltDSID:v7 signedIn:v8];
  return v9;
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoAccount *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoAccountInfoEvent);
  v4 = [(HMAccessoryInfoAccount *)self username];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setUsername:v4];

  v5 = [(HMAccessoryInfoAccount *)self aaAltDSID];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setAaAltDSID:v5];

  v6 = [(HMAccessoryInfoAccount *)self amsAltDSID];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setAmsAltDSID:v6];

  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setSignedIn:[(HMAccessoryInfoAccount *)self signedIn]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMAccessoryInfoAccount *)self username];
  [(HMAccessoryInfoAccount *)self signedIn];
  v6 = HMFBooleanToString();
  v7 = [v3 stringWithFormat:@"<%@: username = %@, signedIn = %@>", v4, v5, v6];

  return v7;
}

- (HMAccessoryInfoAccount)initWithUsername:(id)a3 aaAltDSID:(id)a4 amsAltDSID:(id)a5 signedIn:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMAccessoryInfoAccount;
  v14 = [(HMAccessoryInfoAccount *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_username, a3);
    objc_storeStrong(&v15->_aaAltDSID, a4);
    objc_storeStrong(&v15->_amsAltDSID, a5);
    v15->_signedIn = a6;
  }

  return v15;
}

@end