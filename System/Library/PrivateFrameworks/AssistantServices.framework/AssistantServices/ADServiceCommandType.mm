@interface ADServiceCommandType
+ (id)_serviceCommandTypeWithDomainName:(id)a3 className:(id)a4;
- (ADServiceCommandType)initWithDomainName:(id)a3 className:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServiceCommandType:(id)a3;
- (id)description;
- (id)qualifiedCommandName;
@end

@implementation ADServiceCommandType

- (BOOL)isEqualToServiceCommandType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    domainName = self->_domainName;
    v7 = [v4 domainName];
    if ([(NSString *)domainName isEqualToString:v7])
    {
      className = self->_className;
      v9 = [v5 className];
      v10 = [(NSString *)className isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ADServiceCommandType *)self isEqualToServiceCommandType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(ADServiceCommandType *)self qualifiedCommandName];
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, v4];

  return v5;
}

- (id)qualifiedCommandName
{
  v3 = [(NSString *)self->_domainName stringByAppendingString:@"#"];
  v4 = [v3 stringByAppendingString:self->_className];

  return v4;
}

- (ADServiceCommandType)initWithDomainName:(id)a3 className:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ADServiceCommandType;
  v8 = [(ADServiceCommandType *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domainName = v8->_domainName;
    v8->_domainName = v9;

    v11 = [v7 copy];
    className = v8->_className;
    v8->_className = v11;
  }

  return v8;
}

+ (id)_serviceCommandTypeWithDomainName:(id)a3 className:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDomainName:v7 className:v6];

  return v8;
}

@end