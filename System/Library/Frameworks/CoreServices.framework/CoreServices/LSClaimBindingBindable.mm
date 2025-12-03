@interface LSClaimBindingBindable
+ (id)bindableWithDocumentProxy:(id)proxy;
+ (id)bindableWithTypeIdentifier:(id)identifier;
+ (id)bindableWithURL:(id)l;
- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)style auditToken:(unsigned __int8)token;
- (LSClaimBindingBindable)initWithCoder:(id)coder;
- (id)_initProtected;
- (id)typeRecordWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSClaimBindingBindable

- (id)_initProtected
{
  v3.receiver = self;
  v3.super_class = LSClaimBindingBindable;
  return [(LSClaimBindingBindable *)&v3 init];
}

- (LSClaimBindingBindable)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (id)typeRecordWithError:(id *)error
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

- (BindingEvaluator)baseBindingEvaluatorWithBindingStyle:(SEL)style auditToken:(unsigned __int8)token
{
  objc_opt_class();
  result = NSRequestConcreteImplementation();
  __break(1u);
  return result;
}

+ (id)bindableWithDocumentProxy:(id)proxy
{
  proxyCopy = proxy;
  v4 = [[_LSClaimBindingDocumentProxyBindable alloc] initWithProxy:proxyCopy];

  return v4;
}

+ (id)bindableWithURL:(id)l
{
  lCopy = l;
  v4 = [[_LSClaimBindingURLBindable alloc] initWithURL:lCopy];

  return v4;
}

+ (id)bindableWithTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[_LSClaimBindingTypeIdentifierBindable alloc] initWithTypeIdentifier:identifierCopy];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end