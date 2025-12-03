@interface LSIconAlertManager
- (BOOL)_hasOutstandingTokenForIdentity:(id)identity;
- (LSIconAlertManager)init;
- (id)iconChangeAlertTokenForIdentity:(id)identity error:(id *)error;
- (void)_removeExtantToken:(id)token;
@end

@implementation LSIconAlertManager

- (LSIconAlertManager)init
{
  v6.receiver = self;
  v6.super_class = LSIconAlertManager;
  v2 = [(LSIconAlertManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    extantTokens = v2->_extantTokens;
    v2->_extantTokens = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (BOOL)_hasOutstandingTokenForIdentity:(id)identity
{
  v18 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_extantTokens;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        identity = [*(*(&v13 + 1) + 8 * i) identity];
        v10 = [identity isEqual:identityCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)iconChangeAlertTokenForIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [LSIconAlertManager iconChangeAlertTokenForIdentity:a2 error:self];
  }

  os_unfair_lock_lock(&self->_lock);
  if ([(LSIconAlertManager *)self _hasOutstandingTokenForIdentity:identityCopy])
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 35, 0, "[LSIconAlertManager iconChangeAlertTokenForIdentity:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSIconAlertManager.m", 113);
    v9 = 0;
  }

  else
  {
    v9 = [[LSIconChangeAlertToken alloc] initWithIdentity:identityCopy manager:self];
    [(NSMutableSet *)self->_extantTokens addObject:v9];
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (error && !v9)
  {
    v10 = v8;
    *error = v8;
  }

  return v9;
}

- (void)_removeExtantToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_extantTokens removeObject:tokenCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)iconChangeAlertTokenForIdentity:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LSIconAlertManager.m" lineNumber:103 description:@"must provide identity"];
}

@end