@interface MTLIOAccelServiceGlobalContext
- (MTLIOAccelServiceGlobalContext)init;
- (void)dealloc;
- (void)processPendingCreateIOAccelServiceRequests;
@end

@implementation MTLIOAccelServiceGlobalContext

- (MTLIOAccelServiceGlobalContext)init
{
  v14.receiver = self;
  v14.super_class = MTLIOAccelServiceGlobalContext;
  v2 = [(MTLIOAccelServiceGlobalContext *)&v14 init];
  if (v2)
  {
    v13 = 0;
    v3 = MEMORY[0x1865FEC10](*MEMORY[0x1E69E99F8], &v13);
    if (v3)
    {
      NSLog(&cfstr_SIomainportFai.isa, "[MTLIOAccelServiceGlobalContext init]", v3);
      return 0;
    }

    existing = 0;
    v4 = v13;
    v5 = IOServiceMatching("IOAcceleratorES");
    MatchingServices = IOServiceGetMatchingServices(v4, v5, &existing);
    if (MatchingServices)
    {
      NSLog(&cfstr_SIoservicegetm.isa, "[MTLIOAccelServiceGlobalContext init]", MatchingServices);
      return 0;
    }

    v2->_pendingCreateAccelServiceRequests = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      do
      {
        MetalPluginClassForService = getMetalPluginClassForService(v9);
        if (MetalPluginClassForService)
        {
          v11 = [[MTLIOAccelServiceDescriptor alloc] initWithAcceleratorPort:v9 deviceClass:MetalPluginClassForService];
          [(NSMutableArray *)v2->_pendingCreateAccelServiceRequests addObject:v11];
        }

        IOObjectRelease(v9);
        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }

    IOObjectRelease(existing);
  }

  return v2;
}

- (void)processPendingCreateIOAccelServiceRequests
{
  v3 = [(NSMutableArray *)self->_pendingCreateAccelServiceRequests count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_pendingCreateAccelServiceRequests objectAtIndexedSubscript:i];
      v7 = [objc_alloc(objc_msgSend(v6 "deviceClass"))];
      if (v7)
      {
        v15 = v7;
        MTLAddDevice(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  self->_pendingCreateAccelServiceRequests = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIOAccelServiceGlobalContext;
  [(MTLIOAccelServiceGlobalContext *)&v3 dealloc];
}

@end