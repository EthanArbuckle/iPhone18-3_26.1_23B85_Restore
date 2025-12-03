@interface AXMADSREnvelope
+ (id)defaultEnvelope;
- (AXMADSREnvelope)initWithAttackDuration:(double)duration attackLevel:(double)level decayDuration:(double)decayDuration sustainDuration:(double)sustainDuration sustainLevel:(double)sustainLevel releaseDuration:(double)releaseDuration;
- (double)lengthMS;
- (double)levelForTime:(double)time;
- (id)copy;
@end

@implementation AXMADSREnvelope

+ (id)defaultEnvelope
{
  v2 = [[AXMADSREnvelope alloc] initWithAttackDuration:20.0 attackLevel:1.0 decayDuration:200.0 sustainDuration:50.0 sustainLevel:0.0 releaseDuration:50.0];

  return v2;
}

- (AXMADSREnvelope)initWithAttackDuration:(double)duration attackLevel:(double)level decayDuration:(double)decayDuration sustainDuration:(double)sustainDuration sustainLevel:(double)sustainLevel releaseDuration:(double)releaseDuration
{
  v15.receiver = self;
  v15.super_class = AXMADSREnvelope;
  result = [(AXMADSREnvelope *)&v15 init];
  if (result)
  {
    result->_attackMS = duration;
    result->_attackLevel = level;
    result->_decayMS = decayDuration;
    result->_sustainMS = sustainDuration;
    result->_sustainLevel = sustainLevel;
    result->_releaseMS = releaseDuration;
  }

  return result;
}

- (id)copy
{
  v3 = [AXMADSREnvelope alloc];
  attackMS = self->_attackMS;
  attackLevel = self->_attackLevel;
  decayMS = self->_decayMS;
  sustainMS = self->_sustainMS;
  sustainLevel = self->_sustainLevel;
  releaseMS = self->_releaseMS;

  return [(AXMADSREnvelope *)v3 initWithAttackDuration:attackMS attackLevel:attackLevel decayDuration:decayMS sustainDuration:sustainMS sustainLevel:sustainLevel releaseDuration:releaseMS];
}

- (double)lengthMS
{
  [(AXMADSREnvelope *)self attackMS];
  v4 = v3;
  [(AXMADSREnvelope *)self decayMS];
  v6 = v4 + v5;
  [(AXMADSREnvelope *)self sustainMS];
  v8 = v6 + v7;
  [(AXMADSREnvelope *)self releaseMS];
  return v8 + v9;
}

- (double)levelForTime:(double)time
{
  [(AXMADSREnvelope *)self attackMS];
  v6 = v5;
  [(AXMADSREnvelope *)self attackMS];
  v8 = v7;
  if (v6 > time)
  {
    [(AXMADSREnvelope *)self attackLevel];
    return time / v8 * v9;
  }

  [(AXMADSREnvelope *)self decayMS];
  v12 = v8 + v11;
  [(AXMADSREnvelope *)self attackMS];
  v14 = v13;
  if (v12 > time)
  {
    v15 = time - v13;
    [(AXMADSREnvelope *)self decayMS];
    v17 = v16;
    [(AXMADSREnvelope *)self attackLevel];
    v19 = v18;
    [(AXMADSREnvelope *)self attackLevel];
    v21 = v20;
    [(AXMADSREnvelope *)self sustainLevel];
    v23 = v21 - v22;
    v24 = -v15;
    return v19 + v24 / v17 * v23;
  }

  [(AXMADSREnvelope *)self decayMS];
  v26 = v14 + v25;
  [(AXMADSREnvelope *)self sustainMS];
  if (v26 + v27 <= time)
  {
    [(AXMADSREnvelope *)self attackMS];
    v29 = time - v28;
    [(AXMADSREnvelope *)self decayMS];
    v31 = v29 - v30;
    [(AXMADSREnvelope *)self sustainMS];
    v33 = v31 - v32;
    [(AXMADSREnvelope *)self releaseMS];
    v17 = v34;
    [(AXMADSREnvelope *)self sustainLevel];
    v19 = v35;
    [(AXMADSREnvelope *)self sustainLevel];
    v24 = -v33;
    return v19 + v24 / v17 * v23;
  }

  [(AXMADSREnvelope *)self sustainLevel];
  return result;
}

@end