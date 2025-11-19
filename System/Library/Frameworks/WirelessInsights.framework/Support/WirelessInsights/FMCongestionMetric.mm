@interface FMCongestionMetric
+ (unsigned)QoEScoreEnumToNumericValue:(id)a3;
- (BOOL)isCongested;
- (id)description;
- (id)init:(unint64_t)a3 gci:(id)a4 arfnc:(unsigned int)a5 ratType:(id)a6 rsrp:(int)a7 rsrq:(int)a8 sinr:(int)a9 dlBottleneckScoreInvalid:(unsigned int)a10 dlBottleneckScoreNo:(unsigned int)a11 dlBottleneckScoreLow:(unsigned int)a12 dlBottleneckScoreMedium:(unsigned int)a13 dlBottleneckScoreHigh:(unsigned int)a14 ulBottleneckScoreInvalid:(unsigned int)a15 ulBottleneckScoreNo:(unsigned int)a16 ulBottleneckScoreLow:(unsigned int)a17 ulBottleneckScoreMedium:(unsigned int)a18 ulBottleneckScoreHigh:(unsigned int)a19 dataStallIndicatorAVS:(unsigned int)a20 dataStallIndicatorUL:(unsigned int)a21 isSubway:(unsigned int)a22 qoeScore:(unsigned int)a23 qoeDuration:(unsigned int)a24 psPref:(unsigned int)a25 subsId:(unsigned int)a26;
@end

@implementation FMCongestionMetric

- (id)init:(unint64_t)a3 gci:(id)a4 arfnc:(unsigned int)a5 ratType:(id)a6 rsrp:(int)a7 rsrq:(int)a8 sinr:(int)a9 dlBottleneckScoreInvalid:(unsigned int)a10 dlBottleneckScoreNo:(unsigned int)a11 dlBottleneckScoreLow:(unsigned int)a12 dlBottleneckScoreMedium:(unsigned int)a13 dlBottleneckScoreHigh:(unsigned int)a14 ulBottleneckScoreInvalid:(unsigned int)a15 ulBottleneckScoreNo:(unsigned int)a16 ulBottleneckScoreLow:(unsigned int)a17 ulBottleneckScoreMedium:(unsigned int)a18 ulBottleneckScoreHigh:(unsigned int)a19 dataStallIndicatorAVS:(unsigned int)a20 dataStallIndicatorUL:(unsigned int)a21 isSubway:(unsigned int)a22 qoeScore:(unsigned int)a23 qoeDuration:(unsigned int)a24 psPref:(unsigned int)a25 subsId:(unsigned int)a26
{
  v33 = a4;
  v34 = a6;
  v39.receiver = self;
  v39.super_class = FMCongestionMetric;
  v35 = [(FMCongestionMetric *)&v39 init];
  v36 = v35;
  if (v35)
  {
    v35->_timestamp = a3;
    objc_storeStrong(&v35->_gci, a4);
    v36->_arfcn = a5;
    objc_storeStrong(&v36->_ratType, a6);
    v36->_rsrp = a7;
    v36->_rsrq = a8;
    v36->_sinr = a9;
    v36->_dlBottleneckScoreInvalid = a10;
    v36->_dlBottleneckScoreNo = a11;
    v36->_dlBottleneckScoreLow = a12;
    v36->_dlBottleneckScoreMedium = a13;
    v36->_dlBottleneckScoreHigh = a14;
    v36->_ulBottleneckScoreInvalid = a15;
    v36->_ulBottleneckScoreNo = a16;
    v36->_ulBottleneckScoreLow = a17;
    v36->_ulBottleneckScoreMedium = a18;
    v36->_ulBottleneckScoreHigh = a19;
    v36->_dataStallIndicatorAVS = a20;
    v36->_dataStallIndicatorUL = a21;
    v36->_isSubway = a22;
    v36->_qoeScore = a23;
    v36->_qoeDuration = a24;
    v36->_psPref = a25;
    v36->_subsId = a26;
    v37 = v36;
  }

  return v36;
}

- (BOOL)isCongested
{
  v3 = [(FMCongestionMetric *)self isQoEScoreValid];
  if (v3)
  {
    LOBYTE(v3) = [(FMCongestionMetric *)self qoeScore]< 0x32;
  }

  return v3;
}

+ (unsigned)QoEScoreEnumToNumericValue:(id)a3
{
  v3 = a3;
  v8[0] = &off_1002BEEB0;
  v8[1] = &off_1002BEEC8;
  v9[0] = &off_1002BEEB0;
  v9[1] = &off_1002BEEE0;
  v8[2] = &off_1002BEEF8;
  v8[3] = &off_1002BEF28;
  v9[2] = &off_1002BEF10;
  v9[3] = &off_1002BEF40;
  v8[4] = &off_1002BEF58;
  v9[4] = &off_1002BEF70;
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 unsignedIntValue];

  return v6;
}

- (id)description
{
  v6 = [(FMCongestionMetric *)self timestamp];
  v8 = [(FMCongestionMetric *)self gci];
  v5 = [(FMCongestionMetric *)self arfcn];
  v7 = [(FMCongestionMetric *)self ratType];
  v3 = [NSString stringWithFormat:@"timestamp %llu, gci %@, arfcn %u, ratType %@, rsrp %d, rsrq %d, sinr %d, dlBottleneckScoreInvalid %u, dlBottleneckScoreNo %u, dlBottleneckScoreLow %u, dlBottleneckScoreMedium %u, dlBottleneckScoreHigh %u, ulBottleneckScoreInvalid %u, ulBottleneckScoreNo %u, ulBottleneckScoreLow %u, ulBottleneckScoreMedium %u, ulBottleneckScoreHigh %u, dataStallIndicatorAVS %u, dataStallIndicatorUL %u, isSubway %u, qoeScore %u, qoeDuration %u, psPref %u, subsId %u", v6, v8, v5, v7, [(FMCongestionMetric *)self rsrp], [(FMCongestionMetric *)self rsrq], [(FMCongestionMetric *)self sinr], [(FMCongestionMetric *)self dlBottleneckScoreInvalid], [(FMCongestionMetric *)self dlBottleneckScoreNo], [(FMCongestionMetric *)self dlBottleneckScoreLow], [(FMCongestionMetric *)self dlBottleneckScoreMedium], [(FMCongestionMetric *)self dlBottleneckScoreHigh], [(FMCongestionMetric *)self ulBottleneckScoreInvalid], [(FMCongestionMetric *)self ulBottleneckScoreNo], [(FMCongestionMetric *)self ulBottleneckScoreLow], [(FMCongestionMetric *)self ulBottleneckScoreMedium], [(FMCongestionMetric *)self ulBottleneckScoreHigh], [(FMCongestionMetric *)self dataStallIndicatorAVS], [(FMCongestionMetric *)self dataStallIndicatorUL], [(FMCongestionMetric *)self isSubway], [(FMCongestionMetric *)self qoeScore], [(FMCongestionMetric *)self qoeDuration], [(FMCongestionMetric *)self psPref], [(FMCongestionMetric *)self subsId]];

  return v3;
}

@end