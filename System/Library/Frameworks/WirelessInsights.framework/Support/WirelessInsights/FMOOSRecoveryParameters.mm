@interface FMOOSRecoveryParameters
- (id).cxx_construct;
- (id)init:(unsigned int)init mnc:(unsigned int)mnc rat:(int)rat band:(optional<unsigned int>)band arfcn:(optional<unsigned int>)arfcn;
@end

@implementation FMOOSRecoveryParameters

- (id)init:(unsigned int)init mnc:(unsigned int)mnc rat:(int)rat band:(optional<unsigned int>)band arfcn:(optional<unsigned int>)arfcn
{
  v16.receiver = self;
  v16.super_class = FMOOSRecoveryParameters;
  v12 = [(FMOOSRecoveryParameters *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_mcc = init;
    v12->_mnc = mnc;
    v12->_rat = rat;
    v12->_band.var0.__val_ = band.var0.__val_;
    v12->_band.__engaged_ = band.__engaged_;
    v12->_arfcn.var0.__val_ = arfcn.var0.__val_;
    v12->_arfcn.__engaged_ = arfcn.__engaged_;
    v14 = v12;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 28) = 0;
  *(self + 32) = 0;
  return self;
}

@end