@interface ATXPowerThrottlingCreditPoolConfig
- (ATXPowerThrottlingCreditPoolConfig)init;
- (ATXPowerThrottlingCreditPoolConfig)initWithIdentifier:(id)identifier maxCredits:(int64_t)credits secondsToReplenishOneCredit:(int64_t)credit loggingSubsystem:(id)subsystem loggingCategory:(id)category;
@end

@implementation ATXPowerThrottlingCreditPoolConfig

- (ATXPowerThrottlingCreditPoolConfig)initWithIdentifier:(id)identifier maxCredits:(int64_t)credits secondsToReplenishOneCredit:(int64_t)credit loggingSubsystem:(id)subsystem loggingCategory:(id)category
{
  v10 = sub_226836408();
  v12 = v11;
  v13 = sub_226836408();
  v15 = v14;
  v16 = sub_226836408();
  v17 = (self + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier);
  *v17 = v10;
  v17[1] = v12;
  *(&self->super.isa + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits) = credits;
  *(&self->super.isa + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit) = credit;
  v18 = (self + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem);
  *v18 = v13;
  v18[1] = v15;
  v19 = (self + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory);
  *v19 = v16;
  v19[1] = v20;
  v22.receiver = self;
  v22.super_class = type metadata accessor for PowerThrottlingCreditPool.Config();
  return [(ATXPowerThrottlingCreditPoolConfig *)&v22 init];
}

- (ATXPowerThrottlingCreditPoolConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end