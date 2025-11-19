@interface HMAccessoryDiagnosticInfo
- (HMAccessoryDiagnosticInfo)initWithProtoData:(id)a3;
- (HMSoftwareUpdateV2)softwareUpdate;
- (id)description;
@end

@implementation HMAccessoryDiagnosticInfo

- (id)description
{
  v27 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v26 = NSStringFromClass(v3);
  v25 = [(HMAccessoryDiagnosticInfo *)self cloudkitAccountStatusGood];
  v24 = [(HMAccessoryDiagnosticInfo *)self cdpStatusGood];
  v23 = [(HMAccessoryDiagnosticInfo *)self firstCloudImportDone];
  v22 = [(HMAccessoryDiagnosticInfo *)self idsStatusGood];
  v21 = [(HMAccessoryDiagnosticInfo *)self idsIdentifier];
  v20 = [(HMAccessoryDiagnosticInfo *)self manufacturer];
  v19 = [(HMAccessoryDiagnosticInfo *)self model];
  v29 = [(HMAccessoryDiagnosticInfo *)self serialNumber];
  v18 = [(HMAccessoryDiagnosticInfo *)self softwareVersion];
  v17 = [(HMAccessoryDiagnosticInfo *)self softwareUpdateDescriptor];
  v14 = [(HMAccessoryDiagnosticInfo *)self softwareUpdateProgress];
  v16 = [(HMAccessoryDiagnosticInfo *)self isRunningHH2];
  v15 = [(HMAccessoryDiagnosticInfo *)self numHomes];
  v13 = [(HMAccessoryDiagnosticInfo *)self currentAccessoryUUID];
  v12 = [(HMAccessoryDiagnosticInfo *)self currentAccessoryMediaRouteId];
  v4 = [(HMAccessoryDiagnosticInfo *)self isPrimaryResident];
  v11 = [(HMAccessoryDiagnosticInfo *)self wifiInfo];
  v5 = [(HMAccessoryDiagnosticInfo *)self wifiRSSI];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryDiagnosticInfo wifiRequiresPassword](self, "wifiRequiresPassword")}];
  v7 = [(HMAccessoryDiagnosticInfo *)self isEventRouterServerConnected];
  v8 = [(HMAccessoryDiagnosticInfo *)self serverLastConnected];
  v9 = [(HMAccessoryDiagnosticInfo *)self connectedClientsDescription];
  v28 = [v27 stringWithFormat:@"<%@ [cloudkit=> accountStatus: %d, cdp: %d, firstImport: %d>] [ids=> status: %d identifier: %@ ] [device=> %@ - %@ - %@, s/w: %@, upd: (%@, %@)] hh2: %d, numHomes: %lu, uuid: %@, mediaRouteID: %@, isPrimary: %d, wifi: %@, wifiRSSI: %@, securityType: %@, [eventrouter=> connected: %d date: %@, clients: %@] >", v26, v25, v24, v23, v22, v21, v20, v19, v29, v18, v17, v14, v16, v15, v13, v12, v4, v11, v5, v6, v7, v8, v9];

  return v28;
}

- (HMSoftwareUpdateV2)softwareUpdate
{
  v2 = [(HMAccessoryDiagnosticInfo *)self softwareUpdateDescriptor];
  if (v2)
  {
    v3 = [HMSoftwareUpdateV2 softwareUpdateFromDescriptor:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMAccessoryDiagnosticInfo)initWithProtoData:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v79.receiver = self;
  v79.super_class = HMAccessoryDiagnosticInfo;
  v5 = [(HMAccessoryDiagnosticInfo *)&v79 init];
  if (v5)
  {
    v6 = [[HMAccessoryDiagnosticInfoProtoDiagnosticInfo alloc] initWithData:v4];
    v7 = v6;
    if (v6)
    {
      v5->_version = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v6 version];
      if ([(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 hasAppleMediaAccessoryDiagnosticInfo])
      {
        v8 = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 appleMediaAccessoryDiagnosticInfo];
        v9 = [v8 cloudInfo];
        v5->_cloudkitAccountStatusGood = [v9 cloudState] == 1;

        v10 = [v8 cloudInfo];
        v5->_cdpStatusGood = [v10 octagonState] == 1;

        v11 = [v8 cloudInfo];
        v5->_firstCloudImportDone = [v11 firstCloudImportComplete];

        v12 = [v8 mediaRouteIdString];
        currentAccessoryMediaRouteId = v5->_currentAccessoryMediaRouteId;
        v5->_currentAccessoryMediaRouteId = v12;

        v14 = [v8 currentAccessoryInfo];

        if (v14)
        {
          v15 = [v8 currentAccessoryInfo];
          v16 = [v15 uuidString];

          if (v16)
          {
            v17 = objc_alloc(MEMORY[0x1E696AFB0]);
            v18 = [v8 currentAccessoryInfo];
            v19 = [v18 uuidString];
            v20 = [v17 initWithUUIDString:v19];
            currentAccessoryUUID = v5->_currentAccessoryUUID;
            v5->_currentAccessoryUUID = v20;
          }
        }

        v22 = [v8 idsInfo];

        if (v22)
        {
          v23 = [v8 idsInfo];
          v24 = [v23 idsIdentifierString];
          idsIdentifier = v5->_idsIdentifier;
          v5->_idsIdentifier = v24;

          v26 = [v8 idsInfo];
          v5->_idsStatusGood = [v26 idsState] == 1;
        }

        v27 = [v8 eventRouterServerInfo];

        if (v27)
        {
          v28 = [v8 eventRouterServerInfo];
          v5->_isEventRouterServerConnected = [v28 connectionState] == 1;

          v29 = [v8 eventRouterServerInfo];
          v30 = [v29 hasLastConnected];

          if (v30)
          {
            v31 = MEMORY[0x1E695DF00];
            v32 = [v8 eventRouterServerInfo];
            [v32 lastConnected];
            v33 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
            serverLastConnected = v5->_serverLastConnected;
            v5->_serverLastConnected = v33;
          }

          v35 = [v8 eventRouterServerInfo];
          v36 = [v35 connectedClients];
          v37 = [v36 count];

          if (v37)
          {
            v73 = v7;
            v74 = v4;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v38 = [v8 eventRouterServerInfo];
            v39 = [v38 connectedClients];

            v40 = [v39 countByEnumeratingWithState:&v75 objects:v80 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v76;
              v43 = &stru_1F0E92498;
              do
              {
                v44 = 0;
                v45 = v43;
                do
                {
                  if (*v76 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v46 = [*(*(&v75 + 1) + 8 * v44) connectedClientIdentifierString];
                  v43 = [(__CFString *)v45 stringByAppendingFormat:@" %@", v46];

                  ++v44;
                  v45 = v43;
                }

                while (v41 != v44);
                v41 = [v39 countByEnumeratingWithState:&v75 objects:v80 count:16];
              }

              while (v41);
            }

            else
            {
              v43 = &stru_1F0E92498;
            }

            connectedClientsDescription = v5->_connectedClientsDescription;
            v5->_connectedClientsDescription = &v43->isa;

            v7 = v73;
            v4 = v74;
          }
        }

        if ([v8 hasWifiInfo])
        {
          v48 = [v8 wifiInfo];
          v49 = [MEMORY[0x1E69A2A80] wifiNetworkInfoFromProto:v48];
          wifiInfo = v5->_wifiInfo;
          v5->_wifiInfo = v49;

          if ([v48 hasNetworkRSSI])
          {
            v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v48, "networkRSSI")}];
            wifiRSSI = v5->_wifiRSSI;
            v5->_wifiRSSI = v51;
          }

          v5->_wifiRequiresPassword = 1;
          if ([v48 hasRequiresPassword])
          {
            v5->_wifiRequiresPassword = [v48 requiresPassword];
          }
        }

        v53 = [v8 modelIdentifier];
        model = v5->_model;
        v5->_model = v53;

        v55 = [v8 manufacturer];
        manufacturer = v5->_manufacturer;
        v5->_manufacturer = v55;

        v57 = [v8 serialNumber];
        serialNumber = v5->_serialNumber;
        v5->_serialNumber = v57;

        if ([v8 hasSoftwareVersion])
        {
          v59 = objc_alloc(MEMORY[0x1E69A2A60]);
          v60 = [v8 softwareVersion];
          v61 = [v59 initWithString:v60];
          softwareVersion = v5->_softwareVersion;
          v5->_softwareVersion = v61;
        }

        if ([v8 hasSoftwareUpdateDescriptor])
        {
          v63 = [HMSoftwareUpdateDescriptor alloc];
          v64 = [v8 softwareUpdateDescriptor];
          v65 = [(HMSoftwareUpdateDescriptor *)v63 initWithProtoPayload:v64];
          softwareUpdateDescriptor = v5->_softwareUpdateDescriptor;
          v5->_softwareUpdateDescriptor = v65;
        }

        if ([v8 hasSoftwareUpdateProgress])
        {
          v67 = [HMSoftwareUpdateProgress alloc];
          v68 = [v8 softwareUpdateProgress];
          v69 = [(HMSoftwareUpdateProgress *)v67 initWithProtoPayload:v68];
          softwareUpdateProgress = v5->_softwareUpdateProgress;
          v5->_softwareUpdateProgress = v69;
        }
      }

      if ([(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 hasPrimaryResidentDiagnosticInfo])
      {
        v5->_isPrimaryResident = 1;
      }

      v5->_numHomes = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 numHomes];
      v5->_isRunningHH2 = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 homeHubVersion]== 2;
    }
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

@end