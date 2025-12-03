@interface HKIdentifierConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKIdentifierConceptSelection)init;
- (HKIdentifierConceptSelection)initWithCoder:(id)coder;
- (HKIdentifierConceptSelection)initWithIdentifier:(id)identifier;
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

- (HKIdentifierConceptSelection)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HKIdentifierConceptSelection;
  v5 = [(HKConceptSelection *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (HKIdentifierConceptSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];

  if (v5)
  {
    self = [(HKIdentifierConceptSelection *)self initWithIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = HKIdentifierConceptSelection;
  if ([(HKConceptSelection *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    identifier = [(HKIdentifierConceptSelection *)self identifier];
    identifier2 = [v5 identifier];
    if (identifier == identifier2)
    {
      v11 = 1;
    }

    else
    {
      identifier3 = [v5 identifier];
      if (identifier3)
      {
        identifier4 = [(HKIdentifierConceptSelection *)self identifier];
        identifier5 = [v5 identifier];
        v11 = [identifier4 isEqual:identifier5];
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