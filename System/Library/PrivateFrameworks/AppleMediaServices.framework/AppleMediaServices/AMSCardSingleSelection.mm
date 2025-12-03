@interface AMSCardSingleSelection
- (AMSCardSingleSelection)initWithCoder:(id)coder;
- (AMSCardSingleSelection)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSCardSingleSelection

- (AMSCardSingleSelection)initWithPassTypeIdentifier:(id)identifier passSerialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  v11.receiver = self;
  v11.super_class = AMSCardSingleSelection;
  v8 = [(AMSCardSingleSelection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AMSCardSingleSelection *)v8 setPassTypeIdentifier:identifierCopy];
    [(AMSCardSingleSelection *)v9 setPassSerialNumber:numberCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v10 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    passTypeIdentifier = [(AMSCardSingleSelection *)self passTypeIdentifier];
    passTypeIdentifier2 = [(AMSCardSingleSelection *)v5 passTypeIdentifier];
    if ([passTypeIdentifier isEqualToString:passTypeIdentifier2])
    {
      passSerialNumber = [(AMSCardSingleSelection *)self passSerialNumber];
      passSerialNumber2 = [(AMSCardSingleSelection *)v5 passSerialNumber];
      v10 = [passSerialNumber isEqualToString:passSerialNumber2];
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
  passTypeIdentifier = [(AMSCardSingleSelection *)self passTypeIdentifier];
  v4 = [passTypeIdentifier hash];
  passSerialNumber = [(AMSCardSingleSelection *)self passSerialNumber];
  v6 = [passSerialNumber hash];

  return v6 ^ v4;
}

- (AMSCardSingleSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSCardSingleSelection;
  v5 = [(AMSCardSingleSelection *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  passTypeIdentifier = [(AMSCardSingleSelection *)self passTypeIdentifier];
  [coderCopy encodeObject:passTypeIdentifier forKey:@"passTypeIdentifier"];

  passSerialNumber = [(AMSCardSingleSelection *)self passSerialNumber];
  [coderCopy encodeObject:passSerialNumber forKey:@"passSerialNumber"];
}

@end