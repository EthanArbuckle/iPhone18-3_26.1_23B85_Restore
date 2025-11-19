@interface HMProtoAccessoryCapabilities
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSupports24b183bad693415:(BOOL)a3;
- (void)setHasSupports29dfaee0e6d26dc:(BOOL)a3;
- (void)setHasSupports2c25465bb0b47366:(BOOL)a3;
- (void)setHasSupports45c051b0b1f0:(BOOL)a3;
- (void)setHasSupports89024c1cadcb8b00:(BOOL)a3;
- (void)setHasSupports90bb069d6bx54e7:(BOOL)a3;
- (void)setHasSupportsAnnounce:(BOOL)a3;
- (void)setHasSupportsAssistantAccessControl:(BOOL)a3;
- (void)setHasSupportsAudioReturnChannel:(BOOL)a3;
- (void)setHasSupportsCaptiveNetworks:(BOOL)a3;
- (void)setHasSupportsCloudDataSync:(BOOL)a3;
- (void)setHasSupportsCompanionInitiatedObliterate:(BOOL)a3;
- (void)setHasSupportsCompanionInitiatedRestart:(BOOL)a3;
- (void)setHasSupportsCoordinationDoorbellChime:(BOOL)a3;
- (void)setHasSupportsCoordinationFreeDoorbellChime:(BOOL)a3;
- (void)setHasSupportsDeviceSetup:(BOOL)a3;
- (void)setHasSupportsDoorbellChime:(BOOL)a3;
- (void)setHasSupportsHomeHub:(BOOL)a3;
- (void)setHasSupportsHomeInvitation:(BOOL)a3;
- (void)setHasSupportsHomeLevelAnalyticsAndImprovementSetting:(BOOL)a3;
- (void)setHasSupportsHomeLevelLocationServiceSetting:(BOOL)a3;
- (void)setHasSupportsInstallManagedConfigurationProfile:(BOOL)a3;
- (void)setHasSupportsKeyTransferClient:(BOOL)a3;
- (void)setHasSupportsKeyTransferServer:(BOOL)a3;
- (void)setHasSupportsKeychainSync:(BOOL)a3;
- (void)setHasSupportsManagedConfigurationProfile:(BOOL)a3;
- (void)setHasSupportsMediaActions:(BOOL)a3;
- (void)setHasSupportsMessagedHomePodSettings:(BOOL)a3;
- (void)setHasSupportsMultiUser:(BOOL)a3;
- (void)setHasSupportsMusicAlarm:(BOOL)a3;
- (void)setHasSupportsNetworkDiagnostics:(BOOL)a3;
- (void)setHasSupportsPreferredMediaUser:(BOOL)a3;
- (void)setHasSupportsSoftwareUpdateV2:(BOOL)a3;
- (void)setHasSupportsStandaloneMode:(BOOL)a3;
- (void)setHasSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)a3;
- (void)setHasSupportsTVOSUpdateManualUpdateAvailableNotification:(BOOL)a3;
- (void)setHasSupportsTargetControl:(BOOL)a3;
- (void)setHasSupportsThirdPartyMusic:(BOOL)a3;
- (void)setHasSupportsThreadBorderRouter:(BOOL)a3;
- (void)setHasSupportsUserMediaSettings:(BOOL)a3;
- (void)setHasSupportsWholeHouseAudio:(BOOL)a3;
- (void)setHasSupportsWiFiRepairV2:(BOOL)a3;
- (void)setHasSupportsf9cc0d9d6aa54e7:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMProtoAccessoryCapabilities

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(HMProtoAccessoryCapabilities *)self setTag:?];
    v4 = v6;
  }

  v5 = *(v4 + 60);
  if ((v5 & 0x2000000) != 0)
  {
    self->_supportsKeychainSync = v4[41];
    *&self->_has |= 0x2000000uLL;
    v5 = *(v4 + 60);
    if ((v5 & 0x10000) == 0)
    {
LABEL_5:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }
  }

  else if ((v5 & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  self->_supportsDeviceSetup = v4[32];
  *&self->_has |= 0x10000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x800000) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_supportsKeyTransferClient = v4[39];
  *&self->_has |= 0x800000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_supportsKeyTransferServer = v4[40];
  *&self->_has |= 0x1000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_supportsStandaloneMode = v4[50];
  *&self->_has |= 0x400000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_supportsCloudDataSync = v4[27];
  *&self->_has |= 0x800uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_supportsWholeHouseAudio = v4[57];
  *&self->_has |= 0x20000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_supportsAssistantAccessControl = v4[24];
  *&self->_has |= 0x100uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x80000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_supportsHomeInvitation = v4[35];
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_supportsTargetControl = v4[53];
  *&self->_has |= 0x2000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_supportsMultiUser = v4[45];
  *&self->_has |= 0x20000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x200000) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_supportsHomeLevelLocationServiceSetting = v4[37];
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_supportsHomeLevelAnalyticsAndImprovementSetting = v4[36];
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_supportsCompanionInitiatedRestart = v4[29];
  *&self->_has |= 0x2000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_supportsMusicAlarm = v4[46];
  *&self->_has |= 0x40000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_supportsAnnounce = v4[23];
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_supportsf9cc0d9d6aa54e7 = v4[59];
  *&self->_has |= 0x80000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_supportsThirdPartyMusic = v4[54];
  *&self->_has |= 0x4000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_supportsPreferredMediaUser = v4[48];
  *&self->_has |= 0x100000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_supportsThreadBorderRouter = v4[55];
  *&self->_has |= 0x8000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x20000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_supportsDoorbellChime = v4[33];
  *&self->_has |= 0x20000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_supportsUserMediaSettings = v4[56];
  *&self->_has |= 0x10000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x4000) == 0)
  {
LABEL_26:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_supportsCoordinationDoorbellChime = v4[30];
  *&self->_has |= 0x4000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_supportsHomeHub = v4[34];
  *&self->_has |= 0x40000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_28:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_supportsAudioReturnChannel = v4[25];
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_supportsManagedConfigurationProfile = v4[42];
  *&self->_has |= 0x4000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x400) == 0)
  {
LABEL_30:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_supportsCaptiveNetworks = v4[26];
  *&self->_has |= 0x400uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_supportsMessagedHomePodSettings = v4[44];
  *&self->_has |= 0x10000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_supportsMediaActions = v4[43];
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x40) == 0)
  {
LABEL_33:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_supports90bb069d6bx54e7 = v4[22];
  *&self->_has |= 0x40uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_34:
    if ((v5 & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_supports89024c1cadcb8b00 = v4[21];
  *&self->_has |= 0x20uLL;
  v5 = *(v4 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_35:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_supports2c25465bb0b47366 = v4[19];
  *&self->_has |= 8uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x400000) == 0)
  {
LABEL_36:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_supportsInstallManagedConfigurationProfile = v4[38];
  *&self->_has |= 0x400000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x8000) == 0)
  {
LABEL_37:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_supportsCoordinationFreeDoorbellChime = v4[31];
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x1000) == 0)
  {
LABEL_38:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_supportsCompanionInitiatedObliterate = v4[28];
  *&self->_has |= 0x1000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_39:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_supports45c051b0b1f0 = v4[20];
  *&self->_has |= 0x10uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_supportsTVOSUpdateManualUpdateAvailableNotification = v4[52];
  *&self->_has |= 0x1000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_supportsWiFiRepairV2 = v4[58];
  *&self->_has |= 0x40000000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_supportsSoftwareUpdateV2 = v4[49];
  *&self->_has |= 0x200000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_supportsStereoOdeonTTSUBypassingPrimary = v4[51];
  *&self->_has |= 0x800000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_44:
    if ((v5 & 2) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_supportsNetworkDiagnostics = v4[47];
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_45:
    if ((v5 & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_supports24b183bad693415 = v4[17];
  *&self->_has |= 2uLL;
  v5 = *(v4 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_46:
    if ((v5 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_93:
  self->_supports29dfaee0e6d26dc = v4[18];
  *&self->_has |= 4uLL;
  if (*(v4 + 60))
  {
LABEL_47:
    self->_clearsKeychainWhenRemovedFromHome = v4[16];
    *&self->_has |= 1uLL;
  }

LABEL_48:
}

- (unint64_t)hash
{
  v49 = [(NSString *)self->_tag hash];
  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    v48 = 2654435761 * self->_supportsKeychainSync;
    if ((*&has & 0x10000) != 0)
    {
LABEL_3:
      v47 = 2654435761 * self->_supportsDeviceSetup;
      if ((*&has & 0x800000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v48 = 0;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_3;
    }
  }

  v47 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_4:
    v46 = 2654435761 * self->_supportsKeyTransferClient;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  v46 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_5:
    v45 = 2654435761 * self->_supportsKeyTransferServer;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  v45 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_6:
    v44 = 2654435761 * self->_supportsStandaloneMode;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  v44 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_7:
    v43 = 2654435761 * self->_supportsCloudDataSync;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  v43 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_8:
    v42 = 2654435761 * self->_supportsWholeHouseAudio;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  v42 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_9:
    v41 = 2654435761 * self->_supportsAssistantAccessControl;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  v41 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_10:
    v40 = 2654435761 * self->_supportsHomeInvitation;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  v40 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_11:
    v39 = 2654435761 * self->_supportsTargetControl;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  v39 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_12:
    v38 = 2654435761 * self->_supportsMultiUser;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  v38 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_13:
    v37 = 2654435761 * self->_supportsHomeLevelLocationServiceSetting;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  v37 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_14:
    v36 = 2654435761 * self->_supportsHomeLevelAnalyticsAndImprovementSetting;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  v36 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_15:
    v35 = 2654435761 * self->_supportsCompanionInitiatedRestart;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  v35 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_16:
    v34 = 2654435761 * self->_supportsMusicAlarm;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_17:
    v33 = 2654435761 * self->_supportsAnnounce;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  v33 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_18:
    v32 = 2654435761 * self->_supportsf9cc0d9d6aa54e7;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  v32 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_19:
    v31 = 2654435761 * self->_supportsThirdPartyMusic;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  v31 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_20:
    v4 = 2654435761 * self->_supportsPreferredMediaUser;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  v4 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_21:
    v5 = 2654435761 * self->_supportsThreadBorderRouter;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  v5 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_22:
    v6 = 2654435761 * self->_supportsDoorbellChime;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  v6 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_23:
    v7 = 2654435761 * self->_supportsUserMediaSettings;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  v7 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_24:
    v8 = 2654435761 * self->_supportsCoordinationDoorbellChime;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v8 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_25:
    v9 = 2654435761 * self->_supportsHomeHub;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v9 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_26:
    v10 = 2654435761 * self->_supportsAudioReturnChannel;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v10 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_27:
    v11 = 2654435761 * self->_supportsManagedConfigurationProfile;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v11 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_28:
    v12 = 2654435761 * self->_supportsCaptiveNetworks;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  v12 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_29:
    v13 = 2654435761 * self->_supportsMessagedHomePodSettings;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  v13 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_30:
    v14 = 2654435761 * self->_supportsMediaActions;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  v14 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_31:
    v15 = 2654435761 * self->_supports90bb069d6bx54e7;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  v15 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_32:
    v16 = 2654435761 * self->_supports89024c1cadcb8b00;
    if ((*&has & 8) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_33:
    v17 = 2654435761 * self->_supports2c25465bb0b47366;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  v17 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_34:
    v18 = 2654435761 * self->_supportsInstallManagedConfigurationProfile;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  v18 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_35:
    v19 = 2654435761 * self->_supportsCoordinationFreeDoorbellChime;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  v19 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_36:
    v20 = 2654435761 * self->_supportsCompanionInitiatedObliterate;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_37:
    v21 = 2654435761 * self->_supports45c051b0b1f0;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  v21 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_38:
    v22 = 2654435761 * self->_supportsTVOSUpdateManualUpdateAvailableNotification;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  v22 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_39:
    v23 = 2654435761 * self->_supportsWiFiRepairV2;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  v23 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_40:
    v24 = 2654435761 * self->_supportsSoftwareUpdateV2;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  v24 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_41:
    v25 = 2654435761 * self->_supportsStereoOdeonTTSUBypassingPrimary;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  v25 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_42:
    v26 = 2654435761 * self->_supportsNetworkDiagnostics;
    if ((*&has & 2) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  v26 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_43:
    v27 = 2654435761 * self->_supports24b183bad693415;
    if ((*&has & 4) != 0)
    {
      goto LABEL_44;
    }

LABEL_88:
    v28 = 0;
    if (*&has)
    {
      goto LABEL_45;
    }

LABEL_89:
    v29 = 0;
    return v48 ^ v49 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_87:
  v27 = 0;
  if ((*&has & 4) == 0)
  {
    goto LABEL_88;
  }

LABEL_44:
  v28 = 2654435761 * self->_supports29dfaee0e6d26dc;
  if ((*&has & 1) == 0)
  {
    goto LABEL_89;
  }

LABEL_45:
  v29 = 2654435761 * self->_clearsKeychainWhenRemovedFromHome;
  return v48 ^ v49 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_353;
  }

  tag = self->_tag;
  if (tag | *(v4 + 1))
  {
    if (![(NSString *)tag isEqual:?])
    {
      goto LABEL_353;
    }
  }

  has = self->_has;
  v7 = *(v4 + 60);
  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0)
    {
      goto LABEL_353;
    }

    v8 = v4[41];
    if (self->_supportsKeychainSync)
    {
      if ((v4[41] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[41])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_353;
    }

    v9 = v4[32];
    if (self->_supportsDeviceSetup)
    {
      if ((v4[32] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[32])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_353;
    }

    v10 = v4[39];
    if (self->_supportsKeyTransferClient)
    {
      if ((v4[39] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[39])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0)
    {
      goto LABEL_353;
    }

    v11 = v4[40];
    if (self->_supportsKeyTransferServer)
    {
      if ((v4[40] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[40])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0)
    {
      goto LABEL_353;
    }

    v12 = v4[50];
    if (self->_supportsStandaloneMode)
    {
      if ((v4[50] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[50])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_353;
    }

    v13 = v4[27];
    if (self->_supportsCloudDataSync)
    {
      if ((v4[27] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[27])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0)
    {
      goto LABEL_353;
    }

    v14 = v4[57];
    if (self->_supportsWholeHouseAudio)
    {
      if ((v4[57] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[57])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_353;
    }

    v15 = v4[24];
    if (self->_supportsAssistantAccessControl)
    {
      if ((v4[24] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[24])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_353;
    }

    v16 = v4[35];
    if (self->_supportsHomeInvitation)
    {
      if ((v4[35] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[35])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_353;
    }

    v17 = v4[53];
    if (self->_supportsTargetControl)
    {
      if ((v4[53] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[53])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0)
    {
      goto LABEL_353;
    }

    v18 = v4[45];
    if (self->_supportsMultiUser)
    {
      if ((v4[45] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[45])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_353;
    }

    v19 = v4[37];
    if (self->_supportsHomeLevelLocationServiceSetting)
    {
      if ((v4[37] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[37])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_353;
    }

    v20 = v4[36];
    if (self->_supportsHomeLevelAnalyticsAndImprovementSetting)
    {
      if ((v4[36] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[36])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_353;
    }

    v21 = v4[29];
    if (self->_supportsCompanionInitiatedRestart)
    {
      if ((v4[29] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[29])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_353;
    }

    v22 = v4[46];
    if (self->_supportsMusicAlarm)
    {
      if ((v4[46] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[46])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_353;
    }

    v23 = v4[23];
    if (self->_supportsAnnounce)
    {
      if ((v4[23] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[23])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_353;
    }

    v24 = v4[59];
    if (self->_supportsf9cc0d9d6aa54e7)
    {
      if ((v4[59] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[59])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_353;
    }

    v25 = v4[54];
    if (self->_supportsThirdPartyMusic)
    {
      if ((v4[54] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[54])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_353;
    }

    v26 = v4[48];
    if (self->_supportsPreferredMediaUser)
    {
      if ((v4[48] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[48])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_353;
    }

    v27 = v4[55];
    if (self->_supportsThreadBorderRouter)
    {
      if ((v4[55] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[55])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0)
    {
      goto LABEL_353;
    }

    v28 = v4[33];
    if (self->_supportsDoorbellChime)
    {
      if ((v4[33] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[33])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_353;
    }

    v29 = v4[56];
    if (self->_supportsUserMediaSettings)
    {
      if ((v4[56] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[56])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_353;
    }

    v30 = v4[30];
    if (self->_supportsCoordinationDoorbellChime)
    {
      if ((v4[30] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[30])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_353;
    }

    v31 = v4[34];
    if (self->_supportsHomeHub)
    {
      if ((v4[34] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[34])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_353;
    }

    v32 = v4[25];
    if (self->_supportsAudioReturnChannel)
    {
      if ((v4[25] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[25])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_353;
    }

    v33 = v4[42];
    if (self->_supportsManagedConfigurationProfile)
    {
      if ((v4[42] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[42])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_353;
    }

    v34 = v4[26];
    if (self->_supportsCaptiveNetworks)
    {
      if ((v4[26] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[26])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0)
    {
      goto LABEL_353;
    }

    v35 = v4[44];
    if (self->_supportsMessagedHomePodSettings)
    {
      if ((v4[44] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[44])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_353;
    }

    v36 = v4[43];
    if (self->_supportsMediaActions)
    {
      if ((v4[43] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[43])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_353;
    }

    v37 = v4[22];
    if (self->_supports90bb069d6bx54e7)
    {
      if ((v4[22] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[22])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_353;
    }

    v38 = v4[21];
    if (self->_supports89024c1cadcb8b00)
    {
      if ((v4[21] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[21])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_353;
    }

    v39 = v4[19];
    if (self->_supports2c25465bb0b47366)
    {
      if ((v4[19] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[19])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_353;
    }

    v40 = v4[38];
    if (self->_supportsInstallManagedConfigurationProfile)
    {
      if ((v4[38] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[38])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_353;
    }

    v41 = v4[31];
    if (self->_supportsCoordinationFreeDoorbellChime)
    {
      if ((v4[31] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[31])
    {
      goto LABEL_353;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_353;
  }

  v42 = *(v4 + 60);
  if ((*&has & 0x1000) != 0)
  {
    if ((v42 & 0x1000) == 0)
    {
      goto LABEL_353;
    }

    v43 = v4[28];
    if (self->_supportsCompanionInitiatedObliterate)
    {
      if ((v4[28] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[28])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x1000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v42 & 0x10) == 0)
    {
      goto LABEL_353;
    }

    v44 = v4[20];
    if (self->_supports45c051b0b1f0)
    {
      if ((v4[20] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[20])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x10) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v42 & 0x1000000000) == 0)
    {
      goto LABEL_353;
    }

    v45 = v4[52];
    if (self->_supportsTVOSUpdateManualUpdateAvailableNotification)
    {
      if ((v4[52] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[52])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x1000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v42 & 0x40000000000) == 0)
    {
      goto LABEL_353;
    }

    v46 = v4[58];
    if (self->_supportsWiFiRepairV2)
    {
      if ((v4[58] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[58])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x40000000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v42 & 0x200000000) == 0)
    {
      goto LABEL_353;
    }

    v47 = v4[49];
    if (self->_supportsSoftwareUpdateV2)
    {
      if ((v4[49] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[49])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x200000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v42 & 0x800000000) == 0)
    {
      goto LABEL_353;
    }

    v48 = v4[51];
    if (self->_supportsStereoOdeonTTSUBypassingPrimary)
    {
      if ((v4[51] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[51])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x800000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_353;
    }

    v49 = v4[47];
    if (self->_supportsNetworkDiagnostics)
    {
      if ((v4[47] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[47])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 0x80000000) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 2) != 0)
  {
    if ((v42 & 2) == 0)
    {
      goto LABEL_353;
    }

    v50 = v4[17];
    if (self->_supports24b183bad693415)
    {
      if ((v4[17] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[17])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 2) != 0)
  {
    goto LABEL_353;
  }

  if ((*&has & 4) != 0)
  {
    if ((v42 & 4) == 0)
    {
      goto LABEL_353;
    }

    v51 = v4[18];
    if (self->_supports29dfaee0e6d26dc)
    {
      if ((v4[18] & 1) == 0)
      {
        goto LABEL_353;
      }
    }

    else if (v4[18])
    {
      goto LABEL_353;
    }
  }

  else if ((v42 & 4) != 0)
  {
    goto LABEL_353;
  }

  if (*&has)
  {
    if (v42)
    {
      if (self->_clearsKeychainWhenRemovedFromHome)
      {
        if ((v4[16] & 1) == 0)
        {
          goto LABEL_353;
        }
      }

      else if (v4[16])
      {
        goto LABEL_353;
      }

      v52 = 1;
      goto LABEL_354;
    }

LABEL_353:
    v52 = 0;
    goto LABEL_354;
  }

  v52 = (*(v4 + 60) & 1) == 0;
LABEL_354:

  return v52;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_tag copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    *(v5 + 41) = self->_supportsKeychainSync;
    *(v5 + 60) |= 0x2000000uLL;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_supportsDeviceSetup;
  *(v5 + 60) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 39) = self->_supportsKeyTransferClient;
  *(v5 + 60) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_5:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 40) = self->_supportsKeyTransferServer;
  *(v5 + 60) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 50) = self->_supportsStandaloneMode;
  *(v5 + 60) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 27) = self->_supportsCloudDataSync;
  *(v5 + 60) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 57) = self->_supportsWholeHouseAudio;
  *(v5 + 60) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 24) = self->_supportsAssistantAccessControl;
  *(v5 + 60) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 35) = self->_supportsHomeInvitation;
  *(v5 + 60) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 53) = self->_supportsTargetControl;
  *(v5 + 60) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 45) = self->_supportsMultiUser;
  *(v5 + 60) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 37) = self->_supportsHomeLevelLocationServiceSetting;
  *(v5 + 60) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 36) = self->_supportsHomeLevelAnalyticsAndImprovementSetting;
  *(v5 + 60) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 29) = self->_supportsCompanionInitiatedRestart;
  *(v5 + 60) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 46) = self->_supportsMusicAlarm;
  *(v5 + 60) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_17:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 23) = self->_supportsAnnounce;
  *(v5 + 60) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 59) = self->_supportsf9cc0d9d6aa54e7;
  *(v5 + 60) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 54) = self->_supportsThirdPartyMusic;
  *(v5 + 60) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 48) = self->_supportsPreferredMediaUser;
  *(v5 + 60) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 55) = self->_supportsThreadBorderRouter;
  *(v5 + 60) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 33) = self->_supportsDoorbellChime;
  *(v5 + 60) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 56) = self->_supportsUserMediaSettings;
  *(v5 + 60) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 30) = self->_supportsCoordinationDoorbellChime;
  *(v5 + 60) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 34) = self->_supportsHomeHub;
  *(v5 + 60) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_26:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 25) = self->_supportsAudioReturnChannel;
  *(v5 + 60) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 42) = self->_supportsManagedConfigurationProfile;
  *(v5 + 60) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_28:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 26) = self->_supportsCaptiveNetworks;
  *(v5 + 60) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 44) = self->_supportsMessagedHomePodSettings;
  *(v5 + 60) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 43) = self->_supportsMediaActions;
  *(v5 + 60) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_31:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 22) = self->_supports90bb069d6bx54e7;
  *(v5 + 60) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_32:
    if ((*&has & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 21) = self->_supports89024c1cadcb8b00;
  *(v5 + 60) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_33:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 19) = self->_supports2c25465bb0b47366;
  *(v5 + 60) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_34:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 38) = self->_supportsInstallManagedConfigurationProfile;
  *(v5 + 60) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 31) = self->_supportsCoordinationFreeDoorbellChime;
  *(v5 + 60) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 28) = self->_supportsCompanionInitiatedObliterate;
  *(v5 + 60) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 20) = self->_supports45c051b0b1f0;
  *(v5 + 60) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 52) = self->_supportsTVOSUpdateManualUpdateAvailableNotification;
  *(v5 + 60) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 58) = self->_supportsWiFiRepairV2;
  *(v5 + 60) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 49) = self->_supportsSoftwareUpdateV2;
  *(v5 + 60) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 51) = self->_supportsStereoOdeonTTSUBypassingPrimary;
  *(v5 + 60) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_42:
    if ((*&has & 2) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v5 + 47) = self->_supportsNetworkDiagnostics;
  *(v5 + 60) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_43:
    if ((*&has & 4) == 0)
    {
      goto LABEL_44;
    }

LABEL_89:
    *(v5 + 18) = self->_supports29dfaee0e6d26dc;
    *(v5 + 60) |= 4uLL;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_88:
  *(v5 + 17) = self->_supports24b183bad693415;
  *(v5 + 60) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) != 0)
  {
    goto LABEL_89;
  }

LABEL_44:
  if (*&has)
  {
LABEL_45:
    *(v5 + 16) = self->_clearsKeychainWhenRemovedFromHome;
    *(v5 + 60) |= 1uLL;
  }

LABEL_46:
  v9 = v5;

  return v9;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_tag)
  {
    v6 = v4;
    [v4 setTag:?];
    v4 = v6;
  }

  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    v4[41] = self->_supportsKeychainSync;
    *(v4 + 60) |= 0x2000000uLL;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_5:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  v4[32] = self->_supportsDeviceSetup;
  *(v4 + 60) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4[39] = self->_supportsKeyTransferClient;
  *(v4 + 60) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  v4[40] = self->_supportsKeyTransferServer;
  *(v4 + 60) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4[50] = self->_supportsStandaloneMode;
  *(v4 + 60) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4[27] = self->_supportsCloudDataSync;
  *(v4 + 60) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4[57] = self->_supportsWholeHouseAudio;
  *(v4 + 60) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4[24] = self->_supportsAssistantAccessControl;
  *(v4 + 60) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v4[35] = self->_supportsHomeInvitation;
  *(v4 + 60) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  v4[53] = self->_supportsTargetControl;
  *(v4 + 60) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  v4[45] = self->_supportsMultiUser;
  *(v4 + 60) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4[37] = self->_supportsHomeLevelLocationServiceSetting;
  *(v4 + 60) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  v4[36] = self->_supportsHomeLevelAnalyticsAndImprovementSetting;
  *(v4 + 60) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  v4[29] = self->_supportsCompanionInitiatedRestart;
  *(v4 + 60) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  v4[46] = self->_supportsMusicAlarm;
  *(v4 + 60) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  v4[23] = self->_supportsAnnounce;
  *(v4 + 60) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v4[59] = self->_supportsf9cc0d9d6aa54e7;
  *(v4 + 60) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  v4[54] = self->_supportsThirdPartyMusic;
  *(v4 + 60) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v4[48] = self->_supportsPreferredMediaUser;
  *(v4 + 60) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  v4[55] = self->_supportsThreadBorderRouter;
  *(v4 + 60) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  v4[33] = self->_supportsDoorbellChime;
  *(v4 + 60) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4[56] = self->_supportsUserMediaSettings;
  *(v4 + 60) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  v4[30] = self->_supportsCoordinationDoorbellChime;
  *(v4 + 60) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4[34] = self->_supportsHomeHub;
  *(v4 + 60) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4[25] = self->_supportsAudioReturnChannel;
  *(v4 + 60) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  v4[42] = self->_supportsManagedConfigurationProfile;
  *(v4 + 60) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4[26] = self->_supportsCaptiveNetworks;
  *(v4 + 60) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  v4[44] = self->_supportsMessagedHomePodSettings;
  *(v4 + 60) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  v4[43] = self->_supportsMediaActions;
  *(v4 + 60) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  v4[22] = self->_supports90bb069d6bx54e7;
  *(v4 + 60) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  v4[21] = self->_supports89024c1cadcb8b00;
  *(v4 + 60) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  v4[19] = self->_supports2c25465bb0b47366;
  *(v4 + 60) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_36:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  v4[38] = self->_supportsInstallManagedConfigurationProfile;
  *(v4 + 60) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  v4[31] = self->_supportsCoordinationFreeDoorbellChime;
  *(v4 + 60) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_38:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  v4[28] = self->_supportsCompanionInitiatedObliterate;
  *(v4 + 60) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_39:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  v4[20] = self->_supports45c051b0b1f0;
  *(v4 + 60) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  v4[52] = self->_supportsTVOSUpdateManualUpdateAvailableNotification;
  *(v4 + 60) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  v4[58] = self->_supportsWiFiRepairV2;
  *(v4 + 60) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  v4[49] = self->_supportsSoftwareUpdateV2;
  *(v4 + 60) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  v4[51] = self->_supportsStereoOdeonTTSUBypassingPrimary;
  *(v4 + 60) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&has & 2) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  v4[47] = self->_supportsNetworkDiagnostics;
  *(v4 + 60) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_45:
    if ((*&has & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  v4[17] = self->_supports24b183bad693415;
  *(v4 + 60) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_46:
    if ((*&has & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_93:
  v4[18] = self->_supports29dfaee0e6d26dc;
  *(v4 + 60) |= 4uLL;
  if (*&self->_has)
  {
LABEL_47:
    v4[16] = self->_clearsKeychainWhenRemovedFromHome;
    *(v4 + 60) |= 1uLL;
  }

LABEL_48:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v50 = v4;
  if (self->_tag)
  {
    PBDataWriterWriteStringField();
    v4 = v50;
  }

  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    supportsKeychainSync = self->_supportsKeychainSync;
    PBDataWriterWriteBOOLField();
    v4 = v50;
    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_5:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  supportsDeviceSetup = self->_supportsDeviceSetup;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  supportsKeyTransferClient = self->_supportsKeyTransferClient;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  supportsKeyTransferServer = self->_supportsKeyTransferServer;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  supportsStandaloneMode = self->_supportsStandaloneMode;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  supportsCloudDataSync = self->_supportsCloudDataSync;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  supportsWholeHouseAudio = self->_supportsWholeHouseAudio;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  supportsAssistantAccessControl = self->_supportsAssistantAccessControl;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  supportsHomeInvitation = self->_supportsHomeInvitation;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  supportsTargetControl = self->_supportsTargetControl;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  supportsMultiUser = self->_supportsMultiUser;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  supportsHomeLevelLocationServiceSetting = self->_supportsHomeLevelLocationServiceSetting;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  supportsHomeLevelAnalyticsAndImprovementSetting = self->_supportsHomeLevelAnalyticsAndImprovementSetting;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  supportsCompanionInitiatedRestart = self->_supportsCompanionInitiatedRestart;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  supportsMusicAlarm = self->_supportsMusicAlarm;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  supportsAnnounce = self->_supportsAnnounce;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  supportsf9cc0d9d6aa54e7 = self->_supportsf9cc0d9d6aa54e7;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  supportsThirdPartyMusic = self->_supportsThirdPartyMusic;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  supportsPreferredMediaUser = self->_supportsPreferredMediaUser;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  supportsThreadBorderRouter = self->_supportsThreadBorderRouter;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  supportsDoorbellChime = self->_supportsDoorbellChime;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  supportsUserMediaSettings = self->_supportsUserMediaSettings;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  supportsCoordinationDoorbellChime = self->_supportsCoordinationDoorbellChime;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  supportsHomeHub = self->_supportsHomeHub;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  supportsAudioReturnChannel = self->_supportsAudioReturnChannel;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  supportsManagedConfigurationProfile = self->_supportsManagedConfigurationProfile;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  supportsCaptiveNetworks = self->_supportsCaptiveNetworks;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  supportsMessagedHomePodSettings = self->_supportsMessagedHomePodSettings;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  supportsMediaActions = self->_supportsMediaActions;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  supports90bb069d6bx54e7 = self->_supports90bb069d6bx54e7;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  supports89024c1cadcb8b00 = self->_supports89024c1cadcb8b00;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  supports2c25465bb0b47366 = self->_supports2c25465bb0b47366;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_36:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  supportsInstallManagedConfigurationProfile = self->_supportsInstallManagedConfigurationProfile;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  supportsCoordinationFreeDoorbellChime = self->_supportsCoordinationFreeDoorbellChime;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_38:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  supportsCompanionInitiatedObliterate = self->_supportsCompanionInitiatedObliterate;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_39:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  supports45c051b0b1f0 = self->_supports45c051b0b1f0;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  supportsTVOSUpdateManualUpdateAvailableNotification = self->_supportsTVOSUpdateManualUpdateAvailableNotification;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  supportsWiFiRepairV2 = self->_supportsWiFiRepairV2;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  supportsSoftwareUpdateV2 = self->_supportsSoftwareUpdateV2;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  supportsStereoOdeonTTSUBypassingPrimary = self->_supportsStereoOdeonTTSUBypassingPrimary;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&has & 2) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  supportsNetworkDiagnostics = self->_supportsNetworkDiagnostics;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_45:
    if ((*&has & 4) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  supports24b183bad693415 = self->_supports24b183bad693415;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_46:
    if ((*&has & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_93:
  supports29dfaee0e6d26dc = self->_supports29dfaee0e6d26dc;
  PBDataWriterWriteBOOLField();
  v4 = v50;
  if (*&self->_has)
  {
LABEL_47:
    clearsKeychainWhenRemovedFromHome = self->_clearsKeychainWhenRemovedFromHome;
    PBDataWriterWriteBOOLField();
    v4 = v50;
  }

LABEL_48:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  tag = self->_tag;
  if (tag)
  {
    [v3 setObject:tag forKey:@"tag"];
  }

  has = self->_has;
  if ((*&has & 0x2000000) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsKeychainSync];
    [v4 setObject:v10 forKey:@"supportsKeychainSync"];

    has = self->_has;
    if ((*&has & 0x10000) == 0)
    {
LABEL_5:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_51;
    }
  }

  else if ((*&has & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDeviceSetup];
  [v4 setObject:v11 forKey:@"supportsDeviceSetup"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsKeyTransferClient];
  [v4 setObject:v12 forKey:@"supportsKeyTransferClient"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsKeyTransferServer];
  [v4 setObject:v13 forKey:@"supportsKeyTransferServer"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsStandaloneMode];
  [v4 setObject:v14 forKey:@"supportsStandaloneMode"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCloudDataSync];
  [v4 setObject:v15 forKey:@"supportsCloudDataSync"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsWholeHouseAudio];
  [v4 setObject:v16 forKey:@"supportsWholeHouseAudio"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAssistantAccessControl];
  [v4 setObject:v17 forKey:@"supportsAssistantAccessControl"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHomeInvitation];
  [v4 setObject:v18 forKey:@"supportsHomeInvitation"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsTargetControl];
  [v4 setObject:v19 forKey:@"supportsTargetControl"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMultiUser];
  [v4 setObject:v20 forKey:@"supportsMultiUser"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_15:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHomeLevelLocationServiceSetting];
  [v4 setObject:v21 forKey:@"supportsHomeLevelLocationServiceSetting"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_16:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHomeLevelAnalyticsAndImprovementSetting];
  [v4 setObject:v22 forKey:@"supportsHomeLevelAnalyticsAndImprovementSetting"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCompanionInitiatedRestart];
  [v4 setObject:v23 forKey:@"supportsCompanionInitiatedRestart"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMusicAlarm];
  [v4 setObject:v24 forKey:@"supportsMusicAlarm"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAnnounce];
  [v4 setObject:v25 forKey:@"supportsAnnounce"];

  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsf9cc0d9d6aa54e7];
  [v4 setObject:v26 forKey:@"supportsf9cc0d9d6aa54e7"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsThirdPartyMusic];
  [v4 setObject:v27 forKey:@"supportsThirdPartyMusic"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsPreferredMediaUser];
  [v4 setObject:v28 forKey:@"supportsPreferredMediaUser"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsThreadBorderRouter];
  [v4 setObject:v29 forKey:@"supportsThreadBorderRouter"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_24:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDoorbellChime];
  [v4 setObject:v30 forKey:@"supportsDoorbellChime"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsUserMediaSettings];
  [v4 setObject:v31 forKey:@"supportsUserMediaSettings"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCoordinationDoorbellChime];
  [v4 setObject:v32 forKey:@"supportsCoordinationDoorbellChime"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_27:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsHomeHub];
  [v4 setObject:v33 forKey:@"supportsHomeHub"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_28:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAudioReturnChannel];
  [v4 setObject:v34 forKey:@"supportsAudioReturnChannel"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsManagedConfigurationProfile];
  [v4 setObject:v35 forKey:@"supportsManagedConfigurationProfile"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCaptiveNetworks];
  [v4 setObject:v36 forKey:@"supportsCaptiveNetworks"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMessagedHomePodSettings];
  [v4 setObject:v37 forKey:@"supportsMessagedHomePodSettings"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsMediaActions];
  [v4 setObject:v38 forKey:@"supportsMediaActions"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_33:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports90bb069d6bx54e7];
  [v4 setObject:v39 forKey:@"supports90bb069d6bx54e7"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_34:
    if ((*&has & 8) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  v40 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports89024c1cadcb8b00];
  [v4 setObject:v40 forKey:@"supports89024c1cadcb8b00"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  v41 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports2c25465bb0b47366];
  [v4 setObject:v41 forKey:@"supports2c25465bb0b47366"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_36:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  v42 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsInstallManagedConfigurationProfile];
  [v4 setObject:v42 forKey:@"supportsInstallManagedConfigurationProfile"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  v43 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCoordinationFreeDoorbellChime];
  [v4 setObject:v43 forKey:@"supportsCoordinationFreeDoorbellChime"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_38:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsCompanionInitiatedObliterate];
  [v4 setObject:v44 forKey:@"supportsCompanionInitiatedObliterate"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_39:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports45c051b0b1f0];
  [v4 setObject:v45 forKey:@"supports45c051b0b1f0"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  v46 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsTVOSUpdateManualUpdateAvailableNotification];
  [v4 setObject:v46 forKey:@"supportsTVOSUpdateManualUpdateAvailableNotification"];

  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  v47 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsWiFiRepairV2];
  [v4 setObject:v47 forKey:@"supportsWiFiRepairV2"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSoftwareUpdateV2];
  [v4 setObject:v48 forKey:@"supportsSoftwareUpdateV2"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsStereoOdeonTTSUBypassingPrimary];
  [v4 setObject:v49 forKey:@"supportsStereoOdeonTTSUBypassingPrimary"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_44:
    if ((*&has & 2) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_90;
  }

LABEL_89:
  v50 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsNetworkDiagnostics];
  [v4 setObject:v50 forKey:@"supportsNetworkDiagnostics"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_45:
    if ((*&has & 4) == 0)
    {
      goto LABEL_46;
    }

LABEL_91:
    v52 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports29dfaee0e6d26dc];
    [v4 setObject:v52 forKey:@"supports29dfaee0e6d26dc"];

    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_90:
  v51 = [MEMORY[0x1E696AD98] numberWithBool:self->_supports24b183bad693415];
  [v4 setObject:v51 forKey:@"supports24b183bad693415"];

  has = self->_has;
  if ((*&has & 4) != 0)
  {
    goto LABEL_91;
  }

LABEL_46:
  if (*&has)
  {
LABEL_47:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_clearsKeychainWhenRemovedFromHome];
    [v4 setObject:v7 forKey:@"clearsKeychainWhenRemovedFromHome"];
  }

LABEL_48:
  v8 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMProtoAccessoryCapabilities;
  v4 = [(HMProtoAccessoryCapabilities *)&v8 description];
  v5 = [(HMProtoAccessoryCapabilities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasSupports29dfaee0e6d26dc:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasSupports24b183bad693415:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasSupportsNetworkDiagnostics:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasSupportsSoftwareUpdateV2:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasSupportsWiFiRepairV2:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasSupportsTVOSUpdateManualUpdateAvailableNotification:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSupports45c051b0b1f0:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasSupportsCompanionInitiatedObliterate:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasSupportsCoordinationFreeDoorbellChime:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasSupportsInstallManagedConfigurationProfile:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSupports2c25465bb0b47366:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasSupports89024c1cadcb8b00:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasSupports90bb069d6bx54e7:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasSupportsMediaActions:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasSupportsMessagedHomePodSettings:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasSupportsCaptiveNetworks:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasSupportsManagedConfigurationProfile:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasSupportsAudioReturnChannel:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasSupportsHomeHub:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSupportsCoordinationDoorbellChime:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasSupportsUserMediaSettings:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasSupportsDoorbellChime:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSupportsThreadBorderRouter:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasSupportsPreferredMediaUser:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSupportsThirdPartyMusic:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasSupportsf9cc0d9d6aa54e7:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasSupportsAnnounce:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasSupportsMusicAlarm:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSupportsCompanionInitiatedRestart:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasSupportsHomeLevelAnalyticsAndImprovementSetting:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasSupportsHomeLevelLocationServiceSetting:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasSupportsMultiUser:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSupportsTargetControl:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasSupportsHomeInvitation:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSupportsAssistantAccessControl:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasSupportsWholeHouseAudio:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasSupportsCloudDataSync:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSupportsStandaloneMode:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasSupportsKeyTransferServer:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasSupportsKeyTransferClient:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasSupportsDeviceSetup:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasSupportsKeychainSync:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

@end