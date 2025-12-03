@interface ASFAsn1ReceiptToken
+ (ASFAsn1ReceiptToken)readFromBuffer:(uint64_t)buffer;
- (id)description;
- (uint64_t)contentIsAnInteger;
@end

@implementation ASFAsn1ReceiptToken

+ (ASFAsn1ReceiptToken)readFromBuffer:(uint64_t)buffer
{
  v2 = a2;
  objc_opt_self();
  v20 = 0;
  v3 = [ASFAsn1Token readTokenFromBuffer:v2 length:&v20];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v4 = v20;
  v5 = [v2 length];
  v6 = [v2 subdataWithRange:{v4, v5 - v20}];

  v7 = [ASFAsn1Token readTokenFromBuffer:v6 length:&v20];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    v2 = v6;
    goto LABEL_25;
  }

  v8 = v20;
  v9 = [v6 length];
  v2 = [v6 subdataWithRange:{v8, v9 - v20}];

  if (v3)
  {
    v10 = 0;
    v11 = v3[4];
    if (v11 > 0x18)
    {
      goto LABEL_25;
    }

    if (((1 << v11) & 0x1E1FF1F) == 0)
    {
      if (((1 << v11) & 0x200E0) == 0)
      {
        goto LABEL_25;
      }

      v14 = [ASFAsn1Token readTokenFromBuffer:v2 opaque:1 length:&v20];
      if (v14)
      {
        v13 = v14;
        v10 = [ASFAsn1ReceiptToken alloc];
        goto LABEL_17;
      }

LABEL_11:
      v10 = 0;
      goto LABEL_25;
    }
  }

  v12 = [ASFAsn1Token readTokenFromBuffer:v2 length:&v20];
  v13 = v12;
  if (v12 && *(v12 + 16) == 4 && !*(v12 + 8))
  {
    v10 = [ASFAsn1ReceiptToken alloc];
    if (!v3)
    {
      v15 = 0;
      goto LABEL_18;
    }

LABEL_17:
    v15 = v3[4];
LABEL_18:
    v16 = v13;
    if (v7)
    {
      v17 = v7[4];
    }

    else
    {
      v17 = 0;
    }

    v13 = v13;
    if (v10)
    {
      v21.receiver = v10;
      v21.super_class = ASFAsn1ReceiptToken;
      v18 = objc_msgSendSuper2(&v21, sel_init);
      v10 = v18;
      if (v18)
      {
        v18->mType = v15;
        v18->mTypeVersion = v17;
        objc_storeStrong(&v18->mContentToken, v16);
      }
    }

    goto LABEL_24;
  }

  v10 = 0;
LABEL_24:

LABEL_25:

  return v10;
}

- (uint64_t)contentIsAnInteger
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
        if (v5 && !*(v5 + 8))
        {
          selfCopy = v5[2] == 2;
          goto LABEL_9;
        }
      }

      else
      {
        v5 = 0;
      }

      selfCopy = 0;
LABEL_9:

      return selfCopy;
    }

    return 0;
  }

  return selfCopy;
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

@end