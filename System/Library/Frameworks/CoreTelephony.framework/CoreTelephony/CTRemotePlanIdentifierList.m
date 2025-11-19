@interface CTRemotePlanIdentifierList
- (BOOL)isEqual:(id)a3;
- (CTRemotePlanIdentifierList)init;
- (CTRemotePlanIdentifierList)initWithCoder:(id)a3;
- (CTRemotePlanIdentifierList)initWithPlanIdentifiers:(id)a3;
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

- (CTRemotePlanIdentifierList)initWithPlanIdentifiers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTRemotePlanIdentifierList;
  v6 = [(CTRemotePlanIdentifierList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_planIdentifiers, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CTRemotePlanIdentifierList *)self planIdentifiers];
      v6 = [(CTRemotePlanIdentifierList *)v4 planIdentifiers];
      if (v5 == v6)
      {
        v9 = 1;
      }

      else
      {
        v7 = [(CTRemotePlanIdentifierList *)self planIdentifiers];
        v8 = [(CTRemotePlanIdentifierList *)v4 planIdentifiers];
        v9 = [v7 isEqual:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CTRemotePlanIdentifierList)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CTRemotePlanIdentifierList;
  v5 = [(CTRemotePlanIdentifierList *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"planIdentifiers"];
    planIdentifiers = v5->_planIdentifiers;
    v5->_planIdentifiers = v9;
  }

  return v5;
}

@end