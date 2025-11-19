@interface AVOutputDeviceDiscoverySessionAvailableOutputDevices
+ (AVOutputDeviceDiscoverySessionAvailableOutputDevices)outputDeviceDiscoverySessionAvailableOutputDevicesWithAvailableFigEndpoints:(id)a3;
- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)init;
- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)initWithOutputDeviceDiscoverySessionAvailableOutputDevicesImpl:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)otherDevices;
- (NSArray)recentlyUsedDevices;
- (void)_loadOutputDevices;
- (void)dealloc;
@end

@implementation AVOutputDeviceDiscoverySessionAvailableOutputDevices

- (NSArray)recentlyUsedDevices
{
  result = &self->_availableOutputDevices->_recentlyUsedDevices->super;
  if (!result)
  {
    [(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)self _loadOutputDevices];
    return &self->_availableOutputDevices->_recentlyUsedDevices->super;
  }

  return result;
}

- (void)_loadOutputDevices
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [-[AVOutputDeviceDiscoverySessionAvailableOutputDevices impl](self "impl")];
  self->_availableOutputDevices->_recentlyUsedDevices = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_availableOutputDevices->_otherDevices = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 frecencyScore];
        if (v9 <= 0.0)
        {
          v10 = 24;
        }

        else
        {
          v10 = 16;
        }

        [*(&self->_availableOutputDevices->super.isa + v10) addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    [(NSMutableArray *)self->_availableOutputDevices->_recentlyUsedDevices addObject:+[AVOutputDevice sharedLocalDevice]];
  }

  [(NSMutableArray *)self->_availableOutputDevices->_otherDevices sortUsingComparator:&__block_literal_global_137];
  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)otherDevices
{
  result = &self->_availableOutputDevices->_otherDevices->super;
  if (!result)
  {
    [(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)self _loadOutputDevices];
    return &self->_availableOutputDevices->_otherDevices->super;
  }

  return result;
}

- (void)dealloc
{
  availableOutputDevices = self->_availableOutputDevices;
  if (availableOutputDevices)
  {
  }

  v4.receiver = self;
  v4.super_class = AVOutputDeviceDiscoverySessionAvailableOutputDevices;
  [(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)&v4 dealloc];
}

uint64_t __74__AVOutputDeviceDiscoverySessionAvailableOutputDevices__loadOutputDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 localizedStandardCompare:v5];
}

+ (AVOutputDeviceDiscoverySessionAvailableOutputDevices)outputDeviceDiscoverySessionAvailableOutputDevicesWithAvailableFigEndpoints:(id)a3
{
  v3 = [[AVFigEndpointOutputDeviceDiscoverySessionAvailableOutputDevicesImpl alloc] initWithAvailableFigEndpoints:a3];
  v4 = [[AVOutputDeviceDiscoverySessionAvailableOutputDevices alloc] initWithOutputDeviceDiscoverySessionAvailableOutputDevicesImpl:v3];

  return v4;
}

- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)init
{
  v3 = objc_alloc_init(AVEmptyOutputDeviceDiscoverySessionAvailableOutputDevices);
  v4 = [(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)self initWithOutputDeviceDiscoverySessionAvailableOutputDevicesImpl:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = -[NSArray isEqualToArray:](-[AVOutputDeviceDiscoverySessionAvailableOutputDevices recentlyUsedDevices](self, "recentlyUsedDevices"), "isEqualToArray:", [a3 recentlyUsedDevices]);
  return v5 & -[NSArray isEqualToArray:](-[AVOutputDeviceDiscoverySessionAvailableOutputDevices otherDevices](self, "otherDevices"), "isEqualToArray:", [a3 otherDevices]);
}

- (AVOutputDeviceDiscoverySessionAvailableOutputDevices)initWithOutputDeviceDiscoverySessionAvailableOutputDevicesImpl:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceDiscoverySessionAvailableOutputDevices;
  v4 = [(AVOutputDeviceDiscoverySessionAvailableOutputDevices *)&v8 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputDeviceDiscoverySessionAvailableOutputDevicesInternal), (v4->_availableOutputDevices = v5) != 0) && (v4->_availableOutputDevices->impl = a3) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end