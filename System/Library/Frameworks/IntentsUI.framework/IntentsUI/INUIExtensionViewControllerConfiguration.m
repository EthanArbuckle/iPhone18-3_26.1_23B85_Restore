@interface INUIExtensionViewControllerConfiguration
- (INUIExtensionViewControllerConfiguration)initWithCoder:(id)a3;
- (INUIExtensionViewControllerConfiguration)initWithParameters:(id)a3 interactiveBehavior:(unint64_t)a4 hostedViewContext:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INUIExtensionViewControllerConfiguration

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(INUIExtensionViewControllerConfiguration *)self parameters];
  [v5 encodeObject:v4 forKey:@"parameters"];

  [v5 encodeInteger:-[INUIExtensionViewControllerConfiguration hostedViewContext](self forKey:{"hostedViewContext"), @"hostedViewContext"}];
  [v5 encodeInteger:-[INUIExtensionViewControllerConfiguration interactiveBehavior](self forKey:{"interactiveBehavior"), @"interactiveBehavior"}];
}

- (INUIExtensionViewControllerConfiguration)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"parameters"];
  v9 = [v5 decodeIntegerForKey:@"interactiveBehavior"];
  v10 = [v5 decodeIntegerForKey:@"hostedViewContext"];

  v11 = [(INUIExtensionViewControllerConfiguration *)self initWithParameters:v8 interactiveBehavior:v9 hostedViewContext:v10];
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSSet *)self->_parameters copyWithZone:a3];
  v7 = [v5 initWithParameters:v6 interactiveBehavior:-[INUIExtensionViewControllerConfiguration interactiveBehavior](self hostedViewContext:{"interactiveBehavior"), -[INUIExtensionViewControllerConfiguration hostedViewContext](self, "hostedViewContext")}];

  return v7;
}

- (INUIExtensionViewControllerConfiguration)initWithParameters:(id)a3 interactiveBehavior:(unint64_t)a4 hostedViewContext:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = INUIExtensionViewControllerConfiguration;
  v9 = [(INUIExtensionViewControllerConfiguration *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    parameters = v9->_parameters;
    v9->_parameters = v10;

    v9->_interactiveBehavior = a4;
    v9->_hostedViewContext = a5;
  }

  return v9;
}

@end