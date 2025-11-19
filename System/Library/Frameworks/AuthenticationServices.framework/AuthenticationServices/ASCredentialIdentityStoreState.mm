@interface ASCredentialIdentityStoreState
- (ASCredentialIdentityStoreState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4;
- (id)description;
@end

@implementation ASCredentialIdentityStoreState

- (ASCredentialIdentityStoreState)initWithEnabledState:(BOOL)a3 supportsIncrementalUpdates:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = ASCredentialIdentityStoreState;
  v6 = [(ASCredentialIdentityStoreState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_enabled = a3;
    v6->_supportsIncrementalUpdates = a4;
    v8 = v6;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsIncrementalUpdates];
  v7 = [v3 stringWithFormat:@"<%@: %p isEnabled=%@; supportsIncrementalUpdates=%@>", v4, self, v5, v6];;

  return v7;
}

@end