@interface MPAVEndpointRoute
+ (void)getActiveEndpointRouteWithCompletion:(id)a3;
- (BOOL)_groupLeaderIsOfDeviceSubtype:(unsigned int)a3;
- (BOOL)canModifyGroupMembership;
- (BOOL)isAirPlayingToDevice;
- (BOOL)isB520Route;
- (BOOL)isDeviceRoute;
- (BOOL)isDeviceSpeakerRoute;
- (BOOL)isHomePodRoute;
- (BOOL)isHomeTheaterRoute;
- (BOOL)isLowFidelityRoute;
- (BOOL)isLowLatencyRoute;
- (BOOL)isMacRoute;
- (BOOL)isPhoneRoute;
- (BOOL)isProxyGroupPlayer;
- (BOOL)isRoutingToWirelessDevice;
- (BOOL)isSplitRoute;
- (BOOL)isSplitterCapable;
- (BOOL)isStereoPair;
- (BOOL)isTVRoute;
- (BOOL)supportsGrouping;
- (BOOL)supportsRemoteControl;
- (MPAVEndpointRoute)initWithCoder:(id)a3;
- (MPAVEndpointRoute)initWithEndpointObject:(id)a3;
- (MPAVOutputDeviceRoute)predictedOutputDevice;
- (MPAVRouteConnection)connection;
- (MPMRAVEndpointWrapper)endpointWrapper;
- (MRAVEndpoint)endpointObject;
- (NSString)sortName;
- (id)clusterComposition;
- (id)description;
- (id)designatedGroupLeaderName;
- (id)designatedGroupLeaderRouteUID;
- (id)effectiveGroupLeader;
- (id)groupLeaderAirplayIdentifier;
- (id)productIdentifier;
- (id)routeName;
- (id)routeNames;
- (id)routeUID;
- (int64_t)clusterType;
- (int64_t)numberOfOutputDevices;
- (int64_t)originalRouteSubtype;
- (int64_t)routeType;
- (unint64_t)_outputDevicesComposition;
- (void)_endpointDidChange:(id)a3;
- (void)_endpointOutputDevicesDidChange:(id)a3;
- (void)_endpointPredictedOutputDeviceDidChange:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)endpoint;
- (void)establishGroup;
- (void)resetPredictedOutputDevice;
- (void)setConnection:(id)a3;
- (void)setEndpointWrapper:(id)a3;
@end

@implementation MPAVEndpointRoute

- (BOOL)isDeviceRoute
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 isLocalEndpoint];

  return v3;
}

- (MRAVEndpoint)endpointObject
{
  v2 = [(MPAVEndpointRoute *)self endpointWrapper];
  v3 = [v2 unwrappedValue];

  return v3;
}

- (MPMRAVEndpointWrapper)endpointWrapper
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__6177;
  v8 = __Block_byref_object_dispose__6178;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)effectiveGroupLeader
{
  v2 = [(MPAVEndpointRoute *)self endpoint];
  v3 = [v2 groupLeader];
  if (![v3 supportsMultiplayer] || objc_msgSend(v2, "isLocalEndpoint"))
  {

LABEL_4:
    v4 = [v2 groupLeader];
    goto LABEL_5;
  }

  v6 = [v2 outputDeviceUIDs];
  v7 = [v2 groupLeader];
  v8 = [v7 uid];
  v9 = [v6 containsObject:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [v2 outputDevices];
  v11 = [v10 sortedArrayUsingSelector:&sel_uid];

  v4 = [v11 firstObject];

LABEL_5:

  return v4;
}

- (void)endpoint
{
  v2 = [(MPAVEndpointRoute *)self endpointWrapper];
  v3 = [v2 unwrappedValue];

  return v3;
}

- (MPAVRouteConnection)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6177;
  v10 = __Block_byref_object_dispose__6178;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__MPAVEndpointRoute_connection__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)routeName
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 localizedName];

  return v3;
}

- (id)routeUID
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (int64_t)routeType
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(MPAVEndpointRoute *)self endpointObject];
  if ([v3 isLocalEndpoint])
  {
    goto LABEL_4;
  }

  v4 = [v3 externalDevice];
  v5 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 isRemoteControllable];

    if (v7)
    {
LABEL_4:
      v8 = 3;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v3 outputDevices];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    v8 = 3;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if ([*(*(&v15 + 1) + 8 * v13) canRelayCommunicationChannel])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v8 = 0;
  }

LABEL_16:
  return v8;
}

- (BOOL)isHomeTheaterRoute
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 clusterType] == 2;

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x1E696AD60];
  v8.receiver = self;
  v8.super_class = MPAVEndpointRoute;
  v3 = [(MPAVRoute *)&v8 description];
  v4 = [v2 stringWithString:v3];

  v7 = v4;
  msv_dispatch_sync_on_queue();
  v5 = v7;

  return v7;
}

void __32__MPAVEndpointRoute_description__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" connection=%@", v1];
    [v3 insertString:v4 atIndex:{objc_msgSend(*(a1 + 40), "length") - 1}];
  }
}

- (BOOL)isSplitRoute
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) supportsBluetoothSharing])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  if ([v4 count] <= 1)
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDeviceSpeakerRoute
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) deviceType] == 4)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)isAirPlayingToDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) deviceType] == 1)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (int64_t)numberOfOutputDevices
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)_outputDevicesComposition
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(MPAVEndpointRoute *)self endpointObject];
  v5 = [v4 outputDevices];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 deviceSubtype];
        if (v14 == 12)
        {
          v15 = [v13 logicalDeviceID];
          if ((v9 & 1) != 0 || ([v3 containsObject:v15] & 1) == 0)
          {
            if (v15)
            {
              [v3 addObject:v15];
            }
          }

          else
          {
            v9 = 1;
          }

          v10 |= 4uLL;
        }

        else if (v14 == 13)
        {
          v10 |= 2uLL;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);

    if ((v9 & 1) != 0 && (v10 & 4) != 0)
    {
      v10 |= 8uLL;
    }
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (BOOL)_groupLeaderIsOfDeviceSubtype:(unsigned int)a3
{
  v4 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 deviceSubtype] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_endpointPredictedOutputDeviceDidChange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 uniqueIdentifier];
  v7 = [(MPAVEndpointRoute *)self endpointObject];
  v8 = [v7 uniqueIdentifier];

  if (v6 == v8)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = [v4 object];
      v13 = [v5 predictedOutputDevice];
      v15 = 138544130;
      v16 = v10;
      v17 = 2048;
      v18 = self;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> External device: %{public}@ predicted route to: %{public}@", &v15, 0x2Au);
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 postNotificationName:@"MPAVRouteDidChangeNotification" object:self];
  }
}

- (void)_endpointOutputDevicesDidChange:(id)a3
{
  v8 = [a3 object];
  v4 = [v8 uniqueIdentifier];
  v5 = [(MPAVEndpointRoute *)self endpointObject];
  v6 = [v5 uniqueIdentifier];

  if (v4 == v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"MPAVRouteDidChangeNotification" object:self];
  }
}

- (void)_endpointDidChange:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B0BC0]];

  v7 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v4 object];
    v12 = 138544130;
    v13 = v8;
    v14 = 2048;
    v15 = self;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> External device: %{public}@ changed endpoint to: %{public}@", &v12, 0x2Au);
  }

  v11 = [[MPMRAVEndpointWrapper alloc] initWithMRAVEndpoint:v6];
  [(MPAVEndpointRoute *)self setEndpointWrapper:v11];
}

- (BOOL)isLowFidelityRoute
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 producesLowFidelityAudio];

  return v3;
}

- (id)designatedGroupLeaderRouteUID
{
  v3 = [(MPAVEndpointRoute *)self endpoint];
  if ([v3 isLocalEndpoint])
  {
    v4 = [v3 uniqueIdentifier];
  }

  else
  {
    v5 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
    v4 = [v5 uid];
  }

  return v4;
}

- (int64_t)clusterType
{
  v3 = objc_opt_class();
  v4 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = [v3 clusterTypeForMRClusterType:{objc_msgSend(v4, "clusterType")}];

  return v5;
}

- (id)clusterComposition
{
  v3 = objc_opt_class();
  v4 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = [v3 clusterCompositionForOutputDevice:v4];

  return v5;
}

- (BOOL)isSplitterCapable
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 supportsBluetoothSharing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsRemoteControl
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 isRemoteControllable];

  return v3;
}

- (BOOL)supportsGrouping
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 isGroupable];

  return v3;
}

- (int64_t)originalRouteSubtype
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [objc_opt_class() routeSubtypeForMRSubtype:objc_msgSend(v2 mrType:{"deviceSubtype"), objc_msgSend(v2, "deviceType")}];

  return v3;
}

- (id)productIdentifier
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 modelID];

  return v3;
}

- (BOOL)isLowLatencyRoute
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [v4 deviceType];

    v6 = (v5 & 0xFFFFFFFE) == 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isRoutingToWirelessDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([MPAVOutputDeviceRoute pickableRouteTypeForOutputDevice:*(*(&v9 + 1) + 8 * i), v9]== 1)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)canModifyGroupMembership
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 canModifyGroupMembership];

  return v3;
}

- (BOOL)isProxyGroupPlayer
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 isProxyGroupPlayer];

  return v3;
}

- (BOOL)isPhoneRoute
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 hostDeviceClass] == 1;

  return v3;
}

- (BOOL)isStereoPair
{
  v2 = self;
  if ([(MPAVEndpointRoute *)self isClusterRoute])
  {
    v3 = [(MPAVEndpointRoute *)v2 effectiveGroupLeader];
    LOBYTE(v2) = [v3 clusterType] == 1;
  }

  else
  {
    return ([(MPAVEndpointRoute *)v2 _outputDevicesComposition]>> 3) & 1;
  }

  return v2;
}

- (BOOL)isB520Route
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 modelID];

  LOBYTE(v2) = [v3 containsString:@"AudioAccessory5"];
  return v2;
}

- (BOOL)isHomePodRoute
{
  if ([(MPAVEndpointRoute *)self isClusterRoute])
  {

    return [(MPAVEndpointRoute *)self isStereoPair];
  }

  else
  {

    return [(MPAVEndpointRoute *)self _groupLeaderIsOfDeviceSubtype:12];
  }
}

- (BOOL)isMacRoute
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [v2 deviceSubtype] == 18;

  return v3;
}

- (BOOL)isTVRoute
{
  if ([(MPAVEndpointRoute *)self _groupLeaderIsOfDeviceSubtype:11]|| [(MPAVEndpointRoute *)self _groupLeaderIsOfDeviceSubtype:16])
  {
    return 1;
  }

  return [(MPAVEndpointRoute *)self _groupLeaderIsOfDeviceSubtype:17];
}

- (id)groupLeaderAirplayIdentifier
{
  if ([(MPAVEndpointRoute *)self isDeviceRoute])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 uid];
      v3 = [v6 copy];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)resetPredictedOutputDevice
{
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  [v2 resetPredictedOutputDevice];
}

- (MPAVOutputDeviceRoute)predictedOutputDevice
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 predictedOutputDevice];

  if (v3)
  {
    v4 = [MPAVOutputDeviceRoute alloc];
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [(MPAVOutputDeviceRoute *)v4 initWithOutputDevices:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setConnection:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MPAVEndpointRoute_setConnection___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

void __35__MPAVEndpointRoute_setConnection___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 208) != *(a1 + 40))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *MEMORY[0x1E69B0BB8];
    [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x1E69B0BB8] object:0];

    objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__endpointDidChange_ name:v3 object:{objc_msgSend(*(*(a1 + 32) + 208), "externalDevice")}];

    v5 = *(a1 + 32);
    v6 = *(v5 + 224);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__MPAVEndpointRoute_setConnection___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

void __35__MPAVEndpointRoute_setConnection___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVRouteDidChangeNotification" object:*(a1 + 32)];
}

- (void)setEndpointWrapper:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MPAVEndpointRoute.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"endpointWrapper"}];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(accessQueue, block);
}

void __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 240);
  objc_storeStrong((*(a1 + 32) + 240), *(a1 + 40));
  v3 = [*(a1 + 32) endpointObject];
  v4 = [v3 localizedName];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = [*(a1 + 32) effectiveGroupLeader];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 name];
    v10 = [v9 copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 232);
    *(v11 + 232) = v10;
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    v9 = *(v13 + 232);
    *(v13 + 232) = v14;
  }

  if (v2)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 224);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke_2;
    block[3] = &unk_1E7682518;
    block[4] = v15;
    dispatch_async(v16, block);
  }

  v17 = [v2 unwrappedValue];
  v18 = [*(a1 + 40) unwrappedValue];
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v17 personalOutputDevices];
  v21 = [v19 setWithArray:v20];
  v22 = MEMORY[0x1E695DFD8];
  v23 = [v18 personalOutputDevices];
  v24 = [v22 setWithArray:v23];
  v25 = [v21 isEqualToSet:v24];

  if ((v25 & 1) == 0)
  {
    v26 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = *(a1 + 32);
      v33 = v27;
      v29 = [v17 personalOutputDevices];
      v30 = [v18 personalOutputDevices];
      *buf = 138544130;
      v37 = v27;
      v38 = 2048;
      v39 = v28;
      v40 = 2114;
      v41 = v29;
      v42 = 2114;
      v43 = v30;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p> Personal devices changed from %{public}@, to: %{public}@", buf, 0x2Au);
    }

    v31 = *(a1 + 32);
    v32 = *(v31 + 224);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke_50;
    v34[3] = &unk_1E7682518;
    v34[4] = v31;
    dispatch_async(v32, v34);
  }
}

void __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVRouteDidChangeNotification" object:*(a1 + 32)];
}

void __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke_50(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MPAVRouteDidChangeNotification" object:*(a1 + 32)];
}

- (void)establishGroup
{
  v8 = [objc_alloc(MEMORY[0x1E69B0AE0]) initWithName:@"MPAVEndpointRoute.establishGroup" requestID:0 reason:@"API Call"];
  v3 = objc_alloc(MEMORY[0x1E69B0A48]);
  v4 = [(MPAVEndpointRoute *)self endpointObject];
  v5 = [v4 outputDevices];
  v6 = [v3 initWithRequestDetails:v8 type:1 outputDevices:v5];

  v7 = [(MPAVEndpointRoute *)self endpointObject];
  [v7 modifyTopologyWithRequest:v6 withReplyQueue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_6202];
}

- (id)designatedGroupLeaderName
{
  v2 = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 name];
    v5 = [v4 copy];
  }

  else
  {
    v5 = &stru_1F149ECA8;
  }

  return v5;
}

- (id)routeNames
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(MPAVEndpointRoute *)self endpointObject];
  v3 = [v2 outputDevices];

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 logicalDeviceID];
        v13 = [v11 name];
        if ([v13 length])
        {
          if ([v12 length])
          {
            if ([v5 containsObject:v12])
            {
              goto LABEL_12;
            }

            [v4 addObject:v13];
            v14 = v5;
            v15 = v12;
          }

          else
          {
            v14 = v4;
            v15 = v13;
          }

          [v14 addObject:v15];
        }

LABEL_12:
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v4;
}

- (NSString)sortName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6177;
  v10 = __Block_byref_object_dispose__6178;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__MPAVEndpointRoute_sortName__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0B40] object:0];

  v4.receiver = self;
  v4.super_class = MPAVEndpointRoute;
  [(MPAVEndpointRoute *)&v4 dealloc];
}

- (MPAVEndpointRoute)initWithEndpointObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = MPAVEndpointRoute;
  v5 = [(MPAVEndpointRoute *)&v18 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaplayer.MPAVEndpointRoute/accessQueue", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.mediaplayer.MPAVEndpointRoute/calloutQueue", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v5->super._picked = 0;
    avRouteDescription = v5->super._avRouteDescription;
    v5->super._avRouteDescription = 0;

    wirelessDisplayRoute = v5->super._wirelessDisplayRoute;
    v5->super._wirelessDisplayRoute = 0;

    v5->super._displayRouteType = 3;
    if (!v4)
    {
      v4 = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
    }

    v14 = [[MPMRAVEndpointWrapper alloc] initWithMRAVEndpoint:v4];
    [(MPAVEndpointRoute *)v5 setEndpointWrapper:v14];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v5 selector:sel__endpointOutputDevicesDidChange_ name:*MEMORY[0x1E69B0B40] object:0];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v5 selector:sel__endpointPredictedOutputDeviceDidChange_ name:*MEMORY[0x1E69B0B48] object:0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MPAVEndpointRoute *)self endpointWrapper];
  [v4 unwrappedValue];
  IsLocalEndpoint = MRAVEndpointIsLocalEndpoint();

  [v7 encodeBool:IsLocalEndpoint forKey:@"localEndpoint"];
  if ((IsLocalEndpoint & 1) == 0)
  {
    v6 = [(MPAVEndpointRoute *)self endpointWrapper];
    [v7 encodeObject:objc_msgSend(v6 forKey:{"unwrappedValue"), @"endpoint"}];
  }
}

- (MPAVEndpointRoute)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeBoolForKey:@"localEndpoint"])
  {
    LocalEndpoint = MRAVEndpointGetLocalEndpoint();
  }

  else
  {
    LocalEndpoint = [v4 decodeObjectOfClass:MRAVEndpointGetClass() forKey:@"endpoint"];
  }

  v6 = LocalEndpoint;
  if (LocalEndpoint)
  {
    self = [(MPAVEndpointRoute *)self initWithEndpoint:LocalEndpoint];
    ExternalDevice = MRAVEndpointGetExternalDevice();
    if (ExternalDevice)
    {
      v8 = [[MPAVRouteConnection alloc] initWithExternalDevice:ExternalDevice];
      [(MPAVEndpointRoute *)self setConnection:v8];
    }

    v6 = self;
  }

  return v6;
}

+ (void)getActiveEndpointRouteWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  MRAVEndpointResolveActiveSystemEndpoint();
}

void __58__MPAVEndpointRoute_getActiveEndpointRouteWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  v4 = [[MPAVEndpointRoute alloc] initWithEndpoint:a2];
  (*(*(a1 + 32) + 16))();
}

@end