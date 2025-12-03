@interface MPSWorkloadDispatchInfo
- (MPSWorkloadDispatchInfo)init;
- (void)dealloc;
- (void)setThreadgroupsPerGrid:(id *)grid;
- (void)setThreadsPerThreadgroup:(id *)threadgroup;
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

- (void)setThreadgroupsPerGrid:(id *)grid
{
  v3 = *&grid->var0;
  self->_threadgroupsPerGrid.depth = grid->var2;
  *&self->_threadgroupsPerGrid.width = v3;
}

- (void)setThreadsPerThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerThreadgroup.width = v3;
}

@end