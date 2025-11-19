@interface HKIdentifierConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKIdentifierConceptSelection)init;
- (HKIdentifierConceptSelection)initWithCoder:(id)a3;
- (HKIdentifierConceptSelection)initWithIdentifier:(id)a3;
@end

@implementation HKIdentifierConceptSelection

- (HKIdentifierConceptSelection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKIdentifierConceptSelection)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKIdentifierConceptSelection;
  v5 = [(HKConceptSelection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (HKIdentifierConceptSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];

  if (v5)
  {
    self = [(HKIdentifierConceptSelection *)self initWithIdentifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKIdentifierConceptSelection;
  if ([(HKConceptSelection *)&v13 isEqual:v4])
  {
    v5 = v4;
    v6 = [(HKIdentifierConceptSelection *)self identifier];
    v7 = [v5 identifier];
    if (v6 == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [v5 identifier];
      if (v8)
      {
        v9 = [(HKIdentifierConceptSelection *)self identifier];
        v10 = [v5 identifier];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end