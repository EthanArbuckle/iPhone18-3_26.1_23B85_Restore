@interface _MTLIndirectDrawMeshThreadgroupsArguments
- (void)setThreadgroupsPerGrid:(id *)a3;
- (void)setThreadsPerMeshThreadgroup:(id *)a3;
- (void)setThreadsPerObjectThreadgroup:(id *)a3;
@end

@implementation _MTLIndirectDrawMeshThreadgroupsArguments

- (void)setThreadgroupsPerGrid:(id *)a3
{
  v3 = *&a3->var0;
  self->_threadgroupsPerGrid.depth = a3->var2;
  *&self->_threadgroupsPerGrid.width = v3;
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