@interface MicActivityDXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MicActivityDXPCListener)init;
- (uint64_t)init;
- (void)createEndpoint;
- (void)dealloc;
- (void)destroyEndpoint;
- (void)microphoneActivityStateChanged:(BOOL)changed reply:(id)reply;
@end

@implementation MicActivityDXPCListener

- (void)microphoneActivityStateChanged:(BOOL)changed reply:(id)reply
{
  replyCopy = reply;
  std::function<void ()(BOOL)>::operator()(self->mtdListenerCallback.__f_.__f_, changed);
  replyCopy[2](replyCopy, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599A4E8];
  [connectionCopy setExportedInterface:v6];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)destroyEndpoint
{
  [(NSXPCListener *)self->listener invalidate];
  listener = self->listener;
  self->listener = 0;

  endpoint = self->endpoint;
  self->endpoint = 0;
}

- (void)createEndpoint
{
  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  listener = self->listener;
  self->listener = anonymousListener;

  [(NSXPCListener *)self->listener setDelegate:self];
  [(NSXPCListener *)self->listener resume];
  endpoint = [(NSXPCListener *)self->listener endpoint];
  endpoint = self->endpoint;
  self->endpoint = endpoint;
}

- (void)dealloc
{
  [(MicActivityDXPCListener *)self destroyEndpoint];
  v3.receiver = self;
  v3.super_class = MicActivityDXPCListener;
  [(MicActivityDXPCListener *)&v3 dealloc];
}

- (MicActivityDXPCListener)init
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MicActivityDXPCListener;
  v2 = [(MicActivityDXPCListener *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MicActivityDXPCListener *)v2 createEndpoint];
    v7[0] = &unk_1F596A168;
    v7[3] = v7;
    std::__function::__value_func<void ()(BOOL)>::swap[abi:ne200100](v7, v3->mtdListenerCallback.__f_.__buf_.__data);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v7);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)init
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z31-[MicActivityDXPCListener init]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end