@interface MFDatePickerItemIdentifier
- (BOOL)isEqual:(id)equal;
- (MFDatePickerItemIdentifier)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (unint64_t)hash;
@end

@implementation MFDatePickerItemIdentifier

- (MFDatePickerItemIdentifier)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MFDatePickerItemIdentifier;
  v8 = [(MFDatePickerItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_type = type;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(MFDatePickerItemIdentifier *)self identifier];
      identifier2 = [(MFDatePickerItemIdentifier *)v5 identifier];
      if (identifier == identifier2)
      {
        type = [(MFDatePickerItemIdentifier *)self type];
        v8 = type == [(MFDatePickerItemIdentifier *)v5 type];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(MFDatePickerItemIdentifier *)self identifier];
  v4 = [identifier hash];

  return 33 * v4 + [(MFDatePickerItemIdentifier *)self type]+ 5859909;
}

@end