@interface ATXScreenLogUnlockSessionContext
- (ATXScreenLogUnlockSessionContext)init;
- (ATXScreenLogUnlockSessionContext)initWithCoder:(id)a3;
- (ATXScreenLogUnlockSessionContext)initWithUnlockSessionManager:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXScreenLogUnlockSessionContext:(id)a3;
@end

@implementation ATXScreenLogUnlockSessionContext

- (ATXScreenLogUnlockSessionContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXScreenLogUnlockSessionContext *)self initWithUnlockSessionManager:v3];

  return v4;
}

- (ATXScreenLogUnlockSessionContext)initWithUnlockSessionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXScreenLogUnlockSessionContext;
  v6 = [(ATXScreenLogUnlockSessionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unlockSessionManager, a3);
  }

  return v7;
}

- (ATXScreenLogUnlockSessionContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277D42620];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"sessionManager" withCoder:v5 expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSessionContext" errorCode:-1 logHandle:v7];

  if (v8)
  {
    self = [(ATXScreenLogUnlockSessionContext *)self initWithUnlockSessionManager:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScreenLogUnlockSessionContext *)self isEqualToATXScreenLogUnlockSessionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXScreenLogUnlockSessionContext:(id)a3
{
  v4 = self->_unlockSessionManager;
  v5 = v4;
  if (v4 == *(a3 + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(ATXHomeScreenLogUnlockSessionManager *)v4 isEqual:?];
  }

  return v6;
}

@end