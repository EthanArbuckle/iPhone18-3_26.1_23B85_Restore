@interface MFGeneratedSummaryCollectionItemID
- (BOOL)isEqual:(id)a3;
- (MFGeneratedSummaryCollectionItemID)initWithAnchorMessageItemID:(id)a3;
- (MFGeneratedSummaryCollectionItemID)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MFGeneratedSummaryCollectionItemID

- (MFGeneratedSummaryCollectionItemID)initWithAnchorMessageItemID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFGeneratedSummaryCollectionItemID;
  v6 = [(MFGeneratedSummaryCollectionItemID *)&v9 initAsEphemeralID:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchorMessageItemID, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (([(MFGeneratedSummaryCollectionItemID *)self isEphemeral]& 1) != 0 || [(MFGeneratedSummaryCollectionItemID *)v5 isEphemeral])
      {
        v10.receiver = self;
        v10.super_class = MFGeneratedSummaryCollectionItemID;
        v6 = [(MFGeneratedSummaryCollectionItemID *)&v10 isEqual:v5];
      }

      else
      {
        v7 = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
        v8 = [(MFGeneratedSummaryCollectionItemID *)v5 anchorMessageItemID];
        v6 = [v7 isEqual:v8];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  if ([(MFGeneratedSummaryCollectionItemID *)self isEphemeral])
  {
    v6.receiver = self;
    v6.super_class = MFGeneratedSummaryCollectionItemID;
    return [(MFGeneratedSummaryCollectionItemID *)&v6 hash];
  }

  else
  {
    v4 = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
    v3 = [v4 hash];
  }

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (MFGeneratedSummaryCollectionItemID)initWithCoder:(id)a3
{
  v8 = a3;
  v9 = self;
  v4 = self;
  v5 = v8;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = v4;
  EFEncodeCacheableInstance();
}

@end