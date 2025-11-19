@interface INUIInterfaceSection
- (BOOL)isEqual:(id)a3;
- (INUIInterfaceSection)initWithCoder:(id)a3;
- (INUIInterfaceSection)initWithInteractiveBehavior:(unint64_t)a3 parameters:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INUIInterfaceSection

- (void)encodeWithCoder:(id)a3
{
  interactiveBehavior = self->_interactiveBehavior;
  v5 = a3;
  [v5 encodeInteger:interactiveBehavior forKey:@"interactiveBehavior"];
  [v5 encodeObject:self->_parameters forKey:@"parameters"];
}

- (INUIInterfaceSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"interactiveBehavior"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"parameters"];

  v10 = [(INUIInterfaceSection *)self initWithInteractiveBehavior:v5 parameters:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (INUIInterfaceSection)initWithInteractiveBehavior:(unint64_t)a3 parameters:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = INUIInterfaceSection;
  v7 = [(INUIInterfaceSection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_interactiveBehavior = a3;
    v9 = [v6 copy];
    parameters = v8->_parameters;
    v8->_parameters = v9;
  }

  return v8;
}

@end