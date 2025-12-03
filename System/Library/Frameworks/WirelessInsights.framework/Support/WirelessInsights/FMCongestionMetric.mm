@interface FMCongestionMetric
+ (unsigned)QoEScoreEnumToNumericValue:(id)value;
- (BOOL)isCongested;
- (id)description;
- (id)init:(unint64_t)init gci:(id)gci arfnc:(unsigned int)arfnc ratType:(id)type rsrp:(int)rsrp rsrq:(int)rsrq sinr:(int)sinr dlBottleneckScoreInvalid:(unsigned int)self0 dlBottleneckScoreNo:(unsigned int)self1 dlBottleneckScoreLow:(unsigned int)self2 dlBottleneckScoreMedium:(unsigned int)self3 dlBottleneckScoreHigh:(unsigned int)self4 ulBottleneckScoreInvalid:(unsigned int)self5 ulBottleneckScoreNo:(unsigned int)self6 ulBottleneckScoreLow:(unsigned int)self7 ulBottleneckScoreMedium:(unsigned int)self8 ulBottleneckScoreHigh:(unsigned int)self9 dataStallIndicatorAVS:(unsigned int)s dataStallIndicatorUL:(unsigned int)l isSubway:(unsigned int)subway qoeScore:(unsigned int)score qoeDuration:(unsigned int)duration psPref:(unsigned int)pref subsId:(unsigned int)id;
@end

@implementation FMCongestionMetric

- (id)init:(unint64_t)init gci:(id)gci arfnc:(unsigned int)arfnc ratType:(id)type rsrp:(int)rsrp rsrq:(int)rsrq sinr:(int)sinr dlBottleneckScoreInvalid:(unsigned int)self0 dlBottleneckScoreNo:(unsigned int)self1 dlBottleneckScoreLow:(unsigned int)self2 dlBottleneckScoreMedium:(unsigned int)self3 dlBottleneckScoreHigh:(unsigned int)self4 ulBottleneckScoreInvalid:(unsigned int)self5 ulBottleneckScoreNo:(unsigned int)self6 ulBottleneckScoreLow:(unsigned int)self7 ulBottleneckScoreMedium:(unsigned int)self8 ulBottleneckScoreHigh:(unsigned int)self9 dataStallIndicatorAVS:(unsigned int)s dataStallIndicatorUL:(unsigned int)l isSubway:(unsigned int)subway qoeScore:(unsigned int)score qoeDuration:(unsigned int)duration psPref:(unsigned int)pref subsId:(unsigned int)id
{
  gciCopy = gci;
  typeCopy = type;
  v39.receiver = self;
  v39.super_class = FMCongestionMetric;
  v35 = [(FMCongestionMetric *)&v39 init];
  v36 = v35;
  if (v35)
  {
    v35->_timestamp = init;
    objc_storeStrong(&v35->_gci, gci);
    v36->_arfcn = arfnc;
    objc_storeStrong(&v36->_ratType, type);
    v36->_rsrp = rsrp;
    v36->_rsrq = rsrq;
    v36->_sinr = sinr;
    v36->_dlBottleneckScoreInvalid = invalid;
    v36->_dlBottleneckScoreNo = no;
    v36->_dlBottleneckScoreLow = low;
    v36->_dlBottleneckScoreMedium = medium;
    v36->_dlBottleneckScoreHigh = high;
    v36->_ulBottleneckScoreInvalid = scoreInvalid;
    v36->_ulBottleneckScoreNo = scoreNo;
    v36->_ulBottleneckScoreLow = scoreLow;
    v36->_ulBottleneckScoreMedium = scoreMedium;
    v36->_ulBottleneckScoreHigh = scoreHigh;
    v36->_dataStallIndicatorAVS = s;
    v36->_dataStallIndicatorUL = l;
    v36->_isSubway = subway;
    v36->_qoeScore = score;
    v36->_qoeDuration = duration;
    v36->_psPref = pref;
    v36->_subsId = id;
    v37 = v36;
  }

  return v36;
}

- (BOOL)isCongested
{
  isQoEScoreValid = [(FMCongestionMetric *)self isQoEScoreValid];
  if (isQoEScoreValid)
  {
    LOBYTE(isQoEScoreValid) = [(FMCongestionMetric *)self qoeScore]< 0x32;
  }

  return isQoEScoreValid;
}

+ (unsigned)QoEScoreEnumToNumericValue:(id)value
{
  valueCopy = value;
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
  v5 = [v4 objectForKeyedSubscript:valueCopy];
  unsignedIntValue = [v5 unsignedIntValue];

  return unsignedIntValue;
}

- (id)description
{
  timestamp = [(FMCongestionMetric *)self timestamp];
  v8 = [(FMCongestionMetric *)self gci];
  arfcn = [(FMCongestionMetric *)self arfcn];
  ratType = [(FMCongestionMetric *)self ratType];
  v3 = [NSString stringWithFormat:@"timestamp %llu, gci %@, arfcn %u, ratType %@, rsrp %d, rsrq %d, sinr %d, dlBottleneckScoreInvalid %u, dlBottleneckScoreNo %u, dlBottleneckScoreLow %u, dlBottleneckScoreMedium %u, dlBottleneckScoreHigh %u, ulBottleneckScoreInvalid %u, ulBottleneckScoreNo %u, ulBottleneckScoreLow %u, ulBottleneckScoreMedium %u, ulBottleneckScoreHigh %u, dataStallIndicatorAVS %u, dataStallIndicatorUL %u, isSubway %u, qoeScore %u, qoeDuration %u, psPref %u, subsId %u", timestamp, v8, arfcn, ratType, [(FMCongestionMetric *)self rsrp], [(FMCongestionMetric *)self rsrq], [(FMCongestionMetric *)self sinr], [(FMCongestionMetric *)self dlBottleneckScoreInvalid], [(FMCongestionMetric *)self dlBottleneckScoreNo], [(FMCongestionMetric *)self dlBottleneckScoreLow], [(FMCongestionMetric *)self dlBottleneckScoreMedium], [(FMCongestionMetric *)self dlBottleneckScoreHigh], [(FMCongestionMetric *)self ulBottleneckScoreInvalid], [(FMCongestionMetric *)self ulBottleneckScoreNo], [(FMCongestionMetric *)self ulBottleneckScoreLow], [(FMCongestionMetric *)self ulBottleneckScoreMedium], [(FMCongestionMetric *)self ulBottleneckScoreHigh], [(FMCongestionMetric *)self dataStallIndicatorAVS], [(FMCongestionMetric *)self dataStallIndicatorUL], [(FMCongestionMetric *)self isSubway], [(FMCongestionMetric *)self qoeScore], [(FMCongestionMetric *)self qoeDuration], [(FMCongestionMetric *)self psPref], [(FMCongestionMetric *)self subsId]];

  return v3;
}

@end