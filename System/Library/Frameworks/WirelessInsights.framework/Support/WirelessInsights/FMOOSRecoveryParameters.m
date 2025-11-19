@interface FMOOSRecoveryParameters
- (id).cxx_construct;
- (id)init:(unsigned int)a3 mnc:(unsigned int)a4 rat:(int)a5 band:(optional<unsigned int>)a6 arfcn:(optional<unsigned int>)a7;
@end

@implementation FMOOSRecoveryParameters

- (id)init:(unsigned int)a3 mnc:(unsigned int)a4 rat:(int)a5 band:(optional<unsigned int>)a6 arfcn:(optional<unsigned int>)a7
{
  v16.receiver = self;
  v16.super_class = FMOOSRecoveryParameters;
  v12 = [(FMOOSRecoveryParameters *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_mcc = a3;
    v12->_mnc = a4;
    v12->_rat = a5;
    v12->_band.var0.__val_ = a6.var0.__val_;
    v12->_band.__engaged_ = a6.__engaged_;
    v12->_arfcn.var0.__val_ = a7.var0.__val_;
    v12->_arfcn.__engaged_ = a7.__engaged_;
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