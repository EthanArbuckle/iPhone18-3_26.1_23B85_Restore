@interface ATXScorableTimeDNDModeWrapper
- (ATXScorableTimeDNDModeWrapper)initWithDNDMode:(id)mode;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeDNDModeWrapper

- (ATXScorableTimeDNDModeWrapper)initWithDNDMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = ATXScorableTimeDNDModeWrapper;
  v6 = [(ATXScorableTimeDNDModeWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dndMode, mode);
  }

  return v7;
}

- (NSString)scorableTimeIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  dndMode = [(ATXScorableTimeDNDModeWrapper *)self dndMode];
  identifier = [dndMode identifier];
  uUIDString = [identifier UUIDString];
  v6 = [v2 stringWithFormat:@"dndModeUUID__%@", uUIDString];

  return v6;
}

@end