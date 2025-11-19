@interface HMResidentCapabilities
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalEqual:(id)a3;
- (BOOL)supportsHomeActivityState;
- (BOOL)supportsNativeMatter;
- (BOOL)supportsNativeMatterPlugin;
- (BOOL)supportsUWBUnlock;
- (HMResidentCapabilities)initWithProtoCapabilities:(id)a3;
- (HMResidentCapabilities)initWithProtoData:(id)a3;
- (HMResidentCapabilities)initWithTagUUID:(id)a3 capabilities:(_HMResidentCapabilitiesStruct)a4;
- (id)pbCapabilities;
- (unint64_t)hash;
@end

@implementation HMResidentCapabilities

- (HMResidentCapabilities)initWithProtoCapabilities:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [v4 tag];
    v100 = [v6 initWithUUIDString:v7];

    v99 = self;
    v8 = [v4 supportsCameraRecording];
    v9 = [v4 supportsRouterManagement];
    v10 = 2;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = v10 | v8;
    if ([v4 supportsShortcutActions])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 supportsMediaActions];
    v14 = 8;
    if (!v13)
    {
      v14 = 0;
    }

    v98 = v11 | v12 | v14;
    if ([v4 supportsCameraSignificantEventNotifications])
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    if ([v4 supportsFirmwareUpdate])
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if ([v4 supportsResidentFirmwareUpdate])
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    v96 = v15 | v16;
    v97 = v17;
    v18 = [v4 supportsCameraActivityZones];
    v19 = 128;
    if (!v18)
    {
      v19 = 0;
    }

    v95 = v19;
    v20 = [v4 supportsFaceClassification];
    v21 = 256;
    if (!v20)
    {
      v21 = 0;
    }

    v94 = v21;
    v22 = [v4 supportsNaturalLighting];
    v23 = 512;
    if (!v22)
    {
      v23 = 0;
    }

    v93 = v23;
    v24 = [v4 supportsCameraRecordingReachabilityNotifications];
    v25 = 1024;
    if (!v24)
    {
      v25 = 0;
    }

    v92 = v25;
    v26 = [v4 supportsAnnounce];
    v27 = 2048;
    if (!v26)
    {
      v27 = 0;
    }

    v91 = v27;
    v28 = [v4 supportsWakeOnLAN];
    v29 = 4096;
    if (!v28)
    {
      v29 = 0;
    }

    v90 = v29;
    v30 = [v4 supportsLockNotificationContext];
    v31 = 0x2000;
    if (!v30)
    {
      v31 = 0;
    }

    v89 = v31;
    v32 = [v4 supportsWalletKey];
    v33 = 0x4000;
    if (!v32)
    {
      v33 = 0;
    }

    v88 = v33;
    v34 = [v4 supportsCameraPackageDetection];
    v35 = 0x8000;
    if (!v34)
    {
      v35 = 0;
    }

    v87 = v35;
    v36 = [v4 supportsAccessCodes];
    v37 = 0x10000;
    if (!v36)
    {
      v37 = 0;
    }

    v86 = v37;
    v38 = [v4 supportsCHIP];
    v39 = 0x20000;
    if (!v38)
    {
      v39 = 0;
    }

    v85 = v39;
    v40 = [v4 supportsThreadBorderRouter];
    v41 = 0x40000;
    if (!v40)
    {
      v41 = 0;
    }

    v84 = v41;
    v42 = [v4 supportsSiriEndpointSetup];
    v43 = 0x80000;
    if (!v42)
    {
      v43 = 0;
    }

    v83 = v43;
    v44 = [v4 supportsCustomMediaApplicationDestination];
    v45 = 0x100000;
    if (!v44)
    {
      v45 = 0;
    }

    v82 = v45;
    v46 = [v4 supportsUnifiedMediaNotifications];
    v47 = 0x200000;
    if (!v46)
    {
      v47 = 0;
    }

    v81 = v47;
    v48 = [v4 supportsHomeHub];
    v49 = 0x400000;
    if (!v48)
    {
      v49 = 0;
    }

    v80 = v49;
    v50 = [v4 supportsResidentFirstAccessoryCommunication];
    v51 = 0x800000;
    if (!v50)
    {
      v51 = 0;
    }

    v79 = v51;
    v52 = [v4 supportsThreadNetworkCredentialSharing];
    v53 = 0x1000000;
    if (!v52)
    {
      v53 = 0;
    }

    v78 = v53;
    v54 = [v4 supports5348b248a25f84b0c83e];
    v55 = 0x2000000;
    if (!v54)
    {
      v55 = 0;
    }

    v77 = v55;
    v56 = [v4 supportsEventLog];
    v57 = 0x4000000;
    if (!v56)
    {
      v57 = 0;
    }

    v76 = v57;
    v58 = [v4 supportsMatterTTU];
    v59 = 0x8000000;
    if (!v58)
    {
      v59 = 0;
    }

    v75 = v59;
    v60 = [v4 supportsDistributedExecutionOnPrimary];
    v61 = 0x10000000;
    if (!v60)
    {
      v61 = 0;
    }

    if ([v4 supportsResidentActionSetStateEvaluation])
    {
      v62 = 0x20000000;
    }

    else
    {
      v62 = 0;
    }

    if ([v4 supports9907491178])
    {
      v63 = 0x40000000;
    }

    else
    {
      v63 = 0;
    }

    if ([v4 supportsRestrictedGuest])
    {
      v64 = 0x80000000;
    }

    else
    {
      v64 = 0;
    }

    if ([v4 supportsMatterOwnerCertFetch])
    {
      v65 = 0x100000000;
    }

    else
    {
      v65 = 0;
    }

    if ([v4 supportsa15324f096ec183d])
    {
      v66 = 0x200000000;
    }

    else
    {
      v66 = 0;
    }

    if ([v4 supportsResidentSelection])
    {
      v67 = 0x400000000;
    }

    else
    {
      v67 = 0;
    }

    if ([v4 supports946950341b318ffd])
    {
      v68 = 0x800000000;
    }

    else
    {
      v68 = 0;
    }

    if ([v4 supports12r9go0ci9109])
    {
      v69 = 0x1000000000;
    }

    else
    {
      v69 = 0;
    }

    if ([v4 supportsheephfaid6gg1p54])
    {
      v70 = 0x2000000000;
    }

    else
    {
      v70 = 0;
    }

    v71 = [v4 supports03e098e86062k];
    v72 = 0x4000000000;
    if (!v71)
    {
      v72 = 0;
    }

    self = [(HMResidentCapabilities *)v99 initWithTagUUID:v100 capabilities:v98 | v96 | v97 | v95 | v94 | v93 | v92 | v91 | v90 | v89 | v88 | v87 | v86 | v85 | v84 | v83 | v82 | v81 | v80 | v79 | v78 | v77 | v76 | v75 | v74 | v62 | v63 | v64 | v65 | v66 | v67 | v68 | v69 | v70 | v72];

    v5 = self;
  }

  return v5;
}

- (HMResidentCapabilities)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMProtoResidentCapabilities alloc] initWithData:v4];

  if (v5)
  {
    self = [(HMResidentCapabilities *)self initWithProtoCapabilities:v5];
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
  v3 = objc_alloc_init(HMProtoResidentCapabilities);
  v4 = [(HMResidentCapabilities *)self tag];
  [(HMProtoResidentCapabilities *)v3 setTag:v4];

  [(HMProtoResidentCapabilities *)v3 setSupportsCameraRecording:[(HMResidentCapabilities *)self supportsCameraRecording]];
  [(HMProtoResidentCapabilities *)v3 setSupportsRouterManagement:[(HMResidentCapabilities *)self supportsRouterManagement]];
  [(HMProtoResidentCapabilities *)v3 setSupportsShortcutActions:[(HMResidentCapabilities *)self supportsShortcutActions]];
  [(HMProtoResidentCapabilities *)v3 setSupportsMediaActions:[(HMResidentCapabilities *)self supportsMediaActions]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCameraSignificantEventNotifications:[(HMResidentCapabilities *)self supportsCameraSignificantEventNotifications]];
  [(HMProtoResidentCapabilities *)v3 setSupportsFirmwareUpdate:[(HMResidentCapabilities *)self supportsFirmwareUpdate]];
  [(HMProtoResidentCapabilities *)v3 setSupportsResidentFirmwareUpdate:[(HMResidentCapabilities *)self supportsResidentFirmwareUpdate]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCameraActivityZones:[(HMResidentCapabilities *)self supportsCameraActivityZones]];
  [(HMProtoResidentCapabilities *)v3 setSupportsFaceClassification:[(HMResidentCapabilities *)self supportsFaceClassification]];
  [(HMProtoResidentCapabilities *)v3 setSupportsNaturalLighting:[(HMResidentCapabilities *)self supportsNaturalLighting]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCameraRecordingReachabilityNotifications:[(HMResidentCapabilities *)self supportsCameraRecordingReachabilityNotifications]];
  [(HMProtoResidentCapabilities *)v3 setSupportsAnnounce:[(HMResidentCapabilities *)self supportsAnnounce]];
  [(HMProtoResidentCapabilities *)v3 setSupportsWakeOnLAN:[(HMResidentCapabilities *)self supportsWakeOnLAN]];
  [(HMProtoResidentCapabilities *)v3 setSupportsLockNotificationContext:[(HMResidentCapabilities *)self supportsLockNotificationContext]];
  [(HMProtoResidentCapabilities *)v3 setSupportsWalletKey:[(HMResidentCapabilities *)self supportsWalletKey]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCameraPackageDetection:[(HMResidentCapabilities *)self supportsCameraPackageDetection]];
  [(HMProtoResidentCapabilities *)v3 setSupportsAccessCodes:[(HMResidentCapabilities *)self supportsAccessCodes]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCHIP:[(HMResidentCapabilities *)self supportsCHIP]];
  [(HMProtoResidentCapabilities *)v3 setSupportsThreadBorderRouter:[(HMResidentCapabilities *)self supportsThreadBorderRouter]];
  [(HMProtoResidentCapabilities *)v3 setSupportsSiriEndpointSetup:[(HMResidentCapabilities *)self supportsSiriEndpointSetup]];
  [(HMProtoResidentCapabilities *)v3 setSupportsCustomMediaApplicationDestination:[(HMResidentCapabilities *)self supportsCustomMediaApplicationDestination]];
  [(HMProtoResidentCapabilities *)v3 setSupportsUnifiedMediaNotifications:[(HMResidentCapabilities *)self supportsUnifiedMediaNotifications]];
  [(HMProtoResidentCapabilities *)v3 setSupportsHomeHub:[(HMResidentCapabilities *)self supportsHomeHub]];
  [(HMProtoResidentCapabilities *)v3 setSupportsResidentFirstAccessoryCommunication:[(HMResidentCapabilities *)self supportsResidentFirstAccessoryCommunication]];
  [(HMProtoResidentCapabilities *)v3 setSupportsThreadNetworkCredentialSharing:[(HMResidentCapabilities *)self supportsThreadNetworkCredentialSharing]];
  [(HMProtoResidentCapabilities *)v3 setSupports5348b248a25f84b0c83e:[(HMResidentCapabilities *)self supportsMatterSharedAdminPairing]];
  [(HMProtoResidentCapabilities *)v3 setSupportsEventLog:[(HMResidentCapabilities *)self supportsEventLog]];
  [(HMProtoResidentCapabilities *)v3 setSupportsMatterTTU:[(HMResidentCapabilities *)self supportsMatterTTU]];
  [(HMProtoResidentCapabilities *)v3 setSupportsDistributedExecutionOnPrimary:[(HMResidentCapabilities *)self supportsDistributedExecutionOnPrimary]];
  [(HMProtoResidentCapabilities *)v3 setSupportsResidentActionSetStateEvaluation:[(HMResidentCapabilities *)self supportsResidentActionSetStateEvaluation]];
  [(HMProtoResidentCapabilities *)v3 setSupports9907491178:[(HMResidentCapabilities *)self supportsUWB]];
  [(HMProtoResidentCapabilities *)v3 setSupportsRestrictedGuest:[(HMResidentCapabilities *)self supportsRestrictedGuest]];
  [(HMProtoResidentCapabilities *)v3 setSupportsMatterOwnerCertFetch:[(HMResidentCapabilities *)self supportsMatterOwnerCertFetch]];
  [(HMProtoResidentCapabilities *)v3 setSupportsa15324f096ec183d:[(HMResidentCapabilities *)self supportsDistributedExecutionOnAppleMediaAccessories]];
  [(HMProtoResidentCapabilities *)v3 setSupportsResidentSelection:[(HMResidentCapabilities *)self supportsResidentSelection]];
  [(HMProtoResidentCapabilities *)v3 setSupports946950341b318ffd:[(HMResidentCapabilities *)self supportsNativeMatter]];
  [(HMProtoResidentCapabilities *)v3 setSupports12r9go0ci9109:[(HMResidentCapabilities *)self supportsHomeActivityState]];
  [(HMProtoResidentCapabilities *)v3 setSupportsheephfaid6gg1p54:[(HMResidentCapabilities *)self supportsUWBUnlock]];
  [(HMProtoResidentCapabilities *)v3 setSupports03e098e86062k:[(HMResidentCapabilities *)self supportsNativeMatterPlugin]];

  return v3;
}

- (BOOL)supportsNativeMatterPlugin
{
  if (([(HMResidentCapabilities *)self capabilities]& 0x4000000000) == 0)
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return HM_FEATURE_RVC_DEFAULTS_ENABLED() != 0;
}

- (BOOL)supportsUWBUnlock
{
  if (([(HMResidentCapabilities *)self capabilities]& 0x2000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsHomeActivityState
{
  if (([(HMResidentCapabilities *)self capabilities]& 0x1000000000) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsNativeMatter
{
  if (([(HMResidentCapabilities *)self capabilities]& 0x800000000) == 0)
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return HM_FEATURE_RVC_DEFAULTS_ENABLED() != 0;
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
    goto LABEL_40;
  }

  v7 = [(HMResidentCapabilities *)self supportsCameraRecording];
  if (v7 != [v6 supportsCameraRecording])
  {
    goto LABEL_40;
  }

  v8 = [(HMResidentCapabilities *)self supportsRouterManagement];
  if (v8 != [v6 supportsRouterManagement])
  {
    goto LABEL_40;
  }

  v9 = [(HMResidentCapabilities *)self supportsShortcutActions];
  if (v9 != [v6 supportsShortcutActions])
  {
    goto LABEL_40;
  }

  v10 = [(HMResidentCapabilities *)self supportsMediaActions];
  if (v10 != [v6 supportsMediaActions])
  {
    goto LABEL_40;
  }

  v11 = [(HMResidentCapabilities *)self supportsCameraSignificantEventNotifications];
  if (v11 != [v6 supportsCameraSignificantEventNotifications])
  {
    goto LABEL_40;
  }

  v12 = [(HMResidentCapabilities *)self supportsFirmwareUpdate];
  if (v12 != [v6 supportsFirmwareUpdate])
  {
    goto LABEL_40;
  }

  v13 = [(HMResidentCapabilities *)self supportsResidentFirmwareUpdate];
  if (v13 != [v6 supportsResidentFirmwareUpdate])
  {
    goto LABEL_40;
  }

  v14 = [(HMResidentCapabilities *)self supportsCameraActivityZones];
  if (v14 != [v6 supportsCameraActivityZones])
  {
    goto LABEL_40;
  }

  v15 = [(HMResidentCapabilities *)self supportsFaceClassification];
  if (v15 != [v6 supportsFaceClassification])
  {
    goto LABEL_40;
  }

  v16 = [(HMResidentCapabilities *)self supportsNaturalLighting];
  if (v16 != [v6 supportsNaturalLighting])
  {
    goto LABEL_40;
  }

  v17 = [(HMResidentCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  if (v17 != [v6 supportsCameraRecordingReachabilityNotifications])
  {
    goto LABEL_40;
  }

  v18 = [(HMResidentCapabilities *)self supportsAnnounce];
  if (v18 != [v6 supportsAnnounce])
  {
    goto LABEL_40;
  }

  v19 = [(HMResidentCapabilities *)self supportsWakeOnLAN];
  if (v19 != [v6 supportsWakeOnLAN])
  {
    goto LABEL_40;
  }

  v20 = [(HMResidentCapabilities *)self supportsLockNotificationContext];
  if (v20 != [v6 supportsLockNotificationContext])
  {
    goto LABEL_40;
  }

  v21 = [(HMResidentCapabilities *)self supportsWalletKey];
  if (v21 != [v6 supportsWalletKey])
  {
    goto LABEL_40;
  }

  v22 = [(HMResidentCapabilities *)self supportsCameraPackageDetection];
  if (v22 != [v6 supportsCameraPackageDetection])
  {
    goto LABEL_40;
  }

  v23 = [(HMResidentCapabilities *)self supportsAccessCodes];
  if (v23 != [v6 supportsAccessCodes])
  {
    goto LABEL_40;
  }

  v24 = [(HMResidentCapabilities *)self supportsCHIP];
  if (v24 != [v6 supportsCHIP])
  {
    goto LABEL_40;
  }

  v25 = [(HMResidentCapabilities *)self supportsThreadBorderRouter];
  if (v25 != [v6 supportsThreadBorderRouter])
  {
    goto LABEL_40;
  }

  v26 = [(HMResidentCapabilities *)self supportsSiriEndpointSetup];
  if (v26 != [v6 supportsSiriEndpointSetup])
  {
    goto LABEL_40;
  }

  v27 = [(HMResidentCapabilities *)self supportsCustomMediaApplicationDestination];
  if (v27 != [v6 supportsCustomMediaApplicationDestination])
  {
    goto LABEL_40;
  }

  v28 = [(HMResidentCapabilities *)self supportsUnifiedMediaNotifications];
  if (v28 != [v6 supportsUnifiedMediaNotifications])
  {
    goto LABEL_40;
  }

  v29 = [(HMResidentCapabilities *)self supportsHomeHub];
  if (v29 != [v6 supportsHomeHub])
  {
    goto LABEL_40;
  }

  v30 = [(HMResidentCapabilities *)self supportsResidentFirstAccessoryCommunication];
  if (v30 != [v6 supportsResidentFirstAccessoryCommunication])
  {
    goto LABEL_40;
  }

  v31 = [(HMResidentCapabilities *)self supportsThreadNetworkCredentialSharing];
  if (v31 != [v6 supportsThreadNetworkCredentialSharing])
  {
    goto LABEL_40;
  }

  v32 = [(HMResidentCapabilities *)self supportsMatterSharedAdminPairing];
  if (v32 != [v6 supportsMatterSharedAdminPairing])
  {
    goto LABEL_40;
  }

  v33 = [(HMResidentCapabilities *)self supportsEventLog];
  if (v33 != [v6 supportsEventLog])
  {
    goto LABEL_40;
  }

  v34 = [(HMResidentCapabilities *)self supportsMatterTTU];
  if (v34 != [v6 supportsMatterTTU])
  {
    goto LABEL_40;
  }

  v35 = [(HMResidentCapabilities *)self supportsDistributedExecutionOnPrimary];
  if (v35 != [v6 supportsDistributedExecutionOnPrimary])
  {
    goto LABEL_40;
  }

  v36 = [(HMResidentCapabilities *)self supportsResidentActionSetStateEvaluation];
  if (v36 != [v6 supportsResidentActionSetStateEvaluation])
  {
    goto LABEL_40;
  }

  v37 = [(HMResidentCapabilities *)self supportsUWB];
  if (v37 != [v6 supportsUWB])
  {
    goto LABEL_40;
  }

  v38 = [(HMResidentCapabilities *)self supportsRestrictedGuest];
  if (v38 != [v6 supportsRestrictedGuest])
  {
    goto LABEL_40;
  }

  v39 = [(HMResidentCapabilities *)self supportsMatterOwnerCertFetch];
  if (v39 != [v6 supportsMatterOwnerCertFetch])
  {
    goto LABEL_40;
  }

  v40 = [(HMResidentCapabilities *)self supportsDistributedExecutionOnAppleMediaAccessories];
  if (v40 != [v6 supportsDistributedExecutionOnAppleMediaAccessories])
  {
    goto LABEL_40;
  }

  v41 = [(HMResidentCapabilities *)self supportsResidentSelection];
  if (v41 != [v6 supportsResidentSelection])
  {
    goto LABEL_40;
  }

  v44 = [(HMResidentCapabilities *)self supportsNativeMatter];
  if (v44 != [v6 supportsNativeMatter] && ((_os_feature_enabled_impl() & 1) != 0 || HM_FEATURE_RVC_DEFAULTS_ENABLED()))
  {
    goto LABEL_40;
  }

  if (((v45 = -[HMResidentCapabilities supportsHomeActivityState](self, "supportsHomeActivityState"), v45 == [v6 supportsHomeActivityState]) || (_os_feature_enabled_impl() & 1) == 0) && ((v46 = -[HMResidentCapabilities supportsUWBUnlock](self, "supportsUWBUnlock"), v46 == objc_msgSend(v6, "supportsUWBUnlock")) || (_os_feature_enabled_impl() & 1) == 0) && ((v47 = -[HMResidentCapabilities supportsNativeMatterPlugin](self, "supportsNativeMatterPlugin"), v47 == objc_msgSend(v6, "supportsNativeMatterPlugin")) || (_os_feature_enabled_impl() & 1) == 0 && !HM_FEATURE_RVC_DEFAULTS_ENABLED()))
  {
    v42 = 1;
  }

  else
  {
LABEL_40:
    v42 = 0;
  }

  return v42;
}

- (unint64_t)hash
{
  v2 = [(HMResidentCapabilities *)self tag];
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
      v7 = [(HMResidentCapabilities *)self tag];
      v8 = [(HMResidentCapabilities *)v6 tag];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMResidentCapabilities)initWithTagUUID:(id)a3 capabilities:(_HMResidentCapabilitiesStruct)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMResidentCapabilities;
  v7 = [(HMResidentCapabilities *)&v11 init];
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