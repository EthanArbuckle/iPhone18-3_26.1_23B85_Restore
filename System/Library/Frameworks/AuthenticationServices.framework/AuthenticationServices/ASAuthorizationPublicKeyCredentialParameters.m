@interface ASAuthorizationPublicKeyCredentialParameters
- (ASAuthorizationPublicKeyCredentialParameters)initWithAlgorithm:(ASCOSEAlgorithmIdentifier)algorithm;
- (ASAuthorizationPublicKeyCredentialParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ASAuthorizationPublicKeyCredentialParameters *)self algorithm];

  return [v4 initWithAlgorithm:v5];
}

- (ASAuthorizationPublicKeyCredentialParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];

  v6 = -[ASAuthorizationPublicKeyCredentialParameters initWithAlgorithm:](self, "initWithAlgorithm:", [v5 integerValue]);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[ASAuthorizationPublicKeyCredentialParameters algorithm](self, "algorithm")}];
  [v5 encodeObject:v6 forKey:@"algorithm"];
}

@end