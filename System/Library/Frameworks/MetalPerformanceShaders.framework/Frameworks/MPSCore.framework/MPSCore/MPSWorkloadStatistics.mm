@interface MPSWorkloadStatistics
- (MPSWorkloadStatistics)init;
- (void)dealloc;
@end

@implementation MPSWorkloadStatistics

- (MPSWorkloadStatistics)init
{
  v4.receiver = self;
  v4.super_class = MPSWorkloadStatistics;
  result = [(MPSWorkloadStatistics *)&v4 init];
  v3 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&result->_float32Ops = v3;
  *&result->_integerOps = v3;
  *&result->_deviceMemoryBytesWrite = v3;
  result->_threadgroupMemoryBytesWrite = NAN;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSWorkloadStatistics;
  [(MPSWorkloadStatistics *)&v2 dealloc];
}

@end