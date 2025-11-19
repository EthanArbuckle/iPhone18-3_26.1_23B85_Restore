@interface MRAVRoutingDiscoverySession(MPAVOutputDeviceRoutingDataSource)
- (id)_replaceOutputDevices:()MPAVOutputDeviceRoutingDataSource withOutputDevices:;
- (id)availableOutputDevicesForEndpoint:()MPAVOutputDeviceRoutingDataSource;
@end

@implementation MRAVRoutingDiscoverySession(MPAVOutputDeviceRoutingDataSource)

- (id)_replaceOutputDevices:()MPAVOutputDeviceRoutingDataSource withOutputDevices:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      v19 = sel_groupableOutputDevice;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __106__MRAVRoutingDiscoverySession_MPAVOutputDeviceRoutingDataSource___replaceOutputDevices_withOutputDevices___block_invoke;
        v20[3] = &unk_1E7676848;
        v20[4] = v13;
        v14 = [v6 msv_firstWhere:{v20, v19}];
        if ([v13 isGroupable] && (objc_msgSend(v14, "isGroupable") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v14 groupableOutputDevice];
          v16 = v15 = v8;

          v14 = v16;
          v8 = v15;
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        [v7 addObject:v17];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)availableOutputDevicesForEndpoint:()MPAVOutputDeviceRoutingDataSource
{
  v4 = a3;
  v5 = [a1 availableOutputDevices];
  v6 = [v4 resolvedOutputDevices];

  v7 = [a1 _replaceOutputDevices:v5 withOutputDevices:v6];

  return v7;
}

@end