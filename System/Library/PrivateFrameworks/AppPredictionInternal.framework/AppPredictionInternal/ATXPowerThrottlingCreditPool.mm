@interface ATXPowerThrottlingCreditPool
- (ATXPowerThrottlingCreditPool)init;
- (ATXPowerThrottlingCreditPool)initWithConfig:(id)config;
- (void)consumeCredits:(int64_t)credits toRun:(id)run;
@end

@implementation ATXPowerThrottlingCreditPool

- (ATXPowerThrottlingCreditPool)initWithConfig:(id)config
{
  configCopy = config;
  v4 = sub_2267C9A08(configCopy);

  return v4;
}

- (void)consumeCredits:(int64_t)credits toRun:(id)run
{
  v6 = _Block_copy(run);
  v12[2] = v6;
  v7 = *(&self->super.isa + OBJC_IVAR___ATXPowerThrottlingCreditPool_queue);
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = credits;
  v8[4] = sub_2267C9EF4;
  v8[5] = v12;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2267C9F14;
  *(v9 + 24) = v8;
  aBlock[4] = sub_2267C9F0C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2267A3E84;
  aBlock[3] = &block_descriptor_22;
  v10 = _Block_copy(aBlock);
  selfCopy = self;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v6);

  if (v7)
  {
    __break(1u);
  }
}

- (ATXPowerThrottlingCreditPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end