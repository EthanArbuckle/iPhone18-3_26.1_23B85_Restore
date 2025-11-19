@interface AKXPCConnectionConfiguration
- (id)description;
@end

@implementation AKXPCConnectionConfiguration

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  machServiceName = self->_machServiceName;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  v7 = [v5 stringWithFormat:@"<%@:%p> serviceName: %@, options: %@, xpcEndpoint: %@", v3, self, machServiceName, v6, self->_daemonXPCEndpoint];
  MEMORY[0x1E69E5920](v6);

  return v7;
}

@end