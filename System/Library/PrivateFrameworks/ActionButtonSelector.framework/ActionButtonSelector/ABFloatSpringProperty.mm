@interface ABFloatSpringProperty
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (ABFloatSpringProperty)init;
- (double)projectForDeceleration:(double)deceleration;
- (double)projectForTime:(double)time;
- (void)setOutput:(double)output;
@end

@implementation ABFloatSpringProperty

- (ABFloatSpringProperty)init
{
  v3.receiver = self;
  v3.super_class = ABFloatSpringProperty;
  result = [(UIViewFloatAnimatableProperty *)&v3 init];
  if (result)
  {
    result->_bounce = 0.15;
    result->_duration = 0.55;
    result->_trackingBounce = 0.15;
    result->_trackingDuration = 0.15;
  }

  return result;
}

uint64_t __34__ABFloatSpringProperty_setInput___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = ABFrameRateRange();
  v5 = v4;
  v7 = v6;
  v8 = ABHighFrameRateUpdateReasonMake(100);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34__ABFloatSpringProperty_setInput___block_invoke_2;
  v12[3] = &unk_278BFFE20;
  v12[4] = *(a1 + 32);
  LODWORD(v9) = v5;
  LODWORD(v10) = v7;
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:v8 updateReason:v12 animations:{COERCE_DOUBLE(__PAIR64__(HIDWORD(*(a1 + 40)), LODWORD(v3))), v9, v10}];
}

- (void)setOutput:(double)output
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__ABFloatSpringProperty_setOutput___block_invoke;
  v3[3] = &unk_278BFFE20;
  v3[4] = self;
  *&v3[5] = output;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

uint64_t __35__ABFloatSpringProperty_setOutput___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__ABFloatSpringProperty_setOutput___block_invoke_2;
  v2[3] = &unk_278BFFE20;
  v2[4] = *(a1 + 32);
  v2[5] = *(a1 + 40);
  return [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v2];
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  *&retstr->var7 = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var0 = 0u;
  if (a5 <= 2)
  {
    v5 = *(&self->var0 + *off_278BFFE58[a5]);
    retstr->var0 = 1.0 - *(&self->var0 + *off_278BFFE40[a5]);
    retstr->var1 = v5;
  }

  return self;
}

- (double)projectForDeceleration:(double)deceleration
{
  [(ABFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 / 1000.0 * deceleration / (1.0 - deceleration);
}

- (double)projectForTime:(double)time
{
  [(ABFloatSpringProperty *)self output];
  v6 = v5;
  [(UIViewFloatAnimatableProperty *)self velocity];
  return v6 + v7 * time;
}

@end