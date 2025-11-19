@interface FMOOSClientCrowdsourcedPrediction
- (id)initLastOosRate:(id)a3 minOosRate:(id)a4 maxOosRate:(id)a5 maxCount:(unsigned int)a6 isSent:(BOOL)a7 latitude:(double)a8 longitude:(double)a9 oosRecoveryParametersForPopularPLMN:(id)a10 oosRecoveryParametersForHomePLMN:(id)a11;
@end

@implementation FMOOSClientCrowdsourcedPrediction

- (id)initLastOosRate:(id)a3 minOosRate:(id)a4 maxOosRate:(id)a5 maxCount:(unsigned int)a6 isSent:(BOOL)a7 latitude:(double)a8 longitude:(double)a9 oosRecoveryParametersForPopularPLMN:(id)a10 oosRecoveryParametersForHomePLMN:(id)a11
{
  v28 = a3;
  v27 = a4;
  v19 = a5;
  v20 = a10;
  v21 = a11;
  v29.receiver = self;
  v29.super_class = FMOOSClientCrowdsourcedPrediction;
  v22 = [(FMOOSClientCrowdsourcedPrediction *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_lastOosRate, a3);
    objc_storeStrong(&v23->_minOosRate, a4);
    objc_storeStrong(&v23->_maxOosRate, a5);
    v23->_maxCount = a6;
    v23->_isSent = a7;
    v23->_latitude = a8;
    v23->_longitude = a9;
    objc_storeStrong(&v23->_oosRecoveryParametersForPopularPLMN, a10);
    objc_storeStrong(&v23->_oosRecoveryParametersForHomePLMN, a11);
    v24 = v23;
  }

  return v23;
}

@end