@interface _MTLIndirectDispatchThreadsArguments
- (void)setThreadsPerGrid:(id *)a3;
- (void)setThreadsPerThreadgroup:(id *)a3;
@end

@implementation _MTLIndirectDispatchThreadsArguments

- (void)setThreadsPerGrid:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerGrid.depth = a3->var2;
  *&self->_threadsPerGrid.width = v3;
}

- (void)setThreadsPerThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerThreadgroup.depth = a3->var2;
  *&self->_threadsPerThreadgroup.width = v3;
}

@end