@interface CNLabelValuePair
+ (id)labeledValueWithLabel:(id)label value:(id)value;
- (BOOL)isEqual:(id)equal;
- (CNLabelValuePair)initWithLabel:(id)label value:(id)value;
- (id)description;
@end

@implementation CNLabelValuePair

+ (id)labeledValueWithLabel:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v7 = [[CNLabelValuePair alloc] initWithLabel:labelCopy value:valueCopy];

  return v7;
}

- (CNLabelValuePair)initWithLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNLabelValuePair;
  v9 = [(CNLabelValuePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, label);
    objc_storeStrong(&v10->_value, value);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"label", self->_label, @"value", self->_value, 0}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      label = self->_label;
      if (!(label | *(equal + 1)) || (v6 = [(NSString *)label isEqual:?]) != 0)
      {
        value = self->_value;
        if (!(value | *(equal + 2)) || (v6 = [value isEqual:?]) != 0)
        {
          LOBYTE(v6) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

@end