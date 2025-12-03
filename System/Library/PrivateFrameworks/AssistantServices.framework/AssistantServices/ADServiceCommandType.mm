@interface ADServiceCommandType
+ (id)_serviceCommandTypeWithDomainName:(id)name className:(id)className;
- (ADServiceCommandType)initWithDomainName:(id)name className:(id)className;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServiceCommandType:(id)type;
- (id)description;
- (id)qualifiedCommandName;
@end

@implementation ADServiceCommandType

- (BOOL)isEqualToServiceCommandType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy)
  {
    domainName = self->_domainName;
    domainName = [typeCopy domainName];
    if ([(NSString *)domainName isEqualToString:domainName])
    {
      className = self->_className;
      className = [v5 className];
      v10 = [(NSString *)className isEqualToString:className];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ADServiceCommandType *)self isEqualToServiceCommandType:equalCopy];
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
  qualifiedCommandName = [(ADServiceCommandType *)self qualifiedCommandName];
  v5 = [NSString stringWithFormat:@"<%@: %p %@>", v3, self, qualifiedCommandName];

  return v5;
}

- (id)qualifiedCommandName
{
  v3 = [(NSString *)self->_domainName stringByAppendingString:@"#"];
  v4 = [v3 stringByAppendingString:self->_className];

  return v4;
}

- (ADServiceCommandType)initWithDomainName:(id)name className:(id)className
{
  nameCopy = name;
  classNameCopy = className;
  v14.receiver = self;
  v14.super_class = ADServiceCommandType;
  v8 = [(ADServiceCommandType *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    domainName = v8->_domainName;
    v8->_domainName = v9;

    v11 = [classNameCopy copy];
    className = v8->_className;
    v8->_className = v11;
  }

  return v8;
}

+ (id)_serviceCommandTypeWithDomainName:(id)name className:(id)className
{
  classNameCopy = className;
  nameCopy = name;
  v8 = [[self alloc] initWithDomainName:nameCopy className:classNameCopy];

  return v8;
}

@end