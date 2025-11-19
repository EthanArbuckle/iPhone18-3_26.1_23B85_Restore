@interface MFDatePickerItemIdentifier
- (BOOL)isEqual:(id)a3;
- (MFDatePickerItemIdentifier)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation MFDatePickerItemIdentifier

- (MFDatePickerItemIdentifier)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MFDatePickerItemIdentifier;
  v8 = [(MFDatePickerItemIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_type = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MFDatePickerItemIdentifier *)self identifier];
      v7 = [(MFDatePickerItemIdentifier *)v5 identifier];
      if (v6 == v7)
      {
        v9 = [(MFDatePickerItemIdentifier *)self type];
        v8 = v9 == [(MFDatePickerItemIdentifier *)v5 type];
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
  v3 = [(MFDatePickerItemIdentifier *)self identifier];
  v4 = [v3 hash];

  return 33 * v4 + [(MFDatePickerItemIdentifier *)self type]+ 5859909;
}

@end