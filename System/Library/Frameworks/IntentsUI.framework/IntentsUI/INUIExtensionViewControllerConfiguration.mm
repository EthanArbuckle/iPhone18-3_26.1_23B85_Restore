@interface INUIExtensionViewControllerConfiguration
- (INUIExtensionViewControllerConfiguration)initWithCoder:(id)coder;
- (INUIExtensionViewControllerConfiguration)initWithParameters:(id)parameters interactiveBehavior:(unint64_t)behavior hostedViewContext:(unint64_t)context;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INUIExtensionViewControllerConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameters = [(INUIExtensionViewControllerConfiguration *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  [coderCopy encodeInteger:-[INUIExtensionViewControllerConfiguration hostedViewContext](self forKey:{"hostedViewContext"), @"hostedViewContext"}];
  [coderCopy encodeInteger:-[INUIExtensionViewControllerConfiguration interactiveBehavior](self forKey:{"interactiveBehavior"), @"interactiveBehavior"}];
}

- (INUIExtensionViewControllerConfiguration)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"parameters"];
  v9 = [coderCopy decodeIntegerForKey:@"interactiveBehavior"];
  v10 = [coderCopy decodeIntegerForKey:@"hostedViewContext"];

  v11 = [(INUIExtensionViewControllerConfiguration *)self initWithParameters:v8 interactiveBehavior:v9 hostedViewContext:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSSet *)self->_parameters copyWithZone:zone];
  v7 = [v5 initWithParameters:v6 interactiveBehavior:-[INUIExtensionViewControllerConfiguration interactiveBehavior](self hostedViewContext:{"interactiveBehavior"), -[INUIExtensionViewControllerConfiguration hostedViewContext](self, "hostedViewContext")}];

  return v7;
}

- (INUIExtensionViewControllerConfiguration)initWithParameters:(id)parameters interactiveBehavior:(unint64_t)behavior hostedViewContext:(unint64_t)context
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = INUIExtensionViewControllerConfiguration;
  v9 = [(INUIExtensionViewControllerConfiguration *)&v13 init];
  if (v9)
  {
    v10 = [parametersCopy copy];
    parameters = v9->_parameters;
    v9->_parameters = v10;

    v9->_interactiveBehavior = behavior;
    v9->_hostedViewContext = context;
  }

  return v9;
}

@end