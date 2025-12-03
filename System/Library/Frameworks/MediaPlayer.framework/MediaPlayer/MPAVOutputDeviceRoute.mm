@interface MPAVOutputDeviceRoute
+ (void)logicalLeaderFromOutputDevices:(id)devices;
- (BOOL)_anyOutputDeviceObjPassesTest:(id)test;
- (BOOL)_anyOutputDevicePassesMRFunction:(void *)function;
- (BOOL)_anyOutputDevicePassesTest:(id)test;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canFetchMediaDataFromSender;
- (BOOL)canPlayEncryptedProgressiveDownloadAssets;
- (BOOL)headTrackedSpatialAudioEnabled;
- (BOOL)isAppleAccessory;
- (BOOL)isAppleTVRoute;
- (BOOL)isB520Route;
- (BOOL)isClusterRoute;
- (BOOL)isHomePodRoute;
- (BOOL)isHomeTheaterRoute;
- (BOOL)isKnown;
- (BOOL)isLowFidelityRoute;
- (BOOL)isLowLatencyRoute;
- (BOOL)isMacRoute;
- (BOOL)isNearby;
- (BOOL)isPhoneLocalRoute;
- (BOOL)isPhoneRoute;
- (BOOL)isPickable;
- (BOOL)isPicked;
- (BOOL)isPickedOnPairedDevice;
- (BOOL)isStereoPair;
- (BOOL)isVolumeControlAvailable;
- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
- (BOOL)requiresPassword;
- (BOOL)supportsGrouping;
- (BOOL)supportsHeadTrackedSpatialAudio;
- (BOOL)supportsRemoteControl;
- (BOOL)supportsWirelessDisplay;
- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)devices;
- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)devices parentRoute:(id)route;
- (NSArray)clusterMemberRoutes;
- (NSArray)dnsNames;
- (NSArray)roomRoutes;
- (id)clusterComposition;
- (id)clusterCompositionRoutes;
- (id)description;
- (id)groupUID;
- (id)playingPairedDeviceName;
- (id)productIdentifier;
- (id)routeName;
- (id)routeUID;
- (id)subRoutes;
- (int64_t)clusterType;
- (int64_t)originalRouteSubtype;
- (int64_t)pickableRouteType;
- (int64_t)routeSubtype;
- (int64_t)routeType;
@end

@implementation MPAVOutputDeviceRoute

- (BOOL)isPicked
{
  WeakRetained = objc_loadWeakRetained(&self->super._parentRoute);
  if ([WeakRetained isPicked])
  {
    isPicked = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MPAVOutputDeviceRoute;
    isPicked = [(MPAVRoute *)&v6 isPicked];
  }

  return isPicked;
}

- (id)routeName
{
  v3 = MRAVOutputDeviceCopySourceInfo();
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1A58DDB30]();
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  IsLocalDevice = MRAVOutputDeviceIsLocalDevice();
  Type = MRAVOutputDeviceGetType();
  if (IsLocalDevice)
  {
    v8 = Type == 4;
  }

  else
  {
    v8 = 0;
  }

  if (!v8 || (v5 & 1) != 0)
  {
    v11.receiver = self;
    v11.super_class = MPAVOutputDeviceRoute;
    routeName = [(MPAVRoute *)&v11 routeName];
  }

  else
  {
    routeName = MRAVOutputDeviceCopyLocalDeviceLocalizedName();
  }

  return routeName;
}

- (id)productIdentifier
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyModelID();

  return v2;
}

- (id)routeUID
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyUniqueIdentifier();

  return v2;
}

- (id)description
{
  v2 = CFCopyDescription([(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(__CFString *)v2 stringByReplacingOccurrencesOfString:@"MRAVOutputDevice" withString:v4];

  return v5;
}

- (int64_t)routeType
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  if (MRAVOutputDeviceIsGroupable())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)routeSubtype
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  Type = MRAVOutputDeviceGetType();
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  Subtype = MRAVOutputDeviceGetSubtype();
  v5 = objc_opt_class();

  return [v5 routeSubtypeForMRSubtype:Subtype withOverridesFromMRType:Type];
}

- (BOOL)isKnown
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
  v3 = [outputDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v7 + 1) + 8 * i) isKnown])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [outputDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isNearby
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
  v3 = [outputDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(outputDevices);
        }

        if ([*(*(&v7 + 1) + 8 * i) isNearby])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [outputDevices countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_anyOutputDeviceObjPassesTest:(id)test
{
  v15 = *MEMORY[0x1E69E9840];
  testCopy = test;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_outputDevices;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (testCopy[2](testCopy, *(*(&v10 + 1) + 8 * i)))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_anyOutputDevicePassesTest:(id)test
{
  testCopy = test;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MPAVOutputDeviceRoute__anyOutputDevicePassesTest___block_invoke;
  v7[3] = &unk_1E76769E0;
  v8 = testCopy;
  v5 = testCopy;
  LOBYTE(self) = [(MPAVOutputDeviceRoute *)self _anyOutputDeviceObjPassesTest:v7];

  return self;
}

- (BOOL)_anyOutputDevicePassesMRFunction:(void *)function
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MPAVOutputDeviceRoute__anyOutputDevicePassesMRFunction___block_invoke;
  v4[3] = &__block_descriptor_40_e26_B16__0__MRAVOutputDevice_8l;
  v4[4] = function;
  return [(MPAVOutputDeviceRoute *)self _anyOutputDeviceObjPassesTest:v4];
}

- (BOOL)isPickable
{
  outputDevice = [(MPAVOutputDeviceRoute *)self outputDevice];
  isPickable = [outputDevice isPickable];

  return isPickable;
}

- (NSArray)dnsNames
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyDNSNames();

  return v2;
}

- (BOOL)isLowFidelityRoute
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  producesLowFidelityAudio = [logicalLeaderOutputDevice producesLowFidelityAudio];

  return producesLowFidelityAudio;
}

- (int64_t)clusterType
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [objc_opt_class() clusterTypeForMRClusterType:{objc_msgSend(logicalLeaderOutputDevice, "clusterType")}];

  return v3;
}

- (id)subRoutes
{
  currentSettings = [MEMORY[0x1E69B0B08] currentSettings];
  if ([currentSettings showMembersInsteadOfRooms])
  {
    [(MPAVOutputDeviceRoute *)self clusterMemberRoutes];
  }

  else
  {
    [(MPAVOutputDeviceRoute *)self roomRoutes];
  }
  v4 = ;

  if ([v4 count] == 1)
  {
    currentSettings2 = [MEMORY[0x1E69B0B08] currentSettings];
    allowSingleRoomExpandedRows = [currentSettings2 allowSingleRoomExpandedRows];

    if ((allowSingleRoomExpandedRows & 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (id)clusterComposition
{
  outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
  v4 = [outputDevices count];

  if (v4 <= 1 && ([(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice], MRAVOutputDeviceGetSubtype() == 15))
  {
    outputDevices2 = [(MPAVOutputDeviceRoute *)self outputDevices];
    firstObject = [outputDevices2 firstObject];

    v7 = [objc_opt_class() clusterCompositionForOutputDevice:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAppleAccessory
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  isAppleAccessory = [logicalLeaderOutputDevice isAppleAccessory];

  return isAppleAccessory;
}

- (BOOL)isLowLatencyRoute
{
  if ([(NSArray *)self->_outputDevices count]!= 1)
  {
    return 0;
  }

  [(NSArray *)self->_outputDevices firstObject];

  return (MRAVOutputDeviceGetType() & 0xFFFFFFFE) == 4;
}

- (BOOL)supportsGrouping
{
  if ([(MPAVOutputDeviceRoute *)self _anyOutputDevicePassesMRFunction:MEMORY[0x1E69B08B0]])
  {
    return 1;
  }

  v4 = MEMORY[0x1E69B08C8];

  return [(MPAVOutputDeviceRoute *)self _anyOutputDevicePassesMRFunction:v4];
}

- (BOOL)headTrackedSpatialAudioEnabled
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C738](logicalLeaderOutputDevice);
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C830](logicalLeaderOutputDevice);
}

- (BOOL)isMacRoute
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [logicalLeaderOutputDevice deviceSubtype] == 18;

  return v3;
}

- (BOOL)isPhoneLocalRoute
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [logicalLeaderOutputDevice hostDeviceClass] == 1;

  return v3;
}

- (BOOL)isPhoneRoute
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [logicalLeaderOutputDevice hostDeviceClass] == 1 && objc_msgSend(logicalLeaderOutputDevice, "deviceType") == 4;

  return v3;
}

- (BOOL)isHomeTheaterRoute
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [logicalLeaderOutputDevice clusterType] == 2;

  return v3;
}

- (BOOL)isClusterRoute
{
  outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
  if ([outputDevices count] == 1)
  {
    outputDevices2 = [(MPAVOutputDeviceRoute *)self outputDevices];
    firstObject = [outputDevices2 firstObject];
    v6 = [firstObject deviceSubtype] == 15;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isStereoPair
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(MPAVOutputDeviceRoute *)self isClusterRoute])
  {
    logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
    v4 = [(NSArray *)logicalLeaderOutputDevice clusterType]== 1;
  }

  else
  {
    v4 = [(NSArray *)self->_outputDevices count]> 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    logicalLeaderOutputDevice = self->_outputDevices;
    v5 = [(NSArray *)logicalLeaderOutputDevice countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(logicalLeaderOutputDevice);
          }

          v4 = v4 && MRAVOutputDeviceGetSubtype() == 12;
        }

        v6 = [(NSArray *)logicalLeaderOutputDevice countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (BOOL)requiresPassword
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C810](logicalLeaderOutputDevice);
}

- (BOOL)supportsRemoteControl
{
  outputDevice = [(MPAVOutputDeviceRoute *)self outputDevice];
  isRemoteControllable = [outputDevice isRemoteControllable];

  return isRemoteControllable;
}

- (BOOL)supportsWirelessDisplay
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C828](logicalLeaderOutputDevice);
}

- (int64_t)pickableRouteType
{
  v3 = objc_opt_class();
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return [v3 pickableRouteTypeForOutputDevice:logicalLeaderOutputDevice];
}

- (int64_t)originalRouteSubtype
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  Type = MRAVOutputDeviceGetType();
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  Subtype = MRAVOutputDeviceGetSubtype();
  v5 = objc_opt_class();

  return [v5 routeSubtypeForMRSubtype:Subtype mrType:Type];
}

- (id)playingPairedDeviceName
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyPlayingPairedDeviceName();

  return v2;
}

- (id)groupUID
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyGroupIdentifier();

  return v2;
}

- (BOOL)isPickedOnPairedDevice
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C7F0](logicalLeaderOutputDevice);
}

- (BOOL)isVolumeControlAvailable
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C800](logicalLeaderOutputDevice);
}

uint64_t __50__MPAVOutputDeviceRoute_isDeviceSpeakerPhoneRoute__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 deviceType] == 4 && objc_msgSend(v2, "deviceSubtype") == 1)
  {
    v3 = [v2 sourceInfo];
    v4 = [v3 multipleBuiltInDevices];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isB520Route
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyModelID();
  v3 = [v2 containsString:@"AudioAccessory5"];

  return v3;
}

- (BOOL)isHomePodRoute
{
  if ([(MPAVOutputDeviceRoute *)self isClusterRoute])
  {

    return [(MPAVOutputDeviceRoute *)self isStereoPair];
  }

  else
  {
    [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
    v4 = MRAVOutputDeviceCopyModelID();
    v5 = [v4 containsString:@"AudioAccessory"];

    return v5;
  }
}

- (BOOL)isAppleTVRoute
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyModelID();
  v3 = [v2 containsString:@"TV"];

  return v3;
}

- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C808](logicalLeaderOutputDevice);
}

- (BOOL)canFetchMediaDataFromSender
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C750](logicalLeaderOutputDevice);
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C758](logicalLeaderOutputDevice);
}

- (BOOL)canAccessRemoteAssets
{
  logicalLeaderOutputDevice = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C748](logicalLeaderOutputDevice);
}

- (id)clusterCompositionRoutes
{
  clusterCompositionMembers = self->_clusterCompositionMembers;
  if (!clusterCompositionMembers)
  {
    outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__MPAVOutputDeviceRoute_clusterCompositionRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [outputDevices msv_flatMap:v8];
    v6 = self->_clusterCompositionMembers;
    self->_clusterCompositionMembers = v5;

    clusterCompositionMembers = self->_clusterCompositionMembers;
  }

  return clusterCompositionMembers;
}

id __49__MPAVOutputDeviceRoute_clusterCompositionRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clusterCompositionMembers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MPAVOutputDeviceRoute_clusterCompositionRoutes__block_invoke_2;
  v6[3] = &unk_1E7676930;
  v6[4] = *(a1 + 32);
  v4 = [v3 msv_map:v6];

  return v4;
}

MPAVOutputDeviceRoute *__49__MPAVOutputDeviceRoute_clusterCompositionRoutes__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MPAVOutputDeviceRoute alloc];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(MPAVOutputDeviceRoute *)v4 initWithOutputDevices:v5 parentRoute:*(a1 + 32)];

  return v6;
}

- (NSArray)clusterMemberRoutes
{
  clusterMemberRoutes = self->_clusterMemberRoutes;
  if (!clusterMemberRoutes)
  {
    outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__MPAVOutputDeviceRoute_clusterMemberRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [outputDevices msv_flatMap:v8];
    v6 = self->_clusterMemberRoutes;
    self->_clusterMemberRoutes = v5;

    clusterMemberRoutes = self->_clusterMemberRoutes;
  }

  return clusterMemberRoutes;
}

id __44__MPAVOutputDeviceRoute_clusterMemberRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activatedClusterMembersOutputDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MPAVOutputDeviceRoute_clusterMemberRoutes__block_invoke_2;
  v6[3] = &unk_1E7676930;
  v6[4] = *(a1 + 32);
  v4 = [v3 msv_map:v6];

  return v4;
}

MPAVOutputDeviceRoute *__44__MPAVOutputDeviceRoute_clusterMemberRoutes__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MPAVOutputDeviceRoute alloc];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(MPAVOutputDeviceRoute *)v4 initWithOutputDevices:v5 parentRoute:*(a1 + 32)];

  return v6;
}

- (NSArray)roomRoutes
{
  roomRoutes = self->_roomRoutes;
  if (!roomRoutes)
  {
    outputDevices = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__MPAVOutputDeviceRoute_roomRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [outputDevices msv_flatMap:v8];
    v6 = self->_roomRoutes;
    self->_roomRoutes = v5;

    roomRoutes = self->_roomRoutes;
  }

  return roomRoutes;
}

id __35__MPAVOutputDeviceRoute_roomRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 roomOutputDevices];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MPAVOutputDeviceRoute_roomRoutes__block_invoke_2;
  v6[3] = &unk_1E7676930;
  v6[4] = *(a1 + 32);
  v4 = [v3 msv_map:v6];

  return v4;
}

MPAVOutputDeviceRoute *__35__MPAVOutputDeviceRoute_roomRoutes__block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MPAVOutputDeviceRoute alloc];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [(MPAVOutputDeviceRoute *)v4 initWithOutputDevices:v5 parentRoute:*(a1 + 32)];

  return v6;
}

- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)devices parentRoute:(id)route
{
  routeCopy = route;
  v7 = [(MPAVOutputDeviceRoute *)self initWithOutputDevices:devices];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->super._parentRoute, routeCopy);
  }

  return v8;
}

- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)devices
{
  devicesCopy = devices;
  v17.receiver = self;
  v17.super_class = MPAVOutputDeviceRoute;
  v6 = [(MPAVOutputDeviceRoute *)&v17 init];
  if (v6)
  {
    if (!devicesCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"MPAVOutputDeviceRoute.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"outputDevices"}];
    }

    v7 = [devicesCopy copy];
    outputDevices = v6->_outputDevices;
    v6->_outputDevices = v7;

    v6->_logicalLeaderOutputDevice = [objc_opt_class() logicalLeaderFromOutputDevices:devicesCopy];
    v9 = MRAVOutputDeviceCopyName();
    routeName = v6->super._routeName;
    v6->super._routeName = v9;

    v6->super._picked = 0;
    avRouteDescription = v6->super._avRouteDescription;
    v6->super._avRouteDescription = 0;

    wirelessDisplayRoute = v6->super._wirelessDisplayRoute;
    v6->super._wirelessDisplayRoute = 0;

    v6->super._displayRouteType = 0;
    v13 = [[MPAVBatteryLevel alloc] initWithOutputDevice:v6->_logicalLeaderOutputDevice];
    batteryLevel = v6->super._batteryLevel;
    v6->super._batteryLevel = v13;
  }

  return v6;
}

+ (void)logicalLeaderFromOutputDevices:(id)devices
{
  v3 = [devices sortedArrayUsingComparator:&__block_literal_global_35];
  firstObject = [v3 firstObject];

  return firstObject;
}

uint64_t __56__MPAVOutputDeviceRoute_logicalLeaderFromOutputDevices___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  IsGroupLeader = MRAVOutputDeviceIsGroupLeader();
  v7 = MRAVOutputDeviceIsGroupLeader();
  if (!IsGroupLeader || v7)
  {
    if (IsGroupLeader & 1 | ((v7 & 1) == 0))
    {
      v9 = MRAVOutputDeviceCopyUniqueIdentifier();
      v10 = MRAVOutputDeviceCopyUniqueIdentifier();
      v8 = [v9 compare:v10];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end