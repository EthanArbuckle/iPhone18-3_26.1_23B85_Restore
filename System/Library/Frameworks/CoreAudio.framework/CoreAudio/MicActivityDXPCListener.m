@interface MicActivityDXPCListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MicActivityDXPCListener)init;
- (uint64_t)init;
- (void)createEndpoint;
- (void)dealloc;
- (void)destroyEndpoint;
- (void)microphoneActivityStateChanged:(BOOL)a3 reply:(id)a4;
@end

@implementation MicActivityDXPCListener

- (void)microphoneActivityStateChanged:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  std::function<void ()(BOOL)>::operator()(self->mtdListenerCallback.__f_.__f_, a3);
  v6[2](v6, 0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F599A4E8];
  [v5 setExportedInterface:v6];
  [v5 setExportedObject:self];
  [v5 resume];

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
  v3 = [MEMORY[0x1E696B0D8] anonymousListener];
  listener = self->listener;
  self->listener = v3;

  [(NSXPCListener *)self->listener setDelegate:self];
  [(NSXPCListener *)self->listener resume];
  v5 = [(NSXPCListener *)self->listener endpoint];
  endpoint = self->endpoint;
  self->endpoint = v5;
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
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end