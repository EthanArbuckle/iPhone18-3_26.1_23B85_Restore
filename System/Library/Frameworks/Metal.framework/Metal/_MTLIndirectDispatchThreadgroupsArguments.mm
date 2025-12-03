@interface _MTLIndirectDispatchThreadgroupsArguments
- (void)setThreadgroupsPerGrid:(id *)grid;
- (void)setThreadsPerThreadgroup:(id *)threadgroup;
@end

@implementation _MTLIndirectDispatchThreadgroupsArguments

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