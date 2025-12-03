@interface ASRelationship
+ (id)relationshipWithCodableRelationship:(id)relationship version:(int64_t)version;
+ (id)relationshipWithCodableRelationshipContainer:(id)container;
+ (id)relationshipsWithRelationshipAndEventRecords:(id)records;
+ (void)_relationshipWithRecord:(id)record relationshipEventRecords:(id)records completion:(id)completion;
- (ASCodableCloudKitRelationship)codableRelationship;
- (ASRelationship)init;
- (ASRelationship)initWithIdentifier:(id)identifier cloudType:(unint64_t)type;
- (BOOL)hasInviteRequestEvent;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRelationship:(id)relationship;
- (BOOL)supportsCompetitions;
- (NSDate)timestampForMostRecentRelationshipEvent;
- (NSString)description;
- (NSString)secureCloudZoneName;
- (id)codableRelationshipContainerIncludingCloudKitFields:(BOOL)fields;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fullDescription;
- (id)populateRecord:(id)record recordEncryptionType:(int64_t)type;
- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type;
- (id)relationshipSnapshotForDate:(id)date;
- (unint64_t)currentRelationshipEventAnchor;
- (void)_clearRelationshipState;
- (void)_setRelationshipEvents:(id)events;
- (void)_updateCurrentRelationshipState;
- (void)_updateDateActivityDataBecameVisibleWithDate:(id)date;
- (void)_updateDateFriendshipBeganWithDate:(id)date;
- (void)consolidateIfNeeded;
- (void)insertEvents:(id)events;
- (void)setRelationshipEvents:(id)events;
- (void)traverseRelationshipHistoryStartingAtEventWithAnchor:(unint64_t)anchor block:(id)block;
@end

@implementation ASRelationship

- (void)_updateCurrentRelationshipState
{
  v48 = *MEMORY[0x277D85DE8];
  [(ASRelationship *)self _clearRelationshipState];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = self->_relationshipEvents;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v43 + 1) + 8 * v7);
        type = [v8 type];
        if (type <= 199)
        {
          if (type > 99)
          {
            if (type > 103)
            {
              switch(type)
              {
                case 'h':
LABEL_33:
                  [(ASRelationship *)self _clearRelationshipState];
                  timestamp = [v8 timestamp];
                  dateForLatestRelationshipEnd = self->_dateForLatestRelationshipEnd;
                  self->_dateForLatestRelationshipEnd = timestamp;
LABEL_64:

                  break;
                case 'i':
                  self->_hasIncomingCompetitionRequest = 1;
                  self->_hasCompletedCompetition = 0;
                  self->_hasIgnoredCompetitionRequest = 0;
                  timestamp2 = [v8 timestamp];
                  dateForLatestRelationshipEnd = self->_dateForLatestIncomingCompetitionRequest;
                  self->_dateForLatestIncomingCompetitionRequest = timestamp2;
                  goto LABEL_64;
                case 'j':
LABEL_25:
                  *&self->_isAwaitingCompetitionResponse = 256;
                  break;
              }
            }

            else
            {
              switch(type)
              {
                case 'd':
                  goto LABEL_34;
                case 'f':
LABEL_32:
                  [(ASRelationship *)self _clearRelationshipState];
                  break;
                case 'g':
                  self->_isFriendshipActive = 1;
                  *&self->_hasIncomingInviteRequest = 0;
                  timestamp3 = [v8 timestamp];
                  dateForLatestFriendshipDidBegin = self->_dateForLatestFriendshipDidBegin;
                  self->_dateForLatestFriendshipDidBegin = timestamp3;

                  timestamp4 = [v8 timestamp];
                  [(ASRelationship *)self _updateDateFriendshipBeganWithDate:timestamp4];

LABEL_43:
                  timestamp5 = [v8 timestamp];
                  [(ASRelationship *)self _updateDateActivityDataBecameVisibleWithDate:timestamp5];

                  break;
              }
            }
          }

          else
          {
            switch(type)
            {
              case 1:
LABEL_12:
                timestamp6 = [v8 timestamp];
                dateForLatestInviteRequestEvent = self->_dateForLatestInviteRequestEvent;
                self->_dateForLatestInviteRequestEvent = timestamp6;

                self->_hasOutgoingInviteRequest = 1;
                timestamp7 = [v8 timestamp];
                dateForLatestOutgoingInviteRequest = self->_dateForLatestOutgoingInviteRequest;
                self->_dateForLatestOutgoingInviteRequest = timestamp7;

                goto LABEL_43;
              case 2:
                *&self->_isAwaitingInviteResponse = 256;
                goto LABEL_43;
              case 3:
                goto LABEL_32;
              case 4:
                goto LABEL_33;
              case 5:
                self->_isHidingActivityData = 1;
                timestamp8 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestDataHidden;
                self->_dateForLatestDataHidden = timestamp8;
                goto LABEL_64;
              case 6:
                self->_isHidingActivityData = 0;
                break;
              case 7:
                self->_hasIncomingInviteRequest = 0;
                self->_isAwaitingInviteResponse = 0;
                break;
              case 8:
                self->_isMuteEnabled = 1;
                break;
              case 9:
                self->_isMuteEnabled = 0;
                break;
              case 10:
                self->_hasOutgoingCompetitionRequest = 1;
                self->_isAwaitingCompetitionResponse = 1;
                self->_hasCompletedCompetition = 0;
                timestamp9 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestOutgoingCompetitionRequest;
                self->_dateForLatestOutgoingCompetitionRequest = timestamp9;
                goto LABEL_64;
              case 11:
                goto LABEL_25;
              case 12:
                self->_hasIncomingCompetitionRequest = 0;
                self->_hasIgnoredCompetitionRequest = 1;
                timestamp10 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestIgnoredCompetitionRequest;
                self->_dateForLatestIgnoredCompetitionRequest = timestamp10;
                goto LABEL_64;
              case 14:
                *&self->_hasIncomingCompetitionRequest = 0;
                self->_hasCompletedCompetition = 1;
                *&self->_isAwaitingCompetitionResponse = 0;
                dateForLatestOutgoingCompetitionRequest = self->_dateForLatestOutgoingCompetitionRequest;
                self->_dateForLatestOutgoingCompetitionRequest = 0;

                dateForLatestRelationshipEnd = self->_dateForLatestIncomingCompetitionRequest;
                self->_dateForLatestIncomingCompetitionRequest = 0;
                goto LABEL_64;
              case 15:
                timestamp11 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestSupportedFeaturesUpdate;
                self->_dateForLatestSupportedFeaturesUpdate = timestamp11;
                goto LABEL_64;
              default:
                break;
            }
          }
        }

        else if (type > 299)
        {
          if (type <= 302)
          {
            if (type == 300)
            {
LABEL_34:
              timestamp12 = [v8 timestamp];
              v22 = self->_dateForLatestInviteRequestEvent;
              self->_dateForLatestInviteRequestEvent = timestamp12;

              self->_hasIncomingInviteRequest = 1;
              timestamp13 = [v8 timestamp];
              dateForLatestIncomingInviteRequest = self->_dateForLatestIncomingInviteRequest;
              self->_dateForLatestIncomingInviteRequest = timestamp13;

              self->_isAwaitingInviteResponse = 1;
              goto LABEL_65;
            }

            if (type == 301)
            {
              self->_secureCloudUpgradeFailed = 0;
              self->_hasIncomingSecureCloudUpgradeRequest = 1;
              timestamp14 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestIncomingUpgradeRequest;
              self->_dateForLatestIncomingUpgradeRequest = timestamp14;
            }

            else
            {
LABEL_28:
              *&self->_hasOutgoingSecureCloudUpgradeRequest = 0x1000000;
              timestamp15 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeFailure;
              self->_dateForLatestUpgradeFailure = timestamp15;
            }

            goto LABEL_64;
          }

          if (type <= 304)
          {
            if (type == 303)
            {
              *&self->_hasOutgoingSecureCloudUpgradeRequest = 0x10000;
              timestamp16 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeCompleted;
              self->_dateForLatestUpgradeCompleted = timestamp16;
            }

            else
            {
              self->_secureCloudDowngradeAcknowledged = 0;
              self->_secureCloudDowngradeCompleted = 0;
              *&self->_secureCloudMigrationAvailable = 0x10000;
              timestamp17 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationCompleted;
              self->_dateForLatestMigrationCompleted = timestamp17;
            }

            goto LABEL_64;
          }

          if (type == 305)
          {
            self->_secureCloudMigrationAvailable = 0;
            *&self->_secureCloudMigrationCompleted = 0;
            *&self->_secureCloudDowngradeStarted = 0;
            self->_secureCloudDowngradeCompleted = 1;
            timestamp18 = [v8 timestamp];
            dateForLatestRelationshipEnd = self->_dateForLatestDowngradeCompleted;
            self->_dateForLatestDowngradeCompleted = timestamp18;
            goto LABEL_64;
          }

          if (type == 306)
          {
            self->_hasIncomingSecureCloudRepairRequest = 1;
          }
        }

        else
        {
          switch(type)
          {
            case 200:
              goto LABEL_12;
            case 201:
              self->_secureCloudUpgradeAvailable = 1;
              goto LABEL_56;
            case 202:
              self->_secureCloudUpgradeAvailable = 0;
LABEL_56:
              timestamp19 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeAvailableUnavailableChange;
              self->_dateForLatestUpgradeAvailableUnavailableChange = timestamp19;
              goto LABEL_64;
            case 203:
              self->_secureCloudUpgradeFailed = 0;
              self->_hasOutgoingSecureCloudUpgradeRequest = 1;
              timestamp20 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestOutgoingUpgradeRequest;
              self->_dateForLatestOutgoingUpgradeRequest = timestamp20;
              goto LABEL_64;
            case 204:
              goto LABEL_28;
            case 205:
              *&self->_secureCloudMigrationAvailable = 1;
              self->_secureCloudDowngradeAcknowledged = 0;
              break;
            case 206:
              *&self->_secureCloudMigrationStarted = 1;
              self->_secureCloudDowngradeCompleted = 0;
              timestamp21 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationStarted;
              self->_dateForLatestMigrationStarted = timestamp21;
              goto LABEL_64;
            case 207:
              *&self->_secureCloudMigrationStarted = 0;
              timestamp22 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationFailed;
              self->_dateForLatestMigrationFailed = timestamp22;
              goto LABEL_64;
            case 208:
              self->_secureCloudMigrationAvailable = 0;
              self->_secureCloudDowngradeRequested = 1;
              break;
            case 209:
              *&self->_secureCloudDowngradeStarted = 1;
              goto LABEL_69;
            case 210:
              *&self->_secureCloudDowngradeStarted = 256;
LABEL_69:
              self->_secureCloudDowngradeCompleted = 0;
              break;
            case 211:
              self->_secureCloudDowngradeNeedsAcknowledgement = 1;
              timestamp23 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestDowngradeNeedsAcknowledgement;
              self->_dateForLatestDowngradeNeedsAcknowledgement = timestamp23;
              goto LABEL_64;
            case 212:
              *&self->_secureCloudDowngradeNeedsAcknowledgement = 256;
              break;
            case 213:
              *&self->_secureCloudDowngradeNeedsAcknowledgement = 0;
              break;
            case 214:
              self->_secureCloudNeedsZoneDeletion = 1;
              break;
            case 215:
              *&self->_secureCloudNeedsZoneDeletion = 256;
              break;
            case 216:
              self->_hasOutgoingSecureCloudRepairRequest = 1;
              timestamp24 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestRepairRequest;
              self->_dateForLatestRepairRequest = timestamp24;
              goto LABEL_64;
            case 217:
              self->_secureCloudRepairFailed = 1;
              *&self->_hasOutgoingSecureCloudRepairRequest = 0;
              break;
            case 218:
              *&self->_secureCloudNeedsRepair = 0;
              break;
            default:
              break;
          }
        }

LABEL_65:
        ++v7;
      }

      while (v5 != v7);
      v41 = [(NSArray *)v3 countByEnumeratingWithState:&v43 objects:v47 count:16];
      v5 = v41;
    }

    while (v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_clearRelationshipState
{
  self->_isHidingActivityData = 0;
  *&self->_isFriendshipActive = 0;
  *&self->_hasOutgoingCompetitionRequest = 0;
  dateForLatestOutgoingInviteRequest = self->_dateForLatestOutgoingInviteRequest;
  self->_dateForLatestOutgoingInviteRequest = 0;

  dateForLatestDataHidden = self->_dateForLatestDataHidden;
  self->_dateForLatestDataHidden = 0;

  dateForLatestRelationshipStart = self->_dateForLatestRelationshipStart;
  self->_dateForLatestRelationshipStart = 0;

  dateForLatestRelationshipEnd = self->_dateForLatestRelationshipEnd;
  self->_dateForLatestRelationshipEnd = 0;

  dateForLatestSupportedFeaturesUpdate = self->_dateForLatestSupportedFeaturesUpdate;
  self->_dateForLatestSupportedFeaturesUpdate = 0;

  dateActivityDataInitiallyBecameVisible = self->_dateActivityDataInitiallyBecameVisible;
  self->_dateActivityDataInitiallyBecameVisible = 0;

  dateForLatestIncomingCompetitionRequest = self->_dateForLatestIncomingCompetitionRequest;
  self->_dateForLatestIncomingCompetitionRequest = 0;

  dateForLatestOutgoingCompetitionRequest = self->_dateForLatestOutgoingCompetitionRequest;
  self->_dateForLatestOutgoingCompetitionRequest = 0;

  dateForLatestIgnoredCompetitionRequest = self->_dateForLatestIgnoredCompetitionRequest;
  self->_dateForLatestIgnoredCompetitionRequest = 0;

  dateForLatestFriendshipDidBegin = self->_dateForLatestFriendshipDidBegin;
  self->_dateForLatestFriendshipDidBegin = 0;

  *&self->_secureCloudUpgradeAvailable = 0;
  *&self->_secureCloudDowngradeRequested = 0;
  *&self->_secureCloudNeedsRepair = 0;
  dateForLatestUpgradeCompleted = self->_dateForLatestUpgradeCompleted;
  self->_dateForLatestUpgradeCompleted = 0;

  dateForLatestUpgradeAvailableUnavailableChange = self->_dateForLatestUpgradeAvailableUnavailableChange;
  self->_dateForLatestUpgradeAvailableUnavailableChange = 0;

  dateForLatestUpgradeFailure = self->_dateForLatestUpgradeFailure;
  self->_dateForLatestUpgradeFailure = 0;

  dateForLatestOutgoingUpgradeRequest = self->_dateForLatestOutgoingUpgradeRequest;
  self->_dateForLatestOutgoingUpgradeRequest = 0;

  dateForLatestIncomingUpgradeRequest = self->_dateForLatestIncomingUpgradeRequest;
  self->_dateForLatestIncomingUpgradeRequest = 0;

  dateForLatestMigrationStarted = self->_dateForLatestMigrationStarted;
  self->_dateForLatestMigrationStarted = 0;

  dateForLatestMigrationCompleted = self->_dateForLatestMigrationCompleted;
  self->_dateForLatestMigrationCompleted = 0;

  dateForLatestMigrationFailed = self->_dateForLatestMigrationFailed;
  self->_dateForLatestMigrationFailed = 0;

  dateForLatestInviteRequestEvent = self->_dateForLatestInviteRequestEvent;
  self->_dateForLatestInviteRequestEvent = 0;

  dateForLatestRepairRequest = self->_dateForLatestRepairRequest;
  self->_dateForLatestRepairRequest = 0;

  dateForLatestDowngradeCompleted = self->_dateForLatestDowngradeCompleted;
  self->_dateForLatestDowngradeCompleted = 0;

  dateForLatestDowngradeNeedsAcknowledgement = self->_dateForLatestDowngradeNeedsAcknowledgement;
  self->_dateForLatestDowngradeNeedsAcknowledgement = 0;
}

- (ASRelationship)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ASRelationship *)self initWithIdentifier:uUID cloudType:0];

  return v4;
}

- (unint64_t)currentRelationshipEventAnchor
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_relationshipEvents;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        anchor = [*(*(&v11 + 1) + 8 * i) anchor];
        if (v5 <= anchor)
        {
          v5 = anchor;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (NSString)description
{
  v3 = _MostRecentEventsWithCount(self->_relationshipEvents, 0xFuLL);
  v4 = MEMORY[0x277CCACA8];
  v13 = *&self->_version;
  cloudKitAddress = self->_cloudKitAddress;
  preferredReachableAddress = self->_preferredReachableAddress;
  supportedPhoneFeatures = self->_supportedPhoneFeatures;
  supportedWatchFeatures = self->_supportedWatchFeatures;
  recordChangeTag = [(CKRecord *)self->_systemFieldsOnlyRecord recordChangeTag];
  v10 = NSStringFromASCloudType(self->_cloudType);
  v11 = [v4 stringWithFormat:@"Relationship v%ld uuid=%@ cloudKitAddress=[%@], preferredAddress=[%@], supportedFeatures=[iOS:%d, wOS:%d] recent events=%@, etag=%@, cloud type=%@", v13, cloudKitAddress, preferredReachableAddress, supportedPhoneFeatures, supportedWatchFeatures, v3, recordChangeTag, v10];

  return v11;
}

- (id)recordWithZoneID:(id)d recordEncryptionType:(int64_t)type
{
  dCopy = d;
  systemFieldsOnlyRecord = [(ASRelationship *)self systemFieldsOnlyRecord];
  v8 = systemFieldsOnlyRecord;
  if (!systemFieldsOnlyRecord || ([systemFieldsOnlyRecord recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", dCopy), v10, v9, (v11 & 1) == 0))
  {
    if (ASSecureCloudEnabled())
    {
      v12 = objc_alloc(MEMORY[0x277CBC5D0]);
      uUID = [(ASRelationship *)self UUID];
      uUIDString = [uUID UUIDString];
      v15 = [v12 initWithRecordName:uUIDString zoneID:dCopy];

      v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingRelationship" recordID:v15];
      v8 = v15;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingRelationship" zoneID:dCopy];
    }

    v8 = v16;
  }

  v17 = [(ASRelationship *)self populateRecord:v8 recordEncryptionType:type];

  return v17;
}

- (id)populateRecord:(id)record recordEncryptionType:(int64_t)type
{
  recordCopy = record;
  _ASUpdateSchemaVersionOnRecord(3, recordCopy, type);
  remoteActivityDataShareID = [(ASRelationship *)self remoteActivityDataShareID];
  if (remoteActivityDataShareID)
  {
    v8 = remoteActivityDataShareID;
    cloudType = [(ASRelationship *)self cloudType];

    if (!cloudType)
    {
      v10 = objc_alloc(MEMORY[0x277CBC620]);
      remoteActivityDataShareID2 = [(ASRelationship *)self remoteActivityDataShareID];
      v12 = [v10 initWithRecordID:remoteActivityDataShareID2 action:0];
      [recordCopy setObject:v12 forKeyedSubscript:@"RemoteActivityDataShareReference"];
    }
  }

  remoteRelationshipShareID = [(ASRelationship *)self remoteRelationshipShareID];
  if (remoteRelationshipShareID)
  {
    v14 = remoteRelationshipShareID;
    cloudType2 = [(ASRelationship *)self cloudType];

    if (!cloudType2)
    {
      v16 = objc_alloc(MEMORY[0x277CBC620]);
      remoteRelationshipShareID2 = [(ASRelationship *)self remoteRelationshipShareID];
      v18 = [v16 initWithRecordID:remoteRelationshipShareID2 action:0];
      [recordCopy setObject:v18 forKeyedSubscript:@"RemoteRelationshipShareReference"];
    }
  }

  if (ASSecureCloudEnabled())
  {
    remoteRelationshipZoneShareID = [(ASRelationship *)self remoteRelationshipZoneShareID];
    if (remoteRelationshipZoneShareID)
    {
      v20 = remoteRelationshipZoneShareID;
      cloudType3 = [(ASRelationship *)self cloudType];

      if (cloudType3 == 1)
      {
        v22 = objc_alloc(MEMORY[0x277CBC620]);
        remoteRelationshipZoneShareID2 = [(ASRelationship *)self remoteRelationshipZoneShareID];
        v24 = [v22 initWithRecordID:remoteRelationshipZoneShareID2 action:0];
        [recordCopy setObject:v24 forKeyedSubscript:@"RemoteRelationshipZoneShareReference"];
      }
    }
  }

  codableRelationship = [(ASRelationship *)self codableRelationship];
  data = [codableRelationship data];
  encryptedValues = [recordCopy encryptedValues];
  [encryptedValues setObject:data forKeyedSubscript:@"EncryptedData"];

  return recordCopy;
}

- (ASCodableCloudKitRelationship)codableRelationship
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ASCodableCloudKitRelationship);
  uUID = [(ASRelationship *)self UUID];
  hk_dataForUUIDBytes = [uUID hk_dataForUUIDBytes];
  [(ASCodableCloudKitRelationship *)v3 setUuid:hk_dataForUUIDBytes];

  incomingHandshakeToken = [(ASRelationship *)self incomingHandshakeToken];
  [(ASCodableCloudKitRelationship *)v3 setIncomingHandshakeToken:incomingHandshakeToken];

  outgoingHandshakeToken = [(ASRelationship *)self outgoingHandshakeToken];
  [(ASCodableCloudKitRelationship *)v3 setOutgoingHandshakeToken:outgoingHandshakeToken];

  cloudKitAddress = [(ASRelationship *)self cloudKitAddress];
  [(ASCodableCloudKitRelationship *)v3 setCloudKitAddress:cloudKitAddress];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  addresses = [(ASRelationship *)self addresses];
  v10 = [addresses countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(addresses);
        }

        [(ASCodableCloudKitRelationship *)v3 addAddresses:*(*(&v38 + 1) + 8 * i)];
      }

      v11 = [addresses countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  preferredReachableAddress = [(ASRelationship *)self preferredReachableAddress];
  [(ASCodableCloudKitRelationship *)v3 setPreferredReachableAddress:preferredReachableAddress];

  preferredReachableService = [(ASRelationship *)self preferredReachableService];
  [(ASCodableCloudKitRelationship *)v3 setPreferredReachableService:preferredReachableService];

  relationshipEvents = [(ASRelationship *)self relationshipEvents];
  -[ASCodableCloudKitRelationship setEventCount:](v3, "setEventCount:", [relationshipEvents count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  relationshipEvents2 = [(ASRelationship *)self relationshipEvents];
  v18 = [relationshipEvents2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(relationshipEvents2);
        }

        _codableRelationshipEvent = [*(*(&v34 + 1) + 8 * j) _codableRelationshipEvent];
        [(ASCodableCloudKitRelationship *)v3 addEvents:_codableRelationshipEvent];
      }

      v19 = [relationshipEvents2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v19);
  }

  [(ASCodableCloudKitRelationship *)v3 setSupportedPhoneFeatures:[(ASRelationship *)self supportedPhoneFeatures]];
  [(ASCodableCloudKitRelationship *)v3 setSupportedWatchFeatures:[(ASRelationship *)self supportedWatchFeatures]];
  [(ASCodableCloudKitRelationship *)v3 setCloudType:[(ASRelationship *)self cloudType]];
  secureCloudUpgradeToken = [(ASRelationship *)self secureCloudUpgradeToken];
  [(ASCodableCloudKitRelationship *)v3 setSecureCloudUpgradeToken:secureCloudUpgradeToken];

  sentInvitation = [(ASRelationship *)self sentInvitation];

  if (sentInvitation)
  {
    v25 = MEMORY[0x277CCAAB0];
    sentInvitation2 = [(ASRelationship *)self sentInvitation];
    v27 = [v25 archivedDataWithRootObject:sentInvitation2 requiringSecureCoding:1 error:0];
    [(ASCodableCloudKitRelationship *)v3 setSentInvitation:v27];
  }

  receivedInvitation = [(ASRelationship *)self receivedInvitation];

  if (receivedInvitation)
  {
    v29 = MEMORY[0x277CCAAB0];
    receivedInvitation2 = [(ASRelationship *)self receivedInvitation];
    v31 = [v29 archivedDataWithRootObject:receivedInvitation2 requiringSecureCoding:1 error:0];
    [(ASCodableCloudKitRelationship *)v3 setReceivedInvitation:v31];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)_relationshipWithRecord:(id)record relationshipEventRecords:(id)records completion:(id)completion
{
  v87 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordsCopy = records;
  completionCopy = completion;
  v10 = _ASCloudKitSchemaVersionForRecord(recordCopy);
  if ((v10 - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    encryptedValues = [recordCopy encryptedValues];
    v12 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v75 = [[ASCodableCloudKitRelationship alloc] initWithData:v13];
      v14 = [ASRelationship relationshipWithCodableRelationship:"relationshipWithCodableRelationship:version:" version:?];
      v15 = [recordCopy objectForKeyedSubscript:@"RemoteActivityDataShareReference"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v73 = v16;
      recordID = [v16 recordID];
      [v14 setRemoteActivityDataShareID:recordID];

      v18 = [recordCopy objectForKeyedSubscript:@"RemoteRelationshipShareReference"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v72 = v19;
      recordID2 = [v19 recordID];
      [v14 setRemoteRelationshipShareID:recordID2];

      share = [recordCopy share];
      recordID3 = [share recordID];
      v23 = v14;
      v24 = recordID3;
      v76 = v23;
      [v23 setRelationshipShareID:recordID3];

      if (ASSecureCloudEnabled())
      {
        v25 = [recordCopy objectForKeyedSubscript:@"RelationshipZoneShareReference"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = v13;

        recordID4 = [v26 recordID];
        [v76 setRelationshipZoneShareID:recordID4];

        v29 = [recordCopy objectForKeyedSubscript:@"RemoteRelationshipZoneShareReference"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        recordID5 = [v30 recordID];
        [v76 setRemoteRelationshipZoneShareID:recordID5];

        v13 = v27;
      }

      v32 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [recordCopy encodeSystemFieldsWithCoder:v32];
      [v32 finishEncoding];
      v33 = objc_alloc(MEMORY[0x277CCAAC8]);
      v71 = v32;
      encodedData = [v32 encodedData];
      v85 = 0;
      v35 = [v33 initForReadingFromData:encodedData error:&v85];
      v36 = v85;

      v74 = v36;
      if (v36)
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
        }
      }

      v70 = v35;
      v37 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithCoder:v35];
      [v76 setSystemFieldsOnlyRecord:v37];

      v38 = v75;
      eventCount = [(ASCodableCloudKitRelationship *)v75 eventCount];
      if (v10 == 3)
      {
        relationshipEvents = [v76 relationshipEvents];
        v41 = [relationshipEvents count];

        v42 = eventCount == v41;
        v43 = v76;
        v45 = v72;
        v44 = v73;
        if (!v42)
        {
          ASLoggingInitialize();
          v46 = ASLogCloudKit;
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            [ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:v46 relationshipEventRecords:v76 completion:?];
          }
        }

        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = __101__ASRelationship_CloudKitCodingSupport___relationshipWithRecord_relationshipEventRecords_completion___block_invoke;
        v83[3] = &unk_278C461B0;
        v84 = recordCopy;
        v47 = [recordsCopy objectsPassingTest:v83];
        completionCopy[2](completionCopy, v76, v47);

        v48 = v84;
      }

      else
      {
        v66 = v13;
        v78 = [MEMORY[0x277CBEB98] set];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v68 = recordsCopy;
        obj = recordsCopy;
        v49 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
        v67 = completionCopy;
        v69 = eventCount;
        if (v49)
        {
          v50 = v49;
          v51 = *v80;
          v48 = MEMORY[0x277CBEBF8];
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v80 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v53 = *(*(&v79 + 1) + 8 * i);
              parent = [v53 parent];
              recordID6 = [parent recordID];
              v56 = recordCopy;
              recordID7 = [recordCopy recordID];
              v58 = [recordID6 isEqual:recordID7];

              if (v58)
              {
                v59 = [ASRelationshipEvent relationshipEventWithRecord:v53];
                v60 = [v48 arrayByAddingObject:v59];

                v61 = [v78 setByAddingObject:v53];

                v78 = v61;
                v48 = v60;
              }

              recordCopy = v56;
            }

            v50 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
          }

          while (v50);
        }

        else
        {
          v48 = MEMORY[0x277CBEBF8];
        }

        [v76 setRelationshipEvents:v48];
        relationshipEvents2 = [v76 relationshipEvents];
        v63 = [relationshipEvents2 count];

        if (v69 != v63)
        {
          ASLoggingInitialize();
          v64 = ASLogCloudKit;
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            [ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:v64 relationshipEventRecords:v76 completion:?];
          }
        }

        completionCopy = v67;
        v67[2](v67, v76, v78);

        recordsCopy = v68;
        v13 = v66;
        v38 = v75;
        v43 = v76;
        v45 = v72;
        v44 = v73;
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
      }

      completionCopy[2](completionCopy, 0, recordsCopy);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
    }

    completionCopy[2](completionCopy, 0, recordsCopy);
  }

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __101__ASRelationship_CloudKitCodingSupport___relationshipWithRecord_relationshipEventRecords_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 parent];
  v4 = [v3 recordID];
  v5 = [*(a1 + 32) recordID];
  v6 = [v4 isEqual:v5];

  return v6;
}

+ (id)relationshipWithCodableRelationship:(id)relationship version:(int64_t)version
{
  v45 = *MEMORY[0x277D85DE8];
  relationshipCopy = relationship;
  v6 = objc_alloc_init(ASRelationship);
  [(ASRelationship *)v6 setVersion:version];
  v7 = MEMORY[0x277CCAD78];
  uuid = [relationshipCopy uuid];
  v9 = [v7 hk_UUIDWithData:uuid];
  [(ASRelationship *)v6 setUUID:v9];

  incomingHandshakeToken = [relationshipCopy incomingHandshakeToken];
  [(ASRelationship *)v6 setIncomingHandshakeToken:incomingHandshakeToken];

  outgoingHandshakeToken = [relationshipCopy outgoingHandshakeToken];
  [(ASRelationship *)v6 setOutgoingHandshakeToken:outgoingHandshakeToken];

  cloudKitAddress = [relationshipCopy cloudKitAddress];
  [(ASRelationship *)v6 setCloudKitAddress:cloudKitAddress];

  addresses = [relationshipCopy addresses];
  v14 = ASConsolidateAddresses(addresses);
  [(ASRelationship *)v6 setAddresses:v14];

  preferredReachableAddress = [relationshipCopy preferredReachableAddress];
  [(ASRelationship *)v6 setPreferredReachableAddress:preferredReachableAddress];

  preferredReachableService = [relationshipCopy preferredReachableService];
  v37 = v6;
  [(ASRelationship *)v6 setPreferredReachableService:preferredReachableService];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  events = [relationshipCopy events];
  v18 = [events countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    v21 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(events);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
          v25 = [ASRelationshipEvent _relationshipEventWithCodable:v24];
          v26 = [v21 arrayByAddingObject:v25];

          v21 = v26;
        }

        else
        {
          ASLoggingInitialize();
          v27 = ASLogCloudKit;
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            [(ASRelationship(CloudKitCodingSupport) *)v42 relationshipWithCodableRelationship:v27 version:v23, &v43];
          }
        }
      }

      v19 = [events countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  [(ASRelationship *)v37 setRelationshipEvents:v21];
  -[ASRelationship setSupportedPhoneFeatures:](v37, "setSupportedPhoneFeatures:", [relationshipCopy supportedPhoneFeatures]);
  -[ASRelationship setSupportedWatchFeatures:](v37, "setSupportedWatchFeatures:", [relationshipCopy supportedWatchFeatures]);
  -[ASRelationship setCloudType:](v37, "setCloudType:", [relationshipCopy cloudType]);
  secureCloudUpgradeToken = [relationshipCopy secureCloudUpgradeToken];
  [(ASRelationship *)v37 setSecureCloudUpgradeToken:secureCloudUpgradeToken];

  v29 = objc_opt_class();
  sentInvitation = [relationshipCopy sentInvitation];
  v31 = ASSecureUnarchiveClassWithData(v29, sentInvitation);
  [(ASRelationship *)v37 setSentInvitation:v31];

  v32 = objc_opt_class();
  receivedInvitation = [relationshipCopy receivedInvitation];
  v34 = ASSecureUnarchiveClassWithData(v32, receivedInvitation);
  [(ASRelationship *)v37 setReceivedInvitation:v34];

  [(ASRelationship *)v37 consolidateIfNeeded];
  v35 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)relationshipsWithRelationshipAndEventRecords:(id)records
{
  v26 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = [recordsCopy objectsPassingTest:&__block_literal_global];
  v17 = [recordsCopy objectsPassingTest:&__block_literal_global_464];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __86__ASRelationship_CloudKitCodingSupport__relationshipsWithRelationshipAndEventRecords___block_invoke_3;
        v18[3] = &unk_278C461F8;
        v19 = v5;
        v20 = array;
        [ASRelationship _relationshipWithRecord:v11 relationshipEventRecords:v17 completion:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [v17 mutableCopy];
  [v12 removeObjectsInArray:array];
  if ([v12 count])
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASRelationship(CloudKitCodingSupport) relationshipsWithRelationshipAndEventRecords:];
    }
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __86__ASRelationship_CloudKitCodingSupport__relationshipsWithRelationshipAndEventRecords___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"ActivitySharingRelationship"];

  return v3;
}

uint64_t __86__ASRelationship_CloudKitCodingSupport__relationshipsWithRelationshipAndEventRecords___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"ActivitySharingRelationshipEvent"];

  return v3;
}

void __86__ASRelationship_CloudKitCodingSupport__relationshipsWithRelationshipAndEventRecords___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v5 = *(a1 + 40);
  v6 = [v7 allObjects];
  [v5 addObjectsFromArray:v6];
}

- (id)codableRelationshipContainerIncludingCloudKitFields:(BOOL)fields
{
  fieldsCopy = fields;
  v5 = objc_alloc_init(ASCodableRelationshipContainer);
  codableRelationship = [(ASRelationship *)self codableRelationship];
  [(ASCodableRelationshipContainer *)v5 setRelationship:codableRelationship];

  [(ASCodableRelationshipContainer *)v5 setVersion:[(ASRelationship *)self version]];
  if (fieldsCopy)
  {
    systemFieldsOnlyRecord = [(ASRelationship *)self systemFieldsOnlyRecord];

    if (systemFieldsOnlyRecord)
    {
      v8 = MEMORY[0x277CCAAB0];
      systemFieldsOnlyRecord2 = [(ASRelationship *)self systemFieldsOnlyRecord];
      v10 = [v8 archivedDataWithRootObject:systemFieldsOnlyRecord2 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setSystemFieldsOnlyRecord:v10];
    }

    relationshipShareID = [(ASRelationship *)self relationshipShareID];

    if (relationshipShareID)
    {
      v12 = MEMORY[0x277CCAAB0];
      relationshipShareID2 = [(ASRelationship *)self relationshipShareID];
      v14 = [v12 archivedDataWithRootObject:relationshipShareID2 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRelationshipShareID:v14];
    }

    remoteRelationshipShareID = [(ASRelationship *)self remoteRelationshipShareID];

    if (remoteRelationshipShareID)
    {
      v16 = MEMORY[0x277CCAAB0];
      remoteRelationshipShareID2 = [(ASRelationship *)self remoteRelationshipShareID];
      v18 = [v16 archivedDataWithRootObject:remoteRelationshipShareID2 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRemoteRelationshipShareID:v18];
    }

    remoteActivityDataShareID = [(ASRelationship *)self remoteActivityDataShareID];

    if (remoteActivityDataShareID)
    {
      v20 = MEMORY[0x277CCAAB0];
      remoteActivityDataShareID2 = [(ASRelationship *)self remoteActivityDataShareID];
      v22 = [v20 archivedDataWithRootObject:remoteActivityDataShareID2 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRemoteActivityShareID:v22];
    }

    if (ASSecureCloudEnabled() && fieldsCopy)
    {
      relationshipZoneShareID = [(ASRelationship *)self relationshipZoneShareID];

      if (relationshipZoneShareID)
      {
        v24 = MEMORY[0x277CCAAB0];
        relationshipZoneShareID2 = [(ASRelationship *)self relationshipZoneShareID];
        v26 = [v24 archivedDataWithRootObject:relationshipZoneShareID2 requiringSecureCoding:1 error:0];
        [(ASCodableRelationshipContainer *)v5 setRelationshipZoneShareID:v26];
      }

      remoteRelationshipZoneShareID = [(ASRelationship *)self remoteRelationshipZoneShareID];

      if (remoteRelationshipZoneShareID)
      {
        v28 = MEMORY[0x277CCAAB0];
        remoteRelationshipZoneShareID2 = [(ASRelationship *)self remoteRelationshipZoneShareID];
        v30 = [v28 archivedDataWithRootObject:remoteRelationshipZoneShareID2 requiringSecureCoding:1 error:0];
        [(ASCodableRelationshipContainer *)v5 setRemoteRelationshipZoneShareID:v30];
      }
    }
  }

  else
  {
    ASSecureCloudEnabled();
  }

  return v5;
}

+ (id)relationshipWithCodableRelationshipContainer:(id)container
{
  containerCopy = container;
  relationship = [containerCopy relationship];
  v5 = +[ASRelationship relationshipWithCodableRelationship:version:](ASRelationship, "relationshipWithCodableRelationship:version:", relationship, [containerCopy version]);
  v6 = objc_opt_class();
  systemFieldsOnlyRecord = [containerCopy systemFieldsOnlyRecord];
  v8 = ASSecureUnarchiveClassWithDataAndStrictness(v6, systemFieldsOnlyRecord, 0);
  [v5 setSystemFieldsOnlyRecord:v8];

  v9 = objc_opt_class();
  relationshipShareID = [containerCopy relationshipShareID];
  v11 = ASSecureUnarchiveClassWithDataAndStrictness(v9, relationshipShareID, 0);
  [v5 setRelationshipShareID:v11];

  v12 = objc_opt_class();
  remoteRelationshipShareID = [containerCopy remoteRelationshipShareID];
  v14 = ASSecureUnarchiveClassWithDataAndStrictness(v12, remoteRelationshipShareID, 0);
  [v5 setRemoteRelationshipShareID:v14];

  v15 = objc_opt_class();
  remoteActivityShareID = [containerCopy remoteActivityShareID];
  v17 = ASSecureUnarchiveClassWithDataAndStrictness(v15, remoteActivityShareID, 0);
  [v5 setRemoteActivityDataShareID:v17];

  if (ASSecureCloudEnabled())
  {
    v18 = objc_opt_class();
    relationshipZoneShareID = [containerCopy relationshipZoneShareID];
    v20 = ASSecureUnarchiveClassWithDataAndStrictness(v18, relationshipZoneShareID, 0);
    [v5 setRelationshipZoneShareID:v20];

    v21 = objc_opt_class();
    remoteRelationshipZoneShareID = [containerCopy remoteRelationshipZoneShareID];
    v23 = ASSecureUnarchiveClassWithDataAndStrictness(v21, remoteRelationshipZoneShareID, 0);
    [v5 setRemoteRelationshipZoneShareID:v23];
  }

  return v5;
}

- (ASRelationship)initWithIdentifier:(id)identifier cloudType:(unint64_t)type
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ASRelationship;
  v8 = [(ASRelationship *)&v12 init];
  v9 = v8;
  if (v8)
  {
    relationshipEvents = v8->_relationshipEvents;
    v8->_relationshipEvents = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v9->_UUID, identifier);
    v9->_supportedPhoneFeatures = ASSupportedPhoneFeaturesForCurrentDevice();
    v9->_supportedWatchFeatures = ASSupportedWatchFeaturesForCurrentDevice();
    v9->_cloudType = type;
  }

  return v9;
}

- (NSString)secureCloudZoneName
{
  v2 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v4 = [v2 stringWithFormat:@"RelationshipZone-%@", uUIDString];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 56) = self->_version;
  objc_storeStrong((v5 + 64), self->_UUID);
  objc_storeStrong((v5 + 80), self->_outgoingHandshakeToken);
  objc_storeStrong((v5 + 72), self->_incomingHandshakeToken);
  objc_storeStrong((v5 + 88), self->_cloudKitAddress);
  v6 = [(NSSet *)self->_addresses copyWithZone:zone];
  v7 = *(v5 + 96);
  *(v5 + 96) = v6;

  objc_storeStrong((v5 + 104), self->_preferredReachableAddress);
  objc_storeStrong((v5 + 112), self->_preferredReachableService);
  objc_storeStrong((v5 + 120), self->_systemFieldsOnlyRecord);
  objc_storeStrong((v5 + 128), self->_relationshipShareID);
  objc_storeStrong((v5 + 136), self->_remoteRelationshipShareID);
  objc_storeStrong((v5 + 144), self->_remoteActivityDataShareID);
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_relationshipEvents copyItems:0];
  v9 = *(v5 + 152);
  *(v5 + 152) = v8;

  *(v5 + 44) = self->_supportedPhoneFeatures;
  *(v5 + 48) = self->_supportedWatchFeatures;
  *(v5 + 40) = self->_needsPushForConsolidation;
  *(v5 + 160) = self->_cloudType;
  objc_storeStrong((v5 + 168), self->_relationshipZoneShareID);
  objc_storeStrong((v5 + 176), self->_remoteRelationshipZoneShareID);
  objc_storeStrong((v5 + 200), self->_secureCloudUpgradeToken);
  objc_storeStrong((v5 + 184), self->_sentInvitation);
  objc_storeStrong((v5 + 192), self->_receivedInvitation);
  [v5 _updateCurrentRelationshipState];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASRelationship *)self isEqualToRelationship:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRelationship:(id)relationship
{
  relationshipCopy = relationship;
  version = self->_version;
  if (version == [relationshipCopy version] && (supportedPhoneFeatures = self->_supportedPhoneFeatures, supportedPhoneFeatures == objc_msgSend(relationshipCopy, "supportedPhoneFeatures")) && (supportedWatchFeatures = self->_supportedWatchFeatures, supportedWatchFeatures == objc_msgSend(relationshipCopy, "supportedWatchFeatures")))
  {
    UUID = self->_UUID;
    uUID = [relationshipCopy UUID];
    if (ASObjectsAreEqual(UUID, uUID))
    {
      incomingHandshakeToken = self->_incomingHandshakeToken;
      incomingHandshakeToken = [relationshipCopy incomingHandshakeToken];
      if (ASStringsAreEqual(incomingHandshakeToken, incomingHandshakeToken))
      {
        outgoingHandshakeToken = self->_outgoingHandshakeToken;
        outgoingHandshakeToken = [relationshipCopy outgoingHandshakeToken];
        if (ASStringsAreEqual(outgoingHandshakeToken, outgoingHandshakeToken))
        {
          cloudKitAddress = self->_cloudKitAddress;
          cloudKitAddress = [relationshipCopy cloudKitAddress];
          if (ASStringsAreEqual(cloudKitAddress, cloudKitAddress))
          {
            preferredReachableAddress = self->_preferredReachableAddress;
            preferredReachableAddress = [relationshipCopy preferredReachableAddress];
            if (ASStringsAreEqual(preferredReachableAddress, preferredReachableAddress))
            {
              preferredReachableService = self->_preferredReachableService;
              preferredReachableService = [relationshipCopy preferredReachableService];
              if (ASStringsAreEqual(preferredReachableService, preferredReachableService))
              {
                recordID = [(CKRecord *)self->_systemFieldsOnlyRecord recordID];
                systemFieldsOnlyRecord = [relationshipCopy systemFieldsOnlyRecord];
                recordID2 = [systemFieldsOnlyRecord recordID];
                if (ASObjectsAreEqual(recordID, recordID2))
                {
                  v43 = recordID;
                  relationshipShareID = self->_relationshipShareID;
                  relationshipShareID = [relationshipCopy relationshipShareID];
                  if (ASObjectsAreEqual(relationshipShareID, relationshipShareID))
                  {
                    remoteRelationshipShareID = self->_remoteRelationshipShareID;
                    remoteRelationshipShareID = [relationshipCopy remoteRelationshipShareID];
                    if (ASObjectsAreEqual(remoteRelationshipShareID, remoteRelationshipShareID))
                    {
                      remoteActivityDataShareID = self->_remoteActivityDataShareID;
                      remoteActivityDataShareID = [relationshipCopy remoteActivityDataShareID];
                      if (ASObjectsAreEqual(remoteActivityDataShareID, remoteActivityDataShareID))
                      {
                        relationshipEvents = self->_relationshipEvents;
                        relationshipEvents = [relationshipCopy relationshipEvents];
                        if (-[NSArray isEqualToArray:](relationshipEvents, "isEqualToArray:") && (cloudType = self->_cloudType, cloudType == [relationshipCopy cloudType]))
                        {
                          relationshipZoneShareID = self->_relationshipZoneShareID;
                          relationshipZoneShareID = [relationshipCopy relationshipZoneShareID];
                          if (ASObjectsAreEqual(relationshipZoneShareID, relationshipZoneShareID))
                          {
                            remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
                            remoteRelationshipZoneShareID = [relationshipCopy remoteRelationshipZoneShareID];
                            if (ASObjectsAreEqual(remoteRelationshipZoneShareID, remoteRelationshipZoneShareID))
                            {
                              secureCloudUpgradeToken = self->_secureCloudUpgradeToken;
                              secureCloudUpgradeToken = [relationshipCopy secureCloudUpgradeToken];
                              if (ASStringsAreEqual(secureCloudUpgradeToken, secureCloudUpgradeToken))
                              {
                                sentInvitation = self->_sentInvitation;
                                sentInvitation = [relationshipCopy sentInvitation];
                                if (ASObjectsAreEqual(sentInvitation, sentInvitation))
                                {
                                  receivedInvitation = self->_receivedInvitation;
                                  receivedInvitation = [relationshipCopy receivedInvitation];
                                  v33 = ASObjectsAreEqual(receivedInvitation, receivedInvitation);
                                }

                                else
                                {
                                  v33 = 0;
                                }
                              }

                              else
                              {
                                v33 = 0;
                              }
                            }

                            else
                            {
                              v33 = 0;
                            }
                          }

                          else
                          {
                            v33 = 0;
                          }
                        }

                        else
                        {
                          v33 = 0;
                        }

                        recordID = v43;
                      }

                      else
                      {
                        v33 = 0;
                        recordID = v43;
                      }
                    }

                    else
                    {
                      v33 = 0;
                      recordID = v43;
                    }
                  }

                  else
                  {
                    v33 = 0;
                    recordID = v43;
                  }
                }

                else
                {
                  v33 = 0;
                }
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)fullDescription
{
  v3 = _MostRecentEventsWithCount(self->_relationshipEvents, 0x19uLL);
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  cloudKitAddress = self->_cloudKitAddress;
  [v4 appendFormat:@"Relationship v%ld %@ (%@)\n", self->_version, cloudKitAddress, self->_UUID];
  [v4 appendFormat:@"CloudKit Address: %@\n", self->_cloudKitAddress];
  [v4 appendFormat:@"Preferred Reachable Address: %@\n", self->_preferredReachableAddress];
  [v4 appendFormat:@"Preferred Service Identifier: %@\n", self->_preferredReachableService];
  [v4 appendFormat:@"All Addresses: %@\n", self->_addresses];
  [v4 appendFormat:@"Incoming Handshake Token: %@\n", self->_incomingHandshakeToken];
  [v4 appendFormat:@"Outgoing Handshake Token: %@\n", self->_outgoingHandshakeToken];
  v6 = NSStringFromASCloudType(self->_cloudType);
  [v4 appendFormat:@"Cloud Type: %@\n", v6];

  [v4 appendFormat:@"Sent Invitation: %@\n", self->_sentInvitation];
  [v4 appendFormat:@"Received Invitation: %@\n", self->_receivedInvitation];
  recordID = [(CKRecord *)self->_systemFieldsOnlyRecord recordID];
  recordChangeTag = [(CKRecord *)self->_systemFieldsOnlyRecord recordChangeTag];
  [v4 appendFormat:@"Record: %@, etag %@\n", recordID, recordChangeTag];

  [v4 appendFormat:@"Remote Zone Share ID: %@\n", self->_remoteRelationshipZoneShareID];
  [v4 appendFormat:@"Events: %@\n", v3];
  v9 = [v4 copy];

  return v9;
}

- (BOOL)hasInviteRequestEvent
{
  if ([(ASRelationship *)self hasOutgoingInviteRequest])
  {
    return 1;
  }

  return [(ASRelationship *)self hasIncomingInviteRequest];
}

- (void)setRelationshipEvents:(id)events
{
  v4 = [events sortedArrayUsingComparator:&__block_literal_global_2];
  [(ASRelationship *)self _setRelationshipEvents:v4];
}

- (void)insertEvents:(id)events
{
  v12 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  ASLoggingInitialize();
  v5 = ASLogRelationships;
  if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = eventsCopy;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Inserting events: %{public}@", &v10, 0xCu);
  }

  v6 = [(NSArray *)self->_relationshipEvents arrayByAddingObjectsFromArray:eventsCopy];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_2];
  v8 = _ConsolidatedEvents(v7);
  [(ASRelationship *)self _setRelationshipEvents:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSDate)timestampForMostRecentRelationshipEvent
{
  v21 = *MEMORY[0x277D85DE8];
  firstObject = [(NSArray *)self->_relationshipEvents firstObject];
  timestamp = [firstObject timestamp];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_relationshipEvents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        timestamp2 = [v10 timestamp];
        v12 = [timestamp2 compare:timestamp];

        if (v12 == 1)
        {
          timestamp3 = [v10 timestamp];

          timestamp = timestamp3;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return timestamp;
}

- (id)relationshipSnapshotForDate:(id)date
{
  dateCopy = date;
  v5 = [(ASRelationship *)self copy];
  relationshipEvents = [v5 relationshipEvents];
  v7 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___EventsPriorToDate_block_invoke;
  v12[3] = &unk_278C463C8;
  v13 = dateCopy;
  v8 = dateCopy;
  v9 = [v7 predicateWithBlock:v12];
  v10 = [relationshipEvents filteredArrayUsingPredicate:v9];

  [v5 setRelationshipEvents:v10];

  return v5;
}

- (void)traverseRelationshipHistoryStartingAtEventWithAnchor:(unint64_t)anchor block:(id)block
{
  blockCopy = block;
  while (anchor <= [(ASRelationship *)self currentRelationshipEventAnchor])
  {
    v7 = [(ASRelationship *)self copy];
    relationshipEvents = self->_relationshipEvents;
    ++anchor;
    v9 = MEMORY[0x277CCAC30];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___EventsPriorToAnchor_block_invoke;
    v13[3] = &__block_descriptor_40_e46_B24__0__ASRelationshipEvent_8__NSDictionary_16l;
    v13[4] = anchor;
    v10 = relationshipEvents;
    v11 = [v9 predicateWithBlock:v13];
    v12 = [(NSArray *)v10 filteredArrayUsingPredicate:v11];

    [v7 setRelationshipEvents:v12];
    blockCopy[2](blockCopy, v7);
  }
}

- (BOOL)supportsCompetitions
{
  if (self->_supportedPhoneFeatures)
  {
    return 1;
  }

  else
  {
    return self->_supportedWatchFeatures & 1;
  }
}

- (void)consolidateIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = self->_relationshipEvents;
  if ([(NSArray *)v3 count]>= 0x32)
  {
    ASLoggingInitialize();
    v4 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_23E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Relationship needs consolidation %@", &v9, 0xCu);
    }

    v5 = _ConsolidatedEvents(v3);
    [(ASRelationship *)self _setRelationshipEvents:v5];
    v6 = [(NSArray *)v3 count];
    if ((v6 - [v5 count]) >= 0x15)
    {
      ASLoggingInitialize();
      v7 = ASLogRelationships;
      if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Relationship needs push for significant consolidation %@", &v9, 0xCu);
      }

      self->_needsPushForConsolidation = 1;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setRelationshipEvents:(id)events
{
  objc_storeStrong(&self->_relationshipEvents, events);

  [(ASRelationship *)self _updateCurrentRelationshipState];
}

- (void)_updateDateActivityDataBecameVisibleWithDate:(id)date
{
  dateCopy = date;
  if (!self->_dateActivityDataInitiallyBecameVisible)
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_dateActivityDataInitiallyBecameVisible, date);
    dateCopy = v6;
  }
}

- (void)_updateDateFriendshipBeganWithDate:(id)date
{
  dateCopy = date;
  if (!self->_dateForLatestRelationshipStart)
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_dateForLatestRelationshipStart, date);
    dateCopy = v6;
  }
}

@end