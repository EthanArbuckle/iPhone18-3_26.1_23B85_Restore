@interface MTRGeneralCommissioningClusterBasicCommissioningInfo
- (MTRGeneralCommissioningClusterBasicCommissioningInfo)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralCommissioningClusterBasicCommissioningInfo

- (MTRGeneralCommissioningClusterBasicCommissioningInfo)init
{
  v7.receiver = self;
  v7.super_class = MTRGeneralCommissioningClusterBasicCommissioningInfo;
  v2 = [(MTRGeneralCommissioningClusterBasicCommissioningInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    failSafeExpiryLengthSeconds = v2->_failSafeExpiryLengthSeconds;
    v2->_failSafeExpiryLengthSeconds = &unk_284C3E588;

    maxCumulativeFailsafeSeconds = v3->_maxCumulativeFailsafeSeconds;
    v3->_maxCumulativeFailsafeSeconds = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralCommissioningClusterBasicCommissioningInfo);
  v5 = [(MTRGeneralCommissioningClusterBasicCommissioningInfo *)self failSafeExpiryLengthSeconds];
  [(MTRGeneralCommissioningClusterBasicCommissioningInfo *)v4 setFailSafeExpiryLengthSeconds:v5];

  v6 = [(MTRGeneralCommissioningClusterBasicCommissioningInfo *)self maxCumulativeFailsafeSeconds];
  [(MTRGeneralCommissioningClusterBasicCommissioningInfo *)v4 setMaxCumulativeFailsafeSeconds:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: failSafeExpiryLengthSeconds:%@ maxCumulativeFailsafeSeconds:%@; >", v5, self->_failSafeExpiryLengthSeconds, self->_maxCumulativeFailsafeSeconds];;

  return v6;
}

@end