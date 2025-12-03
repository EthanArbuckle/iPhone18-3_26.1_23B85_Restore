@interface FMOOSClientCrowdsourcedPrediction
- (id)initLastOosRate:(id)rate minOosRate:(id)oosRate maxOosRate:(id)maxOosRate maxCount:(unsigned int)count isSent:(BOOL)sent latitude:(double)latitude longitude:(double)longitude oosRecoveryParametersForPopularPLMN:(id)self0 oosRecoveryParametersForHomePLMN:(id)self1;
@end

@implementation FMOOSClientCrowdsourcedPrediction

- (id)initLastOosRate:(id)rate minOosRate:(id)oosRate maxOosRate:(id)maxOosRate maxCount:(unsigned int)count isSent:(BOOL)sent latitude:(double)latitude longitude:(double)longitude oosRecoveryParametersForPopularPLMN:(id)self0 oosRecoveryParametersForHomePLMN:(id)self1
{
  rateCopy = rate;
  oosRateCopy = oosRate;
  maxOosRateCopy = maxOosRate;
  nCopy = n;
  mNCopy = mN;
  v29.receiver = self;
  v29.super_class = FMOOSClientCrowdsourcedPrediction;
  v22 = [(FMOOSClientCrowdsourcedPrediction *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_lastOosRate, rate);
    objc_storeStrong(&v23->_minOosRate, oosRate);
    objc_storeStrong(&v23->_maxOosRate, maxOosRate);
    v23->_maxCount = count;
    v23->_isSent = sent;
    v23->_latitude = latitude;
    v23->_longitude = longitude;
    objc_storeStrong(&v23->_oosRecoveryParametersForPopularPLMN, n);
    objc_storeStrong(&v23->_oosRecoveryParametersForHomePLMN, mN);
    v24 = v23;
  }

  return v23;
}

@end