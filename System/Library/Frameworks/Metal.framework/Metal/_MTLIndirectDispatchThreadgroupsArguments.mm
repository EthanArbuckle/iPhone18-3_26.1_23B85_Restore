@interface _MTLIndirectDispatchThreadgroupsArguments
- (void)setThreadgroupsPerGrid:(id *)a3;
- (void)setThreadsPerThreadgroup:(id *)a3;
@end

@implementation _MTLIndirectDispatchThreadgroupsArguments

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