@interface ATXScorableTimeDNDModeWrapper
- (ATXScorableTimeDNDModeWrapper)initWithDNDMode:(id)a3;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeDNDModeWrapper

- (ATXScorableTimeDNDModeWrapper)initWithDNDMode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXScorableTimeDNDModeWrapper;
  v6 = [(ATXScorableTimeDNDModeWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dndMode, a3);
  }

  return v7;
}

- (NSString)scorableTimeIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(ATXScorableTimeDNDModeWrapper *)self dndMode];
  v4 = [v3 identifier];
  v5 = [v4 UUIDString];
  v6 = [v2 stringWithFormat:@"dndModeUUID__%@", v5];

  return v6;
}

@end