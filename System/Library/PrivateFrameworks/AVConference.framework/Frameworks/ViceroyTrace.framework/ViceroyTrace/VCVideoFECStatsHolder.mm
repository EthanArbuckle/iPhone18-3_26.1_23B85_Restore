@interface VCVideoFECStatsHolder
- (VCVideoFECStatsHolder)init;
- (void)dealloc;
- (void)merge:(id)merge;
@end

@implementation VCVideoFECStatsHolder

- (VCVideoFECStatsHolder)init
{
  v4.receiver = self;
  v4.super_class = VCVideoFECStatsHolder;
  v2 = [(VCVideoFECStatsHolder *)&v4 init];
  if (v2)
  {
    v2->_totalFECDataByteCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_totalFECParityByteCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_totalFECFrameCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_completeFECFrameCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_failedFECFrameCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_unfixableFECFrameCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_totalFECParityPacketCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_totalFECMediaPacketCount = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_fecLevelDuration = [[VCReportingHistogram alloc] initWithType:95 bucketValues:0];
    v2->_frameSizeCount = [[VCReportingHistogram alloc] initWithType:97 bucketValues:0];
    v2->_frameSizeVsParityCount = [[VCReportingHistogram alloc] initWithType:97 bucketValues:0];
    v2->_frameSizeVsFailedCount = [[VCReportingHistogram alloc] initWithType:97 bucketValues:0];
    v2->_frameSizeVsDeltaBetweenParityAndLoss = [[VCReportingBiDirectionalHistogram alloc] initWithType:97 bucketValues:0];
  }

  return v2;
}

- (void)merge:(id)merge
{
  -[VCHistogram merge:](self->_totalFECDataByteCount, "merge:", [merge totalFECDataByteCount]);
  -[VCHistogram merge:](self->_totalFECParityByteCount, "merge:", [merge totalFECParityByteCount]);
  -[VCHistogram merge:](self->_totalFECFrameCount, "merge:", [merge totalFECFrameCount]);
  -[VCHistogram merge:](self->_completeFECFrameCount, "merge:", [merge completeFECFrameCount]);
  -[VCHistogram merge:](self->_failedFECFrameCount, "merge:", [merge failedFECFrameCount]);
  -[VCHistogram merge:](self->_totalFECMediaPacketCount, "merge:", [merge totalFECMediaPacketCount]);
  totalFECParityPacketCount = self->_totalFECParityPacketCount;
  totalFECParityPacketCount = [merge totalFECParityPacketCount];

  [(VCHistogram *)totalFECParityPacketCount merge:totalFECParityPacketCount];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVideoFECStatsHolder;
  [(VCVideoFECStatsHolder *)&v3 dealloc];
}

@end