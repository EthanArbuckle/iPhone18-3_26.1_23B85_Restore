@interface MPAVEndpointRoute
+ (void)getActiveEndpointRouteWithCompletion:(id)completion;
- (BOOL)_groupLeaderIsOfDeviceSubtype:(unsigned int)subtype;
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
- (MPAVEndpointRoute)initWithCoder:(id)coder;
- (MPAVEndpointRoute)initWithEndpointObject:(id)object;
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
- (void)_endpointDidChange:(id)change;
- (void)_endpointOutputDevicesDidChange:(id)change;
- (void)_endpointPredictedOutputDeviceDidChange:(id)change;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)endpoint;
- (void)establishGroup;
- (void)resetPredictedOutputDevice;
- (void)setConnection:(id)connection;
- (void)setEndpointWrapper:(id)wrapper;
@end

@implementation MPAVEndpointRoute

- (BOOL)isDeviceRoute
{
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  isLocalEndpoint = [endpointObject isLocalEndpoint];

  return isLocalEndpoint;
}

- (MRAVEndpoint)endpointObject
{
  endpointWrapper = [(MPAVEndpointRoute *)self endpointWrapper];
  unwrappedValue = [endpointWrapper unwrappedValue];

  return unwrappedValue;
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
  endpoint = [(MPAVEndpointRoute *)self endpoint];
  groupLeader = [endpoint groupLeader];
  if (![groupLeader supportsMultiplayer] || objc_msgSend(endpoint, "isLocalEndpoint"))
  {

LABEL_4:
    groupLeader2 = [endpoint groupLeader];
    goto LABEL_5;
  }

  outputDeviceUIDs = [endpoint outputDeviceUIDs];
  groupLeader3 = [endpoint groupLeader];
  v8 = [groupLeader3 uid];
  v9 = [outputDeviceUIDs containsObject:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  outputDevices = [endpoint outputDevices];
  v11 = [outputDevices sortedArrayUsingSelector:&sel_uid];

  groupLeader2 = [v11 firstObject];

LABEL_5:

  return groupLeader2;
}

- (void)endpoint
{
  endpointWrapper = [(MPAVEndpointRoute *)self endpointWrapper];
  unwrappedValue = [endpointWrapper unwrappedValue];

  return unwrappedValue;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  localizedName = [endpointObject localizedName];

  return localizedName;
}

- (id)routeUID
{
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  uniqueIdentifier = [endpointObject uniqueIdentifier];

  return uniqueIdentifier;
}

- (int64_t)routeType
{
  v20 = *MEMORY[0x1E69E9840];
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  if ([endpointObject isLocalEndpoint])
  {
    goto LABEL_4;
  }

  externalDevice = [endpointObject externalDevice];
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v6 = effectiveGroupLeader;
  if (externalDevice)
  {
    isRemoteControllable = [effectiveGroupLeader isRemoteControllable];

    if (isRemoteControllable)
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
  outputDevices = [endpointObject outputDevices];
  v10 = [outputDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(outputDevices);
      }

      if ([*(*(&v15 + 1) + 8 * v13) canRelayCommunicationChannel])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [outputDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [effectiveGroupLeader clusterType] == 2;

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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = outputDevices;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = outputDevices;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = outputDevices;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];
  v4 = [outputDevices count];

  return v4;
}

- (unint64_t)_outputDevicesComposition
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = outputDevices;
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
        deviceSubtype = [v13 deviceSubtype];
        if (deviceSubtype == 12)
        {
          logicalDeviceID = [v13 logicalDeviceID];
          if ((v9 & 1) != 0 || ([v3 containsObject:logicalDeviceID] & 1) == 0)
          {
            if (logicalDeviceID)
            {
              [v3 addObject:logicalDeviceID];
            }
          }

          else
          {
            v9 = 1;
          }

          v10 |= 4uLL;
        }

        else if (deviceSubtype == 13)
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

- (BOOL)_groupLeaderIsOfDeviceSubtype:(unsigned int)subtype
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = effectiveGroupLeader;
  if (effectiveGroupLeader)
  {
    v6 = [effectiveGroupLeader deviceSubtype] == subtype;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_endpointPredictedOutputDeviceDidChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  uniqueIdentifier = [object uniqueIdentifier];
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  uniqueIdentifier2 = [endpointObject uniqueIdentifier];

  if (uniqueIdentifier == uniqueIdentifier2)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Routing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      object2 = [changeCopy object];
      predictedOutputDevice = [object predictedOutputDevice];
      v15 = 138544130;
      v16 = v10;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = object2;
      v21 = 2114;
      v22 = predictedOutputDevice;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> External device: %{public}@ predicted route to: %{public}@", &v15, 0x2Au);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVRouteDidChangeNotification" object:self];
  }
}

- (void)_endpointOutputDevicesDidChange:(id)change
{
  object = [change object];
  uniqueIdentifier = [object uniqueIdentifier];
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  uniqueIdentifier2 = [endpointObject uniqueIdentifier];

  if (uniqueIdentifier == uniqueIdentifier2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MPAVRouteDidChangeNotification" object:self];
  }
}

- (void)_endpointDidChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0BC0]];

  v7 = os_log_create("com.apple.amp.mediaplayer", "Routing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = v8;
    object = [changeCopy object];
    v12 = 138544130;
    v13 = v8;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = object;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "<%{public}@: %p> External device: %{public}@ changed endpoint to: %{public}@", &v12, 0x2Au);
  }

  v11 = [[MPMRAVEndpointWrapper alloc] initWithMRAVEndpoint:v6];
  [(MPAVEndpointRoute *)self setEndpointWrapper:v11];
}

- (BOOL)isLowFidelityRoute
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  producesLowFidelityAudio = [effectiveGroupLeader producesLowFidelityAudio];

  return producesLowFidelityAudio;
}

- (id)designatedGroupLeaderRouteUID
{
  endpoint = [(MPAVEndpointRoute *)self endpoint];
  if ([endpoint isLocalEndpoint])
  {
    uniqueIdentifier = [endpoint uniqueIdentifier];
  }

  else
  {
    effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
    uniqueIdentifier = [effectiveGroupLeader uid];
  }

  return uniqueIdentifier;
}

- (int64_t)clusterType
{
  v3 = objc_opt_class();
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = [v3 clusterTypeForMRClusterType:{objc_msgSend(effectiveGroupLeader, "clusterType")}];

  return v5;
}

- (id)clusterComposition
{
  v3 = objc_opt_class();
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v5 = [v3 clusterCompositionForOutputDevice:effectiveGroupLeader];

  return v5;
}

- (BOOL)isSplitterCapable
{
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  if ([outputDevices count] == 1)
  {
    firstObject = [outputDevices firstObject];
    supportsBluetoothSharing = [firstObject supportsBluetoothSharing];
  }

  else
  {
    supportsBluetoothSharing = 0;
  }

  return supportsBluetoothSharing;
}

- (BOOL)supportsRemoteControl
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  isRemoteControllable = [effectiveGroupLeader isRemoteControllable];

  return isRemoteControllable;
}

- (BOOL)supportsGrouping
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  isGroupable = [effectiveGroupLeader isGroupable];

  return isGroupable;
}

- (int64_t)originalRouteSubtype
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [objc_opt_class() routeSubtypeForMRSubtype:objc_msgSend(effectiveGroupLeader mrType:{"deviceSubtype"), objc_msgSend(effectiveGroupLeader, "deviceType")}];

  return v3;
}

- (id)productIdentifier
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  modelID = [effectiveGroupLeader modelID];

  return modelID;
}

- (BOOL)isLowLatencyRoute
{
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  if ([outputDevices count] == 1)
  {
    firstObject = [outputDevices firstObject];
    deviceType = [firstObject deviceType];

    v6 = (deviceType & 0xFFFFFFFE) == 4;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = outputDevices;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  canModifyGroupMembership = [endpointObject canModifyGroupMembership];

  return canModifyGroupMembership;
}

- (BOOL)isProxyGroupPlayer
{
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  isProxyGroupPlayer = [endpointObject isProxyGroupPlayer];

  return isProxyGroupPlayer;
}

- (BOOL)isPhoneRoute
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [effectiveGroupLeader hostDeviceClass] == 1;

  return v3;
}

- (BOOL)isStereoPair
{
  selfCopy = self;
  if ([(MPAVEndpointRoute *)self isClusterRoute])
  {
    effectiveGroupLeader = [(MPAVEndpointRoute *)selfCopy effectiveGroupLeader];
    LOBYTE(selfCopy) = [effectiveGroupLeader clusterType] == 1;
  }

  else
  {
    return ([(MPAVEndpointRoute *)selfCopy _outputDevicesComposition]>> 3) & 1;
  }

  return selfCopy;
}

- (BOOL)isB520Route
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  modelID = [effectiveGroupLeader modelID];

  LOBYTE(effectiveGroupLeader) = [modelID containsString:@"AudioAccessory5"];
  return effectiveGroupLeader;
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
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = [effectiveGroupLeader deviceSubtype] == 18;

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
    effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
    v5 = effectiveGroupLeader;
    if (effectiveGroupLeader)
    {
      v6 = [effectiveGroupLeader uid];
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  [endpointObject resetPredictedOutputDevice];
}

- (MPAVOutputDeviceRoute)predictedOutputDevice
{
  v8[1] = *MEMORY[0x1E69E9840];
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  predictedOutputDevice = [endpointObject predictedOutputDevice];

  if (predictedOutputDevice)
  {
    v4 = [MPAVOutputDeviceRoute alloc];
    v8[0] = predictedOutputDevice;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [(MPAVOutputDeviceRoute *)v4 initWithOutputDevices:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MPAVEndpointRoute_setConnection___block_invoke;
  v7[3] = &unk_1E76823C0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
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

- (void)setEndpointWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if (!wrapperCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAVEndpointRoute.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"endpointWrapper"}];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPAVEndpointRoute_setEndpointWrapper___block_invoke;
  block[3] = &unk_1E76823C0;
  block[4] = self;
  v10 = wrapperCopy;
  v7 = wrapperCopy;
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];
  v6 = [v3 initWithRequestDetails:v8 type:1 outputDevices:outputDevices];

  endpointObject2 = [(MPAVEndpointRoute *)self endpointObject];
  [endpointObject2 modifyTopologyWithRequest:v6 withReplyQueue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_6202];
}

- (id)designatedGroupLeaderName
{
  effectiveGroupLeader = [(MPAVEndpointRoute *)self effectiveGroupLeader];
  v3 = effectiveGroupLeader;
  if (effectiveGroupLeader)
  {
    name = [effectiveGroupLeader name];
    v5 = [name copy];
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
  endpointObject = [(MPAVEndpointRoute *)self endpointObject];
  outputDevices = [endpointObject outputDevices];

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = outputDevices;
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
        logicalDeviceID = [v11 logicalDeviceID];
        name = [v11 name];
        if ([name length])
        {
          if ([logicalDeviceID length])
          {
            if ([v5 containsObject:logicalDeviceID])
            {
              goto LABEL_12;
            }

            [v4 addObject:name];
            v14 = v5;
            v15 = logicalDeviceID;
          }

          else
          {
            v14 = v4;
            v15 = name;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69B0B40] object:0];

  v4.receiver = self;
  v4.super_class = MPAVEndpointRoute;
  [(MPAVEndpointRoute *)&v4 dealloc];
}

- (MPAVEndpointRoute)initWithEndpointObject:(id)object
{
  objectCopy = object;
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
    if (!objectCopy)
    {
      objectCopy = [MEMORY[0x1E69B09A0] sharedLocalEndpoint];
    }

    v14 = [[MPMRAVEndpointWrapper alloc] initWithMRAVEndpoint:objectCopy];
    [(MPAVEndpointRoute *)v5 setEndpointWrapper:v14];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__endpointOutputDevicesDidChange_ name:*MEMORY[0x1E69B0B40] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__endpointPredictedOutputDeviceDidChange_ name:*MEMORY[0x1E69B0B48] object:0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endpointWrapper = [(MPAVEndpointRoute *)self endpointWrapper];
  [endpointWrapper unwrappedValue];
  IsLocalEndpoint = MRAVEndpointIsLocalEndpoint();

  [coderCopy encodeBool:IsLocalEndpoint forKey:@"localEndpoint"];
  if ((IsLocalEndpoint & 1) == 0)
  {
    endpointWrapper2 = [(MPAVEndpointRoute *)self endpointWrapper];
    [coderCopy encodeObject:objc_msgSend(endpointWrapper2 forKey:{"unwrappedValue"), @"endpoint"}];
  }
}

- (MPAVEndpointRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:@"localEndpoint"])
  {
    LocalEndpoint = MRAVEndpointGetLocalEndpoint();
  }

  else
  {
    LocalEndpoint = [coderCopy decodeObjectOfClass:MRAVEndpointGetClass() forKey:@"endpoint"];
  }

  selfCopy = LocalEndpoint;
  if (LocalEndpoint)
  {
    self = [(MPAVEndpointRoute *)self initWithEndpoint:LocalEndpoint];
    ExternalDevice = MRAVEndpointGetExternalDevice();
    if (ExternalDevice)
    {
      v8 = [[MPAVRouteConnection alloc] initWithExternalDevice:ExternalDevice];
      [(MPAVEndpointRoute *)self setConnection:v8];
    }

    selfCopy = self;
  }

  return selfCopy;
}

+ (void)getActiveEndpointRouteWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
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