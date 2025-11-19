@interface VCVideoFECStatsHolder
- (VCVideoFECStatsHolder)init;
- (void)dealloc;
- (void)merge:(id)a3;
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

- (void)merge:(id)a3
{
  -[VCHistogram merge:](self->_totalFECDataByteCount, "merge:", [a3 totalFECDataByteCount]);
  -[VCHistogram merge:](self->_totalFECParityByteCount, "merge:", [a3 totalFECParityByteCount]);
  -[VCHistogram merge:](self->_totalFECFrameCount, "merge:", [a3 totalFECFrameCount]);
  -[VCHistogram merge:](self->_completeFECFrameCount, "merge:", [a3 completeFECFrameCount]);
  -[VCHistogram merge:](self->_failedFECFrameCount, "merge:", [a3 failedFECFrameCount]);
  -[VCHistogram merge:](self->_totalFECMediaPacketCount, "merge:", [a3 totalFECMediaPacketCount]);
  totalFECParityPacketCount = self->_totalFECParityPacketCount;
  v6 = [a3 totalFECParityPacketCount];

  [(VCHistogram *)totalFECParityPacketCount merge:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVideoFECStatsHolder;
  [(VCVideoFECStatsHolder *)&v3 dealloc];
}

@end