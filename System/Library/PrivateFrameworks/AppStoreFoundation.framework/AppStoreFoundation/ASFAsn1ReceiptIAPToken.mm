@interface ASFAsn1ReceiptIAPToken
+ (id)readFromBuffer:(uint64_t)buffer;
- (id)_initWithType:(void *)type typeVersion:(void *)version contentToken:;
- (id)description;
- (uint64_t)integerValue;
- (void)stringValue;
@end

@implementation ASFAsn1ReceiptIAPToken

- (id)_initWithType:(void *)type typeVersion:(void *)version contentToken:
{
  versionCopy = version;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = ASFAsn1ReceiptIAPToken;
    v9 = objc_msgSendSuper2(&v11, sel_init);
    self = v9;
    if (v9)
    {
      v9[1] = a2;
      v9[2] = type;
      objc_storeStrong(v9 + 3, version);
    }
  }

  return self;
}

+ (id)readFromBuffer:(uint64_t)buffer
{
  v2 = a2;
  objc_opt_self();
  v16 = 0;
  v3 = [ASFAsn1Token readTokenFromBuffer:v2 length:&v16];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v4 = v16;
  v5 = [v2 length];
  v6 = [v2 subdataWithRange:{v4, v5 - v16}];

  v7 = [ASFAsn1Token readTokenFromBuffer:v6 length:&v16];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    v2 = v6;
    goto LABEL_13;
  }

  v8 = v16;
  v9 = [v6 length];
  v2 = [v6 subdataWithRange:{v8, v9 - v16}];

  if (!v3 || v3[4] - 1701 > 5)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_13;
  }

  v10 = [ASFAsn1Token readTokenFromBuffer:v2 length:&v16];
  v11 = v10;
  if (v10 && *(v10 + 16) == 4 && !*(v10 + 8))
  {
    v14 = [ASFAsn1ReceiptIAPToken alloc];
    if (v7)
    {
      v15 = v7[4];
    }

    else
    {
      v15 = 0;
    }

    v12 = [(ASFAsn1ReceiptIAPToken *)&v14->super.isa _initWithType:v15 typeVersion:v11 contentToken:?];
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  mType = self->mType;
  mTypeVersion = self->mTypeVersion;
  mContentToken = self->mContentToken;
  if (mContentToken)
  {
    mContentToken = objc_getProperty(mContentToken, a2, 24, 1);
  }

  v6 = mContentToken;
  v7 = [v2 stringWithFormat:@"Type:%ld Version:%ld Data:%@", mType, mTypeVersion, v6];

  return v7;
}

- (void)stringValue
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(ASFAsn1OSToken *)selfCopy[3] stringValue];
    }

    else
    {
      self = 0;
    }

    v1 = vars8;
  }

  return self;
}

- (uint64_t)integerValue
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 24);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(selfCopy + 24);
      if (v4)
      {
        v5 = objc_getProperty(v4, v3, 32, 1);
        if (v5 && !*(v5 + 8) && v5[2] == 2)
        {
          selfCopy = v5[4];
LABEL_11:

          return selfCopy;
        }
      }

      else
      {
        v5 = 0;
      }

      selfCopy = 0xFFFFLL;
      goto LABEL_11;
    }

    return 0xFFFFLL;
  }

  return selfCopy;
}

@end