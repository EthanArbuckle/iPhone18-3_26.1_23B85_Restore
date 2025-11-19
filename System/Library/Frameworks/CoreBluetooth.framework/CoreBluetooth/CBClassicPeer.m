@interface CBClassicPeer
- (BOOL)isAACPCapabilityBit:(unsigned int)a3;
- (BOOL)isAppleDevice;
- (BOOL)isGameController;
- (BOOL)isMac;
- (BOOL)isMultiBatteryDevice;
- (BOOL)isNintendoGameController;
- (BOOL)isRFCOMMServiceSupported:(id)a3;
- (BOOL)isReportingBatteryPercent;
- (BOOL)isServiceSupported:(id)a3;
- (BOOL)isSonyGameController;
- (BOOL)isXboxGameController;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (CBClassicPeer)initWithInfo:(id)a3 manager:(id)a4;
- (id)channelWithID:(unsigned __int8)a3;
- (id)channelWithPSM:(unsigned __int16)a3;
- (id)description;
- (id)importServices:(id)a3;
- (id)service:(id)a3;
- (id)serviceForPSM:(unsigned __int16)a3;
- (id)serviceForRFCOMMChannelID:(unsigned __int8)a3;
- (unint64_t)hash;
- (unsigned)getConnectedServices;
- (unsigned)psmForService:(id)a3;
- (unsigned)rfcommChannelIDForService:(id)a3;
- (void)closeL2CAPChannel:(unsigned __int16)a3;
- (void)closeRFCOMMChannel:(unsigned __int8)a3;
- (void)dealloc;
- (void)getConnectedServices;
- (void)handleDisconnection;
- (void)handleGetPeerState:(id)a3;
- (void)handleL2CAPChannelClosed:(id)a3;
- (void)handleL2CAPChannelOpened:(id)a3;
- (void)handlePeerUpdated:(id)a3;
- (void)handleRFCOMMChannelClosed:(id)a3;
- (void)handleRFCOMMChannelOpened:(id)a3;
- (void)handleSuccessfulConnection:(id)a3;
- (void)openRFCOMMChannel:(unsigned __int8)a3 options:(id)a4;
- (void)sendMsg:(int)a3 requiresConnected:(BOOL)a4 args:(id)a5;
- (void)setClickHoldModeLeft:(unsigned __int8)a3;
- (void)setClickHoldModeRight:(unsigned __int8)a3;
- (void)setDoubleTapActionLeft:(unsigned __int16)a3;
- (void)setDoubleTapActionRight:(unsigned __int16)a3;
- (void)setListeningMode:(unsigned __int8)a3;
- (void)setListeningModeConfigs:(unsigned int)a3;
- (void)setName:(id)a3;
- (void)setOneBudANCMode:(unsigned __int8)a3;
- (void)setSmartRoutingEnabled:(unsigned __int8)a3;
@end

@implementation CBClassicPeer

- (CBClassicPeer)initWithInfo:(id)a3 manager:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CBClassicPeer;
  v7 = [(CBPeer *)&v14 initWithInfo:v6 manager:a4];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    L2CAPChannels = v8->_L2CAPChannels;
    v8->_L2CAPChannels = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    RFCOMMChannels = v8->_RFCOMMChannels;
    v8->_RFCOMMChannels = v11;

    [(CBPeer *)v8 setMtuLength:672];
    [(CBClassicPeer *)v8 handlePeerUpdated:v6];
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CBClassicPeer *)self addressString];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[CBClassicPeer dealloc]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  L2CAPChannels = self->_L2CAPChannels;
  if (L2CAPChannels)
  {
    [(NSHashTable *)L2CAPChannels removeAllObjects];
  }

  RFCOMMChannels = self->_RFCOMMChannels;
  if (RFCOMMChannels)
  {
    [(NSHashTable *)RFCOMMChannels removeAllObjects];
  }

  v7.receiver = self;
  v7.super_class = CBClassicPeer;
  [(CBClassicPeer *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v3 = [(CBPeer *)self identifier];
  v4 = [v3 UUIDString];
  v5 = [(CBClassicPeer *)self name];
  v6 = [(CBPeer *)self peerStateToString:[(CBClassicPeer *)self internalState]];
  if ([(CBPeer *)self pairingState])
  {
    v7 = @"Paired";
  }

  else
  {
    v7 = @"Unpaired";
  }

  v8 = [(CBClassicPeer *)self addressString];
  v9 = [(CBClassicPeer *)self deviceType];
  v10 = [(CBClassicPeer *)self productID];
  v11 = [(CBClassicPeer *)self vendorID];
  v12 = [(CBClassicPeer *)self isAppleDevice];
  v13 = &stru_1F40009C8;
  if (v12)
  {
    v13 = @", Apple";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p %@, %@, %@, %@, %@, devType: %d, PID: 0x%04X, VID: 0x%04X%@>", v16, self, v4, v5, v6, v7, v8, v9, v10, v11, v13];

  return v14;
}

- (id)importServices:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"kCBMsgArgPSM"];
        v10 = [v8 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
        v11 = v10;
        if (v9)
        {
          v29[0] = @"kCBMsgArgServiceUUID";
          v12 = [v8 objectForKeyedSubscript:?];
          v13 = [CBUUID UUIDWithData:v12];
          v29[1] = @"kCBMsgArgPSM";
          v30[0] = v13;
          v14 = [v8 objectForKeyedSubscript:@"kCBMsgArgPSM"];
          v30[1] = v14;
          v15 = MEMORY[0x1E695DF20];
          v16 = v30;
          v17 = v29;
LABEL_7:
          v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:2];
          [v22 addObject:v18];

          goto LABEL_8;
        }

        if (v10)
        {
          v27[0] = @"kCBMsgArgServiceUUID";
          v12 = [v8 objectForKeyedSubscript:?];
          v13 = [CBUUID UUIDWithData:v12];
          v27[1] = @"kCBMsgArgRFCOMMChannelID";
          v28[0] = v13;
          v14 = [v8 objectForKeyedSubscript:?];
          v28[1] = v14;
          v15 = MEMORY[0x1E695DF20];
          v16 = v28;
          v17 = v27;
          goto LABEL_7;
        }

LABEL_8:
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)sendMsg:(int)a3 requiresConnected:(BOOL)a4 args:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(CBPeer *)self manager];

  if (v9)
  {
    if ([(CBClassicPeer *)self state]!= 2 && v5)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBClassicPeer sendMsg:requiresConnected:args:];
      }
    }

    if (!v8)
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    v10 = [v8 mutableCopy];
    v11 = [(CBPeer *)self identifier];
    [v10 setObject:v11 forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

    v12 = [(CBPeer *)self manager];
    [v12 sendMsg:v6 args:v10];

LABEL_11:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_11;
  }

  [CBClassicPeer sendMsg:requiresConnected:args:];
}

- (void)handleGetPeerState:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"kCBMsgArgState"];
  [(CBClassicPeer *)self handlePeerUpdated:v4];
}

- (void)handlePeerUpdated:(id)a3
{
  v284 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceType"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgDeviceType"];
  if (v7)
  {
    v8 = v7;
    v9 = [(CBClassicPeer *)self deviceType];

    if (v9 != v6)
    {
      [(CBClassicPeer *)self setDeviceType:v6];
    }
  }

  v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgPID"];
  v11 = [v10 unsignedIntValue];

  v12 = [v4 objectForKeyedSubscript:@"kCBMsgArgPID"];
  if (v12)
  {
    v13 = v12;
    v14 = [(CBClassicPeer *)self productID];

    if (v14 != v11)
    {
      [(CBClassicPeer *)self setProductID:v11];
    }
  }

  v15 = [v4 objectForKeyedSubscript:@"kCBMsgArgVID"];
  v16 = [v15 unsignedIntValue];

  v17 = [v4 objectForKeyedSubscript:@"kCBMsgArgVID"];
  if (v17)
  {
    v18 = v17;
    v19 = [(CBClassicPeer *)self vendorID];

    if (v19 != v16)
    {
      [(CBClassicPeer *)self setVendorID:v16];
    }
  }

  v20 = [v4 objectForKeyedSubscript:@"kCBMsgArgVIDSource"];
  v21 = [v20 unsignedIntValue];

  v22 = [v4 objectForKeyedSubscript:@"kCBMsgArgVIDSource"];
  if (v22)
  {
    v23 = v22;
    v24 = [(CBClassicPeer *)self vendorIDSource];

    if (v24 != v21)
    {
      [(CBClassicPeer *)self setVendorIDSource:v21];
    }
  }

  v25 = [v4 objectForKeyedSubscript:@"kCBMsgArgVersion"];
  v26 = [v25 unsignedIntValue];

  v27 = [v4 objectForKeyedSubscript:@"kCBMsgArgVersion"];
  if (v27)
  {
    v28 = v27;
    v29 = [(CBClassicPeer *)self version];

    if (v29 != v26)
    {
      [(CBClassicPeer *)self setVersion:v26];
    }
  }

  v30 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsDevFused"];
  v31 = [v30 BOOLValue];

  v32 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsDevFused"];
  if (v32)
  {
    v33 = v32;
    v34 = [(CBClassicPeer *)self isDevFused];

    if (v31 != v34)
    {
      [(CBClassicPeer *)self setIsDevFused:v31];
    }
  }

  v35 = [v4 objectForKeyedSubscript:@"kCBMsgArgColorID"];
  v36 = [v35 unsignedCharValue];

  v37 = [v4 objectForKeyedSubscript:@"kCBMsgArgColorID"];
  if (v37)
  {
    v38 = v37;
    v39 = [(CBClassicPeer *)self colorID];

    if (v39 != v36)
    {
      [(CBClassicPeer *)self setColorID:v36];
    }
  }

  v40 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
  v41 = [v40 unsignedCharValue];

  v42 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
  if (v42)
  {
    v43 = v42;
    v44 = [(CBClassicPeer *)self batteryPercentSingle];

    if (v44 != v41)
    {
      v45 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
      -[CBClassicPeer setBatteryPercentSingle:](self, "setBatteryPercentSingle:", [v45 unsignedCharValue]);
    }
  }

  v46 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentLeft"];
  v47 = [v46 unsignedCharValue];

  v48 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentLeft"];
  if (v48)
  {
    v49 = v48;
    v50 = [(CBClassicPeer *)self batteryPercentLeft];

    if (v50 != v47)
    {
      [(CBClassicPeer *)self setBatteryPercentLeft:v47];
    }
  }

  v51 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentRight"];
  v52 = [v51 unsignedCharValue];

  v53 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentRight"];
  if (v53)
  {
    v54 = v53;
    v55 = [(CBClassicPeer *)self batteryPercentRight];

    if (v55 != v52)
    {
      [(CBClassicPeer *)self setBatteryPercentRight:v52];
    }
  }

  v56 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCase"];
  v57 = [v56 unsignedCharValue];

  v58 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCase"];
  if (v58)
  {
    v59 = v58;
    v60 = [(CBClassicPeer *)self batteryPercentCase];

    if (v60 != v57)
    {
      [(CBClassicPeer *)self setBatteryPercentCase:v57];
    }
  }

  v61 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCombined"];
  v62 = [v61 unsignedCharValue];

  v63 = [v4 objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCombined"];
  if (v63)
  {
    v64 = v63;
    v65 = [(CBClassicPeer *)self batteryPercentCombined];

    if (v65 != v62)
    {
      [(CBClassicPeer *)self setBatteryPercentCombined:v62];
    }
  }

  v66 = [v4 objectForKeyedSubscript:@"kCBMsgArgListeningMode"];
  v67 = [v66 unsignedCharValue];

  v68 = [v4 objectForKeyedSubscript:@"kCBMsgArgListeningMode"];
  if (v68)
  {
    v69 = v68;
    v70 = [(CBClassicPeer *)self listeningMode];

    if (v70 != v67)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"listeningMode"];
      self->_listeningMode = v67;
      [(CBClassicPeer *)self didChangeValueForKey:@"listeningMode"];
    }
  }

  v71 = [v4 objectForKeyedSubscript:@"kCBMsgArgListeningConfigs"];
  v72 = [v71 unsignedIntValue];

  v73 = [v4 objectForKeyedSubscript:@"kCBMsgArgListeningConfigs"];
  if (v73)
  {
    v74 = v73;
    v75 = [(CBClassicPeer *)self listeningModeConfigs];

    if (v75 != v72)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"listeningModeConfigs"];
      self->_listeningModeConfigs = v72;
      [(CBClassicPeer *)self didChangeValueForKey:@"listeningModeConfigs"];
    }
  }

  v76 = [v4 objectForKeyedSubscript:@"kCBMsgArgLRDetectionModeEnabled"];
  v77 = [v76 BOOLValue];

  v78 = [v4 objectForKeyedSubscript:@"kCBMsgArgLRDetectionModeEnabled"];
  if (v78)
  {
    v79 = v78;
    v80 = [(CBClassicPeer *)self LRDetectionEnabled];

    if (v77 != v80)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"LRDetectionEnabled"];
      self->_LRDetectionEnabled = v77;
      [(CBClassicPeer *)self didChangeValueForKey:@"LRDetectionEnabled"];
    }
  }

  v81 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQModeEnabled"];
  v82 = [v81 BOOLValue];

  v83 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQModeEnabled"];
  if (v83)
  {
    v84 = v83;
    v85 = [(CBClassicPeer *)self EQConfigEnabled];

    if (v82 != v85)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigEnabled"];
      self->_EQConfigEnabled = v82;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigEnabled"];
    }
  }

  v86 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQTreble"];
  v87 = [v86 unsignedCharValue];

  v88 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQTreble"];
  if (v88)
  {
    v89 = v88;
    v90 = [(CBClassicPeer *)self EQConfigTreble];

    if (v90 != v87)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigTreble"];
      self->_EQConfigTreble = v87;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigTreble"];
    }
  }

  v91 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQMid"];
  v92 = [v91 unsignedCharValue];

  v93 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQMid"];
  if (v93)
  {
    v94 = v93;
    v95 = [(CBClassicPeer *)self EQConfigMid];

    if (v95 != v92)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigMid"];
      self->_EQConfigMid = v92;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigMid"];
    }
  }

  v96 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQBass"];
  v97 = [v96 unsignedCharValue];

  v98 = [v4 objectForKeyedSubscript:@"kCBMsgArgEQBass"];
  if (v98)
  {
    v99 = v98;
    v100 = [(CBClassicPeer *)self EQConfigBass];

    if (v100 != v97)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigBass"];
      self->_EQConfigBass = v97;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigBass"];
    }
  }

  v101 = [v4 objectForKeyedSubscript:@"kCBMsgArgAutoAnswerCalls"];
  v102 = [v101 BOOLValue];

  v103 = [v4 objectForKeyedSubscript:@"kCBMsgArgAutoAnswerCalls"];
  if (v103)
  {
    v104 = v103;
    v105 = [(CBClassicPeer *)self autoAnswerCalls];

    if (v102 != v105)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"autoAnswerCalls"];
      self->_autoAnswerCalls = v102;
      [(CBClassicPeer *)self didChangeValueForKey:@"autoAnswerCalls"];
    }
  }

  v106 = [v4 objectForKeyedSubscript:@"kCBMsgArgCrownRotationDirection"];
  v107 = [v106 unsignedCharValue];

  v108 = [v4 objectForKeyedSubscript:@"kCBMsgArgCrownRotationDirection"];
  if (v108)
  {
    v109 = v108;
    v110 = [(CBClassicPeer *)self crownRotationDirection];

    if (v110 != v107)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"crownRotationDirection"];
      self->_crownRotationDirection = v107;
      [(CBClassicPeer *)self didChangeValueForKey:@"crownRotationDirection"];
    }
  }

  v111 = [v4 objectForKeyedSubscript:@"kCBMsgArgSingleClickMode"];
  v112 = [v111 unsignedCharValue];

  v113 = [v4 objectForKeyedSubscript:@"kCBMsgArgSingleClickMode"];
  if (v113)
  {
    v114 = v113;
    v115 = [(CBClassicPeer *)self singleClickMode];

    if (v115 != v112)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"singleClickMode"];
      self->_singleClickMode = v112;
      [(CBClassicPeer *)self didChangeValueForKey:@"singleClickMode"];
    }
  }

  v116 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleClickMode"];
  v117 = [v116 unsignedCharValue];

  v118 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleClickMode"];
  if (v118)
  {
    v119 = v118;
    v120 = [(CBClassicPeer *)self doubleClickMode];

    if (v120 != v117)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickMode"];
      self->_doubleClickMode = v117;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickMode"];
    }
  }

  v121 = [v4 objectForKeyedSubscript:@"kCBMsgArgClickHoldMode"];

  if (v121)
  {
    v122 = [v4 objectForKeyedSubscript:@"kCBMsgArgClickHoldMode"];
    v123 = [v122 unsignedIntValue];

    if ([(CBClassicPeer *)self clickHoldModeLeft]!= HIBYTE(v123))
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeLeft"];
      self->_clickHoldModeLeft = HIBYTE(v123);
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeLeft"];
    }

    if ([(CBClassicPeer *)self clickHoldModeRight]!= v123)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeRight"];
      self->_clickHoldModeRight = v123;
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeRight"];
    }
  }

  v124 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleClickInterval"];
  v125 = [v124 unsignedIntValue];

  v126 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleClickInterval"];
  if (v126)
  {
    v127 = v126;
    v128 = [(CBClassicPeer *)self doubleClickInterval];

    if (v128 != v125)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickInterval"];
      self->_doubleClickInterval = v125;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickInterval"];
    }
  }

  v129 = [v4 objectForKeyedSubscript:@"kCBMsgArgClickHoldInterval"];
  v130 = [v129 unsignedIntValue];

  v131 = [v4 objectForKeyedSubscript:@"kCBMsgArgClickHoldInterval"];
  if (v131)
  {
    v132 = v131;
    v133 = [(CBClassicPeer *)self clickHoldInterval];

    if (v133 != v130)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldInterval"];
      self->_clickHoldInterval = v130;
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldInterval"];
    }
  }

  v134 = [v4 objectForKeyedSubscript:@"kCBMsgArgOneBudANCMode"];
  v135 = [v134 unsignedCharValue];

  v136 = [v4 objectForKeyedSubscript:@"kCBMsgArgOneBudANCMode"];
  if (v136)
  {
    v137 = v136;
    v138 = [(CBClassicPeer *)self oneBudANCMode];

    if (v138 != v135)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"oneBudANCMode"];
      self->_oneBudANCMode = v135;
      [(CBClassicPeer *)self didChangeValueForKey:@"oneBudANCMode"];
    }
  }

  v139 = [v4 objectForKeyedSubscript:@"kCBMsgArgSwitchControlMode"];
  v140 = [v139 unsignedCharValue];

  v141 = [v4 objectForKeyedSubscript:@"kCBMsgArgSwitchControlMode"];
  if (v141)
  {
    v142 = v141;
    v143 = [(CBClassicPeer *)self switchControlMode];

    if (v143 != v140)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"switchControlMode"];
      self->_switchControlMode = v140;
      [(CBClassicPeer *)self didChangeValueForKey:@"switchControlMode"];
    }
  }

  v144 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapAction"];

  if (v144)
  {
    v145 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapAction"];
    v146 = [v145 unsignedIntValue];

    if (v146 != [(CBClassicPeer *)self doubleTapAction])
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapAction"];
      self->_doubleTapAction = v146;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapAction"];
    }
  }

  v147 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapActionEx"];

  if (v147)
  {
    v148 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapActionEx"];
    v149 = [v148 unsignedIntValue];

    if ([(CBClassicPeer *)self doubleTapActionLeft]!= (v149 >> 8))
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionLeft"];
      self->_doubleTapActionLeft = v149 >> 8;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionLeft"];
    }

    if ([(CBClassicPeer *)self doubleTapActionRight]!= v149)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionRight"];
      self->_doubleTapActionRight = v149;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionRight"];
    }
  }

  v150 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapCapability"];
  v151 = [v150 unsignedCharValue];

  v152 = [v4 objectForKeyedSubscript:@"kCBMsgArgDoubleTapCapability"];
  if (v152)
  {
    v153 = v152;
    v154 = [(CBClassicPeer *)self doubleTapCapability];

    if (v154 != v151)
    {
      [(CBClassicPeer *)self setDoubleTapCapability:v151];
    }
  }

  v155 = [v4 objectForKeyedSubscript:@"kCBMsgArgMicMode"];
  v156 = [v155 unsignedCharValue];

  v157 = [v4 objectForKeyedSubscript:@"kCBMsgArgMicMode"];
  if (v157)
  {
    v158 = v157;
    v159 = [(CBClassicPeer *)self micMode];

    if (v159 != v156)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"micMode"];
      self->_micMode = v156;
      [(CBClassicPeer *)self didChangeValueForKey:@"micMode"];
    }
  }

  v160 = [v4 objectForKeyedSubscript:@"kCBMsgArgInEarDetectionEnabled"];
  v161 = [v160 BOOLValue];

  v162 = [v4 objectForKeyedSubscript:@"kCBMsgArgInEarDetectionEnabled"];
  if (v162)
  {
    v163 = v162;
    v164 = [(CBClassicPeer *)self inEarDetectionEnabled];

    if (v161 != v164)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"inEarDetectionEnabled"];
      self->_inEarDetectionEnabled = v161;
      [(CBClassicPeer *)self didChangeValueForKey:@"inEarDetectionEnabled"];
    }
  }

  v165 = [v4 objectForKeyedSubscript:@"kCBMsgArgSmartRoutingSupported"];
  v166 = [v165 BOOLValue];

  v167 = [v4 objectForKeyedSubscript:@"kCBMsgArgSmartRoutingSupported"];
  if (v167)
  {
    v168 = v167;
    v169 = [(CBClassicPeer *)self smartRoutingSupported];

    if (v166 != v169)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingSupported"];
      self->_smartRoutingSupported = v166;
      [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingSupported"];
    }
  }

  v170 = [v4 objectForKeyedSubscript:@"kCBMsgArgSmartRoutingEnabled"];
  v171 = [v170 unsignedCharValue];

  v172 = [v4 objectForKeyedSubscript:@"kCBMsgArgSmartRoutingEnabled"];
  if (v172)
  {
    v173 = v172;
    v174 = [(CBClassicPeer *)self smartRoutingEnabled];

    if (v174 != v171)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingEnabled"];
      self->_smartRoutingEnabled = v171;
      [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingEnabled"];
    }
  }

  v175 = [v4 objectForKeyedSubscript:@"kCBMsgArgRemoteTimeSyncEnabled"];
  v176 = [v175 BOOLValue];

  v177 = [v4 objectForKeyedSubscript:@"kCBMsgArgRemoteTimeSyncEnabled"];
  if (v177)
  {
    v178 = v177;
    v179 = [(CBClassicPeer *)self remoteTimeSyncEnabled];

    if (v176 != v179)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"remoteTimeSyncEnabled"];
      self->_remoteTimeSyncEnabled = v176;
      [(CBClassicPeer *)self didChangeValueForKey:@"remoteTimeSyncEnabled"];
    }
  }

  v180 = [v4 objectForKeyedSubscript:@"kCBMsgArgPrimaryInEarStatus"];
  v181 = [v180 unsignedCharValue];

  v182 = [v4 objectForKeyedSubscript:@"kCBMsgArgPrimaryInEarStatus"];
  if (v182)
  {
    v183 = v182;
    v184 = [(CBClassicPeer *)self primaryInEarStatus];

    if (v184 != v181)
    {
      [(CBClassicPeer *)self setPrimaryInEarStatus:v181];
    }
  }

  v185 = [v4 objectForKeyedSubscript:@"kCBMsgArgSecondaryInEarStatus"];
  v186 = [v185 unsignedCharValue];

  v187 = [v4 objectForKeyedSubscript:@"kCBMsgArgSecondaryInEarStatus"];
  if (v187)
  {
    v188 = v187;
    v189 = [(CBClassicPeer *)self secondaryInEarStatus];

    if (v189 != v186)
    {
      [(CBClassicPeer *)self setSecondaryInEarStatus:v186];
    }
  }

  v190 = [v4 objectForKeyedSubscript:@"kCBMsgArgServices"];
  if (v190)
  {
    v191 = [(CBClassicPeer *)self importServices:v190];
    [(CBClassicPeer *)self setServices:v191];
  }

  v192 = [v4 objectForKeyedSubscript:@"kCBMsgArgSDPRecordData"];
  if (v192)
  {
    [(CBClassicPeer *)self setSdpRecordData:v192];
  }

  v277 = v192;
  v193 = [v4 objectForKeyedSubscript:@"kCBMsgArgAACPCapabilityBits"];
  if (v193)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v194 = CBLogComponent;
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
    {
      [(CBClassicPeer *)self handlePeerUpdated:v193, v194];
    }

    [(CBClassicPeer *)self setAacpCapabilityBits:v193];
  }

  v276 = v193;
  v195 = [v4 objectForKeyedSubscript:@"kCBMsgArgAppleFeatureBitMask"];
  v196 = [v195 unsignedLongValue];

  v197 = [v4 objectForKeyedSubscript:@"kCBMsgArgAppleFeatureBitMask"];
  if (v197)
  {
    v198 = v197;
    v199 = [(CBClassicPeer *)self appleFeatureBitMask];

    if (v199 != v196)
    {
      [(CBClassicPeer *)self setAppleFeatureBitMask:v196];
    }
  }

  v200 = [v4 objectForKeyedSubscript:@"kCBMsgArgExtendedAppleFeatureBitMask"];
  v201 = [v200 unsignedLongLongValue];

  v202 = [v4 objectForKeyedSubscript:@"kCBMsgArgExtendedAppleFeatureBitMask"];
  if (v202)
  {
    v203 = v202;
    v204 = [(CBClassicPeer *)self appleExtendedFeatureBitMask];

    if (v204 != v201)
    {
      [(CBClassicPeer *)self setAppleExtendedFeatureBitMask:v201];
    }
  }

  v205 = [v4 objectForKeyedSubscript:@"kCBMsgArgRssi"];
  if (v205)
  {
    v206 = [(CBClassicPeer *)self RSSI];
    v207 = [v206 isEqualToNumber:v205];

    if ((v207 & 1) == 0)
    {
      [(CBClassicPeer *)self setRSSI:v205];
    }
  }

  v275 = v205;
  v208 = [v4 objectForKeyedSubscript:@"kCBMsgArgSerialNumber"];
  if (v208)
  {
    v209 = [(CBClassicPeer *)self serialNumber];
    v210 = [v208 isEqualToString:v209];

    if ((v210 & 1) == 0)
    {
      [(CBClassicPeer *)self setSerialNumber:v208];
    }
  }

  v274 = v208;
  v211 = [v4 objectForKeyedSubscript:@"kCBMsgArgTrustedUID"];
  v212 = v211;
  if (v211)
  {
    v213 = [v211 UUIDString];
    v214 = [(CBClassicPeer *)self trustedUID];
    v215 = [v214 UUIDString];
    v216 = [v213 isEqualToString:v215];

    if ((v216 & 1) == 0)
    {
      [(CBClassicPeer *)self setTrustedUID:v212];
    }
  }

  v217 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  v218 = [v217 BOOLValue];

  v219 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  if (v219)
  {
    v220 = v219;
    v221 = [(CBClassicPeer *)self isIncoming];

    if (v218 != v221)
    {
      [(CBClassicPeer *)self setIsIncoming:v218];
    }
  }

  v222 = [v4 objectForKeyedSubscript:@"kCBMsgArgInternalState"];
  v223 = [v222 integerValue];

  v224 = [v4 objectForKeyedSubscript:@"kCBMsgArgInternalState"];
  if (v224)
  {
    v225 = v224;
    v226 = [(CBClassicPeer *)self internalState];

    if (v226 != v223)
    {
      [(CBClassicPeer *)self setInternalState:v223];
    }
  }

  v227 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];
  v228 = [v227 unsignedShortValue];

  v229 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];
  if (v229)
  {
    v230 = v229;
    v231 = [(CBClassicPeer *)self connectionHandle];

    if (v231 != v228)
    {
      [(CBClassicPeer *)self setConnectionHandle:v228];
    }
  }

  v232 = [v4 objectForKeyedSubscript:@"kCBMsgArgAddressString"];
  if (v232)
  {
    v233 = [(CBClassicPeer *)self addressString];
    v234 = [v233 isEqualToString:v232];

    if ((v234 & 1) == 0)
    {
      [(CBClassicPeer *)self setAddressString:v232];
    }
  }

  v272 = v232;
  v235 = [v4 objectForKeyedSubscript:@"kCBMsgArgModesSupported"];
  v236 = [v235 unsignedCharValue];

  v237 = [v4 objectForKeyedSubscript:@"kCBMsgArgModesSupported"];
  if (v237)
  {
    v238 = v237;
    v239 = [(CBClassicPeer *)self modeSupported];

    if (v239 != v236)
    {
      [(CBClassicPeer *)self setModeSupported:v236];
    }
  }

  v240 = [v4 objectForKeyedSubscript:@"kCBMsgArgName"];
  v241 = v240;
  v278 = v190;
  if (v240 && ![v240 length])
  {

    v241 = 0;
    v245 = [(CBClassicPeer *)self name];

    if (v245)
    {
LABEL_165:
      if (!v241)
      {
        goto LABEL_174;
      }

      goto LABEL_172;
    }
  }

  else
  {
    v242 = [(CBClassicPeer *)self name];
    v243 = v241 | v242;

    if (v243)
    {
      goto LABEL_165;
    }
  }

  v244 = [(CBClassicPeer *)self addressString];

  if (v244)
  {
    v241 = [(CBClassicPeer *)self addressString];
    goto LABEL_165;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v246 = CBLogComponent;
  if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer handlePeerUpdated:v246];
  }

  v241 = &stru_1F40009C8;
LABEL_172:
  v247 = [(CBClassicPeer *)self name];
  v248 = [v241 isEqual:v247];

  if ((v248 & 1) == 0)
  {
    [(CBClassicPeer *)self willChangeValueForKey:@"name"];
    objc_storeStrong(&self->_name, v241);
    [(CBClassicPeer *)self didChangeValueForKey:@"name"];
  }

LABEL_174:
  v271 = v241;
  v249 = [v4 objectForKey:@"kCBMsgArgModelIdentifier"];
  if (v249)
  {
    [(CBClassicPeer *)self willChangeValueForKey:@"appleModelIdentifier"];
    objc_storeStrong(&self->_appleModelIdentifier, v249);
    [(CBClassicPeer *)self didChangeValueForKey:@"appleModelIdentifier"];
  }

  v250 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsConnectedOverUSB"];
  v251 = [v250 BOOLValue];

  v252 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsConnectedOverUSB"];
  if (v252)
  {
    v253 = v252;
    v254 = [(CBClassicPeer *)self isConnectedOverUSB];

    if (v251 != v254)
    {
      [(CBClassicPeer *)self setIsConnectedOverUSB:v251];
    }
  }

  v273 = v212;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v255 = [(CBClassicPeer *)self services];
  v256 = [v255 countByEnumeratingWithState:&v279 objects:v283 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = 0;
    v259 = *v280;
    do
    {
      for (i = 0; i != v257; ++i)
      {
        if (*v280 != v259)
        {
          objc_enumerationMutation(v255);
        }

        v261 = [*(*(&v279 + 1) + 8 * i) objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
        v262 = [v261 UUIDString];

        v258 |= [@"7221EC74-0BAD-4D01-8F77-997B2BE0722A" isEqualToString:v262];
      }

      v257 = [v255 countByEnumeratingWithState:&v279 objects:v283 count:16];
    }

    while (v257);
  }

  else
  {
    LOBYTE(v258) = 0;
  }

  [(CBClassicPeer *)self setIsAppleAccessoryServer:v258 & 1];
  v263 = [v4 objectForKeyedSubscript:@"kCBMsgArgRemotePANStatus"];

  if (v263)
  {
    v264 = [v4 objectForKeyedSubscript:@"kCBMsgArgRemotePANStatus"];
    -[CBClassicPeer setPanEnabled:](self, "setPanEnabled:", [v264 BOOLValue]);
  }

  v265 = [v4 objectForKeyedSubscript:@"kCBMsgArgFileBrowsingStatus"];

  if (v265)
  {
    v266 = [v4 objectForKeyedSubscript:@"kCBMsgArgFileBrowsingStatus"];
    -[CBClassicPeer setBrowsingEnabled:](self, "setBrowsingEnabled:", [v266 BOOLValue]);
  }

  v267 = [v4 objectForKeyedSubscript:@"kCBMsgArgObjectPushStatus"];

  if (v267)
  {
    v268 = [v4 objectForKeyedSubscript:@"kCBMsgArgObjectPushStatus"];
    -[CBClassicPeer setObjectPushEnabled:](self, "setObjectPushEnabled:", [v268 BOOLValue]);
  }

  v269 = *MEMORY[0x1E69E9840];
}

- (void)handleSuccessfulConnection:(id)a3
{
  v4 = a3;
  v10 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsLinkEncrypted"];
  v5 = [v4 objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
  v6 = [v4 objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  v7 = [v4 objectForKeyedSubscript:@"kCBMsgArgServices"];
  v8 = [v4 objectForKeyedSubscript:@"kCBMsgArgSDPRecordData"];

  if (v8)
  {
    [(CBClassicPeer *)self setSdpRecordData:v8];
  }

  if (v7)
  {
    v9 = [(CBClassicPeer *)self importServices:v7];
    [(CBClassicPeer *)self setServices:v9];
  }

  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v10 BOOLValue]);
  -[CBPeer setConnectedTransport:](self, "setConnectedTransport:", [v5 unsignedIntegerValue]);
  -[CBClassicPeer setIsIncoming:](self, "setIsIncoming:", [v6 BOOLValue]);
  [(CBClassicPeer *)self setState:2];
}

- (void)handleDisconnection
{
  [(CBClassicPeer *)self setRSSI:0];
  [(CBClassicPeer *)self setState:0];

  [(CBPeer *)self setIsLinkEncrypted:0];
}

- (void)handleL2CAPChannelOpened:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v5)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer handleL2CAPChannelOpened:];
      v6 = 0;
      v19 = [(CBClassicPeer *)self connectL2CAPCallback];

      if (!v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
      v7 = [(CBClassicPeer *)self connectL2CAPCallback];

      if (!v7)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v8 = [CBL2CAPChannel alloc];
  v9 = [(CBPeer *)self manager];
  v6 = [(CBL2CAPChannel *)v8 initWithPeer:self manager:v9 info:v4];

  v10 = [v4 objectForKey:@"kCBMsgArgPSM"];
  v11 = [v10 unsignedCharValue];

  v12 = [(CBClassicPeer *)self serviceForPSM:v11];
  v13 = [v12 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
  [(CBL2CAPChannel *)v6 setServiceUUID:v13];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v14 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[CBClassicPeer handleL2CAPChannelOpened:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_1C0AC1000, v14, OS_LOG_TYPE_DEFAULT, "%s %@", &v20, 0x16u);
  }

  v15 = [(CBClassicPeer *)self L2CAPChannels];
  [v15 addObject:v6];

  v16 = [(CBClassicPeer *)self connectL2CAPCallback];

  if (v16)
  {
LABEL_12:
    v17 = [(CBClassicPeer *)self connectL2CAPCallback];
    (v17)[2](v17, v6, [v5 code]);
  }

LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelClosed:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 errorWithInfo:v5];
  v7 = [v5 objectForKey:@"kCBMsgArgPSM"];

  v8 = [v7 unsignedShortValue];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicPeer handleL2CAPChannelClosed:];
  }

  v9 = [(CBClassicPeer *)self channelWithPSM:v8];
  v10 = [(CBClassicPeer *)self disconnectL2CAPCallback];

  if (v10)
  {
    v11 = [(CBClassicPeer *)self disconnectL2CAPCallback];
    (v11)[2](v11, v9, [v6 code]);
  }

  v12 = [(CBClassicPeer *)self L2CAPChannels];
  [v12 removeObject:v9];
}

- (id)channelWithPSM:(unsigned __int16)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CBClassicPeer *)self L2CAPChannels];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 PSM] == v3)
        {
          v10 = v9;

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer channelWithPSM:];
  }

  v10 = 0;
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)handleRFCOMMChannelOpened:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:v4];
  if (v5)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v6 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer handleRFCOMMChannelOpened:v6];
      v7 = 0;
      v14 = [(CBClassicPeer *)self connectRFCOMMCallback];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 0;
      v8 = [(CBClassicPeer *)self connectRFCOMMCallback];

      if (!v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v7 = [[CBRFCOMMChannel alloc] initWithPeer:self info:v4];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[CBClassicPeer handleRFCOMMChannelOpened:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v15, 0x16u);
  }

  v10 = [(CBClassicPeer *)self RFCOMMChannels];
  [v10 addObject:v7];

  v11 = [(CBClassicPeer *)self connectRFCOMMCallback];

  if (v11)
  {
LABEL_12:
    v12 = [(CBClassicPeer *)self connectRFCOMMCallback];
    (v12)[2](v12, v7, [v5 code]);
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleRFCOMMChannelClosed:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 errorWithInfo:v5];
  v7 = [v5 objectForKey:@"kCBMsgArgRFCOMMChannelID"];

  v8 = [v7 unsignedCharValue];
  v9 = [(CBClassicPeer *)self channelWithID:v8];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[CBClassicPeer handleRFCOMMChannelClosed:]";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ and result: %@", &v15, 0x20u);
  }

  v11 = [(CBClassicPeer *)self disconnectRFCOMMCallback];

  if (v11)
  {
    v12 = [(CBClassicPeer *)self disconnectRFCOMMCallback];
    (v12)[2](v12, v9, [v6 code]);
  }

  v13 = [(CBClassicPeer *)self RFCOMMChannels];
  [v13 removeObject:v9];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)channelWithID:(unsigned __int8)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CBClassicPeer *)self RFCOMMChannels];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 channelID] == v3)
        {
          v10 = v9;

          goto LABEL_15;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer channelWithID:];
  }

  v10 = 0;
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)service:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(CBClassicPeer *)self services];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)serviceForPSM:(unsigned __int16)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CBClassicPeer *)self services];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgPSM"];
        v11 = [v10 unsignedShortValue];

        if (v11 == v3)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unsigned)psmForService:(id)a3
{
  v3 = [(CBClassicPeer *)self service:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgPSM"];
    v6 = [v5 unsignedShortValue];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (id)serviceForRFCOMMChannelID:(unsigned __int8)a3
{
  v3 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CBClassicPeer *)self services];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
        v11 = [v10 unsignedCharValue];

        if (v11 == v3)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unsigned)rfcommChannelIDForService:(id)a3
{
  v4 = a3;
  if (v4 && ([(CBClassicPeer *)self service:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
    v8 = [v7 unsignedShortValue];

    return v8;
  }

  else
  {

    return 0;
  }
}

- (void)setListeningMode:(unsigned __int8)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self listeningMode]!= a3)
  {
    v8 = @"kCBMsgArgListeningMode";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:a3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"listeningMode"];
    self->_listeningMode = a3;
    [(CBClassicPeer *)self didChangeValueForKey:@"listeningMode"];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setListeningModeConfigs:(unsigned int)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self listeningModeConfigs]!= a3)
  {
    v8 = @"kCBMsgArgListeningConfigs";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:a3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"listeningModeConfigs"];
    self->_listeningModeConfigs = a3;
    [(CBClassicPeer *)self didChangeValueForKey:@"listeningModeConfigs"];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setClickHoldModeLeft:(unsigned __int8)a3
{
  v3 = a3;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self clickHoldModeLeft]!= a3)
  {
    v5 = [(CBClassicPeer *)self clickHoldModeRight];
    v9 = @"kCBMsgArgClickHoldMode";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5 | (v3 << 8)];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeLeft"];
    self->_clickHoldModeLeft = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeLeft"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setClickHoldModeRight:(unsigned __int8)a3
{
  v3 = a3;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self clickHoldModeRight]!= a3)
  {
    v5 = [(CBClassicPeer *)self clickHoldModeLeft];
    v9 = @"kCBMsgArgClickHoldMode";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3 | (v5 << 8)];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeRight"];
    self->_clickHoldModeRight = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeRight"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setOneBudANCMode:(unsigned __int8)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self oneBudANCMode]!= a3)
  {
    v8 = @"kCBMsgArgOneBudANCMode";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:a3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"oneBudANCMode"];
    self->_oneBudANCMode = a3;
    [(CBClassicPeer *)self didChangeValueForKey:@"oneBudANCMode"];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setDoubleTapActionLeft:(unsigned __int16)a3
{
  v3 = a3;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleTapActionLeft]!= a3)
  {
    v5 = [(CBClassicPeer *)self doubleTapActionRight];
    v9 = @"kCBMsgArgDoubleTapActionEx";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5 | (v3 << 8)];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionLeft"];
    self->_doubleTapActionLeft = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionLeft"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDoubleTapActionRight:(unsigned __int16)a3
{
  v3 = a3;
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleTapActionRight]!= a3)
  {
    v5 = [(CBClassicPeer *)self doubleTapActionLeft];
    v9 = @"kCBMsgArgDoubleTapActionEx";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3 | (v5 << 8)];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionRight"];
    self->_doubleTapActionRight = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionRight"];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSmartRoutingEnabled:(unsigned __int8)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self smartRoutingEnabled]!= a3)
  {
    v8 = @"kCBMsgArgSmartRoutingEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:a3];
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingEnabled"];
    self->_smartRoutingEnabled = a3;
    [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingEnabled"];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (unsigned)getConnectedServices
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self internalState]== 2)
  {
    v3 = [(CBPeer *)self manager];
    v12 = @"kCBMsgArgDeviceUUID";
    v4 = [(CBPeer *)self identifier];
    v13[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v6 = [v3 sendSyncMsg:64 args:v5];

    v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgConnectedServices"];
    LODWORD(v3) = [v7 unsignedIntValue];

    result = v3;
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v10 = CBLogComponent;
    result = os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [(CBClassicPeer *)v10 getConnectedServices];
      result = 0;
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)isAppleDevice
{
  if ([(CBClassicPeer *)self vendorIDSource]== 2 && [(CBClassicPeer *)self vendorID]== 1452)
  {
    return 1;
  }

  if ([(CBClassicPeer *)self vendorID]== 76)
  {
    return 1;
  }

  if ([(CBPeer *)self pairingState]== 2)
  {
    return 1;
  }

  return [(CBPeer *)self pairingState]== 3;
}

- (BOOL)isiPhone
{
  v3 = [(CBClassicPeer *)self deviceType];
  if (v3 != 12 && v3 != 2)
  {
    return 0;
  }

  return [(CBClassicPeer *)self isAppleDevice];
}

- (BOOL)isiPad
{
  v3 = [(CBClassicPeer *)self isAppleDevice];
  if (v3)
  {
    LOBYTE(v3) = [(CBClassicPeer *)self deviceType]== 29;
  }

  return v3;
}

- (BOOL)isMac
{
  v3 = [(CBClassicPeer *)self deviceType];
  if ((v3 - 7) >= 4 && v3 != 1)
  {
    return 0;
  }

  return [(CBClassicPeer *)self isAppleDevice];
}

- (BOOL)isMultiBatteryDevice
{
  result = 0;
  if ([(CBClassicPeer *)self isAppleDevice])
  {
    v3 = [(CBClassicPeer *)self productID]- 8194;
    if (v3 < 0x15 && ((0x11B201u >> v3) & 1) != 0)
    {
      return 1;
    }

    if (![(CBClassicPeer *)self batteryPercentSingle]&& ([(CBClassicPeer *)self batteryPercentCase]|| [(CBClassicPeer *)self batteryPercentLeft]|| [(CBClassicPeer *)self batteryPercentRight]))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isReportingBatteryPercent
{
  if (![(CBClassicPeer *)self isMultiBatteryDevice])
  {
    return [(CBClassicPeer *)self batteryPercentSingle]!= 0;
  }

  if ([(CBClassicPeer *)self batteryPercentLeft])
  {
    return 1;
  }

  if ([(CBClassicPeer *)self batteryPercentRight])
  {
    return 1;
  }

  return [(CBClassicPeer *)self batteryPercentCase]!= 0;
}

- (BOOL)isGameController
{
  if ([(CBClassicPeer *)self deviceType]== 26 || [(CBClassicPeer *)self isSonyGameController])
  {
    return 1;
  }

  return [(CBClassicPeer *)self isXboxGameController];
}

- (BOOL)isSonyGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1356)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 1476 || [(CBClassicPeer *)self productID]== 2508 || [(CBClassicPeer *)self productID]== 3302 || [(CBClassicPeer *)self productID]== 3570 || [(CBClassicPeer *)self productID]== 3653)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 3654;
}

- (BOOL)isXboxGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1118)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 765 || [(CBClassicPeer *)self productID]== 2828 || [(CBClassicPeer *)self productID]== 2818)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 2821;
}

- (BOOL)isNintendoGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1406)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 8198)
  {
    return 1;
  }

  if ([(CBClassicPeer *)self productID]== 8199)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 8201;
}

- (BOOL)isAACPCapabilityBit:(unsigned int)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [(CBClassicPeer *)self aacpCapabilityBits];
  if (v5)
  {
    v6 = v5;
    v7 = [(CBClassicPeer *)self aacpCapabilityBits];
    v8 = [v7 length];

    if (v8 <= a3 >> 3)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v19 = 0;
      v9 = [(CBClassicPeer *)self aacpCapabilityBits];
      [v9 getBytes:&v19 range:{a3 >> 3, 1}];

      v10 = (1 << (a3 & 7)) & v19;
      v11 = v10 != 0;
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer handlePeerUpdated:];
      }

      v12 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        v14 = v10 != 0;
        v15 = v12;
        v16 = [(CBClassicPeer *)self name];
        v17 = [(CBClassicPeer *)self aacpCapabilityBits];
        *buf = 136316930;
        v21 = "[CBClassicPeer isAACPCapabilityBit:]";
        v22 = 2112;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v26 = 1024;
        v27 = a3;
        v28 = 1024;
        v29 = a3 & 7;
        v30 = 1024;
        v31 = a3 >> 3;
        v32 = 1024;
        v33 = v19;
        v34 = 1024;
        v35 = v14;
        _os_log_debug_impl(&dword_1C0AC1000, v15, OS_LOG_TYPE_DEBUG, "%s - “%@” - aacpCapabilityBits=%@ bit #%d is bit %d of byte %d (%2X) bitIsOn:%d", buf, 0x3Eu);
      }

      LOBYTE(v5) = v11;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)openRFCOMMChannel:(unsigned __int8)a3 options:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v4;
  v8 = v6;
  if (v7)
  {
    v9 = MEMORY[0x1E695DF90];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    v11 = MEMORY[0x1E695E0F8];
    if (v8)
    {
      v11 = v8;
    }

    v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgRFCOMMChannelID", v11, @"kCBMsgArgOptions", 0}];
    [(CBClassicPeer *)self sendMsg:59 args:v12];

LABEL_5:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_5;
  }

  [CBClassicPeer openRFCOMMChannel:options:];
}

- (BOOL)isServiceSupported:(id)a3
{
  v3 = [(CBClassicPeer *)self service:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgPSM"];
    v6 = v5 != 0;

    return v6;
  }

  else
  {

    return 0;
  }
}

- (void)closeL2CAPChannel:(unsigned __int16)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF90];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    v5 = [v4 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgPSM", 0}];
    [(CBClassicPeer *)self sendMsg:30 args:v5];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer closeL2CAPChannel:];
    }
  }
}

- (void)closeRFCOMMChannel:(unsigned __int8)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF90];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    v5 = [v4 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgRFCOMMChannelID", 0}];
    [(CBClassicPeer *)self sendMsg:60 args:v5];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer openRFCOMMChannel:options:];
    }
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CBClassicPeer *)a2 setName:?];
  }

  v6 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:v8];

  v9 = MEMORY[0x1E695DF90];
  v10 = [(CBPeer *)self identifier];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgDeviceUUID", v12, @"kCBMsgArgName", 0}];
  [(CBClassicPeer *)self sendMsg:48 args:v11];
}

- (BOOL)isRFCOMMServiceSupported:(id)a3
{
  v3 = [(CBClassicPeer *)self service:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
    v6 = v5 != 0;

    return v6;
  }

  else
  {

    return 0;
  }
}

- (void)sendMsg:requiresConnected:args:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: %@ can only accept commands while in the connected state", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sendMsg:requiresConnected:args:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "WARNING: %@ is not a valid peer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleMsg:args:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handlePeerUpdated:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v7 = 136315650;
  v8 = "[CBClassicPeer handlePeerUpdated:]";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1C0AC1000, a3, OS_LOG_TYPE_DEBUG, "%s - Received capability bits for “%@”: %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelOpened:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "Failed to open L2CAP channel: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleL2CAPChannelClosed:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)channelWithPSM:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)channelWithID:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)getConnectedServices
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2048;
  v9 = [a2 internalState];
  _os_log_error_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_ERROR, "Peer: %@ is not connected %ld", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)openRFCOMMChannel:options:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: %@ Invalid RFCOMM CID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)closeL2CAPChannel:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1C0AC1000, v0, v1, "API MISUSE: %@ Invalid L2CAP PSM", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBClassicPeer.m" lineNumber:1210 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

@end