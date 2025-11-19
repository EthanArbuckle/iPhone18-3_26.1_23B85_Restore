@interface _MTLIndirectDrawMeshThreadsArguments
- (void)setThreadsPerGrid:(id *)a3;
- (void)setThreadsPerMeshThreadgroup:(id *)a3;
- (void)setThreadsPerObjectThreadgroup:(id *)a3;
@end

@implementation _MTLIndirectDrawMeshThreadsArguments

- (void)setThreadsPerGrid:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerGrid.depth = a3->var2;
  *&self->_threadsPerGrid.width = v3;
}

- (void)setThreadsPerObjectThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerObjectThreadgroup.depth = a3->var2;
  *&self->_threadsPerObjectThreadgroup.width = v3;
}

- (void)setThreadsPerMeshThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadsPerMeshThreadgroup.depth = a3->var2;
  *&self->_threadsPerMeshThreadgroup.width = v3;
}

@end