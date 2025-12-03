@interface _MTLIndirectDispatchThreadsArguments
- (void)setThreadsPerGrid:(id *)grid;
- (void)setThreadsPerThreadgroup:(id *)threadgroup;
@end

@implementation _MTLIndirectDispatchThreadsArguments

- (void)setThreadsPerGrid:(id *)grid
{
  v3 = *&grid->var0;
  self->_threadsPerGrid.depth = grid->var2;
  *&self->_threadsPerGrid.width = v3;
}

- (void)setThreadsPerThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerThreadgroup.width = v3;
}

@end