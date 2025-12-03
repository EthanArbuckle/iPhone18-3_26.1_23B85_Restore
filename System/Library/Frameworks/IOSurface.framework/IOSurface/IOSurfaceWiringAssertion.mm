@interface IOSurfaceWiringAssertion
- (IOSurfaceWiringAssertion)initWithIOSurfaceClient:(__IOSurfaceClient *)client;
- (void)dealloc;
@end

@implementation IOSurfaceWiringAssertion

- (IOSurfaceWiringAssertion)initWithIOSurfaceClient:(__IOSurfaceClient *)client
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = IOSurfaceWiringAssertion;
  v4 = [(IOSurfaceWiringAssertion *)&v8 init];
  MachPortWithOptions = IOSurfaceClientCreateMachPortWithOptions(client, 1uLL);
  v4->_mach_port = MachPortWithOptions;
  if (!MachPortWithOptions)
  {

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  mach_port = self->_mach_port;
  if (mach_port)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], mach_port, 0, -1);
    self->_mach_port = 0;
  }

  v5.receiver = self;
  v5.super_class = IOSurfaceWiringAssertion;
  [(IOSurfaceWiringAssertion *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end