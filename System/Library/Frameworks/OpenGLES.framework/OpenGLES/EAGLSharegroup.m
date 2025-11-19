@interface EAGLSharegroup
- (void)dealloc;
- (void)loadGLIPlugin:(__GLDPixelFormatRec *)a3 sharedWithCompute:(BOOL)a4;
@end

@implementation EAGLSharegroup

- (void)loadGLIPlugin:(__GLDPixelFormatRec *)a3 sharedWithCompute:(BOOL)a4
{
  *(self->_private + 2) = a3;
  var1 = a3->var1;
  *(self->_private + 3) = gfxCreateSharedState();
  if (*(self->_private + 3))
  {
    gfxRetainSharedStateAndHash();
    *(self->_private + 2) = 1;
  }
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    if (*(v3 + 2) == 1 && *(v3 + 3))
    {
      gfxReleaseSharedStateAndHash();
      *(self->_private + 3) = 0;
      v3 = self->_private;
    }

    *(v3 + 2) = 0;
    v4 = self->_private;
    if (*(v4 + 12) == 1)
    {
      eagl_dealloc();
      v4 = self->_private;
    }

    free(v4);
    self->_private = 0;
  }

  [(EAGLSharegroup *)self setDebugLabel:0];
  v5.receiver = self;
  v5.super_class = EAGLSharegroup;
  [(EAGLSharegroup *)&v5 dealloc];
}

@end