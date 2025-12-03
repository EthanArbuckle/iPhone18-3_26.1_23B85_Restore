@interface _MTLIndirectDrawMeshThreadgroupsArguments
- (void)setThreadgroupsPerGrid:(id *)grid;
- (void)setThreadsPerMeshThreadgroup:(id *)threadgroup;
- (void)setThreadsPerObjectThreadgroup:(id *)threadgroup;
@end

@implementation _MTLIndirectDrawMeshThreadgroupsArguments

- (void)setThreadgroupsPerGrid:(id *)grid
{
  v3 = *&grid->var0;
  self->_threadgroupsPerGrid.depth = grid->var2;
  *&self->_threadgroupsPerGrid.width = v3;
}

- (void)setThreadsPerObjectThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerObjectThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerObjectThreadgroup.width = v3;
}

- (void)setThreadsPerMeshThreadgroup:(id *)threadgroup
{
  v3 = *&threadgroup->var0;
  self->_threadsPerMeshThreadgroup.depth = threadgroup->var2;
  *&self->_threadsPerMeshThreadgroup.width = v3;
}

@end