@interface MPSWorkloadDispatchInfo
- (MPSWorkloadDispatchInfo)init;
- (void)dealloc;
- (void)setThreadgroupsPerGrid:(id *)a3;
- (void)setThreadsPerThreadgroup:(id *)a3;
@end

@implementation MPSWorkloadDispatchInfo

- (MPSWorkloadDispatchInfo)init
{
  v3.receiver = self;
  v3.super_class = MPSWorkloadDispatchInfo;
  result = [(MPSWorkloadDispatchInfo *)&v3 init];
  result->_computePipelineStateLabel = 0;
  result->_threadgroupMemoryLength = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSWorkloadDispatchInfo;
  [(MPSWorkloadDispatchInfo *)&v3 dealloc];
}

- (void)setThreadgroupsPerGrid:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadgroupsPerGrid.depth = a3->var2;
  *&self->_threadgroupsPerGrid.width = v3;
}

- (void)setThreadsPerThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerThreadgroup.depth = a3->var2;
  *&self->_threadsPerThreadgroup.width = v3;
}

@end