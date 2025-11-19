@interface IOSurfaceRemotePerSurfacePerClientState
- (BOOL)removeClientReferenceToSurface;
- (IOSurfaceRemotePerSurfacePerClientState)initWithSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6;
- (id)mergeExtraData:(id)a3;
- (void)addClientReferenceToSurfaceWithExtraData:(id)a3;
- (void)dealloc;
- (void)removeClientReferenceToSurface;
@end

@implementation IOSurfaceRemotePerSurfacePerClientState

- (IOSurfaceRemotePerSurfacePerClientState)initWithSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = IOSurfaceRemotePerSurfacePerClientState;
  v9 = a6;
  v10 = [(IOSurfaceRemotePerSurfacePerClientState *)&v14 init];
  v10->_surface = a3;
  v10->_refcount = 1;
  v11 = [IOSurfaceRemotePerSurfaceGlobalState globalStateForSurface:a3 mappedAddress:a4 mappedSize:a5 extraData:v9];

  [(IOSurfaceRemotePerSurfacePerClientState *)v10 setGlobalState:v11];
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)addClientReferenceToSurfaceWithExtraData:(id)a3
{
  v6 = a3;
  ++self->_refcount;
  v4 = [(IOSurfaceRemotePerSurfacePerClientState *)self globalState];
  v5 = [v4 mergeExtraData:v6];
}

- (BOOL)removeClientReferenceToSurface
{
  v9 = *MEMORY[0x1E69E9840];
  refcount = self->_refcount;
  p_refcount = &self->_refcount;
  v4 = refcount;
  if (!refcount)
  {
    [(IOSurfaceRemotePerSurfacePerClientState *)p_refcount removeClientReferenceToSurface];
    v4 = v8;
  }

  self->_refcount = v4 - 1;
  IOSurfaceClientRelease(self->_surface);
  result = self->_refcount == 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)mergeExtraData:(id)a3
{
  v4 = a3;
  v5 = [(IOSurfaceRemotePerSurfacePerClientState *)self globalState];
  v6 = [v5 mergeExtraData:v4];

  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  while (self->_refcount)
  {
    [(IOSurfaceRemotePerSurfacePerClientState *)self removeClientReferenceToSurface];
  }

  v4.receiver = self;
  v4.super_class = IOSurfaceRemotePerSurfacePerClientState;
  [(IOSurfaceRemotePerSurfacePerClientState *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (void)removeClientReferenceToSurface
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[IOSurfaceRemotePerSurfacePerClientState removeClientReferenceToSurface]"];
  [v4 handleFailureInFunction:v5 file:@"IOSurfaceRemoteServer.m" lineNumber:279 description:@"BUG: refcount is already zero"];

  *a2 = *a1;
}

@end