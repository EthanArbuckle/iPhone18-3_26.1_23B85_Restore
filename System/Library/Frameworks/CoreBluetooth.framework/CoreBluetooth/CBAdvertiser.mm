@interface CBAdvertiser
- (BOOL)updateWithCBAdvertiser:(id)advertiser;
- (CBAdvertiser)init;
- (CBAdvertiser)initWithXPCObject:(id)object error:(id *)error;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed;
- (void)_xpcReceivedMessage:(id)message;
- (void)_xpcReceivedPowerStateChanged:(id)changed;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)setAdvertiseRate:(int)rate;
- (void)setAirdropConfigData:(unsigned __int8)data;
- (void)setAirdropFlags:(unsigned __int8)flags;
- (void)setAirdropTempAuthTagData:(id)data;
- (void)setAirdropVersion:(unsigned __int8)version;
- (void)setAirdrophash1:(unsigned __int16)airdrophash1;
- (void)setAirdrophash2:(unsigned __int16)airdrophash2;
- (void)setAirdrophash3:(unsigned __int16)airdrophash3;
- (void)setAirdrophash4:(unsigned __int16)airdrophash4;
- (void)setAirplaySourceFlags:(unsigned __int8)flags;
- (void)setAirplaySourceUWBConfigData:(id)data;
- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed;
- (void)setAirplayTargetFlags:(unsigned __int8)flags;
- (void)setAirplayTargetIPv4:(unsigned int)pv4;
- (void)setAirplayTargetPort:(unsigned __int16)port;
- (void)setDsActionFlags:(unsigned __int8)flags;
- (void)setDsActionMeasuredPower:(char)power;
- (void)setDsActionTieBreaker:(unsigned __int8)breaker;
- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence;
- (void)setDsInfoVehicleState:(unsigned __int8)state;
- (void)setEpaTxPower:(BOOL)power;
- (void)setFidoPayloadData:(id)data;
- (void)setHeySiriConfidence:(unsigned __int8)confidence;
- (void)setHeySiriDeviceClass:(unsigned __int16)class;
- (void)setHeySiriPerceptualHash:(unsigned __int16)hash;
- (void)setHeySiriProductType:(unsigned __int8)type;
- (void)setHeySiriRandom:(unsigned __int8)random;
- (void)setHeySiriSNR:(unsigned __int8)r;
- (void)setLabel:(id)label;
- (void)setModel:(unsigned __int8)model;
- (void)setNearbyActionColorCode:(unsigned __int8)code;
- (void)setNearbyActionExtraData:(id)data;
- (void)setNearbyActionNWPrecisionFindingStatus:(unsigned __int8)status;
- (void)setNearbyActionNoWakeAuthTagData:(id)data;
- (void)setNearbyActionNoWakeConfigData:(id)data;
- (void)setNearbyActionNoWakeType:(unsigned __int8)type;
- (void)setNearbyActionTargetData:(id)data;
- (void)setNearbyInfoFlags:(unsigned int)flags;
- (void)setNearbyInfoStatusProgress:(double)progress;
- (void)setNearbyInfoStatusTime:(unsigned __int8)time;
- (void)setNearbyInfoStatusType:(unsigned __int8)type;
- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags;
- (void)setNearbyInfoV2Flags:(unsigned __int8)flags;
- (void)setNearbyInfoV2InvitationCounter:(unsigned __int8)counter;
- (void)setNearbyInfoV2InvitationTypes:(unsigned __int8)types;
- (void)setNearbyInfoV2NearbyFaceTimeData:(id)data;
- (void)setProximityServicePayload:(id)payload;
- (void)setProximityServiceSubType:(unsigned __int8)type;
- (void)setSafetyAlertsAlertData:(id)data;
- (void)setSafetyAlertsAlertID:(id)d;
- (void)setSafetyAlertsSignature:(id)signature;
- (void)setSafetyAlertsVersion:(unsigned __int8)version;
- (void)setSoftwareUpdateActionType:(unsigned __int8)type;
- (void)setSoftwareUpdateDataArray:(id)array;
- (void)setUseCase:(unsigned int)case;
- (void)setUseCaseClientIDs:(id)ds;
- (void)setWatchSetupData:(id)data;
- (void)setnearbyInfoV2InvitationRouteType:(unsigned __int8)type;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation CBAdvertiser

- (CBAdvertiser)init
{
  v5.receiver = self;
  v5.super_class = CBAdvertiser;
  v2 = [(CBAdvertiser *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBAdvertiser;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = self->_mockID;
  v4 = v3;
  if (v3)
  {
    CBMockRemoveAdvertiser(v3, self);
  }

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v6.receiver = self;
  v6.super_class = CBAdvertiser;
  [(CBAdvertiser *)&v6 dealloc];
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  advertiseRate = self->_advertiseRate;
  xdict = objectCopy;
  if (advertiseRate)
  {
    xpc_dictionary_set_int64(objectCopy, "advR", advertiseRate);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  remoteDevice = self->_remoteDevice;
  CUXPCEncodeObject();
  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  CUXPCEncodeNSArrayOfNSString();
  if (self->_airdropFlags)
  {
    xpc_dictionary_set_uint64(xdict, "adFl", self->_airdropFlags);
  }

  airdropTempAuthTagData = self->_airdropTempAuthTagData;
  if (airdropTempAuthTagData)
  {
    v12 = airdropTempAuthTagData;
    v13 = xdict;
    bytes = [(NSData *)v12 bytes];
    if (bytes)
    {
      v15 = bytes;
    }

    else
    {
      v15 = "";
    }

    v16 = [(NSData *)v12 length];

    xpc_dictionary_set_data(v13, "adTa", v15, v16);
  }

  if (self->_airdropModel)
  {
    xpc_dictionary_set_uint64(xdict, "adMl", self->_airdropModel);
  }

  if (self->_airdropVersion)
  {
    xpc_dictionary_set_uint64(xdict, "adVs", self->_airdropVersion);
  }

  if (self->_airdropHash1)
  {
    xpc_dictionary_set_uint64(xdict, "adH1", self->_airdropHash1);
  }

  if (self->_airdropHash2)
  {
    xpc_dictionary_set_uint64(xdict, "adH2", self->_airdropHash2);
  }

  if (self->_airdropHash3)
  {
    xpc_dictionary_set_uint64(xdict, "adH3", self->_airdropHash3);
  }

  if (self->_airdropHash4)
  {
    xpc_dictionary_set_uint64(xdict, "adH4", self->_airdropHash4);
  }

  if (self->_airdropConfigData)
  {
    xpc_dictionary_set_uint64(xdict, "adCd", self->_airdropConfigData);
  }

  airplaySourceAuthTagData = self->_airplaySourceAuthTagData;
  if (airplaySourceAuthTagData)
  {
    v18 = airplaySourceAuthTagData;
    v19 = xdict;
    bytes2 = [(NSData *)v18 bytes];
    if (bytes2)
    {
      v21 = bytes2;
    }

    else
    {
      v21 = "";
    }

    v22 = [(NSData *)v18 length];

    xpc_dictionary_set_data(v19, "apAT", v21, v22);
  }

  if (self->_airplaySourceFlags)
  {
    xpc_dictionary_set_uint64(xdict, "apSF", self->_airplaySourceFlags);
  }

  airplaySourceUWBConfigData = self->_airplaySourceUWBConfigData;
  if (airplaySourceUWBConfigData)
  {
    v24 = airplaySourceUWBConfigData;
    v25 = xdict;
    bytes3 = [(NSData *)v24 bytes];
    if (bytes3)
    {
      v27 = bytes3;
    }

    else
    {
      v27 = "";
    }

    v28 = [(NSData *)v24 length];

    xpc_dictionary_set_data(v25, "apUW", v27, v28);
  }

  if (self->_airplayTargetConfigSeed)
  {
    xpc_dictionary_set_uint64(xdict, "apTC", self->_airplayTargetConfigSeed);
  }

  if (self->_airplayTargetFlags)
  {
    xpc_dictionary_set_uint64(xdict, "apTF", self->_airplayTargetFlags);
  }

  airplayTargetIPv4 = self->_airplayTargetIPv4;
  if (airplayTargetIPv4)
  {
    xpc_dictionary_set_uint64(xdict, "apTI", airplayTargetIPv4);
  }

  if (self->_airplayTargetPort)
  {
    xpc_dictionary_set_uint64(xdict, "apTP", self->_airplayTargetPort);
  }

  if (self->_dsActionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "dsAF", self->_dsActionFlags);
  }

  if (self->_dsActionMeasuredPower)
  {
    xpc_dictionary_set_int64(xdict, "dsAP", self->_dsActionMeasuredPower);
  }

  if (self->_dsActionTieBreaker)
  {
    xpc_dictionary_set_uint64(xdict, "dsAT", self->_dsActionTieBreaker);
  }

  if (self->_dsInfoVehicleConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "dsVC", self->_dsInfoVehicleConfidence);
  }

  if (self->_dsInfoVehicleState)
  {
    xpc_dictionary_set_uint64(xdict, "dsVS", self->_dsInfoVehicleState);
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    xpc_dictionary_set_BOOL(xdict, "naEE", 1);
  }

  fidoPayloadData = self->_fidoPayloadData;
  if (fidoPayloadData)
  {
    v31 = fidoPayloadData;
    v32 = xdict;
    bytes4 = [(NSData *)v31 bytes];
    if (bytes4)
    {
      v34 = bytes4;
    }

    else
    {
      v34 = "";
    }

    v35 = [(NSData *)v31 length];

    xpc_dictionary_set_data(v32, "fdPD", v34, v35);
  }

  if (self->_heySiriConfidence)
  {
    xpc_dictionary_set_uint64(xdict, "hsCf", self->_heySiriConfidence);
  }

  if (self->_heySiriDeviceClass)
  {
    xpc_dictionary_set_uint64(xdict, "hsDC", self->_heySiriDeviceClass);
  }

  if (self->_heySiriPerceptualHash)
  {
    xpc_dictionary_set_uint64(xdict, "hsPH", self->_heySiriPerceptualHash);
  }

  if (self->_heySiriProductType)
  {
    xpc_dictionary_set_uint64(xdict, "hsPT", self->_heySiriProductType);
  }

  if (self->_heySiriRandom)
  {
    xpc_dictionary_set_uint64(xdict, "hsRn", self->_heySiriRandom);
  }

  if (self->_heySiriSNR)
  {
    xpc_dictionary_set_uint64(xdict, "hsSN", self->_heySiriSNR);
  }

  nearbyActionAuthTagData = self->_nearbyActionAuthTagData;
  if (nearbyActionAuthTagData)
  {
    v37 = nearbyActionAuthTagData;
    v38 = xdict;
    bytes5 = [(NSData *)v37 bytes];
    if (bytes5)
    {
      v40 = bytes5;
    }

    else
    {
      v40 = "";
    }

    v41 = [(NSData *)v37 length];

    xpc_dictionary_set_data(v38, "nbAT", v40, v41);
  }

  if (self->_nearbyActionColorCode)
  {
    xpc_dictionary_set_uint64(xdict, "naCC", self->_nearbyActionColorCode);
  }

  nearbyActionExtraData = self->_nearbyActionExtraData;
  if (nearbyActionExtraData)
  {
    v43 = nearbyActionExtraData;
    v44 = xdict;
    bytes6 = [(NSData *)v43 bytes];
    if (bytes6)
    {
      v46 = bytes6;
    }

    else
    {
      v46 = "";
    }

    v47 = [(NSData *)v43 length];

    xpc_dictionary_set_data(v44, "naED", v46, v47);
  }

  nearbyActionFlags = self->_nearbyActionFlags;
  if (nearbyActionFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nbAF", nearbyActionFlags);
  }

  nearbyActionTargetData = self->_nearbyActionTargetData;
  if (nearbyActionTargetData)
  {
    v50 = nearbyActionTargetData;
    v51 = xdict;
    bytes7 = [(NSData *)v50 bytes];
    if (bytes7)
    {
      v53 = bytes7;
    }

    else
    {
      v53 = "";
    }

    v54 = [(NSData *)v50 length];

    xpc_dictionary_set_data(v51, "nbTg", v53, v54);
  }

  if (self->_nearbyActionType)
  {
    xpc_dictionary_set_uint64(xdict, "nbAc", self->_nearbyActionType);
  }

  nearbyActionV2Flags = self->_nearbyActionV2Flags;
  if (nearbyActionV2Flags)
  {
    xpc_dictionary_set_uint64(xdict, "n2AF", nearbyActionV2Flags);
  }

  nearbyActionV2TargetData = self->_nearbyActionV2TargetData;
  if (nearbyActionV2TargetData)
  {
    v57 = nearbyActionV2TargetData;
    v58 = xdict;
    bytes8 = [(NSData *)v57 bytes];
    if (bytes8)
    {
      v60 = bytes8;
    }

    else
    {
      v60 = "";
    }

    v61 = [(NSData *)v57 length];

    xpc_dictionary_set_data(v58, "n2Tg", v60, v61);
  }

  if (self->_nearbyActionV2Type)
  {
    xpc_dictionary_set_uint64(xdict, "n2Ac", self->_nearbyActionV2Type);
  }

  nearbyInfoFlags = self->_nearbyInfoFlags;
  if (nearbyInfoFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nbIF", nearbyInfoFlags);
  }

  nearbyInfoStatusProgress = self->_nearbyInfoStatusProgress;
  if (nearbyInfoStatusProgress != 0.0)
  {
    xpc_dictionary_set_double(xdict, "nsPr", nearbyInfoStatusProgress);
  }

  if (self->_nearbyInfoStatusTime)
  {
    xpc_dictionary_set_uint64(xdict, "nsTi", self->_nearbyInfoStatusTime);
  }

  if (self->_nearbyInfoStatusType)
  {
    xpc_dictionary_set_uint64(xdict, "nsTy", self->_nearbyInfoStatusType);
  }

  if (self->_nearbyInfoV2DecryptedFlags)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Fe", self->_nearbyInfoV2DecryptedFlags);
  }

  if (self->_nearbyInfoV2Flags)
  {
    xpc_dictionary_set_uint64(xdict, "nb2F", self->_nearbyInfoV2Flags);
  }

  nearbyInfoV2AuthTagData = self->_nearbyInfoV2AuthTagData;
  if (nearbyInfoV2AuthTagData)
  {
    v65 = nearbyInfoV2AuthTagData;
    v66 = xdict;
    bytes9 = [(NSData *)v65 bytes];
    if (bytes9)
    {
      v68 = bytes9;
    }

    else
    {
      v68 = "";
    }

    v69 = [(NSData *)v65 length];

    xpc_dictionary_set_data(v66, "nb2A", v68, v69);
  }

  nearbyInfoV2AuthIntegrityTagData = self->_nearbyInfoV2AuthIntegrityTagData;
  if (nearbyInfoV2AuthIntegrityTagData)
  {
    v71 = nearbyInfoV2AuthIntegrityTagData;
    v72 = xdict;
    bytes10 = [(NSData *)v71 bytes];
    if (bytes10)
    {
      v74 = bytes10;
    }

    else
    {
      v74 = "";
    }

    v75 = [(NSData *)v71 length];

    xpc_dictionary_set_data(v72, "nb2Ai", v74, v75);
  }

  if (self->_nearbyInfoV2InvitationCounter)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ic", self->_nearbyInfoV2InvitationCounter);
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    xpc_dictionary_set_uint64(xdict, "nb2It", self->_nearbyInfoV2InvitationTypes);
  }

  if (self->_nearbyInfoV2InvitationRouteType)
  {
    xpc_dictionary_set_uint64(xdict, "nb2Ir", self->_nearbyInfoV2InvitationRouteType);
  }

  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  if (nearbyInfoV2NearbyFaceTimeData)
  {
    v77 = nearbyInfoV2NearbyFaceTimeData;
    v78 = xdict;
    bytes11 = [(NSData *)v77 bytes];
    if (bytes11)
    {
      v80 = bytes11;
    }

    else
    {
      v80 = "";
    }

    v81 = [(NSData *)v77 length];

    xpc_dictionary_set_data(v78, "nb2FT", v80, v81);
  }

  proximityServicePayload = self->_proximityServicePayload;
  if (proximityServicePayload)
  {
    v83 = proximityServicePayload;
    v84 = xdict;
    bytes12 = [(NSData *)v83 bytes];
    if (bytes12)
    {
      v86 = bytes12;
    }

    else
    {
      v86 = "";
    }

    v87 = [(NSData *)v83 length];

    xpc_dictionary_set_data(v84, "pxSP", v86, v87);
  }

  if (self->_proximityServiceSubType)
  {
    xpc_dictionary_set_uint64(xdict, "pxSS", self->_proximityServiceSubType);
  }

  safetyAlertsAlertData = self->_safetyAlertsAlertData;
  if (safetyAlertsAlertData)
  {
    v89 = safetyAlertsAlertData;
    v90 = xdict;
    bytes13 = [(NSData *)v89 bytes];
    if (bytes13)
    {
      v92 = bytes13;
    }

    else
    {
      v92 = "";
    }

    v93 = [(NSData *)v89 length];

    xpc_dictionary_set_data(v90, "saAd", v92, v93);
  }

  safetyAlertsAlertID = self->_safetyAlertsAlertID;
  if (safetyAlertsAlertID)
  {
    v95 = safetyAlertsAlertID;
    v96 = xdict;
    bytes14 = [(NSData *)v95 bytes];
    if (bytes14)
    {
      v98 = bytes14;
    }

    else
    {
      v98 = "";
    }

    v99 = [(NSData *)v95 length];

    xpc_dictionary_set_data(v96, "saAi", v98, v99);
  }

  safetyAlertsSignature = self->_safetyAlertsSignature;
  if (safetyAlertsSignature)
  {
    v101 = safetyAlertsSignature;
    v102 = xdict;
    bytes15 = [(NSData *)v101 bytes];
    if (bytes15)
    {
      v104 = bytes15;
    }

    else
    {
      v104 = "";
    }

    v105 = [(NSData *)v101 length];

    xpc_dictionary_set_data(v102, "saSg", v104, v105);
  }

  if (self->_safetyAlertsVersion)
  {
    xpc_dictionary_set_uint64(xdict, "saVs", self->_safetyAlertsVersion);
  }

  if (self->_softwareUpdateActionType)
  {
    xpc_dictionary_set_uint64(xdict, "suA", self->_softwareUpdateActionType);
  }

  softwareUpdateDataArray = self->_softwareUpdateDataArray;
  CUXPCEncodeNSArrayOfNSData();
  watchSetupData = self->_watchSetupData;
  if (watchSetupData)
  {
    v108 = watchSetupData;
    v109 = xdict;
    bytes16 = [(NSData *)v108 bytes];
    if (bytes16)
    {
      v111 = bytes16;
    }

    else
    {
      v111 = "";
    }

    v112 = [(NSData *)v108 length];

    xpc_dictionary_set_data(v109, "wsDa", v111, v112);
  }

  if (self->_nearbyActionNoWakeType)
  {
    xpc_dictionary_set_uint64(xdict, "nawT", self->_nearbyActionNoWakeType);
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    xpc_dictionary_set_uint64(xdict, "nawS", self->_nearbyActionNWPrecisionFindingStatus);
  }

  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  if (nearbyActionNoWakeAuthTagData)
  {
    v114 = nearbyActionNoWakeAuthTagData;
    v115 = xdict;
    bytes17 = [(NSData *)v114 bytes];
    if (bytes17)
    {
      v117 = bytes17;
    }

    else
    {
      v117 = "";
    }

    v118 = [(NSData *)v114 length];

    xpc_dictionary_set_data(v115, "nawA", v117, v118);
  }

  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  v120 = xdict;
  if (nearbyActionNoWakeConfigData)
  {
    v121 = nearbyActionNoWakeConfigData;
    v122 = xdict;
    bytes18 = [(NSData *)v121 bytes];
    if (bytes18)
    {
      v124 = bytes18;
    }

    else
    {
      v124 = "";
    }

    v125 = [(NSData *)v121 length];

    xpc_dictionary_set_data(v122, "nawC", v124, v125);
    v120 = xdict;
  }

  MEMORY[0x1EEE66BB8](nearbyActionNoWakeConfigData, v120);
}

- (id)descriptionWithLevel:(int)level
{
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = self->_label;
  if (v5)
  {
    NSAppendPrintF_safe();
    v6 = v4;

    v4 = v6;
  }

  clientID = self->_clientID;
  NSAppendPrintF_safe();
  v7 = v4;

  if (self->_direct)
  {
    NSAppendPrintF_safe();
    v8 = v7;

    v7 = v8;
  }

  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    if (advertiseRate <= 39)
    {
      if (advertiseRate > 19)
      {
        if (advertiseRate == 20)
        {
          v10 = "350 ms";
          goto LABEL_26;
        }
      }

      else
      {
        if (advertiseRate == 10)
        {
          v10 = "2 seconds";
          goto LABEL_26;
        }

        if (advertiseRate == 15)
        {
          v10 = "1022.5 ms";
          goto LABEL_26;
        }
      }
    }

    else if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v10 = "181.25 ms";
        goto LABEL_26;
      }

      if (advertiseRate == 42)
      {
        v10 = "120 ms";
        goto LABEL_26;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v10 = "60 ms";
          goto LABEL_26;
        case '2':
          v10 = "30 ms";
          goto LABEL_26;
        case '<':
          v10 = "20 ms";
LABEL_26:
          clientID = v10;
          NSAppendPrintF_safe();
          v11 = v7;

          v7 = v11;
          goto LABEL_27;
      }
    }

    v10 = "270 ms";
    goto LABEL_26;
  }

LABEL_27:
  v12 = self->_advertisingAddressDataConnectable;
  if (v12)
  {
    clientID = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    v13 = v7;

    v7 = v13;
  }

  v14 = self->_advertisingAddressDataNonConnectable;
  if (v14)
  {
    clientID = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    v15 = v7;

    v7 = v15;
  }

  v16 = self->_advertisingAddressDataNonConnectableSecondary;
  if (v16)
  {
    clientID = CUPrintNSDataAddress();
    NSAppendPrintF_safe();
    v17 = v7;

    v7 = v17;
  }

  v18 = self->_remoteDevice;
  v19 = v18;
  if (v18)
  {
    clientID = v18;
    NSAppendPrintF_safe();
    v20 = v7;

    v7 = v20;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    clientID = CBUseCaseToString(useCase);
    NSAppendPrintF_safe();
    v22 = v7;

    v7 = v22;
  }

  v23 = self->_useCaseClientIDs;
  if (v23)
  {
    clientID = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v24 = v7;

    v7 = v24;
  }

  if (self->_airdropFlags)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v25 = v7;

    v7 = v25;
  }

  v26 = self->_airdropTempAuthTagData;
  if (v26)
  {
    clientID = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v27 = v7;

    v7 = v27;
  }

  if (self->_airdropModel)
  {
    clientID = self->_airdropModel;
    NSAppendPrintF_safe();
    v28 = v7;

    v7 = v28;
  }

  if (self->_airdropVersion)
  {
    clientID = self->_airdropVersion;
    NSAppendPrintF_safe();
    v29 = v7;

    v7 = v29;
  }

  if (self->_airdropHash1)
  {
    clientID = self->_airdropHash1;
    NSAppendPrintF_safe();
    v30 = v7;

    v7 = v30;
  }

  if (self->_airdropHash2)
  {
    clientID = self->_airdropHash2;
    NSAppendPrintF_safe();
    v31 = v7;

    v7 = v31;
  }

  if (self->_airdropHash3)
  {
    clientID = self->_airdropHash3;
    NSAppendPrintF_safe();
    v32 = v7;

    v7 = v32;
  }

  if (self->_airdropHash4)
  {
    clientID = self->_airdropHash4;
    NSAppendPrintF_safe();
    v33 = v7;

    v7 = v33;
  }

  if (self->_airdropConfigData)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v34 = v7;

    v7 = v34;
  }

  v35 = self->_airplaySourceAuthTagData;
  if (v35)
  {
    clientID = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v36 = v7;

    v7 = v36;
  }

  if (self->_airplaySourceFlags)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v37 = v7;

    v7 = v37;
  }

  v38 = self->_airplaySourceUWBConfigData;
  if (v38)
  {
    clientID = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v39 = v7;

    v7 = v39;
  }

  if (self->_airplayTargetConfigSeed)
  {
    clientID = self->_airplayTargetConfigSeed;
    NSAppendPrintF_safe();
    v40 = v7;

    v7 = v40;
  }

  if (self->_airplayTargetFlags)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v41 = v7;

    v7 = v41;
  }

  if (self->_airplayTargetIPv4)
  {
    clientID = CUPrintAddress();
    NSAppendPrintF_safe();
    v42 = v7;

    v7 = v42;
  }

  if (self->_airplayTargetPort)
  {
    clientID = self->_airplayTargetPort;
    NSAppendPrintF_safe();
    v43 = v7;

    v7 = v43;
  }

  if (self->_dsActionFlags)
  {
    clientID = CUPrintFlags32();
    NSAppendPrintF_safe();
    v44 = v7;

    v7 = v44;
  }

  if (self->_dsActionMeasuredPower)
  {
    clientID = self->_dsActionMeasuredPower;
    NSAppendPrintF_safe();
    v45 = v7;

    v7 = v45;
  }

  if (self->_dsActionTieBreaker)
  {
    clientID = self->_dsActionTieBreaker;
    NSAppendPrintF_safe();
    v46 = v7;

    v7 = v46;
  }

  if (self->_dsInfoVehicleConfidence)
  {
    [(CBAdvertiser *)self dsInfoVehicleConfidence];
    NSAppendPrintF_safe();
    v47 = v7;

    v7 = v47;
  }

  if (self->_dsInfoVehicleState)
  {
    dsInfoVehicleState = [(CBAdvertiser *)self dsInfoVehicleState];
    if (dsInfoVehicleState <= 2)
    {
      v49 = off_1E811DDD8[dsInfoVehicleState];
    }

    NSAppendPrintF_safe();
    v50 = v7;

    v7 = v50;
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    NSAppendPrintF_safe();
    v51 = v7;

    v7 = v51;
  }

  v52 = self->_fidoPayloadData;
  if (v52)
  {
    v127 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v53 = v7;

    v7 = v53;
  }

  if (self->_heySiriConfidence)
  {
    heySiriConfidence = self->_heySiriConfidence;
    NSAppendPrintF_safe();
    v54 = v7;

    v7 = v54;
  }

  heySiriDeviceClass = self->_heySiriDeviceClass;
  if (self->_heySiriDeviceClass)
  {
    if (heySiriDeviceClass <= 0xA)
    {
      v56 = off_1E811D640[heySiriDeviceClass - 1];
    }

    NSAppendPrintF_safe();
    v57 = v7;

    v7 = v57;
  }

  if (self->_heySiriPerceptualHash)
  {
    heySiriPerceptualHash = self->_heySiriPerceptualHash;
    NSAppendPrintF_safe();
    v58 = v7;

    v7 = v58;
  }

  heySiriProductType = self->_heySiriProductType;
  if (self->_heySiriProductType)
  {
    if (heySiriProductType <= 4)
    {
      v60 = off_1E811D690[heySiriProductType - 1];
    }

    NSAppendPrintF_safe();
    v61 = v7;

    v7 = v61;
  }

  if (self->_heySiriRandom)
  {
    heySiriRandom = self->_heySiriRandom;
    NSAppendPrintF_safe();
    v62 = v7;

    v7 = v62;
  }

  if (self->_heySiriSNR)
  {
    heySiriSNR = self->_heySiriSNR;
    NSAppendPrintF_safe();
    v63 = v7;

    v7 = v63;
  }

  v64 = self->_nearbyActionAuthTagData;
  if (v64)
  {
    v132 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v65 = v7;

    v7 = v65;
  }

  if (self->_nearbyActionColorCode)
  {
    nearbyActionColorCode = self->_nearbyActionColorCode;
    NSAppendPrintF_safe();
    v66 = v7;

    v7 = v66;
  }

  v67 = self->_nearbyActionExtraData;
  if (v67)
  {
    v134 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v68 = v7;

    v7 = v68;
  }

  if (self->_nearbyActionFlags)
  {
    v135 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v69 = v7;

    v7 = v69;
  }

  nearbyActionType = self->_nearbyActionType;
  if (self->_nearbyActionType)
  {
    if (nearbyActionType <= 0x5F)
    {
      v71 = off_1E811D6B0[nearbyActionType - 1];
    }

    NSAppendPrintF_safe();
    v72 = v7;

    v7 = v72;
  }

  v73 = self->_nearbyActionTargetData;
  if (v73)
  {
    v136 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v74 = v7;

    v7 = v74;
  }

  if (self->_nearbyActionV2Flags)
  {
    v137 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v75 = v7;

    v7 = v75;
  }

  v76 = self->_nearbyActionV2TargetData;
  if (v76)
  {
    v138 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v77 = v7;

    v7 = v77;
  }

  nearbyActionV2Type = self->_nearbyActionV2Type;
  if (self->_nearbyActionV2Type)
  {
    if (nearbyActionV2Type <= 0x5F)
    {
      v79 = off_1E811D6B0[nearbyActionV2Type - 1];
    }

    NSAppendPrintF_safe();
    v80 = v7;

    v7 = v80;
  }

  if (self->_nearbyInfoFlags)
  {
    v139 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v81 = v7;

    v7 = v81;
  }

  if (self->_nearbyInfoStatusProgress != 0.0)
  {
    NSAppendPrintF_safe();
    v82 = v7;

    v7 = v82;
  }

  nearbyInfoStatusTime = self->_nearbyInfoStatusTime;
  if (self->_nearbyInfoStatusTime)
  {
    if (nearbyInfoStatusTime <= 0xE)
    {
      v84 = off_1E811D9A8[nearbyInfoStatusTime - 1];
    }

    NSAppendPrintF_safe();
    v85 = v7;

    v7 = v85;
  }

  nearbyInfoStatusType = self->_nearbyInfoStatusType;
  if (self->_nearbyInfoStatusType)
  {
    if (nearbyInfoStatusType <= 0xD)
    {
      v87 = off_1E811DA18[nearbyInfoStatusType - 1];
    }

    NSAppendPrintF_safe();
    v88 = v7;

    v7 = v88;
  }

  if (self->_nearbyInfoV2Flags)
  {
    v140 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v89 = v7;

    v7 = v89;
  }

  if (self->_nearbyInfoV2DecryptedFlags)
  {
    v141 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v90 = v7;

    v7 = v90;
  }

  v91 = self->_nearbyInfoV2AuthTagData;
  if (v91)
  {
    v142 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v92 = v7;

    v7 = v92;
  }

  v93 = self->_nearbyInfoV2AuthIntegrityTagData;
  if (v93)
  {
    v143 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v94 = v7;

    v7 = v94;
  }

  if (self->_nearbyInfoV2InvitationCounter)
  {
    nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
    NSAppendPrintF_safe();
    v95 = v7;

    v7 = v95;
  }

  if (self->_nearbyInfoV2InvitationTypes)
  {
    v145 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v96 = v7;

    v7 = v96;
  }

  nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
  if (self->_nearbyInfoV2InvitationRouteType)
  {
    if (nearbyInfoV2InvitationRouteType <= 0xB)
    {
      v98 = off_1E811DA80[nearbyInfoV2InvitationRouteType - 1];
    }

    NSAppendPrintF_safe();
    v99 = v7;

    v7 = v99;
  }

  v100 = self->_nearbyInfoV2NearbyFaceTimeData;
  if (v100)
  {
    v146 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v101 = v7;

    v7 = v101;
  }

  if (self->_nearbyActionNoWakeType)
  {
    self->_nearbyActionNoWakeType;
    NSAppendPrintF_safe();
    v102 = v7;

    v7 = v102;
  }

  v103 = self->_proximityServicePayload;
  if (v103)
  {
    v157 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v104 = v7;

    v7 = v104;
  }

  if (self->_proximityServiceSubType)
  {
    proximityServiceSubType = self->_proximityServiceSubType;
    NSAppendPrintF_safe();
    v105 = v7;

    v7 = v105;
  }

  v106 = self->_safetyAlertsAlertData;
  if (v106)
  {
    v147 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v107 = v7;

    v7 = v107;
  }

  v108 = self->_safetyAlertsAlertID;
  if (v108)
  {
    v148 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v109 = v7;

    v7 = v109;
  }

  v110 = self->_safetyAlertsSignature;
  if (v110)
  {
    v149 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v111 = v7;

    v7 = v111;
  }

  if (self->_safetyAlertsVersion)
  {
    self->_safetyAlertsVersion;
    NSAppendPrintF_safe();
    v112 = v7;

    v7 = v112;
  }

  if (self->_softwareUpdateActionType)
  {
    softwareUpdateActionType = self->_softwareUpdateActionType;
    NSAppendPrintF_safe();
    v113 = v7;

    v7 = v113;
  }

  v114 = self->_softwareUpdateDataArray;
  if (v114)
  {
    v151 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe();
    v115 = v7;

    v7 = v115;
  }

  if (self->_softwareUpdateDataArrayCountMaximumLimit)
  {
    softwareUpdateDataArrayCountMaximumLimit = self->_softwareUpdateDataArrayCountMaximumLimit;
    NSAppendPrintF_safe();
    v116 = v7;

    v7 = v116;
  }

  v117 = self->_watchSetupData;
  if (v117)
  {
    v153 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v118 = v7;

    v7 = v118;
  }

  if (self->_nearbyActionNWPrecisionFindingStatus)
  {
    v154 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v119 = v7;

    v7 = v119;
  }

  v120 = self->_nearbyActionNoWakeAuthTagData;
  if (v120)
  {
    v155 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v121 = v7;

    v7 = v121;
  }

  v122 = self->_nearbyActionNoWakeConfigData;
  if (v122)
  {
    v156 = CUPrintNSDataHex();
    NSAppendPrintF_safe();
    v123 = v7;

    v7 = v123;
  }

  v124 = v7;
  return v7;
}

- (void)setAdvertiseRate:(int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E811D508;
  rateCopy = rate;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setAdvertiseRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 100);
  if (v1 != v3)
  {
    *(v2 + 100) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropVersion:(unsigned __int8)version
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CBAdvertiser_setAirdropVersion___block_invoke;
  v3[3] = &unk_1E811D530;
  versionCopy = version;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __34__CBAdvertiser_setAirdropVersion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 51);
  if (v1 != v3)
  {
    *(v2 + 51) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdropFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdropFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 49);
  if (v1 != v3)
  {
    *(v2 + 49) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropTempAuthTagData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CBAdvertiser_setAirdropTempAuthTagData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __42__CBAdvertiser_setAirdropTempAuthTagData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 264);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 264);
    *(v10 + 264) = v11;
  }

  return v5;
}

- (void)setModel:(unsigned __int8)model
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __25__CBAdvertiser_setModel___block_invoke;
  v3[3] = &unk_1E811D530;
  modelCopy = model;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __25__CBAdvertiser_setModel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 50);
  if (v1 != v3)
  {
    *(v2 + 50) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash1:(unsigned __int16)airdrophash1
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash1___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash1Copy = airdrophash1;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash1___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 82);
  if (v1 != v3)
  {
    *(v2 + 82) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash2:(unsigned __int16)airdrophash2
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash2___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash2Copy = airdrophash2;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash2___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 84);
  if (v1 != v3)
  {
    *(v2 + 84) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash3:(unsigned __int16)airdrophash3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash3___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash3Copy = airdrophash3;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash3___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 86);
  if (v1 != v3)
  {
    *(v2 + 86) = v1;
  }

  return v1 != v3;
}

- (void)setAirdrophash4:(unsigned __int16)airdrophash4
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBAdvertiser_setAirdrophash4___block_invoke;
  v3[3] = &unk_1E811D580;
  airdrophash4Copy = airdrophash4;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __32__CBAdvertiser_setAirdrophash4___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
  }

  return v1 != v3;
}

- (void)setAirdropConfigData:(unsigned __int8)data
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirdropConfigData___block_invoke;
  v3[3] = &unk_1E811D530;
  dataCopy = data;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirdropConfigData___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 52);
  if (v1 != v3)
  {
    *(v2 + 52) = v1;
  }

  return v1 != v3;
}

- (void)setAirplaySourceFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setAirplaySourceFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setAirplaySourceFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 53);
  if (v1 != v3)
  {
    *(v2 + 53) = v1;
  }

  return v1 != v3;
}

- (void)setAirplaySourceUWBConfigData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CBAdvertiser_setAirplaySourceUWBConfigData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __46__CBAdvertiser_setAirplaySourceUWBConfigData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 272);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 272);
    *(v10 + 272) = v11;
  }

  return v5;
}

- (void)setAirplayTargetConfigSeed:(unsigned __int8)seed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setAirplayTargetConfigSeed___block_invoke;
  v3[3] = &unk_1E811D530;
  seedCopy = seed;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setAirplayTargetConfigSeed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 54);
  if (v1 != v3)
  {
    *(v2 + 54) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setAirplayTargetFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setAirplayTargetFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 55);
  if (v1 != v3)
  {
    *(v2 + 55) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetIPv4:(unsigned int)pv4
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirplayTargetIPv4___block_invoke;
  v3[3] = &unk_1E811D508;
  pv4Copy = pv4;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirplayTargetIPv4___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v1 != v3)
  {
    *(v2 + 104) = v1;
  }

  return v1 != v3;
}

- (void)setAirplayTargetPort:(unsigned __int16)port
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setAirplayTargetPort___block_invoke;
  v3[3] = &unk_1E811D580;
  portCopy = port;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setAirplayTargetPort___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 90);
  if (v1 != v3)
  {
    *(v2 + 90) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setDsActionFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setDsActionFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v1 != v3)
  {
    *(v2 + 56) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionMeasuredPower:(char)power
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setDsActionMeasuredPower___block_invoke;
  v3[3] = &unk_1E811D530;
  powerCopy = power;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setDsActionMeasuredPower___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 57);
  if (v1 != v3)
  {
    *(v2 + 57) = v1;
  }

  return v1 != v3;
}

- (void)setDsActionTieBreaker:(unsigned __int8)breaker
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setDsActionTieBreaker___block_invoke;
  v3[3] = &unk_1E811D530;
  breakerCopy = breaker;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setDsActionTieBreaker___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 58);
  if (v1 != v3)
  {
    *(v2 + 58) = v1;
  }

  return v1 != v3;
}

- (void)setDsInfoVehicleConfidence:(unsigned __int8)confidence
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setDsInfoVehicleConfidence___block_invoke;
  v3[3] = &unk_1E811D530;
  confidenceCopy = confidence;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setDsInfoVehicleConfidence___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 59);
  if (v1 != v3)
  {
    *(v2 + 59) = v1;
  }

  return v1 != v3;
}

- (void)setDsInfoVehicleState:(unsigned __int8)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setDsInfoVehicleState___block_invoke;
  v3[3] = &unk_1E811D530;
  stateCopy = state;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setDsInfoVehicleState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 60);
  if (v1 != v3)
  {
    *(v2 + 60) = v1;
  }

  return v1 != v3;
}

- (void)setFidoPayloadData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CBAdvertiser_setFidoPayloadData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __35__CBAdvertiser_setFidoPayloadData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 280);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 280);
    *(v10 + 280) = v11;
  }

  return v5;
}

- (void)setHeySiriConfidence:(unsigned __int8)confidence
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setHeySiriConfidence___block_invoke;
  v3[3] = &unk_1E811D530;
  confidenceCopy = confidence;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setHeySiriConfidence___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 62);
  if (v1 != v3)
  {
    *(v2 + 62) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriDeviceClass:(unsigned __int16)class
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setHeySiriDeviceClass___block_invoke;
  v3[3] = &unk_1E811D580;
  classCopy = class;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setHeySiriDeviceClass___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriPerceptualHash:(unsigned __int16)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setHeySiriPerceptualHash___block_invoke;
  v3[3] = &unk_1E811D580;
  hashCopy = hash;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setHeySiriPerceptualHash___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 94);
  if (v1 != v3)
  {
    *(v2 + 94) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriProductType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__CBAdvertiser_setHeySiriProductType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __38__CBAdvertiser_setHeySiriProductType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 63);
  if (v1 != v3)
  {
    *(v2 + 63) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriRandom:(unsigned __int8)random
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBAdvertiser_setHeySiriRandom___block_invoke;
  v3[3] = &unk_1E811D530;
  randomCopy = random;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBAdvertiser_setHeySiriRandom___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v1 != v3)
  {
    *(v2 + 64) = v1;
  }

  return v1 != v3;
}

- (void)setHeySiriSNR:(unsigned __int8)r
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBAdvertiser_setHeySiriSNR___block_invoke;
  v3[3] = &unk_1E811D530;
  rCopy = r;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBAdvertiser_setHeySiriSNR___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 65);
  if (v1 != v3)
  {
    *(v2 + 65) = v1;
  }

  return v1 != v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)setNearbyActionColorCode:(unsigned __int8)code
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CBAdvertiser_setNearbyActionColorCode___block_invoke;
  v3[3] = &unk_1E811D530;
  codeCopy = code;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __41__CBAdvertiser_setNearbyActionColorCode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 66);
  if (v1 != v3)
  {
    *(v2 + 66) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyActionExtraData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setNearbyActionExtraData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setNearbyActionExtraData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 296);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 296);
    *(v10 + 296) = v11;
  }

  return v5;
}

- (void)setNearbyInfoFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CBAdvertiser_setNearbyInfoFlags___block_invoke;
  v3[3] = &unk_1E811D508;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __35__CBAdvertiser_setNearbyInfoFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 116);
  if (v1 != v3)
  {
    *(v2 + 116) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusProgress:(double)progress
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CBAdvertiser_setNearbyInfoStatusProgress___block_invoke;
  v3[3] = &unk_1E811D5A8;
  *&v3[5] = progress;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __44__CBAdvertiser_setNearbyInfoStatusProgress___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  if (v1 != v3)
  {
    *(v2 + 320) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusTime:(unsigned __int8)time
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CBAdvertiser_setNearbyInfoStatusTime___block_invoke;
  v3[3] = &unk_1E811D530;
  timeCopy = time;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __40__CBAdvertiser_setNearbyInfoStatusTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 69);
  if (v1 != v3)
  {
    *(v2 + 69) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoStatusType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CBAdvertiser_setNearbyInfoStatusType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __40__CBAdvertiser_setNearbyInfoStatusType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 70);
  if (v1 != v3)
  {
    *(v2 + 70) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2DecryptedFlags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__CBAdvertiser_setNearbyInfoV2DecryptedFlags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __46__CBAdvertiser_setNearbyInfoV2DecryptedFlags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v1 != v3)
  {
    *(v2 + 72) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2Flags:(unsigned __int8)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__CBAdvertiser_setNearbyInfoV2Flags___block_invoke;
  v3[3] = &unk_1E811D530;
  flagsCopy = flags;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __37__CBAdvertiser_setNearbyInfoV2Flags___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 71);
  if (v1 != v3)
  {
    *(v2 + 71) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2InvitationCounter:(unsigned __int8)counter
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__CBAdvertiser_setNearbyInfoV2InvitationCounter___block_invoke;
  v3[3] = &unk_1E811D530;
  counterCopy = counter;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __49__CBAdvertiser_setNearbyInfoV2InvitationCounter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 73);
  if (v1 != v3)
  {
    *(v2 + 73) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2InvitationTypes:(unsigned __int8)types
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CBAdvertiser_setNearbyInfoV2InvitationTypes___block_invoke;
  v3[3] = &unk_1E811D530;
  typesCopy = types;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __47__CBAdvertiser_setNearbyInfoV2InvitationTypes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 74);
  if (v1 != v3)
  {
    *(v2 + 74) = v1;
  }

  return v1 != v3;
}

- (void)setnearbyInfoV2InvitationRouteType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CBAdvertiser_setnearbyInfoV2InvitationRouteType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __51__CBAdvertiser_setnearbyInfoV2InvitationRouteType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 75);
  if (v1 != v3)
  {
    *(v2 + 75) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyInfoV2NearbyFaceTimeData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CBAdvertiser_setNearbyInfoV2NearbyFaceTimeData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __50__CBAdvertiser_setNearbyInfoV2NearbyFaceTimeData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 336);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 336);
    *(v10 + 336) = v11;
  }

  return v5;
}

- (void)setNearbyActionTargetData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CBAdvertiser_setNearbyActionTargetData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __42__CBAdvertiser_setNearbyActionTargetData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 304);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 304);
    *(v10 + 304) = v11;
  }

  return v5;
}

- (void)setNearbyActionNoWakeType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CBAdvertiser_setNearbyActionNoWakeType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __42__CBAdvertiser_setNearbyActionNoWakeType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 76);
  if (v1 != v3)
  {
    *(v2 + 76) = v1;
  }

  return v1 != v3;
}

- (void)setProximityServicePayload:(id)payload
{
  v4 = [payload copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBAdvertiser_setProximityServicePayload___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBAdvertiser_setProximityServicePayload___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 360);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 360);
    *(v10 + 360) = v11;
  }

  return v5;
}

- (void)setProximityServiceSubType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBAdvertiser_setProximityServiceSubType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBAdvertiser_setProximityServiceSubType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 78);
  if (v1 != v3)
  {
    *(v2 + 78) = v1;
  }

  return v1 != v3;
}

- (void)setSafetyAlertsAlertData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setSafetyAlertsAlertData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setSafetyAlertsAlertData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 368);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 368);
    *(v10 + 368) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsAlertID:(id)d
{
  dCopy = d;
  v5 = [dCopy copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CBAdvertiser_setSafetyAlertsAlertID___block_invoke;
  v8[3] = &unk_1E811D5D0;
  v9 = v5;
  selfCopy = self;
  v11 = dCopy;
  v6 = dCopy;
  v7 = v5;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v8];
}

BOOL __39__CBAdvertiser_setSafetyAlertsAlertID___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 376);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v10 = a1 + 40;
    v9 = *(a1 + 40);
    v11 = *(v10 + 8);
    v3 = *(v9 + 376);
    *(v9 + 376) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsSignature:(id)signature
{
  v4 = [signature copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBAdvertiser_setSafetyAlertsSignature___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBAdvertiser_setSafetyAlertsSignature___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 384);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 384);
    *(v10 + 384) = v11;
  }

  return v5;
}

- (void)setSafetyAlertsVersion:(unsigned __int8)version
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CBAdvertiser_setSafetyAlertsVersion___block_invoke;
  v3[3] = &unk_1E811D530;
  versionCopy = version;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __39__CBAdvertiser_setSafetyAlertsVersion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 79);
  if (v1 != v3)
  {
    *(v2 + 79) = v1;
  }

  return v1 != v3;
}

- (void)setSoftwareUpdateActionType:(unsigned __int8)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__CBAdvertiser_setSoftwareUpdateActionType___block_invoke;
  v3[3] = &unk_1E811D530;
  typeCopy = type;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __44__CBAdvertiser_setSoftwareUpdateActionType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v1 != v3)
  {
    *(v2 + 80) = v1;
  }

  return v1 != v3;
}

- (void)setSoftwareUpdateDataArray:(id)array
{
  v4 = [array copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBAdvertiser_setSoftwareUpdateDataArray___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBAdvertiser_setSoftwareUpdateDataArray___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 392);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 392);
    *(v10 + 392) = v11;
  }

  return v5;
}

- (void)setUseCase:(unsigned int)case
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__CBAdvertiser_setUseCase___block_invoke;
  v3[3] = &unk_1E811D508;
  caseCopy = case;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __27__CBAdvertiser_setUseCase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v1 != v3)
  {
    *(v2 + 96) = v1;
  }

  return v1 != v3;
}

- (void)setUseCaseClientIDs:(id)ds
{
  v4 = [ds copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CBAdvertiser_setUseCaseClientIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __36__CBAdvertiser_setUseCaseClientIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 240);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 240);
    *(v10 + 240) = v11;
  }

  return v5;
}

- (void)setWatchSetupData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CBAdvertiser_setWatchSetupData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __34__CBAdvertiser_setWatchSetupData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 400);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 400);
    *(v10 + 400) = v11;
  }

  return v5;
}

- (void)setNearbyActionNWPrecisionFindingStatus:(unsigned __int8)status
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CBAdvertiser_setNearbyActionNWPrecisionFindingStatus___block_invoke;
  v3[3] = &unk_1E811D530;
  statusCopy = status;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __56__CBAdvertiser_setNearbyActionNWPrecisionFindingStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 77);
  if (v1 != v3)
  {
    *(v2 + 77) = v1;
  }

  return v1 != v3;
}

- (void)setNearbyActionNoWakeAuthTagData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__CBAdvertiser_setNearbyActionNoWakeAuthTagData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __49__CBAdvertiser_setNearbyActionNoWakeAuthTagData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 344);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 344);
    *(v10 + 344) = v11;
  }

  return v5;
}

- (void)setNearbyActionNoWakeConfigData:(id)data
{
  v4 = [data copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__CBAdvertiser_setNearbyActionNoWakeConfigData___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v6];
}

BOOL __48__CBAdvertiser_setNearbyActionNoWakeConfigData___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 352);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 352);
    *(v10 + 352) = v11;
  }

  return v5;
}

- (void)setEpaTxPower:(BOOL)power
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBAdvertiser_setEpaTxPower___block_invoke;
  v3[3] = &unk_1E811D530;
  powerCopy = power;
  v3[4] = self;
  [(CBAdvertiser *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBAdvertiser_setEpaTxPower___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 61);
  if (v1 != v3)
  {
    *(v2 + 61) = v1;
  }

  return v1 != v3;
}

- (BOOL)updateWithCBAdvertiser:(id)advertiser
{
  advertiserCopy = advertiser;
  advertiseRate = [advertiserCopy advertiseRate];
  advertiseRate = self->_advertiseRate;
  v6 = advertiseRate != advertiseRate;
  if (advertiseRate != advertiseRate)
  {
    v7 = advertiseRate;
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v8 = "Medium";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

          goto LABEL_24;
        }

        if (advertiseRate == 42)
        {
          v8 = "MediumMid";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

          goto LABEL_24;
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v8 = "MediumHigh";
            if (advertiseRate <= 39)
            {
              goto LABEL_24;
            }

            goto LABEL_35;
          case '2':
            v8 = "High";
            if (advertiseRate > 39)
            {
              goto LABEL_35;
            }

            goto LABEL_24;
          case '<':
            v8 = "Max";
            if (advertiseRate <= 39)
            {
              goto LABEL_24;
            }

            goto LABEL_35;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (!advertiseRate)
      {
        v8 = "Default";
        if (advertiseRate <= 39)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }

      if (advertiseRate == 10)
      {
        v8 = "Periodic";
        if (advertiseRate <= 39)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v8 = "PeriodicHigh";
          if (advertiseRate <= 39)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        case 20:
          v8 = "Background";
          if (advertiseRate <= 39)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        case 30:
          v8 = "Low";
          if (advertiseRate > 39)
          {
            goto LABEL_35;
          }

LABEL_24:
          if (advertiseRate <= 14)
          {
            if (!advertiseRate)
            {
              v12 = "Default";
              goto LABEL_60;
            }

            if (advertiseRate == 10)
            {
              v12 = "Periodic";
              goto LABEL_60;
            }
          }

          else
          {
            switch(advertiseRate)
            {
              case 15:
                v12 = "PeriodicHigh";
                goto LABEL_60;
              case 20:
                v12 = "Background";
                goto LABEL_60;
              case 30:
                v12 = "Low";
                goto LABEL_60;
            }
          }

          goto LABEL_59;
      }
    }

    v8 = "?";
    if (advertiseRate <= 39)
    {
      goto LABEL_24;
    }

LABEL_35:
    if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v12 = "Medium";
        goto LABEL_60;
      }

      if (advertiseRate == 42)
      {
        v12 = "MediumMid";
        goto LABEL_60;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v12 = "MediumHigh";
          goto LABEL_60;
        case '2':
          v12 = "High";
          goto LABEL_60;
        case '<':
          v12 = "Max";
          goto LABEL_60;
      }
    }

LABEL_59:
    v12 = "?";
LABEL_60:
    v396 = v8;
    v452 = v12;
    CUAppendF();
    v9 = 0;
    self->_advertiseRate = v7;
    useCase = [advertiserCopy useCase];
    useCase = self->_useCase;
    if (useCase == useCase)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v9 = 0;
  useCase = [advertiserCopy useCase];
  useCase = self->_useCase;
  if (useCase != useCase)
  {
LABEL_61:
    v395 = CBUseCaseToString(useCase);
    v451 = CBUseCaseToString(useCase);
    CUAppendF();
    v13 = v9;

    self->_useCase = useCase;
    v6 = 1;
    v9 = v13;
  }

LABEL_62:
  useCaseClientIDs = [advertiserCopy useCaseClientIDs];
  useCaseClientIDs = self->_useCaseClientIDs;
  v16 = useCaseClientIDs;
  v17 = useCaseClientIDs;
  v527 = v16;
  if (v16 == v17)
  {

    enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
    enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
    if (enableEPAForLEAdvertisement != enableEPAForLEAdvertisement)
    {
      goto LABEL_141;
    }

LABEL_66:
    airdropFlags = [advertiserCopy airdropFlags];
    airdropFlags = self->_airdropFlags;
    if (airdropFlags == airdropFlags)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if ((v16 != 0) == (v17 == 0))
  {

LABEL_140:
    v139 = self->_useCaseClientIDs;
    v140 = CUPrintNSObjectOneLine();
    v468 = CUPrintNSObjectOneLine();
    CUAppendF();
    v141 = v9;

    v142 = v527;
    v143 = self->_useCaseClientIDs;
    self->_useCaseClientIDs = v142;
    v9 = v141;
    v6 = 1;

    enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
    enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
    if (enableEPAForLEAdvertisement != enableEPAForLEAdvertisement)
    {
      goto LABEL_141;
    }

    goto LABEL_66;
  }

  v18 = v17;
  v19 = [(NSArray *)v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
    goto LABEL_140;
  }

  enableEPAForLEAdvertisement = [advertiserCopy enableEPAForLEAdvertisement];
  enableEPAForLEAdvertisement = self->_enableEPAForLEAdvertisement;
  if (enableEPAForLEAdvertisement == enableEPAForLEAdvertisement)
  {
    goto LABEL_66;
  }

LABEL_141:
  v144 = enableEPAForLEAdvertisement;
  v412 = enableEPAForLEAdvertisement;
  v469 = enableEPAForLEAdvertisement;
  CUAppendF();
  v145 = v9;

  self->_enableEPAForLEAdvertisement = v144;
  v6 = 1;
  v9 = v145;
  airdropFlags = [advertiserCopy airdropFlags];
  airdropFlags = self->_airdropFlags;
  if (airdropFlags != airdropFlags)
  {
LABEL_67:
    v24 = airdropFlags;
    v397 = airdropFlags;
    v453 = airdropFlags;
    CUAppendF();
    v25 = v9;

    self->_airdropFlags = v24;
    v6 = 1;
    v9 = v25;
  }

LABEL_68:
  airdropTempAuthTagData = [advertiserCopy airdropTempAuthTagData];
  airdropTempAuthTagData = self->_airdropTempAuthTagData;
  v28 = airdropTempAuthTagData;
  v29 = airdropTempAuthTagData;
  v526 = v28;
  if (v28 == v29)
  {

    airdropModel = [advertiserCopy airdropModel];
    airdropModel = self->_airdropModel;
    if (airdropModel != airdropModel)
    {
      goto LABEL_145;
    }

LABEL_72:
    airdropVersion = [advertiserCopy airdropVersion];
    airdropVersion = self->_airdropVersion;
    if (airdropVersion == airdropVersion)
    {
      goto LABEL_73;
    }

    goto LABEL_146;
  }

  if ((v28 != 0) == (v29 == 0))
  {

LABEL_144:
    v146 = self->_airdropTempAuthTagData;
    v147 = CUPrintNSDataHex();
    v470 = CUPrintNSDataHex();
    CUAppendF();
    v148 = v9;

    v149 = v526;
    v150 = self->_airdropTempAuthTagData;
    self->_airdropTempAuthTagData = v149;
    v9 = v148;
    v6 = 1;

    airdropModel = [advertiserCopy airdropModel];
    airdropModel = self->_airdropModel;
    if (airdropModel != airdropModel)
    {
      goto LABEL_145;
    }

    goto LABEL_72;
  }

  v30 = v29;
  v31 = [(NSData *)v28 isEqual:v29];

  if ((v31 & 1) == 0)
  {
    goto LABEL_144;
  }

  airdropModel = [advertiserCopy airdropModel];
  airdropModel = self->_airdropModel;
  if (airdropModel == airdropModel)
  {
    goto LABEL_72;
  }

LABEL_145:
  v151 = airdropModel;
  v413 = airdropModel;
  v471 = airdropModel;
  CUAppendF();
  v152 = v9;

  self->_airdropModel = v151;
  v6 = 1;
  v9 = v152;
  airdropVersion = [advertiserCopy airdropVersion];
  airdropVersion = self->_airdropVersion;
  if (airdropVersion == airdropVersion)
  {
LABEL_73:
    airdropHash1 = [advertiserCopy airdropHash1];
    airdropHash1 = self->_airdropHash1;
    if (airdropHash1 == airdropHash1)
    {
      goto LABEL_74;
    }

    goto LABEL_147;
  }

LABEL_146:
  v153 = airdropVersion;
  v414 = airdropVersion;
  v472 = airdropVersion;
  CUAppendF();
  v154 = v9;

  self->_airdropVersion = v153;
  v6 = 1;
  v9 = v154;
  airdropHash1 = [advertiserCopy airdropHash1];
  airdropHash1 = self->_airdropHash1;
  if (airdropHash1 == airdropHash1)
  {
LABEL_74:
    airdropHash2 = [advertiserCopy airdropHash2];
    airdropHash2 = self->_airdropHash2;
    if (airdropHash2 == airdropHash2)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  v155 = airdropHash1;
  v415 = airdropHash1;
  v473 = airdropHash1;
  CUAppendF();
  v156 = v9;

  self->_airdropHash1 = v155;
  v6 = 1;
  v9 = v156;
  airdropHash2 = [advertiserCopy airdropHash2];
  airdropHash2 = self->_airdropHash2;
  if (airdropHash2 == airdropHash2)
  {
LABEL_75:
    airdropHash3 = [advertiserCopy airdropHash3];
    airdropHash3 = self->_airdropHash3;
    if (airdropHash3 == airdropHash3)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  v157 = airdropHash2;
  v416 = airdropHash2;
  v474 = airdropHash2;
  CUAppendF();
  v158 = v9;

  self->_airdropHash2 = v157;
  v6 = 1;
  v9 = v158;
  airdropHash3 = [advertiserCopy airdropHash3];
  airdropHash3 = self->_airdropHash3;
  if (airdropHash3 == airdropHash3)
  {
LABEL_76:
    airdropHash4 = [advertiserCopy airdropHash4];
    airdropHash4 = self->_airdropHash4;
    if (airdropHash4 == airdropHash4)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  v159 = airdropHash3;
  v417 = airdropHash3;
  v475 = airdropHash3;
  CUAppendF();
  v160 = v9;

  self->_airdropHash3 = v159;
  v6 = 1;
  v9 = v160;
  airdropHash4 = [advertiserCopy airdropHash4];
  airdropHash4 = self->_airdropHash4;
  if (airdropHash4 == airdropHash4)
  {
LABEL_77:
    airdropConfigData = [advertiserCopy airdropConfigData];
    airdropConfigData = self->_airdropConfigData;
    if (airdropConfigData == airdropConfigData)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

LABEL_150:
  v161 = airdropHash4;
  v418 = airdropHash4;
  v476 = airdropHash4;
  CUAppendF();
  v162 = v9;

  self->_airdropHash4 = v161;
  v6 = 1;
  v9 = v162;
  airdropConfigData = [advertiserCopy airdropConfigData];
  airdropConfigData = self->_airdropConfigData;
  if (airdropConfigData != airdropConfigData)
  {
LABEL_78:
    v46 = airdropConfigData;
    v398 = airdropConfigData;
    v454 = airdropConfigData;
    CUAppendF();
    v47 = v9;

    self->_airdropConfigData = v46;
    v6 = 1;
    v9 = v47;
  }

LABEL_79:
  airplaySourceAuthTagData = [advertiserCopy airplaySourceAuthTagData];
  airplaySourceAuthTagData = self->_airplaySourceAuthTagData;
  v50 = airplaySourceAuthTagData;
  v51 = airplaySourceAuthTagData;
  v525 = v50;
  if (v50 == v51)
  {

    v135 = v50;
  }

  else
  {
    if ((v50 != 0) != (v51 == 0))
    {
      v52 = v51;
      v53 = [(NSData *)v50 isEqual:v51];

      if (v53)
      {
        airplaySourceFlags = [advertiserCopy airplaySourceFlags];
        if (airplaySourceFlags == self->_airplaySourceFlags)
        {
          goto LABEL_84;
        }

        goto LABEL_83;
      }
    }

    else
    {
    }

    v163 = self->_airplaySourceAuthTagData;
    v164 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v455 = v399 = v164;
    CUAppendF();
    v165 = v9;

    v166 = v525;
    v135 = self->_airplaySourceAuthTagData;
    self->_airplaySourceAuthTagData = v166;
    v9 = v165;
    v6 = 1;
  }

  airplaySourceFlags = [advertiserCopy airplaySourceFlags];
  if (airplaySourceFlags != self->_airplaySourceFlags)
  {
LABEL_83:
    v55 = CUPrintFlags32();
    CUPrintFlags32();
    v455 = v399 = v55;
    CUAppendF();
    v56 = v9;

    self->_airplaySourceFlags = airplaySourceFlags;
    v6 = 1;
    v9 = v56;
  }

LABEL_84:
  airplaySourceUWBConfigData = [advertiserCopy airplaySourceUWBConfigData];
  airplaySourceUWBConfigData = self->_airplaySourceUWBConfigData;
  v59 = airplaySourceUWBConfigData;
  v60 = airplaySourceUWBConfigData;
  if (v59 == v60)
  {

    v136 = v59;
  }

  else
  {
    if ((v59 != 0) != (v60 == 0))
    {
      v61 = v60;
      v62 = [(NSData *)v59 isEqual:v60];

      if (v62)
      {
        airplayTargetConfigSeed = [advertiserCopy airplayTargetConfigSeed];
        airplayTargetConfigSeed = self->_airplayTargetConfigSeed;
        if (airplayTargetConfigSeed == airplayTargetConfigSeed)
        {
          goto LABEL_89;
        }

        goto LABEL_88;
      }
    }

    else
    {
    }

    v167 = self->_airplaySourceUWBConfigData;
    v168 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v456 = v400 = v168;
    CUAppendF();
    v169 = v9;

    v170 = v59;
    v136 = self->_airplaySourceUWBConfigData;
    self->_airplaySourceUWBConfigData = v170;
    v9 = v169;
    v6 = 1;
  }

  airplayTargetConfigSeed = [advertiserCopy airplayTargetConfigSeed];
  airplayTargetConfigSeed = self->_airplayTargetConfigSeed;
  if (airplayTargetConfigSeed != airplayTargetConfigSeed)
  {
LABEL_88:
    v65 = airplayTargetConfigSeed;
    v400 = airplayTargetConfigSeed;
    v456 = airplayTargetConfigSeed;
    CUAppendF();
    v66 = v9;

    self->_airplayTargetConfigSeed = v65;
    v6 = 1;
    v9 = v66;
  }

LABEL_89:
  airplayTargetFlags = [advertiserCopy airplayTargetFlags];
  v520 = v59;
  if (airplayTargetFlags != self->_airplayTargetFlags)
  {
    v68 = CUPrintFlags32();
    CUPrintFlags32();
    v457 = v401 = v68;
    CUAppendF();
    v69 = v9;

    self->_airplayTargetFlags = airplayTargetFlags;
    v6 = 1;
    v9 = v69;
  }

  airplayTargetIPv4 = [advertiserCopy airplayTargetIPv4];
  if (airplayTargetIPv4 != self->_airplayTargetIPv4)
  {
    v6 = 1;
    v70 = CUPrintAddress();
    CUPrintAddress();
    v458 = v402 = v70;
    CUAppendF();
    v71 = v9;

    self->_airplayTargetIPv4 = airplayTargetIPv4;
    v9 = v71;
  }

  airplayTargetPort = [advertiserCopy airplayTargetPort];
  if (airplayTargetPort != self->_airplayTargetPort)
  {
    v75 = airplayTargetPort;
    airplayTargetPort = self->_airplayTargetPort;
    v460 = airplayTargetPort;
    CUAppendF();
    v76 = v9;

    self->_airplayTargetPort = v75;
    v73 = 1;
    v9 = v76;
    dsActionFlags = [advertiserCopy dsActionFlags];
    if (dsActionFlags == self->_dsActionFlags)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v73 = v6;
  dsActionFlags = [advertiserCopy dsActionFlags];
  if (dsActionFlags != self->_dsActionFlags)
  {
LABEL_97:
    v77 = CUPrintFlags32();
    CUPrintFlags32();
    v459 = v403 = v77;
    CUAppendF();
    v78 = v9;

    self->_dsActionFlags = dsActionFlags;
    v73 = 1;
    v9 = v78;
  }

LABEL_98:
  dsActionMeasuredPower = [advertiserCopy dsActionMeasuredPower];
  if (dsActionMeasuredPower == self->_dsActionMeasuredPower)
  {
    dsActionTieBreaker = [advertiserCopy dsActionTieBreaker];
    dsActionTieBreaker = self->_dsActionTieBreaker;
    if (dsActionTieBreaker == dsActionTieBreaker)
    {
      goto LABEL_100;
    }
  }

  else
  {
    v126 = dsActionMeasuredPower;
    dsActionMeasuredPower = self->_dsActionMeasuredPower;
    v465 = dsActionMeasuredPower;
    CUAppendF();
    v127 = v9;

    self->_dsActionMeasuredPower = v126;
    v73 = 1;
    v9 = v127;
    dsActionTieBreaker = [advertiserCopy dsActionTieBreaker];
    dsActionTieBreaker = self->_dsActionTieBreaker;
    if (dsActionTieBreaker == dsActionTieBreaker)
    {
LABEL_100:
      dsInfoVehicleConfidence = [advertiserCopy dsInfoVehicleConfidence];
      dsInfoVehicleConfidence = self->_dsInfoVehicleConfidence;
      if (dsInfoVehicleConfidence == dsInfoVehicleConfidence)
      {
        goto LABEL_101;
      }

      goto LABEL_125;
    }
  }

  v128 = dsActionTieBreaker;
  v410 = dsActionTieBreaker;
  v466 = dsActionTieBreaker;
  CUAppendF();
  v129 = v9;

  self->_dsActionTieBreaker = v128;
  v73 = 1;
  v9 = v129;
  dsInfoVehicleConfidence = [advertiserCopy dsInfoVehicleConfidence];
  dsInfoVehicleConfidence = self->_dsInfoVehicleConfidence;
  if (dsInfoVehicleConfidence == dsInfoVehicleConfidence)
  {
LABEL_101:
    dsInfoVehicleState = [advertiserCopy dsInfoVehicleState];
    dsInfoVehicleState = self->_dsInfoVehicleState;
    if (dsInfoVehicleState == dsInfoVehicleState)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_125:
  v130 = dsInfoVehicleConfidence;
  v411 = dsInfoVehicleConfidence;
  v467 = dsInfoVehicleConfidence;
  CUAppendF();
  v131 = v9;

  self->_dsInfoVehicleConfidence = v130;
  v73 = 1;
  v9 = v131;
  dsInfoVehicleState = [advertiserCopy dsInfoVehicleState];
  dsInfoVehicleState = self->_dsInfoVehicleState;
  if (dsInfoVehicleState == dsInfoVehicleState)
  {
LABEL_102:
    enableEPAForLEAdvertisement2 = [advertiserCopy enableEPAForLEAdvertisement];
    v87 = self->_enableEPAForLEAdvertisement;
    if (v87 == enableEPAForLEAdvertisement2)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_126:
  v132 = dsInfoVehicleState;
  if (dsInfoVehicleState > 2)
  {
    v133 = "?";
    if (dsInfoVehicleState > 2)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v133 = off_1E811DDD8[dsInfoVehicleState];
    if (dsInfoVehicleState > 2)
    {
LABEL_128:
      v134 = "?";
      goto LABEL_313;
    }
  }

  v134 = off_1E811DDD8[dsInfoVehicleState];
LABEL_313:
  v443 = v133;
  v503 = v134;
  CUAppendF();
  v375 = v9;

  self->_dsInfoVehicleState = v132;
  v73 = 1;
  v9 = v375;
  enableEPAForLEAdvertisement2 = [advertiserCopy enableEPAForLEAdvertisement];
  v87 = self->_enableEPAForLEAdvertisement;
  if (v87 != enableEPAForLEAdvertisement2)
  {
LABEL_103:
    v88 = enableEPAForLEAdvertisement2;
    v405 = v87;
    v461 = enableEPAForLEAdvertisement2;
    CUAppendF();
    v89 = v9;

    self->_enableEPAForLEAdvertisement = v88;
    v73 = 1;
    v9 = v89;
  }

LABEL_104:
  fidoPayloadData = [advertiserCopy fidoPayloadData];
  fidoPayloadData = self->_fidoPayloadData;
  v92 = fidoPayloadData;
  v93 = fidoPayloadData;
  if (v92 == v93)
  {

    heySiriConfidence = [advertiserCopy heySiriConfidence];
    heySiriConfidence = self->_heySiriConfidence;
    if (heySiriConfidence != heySiriConfidence)
    {
      goto LABEL_162;
    }

LABEL_108:
    heySiriDeviceClass = [advertiserCopy heySiriDeviceClass];
    heySiriDeviceClass = self->_heySiriDeviceClass;
    if (heySiriDeviceClass == heySiriDeviceClass)
    {
      goto LABEL_109;
    }

    goto LABEL_163;
  }

  if ((v92 != 0) == (v93 == 0))
  {

LABEL_161:
    v171 = self->_fidoPayloadData;
    v172 = CUPrintNSDataHex();
    v477 = CUPrintNSDataHex();
    CUAppendF();
    v173 = v9;

    v174 = v92;
    v175 = self->_fidoPayloadData;
    self->_fidoPayloadData = v174;
    v9 = v173;
    v73 = 1;

    heySiriConfidence = [advertiserCopy heySiriConfidence];
    heySiriConfidence = self->_heySiriConfidence;
    if (heySiriConfidence != heySiriConfidence)
    {
      goto LABEL_162;
    }

    goto LABEL_108;
  }

  v94 = v93;
  v95 = [(NSData *)v92 isEqual:v93];

  if ((v95 & 1) == 0)
  {
    goto LABEL_161;
  }

  heySiriConfidence = [advertiserCopy heySiriConfidence];
  heySiriConfidence = self->_heySiriConfidence;
  if (heySiriConfidence == heySiriConfidence)
  {
    goto LABEL_108;
  }

LABEL_162:
  v176 = heySiriConfidence;
  v419 = heySiriConfidence;
  v478 = heySiriConfidence;
  CUAppendF();
  v177 = v9;

  self->_heySiriConfidence = v176;
  v73 = 1;
  v9 = v177;
  heySiriDeviceClass = [advertiserCopy heySiriDeviceClass];
  heySiriDeviceClass = self->_heySiriDeviceClass;
  if (heySiriDeviceClass == heySiriDeviceClass)
  {
LABEL_109:
    heySiriPerceptualHash = [advertiserCopy heySiriPerceptualHash];
    heySiriPerceptualHash = self->_heySiriPerceptualHash;
    if (heySiriPerceptualHash == heySiriPerceptualHash)
    {
      goto LABEL_110;
    }

    goto LABEL_318;
  }

LABEL_163:
  v178 = heySiriDeviceClass;
  if (heySiriDeviceClass > 0xA)
  {
    v179 = "?";
    if (heySiriDeviceClass > 0xA)
    {
      goto LABEL_165;
    }
  }

  else
  {
    v179 = off_1E811DDF0[heySiriDeviceClass];
    if (heySiriDeviceClass > 0xA)
    {
LABEL_165:
      v180 = "?";
      goto LABEL_317;
    }
  }

  v180 = off_1E811DDF0[heySiriDeviceClass];
LABEL_317:
  v444 = v179;
  v504 = v180;
  CUAppendF();
  v376 = v9;

  self->_heySiriDeviceClass = v178;
  v73 = 1;
  v9 = v376;
  heySiriPerceptualHash = [advertiserCopy heySiriPerceptualHash];
  heySiriPerceptualHash = self->_heySiriPerceptualHash;
  if (heySiriPerceptualHash == heySiriPerceptualHash)
  {
LABEL_110:
    heySiriProductType = [advertiserCopy heySiriProductType];
    heySiriProductType = self->_heySiriProductType;
    if (heySiriProductType == heySiriProductType)
    {
      goto LABEL_111;
    }

    goto LABEL_319;
  }

LABEL_318:
  v377 = heySiriPerceptualHash;
  v445 = heySiriPerceptualHash;
  v505 = heySiriPerceptualHash;
  CUAppendF();
  v378 = v9;

  self->_heySiriPerceptualHash = v377;
  v73 = 1;
  v9 = v378;
  heySiriProductType = [advertiserCopy heySiriProductType];
  heySiriProductType = self->_heySiriProductType;
  if (heySiriProductType == heySiriProductType)
  {
LABEL_111:
    heySiriRandom = [advertiserCopy heySiriRandom];
    heySiriRandom = self->_heySiriRandom;
    if (heySiriRandom == heySiriRandom)
    {
      goto LABEL_112;
    }

    goto LABEL_331;
  }

LABEL_319:
  v379 = heySiriProductType;
  if (heySiriProductType > 4)
  {
    v380 = "?";
    if (heySiriProductType > 4)
    {
      goto LABEL_321;
    }
  }

  else
  {
    v380 = off_1E811DE48[heySiriProductType];
    if (heySiriProductType > 4)
    {
LABEL_321:
      v381 = "?";
      goto LABEL_330;
    }
  }

  v381 = off_1E811DE48[heySiriProductType];
LABEL_330:
  v447 = v380;
  v507 = v381;
  CUAppendF();
  v386 = v9;

  self->_heySiriProductType = v379;
  v73 = 1;
  v9 = v386;
  heySiriRandom = [advertiserCopy heySiriRandom];
  heySiriRandom = self->_heySiriRandom;
  if (heySiriRandom == heySiriRandom)
  {
LABEL_112:
    heySiriSNR = [advertiserCopy heySiriSNR];
    heySiriSNR = self->_heySiriSNR;
    if (heySiriSNR == heySiriSNR)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

LABEL_331:
  v387 = heySiriRandom;
  v448 = heySiriRandom;
  v508 = heySiriRandom;
  CUAppendF();
  v388 = v9;

  self->_heySiriRandom = v387;
  v73 = 1;
  v9 = v388;
  heySiriSNR = [advertiserCopy heySiriSNR];
  heySiriSNR = self->_heySiriSNR;
  if (heySiriSNR != heySiriSNR)
  {
LABEL_113:
    v108 = heySiriSNR;
    v406 = heySiriSNR;
    v462 = heySiriSNR;
    CUAppendF();
    v109 = v9;

    self->_heySiriSNR = v108;
    v73 = 1;
    v9 = v109;
  }

LABEL_114:
  nearbyActionAuthTagData = [advertiserCopy nearbyActionAuthTagData];
  nearbyActionAuthTagData = self->_nearbyActionAuthTagData;
  v112 = nearbyActionAuthTagData;
  v113 = nearbyActionAuthTagData;
  v524 = v112;
  if (v112 == v113)
  {

    v137 = v112;
  }

  else
  {
    if ((v112 != 0) != (v113 == 0))
    {
      v114 = v113;
      v115 = [(NSData *)v112 isEqual:v113];

      if (v115)
      {
        nearbyActionColorCode = [advertiserCopy nearbyActionColorCode];
        nearbyActionColorCode = self->_nearbyActionColorCode;
        if (nearbyActionColorCode == nearbyActionColorCode)
        {
          goto LABEL_119;
        }

        goto LABEL_118;
      }
    }

    else
    {
    }

    v181 = self->_nearbyActionAuthTagData;
    v182 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v463 = v407 = v182;
    CUAppendF();
    v183 = v9;

    v184 = v524;
    v137 = self->_nearbyActionAuthTagData;
    self->_nearbyActionAuthTagData = v184;
    v9 = v183;
    v73 = 1;
  }

  nearbyActionColorCode = [advertiserCopy nearbyActionColorCode];
  nearbyActionColorCode = self->_nearbyActionColorCode;
  if (nearbyActionColorCode != nearbyActionColorCode)
  {
LABEL_118:
    v118 = nearbyActionColorCode;
    v407 = nearbyActionColorCode;
    v463 = nearbyActionColorCode;
    CUAppendF();
    v119 = v9;

    self->_nearbyActionColorCode = v118;
    v73 = 1;
    v9 = v119;
  }

LABEL_119:
  nearbyActionExtraData = [advertiserCopy nearbyActionExtraData];
  nearbyActionExtraData = self->_nearbyActionExtraData;
  v122 = nearbyActionExtraData;
  v123 = nearbyActionExtraData;
  if (v122 == v123)
  {

    v138 = v122;
LABEL_172:

    goto LABEL_173;
  }

  if ((v122 != 0) == (v123 == 0))
  {

    goto LABEL_171;
  }

  v124 = v123;
  v125 = [(NSData *)v122 isEqual:v123];

  if ((v125 & 1) == 0)
  {
LABEL_171:
    v185 = self->_nearbyActionExtraData;
    v186 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v464 = v408 = v186;
    CUAppendF();
    v187 = v9;

    v188 = v122;
    v138 = self->_nearbyActionExtraData;
    self->_nearbyActionExtraData = v188;
    v9 = v187;
    v73 = 1;
    goto LABEL_172;
  }

LABEL_173:
  nearbyActionFlags = [advertiserCopy nearbyActionFlags];
  v518 = v122;
  v519 = v92;
  if (nearbyActionFlags != self->_nearbyActionFlags)
  {
    v190 = CUPrintFlags32();
    CUPrintFlags32();
    v479 = v420 = v190;
    CUAppendF();
    v191 = v9;

    self->_nearbyActionFlags = nearbyActionFlags;
    v73 = 1;
    v9 = v191;
  }

  nearbyActionType = [advertiserCopy nearbyActionType];
  nearbyActionType = self->_nearbyActionType;
  if (nearbyActionType != nearbyActionType)
  {
    v421 = CBNearbyActionTypeToString(nearbyActionType);
    v480 = CBNearbyActionTypeToString(nearbyActionType);
    CUAppendF();
    v194 = v9;

    self->_nearbyActionType = nearbyActionType;
    v73 = 1;
    v9 = v194;
  }

  nearbyActionTargetData = [advertiserCopy nearbyActionTargetData];
  nearbyActionTargetData = self->_nearbyActionTargetData;
  v197 = nearbyActionTargetData;
  v198 = nearbyActionTargetData;
  v523 = v197;
  if (v197 == v198)
  {

    v237 = v197;
  }

  else
  {
    if ((v197 != 0) != (v198 == 0))
    {
      v199 = v198;
      v200 = [(NSData *)v197 isEqual:v198];

      if (v200)
      {
        nearbyActionV2Flags = [advertiserCopy nearbyActionV2Flags];
        if (nearbyActionV2Flags == self->_nearbyActionV2Flags)
        {
          goto LABEL_182;
        }

        goto LABEL_181;
      }
    }

    else
    {
    }

    v240 = self->_nearbyActionTargetData;
    v241 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v481 = v422 = v241;
    CUAppendF();
    v242 = v9;

    v243 = v523;
    v237 = self->_nearbyActionTargetData;
    self->_nearbyActionTargetData = v243;
    v9 = v242;
    v73 = 1;
  }

  nearbyActionV2Flags = [advertiserCopy nearbyActionV2Flags];
  if (nearbyActionV2Flags != self->_nearbyActionV2Flags)
  {
LABEL_181:
    v202 = CUPrintFlags32();
    CUPrintFlags32();
    v481 = v422 = v202;
    CUAppendF();
    v203 = v9;

    self->_nearbyActionV2Flags = nearbyActionV2Flags;
    v73 = 1;
    v9 = v203;
  }

LABEL_182:
  nearbyActionV2TargetData = [advertiserCopy nearbyActionV2TargetData];
  nearbyActionV2TargetData = self->_nearbyActionV2TargetData;
  v206 = nearbyActionV2TargetData;
  v207 = nearbyActionV2TargetData;
  if (v206 == v207)
  {

    v238 = v206;
  }

  else
  {
    if ((v206 != 0) != (v207 == 0))
    {
      v208 = v207;
      v209 = [(NSData *)v206 isEqual:v207];

      if (v209)
      {
        nearbyActionV2Type = [advertiserCopy nearbyActionV2Type];
        nearbyActionV2Type = self->_nearbyActionV2Type;
        if (nearbyActionV2Type == nearbyActionV2Type)
        {
          goto LABEL_187;
        }

        goto LABEL_186;
      }
    }

    else
    {
    }

    v244 = self->_nearbyActionV2TargetData;
    v245 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v482 = v423 = v245;
    CUAppendF();
    v246 = v9;

    v247 = v206;
    v238 = self->_nearbyActionV2TargetData;
    self->_nearbyActionV2TargetData = v247;
    v9 = v246;
    v73 = 1;
  }

  nearbyActionV2Type = [advertiserCopy nearbyActionV2Type];
  nearbyActionV2Type = self->_nearbyActionV2Type;
  if (nearbyActionV2Type != nearbyActionV2Type)
  {
LABEL_186:
    v423 = CBNearbyActionTypeToString(nearbyActionV2Type);
    v482 = CBNearbyActionTypeToString(nearbyActionV2Type);
    CUAppendF();
    v212 = v9;

    self->_nearbyActionV2Type = nearbyActionV2Type;
    v73 = 1;
    v9 = v212;
  }

LABEL_187:
  nearbyInfoFlags = [advertiserCopy nearbyInfoFlags];
  v517 = v206;
  if (nearbyInfoFlags != self->_nearbyInfoFlags)
  {
    v214 = CUPrintFlags32();
    CUPrintFlags32();
    v483 = v424 = v214;
    CUAppendF();
    v215 = v9;

    self->_nearbyInfoFlags = nearbyInfoFlags;
    v73 = 1;
    v9 = v215;
  }

  [advertiserCopy nearbyInfoStatusProgress];
  nearbyInfoStatusProgress = self->_nearbyInfoStatusProgress;
  if (v216 != nearbyInfoStatusProgress)
  {
    v425 = nearbyInfoStatusProgress * 100.0;
    v484 = v216 * 100.0;
    v218 = v216;
    CUAppendF();
    v219 = v9;

    self->_nearbyInfoStatusProgress = v218;
    v73 = 1;
    v9 = v219;
  }

  nearbyInfoStatusTime = [advertiserCopy nearbyInfoStatusTime];
  nearbyInfoStatusTime = self->_nearbyInfoStatusTime;
  if (nearbyInfoStatusTime == nearbyInfoStatusTime)
  {
    nearbyInfoStatusType = [advertiserCopy nearbyInfoStatusType];
    nearbyInfoStatusType = self->_nearbyInfoStatusType;
    if (nearbyInfoStatusType == nearbyInfoStatusType)
    {
      goto LABEL_193;
    }

    goto LABEL_325;
  }

  v234 = nearbyInfoStatusTime;
  if (nearbyInfoStatusTime > 0xE)
  {
    v235 = "?";
    if (nearbyInfoStatusTime > 0xE)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v235 = off_1E811DE70[self->_nearbyInfoStatusTime];
    if (nearbyInfoStatusTime > 0xE)
    {
LABEL_202:
      v236 = "?";
      goto LABEL_324;
    }
  }

  v236 = off_1E811DE70[nearbyInfoStatusTime];
LABEL_324:
  v446 = v235;
  v506 = v236;
  CUAppendF();
  v382 = v9;

  self->_nearbyInfoStatusTime = v234;
  v73 = 1;
  v9 = v382;
  nearbyInfoStatusType = [advertiserCopy nearbyInfoStatusType];
  nearbyInfoStatusType = self->_nearbyInfoStatusType;
  if (nearbyInfoStatusType == nearbyInfoStatusType)
  {
LABEL_193:
    nearbyInfoV2DecryptedFlags = [advertiserCopy nearbyInfoV2DecryptedFlags];
    if (nearbyInfoV2DecryptedFlags == self->_nearbyInfoV2DecryptedFlags)
    {
      goto LABEL_194;
    }

    goto LABEL_336;
  }

LABEL_325:
  v383 = nearbyInfoStatusType;
  if (nearbyInfoStatusType > 0xD)
  {
    v384 = "?";
    if (nearbyInfoStatusType > 0xD)
    {
      goto LABEL_327;
    }
  }

  else
  {
    v384 = off_1E811DEE8[nearbyInfoStatusType];
    if (nearbyInfoStatusType > 0xD)
    {
LABEL_327:
      v385 = "?";
      goto LABEL_335;
    }
  }

  v385 = off_1E811DEE8[nearbyInfoStatusType];
LABEL_335:
  v449 = v384;
  v509 = v385;
  CUAppendF();
  v389 = v9;

  self->_nearbyInfoStatusType = v383;
  v73 = 1;
  v9 = v389;
  nearbyInfoV2DecryptedFlags = [advertiserCopy nearbyInfoV2DecryptedFlags];
  if (nearbyInfoV2DecryptedFlags == self->_nearbyInfoV2DecryptedFlags)
  {
LABEL_194:
    nearbyInfoV2Flags = [advertiserCopy nearbyInfoV2Flags];
    if (nearbyInfoV2Flags == self->_nearbyInfoV2Flags)
    {
      goto LABEL_196;
    }

    goto LABEL_195;
  }

LABEL_336:
  v390 = CUPrintFlags32();
  CUPrintFlags32();
  v510 = v450 = v390;
  CUAppendF();
  v391 = v9;

  self->_nearbyInfoV2DecryptedFlags = nearbyInfoV2DecryptedFlags;
  v73 = 1;
  v9 = v391;
  nearbyInfoV2Flags = [advertiserCopy nearbyInfoV2Flags];
  if (nearbyInfoV2Flags != self->_nearbyInfoV2Flags)
  {
LABEL_195:
    v226 = CUPrintFlags32();
    CUPrintFlags32();
    v485 = v426 = v226;
    CUAppendF();
    v227 = v9;

    self->_nearbyInfoV2Flags = nearbyInfoV2Flags;
    v73 = 1;
    v9 = v227;
  }

LABEL_196:
  nearbyInfoV2AuthIntegrityTagData = [advertiserCopy nearbyInfoV2AuthIntegrityTagData];
  nearbyInfoV2AuthIntegrityTagData = self->_nearbyInfoV2AuthIntegrityTagData;
  v230 = nearbyInfoV2AuthIntegrityTagData;
  v231 = nearbyInfoV2AuthIntegrityTagData;
  if (v230 == v231)
  {

    v239 = v230;
LABEL_216:

    goto LABEL_217;
  }

  if ((v230 != 0) == (v231 == 0))
  {

    goto LABEL_215;
  }

  v232 = v231;
  v233 = [(NSData *)v230 isEqual:v231];

  if ((v233 & 1) == 0)
  {
LABEL_215:
    v248 = self->_nearbyInfoV2AuthIntegrityTagData;
    v249 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v486 = v427 = v249;
    CUAppendF();
    v250 = v9;

    v251 = v230;
    v239 = self->_nearbyInfoV2AuthIntegrityTagData;
    self->_nearbyInfoV2AuthIntegrityTagData = v251;
    v9 = v250;
    v73 = 1;
    goto LABEL_216;
  }

LABEL_217:
  nearbyInfoV2AuthTagData = [advertiserCopy nearbyInfoV2AuthTagData];
  nearbyInfoV2AuthTagData = self->_nearbyInfoV2AuthTagData;
  v254 = nearbyInfoV2AuthTagData;
  v255 = nearbyInfoV2AuthTagData;
  if (v254 == v255)
  {

    v288 = v254;
  }

  else
  {
    if ((v254 != 0) != (v255 == 0))
    {
      v256 = v255;
      v257 = [(NSData *)v254 isEqual:v255];

      if (v257)
      {
        nearbyInfoV2InvitationCounter = [advertiserCopy nearbyInfoV2InvitationCounter];
        nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
        v515 = v254;
        if (nearbyInfoV2InvitationCounter == nearbyInfoV2InvitationCounter)
        {
          goto LABEL_221;
        }

        goto LABEL_251;
      }
    }

    else
    {
    }

    v291 = self->_nearbyInfoV2AuthTagData;
    v292 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v487 = v428 = v292;
    CUAppendF();
    v293 = v9;

    v294 = v254;
    v288 = self->_nearbyInfoV2AuthTagData;
    self->_nearbyInfoV2AuthTagData = v294;
    v9 = v293;
    v73 = 1;
  }

  nearbyInfoV2InvitationCounter = [advertiserCopy nearbyInfoV2InvitationCounter];
  nearbyInfoV2InvitationCounter = self->_nearbyInfoV2InvitationCounter;
  v515 = v254;
  if (nearbyInfoV2InvitationCounter == nearbyInfoV2InvitationCounter)
  {
LABEL_221:
    nearbyInfoV2InvitationTypes = [advertiserCopy nearbyInfoV2InvitationTypes];
    nearbyInfoV2InvitationTypes = self->_nearbyInfoV2InvitationTypes;
    if (nearbyInfoV2InvitationTypes == nearbyInfoV2InvitationTypes)
    {
      goto LABEL_222;
    }

    goto LABEL_252;
  }

LABEL_251:
  v295 = nearbyInfoV2InvitationCounter;
  v433 = nearbyInfoV2InvitationCounter;
  v492 = nearbyInfoV2InvitationCounter;
  CUAppendF();
  v296 = v9;

  self->_nearbyInfoV2InvitationCounter = v295;
  v73 = 1;
  v9 = v296;
  nearbyInfoV2InvitationTypes = [advertiserCopy nearbyInfoV2InvitationTypes];
  nearbyInfoV2InvitationTypes = self->_nearbyInfoV2InvitationTypes;
  if (nearbyInfoV2InvitationTypes == nearbyInfoV2InvitationTypes)
  {
LABEL_222:
    nearbyInfoV2InvitationRouteType = [advertiserCopy nearbyInfoV2InvitationRouteType];
    nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
    if (nearbyInfoV2InvitationRouteType == nearbyInfoV2InvitationRouteType)
    {
      goto LABEL_224;
    }

    goto LABEL_223;
  }

LABEL_252:
  v297 = nearbyInfoV2InvitationTypes;
  v434 = nearbyInfoV2InvitationTypes;
  v493 = nearbyInfoV2InvitationTypes;
  CUAppendF();
  v298 = v9;

  self->_nearbyInfoV2InvitationTypes = v297;
  v73 = 1;
  v9 = v298;
  nearbyInfoV2InvitationRouteType = [advertiserCopy nearbyInfoV2InvitationRouteType];
  nearbyInfoV2InvitationRouteType = self->_nearbyInfoV2InvitationRouteType;
  if (nearbyInfoV2InvitationRouteType != nearbyInfoV2InvitationRouteType)
  {
LABEL_223:
    v264 = nearbyInfoV2InvitationRouteType;
    v429 = nearbyInfoV2InvitationRouteType;
    v488 = nearbyInfoV2InvitationRouteType;
    CUAppendF();
    v265 = v9;

    self->_nearbyInfoV2InvitationRouteType = v264;
    v73 = 1;
    v9 = v265;
  }

LABEL_224:
  nearbyInfoV2NearbyFaceTimeData = [advertiserCopy nearbyInfoV2NearbyFaceTimeData];
  nearbyInfoV2NearbyFaceTimeData = self->_nearbyInfoV2NearbyFaceTimeData;
  v268 = nearbyInfoV2NearbyFaceTimeData;
  v269 = nearbyInfoV2NearbyFaceTimeData;
  if (v268 == v269)
  {

    v289 = v268;
    goto LABEL_256;
  }

  if ((v268 != 0) == (v269 == 0))
  {

    goto LABEL_255;
  }

  v270 = v269;
  v271 = [(NSData *)v268 isEqual:v269];

  if ((v271 & 1) == 0)
  {
LABEL_255:
    v299 = self->_nearbyInfoV2NearbyFaceTimeData;
    v300 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v489 = v430 = v300;
    CUAppendF();
    v301 = v9;

    v302 = v268;
    v289 = self->_nearbyInfoV2NearbyFaceTimeData;
    self->_nearbyInfoV2NearbyFaceTimeData = v302;
    v9 = v301;
    v73 = 1;
LABEL_256:

    nearbyActionNoWakeType = [advertiserCopy nearbyActionNoWakeType];
    nearbyActionNoWakeType = self->_nearbyActionNoWakeType;
    if (nearbyActionNoWakeType == nearbyActionNoWakeType)
    {
      goto LABEL_239;
    }

    goto LABEL_228;
  }

  nearbyActionNoWakeType = [advertiserCopy nearbyActionNoWakeType];
  nearbyActionNoWakeType = self->_nearbyActionNoWakeType;
  if (nearbyActionNoWakeType == nearbyActionNoWakeType)
  {
    goto LABEL_239;
  }

LABEL_228:
  v274 = "?";
  if (nearbyActionNoWakeType == 1)
  {
    v275 = "PrecisionFinding";
  }

  else
  {
    v275 = "?";
  }

  if (nearbyActionNoWakeType)
  {
    v276 = v275;
  }

  else
  {
    v276 = "Unspecified";
  }

  if (nearbyActionNoWakeType == 1)
  {
    v274 = "PrecisionFinding";
  }

  if (!nearbyActionNoWakeType)
  {
    v274 = "Unspecified";
  }

  v430 = v276;
  v489 = v274;
  v277 = nearbyActionNoWakeType;
  CUAppendF();
  v278 = v9;

  self->_nearbyActionNoWakeType = v277;
  v73 = 1;
  v9 = v278;
LABEL_239:
  nearbyActionNWPrecisionFindingStatus = [advertiserCopy nearbyActionNWPrecisionFindingStatus];
  v516 = v230;
  if (nearbyActionNWPrecisionFindingStatus != self->_nearbyActionNWPrecisionFindingStatus)
  {
    v280 = CUPrintFlags32();
    CUPrintFlags32();
    v490 = v431 = v280;
    CUAppendF();
    v281 = v9;

    self->_nearbyActionNWPrecisionFindingStatus = nearbyActionNWPrecisionFindingStatus;
    v73 = 1;
    v9 = v281;
  }

  nearbyActionNoWakeAuthTagData = [advertiserCopy nearbyActionNoWakeAuthTagData];
  nearbyActionNoWakeAuthTagData = self->_nearbyActionNoWakeAuthTagData;
  v284 = nearbyActionNoWakeAuthTagData;
  v285 = nearbyActionNoWakeAuthTagData;
  if (v284 == v285)
  {

    v290 = v284;
LABEL_260:

    goto LABEL_261;
  }

  if ((v284 != 0) == (v285 == 0))
  {

    goto LABEL_259;
  }

  v286 = v285;
  v287 = [(NSData *)v284 isEqual:v285];

  if ((v287 & 1) == 0)
  {
LABEL_259:
    v303 = self->_nearbyActionNoWakeAuthTagData;
    v304 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v491 = v432 = v304;
    CUAppendF();
    v305 = v9;

    v306 = v284;
    v290 = self->_nearbyActionNoWakeAuthTagData;
    self->_nearbyActionNoWakeAuthTagData = v306;
    v9 = v305;
    v73 = 1;
    goto LABEL_260;
  }

LABEL_261:
  nearbyActionNoWakeConfigData = [advertiserCopy nearbyActionNoWakeConfigData];
  nearbyActionNoWakeConfigData = self->_nearbyActionNoWakeConfigData;
  v309 = nearbyActionNoWakeConfigData;
  v310 = nearbyActionNoWakeConfigData;
  v522 = v309;
  if (v309 == v310)
  {

LABEL_268:
    goto LABEL_269;
  }

  if ((v309 != 0) == (v310 == 0))
  {

    goto LABEL_267;
  }

  v311 = v310;
  v312 = [(NSData *)v309 isEqual:v310];

  if ((v312 & 1) == 0)
  {
LABEL_267:
    v313 = self->_nearbyActionNoWakeConfigData;
    v314 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v494 = v435 = v314;
    CUAppendF();
    v315 = v9;

    v316 = v522;
    v309 = self->_nearbyActionNoWakeConfigData;
    self->_nearbyActionNoWakeConfigData = v316;
    v9 = v315;
    v73 = 1;
    goto LABEL_268;
  }

LABEL_269:
  proximityServicePayload = [advertiserCopy proximityServicePayload];
  proximityServicePayload = self->_proximityServicePayload;
  v319 = proximityServicePayload;
  v320 = proximityServicePayload;
  v514 = v284;
  if (v319 == v320)
  {

    v348 = v319;
  }

  else
  {
    if ((v319 != 0) != (v320 == 0))
    {
      v321 = v320;
      v322 = [(NSData *)v319 isEqual:v320];

      if (v322)
      {
        proximityServiceSubType = [advertiserCopy proximityServiceSubType];
        proximityServiceSubType = self->_proximityServiceSubType;
        v513 = v319;
        if (proximityServiceSubType == proximityServiceSubType)
        {
          goto LABEL_274;
        }

        goto LABEL_273;
      }
    }

    else
    {
    }

    v350 = self->_proximityServicePayload;
    v73 = 1;
    v351 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v511 = v495 = v351;
    v436 = "pxSP";
    CUAppendF();
    v352 = v9;

    v353 = v319;
    v348 = self->_proximityServicePayload;
    self->_proximityServicePayload = v353;
    v9 = v352;
  }

  proximityServiceSubType = [advertiserCopy proximityServiceSubType];
  proximityServiceSubType = self->_proximityServiceSubType;
  v513 = v319;
  if (proximityServiceSubType != proximityServiceSubType)
  {
LABEL_273:
    v325 = proximityServiceSubType;
    v495 = proximityServiceSubType;
    v511 = proximityServiceSubType;
    v436 = "pxSS";
    CUAppendF();
    v326 = v9;

    self->_proximityServiceSubType = v325;
    v73 = 1;
    v9 = v326;
  }

LABEL_274:
  safetyAlertsAlertData = [advertiserCopy safetyAlertsAlertData];
  if (safetyAlertsAlertData != self->_safetyAlertsAlertData)
  {
    v73 = 1;
    v328 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v496 = v437 = v328;
    CUAppendF();
    v329 = v9;

    objc_storeStrong(&self->_safetyAlertsAlertData, safetyAlertsAlertData);
    v9 = v329;
  }

  safetyAlertsAlertID = [advertiserCopy safetyAlertsAlertID];
  v512 = safetyAlertsAlertID;
  if (safetyAlertsAlertID != self->_safetyAlertsAlertID)
  {
    v73 = 1;
    v331 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v497 = v438 = v331;
    CUAppendF();
    v332 = v9;

    objc_storeStrong(&self->_safetyAlertsAlertID, safetyAlertsAlertID);
    v9 = v332;
  }

  safetyAlertsSignature = [advertiserCopy safetyAlertsSignature];
  if (safetyAlertsSignature != self->_safetyAlertsSignature)
  {
    v73 = 1;
    v334 = CUPrintNSDataHex();
    CUPrintNSDataHex();
    v498 = v439 = v334;
    CUAppendF();
    v335 = v9;

    objc_storeStrong(&self->_safetyAlertsSignature, safetyAlertsSignature);
    v9 = v335;
  }

  safetyAlertsVersion = [advertiserCopy safetyAlertsVersion];
  if (safetyAlertsVersion != self->_safetyAlertsVersion)
  {
    v337 = safetyAlertsVersion;
    safetyAlertsVersion = self->_safetyAlertsVersion;
    v499 = safetyAlertsVersion;
    CUAppendF();
    v338 = v9;

    self->_safetyAlertsVersion = v337;
    v73 = 1;
    v9 = v338;
  }

  softwareUpdateActionType = [advertiserCopy softwareUpdateActionType];
  if (softwareUpdateActionType != self->_softwareUpdateActionType)
  {
    v340 = softwareUpdateActionType;
    softwareUpdateActionType = self->_softwareUpdateActionType;
    v500 = softwareUpdateActionType;
    CUAppendF();
    v341 = v9;

    self->_softwareUpdateActionType = v340;
    v73 = 1;
    v9 = v341;
  }

  softwareUpdateDataArray = [advertiserCopy softwareUpdateDataArray];
  softwareUpdateDataArray = self->_softwareUpdateDataArray;
  v344 = softwareUpdateDataArray;
  v345 = softwareUpdateDataArray;
  if (v344 == v345)
  {
    v521 = v73;

    v349 = v344;
  }

  else
  {
    if ((v344 != 0) != (v345 == 0))
    {
      v346 = v345;
      v347 = [(NSArray *)v344 isEqual:v345];

      if (v347)
      {
        v521 = v73;
        goto LABEL_297;
      }
    }

    else
    {
    }

    v354 = self->_softwareUpdateDataArray;
    v355 = CUPrintNSObjectOneLine();
    CUPrintNSObjectOneLine();
    v501 = v442 = v355;
    CUAppendF();
    v356 = v9;

    v357 = v344;
    v349 = self->_softwareUpdateDataArray;
    self->_softwareUpdateDataArray = v357;
    v521 = 1;
    v9 = v356;
  }

LABEL_297:
  watchSetupData = [advertiserCopy watchSetupData];
  watchSetupData = self->_watchSetupData;
  v360 = watchSetupData;
  v361 = watchSetupData;
  v362 = v361;
  if (v360 == v361)
  {

    v365 = v519;
    v364 = v520;
    v366 = v517;
    var0 = self->_ucat->var0;
    if (!v9)
    {
      goto LABEL_308;
    }

LABEL_301:
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_341;
        }

        ucat = self->_ucat;
      }

      goto LABEL_310;
    }

    goto LABEL_341;
  }

  if ((v360 != 0) == (v361 == 0))
  {

LABEL_307:
    v368 = self->_watchSetupData;
    v521 = 1;
    v369 = CUPrintNSDataHex();
    v502 = CUPrintNSDataHex();
    CUAppendF();
    v370 = v268;
    v371 = safetyAlertsAlertData;
    v372 = v9;

    v373 = v360;
    v374 = self->_watchSetupData;
    self->_watchSetupData = v373;
    v9 = v372;
    safetyAlertsAlertData = v371;
    v268 = v370;

    v365 = v519;
    v364 = v520;
    v366 = v517;
    var0 = self->_ucat->var0;
    if (!v9)
    {
      goto LABEL_308;
    }

    goto LABEL_301;
  }

  v363 = [(NSData *)v360 isEqual:v361];

  if ((v363 & 1) == 0)
  {
    goto LABEL_307;
  }

  v365 = v519;
  v364 = v520;
  v366 = v517;
  var0 = self->_ucat->var0;
  if (v9)
  {
    goto LABEL_301;
  }

LABEL_308:
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_341;
      }

      v394 = self->_ucat;
    }

LABEL_310:
    LogPrintF_safe();
  }

LABEL_341:

  return v521;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__CBAdvertiser_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activate
{
  v3 = self->_mockID;
  v16 = v3;
  if (v3)
  {
    CBMockAddOrUpdateAdvertiser(v3, self);
    v4 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v4)
    {
      v4[2](v4, 0);
    }

LABEL_26:

    goto LABEL_27;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_xpcListenerEndpoint)
  {
    v6 = 1;
  }

  else
  {
    v6 = gCBDaemonServer == 0;
  }

  v7 = !v6;
  self->_direct = v7;
  if (self->_invalidateCalled)
  {
    v4 = NSErrorF();
    var0 = self->_ucat->var0;
    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v14 = self->_ucat;
      }

      v15 = CUPrintNSError();
      LogPrintF_safe();
    }

LABEL_20:
    v10 = MEMORY[0x1C68DF720](self->_activateCompletion);
    v11 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v10)
    {
      v10[2](v10, v4);
    }

    else
    {
      v12 = MEMORY[0x1C68DF720](self->_errorHandler);
      v13 = v12;
      if (v12)
      {
        (*(v12 + 16))(v12, v4);
      }
    }

    goto LABEL_26;
  }

  if (v7)
  {
    [(CBAdvertiser *)self _activateDirectStart];
  }

  else
  {
    [(CBAdvertiser *)self _activateXPCStart:0];
  }

LABEL_27:
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    LogPrintF_safe();
  }

LABEL_5:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__CBAdvertiser__activateDirectStart__block_invoke;
  v6[3] = &unk_1E811D5F8;
  v6[4] = self;
  [gCBDaemonServer activateCBAdvertiser:self completion:{v6, clientID}];
}

void __36__CBAdvertiser__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 184);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CBAdvertiser__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __36__CBAdvertiser__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v15 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = **(v4 + 32);
  if (*(a1 + 40))
  {
    if (v5 > 90)
    {
      goto LABEL_9;
    }

    if (v5 == -1)
    {
      v6 = *(v4 + 32);
      if (!_LogCategory_Initialize())
      {
LABEL_9:
        if (v15)
        {
          (*(v15 + 16))(v15, *(a1 + 40));
        }

        else
        {
          v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 192));
          v8 = v7;
          if (v7)
          {
            (*(v7 + 16))(v7, *(a1 + 40));
          }
        }

        goto LABEL_17;
      }

      v11 = *(a1 + 40);
      v12 = *(*(a1 + 32) + 32);
    }

    v14 = CUPrintNSError();
    LogPrintF_safe();

    goto LABEL_9;
  }

  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v9 = *(v4 + 32);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v13 = *(*(a1 + 32) + 32);
    }

    LogPrintF_safe();
  }

LABEL_15:
  v10 = v15;
  if (!v15)
  {
    goto LABEL_18;
  }

  (*(v15 + 16))(v15, 0);
LABEL_17:
  v10 = v15;
LABEL_18:
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      goto LABEL_7;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v9 = self->_ucat;
    }

LABEL_7:
    LogPrintF_safe();
  }

LABEL_11:
  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBAdvertiser *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "AdvA");
  _ensureXPCStarted = [(CBAdvertiser *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __34__CBAdvertiser__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__CBAdvertiser__activateXPCCompleted___block_invoke;
  v12[3] = &unk_1E811D378;
  v12[4] = self;
  v12[5] = &v13;
  v5 = MEMORY[0x1C68DF720](v12);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v14[5];
  v14[5] = v6;

  if (v14[5])
  {
    goto LABEL_9;
  }

  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  self->_softwareUpdateDataArrayCountMaximumLimit = xpc_dictionary_get_int64(completedCopy, "aSuda");
  self->_bluetoothState = xpc_dictionary_get_int64(completedCopy, "pwrS");
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  v9 = MEMORY[0x1C68DF720](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v9)
  {
    v9[2](v9, 0);
  }

LABEL_9:
  v5[2](v5);

  _Block_object_dispose(&v13, 8);
}

void __38__CBAdvertiser__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = **(v2 + 32);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v4 = *(v2 + 32);
      v5 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v10 = *(v2 + 32);
      v11 = *(*(*(a1 + 40) + 8) + 40);
    }

    v12 = CUPrintNSError();
    LogPrintF_safe();

    v2 = *(a1 + 32);
  }

LABEL_7:
  v13 = MEMORY[0x1C68DF720](*(v2 + 16));
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  if (v13)
  {
    v13[2](v13, *(*(*(a1 + 40) + 8) + 40));
  }

  else
  {
    v8 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 192));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, *(*(*(a1 + 40) + 8) + 40));
    }
  }
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
  }

  else
  {
    v6 = self->_xpcListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__CBAdvertiser__ensureXPCStarted__block_invoke;
    v10[3] = &unk_1E811D620;
    v10[4] = self;
    v9 = mach_service;
    v11 = v9;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_activate(v9);

    v4 = v9;
  }

  return v4;
}

void *__33__CBAdvertiser__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_6:
  v5 = MEMORY[0x1C68DF720](self->_interruptionHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }

  self->_bluetoothState = 1;
  v7 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }

  [(CBAdvertiser *)self _activateXPCStart:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CBAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __26__CBAdvertiser_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 26))
  {
    return;
  }

  *(v2 + 26) = 1;
  v4 = *(a1 + 32);
  v5 = **(v4 + 32);
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v10 = *(v4 + 32);
    }

    v11 = v4;
    LogPrintF_safe();
    v4 = *(a1 + 32);
  }

LABEL_6:
  v7 = *(v4 + 256);
  v12 = v7;
  if (v7)
  {
    CBMockRemoveAdvertiser(v7, *(a1 + 32));
  }

  v8 = *(a1 + 32);
  if (*(v8 + 25) == 1)
  {
    [v8 _invalidateDirect];
    v8 = *(a1 + 32);
  }

  v9 = *(v8 + 40);
  if (v9)
  {
    xpc_connection_cancel(v9);
  }

  [*(a1 + 32) _invalidated];
}

void __33__CBAdvertiser__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CBAdvertiser__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      selfCopy = self;
      invalidationHandler[2](self->_invalidationHandler, a2);
      self = selfCopy;
    }

    advertisingAddressChangedHandler = self->_advertisingAddressChangedHandler;
    self->_advertisingAddressChangedHandler = 0;
    selfCopy2 = self;

    bluetoothStateChangedHandler = selfCopy2->_bluetoothStateChangedHandler;
    selfCopy2->_bluetoothStateChangedHandler = 0;

    errorHandler = selfCopy2->_errorHandler;
    selfCopy2->_errorHandler = 0;

    interruptionHandler = selfCopy2->_interruptionHandler;
    selfCopy2->_interruptionHandler = 0;

    v9 = selfCopy2->_invalidationHandler;
    selfCopy2->_invalidationHandler = 0;

    selfCopy2->_invalidateDone = 1;
    var0 = selfCopy2->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_10:
        LogPrintF_safe();
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = selfCopy2->_ucat;
        goto LABEL_10;
      }
    }
  }
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CBAdvertiser__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (self->_invalidateCalled)
  {
    return;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  changesPending = selfCopy->_changesPending;
  selfCopy->_changesPending = 0;
  objc_sync_exit(selfCopy);

  var0 = selfCopy->_ucat->var0;
  if (!changesPending)
  {
    if (var0 > 10)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      ucat = selfCopy->_ucat;
    }

    LogPrintF_safe();
    return;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v7 = selfCopy->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_11:
  xdict = xpc_dictionary_create(0, 0, 0);
  [(CBAdvertiser *)selfCopy encodeWithXPCObject:xdict];
  xpc_dictionary_set_string(xdict, "mTyp", "AdvU");
  _ensureXPCStarted = [(CBAdvertiser *)selfCopy _ensureXPCStarted];
  xpc_connection_send_message(_ensureXPCStarted, xdict);
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v21 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1)
    {
LABEL_3:
      v19 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v21;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    messageCopy = v21;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBAdvertiser *)self _xpcReceivedMessage:v21];
    goto LABEL_26;
  }

  if (v21 == MEMORY[0x1E69E9E18])
  {
    [(CBAdvertiser *)self _interrupted];
    goto LABEL_26;
  }

  if (v21 == MEMORY[0x1E69E9E20])
  {
    if (self->_invalidateCalled)
    {
      goto LABEL_25;
    }

    v11 = self->_ucat->var0;
    if (v11 > 90)
    {
      goto LABEL_25;
    }

    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v18 = self->_ucat;
    }

    LogPrintF_safe();
LABEL_25:
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    [(CBAdvertiser *)self _invalidated];
    goto LABEL_26;
  }

  v7 = CUXPCDecodeNSErrorIfNeeded();
  v8 = v7;
  if (v7)
  {
    v9 = v7;

    v10 = self->_ucat->var0;
    if (v10 > 90)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v9 = NSErrorF();

    v10 = self->_ucat->var0;
    if (v10 > 90)
    {
      goto LABEL_21;
    }
  }

  if (v10 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_21;
    }

    v17 = self->_ucat;
  }

  v12 = CUPrintNSError();
  v20 = CUPrintXPC();
  LogPrintF_safe();

LABEL_21:
  v13 = MEMORY[0x1C68DF720](self->_errorHandler);
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v9);
  }

LABEL_26:
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 > 90)
    {
      goto LABEL_10;
    }

    if (var0 != -1)
    {
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
LABEL_9:
      LogPrintF_safe();
    }

LABEL_10:
    v8 = messageCopy;

    goto LABEL_12;
  }

  v5 = string;
  if (!strcmp(string, "AdAC"))
  {
    [(CBAdvertiser *)self _xpcReceivedAdvertisingAddressChanged:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "PwrC"))
    {
      v6 = self->_ucat->var0;
      if (v6 > 90)
      {
        goto LABEL_10;
      }

      if (v6 != -1)
      {
        goto LABEL_9;
      }

      if (_LogCategory_Initialize())
      {
        v10 = self->_ucat;
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    [(CBAdvertiser *)self _xpcReceivedPowerStateChanged:messageCopy];
    v8 = messageCopy;
  }

LABEL_12:
}

- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed
{
  changedCopy = changed;
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_4;
      }

      v9 = self->_ucat;
    }

    LogPrintF_safe();
  }

LABEL_4:
  v7 = MEMORY[0x1C68DF720](self->_advertisingAddressChangedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7);
  }
}

- (void)_xpcReceivedPowerStateChanged:(id)changed
{
  xdict = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(xdict, "pwrS");
    v4 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBAdvertiser _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (CBAdvertiser)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(CBAdvertiser *)self init];

  if (!v7)
  {
    if (!error)
    {
      goto LABEL_175;
    }

LABEL_171:
    NSErrorF();
    *error = v56 = 0;
    goto LABEL_167;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_175;
    }

    goto LABEL_171;
  }

  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_advertiseRate = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v9 = OUTLINED_FUNCTION_5();
  if (v9 == 6)
  {
    v7->_clientID = 0;
  }

  else if (v9 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v10 = OUTLINED_FUNCTION_5();
  if (v10 == 6)
  {
    v7->_internalFlags = 0;
  }

  else if (v10 == 5)
  {
    goto LABEL_175;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v11 = OUTLINED_FUNCTION_5();
  if (v11 == 6)
  {
    v7->_useCase = 0;
  }

  else if (v11 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v12 = OUTLINED_FUNCTION_3_1();
  if (v12 == 6)
  {
    v7->_airdropFlags = 0;
  }

  else if (v12 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v13 = OUTLINED_FUNCTION_3_1();
  if (v13 == 6)
  {
    v7->_airdropModel = 0;
  }

  else if (v13 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    v7->_airdropVersion = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v15 = OUTLINED_FUNCTION_4_0();
  if (v15 == 6)
  {
    v7->_airdropHash1 = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_4_0();
  if (v16 == 6)
  {
    v7->_airdropHash2 = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v17 = OUTLINED_FUNCTION_4_0();
  if (v17 == 6)
  {
    v7->_airdropHash3 = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v18 = OUTLINED_FUNCTION_4_0();
  if (v18 == 6)
  {
    v7->_airdropHash4 = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v19 = OUTLINED_FUNCTION_3_1();
  if (v19 == 6)
  {
    v7->_airdropConfigData = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v20 = OUTLINED_FUNCTION_3_1();
  if (v20 == 6)
  {
    v7->_airplaySourceFlags = 0;
  }

  else if (v20 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v21 = OUTLINED_FUNCTION_3_1();
  if (v21 == 6)
  {
    v7->_airplayTargetConfigSeed = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_3_1();
  if (v22 == 6)
  {
    v7->_airplayTargetFlags = 0;
  }

  else if (v22 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v23 = OUTLINED_FUNCTION_5();
  if (v23 == 6)
  {
    v7->_airplayTargetIPv4 = 0;
  }

  else if (v23 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v24 = OUTLINED_FUNCTION_4_0();
  if (v24 == 6)
  {
    v7->_airplayTargetPort = 0;
  }

  else if (v24 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_3_1();
  if (v25 == 6)
  {
    v7->_dsActionFlags = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_175;
  }

  v26 = CUXPCDecodeSInt64RangedEx();
  if (v26 == 6)
  {
    v7->_dsActionMeasuredPower = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v27 = OUTLINED_FUNCTION_3_1();
  if (v27 == 6)
  {
    v7->_dsActionTieBreaker = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v28 = OUTLINED_FUNCTION_3_1();
  if (v28 == 6)
  {
    v7->_dsInfoVehicleConfidence = 0;
  }

  else if (v28 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v29 = OUTLINED_FUNCTION_3_1();
  if (v29 == 6)
  {
    v7->_dsInfoVehicleState = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v30 = OUTLINED_FUNCTION_3_1();
  if (v30 == 6)
  {
    v7->_heySiriConfidence = 0;
  }

  else if (v30 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v31 = OUTLINED_FUNCTION_4_0();
  if (v31 == 6)
  {
    v7->_heySiriDeviceClass = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v32 = OUTLINED_FUNCTION_4_0();
  if (v32 == 6)
  {
    v7->_heySiriPerceptualHash = 0;
  }

  else if (v32 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v33 = OUTLINED_FUNCTION_3_1();
  if (v33 == 6)
  {
    v7->_heySiriProductType = 0;
  }

  else if (v33 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v34 = OUTLINED_FUNCTION_3_1();
  if (v34 == 6)
  {
    v7->_heySiriRandom = 0;
  }

  else if (v34 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_3_1();
  if (v35 == 6)
  {
    v7->_heySiriSNR = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_175;
  }

  if (!OUTLINED_FUNCTION_2_1())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v36 = OUTLINED_FUNCTION_3_1();
  if (v36 == 6)
  {
    v7->_nearbyActionColorCode = 0;
  }

  else if (v36 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v37 = OUTLINED_FUNCTION_5();
  if (v37 == 6)
  {
    v7->_nearbyActionFlags = 0;
  }

  else if (v37 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v38 = OUTLINED_FUNCTION_3_1();
  if (v38 == 6)
  {
    v7->_nearbyActionType = 0;
  }

  else if (v38 == 5)
  {
    goto LABEL_175;
  }

  if (!OUTLINED_FUNCTION_2_1())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v39 = OUTLINED_FUNCTION_5();
  if (v39 == 6)
  {
    v7->_nearbyActionV2Flags = 0;
  }

  else if (v39 == 5)
  {
    goto LABEL_175;
  }

  if (!OUTLINED_FUNCTION_2_1())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v40 = OUTLINED_FUNCTION_3_1();
  if (v40 == 6)
  {
    v7->_nearbyActionV2Type = 0;
  }

  else if (v40 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v41 = OUTLINED_FUNCTION_5();
  if (v41 == 6)
  {
    v7->_nearbyInfoFlags = 0;
  }

  else if (v41 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v42 = OUTLINED_FUNCTION_3_1();
  if (v42 == 6)
  {
    v7->_nearbyInfoStatusTime = 0;
  }

  else if (v42 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v43 = OUTLINED_FUNCTION_3_1();
  if (v43 == 6)
  {
    v7->_nearbyInfoStatusType = 0;
  }

  else if (v43 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v44 = OUTLINED_FUNCTION_3_1();
  if (v44 == 6)
  {
    v7->_nearbyInfoV2DecryptedFlags = 0;
  }

  else if (v44 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v45 = OUTLINED_FUNCTION_3_1();
  if (v45 == 6)
  {
    v7->_nearbyInfoV2Flags = 0;
  }

  else if (v45 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v46 = OUTLINED_FUNCTION_3_1();
  if (v46 == 6)
  {
    v7->_nearbyInfoV2InvitationCounter = 0;
  }

  else if (v46 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v47 = OUTLINED_FUNCTION_3_1();
  if (v47 == 6)
  {
    v7->_nearbyInfoV2InvitationTypes = 0;
  }

  else if (v47 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v48 = OUTLINED_FUNCTION_3_1();
  if (v48 == 6)
  {
    v7->_nearbyInfoV2InvitationRouteType = 0;
  }

  else if (v48 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v49 = OUTLINED_FUNCTION_3_1();
  if (v49 == 6)
  {
    v7->_proximityServiceSubType = 0;
  }

  else if (v49 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  v50 = v7->_safetyAlertsAlertData;
  v51 = v50;
  if (v50 && [(NSData *)v50 length]>= 0x1D)
  {
    if (error)
    {
      *error = NSErrorF();
    }

    goto LABEL_175;
  }

  if (!OUTLINED_FUNCTION_2_1() || !CUXPCDecodeNSDataOfLength())
  {
LABEL_175:
    v56 = 0;
    goto LABEL_167;
  }

  OUTLINED_FUNCTION_0();
  v52 = OUTLINED_FUNCTION_3_1();
  if (v52 == 6)
  {
    v7->_safetyAlertsVersion = 0;
  }

  else if (v52 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v53 = CUXPCDecodeUInt64RangedEx();
  if (v53 == 6)
  {
    v7->_softwareUpdateActionType = 0;
  }

  else if (v53 == 5)
  {
    goto LABEL_175;
  }

  if (!CUXPCDecodeNSArrayOfNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v54 = OUTLINED_FUNCTION_3_1();
  if (v54 == 6)
  {
    v7->_nearbyActionNoWakeType = 0;
  }

  else if (v54 == 5)
  {
    goto LABEL_175;
  }

  OUTLINED_FUNCTION_0();
  v55 = OUTLINED_FUNCTION_3_1();
  if (v55 != 6)
  {
    if (v55 != 5)
    {
      goto LABEL_164;
    }

    goto LABEL_175;
  }

  v7->_nearbyActionNWPrecisionFindingStatus = 0;
LABEL_164:
  if (!OUTLINED_FUNCTION_2_1() || !CUXPCDecodeNSDataOfLength())
  {
    goto LABEL_175;
  }

  v56 = v7;
LABEL_167:

  return v56;
}

- (int)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = *(a1 + 32);
  if (*result <= 90)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 32);
    }

    return LogPrintF_safe();
  }

  return result;
}

@end