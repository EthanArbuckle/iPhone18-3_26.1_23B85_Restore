@interface CTRemotePlanIdentifierList
- (BOOL)isEqual:(id)equal;
- (CTRemotePlanIdentifierList)init;
- (CTRemotePlanIdentifierList)initWithCoder:(id)coder;
- (CTRemotePlanIdentifierList)initWithPlanIdentifiers:(id)identifiers;
- (id)description;
@end

@implementation CTRemotePlanIdentifierList

- (CTRemotePlanIdentifierList)init
{
  v6.receiver = self;
  v6.super_class = CTRemotePlanIdentifierList;
  v2 = [(CTRemotePlanIdentifierList *)&v6 init];
  v3 = v2;
  if (v2)
  {
    planIdentifiers = v2->_planIdentifiers;
    v2->_planIdentifiers = 0;
  }

  return v3;
}

- (CTRemotePlanIdentifierList)initWithPlanIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = CTRemotePlanIdentifierList;
  v6 = [(CTRemotePlanIdentifierList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_planIdentifiers, identifiers);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", planIdentifiers=%@", self->_planIdentifiers];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      planIdentifiers = [(CTRemotePlanIdentifierList *)self planIdentifiers];
      planIdentifiers2 = [(CTRemotePlanIdentifierList *)equalCopy planIdentifiers];
      if (planIdentifiers == planIdentifiers2)
      {
        v9 = 1;
      }

      else
      {
        planIdentifiers3 = [(CTRemotePlanIdentifierList *)self planIdentifiers];
        planIdentifiers4 = [(CTRemotePlanIdentifierList *)equalCopy planIdentifiers];
        v9 = [planIdentifiers3 isEqual:planIdentifiers4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTRemotePlanIdentifierList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CTRemotePlanIdentifierList;
  v5 = [(CTRemotePlanIdentifierList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"planIdentifiers"];
    planIdentifiers = v5->_planIdentifiers;
    v5->_planIdentifiers = v9;
  }

  return v5;
}

@end