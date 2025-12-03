@interface AMSAccountIdentity
- (AMSAccountIdentity)initWithCoder:(id)coder;
- (AMSAccountIdentity)initWithDSID:(id)d altDSID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAccountIdentity

- (id)description
{
  v6.receiver = self;
  v6.super_class = AMSAccountIdentity;
  v3 = [(AMSAccountIdentity *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" (altDSID: %@, dsid: %@)", self->_altDSID, self->_dsid];

  return v4;
}

- (unint64_t)hash
{
  altDSID = [(AMSAccountIdentity *)self altDSID];
  v4 = [altDSID hash];
  dsid = [(AMSAccountIdentity *)self dsid];
  v6 = [dsid hash];

  return v6 ^ v4;
}

- (AMSAccountIdentity)initWithDSID:(id)d altDSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = AMSAccountIdentity;
  v8 = [(AMSAccountIdentity *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (dCopy && iDCopy)
  {
    v10 = [dCopy copy];
    dsid = v8->_dsid;
    v8->_dsid = v10;

    v12 = [iDCopy copy];
    altDSID = v8->_altDSID;
    v8->_altDSID = v12;

LABEL_5:
    v9 = v8;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v10 = 0;
    altDSID = equalCopy;
LABEL_9:

    goto LABEL_10;
  }

  v5 = equalCopy;

  if (v5)
  {
    altDSID = [v5 altDSID];
    altDSID2 = [(AMSAccountIdentity *)self altDSID];
    if ([altDSID isEqualToString:altDSID2])
    {
      dsid = [v5 dsid];
      dsid2 = [(AMSAccountIdentity *)self dsid];
      v10 = [dsid isEqualToNumber:dsid2];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  altDSID = [(AMSAccountIdentity *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"kCodingKeyAltDSID"];

  dsid = [(AMSAccountIdentity *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"kCodingKeyDSID"];
}

- (AMSAccountIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSAccountIdentity;
  v5 = [(AMSAccountIdentity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAltDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDSID"];
    dsid = v5->_dsid;
    v5->_dsid = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_altDSID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSNumber *)self->_dsid copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end