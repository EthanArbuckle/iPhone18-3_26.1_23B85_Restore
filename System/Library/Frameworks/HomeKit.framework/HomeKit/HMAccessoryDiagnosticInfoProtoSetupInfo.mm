@interface HMAccessoryDiagnosticInfoProtoSetupInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsICloudAvailableINT:(id)t;
- (int)StringAsIDSAvailableINT:(id)t;
- (int)StringAsLastKnownControllerHH2Mode:(id)mode;
- (int)StringAsLastKnownControllerSentinelZoneExistence:(id)existence;
- (int)StringAsManateeAvailableINT:(id)t;
- (int)StringAsNetworkAvailableINT:(id)t;
- (int)iCloudAvailableINT;
- (int)iDSAvailableINT;
- (int)lastKnownControllerHH2Mode;
- (int)lastKnownControllerSentinelZoneExistence;
- (int)manateeAvailableINT;
- (int)networkAvailableINT;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAccountSettleWaitMSHH2:(BOOL)h2;
- (void)setHasControllerKeyExchangeMSHH1:(BOOL)h1;
- (void)setHasCurrentDeviceConfirmedPrimaryResidentINT:(BOOL)t;
- (void)setHasCurrentDeviceIDSWaitMSHH2:(BOOL)h2;
- (void)setHasEventRouterFirstEventPushMSHH2:(BOOL)h2;
- (void)setHasEventRouterServerConnectionMSHH2:(BOOL)h2;
- (void)setHasFirstCoreDataContainerSetupDurationMSHH2:(BOOL)h2;
- (void)setHasFirstCoreDataContainerSetupErrorCodeHH2:(BOOL)h2;
- (void)setHasFirstCoreDataContainerSetupUnderlyingErrorCodeHH2:(BOOL)h2;
- (void)setHasFirstCoreDataImportMSHH2:(BOOL)h2;
- (void)setHasHomeManagerReadyMSHH2:(BOOL)h2;
- (void)setHasICloudAvailableINT:(BOOL)t;
- (void)setHasIDSAvailableINT:(BOOL)t;
- (void)setHasLastKnownControllerHH2Mode:(BOOL)mode;
- (void)setHasLastKnownControllerSentinelZoneExistence:(BOOL)existence;
- (void)setHasLastKnownStageErrorCode:(BOOL)code;
- (void)setHasLastKnownStageUnderlyingErrorCode:(BOOL)code;
- (void)setHasLastPrimaryClientConnectMessageFailErrorCodeHH2:(BOOL)h2;
- (void)setHasLastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2:(BOOL)h2;
- (void)setHasLastPrimaryClientConnectedTimeHH2:(BOOL)h2;
- (void)setHasManateeAvailableINT:(BOOL)t;
- (void)setHasNetworkAvailableINT:(BOOL)t;
- (void)setHasNewAccessoryTransferMSHH1:(BOOL)h1;
- (void)setHasNumberOfTimesPrimaryClientConnectMessageFailedHH2:(BOOL)h2;
- (void)setHasNumberOfTimesPrimaryClientConnectedHH2:(BOOL)h2;
- (void)setHasNumberOfTimesPrimaryClientDisconnectedHH2:(BOOL)h2;
- (void)setHasNumberOfTimesPrimaryResidentChangedHH2:(BOOL)h2;
- (void)setHasPairingIdentityCreationMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentElectionJoinMeshMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentElectionMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentElectionModernTransportStartedFutureResolvedMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentElectionPeerDeviceFutureResolvedMSHH2:(BOOL)h2;
- (void)setHasPrimaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2:(BOOL)h2;
- (void)setHasSavedEventState:(BOOL)state;
- (void)setHasSentinelZoneFetchMSHH1:(BOOL)h1;
- (void)setHasSessionSetupCloseMSHH1:(BOOL)h1;
- (void)setHasSessionSetupOpenMSHH1:(BOOL)h1;
- (void)setHasSettingsCreationMSHH2:(BOOL)h2;
- (void)setHasSiriReadyMSHH2:(BOOL)h2;
- (void)setHasTotalDurationMSHH1:(BOOL)h1;
- (void)setHasTotalDurationMSHH2:(BOOL)h2;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryDiagnosticInfoProtoSetupInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x100000000) != 0)
  {
    self->_version = *(fromCopy + 33);
    *&self->_has |= 0x100000000uLL;
    v5 = *(fromCopy + 48);
    if ((v5 & 0x8000000) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_73;
    }
  }

  else if ((v5 & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  self->_sessionSetupOpenMSHH1 = *(fromCopy + 28);
  *&self->_has |= 0x8000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_controllerKeyExchangeMSHH1 = *(fromCopy + 3);
  *&self->_has |= 4uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_newAccessoryTransferMSHH1 = *(fromCopy + 17);
  *&self->_has |= 0x10000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_sessionSetupCloseMSHH1 = *(fromCopy + 27);
  *&self->_has |= 0x4000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_sentinelZoneFetchMSHH1 = *(fromCopy + 26);
  *&self->_has |= 0x2000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_totalDurationMSHH1 = *(fromCopy + 31);
  *&self->_has |= 0x40000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_accountSettleWaitMSHH2 = *(fromCopy + 2);
  *&self->_has |= 2uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_currentDeviceIDSWaitMSHH2 = *(fromCopy + 4);
  *&self->_has |= 8uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_homeManagerReadyMSHH2 = *(fromCopy + 11);
  *&self->_has |= 0x400uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_firstCoreDataImportMSHH2 = *(fromCopy + 10);
  *&self->_has |= 0x200uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_accessoryAddMSHH2 = *(fromCopy + 1);
  *&self->_has |= 1uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_14:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_settingsCreationMSHH2 = *(fromCopy + 29);
  *&self->_has |= 0x10000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20000) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_pairingIdentityCreationMSHH2 = *(fromCopy + 18);
  *&self->_has |= 0x20000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_siriReadyMSHH2 = *(fromCopy + 30);
  *&self->_has |= 0x20000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_eventRouterServerConnectionMSHH2 = *(fromCopy + 6);
  *&self->_has |= 0x20uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_primaryResidentElectionMSHH2 = *(fromCopy + 21);
  *&self->_has |= 0x100000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_eventRouterFirstEventPushMSHH2 = *(fromCopy + 5);
  *&self->_has |= 0x10uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_totalDurationMSHH2 = *(fromCopy + 32);
  *&self->_has |= 0x80000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_iCloudAvailableINT = *(fromCopy + 76);
  *&self->_has |= 0x400000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_iDSAvailableINT = *(fromCopy + 77);
  *&self->_has |= 0x800000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_manateeAvailableINT = *(fromCopy + 90);
  *&self->_has |= 0x4000000000uLL;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_93:
  self->_networkAvailableINT = *(fromCopy + 91);
  *&self->_has |= 0x8000000000uLL;
  if ((*(fromCopy + 48) & 0x800) != 0)
  {
LABEL_25:
    self->_lastKnownStageErrorCode = *(fromCopy + 12);
    *&self->_has |= 0x800uLL;
  }

LABEL_26:
  v9 = fromCopy;
  if (*(fromCopy + 40))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setLastKnownStageErrorDomain:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 41))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setLastKnownStageErrorString:?];
    fromCopy = v9;
  }

  if ((*(fromCopy + 385) & 0x10) != 0)
  {
    self->_lastKnownStageUnderlyingErrorCode = *(fromCopy + 13);
    *&self->_has |= 0x1000uLL;
  }

  if (*(fromCopy + 42))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setLastKnownStageUnderlyingErrorDomain:?];
    fromCopy = v9;
  }

  v6 = *(fromCopy + 48);
  if ((v6 & 0x1000000) != 0)
  {
    self->_savedEventState = *(fromCopy + 25);
    *&self->_has |= 0x1000000uLL;
    v6 = *(fromCopy + 48);
    if ((v6 & 0x1000000000) == 0)
    {
LABEL_36:
      if ((v6 & 0x2000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 0x1000000000) == 0)
  {
    goto LABEL_36;
  }

  self->_lastKnownControllerHH2Mode = *(fromCopy + 78);
  *&self->_has |= 0x1000000000uLL;
  if ((*(fromCopy + 48) & 0x2000000000) != 0)
  {
LABEL_37:
    self->_lastKnownControllerSentinelZoneExistence = *(fromCopy + 79);
    *&self->_has |= 0x2000000000uLL;
  }

LABEL_38:
  if (*(fromCopy + 34))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setControllerSetupSessionIdentifier:?];
    fromCopy = v9;
  }

  v7 = *(fromCopy + 48);
  if ((v7 & 0x80000000000) != 0)
  {
    self->_numberOfTimesPrimaryResidentChangedHH2 = *(fromCopy + 95);
    *&self->_has |= 0x80000000000uLL;
    v7 = *(fromCopy + 48);
    if ((v7 & 0x8000) == 0)
    {
LABEL_42:
      if ((v7 & 0x20000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_100;
    }
  }

  else if ((v7 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

  self->_lastPrimaryClientConnectedTimeHH2 = *(fromCopy + 16);
  *&self->_has |= 0x8000uLL;
  v7 = *(fromCopy + 48);
  if ((v7 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  self->_numberOfTimesPrimaryClientConnectedHH2 = *(fromCopy + 93);
  *&self->_has |= 0x20000000000uLL;
  v7 = *(fromCopy + 48);
  if ((v7 & 0x40000000000) == 0)
  {
LABEL_44:
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  self->_numberOfTimesPrimaryClientDisconnectedHH2 = *(fromCopy + 94);
  *&self->_has |= 0x40000000000uLL;
  v7 = *(fromCopy + 48);
  if ((v7 & 0x10000000000) == 0)
  {
LABEL_45:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  self->_numberOfTimesPrimaryClientConnectMessageFailedHH2 = *(fromCopy + 92);
  *&self->_has |= 0x10000000000uLL;
  v7 = *(fromCopy + 48);
  if ((v7 & 0x200000000) == 0)
  {
LABEL_46:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_103:
  self->_currentDeviceConfirmedPrimaryResidentINT = *(fromCopy + 70);
  *&self->_has |= 0x200000000uLL;
  if ((*(fromCopy + 48) & 0x2000) != 0)
  {
LABEL_47:
    self->_lastPrimaryClientConnectMessageFailErrorCodeHH2 = *(fromCopy + 14);
    *&self->_has |= 0x2000uLL;
  }

LABEL_48:
  if (*(fromCopy + 43))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setLastPrimaryClientConnectMessageFailErrorDomainHH2:?];
    fromCopy = v9;
  }

  if ((*(fromCopy + 385) & 0x40) != 0)
  {
    self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2 = *(fromCopy + 15);
    *&self->_has |= 0x4000uLL;
  }

  if (*(fromCopy + 44))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setLastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2:?];
    fromCopy = v9;
  }

  v8 = *(fromCopy + 48);
  if ((v8 & 0x800000) != 0)
  {
    self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2 = *(fromCopy + 24);
    *&self->_has |= 0x800000uLL;
    v8 = *(fromCopy + 48);
    if ((v8 & 0x40000) == 0)
    {
LABEL_56:
      if ((v8 & 0x200000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_107;
    }
  }

  else if ((v8 & 0x40000) == 0)
  {
    goto LABEL_56;
  }

  self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2 = *(fromCopy + 19);
  *&self->_has |= 0x40000uLL;
  v8 = *(fromCopy + 48);
  if ((v8 & 0x200000) == 0)
  {
LABEL_57:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_108;
  }

LABEL_107:
  self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2 = *(fromCopy + 22);
  *&self->_has |= 0x200000uLL;
  v8 = *(fromCopy + 48);
  if ((v8 & 0x400000) == 0)
  {
LABEL_58:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_109;
  }

LABEL_108:
  self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2 = *(fromCopy + 23);
  *&self->_has |= 0x400000uLL;
  v8 = *(fromCopy + 48);
  if ((v8 & 0x80000) == 0)
  {
LABEL_59:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_110;
  }

LABEL_109:
  self->_primaryResidentElectionJoinMeshMSHH2 = *(fromCopy + 20);
  *&self->_has |= 0x80000uLL;
  v8 = *(fromCopy + 48);
  if ((v8 & 0x40) == 0)
  {
LABEL_60:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_110:
  self->_firstCoreDataContainerSetupDurationMSHH2 = *(fromCopy + 7);
  *&self->_has |= 0x40uLL;
  if ((*(fromCopy + 48) & 0x80) != 0)
  {
LABEL_61:
    self->_firstCoreDataContainerSetupErrorCodeHH2 = *(fromCopy + 8);
    *&self->_has |= 0x80uLL;
  }

LABEL_62:
  if (*(fromCopy + 36))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setFirstCoreDataContainerSetupErrorDomainHH2:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 385))
  {
    self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2 = *(fromCopy + 9);
    *&self->_has |= 0x100uLL;
  }

  if (*(fromCopy + 37))
  {
    [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self setFirstCoreDataContainerSetupUnderlyingErrorDomainHH2:?];
    fromCopy = v9;
  }
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    v58 = 2654435761u * self->_version;
    if ((*&has & 0x8000000) != 0)
    {
LABEL_3:
      v57 = 2654435761 * self->_sessionSetupOpenMSHH1;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v58 = 0;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v57 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v56 = 2654435761 * self->_controllerKeyExchangeMSHH1;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v56 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_5:
    v55 = 2654435761 * self->_newAccessoryTransferMSHH1;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v55 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_6:
    v54 = 2654435761 * self->_sessionSetupCloseMSHH1;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v54 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_7:
    v53 = 2654435761 * self->_sentinelZoneFetchMSHH1;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v53 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_8:
    v52 = 2654435761 * self->_totalDurationMSHH1;
    if ((*&has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v52 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_9:
    v51 = 2654435761 * self->_accountSettleWaitMSHH2;
    if ((*&has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v51 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_10:
    v50 = 2654435761 * self->_currentDeviceIDSWaitMSHH2;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v50 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_11:
    v49 = 2654435761 * self->_homeManagerReadyMSHH2;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v49 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_12:
    v48 = 2654435761 * self->_firstCoreDataImportMSHH2;
    if (*&has)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v48 = 0;
  if (*&has)
  {
LABEL_13:
    v47 = 2654435761 * self->_accessoryAddMSHH2;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v47 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_14:
    v46 = 2654435761 * self->_settingsCreationMSHH2;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v46 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_15:
    v45 = 2654435761 * self->_pairingIdentityCreationMSHH2;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v45 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_16:
    v44 = 2654435761 * self->_siriReadyMSHH2;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v44 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_17:
    v43 = 2654435761 * self->_eventRouterServerConnectionMSHH2;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v43 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_18:
    v42 = 2654435761 * self->_primaryResidentElectionMSHH2;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v42 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_19:
    v41 = 2654435761 * self->_eventRouterFirstEventPushMSHH2;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v41 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_20:
    v40 = 2654435761 * self->_totalDurationMSHH2;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v40 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_21:
    v39 = 2654435761 * self->_iCloudAvailableINT;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v39 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_22:
    v38 = 2654435761 * self->_iDSAvailableINT;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v38 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_23:
    v37 = 2654435761 * self->_manateeAvailableINT;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v36 = 0;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_47:
  v37 = 0;
  if ((*&has & 0x8000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  v36 = 2654435761 * self->_networkAvailableINT;
  if ((*&has & 0x800) != 0)
  {
LABEL_25:
    v35 = 2654435761 * self->_lastKnownStageErrorCode;
    goto LABEL_50;
  }

LABEL_49:
  v35 = 0;
LABEL_50:
  v34 = [(NSString *)self->_lastKnownStageErrorDomain hash];
  v33 = [(NSString *)self->_lastKnownStageErrorString hash];
  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v32 = 2654435761 * self->_lastKnownStageUnderlyingErrorCode;
  }

  else
  {
    v32 = 0;
  }

  v31 = [(NSString *)self->_lastKnownStageUnderlyingErrorDomain hash];
  v4 = self->_has;
  if ((*&v4 & 0x1000000) == 0)
  {
    v30 = 0;
    if ((*&v4 & 0x1000000000) != 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    v29 = 0;
    if ((*&v4 & 0x2000000000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v30 = 2654435761u * self->_savedEventState;
  if ((*&v4 & 0x1000000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v29 = 2654435761 * self->_lastKnownControllerHH2Mode;
  if ((*&v4 & 0x2000000000) != 0)
  {
LABEL_56:
    v28 = 2654435761 * self->_lastKnownControllerSentinelZoneExistence;
    goto LABEL_60;
  }

LABEL_59:
  v28 = 0;
LABEL_60:
  v27 = [(NSString *)self->_controllerSetupSessionIdentifier hash];
  v5 = self->_has;
  if ((*&v5 & 0x80000000000) != 0)
  {
    v26 = 2654435761 * self->_numberOfTimesPrimaryResidentChangedHH2;
    if ((*&v5 & 0x8000) != 0)
    {
LABEL_62:
      v25 = 2654435761 * self->_lastPrimaryClientConnectedTimeHH2;
      if ((*&v5 & 0x20000000000) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  else
  {
    v26 = 0;
    if ((*&v5 & 0x8000) != 0)
    {
      goto LABEL_62;
    }
  }

  v25 = 0;
  if ((*&v5 & 0x20000000000) != 0)
  {
LABEL_63:
    v24 = 2654435761 * self->_numberOfTimesPrimaryClientConnectedHH2;
    if ((*&v5 & 0x40000000000) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_71;
  }

LABEL_70:
  v24 = 0;
  if ((*&v5 & 0x40000000000) != 0)
  {
LABEL_64:
    v23 = 2654435761 * self->_numberOfTimesPrimaryClientDisconnectedHH2;
    if ((*&v5 & 0x10000000000) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

LABEL_71:
  v23 = 0;
  if ((*&v5 & 0x10000000000) != 0)
  {
LABEL_65:
    v22 = 2654435761 * self->_numberOfTimesPrimaryClientConnectMessageFailedHH2;
    if ((*&v5 & 0x200000000) != 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    v21 = 0;
    if ((*&v5 & 0x2000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_74;
  }

LABEL_72:
  v22 = 0;
  if ((*&v5 & 0x200000000) == 0)
  {
    goto LABEL_73;
  }

LABEL_66:
  v21 = 2654435761 * self->_currentDeviceConfirmedPrimaryResidentINT;
  if ((*&v5 & 0x2000) != 0)
  {
LABEL_67:
    v20 = 2654435761 * self->_lastPrimaryClientConnectMessageFailErrorCodeHH2;
    goto LABEL_75;
  }

LABEL_74:
  v20 = 0;
LABEL_75:
  v19 = [(NSString *)self->_lastPrimaryClientConnectMessageFailErrorDomainHH2 hash];
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v18 = 2654435761 * self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(NSString *)self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 hash];
  v6 = self->_has;
  if ((*&v6 & 0x800000) != 0)
  {
    v7 = 2654435761 * self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2;
    if ((*&v6 & 0x40000) != 0)
    {
LABEL_80:
      v8 = 2654435761 * self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2;
      if ((*&v6 & 0x200000) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v7 = 0;
    if ((*&v6 & 0x40000) != 0)
    {
      goto LABEL_80;
    }
  }

  v8 = 0;
  if ((*&v6 & 0x200000) != 0)
  {
LABEL_81:
    v9 = 2654435761 * self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2;
    if ((*&v6 & 0x400000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_89;
  }

LABEL_88:
  v9 = 0;
  if ((*&v6 & 0x400000) != 0)
  {
LABEL_82:
    v10 = 2654435761 * self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2;
    if ((*&v6 & 0x80000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_90;
  }

LABEL_89:
  v10 = 0;
  if ((*&v6 & 0x80000) != 0)
  {
LABEL_83:
    v11 = 2654435761 * self->_primaryResidentElectionJoinMeshMSHH2;
    if ((*&v6 & 0x40) != 0)
    {
      goto LABEL_84;
    }

LABEL_91:
    v12 = 0;
    if ((*&v6 & 0x80) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_92;
  }

LABEL_90:
  v11 = 0;
  if ((*&v6 & 0x40) == 0)
  {
    goto LABEL_91;
  }

LABEL_84:
  v12 = 2654435761 * self->_firstCoreDataContainerSetupDurationMSHH2;
  if ((*&v6 & 0x80) != 0)
  {
LABEL_85:
    v13 = 2654435761 * self->_firstCoreDataContainerSetupErrorCodeHH2;
    goto LABEL_93;
  }

LABEL_92:
  v13 = 0;
LABEL_93:
  v14 = [(NSString *)self->_firstCoreDataContainerSetupErrorDomainHH2 hash];
  if (*(&self->_has + 1))
  {
    v15 = 2654435761 * self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2;
  }

  else
  {
    v15 = 0;
  }

  return v57 ^ v58 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSString *)self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_243;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((*&has & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0 || self->_version != *(equalCopy + 33))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_sessionSetupOpenMSHH1 != *(equalCopy + 28))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_controllerKeyExchangeMSHH1 != *(equalCopy + 3))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_newAccessoryTransferMSHH1 != *(equalCopy + 17))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_sessionSetupCloseMSHH1 != *(equalCopy + 27))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_sentinelZoneFetchMSHH1 != *(equalCopy + 26))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v6 & 0x40000000) == 0 || self->_totalDurationMSHH1 != *(equalCopy + 31))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_accountSettleWaitMSHH2 != *(equalCopy + 2))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_currentDeviceIDSWaitMSHH2 != *(equalCopy + 4))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_homeManagerReadyMSHH2 != *(equalCopy + 11))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_firstCoreDataImportMSHH2 != *(equalCopy + 10))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_243;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_accessoryAddMSHH2 != *(equalCopy + 1))
    {
      goto LABEL_243;
    }
  }

  else if (v6)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_settingsCreationMSHH2 != *(equalCopy + 29))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_pairingIdentityCreationMSHH2 != *(equalCopy + 18))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_siriReadyMSHH2 != *(equalCopy + 30))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_eventRouterServerConnectionMSHH2 != *(equalCopy + 6))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_primaryResidentElectionMSHH2 != *(equalCopy + 21))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_eventRouterFirstEventPushMSHH2 != *(equalCopy + 5))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v6 & 0x80000000) == 0 || self->_totalDurationMSHH2 != *(equalCopy + 32))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v6 & 0x400000000) == 0 || self->_iCloudAvailableINT != *(equalCopy + 76))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x400000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v6 & 0x800000000) == 0 || self->_iDSAvailableINT != *(equalCopy + 77))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x800000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v6 & 0x4000000000) == 0 || self->_manateeAvailableINT != *(equalCopy + 90))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x4000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v6 & 0x8000000000) == 0 || self->_networkAvailableINT != *(equalCopy + 91))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x8000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_lastKnownStageErrorCode != *(equalCopy + 12))
    {
      goto LABEL_243;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_243;
  }

  lastKnownStageErrorDomain = self->_lastKnownStageErrorDomain;
  if (lastKnownStageErrorDomain | *(equalCopy + 40) && ![(NSString *)lastKnownStageErrorDomain isEqual:?])
  {
    goto LABEL_243;
  }

  lastKnownStageErrorString = self->_lastKnownStageErrorString;
  if (lastKnownStageErrorString | *(equalCopy + 41))
  {
    if (![(NSString *)lastKnownStageErrorString isEqual:?])
    {
      goto LABEL_243;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 48);
  if ((*&v9 & 0x1000) != 0)
  {
    if ((v10 & 0x1000) == 0 || self->_lastKnownStageUnderlyingErrorCode != *(equalCopy + 13))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x1000) != 0)
  {
    goto LABEL_243;
  }

  lastKnownStageUnderlyingErrorDomain = self->_lastKnownStageUnderlyingErrorDomain;
  if (lastKnownStageUnderlyingErrorDomain | *(equalCopy + 42))
  {
    if (![(NSString *)lastKnownStageUnderlyingErrorDomain isEqual:?])
    {
      goto LABEL_243;
    }

    v9 = self->_has;
    v10 = *(equalCopy + 48);
  }

  if ((*&v9 & 0x1000000) != 0)
  {
    if ((v10 & 0x1000000) == 0 || self->_savedEventState != *(equalCopy + 25))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x1000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x1000000000) != 0)
  {
    if ((v10 & 0x1000000000) == 0 || self->_lastKnownControllerHH2Mode != *(equalCopy + 78))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x1000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x2000000000) != 0)
  {
    if ((v10 & 0x2000000000) == 0 || self->_lastKnownControllerSentinelZoneExistence != *(equalCopy + 79))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x2000000000) != 0)
  {
    goto LABEL_243;
  }

  controllerSetupSessionIdentifier = self->_controllerSetupSessionIdentifier;
  if (controllerSetupSessionIdentifier | *(equalCopy + 34))
  {
    if (![(NSString *)controllerSetupSessionIdentifier isEqual:?])
    {
      goto LABEL_243;
    }

    v9 = self->_has;
    v10 = *(equalCopy + 48);
  }

  if ((*&v9 & 0x80000000000) != 0)
  {
    if ((v10 & 0x80000000000) == 0 || self->_numberOfTimesPrimaryResidentChangedHH2 != *(equalCopy + 95))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x80000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x8000) != 0)
  {
    if ((v10 & 0x8000) == 0 || self->_lastPrimaryClientConnectedTimeHH2 != *(equalCopy + 16))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x8000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x20000000000) != 0)
  {
    if ((v10 & 0x20000000000) == 0 || self->_numberOfTimesPrimaryClientConnectedHH2 != *(equalCopy + 93))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x20000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x40000000000) != 0)
  {
    if ((v10 & 0x40000000000) == 0 || self->_numberOfTimesPrimaryClientDisconnectedHH2 != *(equalCopy + 94))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x40000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x10000000000) != 0)
  {
    if ((v10 & 0x10000000000) == 0 || self->_numberOfTimesPrimaryClientConnectMessageFailedHH2 != *(equalCopy + 92))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x10000000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x200000000) != 0)
  {
    if ((v10 & 0x200000000) == 0 || self->_currentDeviceConfirmedPrimaryResidentINT != *(equalCopy + 70))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x200000000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x2000) != 0)
  {
    if ((v10 & 0x2000) == 0 || self->_lastPrimaryClientConnectMessageFailErrorCodeHH2 != *(equalCopy + 14))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x2000) != 0)
  {
    goto LABEL_243;
  }

  lastPrimaryClientConnectMessageFailErrorDomainHH2 = self->_lastPrimaryClientConnectMessageFailErrorDomainHH2;
  if (lastPrimaryClientConnectMessageFailErrorDomainHH2 | *(equalCopy + 43))
  {
    if (![(NSString *)lastPrimaryClientConnectMessageFailErrorDomainHH2 isEqual:?])
    {
      goto LABEL_243;
    }

    v9 = self->_has;
    v10 = *(equalCopy + 48);
  }

  if ((*&v9 & 0x4000) != 0)
  {
    if ((v10 & 0x4000) == 0 || self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2 != *(equalCopy + 15))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x4000) != 0)
  {
    goto LABEL_243;
  }

  lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 = self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2;
  if (lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 | *(equalCopy + 44))
  {
    if (![(NSString *)lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 isEqual:?])
    {
      goto LABEL_243;
    }

    v9 = self->_has;
    v10 = *(equalCopy + 48);
  }

  if ((*&v9 & 0x800000) != 0)
  {
    if ((v10 & 0x800000) == 0 || self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2 != *(equalCopy + 24))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x800000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x40000) != 0)
  {
    if ((v10 & 0x40000) == 0 || self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2 != *(equalCopy + 19))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x40000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x200000) != 0)
  {
    if ((v10 & 0x200000) == 0 || self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2 != *(equalCopy + 22))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x200000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x400000) != 0)
  {
    if ((v10 & 0x400000) == 0 || self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2 != *(equalCopy + 23))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x400000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x80000) != 0)
  {
    if ((v10 & 0x80000) == 0 || self->_primaryResidentElectionJoinMeshMSHH2 != *(equalCopy + 20))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x80000) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_firstCoreDataContainerSetupDurationMSHH2 != *(equalCopy + 7))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_243;
  }

  if ((*&v9 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_firstCoreDataContainerSetupErrorCodeHH2 != *(equalCopy + 8))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_243;
  }

  firstCoreDataContainerSetupErrorDomainHH2 = self->_firstCoreDataContainerSetupErrorDomainHH2;
  if (firstCoreDataContainerSetupErrorDomainHH2 | *(equalCopy + 36))
  {
    if ([(NSString *)firstCoreDataContainerSetupErrorDomainHH2 isEqual:?])
    {
      v9 = self->_has;
      v10 = *(equalCopy + 48);
      goto LABEL_236;
    }

LABEL_243:
    v17 = 0;
    goto LABEL_244;
  }

LABEL_236:
  if ((*&v9 & 0x100) != 0)
  {
    if ((v10 & 0x100) == 0 || self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2 != *(equalCopy + 9))
    {
      goto LABEL_243;
    }
  }

  else if ((v10 & 0x100) != 0)
  {
    goto LABEL_243;
  }

  firstCoreDataContainerSetupUnderlyingErrorDomainHH2 = self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2;
  if (firstCoreDataContainerSetupUnderlyingErrorDomainHH2 | *(equalCopy + 37))
  {
    v17 = [(NSString *)firstCoreDataContainerSetupUnderlyingErrorDomainHH2 isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_244:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    *(v5 + 264) = self->_version;
    *(v5 + 384) |= 0x100000000uLL;
    has = self->_has;
    if ((*&has & 0x8000000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_55;
    }
  }

  else if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 224) = self->_sessionSetupOpenMSHH1;
  *(v5 + 384) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 24) = self->_controllerKeyExchangeMSHH1;
  *(v5 + 384) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 136) = self->_newAccessoryTransferMSHH1;
  *(v5 + 384) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 216) = self->_sessionSetupCloseMSHH1;
  *(v5 + 384) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 208) = self->_sentinelZoneFetchMSHH1;
  *(v5 + 384) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 248) = self->_totalDurationMSHH1;
  *(v5 + 384) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 16) = self->_accountSettleWaitMSHH2;
  *(v5 + 384) |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 32) = self->_currentDeviceIDSWaitMSHH2;
  *(v5 + 384) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 88) = self->_homeManagerReadyMSHH2;
  *(v5 + 384) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 80) = self->_firstCoreDataImportMSHH2;
  *(v5 + 384) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 8) = self->_accessoryAddMSHH2;
  *(v5 + 384) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 232) = self->_settingsCreationMSHH2;
  *(v5 + 384) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 144) = self->_pairingIdentityCreationMSHH2;
  *(v5 + 384) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 240) = self->_siriReadyMSHH2;
  *(v5 + 384) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 48) = self->_eventRouterServerConnectionMSHH2;
  *(v5 + 384) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 168) = self->_primaryResidentElectionMSHH2;
  *(v5 + 384) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 40) = self->_eventRouterFirstEventPushMSHH2;
  *(v5 + 384) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 256) = self->_totalDurationMSHH2;
  *(v5 + 384) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 304) = self->_iCloudAvailableINT;
  *(v5 + 384) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 308) = self->_iDSAvailableINT;
  *(v5 + 384) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 360) = self->_manateeAvailableINT;
  *(v5 + 384) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_75:
  *(v5 + 364) = self->_networkAvailableINT;
  *(v5 + 384) |= 0x8000000000uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_25:
    *(v5 + 96) = self->_lastKnownStageErrorCode;
    *(v5 + 384) |= 0x800uLL;
  }

LABEL_26:
  v8 = [(NSString *)self->_lastKnownStageErrorDomain copyWithZone:zone];
  v9 = *(v6 + 320);
  *(v6 + 320) = v8;

  v10 = [(NSString *)self->_lastKnownStageErrorString copyWithZone:zone];
  v11 = *(v6 + 328);
  *(v6 + 328) = v10;

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    *(v6 + 104) = self->_lastKnownStageUnderlyingErrorCode;
    *(v6 + 384) |= 0x1000uLL;
  }

  v12 = [(NSString *)self->_lastKnownStageUnderlyingErrorDomain copyWithZone:zone];
  v13 = *(v6 + 336);
  *(v6 + 336) = v12;

  v14 = self->_has;
  if ((*&v14 & 0x1000000) != 0)
  {
    *(v6 + 200) = self->_savedEventState;
    *(v6 + 384) |= 0x1000000uLL;
    v14 = self->_has;
    if ((*&v14 & 0x1000000000) == 0)
    {
LABEL_30:
      if ((*&v14 & 0x2000000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((*&v14 & 0x1000000000) == 0)
  {
    goto LABEL_30;
  }

  *(v6 + 312) = self->_lastKnownControllerHH2Mode;
  *(v6 + 384) |= 0x1000000000uLL;
  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_31:
    *(v6 + 316) = self->_lastKnownControllerSentinelZoneExistence;
    *(v6 + 384) |= 0x2000000000uLL;
  }

LABEL_32:
  v15 = [(NSString *)self->_controllerSetupSessionIdentifier copyWithZone:zone];
  v16 = *(v6 + 272);
  *(v6 + 272) = v15;

  v17 = self->_has;
  if ((*&v17 & 0x80000000000) != 0)
  {
    *(v6 + 380) = self->_numberOfTimesPrimaryResidentChangedHH2;
    *(v6 + 384) |= 0x80000000000uLL;
    v17 = self->_has;
    if ((*&v17 & 0x8000) == 0)
    {
LABEL_34:
      if ((*&v17 & 0x20000000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_82;
    }
  }

  else if ((*&v17 & 0x8000) == 0)
  {
    goto LABEL_34;
  }

  *(v6 + 128) = self->_lastPrimaryClientConnectedTimeHH2;
  *(v6 + 384) |= 0x8000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x20000000000) == 0)
  {
LABEL_35:
    if ((*&v17 & 0x40000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v6 + 372) = self->_numberOfTimesPrimaryClientConnectedHH2;
  *(v6 + 384) |= 0x20000000000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x40000000000) == 0)
  {
LABEL_36:
    if ((*&v17 & 0x10000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v6 + 376) = self->_numberOfTimesPrimaryClientDisconnectedHH2;
  *(v6 + 384) |= 0x40000000000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x10000000000) == 0)
  {
LABEL_37:
    if ((*&v17 & 0x200000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v6 + 368) = self->_numberOfTimesPrimaryClientConnectMessageFailedHH2;
  *(v6 + 384) |= 0x10000000000uLL;
  v17 = self->_has;
  if ((*&v17 & 0x200000000) == 0)
  {
LABEL_38:
    if ((*&v17 & 0x2000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_85:
  *(v6 + 280) = self->_currentDeviceConfirmedPrimaryResidentINT;
  *(v6 + 384) |= 0x200000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_39:
    *(v6 + 112) = self->_lastPrimaryClientConnectMessageFailErrorCodeHH2;
    *(v6 + 384) |= 0x2000uLL;
  }

LABEL_40:
  v18 = [(NSString *)self->_lastPrimaryClientConnectMessageFailErrorDomainHH2 copyWithZone:zone];
  v19 = *(v6 + 344);
  *(v6 + 344) = v18;

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    *(v6 + 120) = self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2;
    *(v6 + 384) |= 0x4000uLL;
  }

  v20 = [(NSString *)self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 copyWithZone:zone];
  v21 = *(v6 + 352);
  *(v6 + 352) = v20;

  v22 = self->_has;
  if ((*&v22 & 0x800000) != 0)
  {
    *(v6 + 192) = self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2;
    *(v6 + 384) |= 0x800000uLL;
    v22 = self->_has;
    if ((*&v22 & 0x40000) == 0)
    {
LABEL_44:
      if ((*&v22 & 0x200000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_89;
    }
  }

  else if ((*&v22 & 0x40000) == 0)
  {
    goto LABEL_44;
  }

  *(v6 + 152) = self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2;
  *(v6 + 384) |= 0x40000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x200000) == 0)
  {
LABEL_45:
    if ((*&v22 & 0x400000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 176) = self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2;
  *(v6 + 384) |= 0x200000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x400000) == 0)
  {
LABEL_46:
    if ((*&v22 & 0x80000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 184) = self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2;
  *(v6 + 384) |= 0x400000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x80000) == 0)
  {
LABEL_47:
    if ((*&v22 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 160) = self->_primaryResidentElectionJoinMeshMSHH2;
  *(v6 + 384) |= 0x80000uLL;
  v22 = self->_has;
  if ((*&v22 & 0x40) == 0)
  {
LABEL_48:
    if ((*&v22 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_92:
  *(v6 + 56) = self->_firstCoreDataContainerSetupDurationMSHH2;
  *(v6 + 384) |= 0x40uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_49:
    *(v6 + 64) = self->_firstCoreDataContainerSetupErrorCodeHH2;
    *(v6 + 384) |= 0x80uLL;
  }

LABEL_50:
  v23 = [(NSString *)self->_firstCoreDataContainerSetupErrorDomainHH2 copyWithZone:zone];
  v24 = *(v6 + 288);
  *(v6 + 288) = v23;

  if (*(&self->_has + 1))
  {
    *(v6 + 72) = self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2;
    *(v6 + 384) |= 0x100uLL;
  }

  v25 = [(NSString *)self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2 copyWithZone:zone];
  v26 = *(v6 + 296);
  *(v6 + 296) = v25;

  v27 = v6;
  return v27;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    toCopy[33] = self->_version;
    toCopy[48] |= 0x100000000uLL;
    has = self->_has;
    if ((*&has & 0x8000000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_73;
    }
  }

  else if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  toCopy[28] = self->_sessionSetupOpenMSHH1;
  toCopy[48] |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_74;
  }

LABEL_73:
  toCopy[3] = self->_controllerKeyExchangeMSHH1;
  toCopy[48] |= 4uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_75;
  }

LABEL_74:
  toCopy[17] = self->_newAccessoryTransferMSHH1;
  toCopy[48] |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_76;
  }

LABEL_75:
  toCopy[27] = self->_sessionSetupCloseMSHH1;
  toCopy[48] |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_77;
  }

LABEL_76:
  toCopy[26] = self->_sentinelZoneFetchMSHH1;
  toCopy[48] |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_78;
  }

LABEL_77:
  toCopy[31] = self->_totalDurationMSHH1;
  toCopy[48] |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_79;
  }

LABEL_78:
  toCopy[2] = self->_accountSettleWaitMSHH2;
  toCopy[48] |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_80;
  }

LABEL_79:
  toCopy[4] = self->_currentDeviceIDSWaitMSHH2;
  toCopy[48] |= 8uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_80:
  toCopy[11] = self->_homeManagerReadyMSHH2;
  toCopy[48] |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_82;
  }

LABEL_81:
  toCopy[10] = self->_firstCoreDataImportMSHH2;
  toCopy[48] |= 0x200uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_82:
  toCopy[1] = self->_accessoryAddMSHH2;
  toCopy[48] |= 1uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_84;
  }

LABEL_83:
  toCopy[29] = self->_settingsCreationMSHH2;
  toCopy[48] |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_85;
  }

LABEL_84:
  toCopy[18] = self->_pairingIdentityCreationMSHH2;
  toCopy[48] |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_86;
  }

LABEL_85:
  toCopy[30] = self->_siriReadyMSHH2;
  toCopy[48] |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_87;
  }

LABEL_86:
  toCopy[6] = self->_eventRouterServerConnectionMSHH2;
  toCopy[48] |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_87:
  toCopy[21] = self->_primaryResidentElectionMSHH2;
  toCopy[48] |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_89;
  }

LABEL_88:
  toCopy[5] = self->_eventRouterFirstEventPushMSHH2;
  toCopy[48] |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_90;
  }

LABEL_89:
  toCopy[32] = self->_totalDurationMSHH2;
  toCopy[48] |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(toCopy + 76) = self->_iCloudAvailableINT;
  toCopy[48] |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(toCopy + 77) = self->_iDSAvailableINT;
  toCopy[48] |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(toCopy + 90) = self->_manateeAvailableINT;
  toCopy[48] |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_93:
  *(toCopy + 91) = self->_networkAvailableINT;
  toCopy[48] |= 0x8000000000uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_25:
    toCopy[12] = self->_lastKnownStageErrorCode;
    toCopy[48] |= 0x800uLL;
  }

LABEL_26:
  v9 = toCopy;
  if (self->_lastKnownStageErrorDomain)
  {
    [toCopy setLastKnownStageErrorDomain:?];
    toCopy = v9;
  }

  if (self->_lastKnownStageErrorString)
  {
    [v9 setLastKnownStageErrorString:?];
    toCopy = v9;
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    toCopy[13] = self->_lastKnownStageUnderlyingErrorCode;
    toCopy[48] |= 0x1000uLL;
  }

  if (self->_lastKnownStageUnderlyingErrorDomain)
  {
    [v9 setLastKnownStageUnderlyingErrorDomain:?];
    toCopy = v9;
  }

  v6 = self->_has;
  if ((*&v6 & 0x1000000) != 0)
  {
    toCopy[25] = self->_savedEventState;
    toCopy[48] |= 0x1000000uLL;
    v6 = self->_has;
    if ((*&v6 & 0x1000000000) == 0)
    {
LABEL_36:
      if ((*&v6 & 0x2000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v6 & 0x1000000000) == 0)
  {
    goto LABEL_36;
  }

  *(toCopy + 78) = self->_lastKnownControllerHH2Mode;
  toCopy[48] |= 0x1000000000uLL;
  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_37:
    *(toCopy + 79) = self->_lastKnownControllerSentinelZoneExistence;
    toCopy[48] |= 0x2000000000uLL;
  }

LABEL_38:
  if (self->_controllerSetupSessionIdentifier)
  {
    [v9 setControllerSetupSessionIdentifier:?];
    toCopy = v9;
  }

  v7 = self->_has;
  if ((*&v7 & 0x80000000000) != 0)
  {
    *(toCopy + 95) = self->_numberOfTimesPrimaryResidentChangedHH2;
    toCopy[48] |= 0x80000000000uLL;
    v7 = self->_has;
    if ((*&v7 & 0x8000) == 0)
    {
LABEL_42:
      if ((*&v7 & 0x20000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v7 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

  toCopy[16] = self->_lastPrimaryClientConnectedTimeHH2;
  toCopy[48] |= 0x8000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(toCopy + 93) = self->_numberOfTimesPrimaryClientConnectedHH2;
  toCopy[48] |= 0x20000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40000000000) == 0)
  {
LABEL_44:
    if ((*&v7 & 0x10000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_102;
  }

LABEL_101:
  *(toCopy + 94) = self->_numberOfTimesPrimaryClientDisconnectedHH2;
  toCopy[48] |= 0x40000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x10000000000) == 0)
  {
LABEL_45:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_103;
  }

LABEL_102:
  *(toCopy + 92) = self->_numberOfTimesPrimaryClientConnectMessageFailedHH2;
  toCopy[48] |= 0x10000000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_46:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_103:
  *(toCopy + 70) = self->_currentDeviceConfirmedPrimaryResidentINT;
  toCopy[48] |= 0x200000000uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_47:
    toCopy[14] = self->_lastPrimaryClientConnectMessageFailErrorCodeHH2;
    toCopy[48] |= 0x2000uLL;
  }

LABEL_48:
  if (self->_lastPrimaryClientConnectMessageFailErrorDomainHH2)
  {
    [v9 setLastPrimaryClientConnectMessageFailErrorDomainHH2:?];
    toCopy = v9;
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    toCopy[15] = self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2;
    toCopy[48] |= 0x4000uLL;
  }

  if (self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2)
  {
    [v9 setLastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2:?];
    toCopy = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 0x800000) != 0)
  {
    toCopy[24] = self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2;
    toCopy[48] |= 0x800000uLL;
    v8 = self->_has;
    if ((*&v8 & 0x40000) == 0)
    {
LABEL_56:
      if ((*&v8 & 0x200000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_107;
    }
  }

  else if ((*&v8 & 0x40000) == 0)
  {
    goto LABEL_56;
  }

  toCopy[19] = self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2;
  toCopy[48] |= 0x40000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x200000) == 0)
  {
LABEL_57:
    if ((*&v8 & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_108;
  }

LABEL_107:
  toCopy[22] = self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2;
  toCopy[48] |= 0x200000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x400000) == 0)
  {
LABEL_58:
    if ((*&v8 & 0x80000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_109;
  }

LABEL_108:
  toCopy[23] = self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2;
  toCopy[48] |= 0x400000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x80000) == 0)
  {
LABEL_59:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_110;
  }

LABEL_109:
  toCopy[20] = self->_primaryResidentElectionJoinMeshMSHH2;
  toCopy[48] |= 0x80000uLL;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_60:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_110:
  toCopy[7] = self->_firstCoreDataContainerSetupDurationMSHH2;
  toCopy[48] |= 0x40uLL;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_61:
    toCopy[8] = self->_firstCoreDataContainerSetupErrorCodeHH2;
    toCopy[48] |= 0x80uLL;
  }

LABEL_62:
  if (self->_firstCoreDataContainerSetupErrorDomainHH2)
  {
    [v9 setFirstCoreDataContainerSetupErrorDomainHH2:?];
    toCopy = v9;
  }

  if (*(&self->_has + 1))
  {
    toCopy[9] = self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2;
    toCopy[48] |= 0x100uLL;
  }

  if (self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2)
  {
    [v9 setFirstCoreDataContainerSetupUnderlyingErrorDomainHH2:?];
    toCopy = v9;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x8000000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_74;
    }
  }

  else if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  sessionSetupOpenMSHH1 = self->_sessionSetupOpenMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_75;
  }

LABEL_74:
  controllerKeyExchangeMSHH1 = self->_controllerKeyExchangeMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_76;
  }

LABEL_75:
  newAccessoryTransferMSHH1 = self->_newAccessoryTransferMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_77;
  }

LABEL_76:
  sessionSetupCloseMSHH1 = self->_sessionSetupCloseMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_78;
  }

LABEL_77:
  sentinelZoneFetchMSHH1 = self->_sentinelZoneFetchMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_79;
  }

LABEL_78:
  totalDurationMSHH1 = self->_totalDurationMSHH1;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_79:
  accountSettleWaitMSHH2 = self->_accountSettleWaitMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_80:
  currentDeviceIDSWaitMSHH2 = self->_currentDeviceIDSWaitMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_82;
  }

LABEL_81:
  homeManagerReadyMSHH2 = self->_homeManagerReadyMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_83;
  }

LABEL_82:
  firstCoreDataImportMSHH2 = self->_firstCoreDataImportMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_84;
  }

LABEL_83:
  accessoryAddMSHH2 = self->_accessoryAddMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_85;
  }

LABEL_84:
  settingsCreationMSHH2 = self->_settingsCreationMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_86;
  }

LABEL_85:
  pairingIdentityCreationMSHH2 = self->_pairingIdentityCreationMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_87;
  }

LABEL_86:
  siriReadyMSHH2 = self->_siriReadyMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_88;
  }

LABEL_87:
  eventRouterServerConnectionMSHH2 = self->_eventRouterServerConnectionMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_89;
  }

LABEL_88:
  primaryResidentElectionMSHH2 = self->_primaryResidentElectionMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_90;
  }

LABEL_89:
  eventRouterFirstEventPushMSHH2 = self->_eventRouterFirstEventPushMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_90:
  totalDurationMSHH2 = self->_totalDurationMSHH2;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_92;
  }

LABEL_91:
  iCloudAvailableINT = self->_iCloudAvailableINT;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_93;
  }

LABEL_92:
  iDSAvailableINT = self->_iDSAvailableINT;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_93:
  manateeAvailableINT = self->_manateeAvailableINT;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_94:
  networkAvailableINT = self->_networkAvailableINT;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_25:
    lastKnownStageErrorCode = self->_lastKnownStageErrorCode;
    PBDataWriterWriteInt64Field();
  }

LABEL_26:
  if (self->_lastKnownStageErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastKnownStageErrorString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    lastKnownStageUnderlyingErrorCode = self->_lastKnownStageUnderlyingErrorCode;
    PBDataWriterWriteInt64Field();
  }

  if (self->_lastKnownStageUnderlyingErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x1000000) != 0)
  {
    savedEventState = self->_savedEventState;
    PBDataWriterWriteUint64Field();
    v7 = self->_has;
    if ((*&v7 & 0x1000000000) == 0)
    {
LABEL_36:
      if ((*&v7 & 0x2000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v7 & 0x1000000000) == 0)
  {
    goto LABEL_36;
  }

  lastKnownControllerHH2Mode = self->_lastKnownControllerHH2Mode;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_37:
    lastKnownControllerSentinelZoneExistence = self->_lastKnownControllerSentinelZoneExistence;
    PBDataWriterWriteInt32Field();
  }

LABEL_38:
  if (self->_controllerSetupSessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v9 = self->_has;
  if ((*&v9 & 0x80000000000) != 0)
  {
    numberOfTimesPrimaryResidentChangedHH2 = self->_numberOfTimesPrimaryResidentChangedHH2;
    PBDataWriterWriteUint32Field();
    v9 = self->_has;
    if ((*&v9 & 0x8000) == 0)
    {
LABEL_42:
      if ((*&v9 & 0x20000000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_101;
    }
  }

  else if ((*&v9 & 0x8000) == 0)
  {
    goto LABEL_42;
  }

  lastPrimaryClientConnectedTimeHH2 = self->_lastPrimaryClientConnectedTimeHH2;
  PBDataWriterWriteInt64Field();
  v9 = self->_has;
  if ((*&v9 & 0x20000000000) == 0)
  {
LABEL_43:
    if ((*&v9 & 0x40000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_102;
  }

LABEL_101:
  numberOfTimesPrimaryClientConnectedHH2 = self->_numberOfTimesPrimaryClientConnectedHH2;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x40000000000) == 0)
  {
LABEL_44:
    if ((*&v9 & 0x10000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_103;
  }

LABEL_102:
  numberOfTimesPrimaryClientDisconnectedHH2 = self->_numberOfTimesPrimaryClientDisconnectedHH2;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x10000000000) == 0)
  {
LABEL_45:
    if ((*&v9 & 0x200000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_104;
  }

LABEL_103:
  numberOfTimesPrimaryClientConnectMessageFailedHH2 = self->_numberOfTimesPrimaryClientConnectMessageFailedHH2;
  PBDataWriterWriteUint32Field();
  v9 = self->_has;
  if ((*&v9 & 0x200000000) == 0)
  {
LABEL_46:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_104:
  currentDeviceConfirmedPrimaryResidentINT = self->_currentDeviceConfirmedPrimaryResidentINT;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_47:
    lastPrimaryClientConnectMessageFailErrorCodeHH2 = self->_lastPrimaryClientConnectMessageFailErrorCodeHH2;
    PBDataWriterWriteInt64Field();
  }

LABEL_48:
  if (self->_lastPrimaryClientConnectMessageFailErrorDomainHH2)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2 = self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2;
    PBDataWriterWriteInt64Field();
  }

  if (self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((*&v12 & 0x800000) != 0)
  {
    primaryResidentElectionPeerDeviceFutureResolvedMSHH2 = self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2;
    PBDataWriterWriteInt64Field();
    v12 = self->_has;
    if ((*&v12 & 0x40000) == 0)
    {
LABEL_56:
      if ((*&v12 & 0x200000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_108;
    }
  }

  else if ((*&v12 & 0x40000) == 0)
  {
    goto LABEL_56;
  }

  primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2 = self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x200000) == 0)
  {
LABEL_57:
    if ((*&v12 & 0x80000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_109;
  }

LABEL_108:
  primaryResidentElectionModernTransportStartedFutureResolvedMSHH2 = self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x80000) == 0)
  {
LABEL_58:
    if ((*&v12 & 0x40) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_110;
  }

LABEL_109:
  primaryResidentElectionJoinMeshMSHH2 = self->_primaryResidentElectionJoinMeshMSHH2;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x40) == 0)
  {
LABEL_59:
    if ((*&v12 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_110:
  firstCoreDataContainerSetupDurationMSHH2 = self->_firstCoreDataContainerSetupDurationMSHH2;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_60:
    firstCoreDataContainerSetupErrorCodeHH2 = self->_firstCoreDataContainerSetupErrorCodeHH2;
    PBDataWriterWriteInt64Field();
  }

LABEL_61:
  if (self->_firstCoreDataContainerSetupErrorDomainHH2)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 1))
  {
    firstCoreDataContainerSetupUnderlyingErrorCodeHH2 = self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2;
    PBDataWriterWriteInt64Field();
  }

  if (self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2 = self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2;
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
    [dictionary setObject:v11 forKey:@"version"];

    has = self->_has;
    if ((*&has & 0x8000000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sessionSetupOpenMSHH1];
  [dictionary setObject:v12 forKey:@"sessionSetupOpenMS_HH1"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_controllerKeyExchangeMSHH1];
  [dictionary setObject:v13 forKey:@"controllerKeyExchangeMS_HH1"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_5:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_newAccessoryTransferMSHH1];
  [dictionary setObject:v14 forKey:@"newAccessoryTransferMS_HH1"];

  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sessionSetupCloseMSHH1];
  [dictionary setObject:v15 forKey:@"sessionSetupCloseMS_HH1"];

  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sentinelZoneFetchMSHH1];
  [dictionary setObject:v16 forKey:@"sentinelZoneFetchMS_HH1"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_8:
    if ((*&has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_totalDurationMSHH1];
  [dictionary setObject:v17 forKey:@"totalDurationMS_HH1"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_9:
    if ((*&has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_accountSettleWaitMSHH2];
  [dictionary setObject:v18 forKey:@"accountSettleWaitMS_HH2"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_10:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_currentDeviceIDSWaitMSHH2];
  [dictionary setObject:v19 forKey:@"currentDeviceIDSWaitMS_HH2"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_homeManagerReadyMSHH2];
  [dictionary setObject:v20 forKey:@"homeManagerReadyMS_HH2"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_firstCoreDataImportMSHH2];
  [dictionary setObject:v21 forKey:@"firstCoreDataImportMS_HH2"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_accessoryAddMSHH2];
  [dictionary setObject:v22 forKey:@"accessoryAddMS_HH2"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_settingsCreationMSHH2];
  [dictionary setObject:v23 forKey:@"settingsCreationMS_HH2"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_pairingIdentityCreationMSHH2];
  [dictionary setObject:v24 forKey:@"pairingIdentityCreationMS_HH2"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_siriReadyMSHH2];
  [dictionary setObject:v25 forKey:@"siriReadyMS_HH2"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_eventRouterServerConnectionMSHH2];
  [dictionary setObject:v26 forKey:@"eventRouterServerConnectionMS_HH2"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_18:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentElectionMSHH2];
  [dictionary setObject:v27 forKey:@"primaryResidentElectionMS_HH2"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_19:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_eventRouterFirstEventPushMSHH2];
  [dictionary setObject:v28 forKey:@"eventRouterFirstEventPushMS_HH2"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v29 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_totalDurationMSHH2];
  [dictionary setObject:v29 forKey:@"totalDurationMS_HH2"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_57:
  iCloudAvailableINT = self->_iCloudAvailableINT;
  if (iCloudAvailableINT)
  {
    if (iCloudAvailableINT == 1)
    {
      v31 = @"Good";
    }

    else
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_iCloudAvailableINT];
    }
  }

  else
  {
    v31 = @"Unknown";
  }

  [dictionary setObject:v31 forKey:@"iCloudAvailable_INT"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_125;
  }

LABEL_72:
  iDSAvailableINT = self->_iDSAvailableINT;
  if (iDSAvailableINT)
  {
    if (iDSAvailableINT == 1)
    {
      v38 = @"Good";
    }

    else
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_iDSAvailableINT];
    }
  }

  else
  {
    v38 = @"Unknown";
  }

  [dictionary setObject:v38 forKey:@"IDSAvailable_INT"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_131;
  }

LABEL_125:
  manateeAvailableINT = self->_manateeAvailableINT;
  if (manateeAvailableINT)
  {
    if (manateeAvailableINT == 1)
    {
      v65 = @"Good";
    }

    else
    {
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_manateeAvailableINT];
    }
  }

  else
  {
    v65 = @"Unknown";
  }

  [dictionary setObject:v65 forKey:@"manateeAvailable_INT"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_131:
  networkAvailableINT = self->_networkAvailableINT;
  if (networkAvailableINT)
  {
    if (networkAvailableINT == 1)
    {
      v67 = @"Good";
    }

    else
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_networkAvailableINT];
    }
  }

  else
  {
    v67 = @"Unknown";
  }

  [dictionary setObject:v67 forKey:@"networkAvailable_INT"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_25:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastKnownStageErrorCode];
    [dictionary setObject:v5 forKey:@"lastKnownStageErrorCode"];
  }

LABEL_26:
  lastKnownStageErrorDomain = self->_lastKnownStageErrorDomain;
  if (lastKnownStageErrorDomain)
  {
    [dictionary setObject:lastKnownStageErrorDomain forKey:@"lastKnownStageErrorDomain"];
  }

  lastKnownStageErrorString = self->_lastKnownStageErrorString;
  if (lastKnownStageErrorString)
  {
    [dictionary setObject:lastKnownStageErrorString forKey:@"lastKnownStageErrorString"];
  }

  if ((*(&self->_has + 1) & 0x10) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastKnownStageUnderlyingErrorCode];
    [dictionary setObject:v8 forKey:@"lastKnownStageUnderlyingErrorCode"];
  }

  lastKnownStageUnderlyingErrorDomain = self->_lastKnownStageUnderlyingErrorDomain;
  if (lastKnownStageUnderlyingErrorDomain)
  {
    [dictionary setObject:lastKnownStageUnderlyingErrorDomain forKey:@"lastKnownStageUnderlyingErrorDomain"];
  }

  v10 = self->_has;
  if ((*&v10 & 0x1000000) != 0)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_savedEventState];
    [dictionary setObject:v32 forKey:@"savedEventState"];

    v10 = self->_has;
    if ((*&v10 & 0x1000000000) == 0)
    {
LABEL_36:
      if ((*&v10 & 0x2000000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v10 & 0x1000000000) == 0)
  {
    goto LABEL_36;
  }

  lastKnownControllerHH2Mode = self->_lastKnownControllerHH2Mode;
  if (lastKnownControllerHH2Mode >= 3)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_lastKnownControllerHH2Mode];
  }

  else
  {
    v34 = off_1E75469A0[lastKnownControllerHH2Mode];
  }

  [dictionary setObject:v34 forKey:@"lastKnownControllerHH2Mode"];

  if ((*&self->_has & 0x2000000000) != 0)
  {
LABEL_65:
    lastKnownControllerSentinelZoneExistence = self->_lastKnownControllerSentinelZoneExistence;
    if (lastKnownControllerSentinelZoneExistence)
    {
      if (lastKnownControllerSentinelZoneExistence == 1)
      {
        v36 = @"Good";
      }

      else
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_lastKnownControllerSentinelZoneExistence];
      }
    }

    else
    {
      v36 = @"Unknown";
    }

    [dictionary setObject:v36 forKey:@"lastKnownControllerSentinelZoneExistence"];
  }

LABEL_78:
  controllerSetupSessionIdentifier = self->_controllerSetupSessionIdentifier;
  if (controllerSetupSessionIdentifier)
  {
    [dictionary setObject:controllerSetupSessionIdentifier forKey:@"controllerSetupSessionIdentifier"];
  }

  v40 = self->_has;
  if ((*&v40 & 0x80000000000) != 0)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfTimesPrimaryResidentChangedHH2];
    [dictionary setObject:v52 forKey:@"numberOfTimesPrimaryResidentChanged_HH2"];

    v40 = self->_has;
    if ((*&v40 & 0x8000) == 0)
    {
LABEL_82:
      if ((*&v40 & 0x20000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_111;
    }
  }

  else if ((*&v40 & 0x8000) == 0)
  {
    goto LABEL_82;
  }

  v53 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastPrimaryClientConnectedTimeHH2];
  [dictionary setObject:v53 forKey:@"lastPrimaryClientConnectedTime_HH2"];

  v40 = self->_has;
  if ((*&v40 & 0x20000000000) == 0)
  {
LABEL_83:
    if ((*&v40 & 0x40000000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_112;
  }

LABEL_111:
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfTimesPrimaryClientConnectedHH2];
  [dictionary setObject:v54 forKey:@"numberOfTimesPrimaryClientConnected_HH2"];

  v40 = self->_has;
  if ((*&v40 & 0x40000000000) == 0)
  {
LABEL_84:
    if ((*&v40 & 0x10000000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_113;
  }

LABEL_112:
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfTimesPrimaryClientDisconnectedHH2];
  [dictionary setObject:v55 forKey:@"numberOfTimesPrimaryClientDisconnected_HH2"];

  v40 = self->_has;
  if ((*&v40 & 0x10000000000) == 0)
  {
LABEL_85:
    if ((*&v40 & 0x200000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_114;
  }

LABEL_113:
  v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfTimesPrimaryClientConnectMessageFailedHH2];
  [dictionary setObject:v56 forKey:@"numberOfTimesPrimaryClientConnectMessageFailed_HH2"];

  v40 = self->_has;
  if ((*&v40 & 0x200000000) == 0)
  {
LABEL_86:
    if ((*&v40 & 0x2000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_114:
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentDeviceConfirmedPrimaryResidentINT];
  [dictionary setObject:v57 forKey:@"currentDeviceConfirmedPrimaryResident_INT"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_87:
    v41 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastPrimaryClientConnectMessageFailErrorCodeHH2];
    [dictionary setObject:v41 forKey:@"lastPrimaryClientConnectMessageFailErrorCode_HH2"];
  }

LABEL_88:
  lastPrimaryClientConnectMessageFailErrorDomainHH2 = self->_lastPrimaryClientConnectMessageFailErrorDomainHH2;
  if (lastPrimaryClientConnectMessageFailErrorDomainHH2)
  {
    [dictionary setObject:lastPrimaryClientConnectMessageFailErrorDomainHH2 forKey:@"lastPrimaryClientConnectMessageFailErrorDomain_HH2"];
  }

  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2];
    [dictionary setObject:v43 forKey:@"lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2"];
  }

  lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 = self->_lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2;
  if (lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2)
  {
    [dictionary setObject:lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 forKey:@"lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2"];
  }

  v45 = self->_has;
  if ((*&v45 & 0x800000) != 0)
  {
    v58 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentElectionPeerDeviceFutureResolvedMSHH2];
    [dictionary setObject:v58 forKey:@"primaryResidentElectionPeerDeviceFutureResolvedMS_HH2"];

    v45 = self->_has;
    if ((*&v45 & 0x40000) == 0)
    {
LABEL_96:
      if ((*&v45 & 0x200000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_118;
    }
  }

  else if ((*&v45 & 0x40000) == 0)
  {
    goto LABEL_96;
  }

  v59 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2];
  [dictionary setObject:v59 forKey:@"primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2"];

  v45 = self->_has;
  if ((*&v45 & 0x200000) == 0)
  {
LABEL_97:
    if ((*&v45 & 0x400000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_119;
  }

LABEL_118:
  v60 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentElectionModernTransportStartedFutureResolvedMSHH2];
  [dictionary setObject:v60 forKey:@"primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2"];

  v45 = self->_has;
  if ((*&v45 & 0x400000) == 0)
  {
LABEL_98:
    if ((*&v45 & 0x80000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_120;
  }

LABEL_119:
  v61 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2];
  [dictionary setObject:v61 forKey:@"primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2"];

  v45 = self->_has;
  if ((*&v45 & 0x80000) == 0)
  {
LABEL_99:
    if ((*&v45 & 0x40) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_121;
  }

LABEL_120:
  v62 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_primaryResidentElectionJoinMeshMSHH2];
  [dictionary setObject:v62 forKey:@"primaryResidentElectionJoinMeshMS_HH2"];

  v45 = self->_has;
  if ((*&v45 & 0x40) == 0)
  {
LABEL_100:
    if ((*&v45 & 0x80) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

LABEL_121:
  v63 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_firstCoreDataContainerSetupDurationMSHH2];
  [dictionary setObject:v63 forKey:@"firstCoreDataContainerSetupDurationMS_HH2"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_101:
    v46 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_firstCoreDataContainerSetupErrorCodeHH2];
    [dictionary setObject:v46 forKey:@"firstCoreDataContainerSetupErrorCode_HH2"];
  }

LABEL_102:
  firstCoreDataContainerSetupErrorDomainHH2 = self->_firstCoreDataContainerSetupErrorDomainHH2;
  if (firstCoreDataContainerSetupErrorDomainHH2)
  {
    [dictionary setObject:firstCoreDataContainerSetupErrorDomainHH2 forKey:@"firstCoreDataContainerSetupErrorDomain_HH2"];
  }

  if (*(&self->_has + 1))
  {
    v48 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_firstCoreDataContainerSetupUnderlyingErrorCodeHH2];
    [dictionary setObject:v48 forKey:@"firstCoreDataContainerSetupUnderlyingErrorCode_HH2"];
  }

  firstCoreDataContainerSetupUnderlyingErrorDomainHH2 = self->_firstCoreDataContainerSetupUnderlyingErrorDomainHH2;
  if (firstCoreDataContainerSetupUnderlyingErrorDomainHH2)
  {
    [dictionary setObject:firstCoreDataContainerSetupUnderlyingErrorDomainHH2 forKey:@"firstCoreDataContainerSetupUnderlyingErrorDomain_HH2"];
  }

  v50 = dictionary;

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoSetupInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoSetupInfo *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryDiagnosticInfoProtoSetupInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasFirstCoreDataContainerSetupUnderlyingErrorCodeHH2:(BOOL)h2
{
  v3 = 256;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasFirstCoreDataContainerSetupErrorCodeHH2:(BOOL)h2
{
  v3 = 128;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasFirstCoreDataContainerSetupDurationMSHH2:(BOOL)h2
{
  v3 = 64;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasPrimaryResidentElectionJoinMeshMSHH2:(BOOL)h2
{
  v3 = 0x80000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasPrimaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2:(BOOL)h2
{
  v3 = 0x400000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasPrimaryResidentElectionModernTransportStartedFutureResolvedMSHH2:(BOOL)h2
{
  v3 = 0x200000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasPrimaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2:(BOOL)h2
{
  v3 = 0x40000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasPrimaryResidentElectionPeerDeviceFutureResolvedMSHH2:(BOOL)h2
{
  v3 = 0x800000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasLastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2:(BOOL)h2
{
  v3 = 0x4000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasLastPrimaryClientConnectMessageFailErrorCodeHH2:(BOOL)h2
{
  v3 = 0x2000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasCurrentDeviceConfirmedPrimaryResidentINT:(BOOL)t
{
  v3 = 0x200000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasNumberOfTimesPrimaryClientConnectMessageFailedHH2:(BOOL)h2
{
  v3 = 0x10000000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasNumberOfTimesPrimaryClientDisconnectedHH2:(BOOL)h2
{
  v3 = 0x40000000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasNumberOfTimesPrimaryClientConnectedHH2:(BOOL)h2
{
  v3 = 0x20000000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasLastPrimaryClientConnectedTimeHH2:(BOOL)h2
{
  v3 = 0x8000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasNumberOfTimesPrimaryResidentChangedHH2:(BOOL)h2
{
  v3 = 0x80000000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (int)StringAsLastKnownControllerSentinelZoneExistence:(id)existence
{
  existenceCopy = existence;
  if ([existenceCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [existenceCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (void)setHasLastKnownControllerSentinelZoneExistence:(BOOL)existence
{
  v3 = 0x2000000000;
  if (!existence)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (int)lastKnownControllerSentinelZoneExistence
{
  if ((*(&self->_has + 4) & 0x20) != 0)
  {
    return self->_lastKnownControllerSentinelZoneExistence;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsLastKnownControllerHH2Mode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"HH1State"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"HH2State"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLastKnownControllerHH2Mode:(BOOL)mode
{
  v3 = 0x1000000000;
  if (!mode)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (int)lastKnownControllerHH2Mode
{
  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    return self->_lastKnownControllerHH2Mode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSavedEventState:(BOOL)state
{
  v3 = 0x1000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasLastKnownStageUnderlyingErrorCode:(BOOL)code
{
  v3 = 4096;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasLastKnownStageErrorCode:(BOOL)code
{
  v3 = 2048;
  if (!code)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (int)StringAsNetworkAvailableINT:(id)t
{
  tCopy = t;
  if ([tCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [tCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (void)setHasNetworkAvailableINT:(BOOL)t
{
  v3 = 0x8000000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (int)networkAvailableINT
{
  if ((*(&self->_has + 4) & 0x80) != 0)
  {
    return self->_networkAvailableINT;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsManateeAvailableINT:(id)t
{
  tCopy = t;
  if ([tCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [tCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (void)setHasManateeAvailableINT:(BOOL)t
{
  v3 = 0x4000000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (int)manateeAvailableINT
{
  if ((*(&self->_has + 4) & 0x40) != 0)
  {
    return self->_manateeAvailableINT;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsIDSAvailableINT:(id)t
{
  tCopy = t;
  if ([tCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [tCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (void)setHasIDSAvailableINT:(BOOL)t
{
  v3 = 0x800000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (int)iDSAvailableINT
{
  if ((*(&self->_has + 4) & 8) != 0)
  {
    return self->_iDSAvailableINT;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsICloudAvailableINT:(id)t
{
  tCopy = t;
  if ([tCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [tCopy isEqualToString:@"Good"];
  }

  return v4;
}

- (void)setHasICloudAvailableINT:(BOOL)t
{
  v3 = 0x400000000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (int)iCloudAvailableINT
{
  if ((*(&self->_has + 4) & 4) != 0)
  {
    return self->_iCloudAvailableINT;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTotalDurationMSHH2:(BOOL)h2
{
  v3 = 0x80000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasEventRouterFirstEventPushMSHH2:(BOOL)h2
{
  v3 = 16;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasPrimaryResidentElectionMSHH2:(BOOL)h2
{
  v3 = 0x100000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasEventRouterServerConnectionMSHH2:(BOOL)h2
{
  v3 = 32;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasSiriReadyMSHH2:(BOOL)h2
{
  v3 = 0x20000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasPairingIdentityCreationMSHH2:(BOOL)h2
{
  v3 = 0x20000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasSettingsCreationMSHH2:(BOOL)h2
{
  v3 = 0x10000000;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasFirstCoreDataImportMSHH2:(BOOL)h2
{
  v3 = 512;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasHomeManagerReadyMSHH2:(BOOL)h2
{
  v3 = 1024;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasCurrentDeviceIDSWaitMSHH2:(BOOL)h2
{
  v3 = 8;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasAccountSettleWaitMSHH2:(BOOL)h2
{
  v3 = 2;
  if (!h2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasTotalDurationMSHH1:(BOOL)h1
{
  v3 = 0x40000000;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasSentinelZoneFetchMSHH1:(BOOL)h1
{
  v3 = 0x2000000;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasSessionSetupCloseMSHH1:(BOOL)h1
{
  v3 = 0x4000000;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasNewAccessoryTransferMSHH1:(BOOL)h1
{
  v3 = 0x10000;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasControllerKeyExchangeMSHH1:(BOOL)h1
{
  v3 = 4;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasSessionSetupOpenMSHH1:(BOOL)h1
{
  v3 = 0x8000000;
  if (!h1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasVersion:(BOOL)version
{
  v3 = 0x100000000;
  if (!version)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

@end