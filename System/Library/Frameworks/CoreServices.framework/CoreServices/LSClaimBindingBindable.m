@interface LSClaimBindingBindable
+ (id)bindableWithDocumentProxy:(id)a3;
+ (id)bindableWithTypeIdentifier:(id)a3;
+ (id)bindableWithURL:(id)a3;
- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)a3 auditToken:(unsigned __int8)a4;
- (LSClaimBindingBindable)initWithCoder:(id)a3;
- (id)_initProtected;
- (id)typeRecordWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSClaimBindingBindable

- (id)_initProtected
{
  v3.receiver = self;
  v3.super_class = LSClaimBindingBindable;
  return [(LSClaimBindingBindable *)&v3 init];
}

- (LSClaimBindingBindable)initWithCoder:(id)a3
{
  v3 = a3;
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (id)typeRecordWithError:(id *)a3
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)a3 auditToken:(unsigned __int8)a4
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

+ (id)bindableWithDocumentProxy:(id)a3
{
  v3 = a3;
  v4 = [[_LSClaimBindingDocumentProxyBindable alloc] initWithProxy:v3];

  return v4;
}

+ (id)bindableWithURL:(id)a3
{
  v3 = a3;
  v4 = [[_LSClaimBindingURLBindable alloc] initWithURL:v3];

  return v4;
}

+ (id)bindableWithTypeIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[_LSClaimBindingTypeIdentifierBindable alloc] initWithTypeIdentifier:v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end