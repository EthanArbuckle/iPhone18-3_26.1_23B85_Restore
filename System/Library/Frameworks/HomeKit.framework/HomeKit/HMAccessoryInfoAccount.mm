@interface HMAccessoryInfoAccount
- (BOOL)isEqual:(id)equal;
- (HMAccessoryInfoAccount)initWithProtoData:(id)data;
- (HMAccessoryInfoAccount)initWithProtoPayload:(id)payload;
- (HMAccessoryInfoAccount)initWithUsername:(id)username aaAltDSID:(id)d amsAltDSID:(id)iD signedIn:(BOOL)in;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoAccount

- (unint64_t)hash
{
  username = [(HMAccessoryInfoAccount *)self username];
  v4 = [username hash];

  aaAltDSID = [(HMAccessoryInfoAccount *)self aaAltDSID];
  v6 = [aaAltDSID hash] ^ v4;

  amsAltDSID = [(HMAccessoryInfoAccount *)self amsAltDSID];
  v8 = [amsAltDSID hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      username = [(HMAccessoryInfoAccount *)self username];
      username2 = [(HMAccessoryInfoAccount *)v6 username];
      if (HMFEqualObjects())
      {
        aaAltDSID = [(HMAccessoryInfoAccount *)self aaAltDSID];
        aaAltDSID2 = [(HMAccessoryInfoAccount *)v6 aaAltDSID];
        if (HMFEqualObjects())
        {
          amsAltDSID = [(HMAccessoryInfoAccount *)self amsAltDSID];
          amsAltDSID2 = [(HMAccessoryInfoAccount *)v6 amsAltDSID];
          if (HMFEqualObjects())
          {
            signedIn = [(HMAccessoryInfoAccount *)self signedIn];
            v14 = signedIn ^ [(HMAccessoryInfoAccount *)v6 signedIn]^ 1;
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

- (HMAccessoryInfoAccount)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoAccountInfoEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoAccount *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoAccount)initWithProtoPayload:(id)payload
{
  payloadCopy = payload;
  username = [payloadCopy username];
  aaAltDSID = [payloadCopy aaAltDSID];
  amsAltDSID = [payloadCopy amsAltDSID];
  signedIn = [payloadCopy signedIn];

  v9 = [(HMAccessoryInfoAccount *)self initWithUsername:username aaAltDSID:aaAltDSID amsAltDSID:amsAltDSID signedIn:signedIn];
  return v9;
}

- (id)protoData
{
  protoPayload = [(HMAccessoryInfoAccount *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoAccountInfoEvent);
  username = [(HMAccessoryInfoAccount *)self username];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setUsername:username];

  aaAltDSID = [(HMAccessoryInfoAccount *)self aaAltDSID];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setAaAltDSID:aaAltDSID];

  amsAltDSID = [(HMAccessoryInfoAccount *)self amsAltDSID];
  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setAmsAltDSID:amsAltDSID];

  [(HMAccessoryInfoProtoAccountInfoEvent *)v3 setSignedIn:[(HMAccessoryInfoAccount *)self signedIn]];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  username = [(HMAccessoryInfoAccount *)self username];
  [(HMAccessoryInfoAccount *)self signedIn];
  v6 = HMFBooleanToString();
  v7 = [v3 stringWithFormat:@"<%@: username = %@, signedIn = %@>", v4, username, v6];

  return v7;
}

- (HMAccessoryInfoAccount)initWithUsername:(id)username aaAltDSID:(id)d amsAltDSID:(id)iD signedIn:(BOOL)in
{
  usernameCopy = username;
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = HMAccessoryInfoAccount;
  v14 = [(HMAccessoryInfoAccount *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_username, username);
    objc_storeStrong(&v15->_aaAltDSID, d);
    objc_storeStrong(&v15->_amsAltDSID, iD);
    v15->_signedIn = in;
  }

  return v15;
}

@end