@interface HMAccessoryCapabilities
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalEqual:(id)a3;
- (BOOL)supportsCrossfadeAsAirPlaySource;
- (BOOL)supportsNetworkDiagnostics;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsStereoOdeonTTSUBypassingPrimary;
- (HMAccessoryCapabilities)initWithProtoCapabilities:(id)a3;
- (HMAccessoryCapabilities)initWithProtoData:(id)a3;
- (HMAccessoryCapabilities)initWithTagUUID:(id)a3 capabilities:(_HMAccessoryCapabilitiesStruct)a4;
- (id)pbCapabilities;
- (unint64_t)hash;
@end

@implementation HMAccessoryCapabilities

- (BOOL)supportsNetworkDiagnostics
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x8000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (HMAccessoryCapabilities)initWithProtoCapabilities:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 tag];
    v109 = [v6 initWithUUIDString:v7];

    v108 = self;
    v8 = [v4 supportsKeychainSync];
    v9 = [v4 supportsDeviceSetup];
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10 | v8;
    if ([v4 supportsKeyTransferClient])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 supportsKeyTransferServer];
    v14 = 8;
    if (!v13)
    {
      v14 = 0;
    }

    v107 = v11 | v12 | v14;
    if ([v4 supportsStandaloneMode])
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    if ([v4 supportsCloudDataSync])
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if ([v4 supportsWholeHouseAudio])
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    v105 = v15 | v16;
    v106 = v17;
    v18 = [v4 supportsAssistantAccessControl];
    v19 = 128;
    if (!v18)
    {
      v19 = 0;
    }

    v104 = v19;
    v20 = [v4 supportsHomeInvitation];
    v21 = 256;
    if (!v20)
    {
      v21 = 0;
    }

    v103 = v21;
    v22 = [v4 supportsTargetControl];
    v23 = 512;
    if (!v22)
    {
      v23 = 0;
    }

    v102 = v23;
    v24 = [v4 supportsMultiUser];
    v25 = 1024;
    if (!v24)
    {
      v25 = 0;
    }

    v100 = v25;
    v26 = [v4 supportsHomeLevelLocationServiceSetting];
    v27 = 2048;
    if (!v26)
    {
      v27 = 0;
    }

    v101 = v27;
    v28 = [v4 supportsCompanionInitiatedRestart];
    v29 = 4096;
    if (!v28)
    {
      v29 = 0;
    }

    v99 = v29;
    v30 = [v4 supportsMusicAlarm];
    v31 = 0x2000;
    if (!v30)
    {
      v31 = 0;
    }

    v98 = v31;
    v32 = [v4 supportsAnnounce];
    v33 = 0x4000;
    if (!v32)
    {
      v33 = 0;
    }

    v97 = v33;
    v34 = [v4 supportsf9cc0d9d6aa54e7];
    v35 = 0x8000;
    if (!v34)
    {
      v35 = 0;
    }

    v96 = v35;
    v36 = [v4 supportsThirdPartyMusic];
    v37 = 0x10000;
    if (!v36)
    {
      v37 = 0;
    }

    v95 = v37;
    v38 = [v4 supportsPreferredMediaUser];
    v39 = 0x20000;
    if (!v38)
    {
      v39 = 0;
    }

    v94 = v39;
    v40 = [v4 supportsThreadBorderRouter];
    v41 = 0x40000;
    if (!v40)
    {
      v41 = 0;
    }

    v93 = v41;
    v42 = [v4 supportsDoorbellChime];
    v43 = 0x80000;
    if (!v42)
    {
      v43 = 0;
    }

    v92 = v43;
    v44 = [v4 supportsUserMediaSettings];
    v45 = 0x100000;
    if (!v44)
    {
      v45 = 0;
    }

    v91 = v45;
    v46 = [v4 supportsCoordinationDoorbellChime];
    v47 = 0x200000;
    if (!v46)
    {
      v47 = 0;
    }

    v90 = v47;
    v48 = [v4 supportsHomeHub];
    v49 = 0x400000;
    if (!v48)
    {
      v49 = 0;
    }

    v89 = v49;
    v50 = [v4 supportsAudioReturnChannel];
    v51 = 0x800000;
    if (!v50)
    {
      v51 = 0;
    }

    v88 = v51;
    v52 = [v4 supportsManagedConfigurationProfile];
    v53 = 0x1000000;
    if (!v52)
    {
      v53 = 0;
    }

    v87 = v53;
    v54 = [v4 supportsCaptiveNetworks];
    v55 = 0x2000000;
    if (!v54)
    {
      v55 = 0;
    }

    v86 = v55;
    v56 = [v4 supportsMessagedHomePodSettings];
    v57 = 0x4000000;
    if (!v56)
    {
      v57 = 0;
    }

    v85 = v57;
    v58 = [v4 supportsMediaActions];
    v59 = 0x8000000;
    if (!v58)
    {
      v59 = 0;
    }

    v84 = v59;
    v60 = [v4 supports90bb069d6bx54e7];
    v61 = 0x10000000;
    if (!v60)
    {
      v61 = 0;
    }

    v83 = v61;
    v62 = [v4 supports89024c1cadcb8b00];
    v63 = 0x20000000;
    if (!v62)
    {
      v63 = 0;
    }

    v82 = v63;
    v64 = [v4 supports2c25465bb0b47366];
    v65 = 0x40000000;
    if (!v64)
    {
      v65 = 0;
    }

    v81 = v65;
    v66 = [v4 supportsInstallManagedConfigurationProfile];
    v67 = 0x80000000;
    if (!v66)
    {
      v67 = 0;
    }

    v80 = v67;
    if ([v4 supportsCoordinationFreeDoorbellChime])
    {
      v68 = 0x100000000;
    }

    else
    {
      v68 = 0;
    }

    if ([v4 supportsCompanionInitiatedObliterate])
    {
      v69 = 0x200000000;
    }

    else
    {
      v69 = 0;
    }

    if ([v4 supports45c051b0b1f0])
    {
      v70 = 0x400000000;
    }

    else
    {
      v70 = 0;
    }

    if ([v4 supportsTVOSUpdateManualUpdateAvailableNotification])
    {
      v71 = 0x800000000;
    }

    else
    {
      v71 = 0;
    }

    if ([v4 supportsWiFiRepairV2])
    {
      v72 = 0x1000000000;
    }

    else
    {
      v72 = 0;
    }

    if ([v4 supportsSoftwareUpdateV2])
    {
      v73 = 0x2000000000;
    }

    else
    {
      v73 = 0;
    }

    if ([v4 supportsStereoOdeonTTSUBypassingPrimary])
    {
      v74 = 0x4000000000;
    }

    else
    {
      v74 = 0;
    }

    if ([v4 supportsNetworkDiagnostics])
    {
      v75 = 0x8000000000;
    }

    else
    {
      v75 = 0;
    }

    if ([v4 supports24b183bad693415])
    {
      v76 = 0x10000000000;
    }

    else
    {
      v76 = 0;
    }

    v77 = [v4 clearsKeychainWhenRemovedFromHome];
    v78 = 0x20000000000;
    if (!v77)
    {
      v78 = 0;
    }

    self = [(HMAccessoryCapabilities *)v108 initWithTagUUID:v109 capabilities:v107 | v105 | v106 | v104 | v103 | v102 | v100 | v101 | v99 | v98 | v97 | v96 | v95 | v94 | v93 | v92 | v91 | v90 | v89 | v88 | v87 | v86 | v85 | v84 | v83 | v82 | v81 | v80 | v68 | v69 | v70 | v71 | v72 | v73 | v74 | v75 | v76 | v78];

    v5 = self;
  }

  return v5;
}

- (HMAccessoryCapabilities)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMProtoAccessoryCapabilities alloc] initWithData:v4];

  if (v5)
  {
    self = [(HMAccessoryCapabilities *)self initWithProtoCapabilities:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pbCapabilities
{
  v3 = objc_alloc_init(HMProtoAccessoryCapabilities);
  v4 = [(HMAccessoryCapabilities *)self tag];
  [(HMProtoAccessoryCapabilities *)v3 setTag:v4];

  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeychainSync:[(HMAccessoryCapabilities *)self supportsKeychainSync]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsDeviceSetup:[(HMAccessoryCapabilities *)self supportsDeviceSetup]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeyTransferClient:[(HMAccessoryCapabilities *)self supportsKeyTransferClient]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsKeyTransferServer:[(HMAccessoryCapabilities *)self supportsKeyTransferServer]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsStandaloneMode:[(HMAccessoryCapabilities *)self supportsStandaloneMode]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCloudDataSync:[(HMAccessoryCapabilities *)self supportsCloudDataSync]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsWholeHouseAudio:[(HMAccessoryCapabilities *)self supportsWholeHouseAudio]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAssistantAccessControl:[(HMAccessoryCapabilities *)self supportsAssistantAccessControl]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeInvitation:[(HMAccessoryCapabilities *)self supportsHomeInvitation]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsTargetControl:[(HMAccessoryCapabilities *)self supportsTargetControl]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMultiUser:[(HMAccessoryCapabilities *)self supportsMultiUser]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeLevelLocationServiceSetting:[(HMAccessoryCapabilities *)self supportsHomeLevelLocationServiceSetting]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCompanionInitiatedRestart:[(HMAccessoryCapabilities *)self supportsCompanionInitiatedRestart]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMusicAlarm:[(HMAccessoryCapabilities *)self supportsMusicAlarm]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAnnounce:[(HMAccessoryCapabilities *)self supportsAnnounce]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsf9cc0d9d6aa54e7:[(HMAccessoryCapabilities *)self supportsAudioAnalysis]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsThirdPartyMusic:[(HMAccessoryCapabilities *)self supportsThirdPartyMusic]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsPreferredMediaUser:[(HMAccessoryCapabilities *)self supportsPreferredMediaUser]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsThreadBorderRouter:[(HMAccessoryCapabilities *)self supportsThreadBorderRouter]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsDoorbellChime:[(HMAccessoryCapabilities *)self supportsDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsUserMediaSettings:[(HMAccessoryCapabilities *)self supportsUserMediaSettings]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCoordinationDoorbellChime:[(HMAccessoryCapabilities *)self supportsCoordinationDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsHomeHub:[(HMAccessoryCapabilities *)self supportsHomeHub]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsAudioReturnChannel:[(HMAccessoryCapabilities *)self supportsAudioReturnChannel]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsManagedConfigurationProfile:[(HMAccessoryCapabilities *)self supportsManagedConfigurationProfile]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCaptiveNetworks:[(HMAccessoryCapabilities *)self supportsCaptiveNetworks]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMessagedHomePodSettings:[(HMAccessoryCapabilities *)self supportsMessagedHomePodSettings]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsMediaActions:[(HMAccessoryCapabilities *)self supportsMediaActions]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports90bb069d6bx54e7:[(HMAccessoryCapabilities *)self supportsDropIn]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports89024c1cadcb8b00:[(HMAccessoryCapabilities *)self supportsRMVonAppleTV]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports2c25465bb0b47366:[(HMAccessoryCapabilities *)self supportsJustSiri]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsInstallManagedConfigurationProfile:[(HMAccessoryCapabilities *)self supportsInstallManagedConfigurationProfile]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCoordinationFreeDoorbellChime:[(HMAccessoryCapabilities *)self supportsCoordinationFreeDoorbellChime]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsCompanionInitiatedObliterate:[(HMAccessoryCapabilities *)self supportsCompanionInitiatedObliterate]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports45c051b0b1f0:[(HMAccessoryCapabilities *)self supportsLoreto]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsTVOSUpdateManualUpdateAvailableNotification:[(HMAccessoryCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsWiFiRepairV2:[(HMAccessoryCapabilities *)self supportsWiFiRepairV2]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsSoftwareUpdateV2:[(HMAccessoryCapabilities *)self supportsSoftwareUpdateV2]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsStereoOdeonTTSUBypassingPrimary:[(HMAccessoryCapabilities *)self supportsStereoOdeonTTSUBypassingPrimary]];
  [(HMProtoAccessoryCapabilities *)v3 setSupportsNetworkDiagnostics:[(HMAccessoryCapabilities *)self supportsNetworkDiagnostics]];
  [(HMProtoAccessoryCapabilities *)v3 setSupports24b183bad693415:[(HMAccessoryCapabilities *)self supportsCrossfadeAsAirPlaySource]];
  [(HMProtoAccessoryCapabilities *)v3 setClearsKeychainWhenRemovedFromHome:[(HMAccessoryCapabilities *)self clearsKeychainWhenRemovedFromHome]];

  return v3;
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x10000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x4000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsRMVonAppleTV
{
  if (([(HMAccessoryCapabilities *)self capabilities]& 0x20000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)isLocalEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = [(HMAccessoryCapabilities *)self supportsKeychainSync];
  if (v7 != [v6 supportsKeychainSync])
  {
    goto LABEL_44;
  }

  v8 = [(HMAccessoryCapabilities *)self supportsDeviceSetup];
  if (v8 != [v6 supportsDeviceSetup])
  {
    goto LABEL_44;
  }

  v9 = [(HMAccessoryCapabilities *)self supportsKeyTransferClient];
  if (v9 != [v6 supportsKeyTransferClient])
  {
    goto LABEL_44;
  }

  v10 = [(HMAccessoryCapabilities *)self supportsKeyTransferServer];
  if (v10 != [v6 supportsKeyTransferServer])
  {
    goto LABEL_44;
  }

  v11 = [(HMAccessoryCapabilities *)self supportsStandaloneMode];
  if (v11 != [v6 supportsStandaloneMode])
  {
    goto LABEL_44;
  }

  v12 = [(HMAccessoryCapabilities *)self supportsCloudDataSync];
  if (v12 != [v6 supportsCloudDataSync])
  {
    goto LABEL_44;
  }

  v13 = [(HMAccessoryCapabilities *)self supportsWholeHouseAudio];
  if (v13 != [v6 supportsWholeHouseAudio])
  {
    goto LABEL_44;
  }

  v14 = [(HMAccessoryCapabilities *)self supportsAssistantAccessControl];
  if (v14 != [v6 supportsAssistantAccessControl])
  {
    goto LABEL_44;
  }

  v15 = [(HMAccessoryCapabilities *)self supportsHomeInvitation];
  if (v15 != [v6 supportsHomeInvitation])
  {
    goto LABEL_44;
  }

  v16 = [(HMAccessoryCapabilities *)self supportsTargetControl];
  if (v16 != [v6 supportsTargetControl])
  {
    goto LABEL_44;
  }

  v17 = [(HMAccessoryCapabilities *)self supportsMultiUser];
  if (v17 != [v6 supportsMultiUser])
  {
    goto LABEL_44;
  }

  v18 = [(HMAccessoryCapabilities *)self supportsHomeLevelLocationServiceSetting];
  if (v18 != [v6 supportsHomeLevelLocationServiceSetting])
  {
    goto LABEL_44;
  }

  v19 = [(HMAccessoryCapabilities *)self supportsCompanionInitiatedRestart];
  if (v19 != [v6 supportsCompanionInitiatedRestart])
  {
    goto LABEL_44;
  }

  v20 = [(HMAccessoryCapabilities *)self supportsMusicAlarm];
  if (v20 != [v6 supportsMusicAlarm])
  {
    goto LABEL_44;
  }

  v21 = [(HMAccessoryCapabilities *)self supportsAnnounce];
  if (v21 != [v6 supportsAnnounce])
  {
    goto LABEL_44;
  }

  v22 = [(HMAccessoryCapabilities *)self supportsAudioAnalysis];
  if (v22 != [v6 supportsAudioAnalysis])
  {
    goto LABEL_44;
  }

  v23 = [(HMAccessoryCapabilities *)self supportsThirdPartyMusic];
  if (v23 != [v6 supportsThirdPartyMusic])
  {
    goto LABEL_44;
  }

  v24 = [(HMAccessoryCapabilities *)self supportsPreferredMediaUser];
  if (v24 != [v6 supportsPreferredMediaUser])
  {
    goto LABEL_44;
  }

  v25 = [(HMAccessoryCapabilities *)self supportsThreadBorderRouter];
  if (v25 != [v6 supportsThreadBorderRouter])
  {
    goto LABEL_44;
  }

  v26 = [(HMAccessoryCapabilities *)self supportsDoorbellChime];
  if (v26 != [v6 supportsDoorbellChime])
  {
    goto LABEL_44;
  }

  v27 = [(HMAccessoryCapabilities *)self supportsUserMediaSettings];
  if (v27 != [v6 supportsUserMediaSettings])
  {
    goto LABEL_44;
  }

  v28 = [(HMAccessoryCapabilities *)self supportsCoordinationDoorbellChime];
  if (v28 != [v6 supportsCoordinationDoorbellChime])
  {
    goto LABEL_44;
  }

  v29 = [(HMAccessoryCapabilities *)self supportsHomeHub];
  if (v29 != [v6 supportsHomeHub])
  {
    goto LABEL_44;
  }

  v30 = [(HMAccessoryCapabilities *)self supportsAudioReturnChannel];
  if (v30 != [v6 supportsAudioReturnChannel])
  {
    goto LABEL_44;
  }

  v31 = [(HMAccessoryCapabilities *)self supportsManagedConfigurationProfile];
  if (v31 != [v6 supportsManagedConfigurationProfile])
  {
    goto LABEL_44;
  }

  v32 = [(HMAccessoryCapabilities *)self supportsCaptiveNetworks];
  if (v32 != [v6 supportsCaptiveNetworks])
  {
    goto LABEL_44;
  }

  v33 = [(HMAccessoryCapabilities *)self supportsMessagedHomePodSettings];
  if (v33 != [v6 supportsMessagedHomePodSettings])
  {
    goto LABEL_44;
  }

  v34 = [(HMAccessoryCapabilities *)self supportsMediaActions];
  if (v34 != [v6 supportsMediaActions])
  {
    goto LABEL_44;
  }

  v35 = [(HMAccessoryCapabilities *)self supportsDropIn];
  if (v35 != [v6 supportsDropIn])
  {
    goto LABEL_44;
  }

  v36 = [(HMAccessoryCapabilities *)self supportsRMVonAppleTV];
  if (v36 != [v6 supportsRMVonAppleTV] && (_os_feature_enabled_impl() & 1) != 0)
  {
    goto LABEL_44;
  }

  v37 = [(HMAccessoryCapabilities *)self supportsJustSiri];
  if (v37 != [v6 supportsJustSiri])
  {
    goto LABEL_44;
  }

  v38 = [(HMAccessoryCapabilities *)self supportsInstallManagedConfigurationProfile];
  if (v38 != [v6 supportsInstallManagedConfigurationProfile])
  {
    goto LABEL_44;
  }

  v39 = [(HMAccessoryCapabilities *)self supportsCoordinationFreeDoorbellChime];
  if (v39 != [v6 supportsCoordinationFreeDoorbellChime])
  {
    goto LABEL_44;
  }

  v40 = [(HMAccessoryCapabilities *)self supportsCompanionInitiatedObliterate];
  if (v40 != [v6 supportsCompanionInitiatedObliterate])
  {
    goto LABEL_44;
  }

  v41 = [(HMAccessoryCapabilities *)self supportsLoreto];
  if (v41 != [v6 supportsLoreto])
  {
    goto LABEL_44;
  }

  v42 = [(HMAccessoryCapabilities *)self supportsTVOSUpdateManualUpdateAvailableNotification];
  if (v42 != [v6 supportsTVOSUpdateManualUpdateAvailableNotification])
  {
    goto LABEL_44;
  }

  v43 = [(HMAccessoryCapabilities *)self supportsWiFiRepairV2];
  if (v43 != [v6 supportsWiFiRepairV2])
  {
    goto LABEL_44;
  }

  v44 = [(HMAccessoryCapabilities *)self supportsSoftwareUpdateV2];
  if (v44 != [v6 supportsSoftwareUpdateV2])
  {
    goto LABEL_44;
  }

  v47 = [(HMAccessoryCapabilities *)self supportsStereoOdeonTTSUBypassingPrimary];
  if (v47 != [v6 supportsStereoOdeonTTSUBypassingPrimary] && (_os_feature_enabled_impl() & 1) != 0)
  {
    goto LABEL_44;
  }

  if (((v48 = -[HMAccessoryCapabilities supportsNetworkDiagnostics](self, "supportsNetworkDiagnostics"), v48 == [v6 supportsNetworkDiagnostics]) || (_os_feature_enabled_impl() & 1) == 0) && ((v49 = -[HMAccessoryCapabilities supportsCrossfadeAsAirPlaySource](self, "supportsCrossfadeAsAirPlaySource"), v49 == objc_msgSend(v6, "supportsCrossfadeAsAirPlaySource")) || (_os_feature_enabled_impl() & 1) == 0))
  {
    v50 = [(HMAccessoryCapabilities *)self clearsKeychainWhenRemovedFromHome];
    v45 = v50 ^ [v6 clearsKeychainWhenRemovedFromHome] ^ 1;
  }

  else
  {
LABEL_44:
    LOBYTE(v45) = 0;
  }

  return v45;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryCapabilities *)self tag];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMAccessoryCapabilities *)self tag];
      v8 = [(HMAccessoryCapabilities *)v6 tag];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMAccessoryCapabilities)initWithTagUUID:(id)a3 capabilities:(_HMAccessoryCapabilitiesStruct)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMAccessoryCapabilities;
  v7 = [(HMAccessoryCapabilities *)&v11 init];
  if (v7)
  {
    v8 = [v6 UUIDString];
    tag = v7->_tag;
    v7->_tag = v8;

    v7->_capabilities = a4;
  }

  return v7;
}

@end