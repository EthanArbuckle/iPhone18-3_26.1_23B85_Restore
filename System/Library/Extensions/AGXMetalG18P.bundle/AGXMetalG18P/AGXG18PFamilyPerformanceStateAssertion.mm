@interface AGXG18PFamilyPerformanceStateAssertion
- (AGXG18PFamilyPerformanceStateAssertion)initWithDevice:(id)device level:(int)level;
- (BOOL)wasPerformanceStateAssertionMaintained;
- (int64_t)requestedPerformanceState;
- (void)dealloc;
@end

@implementation AGXG18PFamilyPerformanceStateAssertion

- (BOOL)wasPerformanceStateAssertionMaintained
{
  v2 = [-[AGXG18PFamilyDevice getConsistentPerfStateInfoAndReset:](self->_device getConsistentPerfStateInfoAndReset:{0), "objectForKeyedSubscript:", @"was_consistent"}];

  return [v2 BOOLValue];
}

- (int64_t)requestedPerformanceState
{
  requestedLevel = self->_requestedLevel;
  if (requestedLevel >= 3)
  {
    return 255;
  }

  else
  {
    return requestedLevel;
  }
}

- (void)dealloc
{
  fwrite("AGX: Attempting to destroy performance state assertion\n\n", 0x38uLL, 1uLL, *MEMORY[0x29EDCA610]);
  [(AGXG18PFamilyDevice *)self->_device removePerformanceStateAssertion:self];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyPerformanceStateAssertion;
  [(AGXG18PFamilyPerformanceStateAssertion *)&v3 dealloc];
}

- (AGXG18PFamilyPerformanceStateAssertion)initWithDevice:(id)device level:(int)level
{
  v7.receiver = self;
  v7.super_class = AGXG18PFamilyPerformanceStateAssertion;
  result = [(AGXG18PFamilyPerformanceStateAssertion *)&v7 init];
  if (result)
  {
    result->_device = device;
    result->_requestedLevel = level;
  }

  return result;
}

@end