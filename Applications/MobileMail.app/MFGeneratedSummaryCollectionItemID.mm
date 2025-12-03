@interface MFGeneratedSummaryCollectionItemID
- (BOOL)isEqual:(id)equal;
- (MFGeneratedSummaryCollectionItemID)initWithAnchorMessageItemID:(id)d;
- (MFGeneratedSummaryCollectionItemID)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MFGeneratedSummaryCollectionItemID

- (MFGeneratedSummaryCollectionItemID)initWithAnchorMessageItemID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MFGeneratedSummaryCollectionItemID;
  v6 = [(MFGeneratedSummaryCollectionItemID *)&v9 initAsEphemeralID:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_anchorMessageItemID, d);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (([(MFGeneratedSummaryCollectionItemID *)self isEphemeral]& 1) != 0 || [(MFGeneratedSummaryCollectionItemID *)v5 isEphemeral])
      {
        v10.receiver = self;
        v10.super_class = MFGeneratedSummaryCollectionItemID;
        v6 = [(MFGeneratedSummaryCollectionItemID *)&v10 isEqual:v5];
      }

      else
      {
        anchorMessageItemID = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
        anchorMessageItemID2 = [(MFGeneratedSummaryCollectionItemID *)v5 anchorMessageItemID];
        v6 = [anchorMessageItemID isEqual:anchorMessageItemID2];
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
    anchorMessageItemID = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
    v3 = [anchorMessageItemID hash];
  }

  return v3;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  anchorMessageItemID = [(MFGeneratedSummaryCollectionItemID *)self anchorMessageItemID];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, anchorMessageItemID];

  return v6;
}

- (MFGeneratedSummaryCollectionItemID)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  selfCopy2 = self;
  v5 = coderCopy;
  v6 = EFDecodeCacheableInstance();

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = coderCopy;
  EFEncodeCacheableInstance();
}

@end