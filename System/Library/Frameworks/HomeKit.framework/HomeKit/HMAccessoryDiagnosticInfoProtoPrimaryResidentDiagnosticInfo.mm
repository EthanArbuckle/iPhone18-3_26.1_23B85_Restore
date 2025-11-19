@interface HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNetworkInfo:(id)a3;
- (void)addNetworkServiceInfo:(id)a3;
- (void)addNetworkVisibleDeviceInfos:(id)a3;
- (void)addProximityVisibleDeviceInfos:(id)a3;
- (void)addVisibleAccessoriesInfo:(id)a3;
- (void)addVisibleIDSDevices:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNumResidents:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo

- (void)mergeFrom:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  wifiInfo = self->_wifiInfo;
  v6 = *(v4 + 10);
  if (wifiInfo)
  {
    if (v6)
    {
      [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self setWifiInfo:?];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v7 = *(v4 + 4);
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkInfo:*(*(&v61 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v9);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = *(v4 + 5);
  v13 = [v12 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v58;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v58 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkServiceInfo:*(*(&v57 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v14);
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  v18 = *(v4 + 3);
  if (eventRouterServerInfo)
  {
    if (v18)
    {
      [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self setEventRouterServerInfo:?];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v19 = *(v4 + 8);
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v68 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addVisibleAccessoriesInfo:*(*(&v53 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v68 count:16];
    }

    while (v21);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v24 = *(v4 + 9);
  v25 = [v24 countByEnumeratingWithState:&v49 objects:v67 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v50;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v50 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addVisibleIDSDevices:*(*(&v49 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v49 objects:v67 count:16];
    }

    while (v26);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = *(v4 + 6);
  v30 = [v29 countByEnumeratingWithState:&v45 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkVisibleDeviceInfos:*(*(&v45 + 1) + 8 * n)];
      }

      v31 = [v29 countByEnumeratingWithState:&v45 objects:v66 count:16];
    }

    while (v31);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v34 = *(v4 + 7);
  v35 = [v34 countByEnumeratingWithState:&v41 objects:v65 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v42;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addProximityVisibleDeviceInfos:*(*(&v41 + 1) + 8 * ii), v41];
      }

      v36 = [v34 countByEnumeratingWithState:&v41 objects:v65 count:16];
    }

    while (v36);
  }

  v39 = *(v4 + 88);
  if (v39)
  {
    self->_numAppleMediaAccessories = *(v4 + 1);
    *&self->_has |= 1u;
    v39 = *(v4 + 88);
  }

  if ((v39 & 2) != 0)
  {
    self->_numResidents = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo hash];
  v4 = [(NSMutableArray *)self->_networkInfos hash];
  v5 = [(NSMutableArray *)self->_networkServiceInfos hash];
  v6 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo hash];
  v7 = [(NSMutableArray *)self->_visibleAccessoriesInfos hash];
  v8 = [(NSMutableArray *)self->_visibleIDSDevices hash];
  v9 = [(NSMutableArray *)self->_networkVisibleDeviceInfos hash];
  v10 = [(NSMutableArray *)self->_proximityVisibleDeviceInfos hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_numAppleMediaAccessories;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 2654435761 * self->_numResidents;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  wifiInfo = self->_wifiInfo;
  if (wifiInfo | *(v4 + 10))
  {
    if (![(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkInfos = self->_networkInfos;
  if (networkInfos | *(v4 + 4))
  {
    if (![(NSMutableArray *)networkInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkServiceInfos = self->_networkServiceInfos;
  if (networkServiceInfos | *(v4 + 5))
  {
    if (![(NSMutableArray *)networkServiceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo | *(v4 + 3))
  {
    if (![(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  if (visibleAccessoriesInfos | *(v4 + 8))
  {
    if (![(NSMutableArray *)visibleAccessoriesInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  visibleIDSDevices = self->_visibleIDSDevices;
  if (visibleIDSDevices | *(v4 + 9))
  {
    if (![(NSMutableArray *)visibleIDSDevices isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  if (networkVisibleDeviceInfos | *(v4 + 6))
  {
    if (![(NSMutableArray *)networkVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  if (proximityVisibleDeviceInfos | *(v4 + 7))
  {
    if (![(NSMutableArray *)proximityVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 88) & 1) == 0 || self->_numAppleMediaAccessories != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 88))
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = (*(v4 + 88) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 88) & 2) == 0 || self->_numResidents != *(v4 + 2))
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v8 = self->_networkInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v70;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v70 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v69 + 1) + 8 * i) copyWithZone:a3];
        [v5 addNetworkInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v10);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v14 = self->_networkServiceInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v66;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v66 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v65 + 1) + 8 * j) copyWithZone:a3];
        [v5 addNetworkServiceInfo:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v65 objects:v77 count:16];
    }

    while (v16);
  }

  v20 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo copyWithZone:a3];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v22 = self->_visibleAccessoriesInfos;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v62;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v62 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v61 + 1) + 8 * k) copyWithZone:a3];
        [v5 addVisibleAccessoriesInfo:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v24);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v28 = self->_visibleIDSDevices;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v58;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v58 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v57 + 1) + 8 * m) copyWithZone:a3];
        [v5 addVisibleIDSDevices:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v30);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = self->_networkVisibleDeviceInfos;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v53 objects:v74 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v53 + 1) + 8 * n) copyWithZone:a3];
        [v5 addNetworkVisibleDeviceInfos:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v53 objects:v74 count:16];
    }

    while (v36);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v40 = self->_proximityVisibleDeviceInfos;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v49 objects:v73 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v50;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v49 + 1) + 8 * ii) copyWithZone:{a3, v49}];
        [v5 addProximityVisibleDeviceInfos:v45];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v49 objects:v73 count:16];
    }

    while (v42);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_numAppleMediaAccessories;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_numResidents;
    *(v5 + 88) |= 2u;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v29 = a3;
  if (self->_wifiInfo)
  {
    [v29 setWifiInfo:?];
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfosCount])
  {
    [v29 clearNetworkInfos];
    v4 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfosCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfoAtIndex:i];
        [v29 addNetworkInfo:v7];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfosCount])
  {
    [v29 clearNetworkServiceInfos];
    v8 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfosCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfoAtIndex:j];
        [v29 addNetworkServiceInfo:v11];
      }
    }
  }

  if (self->_eventRouterServerInfo)
  {
    [v29 setEventRouterServerInfo:?];
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfosCount])
  {
    [v29 clearVisibleAccessoriesInfos];
    v12 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfosCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfoAtIndex:k];
        [v29 addVisibleAccessoriesInfo:v15];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesCount])
  {
    [v29 clearVisibleIDSDevices];
    v16 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesAtIndex:m];
        [v29 addVisibleIDSDevices:v19];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosCount])
  {
    [v29 clearNetworkVisibleDeviceInfos];
    v20 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosAtIndex:n];
        [v29 addNetworkVisibleDeviceInfos:v23];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosCount])
  {
    [v29 clearProximityVisibleDeviceInfos];
    v24 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosAtIndex:ii];
        [v29 addProximityVisibleDeviceInfos:v27];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v29 + 1) = self->_numAppleMediaAccessories;
    *(v29 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v29 + 2) = self->_numResidents;
    *(v29 + 88) |= 2u;
  }
}

- (void)writeTo:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_wifiInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v5 = self->_networkInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v66;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v65 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v7);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = self->_networkServiceInfos;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v61 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v13);
  }

  if (self->_eventRouterServerInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v17 = self->_visibleAccessoriesInfos;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v58;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v57 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v19);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v23 = self->_visibleIDSDevices;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v53 + 1) + 8 * m);
        PBDataWriterWriteStringField();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v53 objects:v71 count:16];
    }

    while (v25);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = self->_networkVisibleDeviceInfos;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v49 objects:v70 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v49 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v49 objects:v70 count:16];
    }

    while (v31);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v35 = self->_proximityVisibleDeviceInfos;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v45 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v46;
    do
    {
      for (ii = 0; ii != v37; ++ii)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v45 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v45 objects:v69 count:16];
    }

    while (v37);
  }

  has = self->_has;
  if (has)
  {
    numAppleMediaAccessories = self->_numAppleMediaAccessories;
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    numResidents = self->_numResidents;
    PBDataWriterWriteInt64Field();
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  wifiInfo = self->_wifiInfo;
  if (wifiInfo)
  {
    v5 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"wifiInfo"];
  }

  if ([(NSMutableArray *)self->_networkInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkInfos, "count")}];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v7 = self->_networkInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v66;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v66 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v65 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"networkInfo"];
  }

  if ([(NSMutableArray *)self->_networkServiceInfos count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkServiceInfos, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v14 = self->_networkServiceInfos;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v62;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v62 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v61 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"networkServiceInfo"];
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo)
  {
    v21 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"eventRouterServerInfo"];
  }

  if ([(NSMutableArray *)self->_visibleAccessoriesInfos count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_visibleAccessoriesInfos, "count")}];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = self->_visibleAccessoriesInfos;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v58;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v57 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKey:@"visibleAccessoriesInfo"];
  }

  visibleIDSDevices = self->_visibleIDSDevices;
  if (visibleIDSDevices)
  {
    [v3 setObject:visibleIDSDevices forKey:@"visibleIDSDevices"];
  }

  if ([(NSMutableArray *)self->_networkVisibleDeviceInfos count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkVisibleDeviceInfos, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v31 = self->_networkVisibleDeviceInfos;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v53 objects:v70 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v54;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = [*(*(&v53 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:v36];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v53 objects:v70 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKey:@"networkVisibleDeviceInfos"];
  }

  if ([(NSMutableArray *)self->_proximityVisibleDeviceInfos count])
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_proximityVisibleDeviceInfos, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = self->_proximityVisibleDeviceInfos;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v50;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v50 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = [*(*(&v49 + 1) + 8 * n) dictionaryRepresentation];
          [v37 addObject:v43];
        }

        v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKey:@"proximityVisibleDeviceInfos"];
  }

  has = self->_has;
  if (has)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numAppleMediaAccessories];
    [v3 setObject:v45 forKey:@"numAppleMediaAccessories"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numResidents];
    [v3 setObject:v46 forKey:@"numResidents"];
  }

  v47 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)&v8 description];
  v5 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasNumResidents:(BOOL)a3
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

- (void)addProximityVisibleDeviceInfos:(id)a3
{
  v4 = a3;
  proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  v8 = v4;
  if (!proximityVisibleDeviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_proximityVisibleDeviceInfos;
    self->_proximityVisibleDeviceInfos = v6;

    v4 = v8;
    proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  }

  [(NSMutableArray *)proximityVisibleDeviceInfos addObject:v4];
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

- (void)addVisibleIDSDevices:(id)a3
{
  v4 = a3;
  visibleIDSDevices = self->_visibleIDSDevices;
  v8 = v4;
  if (!visibleIDSDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visibleIDSDevices;
    self->_visibleIDSDevices = v6;

    v4 = v8;
    visibleIDSDevices = self->_visibleIDSDevices;
  }

  [(NSMutableArray *)visibleIDSDevices addObject:v4];
}

- (void)addVisibleAccessoriesInfo:(id)a3
{
  v4 = a3;
  visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  v8 = v4;
  if (!visibleAccessoriesInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visibleAccessoriesInfos;
    self->_visibleAccessoriesInfos = v6;

    v4 = v8;
    visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  }

  [(NSMutableArray *)visibleAccessoriesInfos addObject:v4];
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

@end