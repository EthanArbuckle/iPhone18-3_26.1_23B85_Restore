@interface AMSAccountIdentity
- (AMSAccountIdentity)initWithCoder:(id)a3;
- (AMSAccountIdentity)initWithDSID:(id)a3 altDSID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [(AMSAccountIdentity *)self altDSID];
  v4 = [v3 hash];
  v5 = [(AMSAccountIdentity *)self dsid];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (AMSAccountIdentity)initWithDSID:(id)a3 altDSID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AMSAccountIdentity;
  v8 = [(AMSAccountIdentity *)&v15 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = 0;
  if (v6 && v7)
  {
    v10 = [v6 copy];
    dsid = v8->_dsid;
    v8->_dsid = v10;

    v12 = [v7 copy];
    altDSID = v8->_altDSID;
    v8->_altDSID = v12;

LABEL_5:
    v9 = v8;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v10 = 0;
    v6 = v4;
LABEL_9:

    goto LABEL_10;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 altDSID];
    v7 = [(AMSAccountIdentity *)self altDSID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 dsid];
      v9 = [(AMSAccountIdentity *)self dsid];
      v10 = [v8 isEqualToNumber:v9];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSAccountIdentity *)self altDSID];
  [v4 encodeObject:v5 forKey:@"kCodingKeyAltDSID"];

  v6 = [(AMSAccountIdentity *)self dsid];
  [v4 encodeObject:v6 forKey:@"kCodingKeyDSID"];
}

- (AMSAccountIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSAccountIdentity;
  v5 = [(AMSAccountIdentity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAltDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyDSID"];
    dsid = v5->_dsid;
    v5->_dsid = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_altDSID copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSNumber *)self->_dsid copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

@end