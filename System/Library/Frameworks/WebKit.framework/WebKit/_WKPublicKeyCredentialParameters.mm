@interface _WKPublicKeyCredentialParameters
- (_WKPublicKeyCredentialParameters)initWithAlgorithm:(id)algorithm;
- (void)dealloc;
@end

@implementation _WKPublicKeyCredentialParameters

- (_WKPublicKeyCredentialParameters)initWithAlgorithm:(id)algorithm
{
  v7.receiver = self;
  v7.super_class = _WKPublicKeyCredentialParameters;
  v4 = [(_WKPublicKeyCredentialParameters *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(_WKPublicKeyCredentialParameters *)v4 setAlgorithm:algorithm];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _WKPublicKeyCredentialParameters;
  [(_WKPublicKeyCredentialParameters *)&v3 dealloc];
}

@end