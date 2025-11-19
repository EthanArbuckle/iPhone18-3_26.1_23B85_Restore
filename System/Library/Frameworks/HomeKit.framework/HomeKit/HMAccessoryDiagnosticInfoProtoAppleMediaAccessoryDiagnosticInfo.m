@interface HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPrimaryResidentStatus:(id)a3;
- (int)primaryResidentStatus;
- (unint64_t)hash;
- (void)addNearbyVisibleDeviceInfos:(id)a3;
- (void)addNetworkInfo:(id)a3;
- (void)addNetworkServiceInfo:(id)a3;
- (void)addNetworkVisibleDeviceInfos:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumAppleMediaAccessories:(BOOL)a3;
- (void)setHasNumResidents:(BOOL)a3;
- (void)setHasPrimaryResidentStatus:(BOOL)a3;
- (void)setHasSfProblemFlags:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo

- (void)mergeFrom:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 10))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setMediaRouteIdString:?];
  }

  wifiInfo = self->_wifiInfo;
  v6 = *(v4 + 22);
  if (wifiInfo)
  {
    if (v6)
    {
      [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setWifiInfo:?];
  }

  currentAccessoryInfo = self->_currentAccessoryInfo;
  v8 = *(v4 + 6);
  if (currentAccessoryInfo)
  {
    if (v8)
    {
      [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)currentAccessoryInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setCurrentAccessoryInfo:?];
  }

  cloudInfo = self->_cloudInfo;
  v10 = *(v4 + 5);
  if (cloudInfo)
  {
    if (v10)
    {
      [(HMAccessoryDiagnosticInfoProtoCloudInfo *)cloudInfo mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setCloudInfo:?];
  }

  idsInfo = self->_idsInfo;
  v12 = *(v4 + 8);
  if (idsInfo)
  {
    if (v12)
    {
      [(HMAccessoryDiagnosticInfoProtoIdsInfo *)idsInfo mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setIdsInfo:?];
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  v14 = *(v4 + 7);
  if (eventRouterServerInfo)
  {
    if (v14)
    {
      [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setEventRouterServerInfo:?];
  }

  if (*(v4 + 184))
  {
    self->_generationTime = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 18))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setSerialNumber:?];
  }

  if (*(v4 + 11))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setModelIdentifier:?];
  }

  if (*(v4 + 21))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setSoftwareVersion:?];
  }

  if (*(v4 + 17))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setRegionInfo:?];
  }

  if (*(v4 + 9))
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setManufacturer:?];
  }

  softwareUpdateDescriptor = self->_softwareUpdateDescriptor;
  v16 = *(v4 + 19);
  if (softwareUpdateDescriptor)
  {
    if (v16)
    {
      [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)softwareUpdateDescriptor mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setSoftwareUpdateDescriptor:?];
  }

  softwareUpdateProgress = self->_softwareUpdateProgress;
  v18 = *(v4 + 20);
  if (softwareUpdateProgress)
  {
    if (v18)
    {
      [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)softwareUpdateProgress mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self setSoftwareUpdateProgress:?];
  }

  if ((*(v4 + 184) & 8) != 0)
  {
    self->_sfProblemFlags = *(v4 + 4);
    *&self->_has |= 8u;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = *(v4 + 13);
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self addNetworkInfo:*(*(&v53 + 1) + 8 * i)];
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v21);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = *(v4 + 14);
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self addNetworkServiceInfo:*(*(&v49 + 1) + 8 * j)];
      }

      v26 = [v24 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v26);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = *(v4 + 15);
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self addNetworkVisibleDeviceInfos:*(*(&v45 + 1) + 8 * k)];
      }

      v31 = [v29 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v31);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = *(v4 + 12);
  v35 = [v34 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v42;
    do
    {
      for (m = 0; m != v36; ++m)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self addNearbyVisibleDeviceInfos:*(*(&v41 + 1) + 8 * m), v41];
      }

      v36 = [v34 countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v36);
  }

  v39 = *(v4 + 184);
  if ((v39 & 2) == 0)
  {
    if ((*(v4 + 184) & 4) == 0)
    {
      goto LABEL_82;
    }

LABEL_86:
    self->_numResidents = *(v4 + 3);
    *&self->_has |= 4u;
    if ((*(v4 + 184) & 0x10) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  self->_numAppleMediaAccessories = *(v4 + 2);
  *&self->_has |= 2u;
  v39 = *(v4 + 184);
  if ((v39 & 4) != 0)
  {
    goto LABEL_86;
  }

LABEL_82:
  if ((v39 & 0x10) != 0)
  {
LABEL_83:
    self->_primaryResidentStatus = *(v4 + 32);
    *&self->_has |= 0x10u;
  }

LABEL_84:

  v40 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v31 = [(NSString *)self->_mediaRouteIdString hash];
  v30 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo hash];
  v29 = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)self->_currentAccessoryInfo hash];
  v28 = [(HMAccessoryDiagnosticInfoProtoCloudInfo *)self->_cloudInfo hash];
  v27 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self->_idsInfo hash];
  v26 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo hash];
  if (*&self->_has)
  {
    generationTime = self->_generationTime;
    if (generationTime < 0.0)
    {
      generationTime = -generationTime;
    }

    *v3.i64 = floor(generationTime + 0.5);
    v7 = (generationTime - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v4, v3).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v25 = v5;
  v24 = [(NSString *)self->_serialNumber hash];
  v23 = [(NSString *)self->_modelIdentifier hash];
  v22 = [(NSString *)self->_softwareVersion hash];
  v21 = [(NSString *)self->_regionInfo hash];
  v9 = [(NSString *)self->_manufacturer hash];
  v10 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self->_softwareUpdateDescriptor hash];
  v11 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)self->_softwareUpdateProgress hash];
  if ((*&self->_has & 8) != 0)
  {
    v12 = 2654435761u * self->_sfProblemFlags;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSMutableArray *)self->_networkInfos hash];
  v14 = [(NSMutableArray *)self->_networkServiceInfos hash];
  v15 = [(NSMutableArray *)self->_networkVisibleDeviceInfos hash];
  v16 = [(NSMutableArray *)self->_nearbyVisibleDeviceInfos hash];
  if ((*&self->_has & 2) == 0)
  {
    v17 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v18 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v19 = 0;
    return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v17 = 2654435761 * self->_numAppleMediaAccessories;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v18 = 2654435761 * self->_numResidents;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v19 = 2654435761 * self->_primaryResidentStatus;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  mediaRouteIdString = self->_mediaRouteIdString;
  if (mediaRouteIdString | *(v4 + 10))
  {
    if (![(NSString *)mediaRouteIdString isEqual:?])
    {
      goto LABEL_61;
    }
  }

  wifiInfo = self->_wifiInfo;
  if (wifiInfo | *(v4 + 22))
  {
    if (![(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  currentAccessoryInfo = self->_currentAccessoryInfo;
  if (currentAccessoryInfo | *(v4 + 6))
  {
    if (![(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)currentAccessoryInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  cloudInfo = self->_cloudInfo;
  if (cloudInfo | *(v4 + 5))
  {
    if (![(HMAccessoryDiagnosticInfoProtoCloudInfo *)cloudInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  idsInfo = self->_idsInfo;
  if (idsInfo | *(v4 + 8))
  {
    if (![(HMAccessoryDiagnosticInfoProtoIdsInfo *)idsInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo | *(v4 + 7))
  {
    if (![(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  v11 = *(v4 + 184);
  if (*&self->_has)
  {
    if ((*(v4 + 184) & 1) == 0 || self->_generationTime != *(v4 + 1))
    {
      goto LABEL_61;
    }
  }

  else if (*(v4 + 184))
  {
LABEL_61:
    v24 = 0;
    goto LABEL_62;
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(v4 + 18) && ![(NSString *)serialNumber isEqual:?])
  {
    goto LABEL_61;
  }

  modelIdentifier = self->_modelIdentifier;
  if (modelIdentifier | *(v4 + 11))
  {
    if (![(NSString *)modelIdentifier isEqual:?])
    {
      goto LABEL_61;
    }
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion | *(v4 + 21))
  {
    if (![(NSString *)softwareVersion isEqual:?])
    {
      goto LABEL_61;
    }
  }

  regionInfo = self->_regionInfo;
  if (regionInfo | *(v4 + 17))
  {
    if (![(NSString *)regionInfo isEqual:?])
    {
      goto LABEL_61;
    }
  }

  manufacturer = self->_manufacturer;
  if (manufacturer | *(v4 + 9))
  {
    if (![(NSString *)manufacturer isEqual:?])
    {
      goto LABEL_61;
    }
  }

  softwareUpdateDescriptor = self->_softwareUpdateDescriptor;
  if (softwareUpdateDescriptor | *(v4 + 19))
  {
    if (![(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)softwareUpdateDescriptor isEqual:?])
    {
      goto LABEL_61;
    }
  }

  softwareUpdateProgress = self->_softwareUpdateProgress;
  if (softwareUpdateProgress | *(v4 + 20))
  {
    if (![(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)softwareUpdateProgress isEqual:?])
    {
      goto LABEL_61;
    }
  }

  v19 = *(v4 + 184);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 184) & 8) == 0 || self->_sfProblemFlags != *(v4 + 4))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 184) & 8) != 0)
  {
    goto LABEL_61;
  }

  networkInfos = self->_networkInfos;
  if (networkInfos | *(v4 + 13) && ![(NSMutableArray *)networkInfos isEqual:?])
  {
    goto LABEL_61;
  }

  networkServiceInfos = self->_networkServiceInfos;
  if (networkServiceInfos | *(v4 + 14))
  {
    if (![(NSMutableArray *)networkServiceInfos isEqual:?])
    {
      goto LABEL_61;
    }
  }

  networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  if (networkVisibleDeviceInfos | *(v4 + 15))
  {
    if (![(NSMutableArray *)networkVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_61;
    }
  }

  nearbyVisibleDeviceInfos = self->_nearbyVisibleDeviceInfos;
  if (nearbyVisibleDeviceInfos | *(v4 + 12))
  {
    if (![(NSMutableArray *)nearbyVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_61;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 184) & 2) == 0 || self->_numAppleMediaAccessories != *(v4 + 2))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 184) & 2) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 184) & 4) == 0 || self->_numResidents != *(v4 + 3))
    {
      goto LABEL_61;
    }
  }

  else if ((*(v4 + 184) & 4) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 184) & 0x10) == 0 || self->_primaryResidentStatus != *(v4 + 32))
    {
      goto LABEL_61;
    }

    v24 = 1;
  }

  else
  {
    v24 = (*(v4 + 184) & 0x10) == 0;
  }

LABEL_62:

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_mediaRouteIdString copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v8 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo copyWithZone:a3];
  v9 = *(v5 + 176);
  *(v5 + 176) = v8;

  v10 = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)self->_currentAccessoryInfo copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(HMAccessoryDiagnosticInfoProtoCloudInfo *)self->_cloudInfo copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)self->_idsInfo copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_generationTime;
    *(v5 + 184) |= 1u;
  }

  v18 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v19 = *(v5 + 144);
  *(v5 + 144) = v18;

  v20 = [(NSString *)self->_modelIdentifier copyWithZone:a3];
  v21 = *(v5 + 88);
  *(v5 + 88) = v20;

  v22 = [(NSString *)self->_softwareVersion copyWithZone:a3];
  v23 = *(v5 + 168);
  *(v5 + 168) = v22;

  v24 = [(NSString *)self->_regionInfo copyWithZone:a3];
  v25 = *(v5 + 136);
  *(v5 + 136) = v24;

  v26 = [(NSString *)self->_manufacturer copyWithZone:a3];
  v27 = *(v5 + 72);
  *(v5 + 72) = v26;

  v28 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)self->_softwareUpdateDescriptor copyWithZone:a3];
  v29 = *(v5 + 152);
  *(v5 + 152) = v28;

  v30 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)self->_softwareUpdateProgress copyWithZone:a3];
  v31 = *(v5 + 160);
  *(v5 + 160) = v30;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 32) = self->_sfProblemFlags;
    *(v5 + 184) |= 8u;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v32 = self->_networkInfos;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v72;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v72 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v71 + 1) + 8 * i) copyWithZone:a3];
        [v5 addNetworkInfo:v37];
      }

      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v34);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = self->_networkServiceInfos;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v68;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v68 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v67 + 1) + 8 * j) copyWithZone:a3];
        [v5 addNetworkServiceInfo:v43];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v40);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v44 = self->_networkVisibleDeviceInfos;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v64;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [*(*(&v63 + 1) + 8 * k) copyWithZone:a3];
        [v5 addNetworkVisibleDeviceInfos:v49];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v46);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v50 = self->_nearbyVisibleDeviceInfos;
  v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v60;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = [*(*(&v59 + 1) + 8 * m) copyWithZone:{a3, v59}];
        [v5 addNearbyVisibleDeviceInfos:v55];
      }

      v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v52);
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    *(v5 + 24) = self->_numResidents;
    *(v5 + 184) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  *(v5 + 16) = self->_numAppleMediaAccessories;
  *(v5 + 184) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  if ((has & 0x10) != 0)
  {
LABEL_36:
    *(v5 + 128) = self->_primaryResidentStatus;
    *(v5 + 184) |= 0x10u;
  }

LABEL_37:
  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (self->_mediaRouteIdString)
  {
    [v4 setMediaRouteIdString:?];
    v4 = v22;
  }

  if (self->_wifiInfo)
  {
    [v22 setWifiInfo:?];
    v4 = v22;
  }

  if (self->_currentAccessoryInfo)
  {
    [v22 setCurrentAccessoryInfo:?];
    v4 = v22;
  }

  if (self->_cloudInfo)
  {
    [v22 setCloudInfo:?];
    v4 = v22;
  }

  if (self->_idsInfo)
  {
    [v22 setIdsInfo:?];
    v4 = v22;
  }

  if (self->_eventRouterServerInfo)
  {
    [v22 setEventRouterServerInfo:?];
    v4 = v22;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_generationTime;
    *(v4 + 184) |= 1u;
  }

  if (self->_serialNumber)
  {
    [v22 setSerialNumber:?];
    v4 = v22;
  }

  if (self->_modelIdentifier)
  {
    [v22 setModelIdentifier:?];
    v4 = v22;
  }

  if (self->_softwareVersion)
  {
    [v22 setSoftwareVersion:?];
    v4 = v22;
  }

  if (self->_regionInfo)
  {
    [v22 setRegionInfo:?];
    v4 = v22;
  }

  if (self->_manufacturer)
  {
    [v22 setManufacturer:?];
    v4 = v22;
  }

  if (self->_softwareUpdateDescriptor)
  {
    [v22 setSoftwareUpdateDescriptor:?];
    v4 = v22;
  }

  if (self->_softwareUpdateProgress)
  {
    [v22 setSoftwareUpdateProgress:?];
    v4 = v22;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = self->_sfProblemFlags;
    *(v4 + 184) |= 8u;
  }

  if ([(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkInfosCount])
  {
    [v22 clearNetworkInfos];
    v5 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkInfosCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkInfoAtIndex:i];
        [v22 addNetworkInfo:v8];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkServiceInfosCount])
  {
    [v22 clearNetworkServiceInfos];
    v9 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkServiceInfosCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkServiceInfoAtIndex:j];
        [v22 addNetworkServiceInfo:v12];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkVisibleDeviceInfosCount])
  {
    [v22 clearNetworkVisibleDeviceInfos];
    v13 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkVisibleDeviceInfosCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self networkVisibleDeviceInfosAtIndex:k];
        [v22 addNetworkVisibleDeviceInfos:v16];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self nearbyVisibleDeviceInfosCount])
  {
    [v22 clearNearbyVisibleDeviceInfos];
    v17 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self nearbyVisibleDeviceInfosCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self nearbyVisibleDeviceInfosAtIndex:m];
        [v22 addNearbyVisibleDeviceInfos:v20];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v22 + 2) = self->_numAppleMediaAccessories;
    *(v22 + 184) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_49:
      if ((has & 0x10) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_49;
  }

  *(v22 + 3) = self->_numResidents;
  *(v22 + 184) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_50:
    *(v22 + 32) = self->_primaryResidentStatus;
    *(v22 + 184) |= 0x10u;
  }

LABEL_51:
}

- (void)writeTo:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_mediaRouteIdString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wifiInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_currentAccessoryInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_cloudInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_idsInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_eventRouterServerInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    generationTime = self->_generationTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_softwareVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_regionInfo)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_manufacturer)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_softwareUpdateDescriptor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_softwareUpdateProgress)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 8) != 0)
  {
    sfProblemFlags = self->_sfProblemFlags;
    PBDataWriterWriteUint64Field();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = self->_networkInfos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v9);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = self->_networkServiceInfos;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v44 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v15);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = self->_networkVisibleDeviceInfos;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v21);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = self->_nearbyVisibleDeviceInfos;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v37;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v36 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v27);
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_61;
    }

LABEL_65:
    numResidents = self->_numResidents;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  numAppleMediaAccessories = self->_numAppleMediaAccessories;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  if ((has & 0x10) != 0)
  {
LABEL_62:
    primaryResidentStatus = self->_primaryResidentStatus;
    PBDataWriterWriteInt32Field();
  }

LABEL_63:

  v33 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  mediaRouteIdString = self->_mediaRouteIdString;
  if (mediaRouteIdString)
  {
    [v3 setObject:mediaRouteIdString forKey:@"mediaRouteIdString"];
  }

  wifiInfo = self->_wifiInfo;
  if (wifiInfo)
  {
    v7 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"wifiInfo"];
  }

  currentAccessoryInfo = self->_currentAccessoryInfo;
  if (currentAccessoryInfo)
  {
    v9 = [(HMAccessoryDiagnosticInfoProtoCurrentAccessoryInfo *)currentAccessoryInfo dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"currentAccessoryInfo"];
  }

  cloudInfo = self->_cloudInfo;
  if (cloudInfo)
  {
    v11 = [(HMAccessoryDiagnosticInfoProtoCloudInfo *)cloudInfo dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"cloudInfo"];
  }

  idsInfo = self->_idsInfo;
  if (idsInfo)
  {
    v13 = [(HMAccessoryDiagnosticInfoProtoIdsInfo *)idsInfo dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"idsInfo"];
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo)
  {
    v15 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"eventRouterServerInfo"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_generationTime];
    [v4 setObject:v16 forKey:@"generationTime"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serialNumber"];
  }

  modelIdentifier = self->_modelIdentifier;
  if (modelIdentifier)
  {
    [v4 setObject:modelIdentifier forKey:@"modelIdentifier"];
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion)
  {
    [v4 setObject:softwareVersion forKey:@"softwareVersion"];
  }

  regionInfo = self->_regionInfo;
  if (regionInfo)
  {
    [v4 setObject:regionInfo forKey:@"regionInfo"];
  }

  manufacturer = self->_manufacturer;
  if (manufacturer)
  {
    [v4 setObject:manufacturer forKey:@"manufacturer"];
  }

  softwareUpdateDescriptor = self->_softwareUpdateDescriptor;
  if (softwareUpdateDescriptor)
  {
    v23 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)softwareUpdateDescriptor dictionaryRepresentation];
    [v4 setObject:v23 forKey:@"softwareUpdateDescriptor"];
  }

  softwareUpdateProgress = self->_softwareUpdateProgress;
  if (softwareUpdateProgress)
  {
    v25 = [(HMSoftwareUpdateEventProtoSoftwareUpdateProgress *)softwareUpdateProgress dictionaryRepresentation];
    [v4 setObject:v25 forKey:@"softwareUpdateProgress"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sfProblemFlags];
    [v4 setObject:v26 forKey:@"sfProblemFlags"];
  }

  if ([(NSMutableArray *)self->_networkInfos count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkInfos, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v28 = self->_networkInfos;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v75;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v75 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v74 + 1) + 8 * i) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"networkInfo"];
  }

  if ([(NSMutableArray *)self->_networkServiceInfos count])
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkServiceInfos, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v35 = self->_networkServiceInfos;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v71;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v70 + 1) + 8 * j) dictionaryRepresentation];
          [v34 addObject:v40];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v37);
    }

    [v4 setObject:v34 forKey:@"networkServiceInfo"];
  }

  if ([(NSMutableArray *)self->_networkVisibleDeviceInfos count])
  {
    v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkVisibleDeviceInfos, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v42 = self->_networkVisibleDeviceInfos;
    v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v67;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v67 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [*(*(&v66 + 1) + 8 * k) dictionaryRepresentation];
          [v41 addObject:v47];
        }

        v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v44);
    }

    [v4 setObject:v41 forKey:@"networkVisibleDeviceInfos"];
  }

  if ([(NSMutableArray *)self->_nearbyVisibleDeviceInfos count])
  {
    v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_nearbyVisibleDeviceInfos, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v49 = self->_nearbyVisibleDeviceInfos;
    v50 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v63;
      do
      {
        for (m = 0; m != v51; ++m)
        {
          if (*v63 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v62 + 1) + 8 * m) dictionaryRepresentation];
          [v48 addObject:v54];
        }

        v51 = [(NSMutableArray *)v49 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v51);
    }

    [v4 setObject:v48 forKey:@"nearbyVisibleDeviceInfos"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_69;
    }

LABEL_72:
    v57 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numResidents];
    [v4 setObject:v57 forKey:@"numResidents"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_77;
    }

LABEL_73:
    primaryResidentStatus = self->_primaryResidentStatus;
    if (primaryResidentStatus >= 3)
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_primaryResidentStatus];
    }

    else
    {
      v59 = off_1E754AC70[primaryResidentStatus];
    }

    [v4 setObject:v59 forKey:@"primaryResidentStatus"];

    goto LABEL_77;
  }

  v56 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numAppleMediaAccessories];
  [v4 setObject:v56 forKey:@"numAppleMediaAccessories"];

  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_72;
  }

LABEL_69:
  if ((has & 0x10) != 0)
  {
    goto LABEL_73;
  }

LABEL_77:
  v60 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)&v8 description];
  v5 = [(HMAccessoryDiagnosticInfoProtoAppleMediaAccessoryDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsPrimaryResidentStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NoKnownPrimary"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"KnownPrimary"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPrimaryResidentStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)primaryResidentStatus
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_primaryResidentStatus;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNumResidents:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumAppleMediaAccessories:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addNearbyVisibleDeviceInfos:(id)a3
{
  v4 = a3;
  nearbyVisibleDeviceInfos = self->_nearbyVisibleDeviceInfos;
  v8 = v4;
  if (!nearbyVisibleDeviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_nearbyVisibleDeviceInfos;
    self->_nearbyVisibleDeviceInfos = v6;

    v4 = v8;
    nearbyVisibleDeviceInfos = self->_nearbyVisibleDeviceInfos;
  }

  [(NSMutableArray *)nearbyVisibleDeviceInfos addObject:v4];
}

- (void)addNetworkVisibleDeviceInfos:(id)a3
{
  v4 = a3;
  networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  v8 = v4;
  if (!networkVisibleDeviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkVisibleDeviceInfos;
    self->_networkVisibleDeviceInfos = v6;

    v4 = v8;
    networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  }

  [(NSMutableArray *)networkVisibleDeviceInfos addObject:v4];
}

- (void)addNetworkServiceInfo:(id)a3
{
  v4 = a3;
  networkServiceInfos = self->_networkServiceInfos;
  v8 = v4;
  if (!networkServiceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkServiceInfos;
    self->_networkServiceInfos = v6;

    v4 = v8;
    networkServiceInfos = self->_networkServiceInfos;
  }

  [(NSMutableArray *)networkServiceInfos addObject:v4];
}

- (void)addNetworkInfo:(id)a3
{
  v4 = a3;
  networkInfos = self->_networkInfos;
  v8 = v4;
  if (!networkInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkInfos;
    self->_networkInfos = v6;

    v4 = v8;
    networkInfos = self->_networkInfos;
  }

  [(NSMutableArray *)networkInfos addObject:v4];
}

- (void)setHasSfProblemFlags:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

@end