@interface ATXScreenLogUnlockSessionContext
- (ATXScreenLogUnlockSessionContext)init;
- (ATXScreenLogUnlockSessionContext)initWithCoder:(id)coder;
- (ATXScreenLogUnlockSessionContext)initWithUnlockSessionManager:(id)manager;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXScreenLogUnlockSessionContext:(id)context;
@end

@implementation ATXScreenLogUnlockSessionContext

- (ATXScreenLogUnlockSessionContext)init
{
  v3 = objc_opt_new();
  v4 = [(ATXScreenLogUnlockSessionContext *)self initWithUnlockSessionManager:v3];

  return v4;
}

- (ATXScreenLogUnlockSessionContext)initWithUnlockSessionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ATXScreenLogUnlockSessionContext;
  v6 = [(ATXScreenLogUnlockSessionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unlockSessionManager, manager);
  }

  return v7;
}

- (ATXScreenLogUnlockSessionContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277D42620];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_metrics();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"sessionManager" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXScreenLogUnlockSessionContext" errorCode:-1 logHandle:v7];

  if (v8)
  {
    self = [(ATXScreenLogUnlockSessionContext *)self initWithUnlockSessionManager:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXScreenLogUnlockSessionContext *)self isEqualToATXScreenLogUnlockSessionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXScreenLogUnlockSessionContext:(id)context
{
  v4 = self->_unlockSessionManager;
  v5 = v4;
  if (v4 == *(context + 1))
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