@interface IOSurfaceRemotePerSurfacePerClientState
- (BOOL)removeClientReferenceToSurface;
- (IOSurfaceRemotePerSurfacePerClientState)initWithSurface:(__IOSurfaceClient *)surface mappedAddress:(void *)address mappedSize:(unint64_t)size extraData:(id)data;
- (id)mergeExtraData:(id)data;
- (void)addClientReferenceToSurfaceWithExtraData:(id)data;
- (void)dealloc;
- (void)removeClientReferenceToSurface;
@end

@implementation IOSurfaceRemotePerSurfacePerClientState

- (IOSurfaceRemotePerSurfacePerClientState)initWithSurface:(__IOSurfaceClient *)surface mappedAddress:(void *)address mappedSize:(unint64_t)size extraData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = IOSurfaceRemotePerSurfacePerClientState;
  dataCopy = data;
  v10 = [(IOSurfaceRemotePerSurfacePerClientState *)&v14 init];
  v10->_surface = surface;
  v10->_refcount = 1;
  v11 = [IOSurfaceRemotePerSurfaceGlobalState globalStateForSurface:surface mappedAddress:address mappedSize:size extraData:dataCopy];

  [(IOSurfaceRemotePerSurfacePerClientState *)v10 setGlobalState:v11];
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)addClientReferenceToSurfaceWithExtraData:(id)data
{
  dataCopy = data;
  ++self->_refcount;
  globalState = [(IOSurfaceRemotePerSurfacePerClientState *)self globalState];
  v5 = [globalState mergeExtraData:dataCopy];
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

- (id)mergeExtraData:(id)data
{
  dataCopy = data;
  globalState = [(IOSurfaceRemotePerSurfacePerClientState *)self globalState];
  v6 = [globalState mergeExtraData:dataCopy];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[IOSurfaceRemotePerSurfacePerClientState removeClientReferenceToSurface]"];
  [currentHandler handleFailureInFunction:v5 file:@"IOSurfaceRemoteServer.m" lineNumber:279 description:@"BUG: refcount is already zero"];

  *a2 = *self;
}

@end