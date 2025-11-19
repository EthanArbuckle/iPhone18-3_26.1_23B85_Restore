@interface CNLabelValuePair
+ (id)labeledValueWithLabel:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNLabelValuePair)initWithLabel:(id)a3 value:(id)a4;
- (id)description;
@end

@implementation CNLabelValuePair

+ (id)labeledValueWithLabel:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNLabelValuePair alloc] initWithLabel:v6 value:v5];

  return v7;
}

- (CNLabelValuePair)initWithLabel:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNLabelValuePair;
  v9 = [(CNLabelValuePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_label, a3);
    objc_storeStrong(&v10->_value, a4);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendNamesAndObjects:{@"label", self->_label, @"value", self->_value, 0}];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      label = self->_label;
      if (!(label | *(a3 + 1)) || (v6 = [(NSString *)label isEqual:?]) != 0)
      {
        value = self->_value;
        if (!(value | *(a3 + 2)) || (v6 = [value isEqual:?]) != 0)
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