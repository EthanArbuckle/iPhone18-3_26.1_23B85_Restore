@interface HMResidentCapabilities
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalEqual:(id)equal;
- (BOOL)supportsHomeActivityState;
- (BOOL)supportsNativeMatter;
- (BOOL)supportsNativeMatterPlugin;
- (BOOL)supportsUWBUnlock;
- (HMResidentCapabilities)initWithProtoCapabilities:(id)capabilities;
- (HMResidentCapabilities)initWithProtoData:(id)data;
- (HMResidentCapabilities)initWithTagUUID:(id)d capabilities:(_HMResidentCapabilitiesStruct)capabilities;
- (id)pbCapabilities;
- (unint64_t)hash;
@end

@implementation HMResidentCapabilities

- (HMResidentCapabilities)initWithProtoCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  selfCopy2 = [capabilitiesCopy tag];

  if (selfCopy2)
  {
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v7 = [capabilitiesCopy tag];
    v100 = [v6 initWithUUIDString:v7];

    selfCopy = self;
    supportsCameraRecording = [capabilitiesCopy supportsCameraRecording];
    supportsRouterManagement = [capabilitiesCopy supportsRouterManagement];
    v10 = 2;
    if (!supportsRouterManagement)
    {
      v10 = 0;
    }

    v11 = v10 | supportsCameraRecording;
    if ([capabilitiesCopy supportsShortcutActions])
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    supportsMediaActions = [capabilitiesCopy supportsMediaActions];
    v14 = 8;
    if (!supportsMediaActions)
    {
      v14 = 0;
    }

    v98 = v11 | v12 | v14;
    if ([capabilitiesCopy supportsCameraSignificantEventNotifications])
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    if ([capabilitiesCopy supportsFirmwareUpdate])
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if ([capabilitiesCopy supportsResidentFirmwareUpdate])
    {
      v17 = 64;
    }

    else
    {
      v17 = 0;
    }

    v96 = v15 | v16;
    v97 = v17;
    supportsCameraActivityZones = [capabilitiesCopy supportsCameraActivityZones];
    v19 = 128;
    if (!supportsCameraActivityZones)
    {
      v19 = 0;
    }

    v95 = v19;
    supportsFaceClassification = [capabilitiesCopy supportsFaceClassification];
    v21 = 256;
    if (!supportsFaceClassification)
    {
      v21 = 0;
    }

    v94 = v21;
    supportsNaturalLighting = [capabilitiesCopy supportsNaturalLighting];
    v23 = 512;
    if (!supportsNaturalLighting)
    {
      v23 = 0;
    }

    v93 = v23;
    supportsCameraRecordingReachabilityNotifications = [capabilitiesCopy supportsCameraRecordingReachabilityNotifications];
    v25 = 1024;
    if (!supportsCameraRecordingReachabilityNotifications)
    {
      v25 = 0;
    }

    v92 = v25;
    supportsAnnounce = [capabilitiesCopy supportsAnnounce];
    v27 = 2048;
    if (!supportsAnnounce)
    {
      v27 = 0;
    }

    v91 = v27;
    supportsWakeOnLAN = [capabilitiesCopy supportsWakeOnLAN];
    v29 = 4096;
    if (!supportsWakeOnLAN)
    {
      v29 = 0;
    }

    v90 = v29;
    supportsLockNotificationContext = [capabilitiesCopy supportsLockNotificationContext];
    v31 = 0x2000;
    if (!supportsLockNotificationContext)
    {
      v31 = 0;
    }

    v89 = v31;
    supportsWalletKey = [capabilitiesCopy supportsWalletKey];
    v33 = 0x4000;
    if (!supportsWalletKey)
    {
      v33 = 0;
    }

    v88 = v33;
    supportsCameraPackageDetection = [capabilitiesCopy supportsCameraPackageDetection];
    v35 = 0x8000;
    if (!supportsCameraPackageDetection)
    {
      v35 = 0;
    }

    v87 = v35;
    supportsAccessCodes = [capabilitiesCopy supportsAccessCodes];
    v37 = 0x10000;
    if (!supportsAccessCodes)
    {
      v37 = 0;
    }

    v86 = v37;
    supportsCHIP = [capabilitiesCopy supportsCHIP];
    v39 = 0x20000;
    if (!supportsCHIP)
    {
      v39 = 0;
    }

    v85 = v39;
    supportsThreadBorderRouter = [capabilitiesCopy supportsThreadBorderRouter];
    v41 = 0x40000;
    if (!supportsThreadBorderRouter)
    {
      v41 = 0;
    }

    v84 = v41;
    supportsSiriEndpointSetup = [capabilitiesCopy supportsSiriEndpointSetup];
    v43 = 0x80000;
    if (!supportsSiriEndpointSetup)
    {
      v43 = 0;
    }

    v83 = v43;
    supportsCustomMediaApplicationDestination = [capabilitiesCopy supportsCustomMediaApplicationDestination];
    v45 = 0x100000;
    if (!supportsCustomMediaApplicationDestination)
    {
      v45 = 0;
    }

    v82 = v45;
    supportsUnifiedMediaNotifications = [capabilitiesCopy supportsUnifiedMediaNotifications];
    v47 = 0x200000;
    if (!supportsUnifiedMediaNotifications)
    {
      v47 = 0;
    }

    v81 = v47;
    supportsHomeHub = [capabilitiesCopy supportsHomeHub];
    v49 = 0x400000;
    if (!supportsHomeHub)
    {
      v49 = 0;
    }

    v80 = v49;
    supportsResidentFirstAccessoryCommunication = [capabilitiesCopy supportsResidentFirstAccessoryCommunication];
    v51 = 0x800000;
    if (!supportsResidentFirstAccessoryCommunication)
    {
      v51 = 0;
    }

    v79 = v51;
    supportsThreadNetworkCredentialSharing = [capabilitiesCopy supportsThreadNetworkCredentialSharing];
    v53 = 0x1000000;
    if (!supportsThreadNetworkCredentialSharing)
    {
      v53 = 0;
    }

    v78 = v53;
    supports5348b248a25f84b0c83e = [capabilitiesCopy supports5348b248a25f84b0c83e];
    v55 = 0x2000000;
    if (!supports5348b248a25f84b0c83e)
    {
      v55 = 0;
    }

    v77 = v55;
    supportsEventLog = [capabilitiesCopy supportsEventLog];
    v57 = 0x4000000;
    if (!supportsEventLog)
    {
      v57 = 0;
    }

    v76 = v57;
    supportsMatterTTU = [capabilitiesCopy supportsMatterTTU];
    v59 = 0x8000000;
    if (!supportsMatterTTU)
    {
      v59 = 0;
    }

    v75 = v59;
    supportsDistributedExecutionOnPrimary = [capabilitiesCopy supportsDistributedExecutionOnPrimary];
    v61 = 0x10000000;
    if (!supportsDistributedExecutionOnPrimary)
    {
      v61 = 0;
    }

    if ([capabilitiesCopy supportsResidentActionSetStateEvaluation])
    {
      v62 = 0x20000000;
    }

    else
    {
      v62 = 0;
    }

    if ([capabilitiesCopy supports9907491178])
    {
      v63 = 0x40000000;
    }

    else
    {
      v63 = 0;
    }

    if ([capabilitiesCopy supportsRestrictedGuest])
    {
      v64 = 0x80000000;
    }

    else
    {
      v64 = 0;
    }

    if ([capabilitiesCopy supportsMatterOwnerCertFetch])
    {
      v65 = 0x100000000;
    }

    else
    {
      v65 = 0;
    }

    if ([capabilitiesCopy supportsa15324f096ec183d])
    {
      v66 = 0x200000000;
    }

    else
    {
      v66 = 0;
    }

    if ([capabilitiesCopy supportsResidentSelection])
    {
      v67 = 0x400000000;
    }

    else
    {
      v67 = 0;
    }

    if ([capabilitiesCopy supports946950341b318ffd])
    {
      v68 = 0x800000000;
    }

    else
    {
      v68 = 0;
    }

    if ([capabilitiesCopy supports12r9go0ci9109])
    {
      v69 = 0x1000000000;
    }

    else
    {
      v69 = 0;
    }

    if ([capabilitiesCopy supportsheephfaid6gg1p54])
    {
      v70 = 0x2000000000;
    }

    else
    {
      v70 = 0;
    }

    supports03e098e86062k = [capabilitiesCopy supports03e098e86062k];
    v72 = 0x4000000000;
    if (!supports03e098e86062k)
    {
      v72 = 0;
    }

    self = [(HMResidentCapabilities *)selfCopy initWithTagUUID:v100 capabilities:v98 | v96 | v97 | v95 | v94 | v93 | v92 | v91 | v90 | v89 | v88 | v87 | v86 | v85 | v84 | v83 | v82 | v81 | v80 | v79 | v78 | v77 | v76 | v75 | v74 | v62 | v63 | v64 | v65 | v66 | v67 | v68 | v69 | v70 | v72];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (HMResidentCapabilities)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMProtoResidentCapabilities alloc] initWithData:dataCopy];

  if (v5)
  {
    self = [(HMResidentCapabilities *)self initWithProtoCapabilities:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)isLocalEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  supportsCameraRecording = [(HMResidentCapabilities *)self supportsCameraRecording];
  if (supportsCameraRecording != [v6 supportsCameraRecording])
  {
    goto LABEL_40;
  }

  supportsRouterManagement = [(HMResidentCapabilities *)self supportsRouterManagement];
  if (supportsRouterManagement != [v6 supportsRouterManagement])
  {
    goto LABEL_40;
  }

  supportsShortcutActions = [(HMResidentCapabilities *)self supportsShortcutActions];
  if (supportsShortcutActions != [v6 supportsShortcutActions])
  {
    goto LABEL_40;
  }

  supportsMediaActions = [(HMResidentCapabilities *)self supportsMediaActions];
  if (supportsMediaActions != [v6 supportsMediaActions])
  {
    goto LABEL_40;
  }

  supportsCameraSignificantEventNotifications = [(HMResidentCapabilities *)self supportsCameraSignificantEventNotifications];
  if (supportsCameraSignificantEventNotifications != [v6 supportsCameraSignificantEventNotifications])
  {
    goto LABEL_40;
  }

  supportsFirmwareUpdate = [(HMResidentCapabilities *)self supportsFirmwareUpdate];
  if (supportsFirmwareUpdate != [v6 supportsFirmwareUpdate])
  {
    goto LABEL_40;
  }

  supportsResidentFirmwareUpdate = [(HMResidentCapabilities *)self supportsResidentFirmwareUpdate];
  if (supportsResidentFirmwareUpdate != [v6 supportsResidentFirmwareUpdate])
  {
    goto LABEL_40;
  }

  supportsCameraActivityZones = [(HMResidentCapabilities *)self supportsCameraActivityZones];
  if (supportsCameraActivityZones != [v6 supportsCameraActivityZones])
  {
    goto LABEL_40;
  }

  supportsFaceClassification = [(HMResidentCapabilities *)self supportsFaceClassification];
  if (supportsFaceClassification != [v6 supportsFaceClassification])
  {
    goto LABEL_40;
  }

  supportsNaturalLighting = [(HMResidentCapabilities *)self supportsNaturalLighting];
  if (supportsNaturalLighting != [v6 supportsNaturalLighting])
  {
    goto LABEL_40;
  }

  supportsCameraRecordingReachabilityNotifications = [(HMResidentCapabilities *)self supportsCameraRecordingReachabilityNotifications];
  if (supportsCameraRecordingReachabilityNotifications != [v6 supportsCameraRecordingReachabilityNotifications])
  {
    goto LABEL_40;
  }

  supportsAnnounce = [(HMResidentCapabilities *)self supportsAnnounce];
  if (supportsAnnounce != [v6 supportsAnnounce])
  {
    goto LABEL_40;
  }

  supportsWakeOnLAN = [(HMResidentCapabilities *)self supportsWakeOnLAN];
  if (supportsWakeOnLAN != [v6 supportsWakeOnLAN])
  {
    goto LABEL_40;
  }

  supportsLockNotificationContext = [(HMResidentCapabilities *)self supportsLockNotificationContext];
  if (supportsLockNotificationContext != [v6 supportsLockNotificationContext])
  {
    goto LABEL_40;
  }

  supportsWalletKey = [(HMResidentCapabilities *)self supportsWalletKey];
  if (supportsWalletKey != [v6 supportsWalletKey])
  {
    goto LABEL_40;
  }

  supportsCameraPackageDetection = [(HMResidentCapabilities *)self supportsCameraPackageDetection];
  if (supportsCameraPackageDetection != [v6 supportsCameraPackageDetection])
  {
    goto LABEL_40;
  }

  supportsAccessCodes = [(HMResidentCapabilities *)self supportsAccessCodes];
  if (supportsAccessCodes != [v6 supportsAccessCodes])
  {
    goto LABEL_40;
  }

  supportsCHIP = [(HMResidentCapabilities *)self supportsCHIP];
  if (supportsCHIP != [v6 supportsCHIP])
  {
    goto LABEL_40;
  }

  supportsThreadBorderRouter = [(HMResidentCapabilities *)self supportsThreadBorderRouter];
  if (supportsThreadBorderRouter != [v6 supportsThreadBorderRouter])
  {
    goto LABEL_40;
  }

  supportsSiriEndpointSetup = [(HMResidentCapabilities *)self supportsSiriEndpointSetup];
  if (supportsSiriEndpointSetup != [v6 supportsSiriEndpointSetup])
  {
    goto LABEL_40;
  }

  supportsCustomMediaApplicationDestination = [(HMResidentCapabilities *)self supportsCustomMediaApplicationDestination];
  if (supportsCustomMediaApplicationDestination != [v6 supportsCustomMediaApplicationDestination])
  {
    goto LABEL_40;
  }

  supportsUnifiedMediaNotifications = [(HMResidentCapabilities *)self supportsUnifiedMediaNotifications];
  if (supportsUnifiedMediaNotifications != [v6 supportsUnifiedMediaNotifications])
  {
    goto LABEL_40;
  }

  supportsHomeHub = [(HMResidentCapabilities *)self supportsHomeHub];
  if (supportsHomeHub != [v6 supportsHomeHub])
  {
    goto LABEL_40;
  }

  supportsResidentFirstAccessoryCommunication = [(HMResidentCapabilities *)self supportsResidentFirstAccessoryCommunication];
  if (supportsResidentFirstAccessoryCommunication != [v6 supportsResidentFirstAccessoryCommunication])
  {
    goto LABEL_40;
  }

  supportsThreadNetworkCredentialSharing = [(HMResidentCapabilities *)self supportsThreadNetworkCredentialSharing];
  if (supportsThreadNetworkCredentialSharing != [v6 supportsThreadNetworkCredentialSharing])
  {
    goto LABEL_40;
  }

  supportsMatterSharedAdminPairing = [(HMResidentCapabilities *)self supportsMatterSharedAdminPairing];
  if (supportsMatterSharedAdminPairing != [v6 supportsMatterSharedAdminPairing])
  {
    goto LABEL_40;
  }

  supportsEventLog = [(HMResidentCapabilities *)self supportsEventLog];
  if (supportsEventLog != [v6 supportsEventLog])
  {
    goto LABEL_40;
  }

  supportsMatterTTU = [(HMResidentCapabilities *)self supportsMatterTTU];
  if (supportsMatterTTU != [v6 supportsMatterTTU])
  {
    goto LABEL_40;
  }

  supportsDistributedExecutionOnPrimary = [(HMResidentCapabilities *)self supportsDistributedExecutionOnPrimary];
  if (supportsDistributedExecutionOnPrimary != [v6 supportsDistributedExecutionOnPrimary])
  {
    goto LABEL_40;
  }

  supportsResidentActionSetStateEvaluation = [(HMResidentCapabilities *)self supportsResidentActionSetStateEvaluation];
  if (supportsResidentActionSetStateEvaluation != [v6 supportsResidentActionSetStateEvaluation])
  {
    goto LABEL_40;
  }

  supportsUWB = [(HMResidentCapabilities *)self supportsUWB];
  if (supportsUWB != [v6 supportsUWB])
  {
    goto LABEL_40;
  }

  supportsRestrictedGuest = [(HMResidentCapabilities *)self supportsRestrictedGuest];
  if (supportsRestrictedGuest != [v6 supportsRestrictedGuest])
  {
    goto LABEL_40;
  }

  supportsMatterOwnerCertFetch = [(HMResidentCapabilities *)self supportsMatterOwnerCertFetch];
  if (supportsMatterOwnerCertFetch != [v6 supportsMatterOwnerCertFetch])
  {
    goto LABEL_40;
  }

  supportsDistributedExecutionOnAppleMediaAccessories = [(HMResidentCapabilities *)self supportsDistributedExecutionOnAppleMediaAccessories];
  if (supportsDistributedExecutionOnAppleMediaAccessories != [v6 supportsDistributedExecutionOnAppleMediaAccessories])
  {
    goto LABEL_40;
  }

  supportsResidentSelection = [(HMResidentCapabilities *)self supportsResidentSelection];
  if (supportsResidentSelection != [v6 supportsResidentSelection])
  {
    goto LABEL_40;
  }

  supportsNativeMatter = [(HMResidentCapabilities *)self supportsNativeMatter];
  if (supportsNativeMatter != [v6 supportsNativeMatter] && ((_os_feature_enabled_impl() & 1) != 0 || HM_FEATURE_RVC_DEFAULTS_ENABLED()))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (HMResidentCapabilities)initWithTagUUID:(id)d capabilities:(_HMResidentCapabilitiesStruct)capabilities
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = HMResidentCapabilities;
  v7 = [(HMResidentCapabilities *)&v11 init];
  if (v7)
  {
    uUIDString = [dCopy UUIDString];
    tag = v7->_tag;
    v7->_tag = uUIDString;

    v7->_capabilities = capabilities;
  }

  return v7;
}

@end