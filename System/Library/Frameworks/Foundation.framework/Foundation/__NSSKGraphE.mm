@interface __NSSKGraphE
- (void)dealloc;
@end

@implementation __NSSKGraphE

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  free(self->_edges);
  numV = self->_numV;
  if (numV)
  {
    v4 = 24 * numV - 8;
    do
    {
      v5 = *(&self->_vertices->var0 + v4);
      if (v5)
      {
        free(v5);
      }

      v4 -= 24;
      --numV;
    }

    while (numV);
  }

  free(self->_vertices);
  v6.receiver = self;
  v6.super_class = __NSSKGraphE;
  [(__NSSKGraphE *)&v6 dealloc];
}

@end