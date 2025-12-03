@interface ASAuthorizationPublicKeyCredentialParameters
- (ASAuthorizationPublicKeyCredentialParameters)initWithAlgorithm:(ASCOSEAlgorithmIdentifier)algorithm;
- (ASAuthorizationPublicKeyCredentialParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASAuthorizationPublicKeyCredentialParameters

- (ASAuthorizationPublicKeyCredentialParameters)initWithAlgorithm:(ASCOSEAlgorithmIdentifier)algorithm
{
  v8.receiver = self;
  v8.super_class = ASAuthorizationPublicKeyCredentialParameters;
  v4 = [(ASAuthorizationPublicKeyCredentialParameters *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_algorithm = algorithm;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  algorithm = [(ASAuthorizationPublicKeyCredentialParameters *)self algorithm];

  return [v4 initWithAlgorithm:algorithm];
}

- (ASAuthorizationPublicKeyCredentialParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];

  v6 = -[ASAuthorizationPublicKeyCredentialParameters initWithAlgorithm:](self, "initWithAlgorithm:", [v5 integerValue]);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[ASAuthorizationPublicKeyCredentialParameters algorithm](self, "algorithm")}];
  [coderCopy encodeObject:v6 forKey:@"algorithm"];
}

@end