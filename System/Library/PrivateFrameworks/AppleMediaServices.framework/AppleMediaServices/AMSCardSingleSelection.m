@interface AMSCardSingleSelection
- (AMSCardSingleSelection)initWithCoder:(id)a3;
- (AMSCardSingleSelection)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSCardSingleSelection

- (AMSCardSingleSelection)initWithPassTypeIdentifier:(id)a3 passSerialNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AMSCardSingleSelection;
  v8 = [(AMSCardSingleSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AMSCardSingleSelection *)v8 setPassTypeIdentifier:v6];
    [(AMSCardSingleSelection *)v9 setPassSerialNumber:v7];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v10 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(AMSCardSingleSelection *)self passTypeIdentifier];
    v7 = [(AMSCardSingleSelection *)v5 passTypeIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(AMSCardSingleSelection *)self passSerialNumber];
      v9 = [(AMSCardSingleSelection *)v5 passSerialNumber];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(AMSCardSingleSelection *)self passTypeIdentifier];
  v4 = [v3 hash];
  v5 = [(AMSCardSingleSelection *)self passSerialNumber];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (AMSCardSingleSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSCardSingleSelection;
  v5 = [(AMSCardSingleSelection *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSCardSingleSelection *)self passTypeIdentifier];
  [v4 encodeObject:v5 forKey:@"passTypeIdentifier"];

  v6 = [(AMSCardSingleSelection *)self passSerialNumber];
  [v4 encodeObject:v6 forKey:@"passSerialNumber"];
}

@end