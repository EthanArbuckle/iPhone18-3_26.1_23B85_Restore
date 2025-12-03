@interface INUIInterfaceSection
- (BOOL)isEqual:(id)equal;
- (INUIInterfaceSection)initWithCoder:(id)coder;
- (INUIInterfaceSection)initWithInteractiveBehavior:(unint64_t)behavior parameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INUIInterfaceSection

- (void)encodeWithCoder:(id)coder
{
  interactiveBehavior = self->_interactiveBehavior;
  coderCopy = coder;
  [coderCopy encodeInteger:interactiveBehavior forKey:@"interactiveBehavior"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
}

- (INUIInterfaceSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"interactiveBehavior"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameters"];

  v10 = [(INUIInterfaceSection *)self initWithInteractiveBehavior:v5 parameters:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v7 = 0;
    if (self->_interactiveBehavior == v5[1])
    {
      parameters = self->_parameters;
      if (parameters == v5[2] || [(NSSet *)parameters isEqual:?])
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (INUIInterfaceSection)initWithInteractiveBehavior:(unint64_t)behavior parameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = INUIInterfaceSection;
  v7 = [(INUIInterfaceSection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_interactiveBehavior = behavior;
    v9 = [parametersCopy copy];
    parameters = v8->_parameters;
    v8->_parameters = v9;
  }

  return v8;
}

@end