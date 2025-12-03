@interface HMProtoResidentCapabilities
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSupports12r9go0ci9109:(BOOL)supports12r9go0ci9109;
- (void)setHasSupports5348b248a25f84b0c83e:(BOOL)supports5348b248a25f84b0c83e;
- (void)setHasSupports946950341b318ffd:(BOOL)supports946950341b318ffd;
- (void)setHasSupports9907491178:(BOOL)supports9907491178;
- (void)setHasSupportsAccessCodes:(BOOL)codes;
- (void)setHasSupportsAnnounce:(BOOL)announce;
- (void)setHasSupportsCHIP:(BOOL)p;
- (void)setHasSupportsCameraActivityZones:(BOOL)zones;
- (void)setHasSupportsCameraPackageDetection:(BOOL)detection;
- (void)setHasSupportsCameraRecording:(BOOL)recording;
- (void)setHasSupportsCameraRecordingReachabilityNotifications:(BOOL)notifications;
- (void)setHasSupportsCameraSignificantEventNotifications:(BOOL)notifications;
- (void)setHasSupportsCustomMediaApplicationDestination:(BOOL)destination;
- (void)setHasSupportsDistributedExecutionOnPrimary:(BOOL)primary;
- (void)setHasSupportsEventLog:(BOOL)log;
- (void)setHasSupportsFaceClassification:(BOOL)classification;
- (void)setHasSupportsFirmwareUpdate:(BOOL)update;
- (void)setHasSupportsHomeHub:(BOOL)hub;
- (void)setHasSupportsLockNotificationContext:(BOOL)context;
- (void)setHasSupportsMatterOwnerCertFetch:(BOOL)fetch;
- (void)setHasSupportsMatterTTU:(BOOL)u;
- (void)setHasSupportsMediaActions:(BOOL)actions;
- (void)setHasSupportsNaturalLighting:(BOOL)lighting;
- (void)setHasSupportsResidentActionSetStateEvaluation:(BOOL)evaluation;
- (void)setHasSupportsResidentFirmwareUpdate:(BOOL)update;
- (void)setHasSupportsResidentFirstAccessoryCommunication:(BOOL)communication;
- (void)setHasSupportsResidentSelection:(BOOL)selection;
- (void)setHasSupportsRestrictedGuest:(BOOL)guest;
- (void)setHasSupportsRouterManagement:(BOOL)management;
- (void)setHasSupportsShortcutActions:(BOOL)actions;
- (void)setHasSupportsSiriEndpointSetup:(BOOL)setup;
- (void)setHasSupportsThreadBorderRouter:(BOOL)router;
- (void)setHasSupportsThreadNetworkCredentialSharing:(BOOL)sharing;
- (void)setHasSupportsUnifiedMediaNotifications:(BOOL)notifications;
- (void)setHasSupportsWakeOnLAN:(BOOL)n;
- (void)setHasSupportsWalletKey:(BOOL)key;
- (void)setHasSupportsa15324f096ec183d:(BOOL)supportsa15324f096ec183d;
- (void)setHasSupportsd36b1a5183a0f:(BOOL)supportsd36b1a5183a0f;
- (void)setHasSupportsdafedc977558:(BOOL)supportsdafedc977558;
- (void)setHasSupportsheephfaid6gg1p54:(BOOL)supportsheephfaid6gg1p54;
- (void)writeTo:(id)to;
@end

@implementation HMProtoResidentCapabilities

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(HMProtoResidentCapabilities *)self setTag:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 60);
  if ((v5 & 0x400) != 0)
  {
    self->_supportsCameraRecording = fromCopy[26];
    *&self->_has |= 0x400uLL;
    v5 = *(fromCopy + 60);
    if ((v5 & 0x20000000) == 0)
    {
LABEL_5:
      if ((v5 & 0x40000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  self->_supportsRouterManagement = fromCopy[45];
  *&self->_has |= 0x20000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_supportsShortcutActions = fromCopy[46];
  *&self->_has |= 0x40000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x400000) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_supportsMediaActions = fromCopy[38];
  *&self->_has |= 0x400000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x1000) == 0)
  {
LABEL_8:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_supportsCameraSignificantEventNotifications = fromCopy[28];
  *&self->_has |= 0x1000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x20000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_supportsFirmwareUpdate = fromCopy[33];
  *&self->_has |= 0x20000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_supportsResidentFirmwareUpdate = fromCopy[41];
  *&self->_has |= 0x2000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_supportsCameraActivityZones = fromCopy[24];
  *&self->_has |= 0x100uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x10000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_supportsFaceClassification = fromCopy[32];
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x800000) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_supportsNaturalLighting = fromCopy[39];
  *&self->_has |= 0x800000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_supportsCameraRecordingReachabilityNotifications = fromCopy[27];
  *&self->_has |= 0x800uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_supportsAnnounce = fromCopy[22];
  *&self->_has |= 0x40uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_supportsWakeOnLAN = fromCopy[51];
  *&self->_has |= 0x800000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_supportsLockNotificationContext = fromCopy[35];
  *&self->_has |= 0x80000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_supportsWalletKey = fromCopy[52];
  *&self->_has |= 0x1000000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_19:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_supportsCameraPackageDetection = fromCopy[25];
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_supportsAccessCodes = fromCopy[21];
  *&self->_has |= 0x20uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_supportsCHIP = fromCopy[23];
  *&self->_has |= 0x80uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_supportsThreadBorderRouter = fromCopy[48];
  *&self->_has |= 0x100000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_supportsSiriEndpointSetup = fromCopy[47];
  *&self->_has |= 0x80000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x2000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_supportsCustomMediaApplicationDestination = fromCopy[29];
  *&self->_has |= 0x2000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_supportsUnifiedMediaNotifications = fromCopy[50];
  *&self->_has |= 0x400000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_supportsHomeHub = fromCopy[34];
  *&self->_has |= 0x40000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_supportsResidentFirstAccessoryCommunication = fromCopy[42];
  *&self->_has |= 0x4000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_28:
    if ((v5 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_supportsThreadNetworkCredentialSharing = fromCopy[49];
  *&self->_has |= 0x200000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 4) == 0)
  {
LABEL_29:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_supports5348b248a25f84b0c83e = fromCopy[18];
  *&self->_has |= 4uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x8000) == 0)
  {
LABEL_30:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_supportsEventLog = fromCopy[31];
  *&self->_has |= 0x8000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x200000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_supportsMatterTTU = fromCopy[37];
  *&self->_has |= 0x200000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x4000) == 0)
  {
LABEL_32:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_supportsDistributedExecutionOnPrimary = fromCopy[30];
  *&self->_has |= 0x4000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_supportsResidentActionSetStateEvaluation = fromCopy[40];
  *&self->_has |= 0x1000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_supports9907491178 = fromCopy[20];
  *&self->_has |= 0x10uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_supportsRestrictedGuest = fromCopy[44];
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x100000) == 0)
  {
LABEL_36:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_supportsMatterOwnerCertFetch = fromCopy[36];
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_supportsa15324f096ec183d = fromCopy[53];
  *&self->_has |= 0x2000000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v5 & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_supportsResidentSelection = fromCopy[43];
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 8) == 0)
  {
LABEL_39:
    if ((v5 & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_supports946950341b318ffd = fromCopy[19];
  *&self->_has |= 8uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 2) == 0)
  {
LABEL_40:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_supports12r9go0ci9109 = fromCopy[17];
  *&self->_has |= 2uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_supportsheephfaid6gg1p54 = fromCopy[56];
  *&self->_has |= 0x10000000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_supportsdafedc977558 = fromCopy[55];
  *&self->_has |= 0x8000000000uLL;
  v5 = *(fromCopy + 60);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_43:
    if ((v5 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_87:
  self->_supportsd36b1a5183a0f = fromCopy[54];
  *&self->_has |= 0x4000000000uLL;
  if (*(fromCopy + 60))
  {
LABEL_44:
    self->_supports03e098e86062k = fromCopy[16];
    *&self->_has |= 1uLL;
  }

LABEL_45:
}

- (unint64_t)hash
{
  v46 = [(NSString *)self->_tag hash];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v45 = 2654435761 * self->_supportsCameraRecording;
    if ((*&has & 0x20000000) != 0)
    {
LABEL_3:
      v44 = 2654435761 * self->_supportsRouterManagement;
      if ((*&has & 0x40000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v45 = 0;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v44 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_4:
    v43 = 2654435761 * self->_supportsShortcutActions;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  v43 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_5:
    v42 = 2654435761 * self->_supportsMediaActions;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  v42 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_6:
    v41 = 2654435761 * self->_supportsCameraSignificantEventNotifications;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  v41 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_7:
    v40 = 2654435761 * self->_supportsFirmwareUpdate;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  v40 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_8:
    v39 = 2654435761 * self->_supportsResidentFirmwareUpdate;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v39 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v38 = 2654435761 * self->_supportsCameraActivityZones;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  v38 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_10:
    v37 = 2654435761 * self->_supportsFaceClassification;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  v37 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_11:
    v36 = 2654435761 * self->_supportsNaturalLighting;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  v36 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_12:
    v35 = 2654435761 * self->_supportsCameraRecordingReachabilityNotifications;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  v35 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_13:
    v34 = 2654435761 * self->_supportsAnnounce;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  v34 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_14:
    v33 = 2654435761 * self->_supportsWakeOnLAN;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  v33 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_15:
    v32 = 2654435761 * self->_supportsLockNotificationContext;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  v32 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_16:
    v31 = 2654435761 * self->_supportsWalletKey;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  v31 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_17:
    v4 = 2654435761 * self->_supportsCameraPackageDetection;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_18:
    v5 = 2654435761 * self->_supportsAccessCodes;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  v5 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_19:
    v6 = 2654435761 * self->_supportsCHIP;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  v6 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_20:
    v7 = 2654435761 * self->_supportsThreadBorderRouter;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  v7 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_21:
    v8 = 2654435761 * self->_supportsSiriEndpointSetup;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  v8 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_22:
    v9 = 2654435761 * self->_supportsCustomMediaApplicationDestination;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  v9 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_23:
    v10 = 2654435761 * self->_supportsUnifiedMediaNotifications;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  v10 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_24:
    v11 = 2654435761 * self->_supportsHomeHub;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  v11 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_25:
    v12 = 2654435761 * self->_supportsResidentFirstAccessoryCommunication;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  v12 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_26:
    v13 = 2654435761 * self->_supportsThreadNetworkCredentialSharing;
    if ((*&has & 4) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  v13 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_27:
    v14 = 2654435761 * self->_supports5348b248a25f84b0c83e;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  v14 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_28:
    v15 = 2654435761 * self->_supportsEventLog;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  v15 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_29:
    v16 = 2654435761 * self->_supportsMatterTTU;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  v16 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_30:
    v17 = 2654435761 * self->_supportsDistributedExecutionOnPrimary;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  v17 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_31:
    v18 = 2654435761 * self->_supportsResidentActionSetStateEvaluation;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  v18 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_32:
    v19 = 2654435761 * self->_supports9907491178;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  v19 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_33:
    v20 = 2654435761 * self->_supportsRestrictedGuest;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  v20 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_34:
    v21 = 2654435761 * self->_supportsMatterOwnerCertFetch;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  v21 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_35:
    v22 = 2654435761 * self->_supportsa15324f096ec183d;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  v22 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_36:
    v23 = 2654435761 * self->_supportsResidentSelection;
    if ((*&has & 8) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  v23 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_37:
    v24 = 2654435761 * self->_supports946950341b318ffd;
    if ((*&has & 2) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  v24 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_38:
    v25 = 2654435761 * self->_supports12r9go0ci9109;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  v25 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_39:
    v26 = 2654435761 * self->_supportsheephfaid6gg1p54;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  v26 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_40:
    v27 = 2654435761 * self->_supportsdafedc977558;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_82:
    v28 = 0;
    if (*&has)
    {
      goto LABEL_42;
    }

LABEL_83:
    v29 = 0;
    return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_81:
  v27 = 0;
  if ((*&has & 0x4000000000) == 0)
  {
    goto LABEL_82;
  }

LABEL_41:
  v28 = 2654435761 * self->_supportsd36b1a5183a0f;
  if ((*&has & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_42:
  v29 = 2654435761 * self->_supports03e098e86062k;
  return v45 ^ v46 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_329;
  }

  tag = self->_tag;
  if (tag | *(equalCopy + 1))
  {
    if (![(NSString *)tag isEqual:?])
    {
      goto LABEL_329;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 60);
  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_329;
    }

    v8 = equalCopy[26];
    if (self->_supportsCameraRecording)
    {
      if ((equalCopy[26] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[26])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_329;
    }

    v9 = equalCopy[45];
    if (self->_supportsRouterManagement)
    {
      if ((equalCopy[45] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[45])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_329;
    }

    v10 = equalCopy[46];
    if (self->_supportsShortcutActions)
    {
      if ((equalCopy[46] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[46])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_329;
    }

    v11 = equalCopy[38];
    if (self->_supportsMediaActions)
    {
      if ((equalCopy[38] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[38])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_329;
    }

    v12 = equalCopy[28];
    if (self->_supportsCameraSignificantEventNotifications)
    {
      if ((equalCopy[28] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[28])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_329;
    }

    v13 = equalCopy[33];
    if (self->_supportsFirmwareUpdate)
    {
      if ((equalCopy[33] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[33])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_329;
    }

    v14 = equalCopy[41];
    if (self->_supportsResidentFirmwareUpdate)
    {
      if ((equalCopy[41] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[41])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_329;
    }

    v15 = equalCopy[24];
    if (self->_supportsCameraActivityZones)
    {
      if ((equalCopy[24] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[24])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_329;
    }

    v16 = equalCopy[32];
    if (self->_supportsFaceClassification)
    {
      if ((equalCopy[32] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[32])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_329;
    }

    v17 = equalCopy[39];
    if (self->_supportsNaturalLighting)
    {
      if ((equalCopy[39] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[39])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_329;
    }

    v18 = equalCopy[27];
    if (self->_supportsCameraRecordingReachabilityNotifications)
    {
      if ((equalCopy[27] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[27])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_329;
    }

    v19 = equalCopy[22];
    if (self->_supportsAnnounce)
    {
      if ((equalCopy[22] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[22])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0)
    {
      goto LABEL_329;
    }

    v20 = equalCopy[51];
    if (self->_supportsWakeOnLAN)
    {
      if ((equalCopy[51] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[51])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_329;
    }

    v21 = equalCopy[35];
    if (self->_supportsLockNotificationContext)
    {
      if ((equalCopy[35] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[35])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_329;
    }

    v22 = equalCopy[52];
    if (self->_supportsWalletKey)
    {
      if ((equalCopy[52] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[52])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_329;
    }

    v23 = equalCopy[25];
    if (self->_supportsCameraPackageDetection)
    {
      if ((equalCopy[25] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[25])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_329;
    }

    v24 = equalCopy[21];
    if (self->_supportsAccessCodes)
    {
      if ((equalCopy[21] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[21])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_329;
    }

    v25 = equalCopy[23];
    if (self->_supportsCHIP)
    {
      if ((equalCopy[23] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[23])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_329;
    }

    v26 = equalCopy[48];
    if (self->_supportsThreadBorderRouter)
    {
      if ((equalCopy[48] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[48])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_329;
    }

    v27 = equalCopy[47];
    if (self->_supportsSiriEndpointSetup)
    {
      if ((equalCopy[47] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[47])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_329;
    }

    v28 = equalCopy[29];
    if (self->_supportsCustomMediaApplicationDestination)
    {
      if ((equalCopy[29] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[29])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_329;
    }

    v29 = equalCopy[50];
    if (self->_supportsUnifiedMediaNotifications)
    {
      if ((equalCopy[50] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[50])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_329;
    }

    v30 = equalCopy[34];
    if (self->_supportsHomeHub)
    {
      if ((equalCopy[34] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[34])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_329;
    }

    v31 = equalCopy[42];
    if (self->_supportsResidentFirstAccessoryCommunication)
    {
      if ((equalCopy[42] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[42])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_329;
    }

    v32 = equalCopy[49];
    if (self->_supportsThreadNetworkCredentialSharing)
    {
      if ((equalCopy[49] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[49])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0)
    {
      goto LABEL_329;
    }

    v33 = equalCopy[18];
    if (self->_supports5348b248a25f84b0c83e)
    {
      if ((equalCopy[18] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[18])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_329;
    }

    v34 = equalCopy[31];
    if (self->_supportsEventLog)
    {
      if ((equalCopy[31] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[31])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_329;
    }

    v35 = equalCopy[37];
    if (self->_supportsMatterTTU)
    {
      if ((equalCopy[37] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[37])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_329;
    }

    v36 = equalCopy[30];
    if (self->_supportsDistributedExecutionOnPrimary)
    {
      if ((equalCopy[30] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[30])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_329;
    }

    v37 = equalCopy[40];
    if (self->_supportsResidentActionSetStateEvaluation)
    {
      if ((equalCopy[40] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[40])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_329;
    }

    v38 = equalCopy[20];
    if (self->_supports9907491178)
    {
      if ((equalCopy[20] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[20])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_329;
    }

    v39 = equalCopy[44];
    if (self->_supportsRestrictedGuest)
    {
      if ((equalCopy[44] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[44])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_329;
    }

    v40 = equalCopy[36];
    if (self->_supportsMatterOwnerCertFetch)
    {
      if ((equalCopy[36] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[36])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_329;
    }

    v41 = equalCopy[53];
    if (self->_supportsa15324f096ec183d)
    {
      if ((equalCopy[53] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[53])
    {
      goto LABEL_329;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_329;
  }

  v42 = *(equalCopy + 60);
  if ((*&has & 0x8000000) != 0)
  {
    if ((v42 & 0x8000000) == 0)
    {
      goto LABEL_329;
    }

    v43 = equalCopy[43];
    if (self->_supportsResidentSelection)
    {
      if ((equalCopy[43] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[43])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 0x8000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 8) != 0)
  {
    if ((v42 & 8) == 0)
    {
      goto LABEL_329;
    }

    v44 = equalCopy[19];
    if (self->_supports946950341b318ffd)
    {
      if ((equalCopy[19] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[19])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 8) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 2) != 0)
  {
    if ((v42 & 2) == 0)
    {
      goto LABEL_329;
    }

    v45 = equalCopy[17];
    if (self->_supports12r9go0ci9109)
    {
      if ((equalCopy[17] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[17])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 2) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v42 & 0x10000000000) == 0)
    {
      goto LABEL_329;
    }

    v46 = equalCopy[56];
    if (self->_supportsheephfaid6gg1p54)
    {
      if ((equalCopy[56] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[56])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 0x10000000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v42 & 0x8000000000) == 0)
    {
      goto LABEL_329;
    }

    v47 = equalCopy[55];
    if (self->_supportsdafedc977558)
    {
      if ((equalCopy[55] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[55])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 0x8000000000) != 0)
  {
    goto LABEL_329;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v42 & 0x4000000000) == 0)
    {
      goto LABEL_329;
    }

    v48 = equalCopy[54];
    if (self->_supportsd36b1a5183a0f)
    {
      if ((equalCopy[54] & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else if (equalCopy[54])
    {
      goto LABEL_329;
    }
  }

  else if ((v42 & 0x4000000000) != 0)
  {
    goto LABEL_329;
  }

  if (*&has)
  {
    if (v42)
    {
      if (self->_supports03e098e86062k)
      {
        if ((equalCopy[16] & 1) == 0)
        {
          goto LABEL_329;
        }
      }

      else if (equalCopy[16])
      {
        goto LABEL_329;
      }

      v49 = 1;
      goto LABEL_330;
    }

LABEL_329:
    v49 = 0;
    goto LABEL_330;
  }

  v49 = (*(equalCopy + 60) & 1) == 0;
LABEL_330:

  return v49;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_tag copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(v5 + 26) = self->_supportsCameraRecording;
    *(v5 + 60) |= 0x400uLL;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 45) = self->_supportsRouterManagement;
  *(v5 + 60) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 46) = self->_supportsShortcutActions;
  *(v5 + 60) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_5:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 38) = self->_supportsMediaActions;
  *(v5 + 60) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_6:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 28) = self->_supportsCameraSignificantEventNotifications;
  *(v5 + 60) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 33) = self->_supportsFirmwareUpdate;
  *(v5 + 60) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 41) = self->_supportsResidentFirmwareUpdate;
  *(v5 + 60) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 24) = self->_supportsCameraActivityZones;
  *(v5 + 60) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 32) = self->_supportsFaceClassification;
  *(v5 + 60) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_11:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 39) = self->_supportsNaturalLighting;
  *(v5 + 60) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 27) = self->_supportsCameraRecordingReachabilityNotifications;
  *(v5 + 60) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 22) = self->_supportsAnnounce;
  *(v5 + 60) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 51) = self->_supportsWakeOnLAN;
  *(v5 + 60) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 35) = self->_supportsLockNotificationContext;
  *(v5 + 60) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 52) = self->_supportsWalletKey;
  *(v5 + 60) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 25) = self->_supportsCameraPackageDetection;
  *(v5 + 60) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 21) = self->_supportsAccessCodes;
  *(v5 + 60) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 23) = self->_supportsCHIP;
  *(v5 + 60) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 48) = self->_supportsThreadBorderRouter;
  *(v5 + 60) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 47) = self->_supportsSiriEndpointSetup;
  *(v5 + 60) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_22:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 29) = self->_supportsCustomMediaApplicationDestination;
  *(v5 + 60) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 50) = self->_supportsUnifiedMediaNotifications;
  *(v5 + 60) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_24:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 34) = self->_supportsHomeHub;
  *(v5 + 60) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 42) = self->_supportsResidentFirstAccessoryCommunication;
  *(v5 + 60) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 49) = self->_supportsThreadNetworkCredentialSharing;
  *(v5 + 60) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_27:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 18) = self->_supports5348b248a25f84b0c83e;
  *(v5 + 60) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 31) = self->_supportsEventLog;
  *(v5 + 60) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_29:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 37) = self->_supportsMatterTTU;
  *(v5 + 60) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_30:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 30) = self->_supportsDistributedExecutionOnPrimary;
  *(v5 + 60) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 40) = self->_supportsResidentActionSetStateEvaluation;
  *(v5 + 60) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_32:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 20) = self->_supports9907491178;
  *(v5 + 60) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 44) = self->_supportsRestrictedGuest;
  *(v5 + 60) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_34:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 36) = self->_supportsMatterOwnerCertFetch;
  *(v5 + 60) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 53) = self->_supportsa15324f096ec183d;
  *(v5 + 60) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_36:
    if ((*&has & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 43) = self->_supportsResidentSelection;
  *(v5 + 60) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_37:
    if ((*&has & 2) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 19) = self->_supports946950341b318ffd;
  *(v5 + 60) |= 8uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_38:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 17) = self->_supports12r9go0ci9109;
  *(v5 + 60) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 56) = self->_supportsheephfaid6gg1p54;
  *(v5 + 60) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_83:
    *(v5 + 54) = self->_supportsd36b1a5183a0f;
    *(v5 + 60) |= 0x4000000000uLL;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_82:
  *(v5 + 55) = self->_supportsdafedc977558;
  *(v5 + 60) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) != 0)
  {
    goto LABEL_83;
  }

LABEL_41:
  if (*&has)
  {
LABEL_42:
    *(v5 + 16) = self->_supports03e098e86062k;
    *(v5 + 60) |= 1uLL;
  }

LABEL_43:
  v9 = v5;

  return v9;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_tag)
  {
    v6 = toCopy;
    [toCopy setTag:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    toCopy[26] = self->_supportsCameraRecording;
    *(toCopy + 60) |= 0x400uLL;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  toCopy[45] = self->_supportsRouterManagement;
  *(toCopy + 60) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  toCopy[46] = self->_supportsShortcutActions;
  *(toCopy + 60) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  toCopy[38] = self->_supportsMediaActions;
  *(toCopy + 60) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  toCopy[28] = self->_supportsCameraSignificantEventNotifications;
  *(toCopy + 60) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  toCopy[33] = self->_supportsFirmwareUpdate;
  *(toCopy + 60) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  toCopy[41] = self->_supportsResidentFirmwareUpdate;
  *(toCopy + 60) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  toCopy[24] = self->_supportsCameraActivityZones;
  *(toCopy + 60) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  toCopy[32] = self->_supportsFaceClassification;
  *(toCopy + 60) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  toCopy[39] = self->_supportsNaturalLighting;
  *(toCopy + 60) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  toCopy[27] = self->_supportsCameraRecordingReachabilityNotifications;
  *(toCopy + 60) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  toCopy[22] = self->_supportsAnnounce;
  *(toCopy + 60) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  toCopy[51] = self->_supportsWakeOnLAN;
  *(toCopy + 60) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  toCopy[35] = self->_supportsLockNotificationContext;
  *(toCopy + 60) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  toCopy[52] = self->_supportsWalletKey;
  *(toCopy + 60) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  toCopy[25] = self->_supportsCameraPackageDetection;
  *(toCopy + 60) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  toCopy[21] = self->_supportsAccessCodes;
  *(toCopy + 60) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  toCopy[23] = self->_supportsCHIP;
  *(toCopy + 60) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  toCopy[48] = self->_supportsThreadBorderRouter;
  *(toCopy + 60) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  toCopy[47] = self->_supportsSiriEndpointSetup;
  *(toCopy + 60) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  toCopy[29] = self->_supportsCustomMediaApplicationDestination;
  *(toCopy + 60) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  toCopy[50] = self->_supportsUnifiedMediaNotifications;
  *(toCopy + 60) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  toCopy[34] = self->_supportsHomeHub;
  *(toCopy + 60) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  toCopy[42] = self->_supportsResidentFirstAccessoryCommunication;
  *(toCopy + 60) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_28:
    if ((*&has & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  toCopy[49] = self->_supportsThreadNetworkCredentialSharing;
  *(toCopy + 60) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  toCopy[18] = self->_supports5348b248a25f84b0c83e;
  *(toCopy + 60) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  toCopy[31] = self->_supportsEventLog;
  *(toCopy + 60) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  toCopy[37] = self->_supportsMatterTTU;
  *(toCopy + 60) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_32:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  toCopy[30] = self->_supportsDistributedExecutionOnPrimary;
  *(toCopy + 60) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  toCopy[40] = self->_supportsResidentActionSetStateEvaluation;
  *(toCopy + 60) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_34:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  toCopy[20] = self->_supports9907491178;
  *(toCopy + 60) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  toCopy[44] = self->_supportsRestrictedGuest;
  *(toCopy + 60) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  toCopy[36] = self->_supportsMatterOwnerCertFetch;
  *(toCopy + 60) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  toCopy[53] = self->_supportsa15324f096ec183d;
  *(toCopy + 60) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  toCopy[43] = self->_supportsResidentSelection;
  *(toCopy + 60) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  toCopy[19] = self->_supports946950341b318ffd;
  *(toCopy + 60) |= 8uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_40:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  toCopy[17] = self->_supports12r9go0ci9109;
  *(toCopy + 60) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  toCopy[56] = self->_supportsheephfaid6gg1p54;
  *(toCopy + 60) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  toCopy[55] = self->_supportsdafedc977558;
  *(toCopy + 60) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_43:
    if ((*&has & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_87:
  toCopy[54] = self->_supportsd36b1a5183a0f;
  *(toCopy + 60) |= 0x4000000000uLL;
  if (*&self->_has)
  {
LABEL_44:
    toCopy[16] = self->_supports03e098e86062k;
    *(toCopy + 60) |= 1uLL;
  }

LABEL_45:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v47 = toCopy;
  if (self->_tag)
  {
    PBDataWriterWriteStringField();
    toCopy = v47;
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    supportsCameraRecording = self->_supportsCameraRecording;
    PBDataWriterWriteBOOLField();
    toCopy = v47;
    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  supportsRouterManagement = self->_supportsRouterManagement;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  supportsShortcutActions = self->_supportsShortcutActions;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  supportsMediaActions = self->_supportsMediaActions;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  supportsCameraSignificantEventNotifications = self->_supportsCameraSignificantEventNotifications;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  supportsFirmwareUpdate = self->_supportsFirmwareUpdate;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  supportsResidentFirmwareUpdate = self->_supportsResidentFirmwareUpdate;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  supportsCameraActivityZones = self->_supportsCameraActivityZones;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  supportsFaceClassification = self->_supportsFaceClassification;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  supportsNaturalLighting = self->_supportsNaturalLighting;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  supportsCameraRecordingReachabilityNotifications = self->_supportsCameraRecordingReachabilityNotifications;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  supportsAnnounce = self->_supportsAnnounce;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  supportsWakeOnLAN = self->_supportsWakeOnLAN;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  supportsLockNotificationContext = self->_supportsLockNotificationContext;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  supportsWalletKey = self->_supportsWalletKey;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  supportsCameraPackageDetection = self->_supportsCameraPackageDetection;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  supportsAccessCodes = self->_supportsAccessCodes;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  supportsCHIP = self->_supportsCHIP;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  supportsThreadBorderRouter = self->_supportsThreadBorderRouter;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  supportsSiriEndpointSetup = self->_supportsSiriEndpointSetup;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  supportsCustomMediaApplicationDestination = self->_supportsCustomMediaApplicationDestination;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  supportsUnifiedMediaNotifications = self->_supportsUnifiedMediaNotifications;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  supportsHomeHub = self->_supportsHomeHub;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  supportsResidentFirstAccessoryCommunication = self->_supportsResidentFirstAccessoryCommunication;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_28:
    if ((*&has & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  supportsThreadNetworkCredentialSharing = self->_supportsThreadNetworkCredentialSharing;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  supports5348b248a25f84b0c83e = self->_supports5348b248a25f84b0c83e;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  supportsEventLog = self->_supportsEventLog;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  supportsMatterTTU = self->_supportsMatterTTU;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_32:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  supportsDistributedExecutionOnPrimary = self->_supportsDistributedExecutionOnPrimary;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  supportsResidentActionSetStateEvaluation = self->_supportsResidentActionSetStateEvaluation;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_34:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  supports9907491178 = self->_supports9907491178;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  supportsRestrictedGuest = self->_supportsRestrictedGuest;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  supportsMatterOwnerCertFetch = self->_supportsMatterOwnerCertFetch;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  supportsa15324f096ec183d = self->_supportsa15324f096ec183d;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  supportsResidentSelection = self->_supportsResidentSelection;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  supports946950341b318ffd = self->_supports946950341b318ffd;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_40:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  supports12r9go0ci9109 = self->_supports12r9go0ci9109;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  supportsheephfaid6gg1p54 = self->_supportsheephfaid6gg1p54;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  supportsdafedc977558 = self->_supportsdafedc977558;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_43:
    if ((*&has & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_87:
  supportsd36b1a5183a0f = self->_supportsd36b1a5183a0f;
  PBDataWriterWriteBOOLField();
  toCopy = v47;
  if (*&self->_has)
  {
LABEL_44:
    supports03e098e86062k = self->_supports03e098e86062k;
    PBDataWriterWriteBOOLField();
    toCopy = v47;
  }

LABEL_45:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  tag = self->_tag;
  if (tag)
  {
    [dictionary setObject:tag forKey:@"tag"];
  }

  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCameraRecording];
    [v4 setObject:v10 forKey:@"supportsCameraRecording"];

    has = self->_has;
    if ((*&has & 0x20000000) == 0)
    {
LABEL_5:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRouterManagement];
  [v4 setObject:v11 forKey:@"supportsRouterManagement"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_48:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsShortcutActions];
  [v4 setObject:v12 forKey:@"supportsShortcutActions"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_49:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMediaActions];
  [v4 setObject:v13 forKey:@"supportsMediaActions"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

LABEL_50:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCameraSignificantEventNotifications];
  [v4 setObject:v14 forKey:@"supportsCameraSignificantEventNotifications"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_51:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFirmwareUpdate];
  [v4 setObject:v15 forKey:@"supportsFirmwareUpdate"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_53;
  }

LABEL_52:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsResidentFirmwareUpdate];
  [v4 setObject:v16 forKey:@"supportsResidentFirmwareUpdate"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_54;
  }

LABEL_53:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCameraActivityZones];
  [v4 setObject:v17 forKey:@"supportsCameraActivityZones"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_12:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_54:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFaceClassification];
  [v4 setObject:v18 forKey:@"supportsFaceClassification"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_13:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

LABEL_55:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsNaturalLighting];
  [v4 setObject:v19 forKey:@"supportsNaturalLighting"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_57;
  }

LABEL_56:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCameraRecordingReachabilityNotifications];
  [v4 setObject:v20 forKey:@"supportsCameraRecordingReachabilityNotifications"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_58;
  }

LABEL_57:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAnnounce];
  [v4 setObject:v21 forKey:@"supportsAnnounce"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_58:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsWakeOnLAN];
  [v4 setObject:v22 forKey:@"supportsWakeOnLAN"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_60;
  }

LABEL_59:
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsLockNotificationContext];
  [v4 setObject:v23 forKey:@"supportsLockNotificationContext"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_61;
  }

LABEL_60:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsWalletKey];
  [v4 setObject:v24 forKey:@"supportsWalletKey"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

LABEL_61:
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCameraPackageDetection];
  [v4 setObject:v25 forKey:@"supportsCameraPackageDetection"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_62:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAccessCodes];
  [v4 setObject:v26 forKey:@"supportsAccessCodes"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

LABEL_63:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCHIP];
  [v4 setObject:v27 forKey:@"supportsCHIP"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_65;
  }

LABEL_64:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsThreadBorderRouter];
  [v4 setObject:v28 forKey:@"supportsThreadBorderRouter"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_66;
  }

LABEL_65:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSiriEndpointSetup];
  [v4 setObject:v29 forKey:@"supportsSiriEndpointSetup"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_67;
  }

LABEL_66:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCustomMediaApplicationDestination];
  [v4 setObject:v30 forKey:@"supportsCustomMediaApplicationDestination"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_68;
  }

LABEL_67:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsUnifiedMediaNotifications];
  [v4 setObject:v31 forKey:@"supportsUnifiedMediaNotifications"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_69;
  }

LABEL_68:
  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHomeHub];
  [v4 setObject:v32 forKey:@"supportsHomeHub"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_70;
  }

LABEL_69:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsResidentFirstAccessoryCommunication];
  [v4 setObject:v33 forKey:@"supportsResidentFirstAccessoryCommunication"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_28:
    if ((*&has & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_71;
  }

LABEL_70:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsThreadNetworkCredentialSharing];
  [v4 setObject:v34 forKey:@"supportsThreadNetworkCredentialSharing"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_72;
  }

LABEL_71:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports5348b248a25f84b0c83e];
  [v4 setObject:v35 forKey:@"supports5348b248a25f84b0c83e"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_30:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

LABEL_72:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsEventLog];
  [v4 setObject:v36 forKey:@"supportsEventLog"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_74;
  }

LABEL_73:
  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMatterTTU];
  [v4 setObject:v37 forKey:@"supportsMatterTTU"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_32:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_75;
  }

LABEL_74:
  v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDistributedExecutionOnPrimary];
  [v4 setObject:v38 forKey:@"supportsDistributedExecutionOnPrimary"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_76;
  }

LABEL_75:
  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsResidentActionSetStateEvaluation];
  [v4 setObject:v39 forKey:@"supportsResidentActionSetStateEvaluation"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_34:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_77;
  }

LABEL_76:
  v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports9907491178];
  [v4 setObject:v40 forKey:@"supports9907491178"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_78;
  }

LABEL_77:
  v41 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRestrictedGuest];
  [v4 setObject:v41 forKey:@"supportsRestrictedGuest"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_36:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_79;
  }

LABEL_78:
  v42 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMatterOwnerCertFetch];
  [v4 setObject:v42 forKey:@"supportsMatterOwnerCertFetch"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_80;
  }

LABEL_79:
  v43 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsa15324f096ec183d];
  [v4 setObject:v43 forKey:@"supportsa15324f096ec183d"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_38:
    if ((*&has & 8) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_81;
  }

LABEL_80:
  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsResidentSelection];
  [v4 setObject:v44 forKey:@"supportsResidentSelection"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_39:
    if ((*&has & 2) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_82;
  }

LABEL_81:
  v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports946950341b318ffd];
  [v4 setObject:v45 forKey:@"supports946950341b318ffd"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_40:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_83;
  }

LABEL_82:
  v46 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports12r9go0ci9109];
  [v4 setObject:v46 forKey:@"supports12r9go0ci9109"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_84;
  }

LABEL_83:
  v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsheephfaid6gg1p54];
  [v4 setObject:v47 forKey:@"supportsheephfaid6gg1p54"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_85:
    v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsd36b1a5183a0f];
    [v4 setObject:v49 forKey:@"supportsd36b1a5183a0f"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_84:
  v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsdafedc977558];
  [v4 setObject:v48 forKey:@"supportsdafedc977558"];

  has = self->_has;
  if ((*&has & 0x4000000000) != 0)
  {
    goto LABEL_85;
  }

LABEL_43:
  if (*&has)
  {
LABEL_44:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports03e098e86062k];
    [v4 setObject:v7 forKey:@"supports03e098e86062k"];
  }

LABEL_45:
  v8 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMProtoResidentCapabilities;
  v4 = [(HMProtoResidentCapabilities *)&v8 description];
  dictionaryRepresentation = [(HMProtoResidentCapabilities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasSupportsd36b1a5183a0f:(BOOL)supportsd36b1a5183a0f
{
  v3 = 0x4000000000;
  if (!supportsd36b1a5183a0f)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasSupportsdafedc977558:(BOOL)supportsdafedc977558
{
  v3 = 0x8000000000;
  if (!supportsdafedc977558)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasSupportsheephfaid6gg1p54:(BOOL)supportsheephfaid6gg1p54
{
  v3 = 0x10000000000;
  if (!supportsheephfaid6gg1p54)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasSupports12r9go0ci9109:(BOOL)supports12r9go0ci9109
{
  v3 = 2;
  if (!supports12r9go0ci9109)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasSupports946950341b318ffd:(BOOL)supports946950341b318ffd
{
  v3 = 8;
  if (!supports946950341b318ffd)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasSupportsResidentSelection:(BOOL)selection
{
  v3 = 0x8000000;
  if (!selection)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasSupportsa15324f096ec183d:(BOOL)supportsa15324f096ec183d
{
  v3 = 0x2000000000;
  if (!supportsa15324f096ec183d)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasSupportsMatterOwnerCertFetch:(BOOL)fetch
{
  v3 = 0x100000;
  if (!fetch)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSupportsRestrictedGuest:(BOOL)guest
{
  v3 = 0x10000000;
  if (!guest)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasSupports9907491178:(BOOL)supports9907491178
{
  v3 = 16;
  if (!supports9907491178)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasSupportsResidentActionSetStateEvaluation:(BOOL)evaluation
{
  v3 = 0x1000000;
  if (!evaluation)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasSupportsDistributedExecutionOnPrimary:(BOOL)primary
{
  v3 = 0x4000;
  if (!primary)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSupportsMatterTTU:(BOOL)u
{
  v3 = 0x200000;
  if (!u)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSupportsEventLog:(BOOL)log
{
  v3 = 0x8000;
  if (!log)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSupports5348b248a25f84b0c83e:(BOOL)supports5348b248a25f84b0c83e
{
  v3 = 4;
  if (!supports5348b248a25f84b0c83e)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasSupportsThreadNetworkCredentialSharing:(BOOL)sharing
{
  v3 = 0x200000000;
  if (!sharing)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasSupportsResidentFirstAccessoryCommunication:(BOOL)communication
{
  v3 = 0x4000000;
  if (!communication)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSupportsHomeHub:(BOOL)hub
{
  v3 = 0x40000;
  if (!hub)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSupportsUnifiedMediaNotifications:(BOOL)notifications
{
  v3 = 0x400000000;
  if (!notifications)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasSupportsCustomMediaApplicationDestination:(BOOL)destination
{
  v3 = 0x2000;
  if (!destination)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasSupportsSiriEndpointSetup:(BOOL)setup
{
  v3 = 0x80000000;
  if (!setup)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasSupportsThreadBorderRouter:(BOOL)router
{
  v3 = 0x100000000;
  if (!router)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSupportsCHIP:(BOOL)p
{
  v3 = 128;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasSupportsAccessCodes:(BOOL)codes
{
  v3 = 32;
  if (!codes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasSupportsCameraPackageDetection:(BOOL)detection
{
  v3 = 512;
  if (!detection)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasSupportsWalletKey:(BOOL)key
{
  v3 = 0x1000000000;
  if (!key)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSupportsLockNotificationContext:(BOOL)context
{
  v3 = 0x80000;
  if (!context)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSupportsWakeOnLAN:(BOOL)n
{
  v3 = 0x800000000;
  if (!n)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasSupportsAnnounce:(BOOL)announce
{
  v3 = 64;
  if (!announce)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasSupportsCameraRecordingReachabilityNotifications:(BOOL)notifications
{
  v3 = 2048;
  if (!notifications)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSupportsNaturalLighting:(BOOL)lighting
{
  v3 = 0x800000;
  if (!lighting)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasSupportsFaceClassification:(BOOL)classification
{
  v3 = 0x10000;
  if (!classification)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSupportsCameraActivityZones:(BOOL)zones
{
  v3 = 256;
  if (!zones)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasSupportsResidentFirmwareUpdate:(BOOL)update
{
  v3 = 0x2000000;
  if (!update)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasSupportsFirmwareUpdate:(BOOL)update
{
  v3 = 0x20000;
  if (!update)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSupportsCameraSignificantEventNotifications:(BOOL)notifications
{
  v3 = 4096;
  if (!notifications)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasSupportsMediaActions:(BOOL)actions
{
  v3 = 0x400000;
  if (!actions)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSupportsShortcutActions:(BOOL)actions
{
  v3 = 0x40000000;
  if (!actions)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSupportsRouterManagement:(BOOL)management
{
  v3 = 0x20000000;
  if (!management)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSupportsCameraRecording:(BOOL)recording
{
  v3 = 1024;
  if (!recording)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

@end