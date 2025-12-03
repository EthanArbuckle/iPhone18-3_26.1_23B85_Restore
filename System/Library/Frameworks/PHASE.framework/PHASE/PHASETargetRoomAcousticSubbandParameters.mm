@interface PHASETargetRoomAcousticSubbandParameters
- (PHASETargetRoomAcousticSubbandParameters)init;
- (void)setConfidence:(double)confidence;
- (void)setEarlyRoomEqDb:(double)db;
- (void)setFrequency:(double)frequency;
- (void)setLateRoomEqDb:(double)db;
- (void)setRt60:(double)rt60;
@end

@implementation PHASETargetRoomAcousticSubbandParameters

- (PHASETargetRoomAcousticSubbandParameters)init
{
  v3.receiver = self;
  v3.super_class = PHASETargetRoomAcousticSubbandParameters;
  result = [(PHASETargetRoomAcousticSubbandParameters *)&v3 init];
  if (result)
  {
    *&result->_frequency = xmmword_23A597560;
    result->_earlyRoomEqDb = 0.0;
    result->_lateRoomEqDb = 0.0;
    result->_confidence = 1.0;
  }

  return result;
}

- (void)setFrequency:(double)frequency
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_frequency = PHASEGetPropertyBounded<double>(v8, v7, frequency, 20.0, 20000.0);
}

- (void)setRt60:(double)rt60
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_rt60 = PHASEGetPropertyBounded<double>(v8, v7, rt60, 0.0, 15.0);
}

- (void)setEarlyRoomEqDb:(double)db
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_earlyRoomEqDb = PHASEGetPropertyBounded<double>(v8, v7, db, -60.0, 20.0);
}

- (void)setLateRoomEqDb:(double)db
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_lateRoomEqDb = PHASEGetPropertyBounded<double>(v8, v7, db, -60.0, 20.0);
}

- (void)setConfidence:(double)confidence
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_confidence = PHASEGetPropertyBounded<double>(v8, v7, confidence, 0.0, 1.0);
}

@end