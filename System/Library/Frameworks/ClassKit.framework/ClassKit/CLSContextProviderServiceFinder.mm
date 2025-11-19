@interface CLSContextProviderServiceFinder
- (CLSContextProviderServiceFinder)initWithDelegate:(id)a3;
- (NSArray)availableServices;
- (void)start;
- (void)stop;
@end

@implementation CLSContextProviderServiceFinder

- (CLSContextProviderServiceFinder)initWithDelegate:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CLSContextProviderServiceFinder;
  v5 = [(CLSContextProviderServiceFinder *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v21 = *MEMORY[0x277CCA0F8];
    v22[0] = 0x284A094C8;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v22, &v21, 1);
    extensionAttributes = v6->_extensionAttributes;
    v6->_extensionAttributes = v8;

    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    mutableAvailableServices = v6->_mutableAvailableServices;
    v6->_mutableAvailableServices = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);

    v16 = dispatch_queue_create("com.apple.ClassKit.CLSContextProviderServiceFinder", v15);
    servicesQueue = v6->_servicesQueue;
    v6->_servicesQueue = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)start
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_extensionsFinderContext)
  {
    extensionAttributes = v2->_extensionAttributes;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_236FA3B30;
    v7[3] = &unk_278A183D0;
    v7[4] = v2;
    v5 = objc_msgSend_beginMatchingExtensionsWithAttributes_completion_(MEMORY[0x277CCA9C8], v3, extensionAttributes, v7);
    extensionsFinderContext = v2->_extensionsFinderContext;
    v2->_extensionsFinderContext = v5;
  }

  objc_sync_exit(v2);
}

- (void)stop
{
  v2 = self;
  objc_sync_enter(v2);
  extensionsFinderContext = v2->_extensionsFinderContext;
  if (extensionsFinderContext)
  {
    objc_msgSend_endMatchingExtensions_(MEMORY[0x277CCA9C8], v3, extensionsFinderContext);
    v5 = v2->_extensionsFinderContext;
    v2->_extensionsFinderContext = 0;

    servicesQueue = v2->_servicesQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236FA4068;
    block[3] = &unk_278A18210;
    block[4] = v2;
    dispatch_barrier_async(servicesQueue, block);
  }

  objc_sync_exit(v2);
}

- (NSArray)availableServices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_236FA4164;
  v10 = sub_236FA4174;
  v11 = 0;
  servicesQueue = self->_servicesQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_236FA417C;
  v5[3] = &unk_278A183F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(servicesQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end