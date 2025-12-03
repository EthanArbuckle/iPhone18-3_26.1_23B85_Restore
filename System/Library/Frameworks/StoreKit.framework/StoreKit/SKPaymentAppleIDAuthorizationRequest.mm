@interface SKPaymentAppleIDAuthorizationRequest
- (SKPaymentAppleIDAuthorizationRequest)initWithClientIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKPaymentAppleIDAuthorizationRequest

- (SKPaymentAppleIDAuthorizationRequest)initWithClientIdentifier:(id)identifier teamIdentifier:(id)teamIdentifier
{
  identifierCopy = identifier;
  teamIdentifierCopy = teamIdentifier;
  v9 = teamIdentifierCopy;
  if (!identifierCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKPaymentAppleIDAuthorizationRequest initWithClientIdentifier:? teamIdentifier:?];
    }

    goto LABEL_10;
  }

  if (!teamIdentifierCopy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKPaymentAppleIDAuthorizationRequest initWithClientIdentifier:? teamIdentifier:?];
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v14.receiver = self;
  v14.super_class = SKPaymentAppleIDAuthorizationRequest;
  v10 = [(SKPaymentAppleIDAuthorizationRequest *)&v14 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_clientIdentifier, identifier);
    objc_storeStrong(p_isa + 2, teamIdentifier);
  }

  self = p_isa;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SKPaymentAppleIDAuthorizationRequest);
  v5 = [(NSString *)self->_clientIdentifier copy];
  clientIdentifier = v4->_clientIdentifier;
  v4->_clientIdentifier = v5;

  v7 = [(NSString *)self->_teamIdentifier copy];
  teamIdentifier = v4->_teamIdentifier;
  v4->_teamIdentifier = v7;

  v9 = [(NSString *)self->_serviceIdentifier copy];
  serviceIdentifier = v4->_serviceIdentifier;
  v4->_serviceIdentifier = v9;

  return v4;
}

- (void)initWithClientIdentifier:(uint64_t)a1 teamIdentifier:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Team identifier is nil", &v1, 0xCu);
}

- (void)initWithClientIdentifier:(uint64_t)a1 teamIdentifier:.cold.2(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Client identifier is nil", &v1, 0xCu);
}

@end