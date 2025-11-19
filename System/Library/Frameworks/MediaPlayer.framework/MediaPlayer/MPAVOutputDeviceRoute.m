@interface MPAVOutputDeviceRoute
+ (void)logicalLeaderFromOutputDevices:(id)a3;
- (BOOL)_anyOutputDeviceObjPassesTest:(id)a3;
- (BOOL)_anyOutputDevicePassesMRFunction:(void *)a3;
- (BOOL)_anyOutputDevicePassesTest:(id)a3;
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
- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)a3;
- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)a3 parentRoute:(id)a4;
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
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MPAVOutputDeviceRoute;
    v4 = [(MPAVRoute *)&v6 isPicked];
  }

  return v4;
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
    v9 = [(MPAVRoute *)&v11 routeName];
  }

  else
  {
    v9 = MRAVOutputDeviceCopyLocalDeviceLocalizedName();
  }

  return v9;
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
  v2 = [(MPAVOutputDeviceRoute *)self outputDevices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isKnown])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(MPAVOutputDeviceRoute *)self outputDevices];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isNearby])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (BOOL)_anyOutputDeviceObjPassesTest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
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

- (BOOL)_anyOutputDevicePassesTest:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MPAVOutputDeviceRoute__anyOutputDevicePassesTest___block_invoke;
  v7[3] = &unk_1E76769E0;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = [(MPAVOutputDeviceRoute *)self _anyOutputDeviceObjPassesTest:v7];

  return self;
}

- (BOOL)_anyOutputDevicePassesMRFunction:(void *)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MPAVOutputDeviceRoute__anyOutputDevicePassesMRFunction___block_invoke;
  v4[3] = &__block_descriptor_40_e26_B16__0__MRAVOutputDevice_8l;
  v4[4] = a3;
  return [(MPAVOutputDeviceRoute *)self _anyOutputDeviceObjPassesTest:v4];
}

- (BOOL)isPickable
{
  v2 = [(MPAVOutputDeviceRoute *)self outputDevice];
  v3 = [v2 isPickable];

  return v3;
}

- (NSArray)dnsNames
{
  [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v2 = MRAVOutputDeviceCopyDNSNames();

  return v2;
}

- (BOOL)isLowFidelityRoute
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 producesLowFidelityAudio];

  return v3;
}

- (int64_t)clusterType
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [objc_opt_class() clusterTypeForMRClusterType:{objc_msgSend(v2, "clusterType")}];

  return v3;
}

- (id)subRoutes
{
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  if ([v3 showMembersInsteadOfRooms])
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
    v5 = [MEMORY[0x1E69B0B08] currentSettings];
    v6 = [v5 allowSingleRoomExpandedRows];

    if ((v6 & 1) == 0)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (id)clusterComposition
{
  v3 = [(MPAVOutputDeviceRoute *)self outputDevices];
  v4 = [v3 count];

  if (v4 <= 1 && ([(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice], MRAVOutputDeviceGetSubtype() == 15))
  {
    v5 = [(MPAVOutputDeviceRoute *)self outputDevices];
    v6 = [v5 firstObject];

    v7 = [objc_opt_class() clusterCompositionForOutputDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAppleAccessory
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 isAppleAccessory];

  return v3;
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
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C738](v2);
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C830](v2);
}

- (BOOL)isMacRoute
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 deviceSubtype] == 18;

  return v3;
}

- (BOOL)isPhoneLocalRoute
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 hostDeviceClass] == 1;

  return v3;
}

- (BOOL)isPhoneRoute
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 hostDeviceClass] == 1 && objc_msgSend(v2, "deviceType") == 4;

  return v3;
}

- (BOOL)isHomeTheaterRoute
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
  v3 = [v2 clusterType] == 2;

  return v3;
}

- (BOOL)isClusterRoute
{
  v3 = [(MPAVOutputDeviceRoute *)self outputDevices];
  if ([v3 count] == 1)
  {
    v4 = [(MPAVOutputDeviceRoute *)self outputDevices];
    v5 = [v4 firstObject];
    v6 = [v5 deviceSubtype] == 15;
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
    v3 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];
    v4 = [(NSArray *)v3 clusterType]== 1;
  }

  else
  {
    v4 = [(NSArray *)self->_outputDevices count]> 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_outputDevices;
    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v3);
          }

          v4 = v4 && MRAVOutputDeviceGetSubtype() == 12;
        }

        v6 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return v4;
}

- (BOOL)requiresPassword
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C810](v2);
}

- (BOOL)supportsRemoteControl
{
  v2 = [(MPAVOutputDeviceRoute *)self outputDevice];
  v3 = [v2 isRemoteControllable];

  return v3;
}

- (BOOL)supportsWirelessDisplay
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C828](v2);
}

- (int64_t)pickableRouteType
{
  v3 = objc_opt_class();
  v4 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return [v3 pickableRouteTypeForOutputDevice:v4];
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
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C7F0](v2);
}

- (BOOL)isVolumeControlAvailable
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C800](v2);
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
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C808](v2);
}

- (BOOL)canFetchMediaDataFromSender
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C750](v2);
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C758](v2);
}

- (BOOL)canAccessRemoteAssets
{
  v2 = [(MPAVOutputDeviceRoute *)self logicalLeaderOutputDevice];

  return MEMORY[0x1EEE1C748](v2);
}

- (id)clusterCompositionRoutes
{
  clusterCompositionMembers = self->_clusterCompositionMembers;
  if (!clusterCompositionMembers)
  {
    v4 = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__MPAVOutputDeviceRoute_clusterCompositionRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [v4 msv_flatMap:v8];
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
    v4 = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__MPAVOutputDeviceRoute_clusterMemberRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [v4 msv_flatMap:v8];
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
    v4 = [(MPAVOutputDeviceRoute *)self outputDevices];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__MPAVOutputDeviceRoute_roomRoutes__block_invoke;
    v8[3] = &unk_1E7676958;
    v8[4] = self;
    v5 = [v4 msv_flatMap:v8];
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

- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)a3 parentRoute:(id)a4
{
  v6 = a4;
  v7 = [(MPAVOutputDeviceRoute *)self initWithOutputDevices:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->super._parentRoute, v6);
  }

  return v8;
}

- (MPAVOutputDeviceRoute)initWithOutputDevices:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MPAVOutputDeviceRoute;
  v6 = [(MPAVOutputDeviceRoute *)&v17 init];
  if (v6)
  {
    if (!v5)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v6 file:@"MPAVOutputDeviceRoute.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"outputDevices"}];
    }

    v7 = [v5 copy];
    outputDevices = v6->_outputDevices;
    v6->_outputDevices = v7;

    v6->_logicalLeaderOutputDevice = [objc_opt_class() logicalLeaderFromOutputDevices:v5];
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

+ (void)logicalLeaderFromOutputDevices:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_35];
  v4 = [v3 firstObject];

  return v4;
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