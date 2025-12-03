@interface HMAccessoryDiagnosticInfo
- (HMAccessoryDiagnosticInfo)initWithProtoData:(id)data;
- (HMSoftwareUpdateV2)softwareUpdate;
- (id)description;
@end

@implementation HMAccessoryDiagnosticInfo

- (id)description
{
  v27 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v26 = NSStringFromClass(v3);
  cloudkitAccountStatusGood = [(HMAccessoryDiagnosticInfo *)self cloudkitAccountStatusGood];
  cdpStatusGood = [(HMAccessoryDiagnosticInfo *)self cdpStatusGood];
  firstCloudImportDone = [(HMAccessoryDiagnosticInfo *)self firstCloudImportDone];
  idsStatusGood = [(HMAccessoryDiagnosticInfo *)self idsStatusGood];
  idsIdentifier = [(HMAccessoryDiagnosticInfo *)self idsIdentifier];
  manufacturer = [(HMAccessoryDiagnosticInfo *)self manufacturer];
  model = [(HMAccessoryDiagnosticInfo *)self model];
  serialNumber = [(HMAccessoryDiagnosticInfo *)self serialNumber];
  softwareVersion = [(HMAccessoryDiagnosticInfo *)self softwareVersion];
  softwareUpdateDescriptor = [(HMAccessoryDiagnosticInfo *)self softwareUpdateDescriptor];
  softwareUpdateProgress = [(HMAccessoryDiagnosticInfo *)self softwareUpdateProgress];
  isRunningHH2 = [(HMAccessoryDiagnosticInfo *)self isRunningHH2];
  numHomes = [(HMAccessoryDiagnosticInfo *)self numHomes];
  currentAccessoryUUID = [(HMAccessoryDiagnosticInfo *)self currentAccessoryUUID];
  currentAccessoryMediaRouteId = [(HMAccessoryDiagnosticInfo *)self currentAccessoryMediaRouteId];
  isPrimaryResident = [(HMAccessoryDiagnosticInfo *)self isPrimaryResident];
  wifiInfo = [(HMAccessoryDiagnosticInfo *)self wifiInfo];
  wifiRSSI = [(HMAccessoryDiagnosticInfo *)self wifiRSSI];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessoryDiagnosticInfo wifiRequiresPassword](self, "wifiRequiresPassword")}];
  isEventRouterServerConnected = [(HMAccessoryDiagnosticInfo *)self isEventRouterServerConnected];
  serverLastConnected = [(HMAccessoryDiagnosticInfo *)self serverLastConnected];
  connectedClientsDescription = [(HMAccessoryDiagnosticInfo *)self connectedClientsDescription];
  v28 = [v27 stringWithFormat:@"<%@ [cloudkit=> accountStatus: %d, cdp: %d, firstImport: %d>] [ids=> status: %d identifier: %@ ] [device=> %@ - %@ - %@, s/w: %@, upd: (%@, %@)] hh2: %d, numHomes: %lu, uuid: %@, mediaRouteID: %@, isPrimary: %d, wifi: %@, wifiRSSI: %@, securityType: %@, [eventrouter=> connected: %d date: %@, clients: %@] >", v26, cloudkitAccountStatusGood, cdpStatusGood, firstCloudImportDone, idsStatusGood, idsIdentifier, manufacturer, model, serialNumber, softwareVersion, softwareUpdateDescriptor, softwareUpdateProgress, isRunningHH2, numHomes, currentAccessoryUUID, currentAccessoryMediaRouteId, isPrimaryResident, wifiInfo, wifiRSSI, v6, isEventRouterServerConnected, serverLastConnected, connectedClientsDescription];

  return v28;
}

- (HMSoftwareUpdateV2)softwareUpdate
{
  softwareUpdateDescriptor = [(HMAccessoryDiagnosticInfo *)self softwareUpdateDescriptor];
  if (softwareUpdateDescriptor)
  {
    v3 = [HMSoftwareUpdateV2 softwareUpdateFromDescriptor:softwareUpdateDescriptor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMAccessoryDiagnosticInfo)initWithProtoData:(id)data
{
  v81 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v79.receiver = self;
  v79.super_class = HMAccessoryDiagnosticInfo;
  v5 = [(HMAccessoryDiagnosticInfo *)&v79 init];
  if (v5)
  {
    v6 = [[HMAccessoryDiagnosticInfoProtoDiagnosticInfo alloc] initWithData:dataCopy];
    v7 = v6;
    if (v6)
    {
      v5->_version = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v6 version];
      if ([(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 hasAppleMediaAccessoryDiagnosticInfo])
      {
        appleMediaAccessoryDiagnosticInfo = [(HMAccessoryDiagnosticInfoProtoDiagnosticInfo *)v7 appleMediaAccessoryDiagnosticInfo];
        cloudInfo = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        v5->_cloudkitAccountStatusGood = [cloudInfo cloudState] == 1;

        cloudInfo2 = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        v5->_cdpStatusGood = [cloudInfo2 octagonState] == 1;

        cloudInfo3 = [appleMediaAccessoryDiagnosticInfo cloudInfo];
        v5->_firstCloudImportDone = [cloudInfo3 firstCloudImportComplete];

        mediaRouteIdString = [appleMediaAccessoryDiagnosticInfo mediaRouteIdString];
        currentAccessoryMediaRouteId = v5->_currentAccessoryMediaRouteId;
        v5->_currentAccessoryMediaRouteId = mediaRouteIdString;

        currentAccessoryInfo = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];

        if (currentAccessoryInfo)
        {
          currentAccessoryInfo2 = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];
          uuidString = [currentAccessoryInfo2 uuidString];

          if (uuidString)
          {
            v17 = objc_alloc(MEMORY[0x1E696AFB0]);
            currentAccessoryInfo3 = [appleMediaAccessoryDiagnosticInfo currentAccessoryInfo];
            uuidString2 = [currentAccessoryInfo3 uuidString];
            v20 = [v17 initWithUUIDString:uuidString2];
            currentAccessoryUUID = v5->_currentAccessoryUUID;
            v5->_currentAccessoryUUID = v20;
          }
        }

        idsInfo = [appleMediaAccessoryDiagnosticInfo idsInfo];

        if (idsInfo)
        {
          idsInfo2 = [appleMediaAccessoryDiagnosticInfo idsInfo];
          idsIdentifierString = [idsInfo2 idsIdentifierString];
          idsIdentifier = v5->_idsIdentifier;
          v5->_idsIdentifier = idsIdentifierString;

          idsInfo3 = [appleMediaAccessoryDiagnosticInfo idsInfo];
          v5->_idsStatusGood = [idsInfo3 idsState] == 1;
        }

        eventRouterServerInfo = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];

        if (eventRouterServerInfo)
        {
          eventRouterServerInfo2 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
          v5->_isEventRouterServerConnected = [eventRouterServerInfo2 connectionState] == 1;

          eventRouterServerInfo3 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
          hasLastConnected = [eventRouterServerInfo3 hasLastConnected];

          if (hasLastConnected)
          {
            v31 = MEMORY[0x1E695DF00];
            eventRouterServerInfo4 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
            [eventRouterServerInfo4 lastConnected];
            v33 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
            serverLastConnected = v5->_serverLastConnected;
            v5->_serverLastConnected = v33;
          }

          eventRouterServerInfo5 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
          connectedClients = [eventRouterServerInfo5 connectedClients];
          v37 = [connectedClients count];

          if (v37)
          {
            v73 = v7;
            v74 = dataCopy;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            eventRouterServerInfo6 = [appleMediaAccessoryDiagnosticInfo eventRouterServerInfo];
            connectedClients2 = [eventRouterServerInfo6 connectedClients];

            v40 = [connectedClients2 countByEnumeratingWithState:&v75 objects:v80 count:16];
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
                    objc_enumerationMutation(connectedClients2);
                  }

                  connectedClientIdentifierString = [*(*(&v75 + 1) + 8 * v44) connectedClientIdentifierString];
                  v43 = [(__CFString *)v45 stringByAppendingFormat:@" %@", connectedClientIdentifierString];

                  ++v44;
                  v45 = v43;
                }

                while (v41 != v44);
                v41 = [connectedClients2 countByEnumeratingWithState:&v75 objects:v80 count:16];
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
            dataCopy = v74;
          }
        }

        if ([appleMediaAccessoryDiagnosticInfo hasWifiInfo])
        {
          wifiInfo = [appleMediaAccessoryDiagnosticInfo wifiInfo];
          v49 = [MEMORY[0x1E69A2A80] wifiNetworkInfoFromProto:wifiInfo];
          wifiInfo = v5->_wifiInfo;
          v5->_wifiInfo = v49;

          if ([wifiInfo hasNetworkRSSI])
          {
            v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(wifiInfo, "networkRSSI")}];
            wifiRSSI = v5->_wifiRSSI;
            v5->_wifiRSSI = v51;
          }

          v5->_wifiRequiresPassword = 1;
          if ([wifiInfo hasRequiresPassword])
          {
            v5->_wifiRequiresPassword = [wifiInfo requiresPassword];
          }
        }

        modelIdentifier = [appleMediaAccessoryDiagnosticInfo modelIdentifier];
        model = v5->_model;
        v5->_model = modelIdentifier;

        manufacturer = [appleMediaAccessoryDiagnosticInfo manufacturer];
        manufacturer = v5->_manufacturer;
        v5->_manufacturer = manufacturer;

        serialNumber = [appleMediaAccessoryDiagnosticInfo serialNumber];
        serialNumber = v5->_serialNumber;
        v5->_serialNumber = serialNumber;

        if ([appleMediaAccessoryDiagnosticInfo hasSoftwareVersion])
        {
          v59 = objc_alloc(MEMORY[0x1E69A2A60]);
          softwareVersion = [appleMediaAccessoryDiagnosticInfo softwareVersion];
          v61 = [v59 initWithString:softwareVersion];
          softwareVersion = v5->_softwareVersion;
          v5->_softwareVersion = v61;
        }

        if ([appleMediaAccessoryDiagnosticInfo hasSoftwareUpdateDescriptor])
        {
          v63 = [HMSoftwareUpdateDescriptor alloc];
          softwareUpdateDescriptor = [appleMediaAccessoryDiagnosticInfo softwareUpdateDescriptor];
          v65 = [(HMSoftwareUpdateDescriptor *)v63 initWithProtoPayload:softwareUpdateDescriptor];
          softwareUpdateDescriptor = v5->_softwareUpdateDescriptor;
          v5->_softwareUpdateDescriptor = v65;
        }

        if ([appleMediaAccessoryDiagnosticInfo hasSoftwareUpdateProgress])
        {
          v67 = [HMSoftwareUpdateProgress alloc];
          softwareUpdateProgress = [appleMediaAccessoryDiagnosticInfo softwareUpdateProgress];
          v69 = [(HMSoftwareUpdateProgress *)v67 initWithProtoPayload:softwareUpdateProgress];
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