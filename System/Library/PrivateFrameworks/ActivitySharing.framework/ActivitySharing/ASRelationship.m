@interface ASRelationship
+ (id)relationshipWithCodableRelationship:(id)a3 version:(int64_t)a4;
+ (id)relationshipWithCodableRelationshipContainer:(id)a3;
+ (id)relationshipsWithRelationshipAndEventRecords:(id)a3;
+ (void)_relationshipWithRecord:(id)a3 relationshipEventRecords:(id)a4 completion:(id)a5;
- (ASCodableCloudKitRelationship)codableRelationship;
- (ASRelationship)init;
- (ASRelationship)initWithIdentifier:(id)a3 cloudType:(unint64_t)a4;
- (BOOL)hasInviteRequestEvent;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRelationship:(id)a3;
- (BOOL)supportsCompetitions;
- (NSDate)timestampForMostRecentRelationshipEvent;
- (NSString)description;
- (NSString)secureCloudZoneName;
- (id)codableRelationshipContainerIncludingCloudKitFields:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fullDescription;
- (id)populateRecord:(id)a3 recordEncryptionType:(int64_t)a4;
- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4;
- (id)relationshipSnapshotForDate:(id)a3;
- (unint64_t)currentRelationshipEventAnchor;
- (void)_clearRelationshipState;
- (void)_setRelationshipEvents:(id)a3;
- (void)_updateCurrentRelationshipState;
- (void)_updateDateActivityDataBecameVisibleWithDate:(id)a3;
- (void)_updateDateFriendshipBeganWithDate:(id)a3;
- (void)consolidateIfNeeded;
- (void)insertEvents:(id)a3;
- (void)setRelationshipEvents:(id)a3;
- (void)traverseRelationshipHistoryStartingAtEventWithAnchor:(unint64_t)a3 block:(id)a4;
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
        v9 = [v8 type];
        if (v9 <= 199)
        {
          if (v9 > 99)
          {
            if (v9 > 103)
            {
              switch(v9)
              {
                case 'h':
LABEL_33:
                  [(ASRelationship *)self _clearRelationshipState];
                  v20 = [v8 timestamp];
                  dateForLatestRelationshipEnd = self->_dateForLatestRelationshipEnd;
                  self->_dateForLatestRelationshipEnd = v20;
LABEL_64:

                  break;
                case 'i':
                  self->_hasIncomingCompetitionRequest = 1;
                  self->_hasCompletedCompetition = 0;
                  self->_hasIgnoredCompetitionRequest = 0;
                  v31 = [v8 timestamp];
                  dateForLatestRelationshipEnd = self->_dateForLatestIncomingCompetitionRequest;
                  self->_dateForLatestIncomingCompetitionRequest = v31;
                  goto LABEL_64;
                case 'j':
LABEL_25:
                  *&self->_isAwaitingCompetitionResponse = 256;
                  break;
              }
            }

            else
            {
              switch(v9)
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
                  v16 = [v8 timestamp];
                  dateForLatestFriendshipDidBegin = self->_dateForLatestFriendshipDidBegin;
                  self->_dateForLatestFriendshipDidBegin = v16;

                  v18 = [v8 timestamp];
                  [(ASRelationship *)self _updateDateFriendshipBeganWithDate:v18];

LABEL_43:
                  v28 = [v8 timestamp];
                  [(ASRelationship *)self _updateDateActivityDataBecameVisibleWithDate:v28];

                  break;
              }
            }
          }

          else
          {
            switch(v9)
            {
              case 1:
LABEL_12:
                v10 = [v8 timestamp];
                dateForLatestInviteRequestEvent = self->_dateForLatestInviteRequestEvent;
                self->_dateForLatestInviteRequestEvent = v10;

                self->_hasOutgoingInviteRequest = 1;
                v12 = [v8 timestamp];
                dateForLatestOutgoingInviteRequest = self->_dateForLatestOutgoingInviteRequest;
                self->_dateForLatestOutgoingInviteRequest = v12;

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
                v26 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestDataHidden;
                self->_dateForLatestDataHidden = v26;
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
                v27 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestOutgoingCompetitionRequest;
                self->_dateForLatestOutgoingCompetitionRequest = v27;
                goto LABEL_64;
              case 11:
                goto LABEL_25;
              case 12:
                self->_hasIncomingCompetitionRequest = 0;
                self->_hasIgnoredCompetitionRequest = 1;
                v29 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestIgnoredCompetitionRequest;
                self->_dateForLatestIgnoredCompetitionRequest = v29;
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
                v25 = [v8 timestamp];
                dateForLatestRelationshipEnd = self->_dateForLatestSupportedFeaturesUpdate;
                self->_dateForLatestSupportedFeaturesUpdate = v25;
                goto LABEL_64;
              default:
                break;
            }
          }
        }

        else if (v9 > 299)
        {
          if (v9 <= 302)
          {
            if (v9 == 300)
            {
LABEL_34:
              v21 = [v8 timestamp];
              v22 = self->_dateForLatestInviteRequestEvent;
              self->_dateForLatestInviteRequestEvent = v21;

              self->_hasIncomingInviteRequest = 1;
              v23 = [v8 timestamp];
              dateForLatestIncomingInviteRequest = self->_dateForLatestIncomingInviteRequest;
              self->_dateForLatestIncomingInviteRequest = v23;

              self->_isAwaitingInviteResponse = 1;
              goto LABEL_65;
            }

            if (v9 == 301)
            {
              self->_secureCloudUpgradeFailed = 0;
              self->_hasIncomingSecureCloudUpgradeRequest = 1;
              v33 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestIncomingUpgradeRequest;
              self->_dateForLatestIncomingUpgradeRequest = v33;
            }

            else
            {
LABEL_28:
              *&self->_hasOutgoingSecureCloudUpgradeRequest = 0x1000000;
              v19 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeFailure;
              self->_dateForLatestUpgradeFailure = v19;
            }

            goto LABEL_64;
          }

          if (v9 <= 304)
          {
            if (v9 == 303)
            {
              *&self->_hasOutgoingSecureCloudUpgradeRequest = 0x10000;
              v34 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeCompleted;
              self->_dateForLatestUpgradeCompleted = v34;
            }

            else
            {
              self->_secureCloudDowngradeAcknowledged = 0;
              self->_secureCloudDowngradeCompleted = 0;
              *&self->_secureCloudMigrationAvailable = 0x10000;
              v14 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationCompleted;
              self->_dateForLatestMigrationCompleted = v14;
            }

            goto LABEL_64;
          }

          if (v9 == 305)
          {
            self->_secureCloudMigrationAvailable = 0;
            *&self->_secureCloudMigrationCompleted = 0;
            *&self->_secureCloudDowngradeStarted = 0;
            self->_secureCloudDowngradeCompleted = 1;
            v35 = [v8 timestamp];
            dateForLatestRelationshipEnd = self->_dateForLatestDowngradeCompleted;
            self->_dateForLatestDowngradeCompleted = v35;
            goto LABEL_64;
          }

          if (v9 == 306)
          {
            self->_hasIncomingSecureCloudRepairRequest = 1;
          }
        }

        else
        {
          switch(v9)
          {
            case 200:
              goto LABEL_12;
            case 201:
              self->_secureCloudUpgradeAvailable = 1;
              goto LABEL_56;
            case 202:
              self->_secureCloudUpgradeAvailable = 0;
LABEL_56:
              v37 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestUpgradeAvailableUnavailableChange;
              self->_dateForLatestUpgradeAvailableUnavailableChange = v37;
              goto LABEL_64;
            case 203:
              self->_secureCloudUpgradeFailed = 0;
              self->_hasOutgoingSecureCloudUpgradeRequest = 1;
              v38 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestOutgoingUpgradeRequest;
              self->_dateForLatestOutgoingUpgradeRequest = v38;
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
              v40 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationStarted;
              self->_dateForLatestMigrationStarted = v40;
              goto LABEL_64;
            case 207:
              *&self->_secureCloudMigrationStarted = 0;
              v39 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestMigrationFailed;
              self->_dateForLatestMigrationFailed = v39;
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
              v36 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestDowngradeNeedsAcknowledgement;
              self->_dateForLatestDowngradeNeedsAcknowledgement = v36;
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
              v32 = [v8 timestamp];
              dateForLatestRelationshipEnd = self->_dateForLatestRepairRequest;
              self->_dateForLatestRepairRequest = v32;
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
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ASRelationship *)self initWithIdentifier:v3 cloudType:0];

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

        v8 = [*(*(&v11 + 1) + 8 * i) anchor];
        if (v5 <= v8)
        {
          v5 = v8;
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
  v9 = [(CKRecord *)self->_systemFieldsOnlyRecord recordChangeTag];
  v10 = NSStringFromASCloudType(self->_cloudType);
  v11 = [v4 stringWithFormat:@"Relationship v%ld uuid=%@ cloudKitAddress=[%@], preferredAddress=[%@], supportedFeatures=[iOS:%d, wOS:%d] recent events=%@, etag=%@, cloud type=%@", v13, cloudKitAddress, preferredReachableAddress, supportedPhoneFeatures, supportedWatchFeatures, v3, v9, v10];

  return v11;
}

- (id)recordWithZoneID:(id)a3 recordEncryptionType:(int64_t)a4
{
  v6 = a3;
  v7 = [(ASRelationship *)self systemFieldsOnlyRecord];
  v8 = v7;
  if (!v7 || ([v7 recordID], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "zoneID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v6), v10, v9, (v11 & 1) == 0))
  {
    if (ASSecureCloudEnabled())
    {
      v12 = objc_alloc(MEMORY[0x277CBC5D0]);
      v13 = [(ASRelationship *)self UUID];
      v14 = [v13 UUIDString];
      v15 = [v12 initWithRecordName:v14 zoneID:v6];

      v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingRelationship" recordID:v15];
      v8 = v15;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ActivitySharingRelationship" zoneID:v6];
    }

    v8 = v16;
  }

  v17 = [(ASRelationship *)self populateRecord:v8 recordEncryptionType:a4];

  return v17;
}

- (id)populateRecord:(id)a3 recordEncryptionType:(int64_t)a4
{
  v6 = a3;
  _ASUpdateSchemaVersionOnRecord(3, v6, a4);
  v7 = [(ASRelationship *)self remoteActivityDataShareID];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRelationship *)self cloudType];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x277CBC620]);
      v11 = [(ASRelationship *)self remoteActivityDataShareID];
      v12 = [v10 initWithRecordID:v11 action:0];
      [v6 setObject:v12 forKeyedSubscript:@"RemoteActivityDataShareReference"];
    }
  }

  v13 = [(ASRelationship *)self remoteRelationshipShareID];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASRelationship *)self cloudType];

    if (!v15)
    {
      v16 = objc_alloc(MEMORY[0x277CBC620]);
      v17 = [(ASRelationship *)self remoteRelationshipShareID];
      v18 = [v16 initWithRecordID:v17 action:0];
      [v6 setObject:v18 forKeyedSubscript:@"RemoteRelationshipShareReference"];
    }
  }

  if (ASSecureCloudEnabled())
  {
    v19 = [(ASRelationship *)self remoteRelationshipZoneShareID];
    if (v19)
    {
      v20 = v19;
      v21 = [(ASRelationship *)self cloudType];

      if (v21 == 1)
      {
        v22 = objc_alloc(MEMORY[0x277CBC620]);
        v23 = [(ASRelationship *)self remoteRelationshipZoneShareID];
        v24 = [v22 initWithRecordID:v23 action:0];
        [v6 setObject:v24 forKeyedSubscript:@"RemoteRelationshipZoneShareReference"];
      }
    }
  }

  v25 = [(ASRelationship *)self codableRelationship];
  v26 = [v25 data];
  v27 = [v6 encryptedValues];
  [v27 setObject:v26 forKeyedSubscript:@"EncryptedData"];

  return v6;
}

- (ASCodableCloudKitRelationship)codableRelationship
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ASCodableCloudKitRelationship);
  v4 = [(ASRelationship *)self UUID];
  v5 = [v4 hk_dataForUUIDBytes];
  [(ASCodableCloudKitRelationship *)v3 setUuid:v5];

  v6 = [(ASRelationship *)self incomingHandshakeToken];
  [(ASCodableCloudKitRelationship *)v3 setIncomingHandshakeToken:v6];

  v7 = [(ASRelationship *)self outgoingHandshakeToken];
  [(ASCodableCloudKitRelationship *)v3 setOutgoingHandshakeToken:v7];

  v8 = [(ASRelationship *)self cloudKitAddress];
  [(ASCodableCloudKitRelationship *)v3 setCloudKitAddress:v8];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(ASRelationship *)self addresses];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(ASCodableCloudKitRelationship *)v3 addAddresses:*(*(&v38 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v14 = [(ASRelationship *)self preferredReachableAddress];
  [(ASCodableCloudKitRelationship *)v3 setPreferredReachableAddress:v14];

  v15 = [(ASRelationship *)self preferredReachableService];
  [(ASCodableCloudKitRelationship *)v3 setPreferredReachableService:v15];

  v16 = [(ASRelationship *)self relationshipEvents];
  -[ASCodableCloudKitRelationship setEventCount:](v3, "setEventCount:", [v16 count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = [(ASRelationship *)self relationshipEvents];
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v34 + 1) + 8 * j) _codableRelationshipEvent];
        [(ASCodableCloudKitRelationship *)v3 addEvents:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v19);
  }

  [(ASCodableCloudKitRelationship *)v3 setSupportedPhoneFeatures:[(ASRelationship *)self supportedPhoneFeatures]];
  [(ASCodableCloudKitRelationship *)v3 setSupportedWatchFeatures:[(ASRelationship *)self supportedWatchFeatures]];
  [(ASCodableCloudKitRelationship *)v3 setCloudType:[(ASRelationship *)self cloudType]];
  v23 = [(ASRelationship *)self secureCloudUpgradeToken];
  [(ASCodableCloudKitRelationship *)v3 setSecureCloudUpgradeToken:v23];

  v24 = [(ASRelationship *)self sentInvitation];

  if (v24)
  {
    v25 = MEMORY[0x277CCAAB0];
    v26 = [(ASRelationship *)self sentInvitation];
    v27 = [v25 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
    [(ASCodableCloudKitRelationship *)v3 setSentInvitation:v27];
  }

  v28 = [(ASRelationship *)self receivedInvitation];

  if (v28)
  {
    v29 = MEMORY[0x277CCAAB0];
    v30 = [(ASRelationship *)self receivedInvitation];
    v31 = [v29 archivedDataWithRootObject:v30 requiringSecureCoding:1 error:0];
    [(ASCodableCloudKitRelationship *)v3 setReceivedInvitation:v31];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)_relationshipWithRecord:(id)a3 relationshipEventRecords:(id)a4 completion:(id)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _ASCloudKitSchemaVersionForRecord(v7);
  if ((v10 - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = [v7 encryptedValues];
    v12 = [v11 objectForKeyedSubscript:@"EncryptedData"];
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
      v15 = [v7 objectForKeyedSubscript:@"RemoteActivityDataShareReference"];
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
      v17 = [v16 recordID];
      [v14 setRemoteActivityDataShareID:v17];

      v18 = [v7 objectForKeyedSubscript:@"RemoteRelationshipShareReference"];
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
      v20 = [v19 recordID];
      [v14 setRemoteRelationshipShareID:v20];

      v21 = [v7 share];
      v22 = [v21 recordID];
      v23 = v14;
      v24 = v22;
      v76 = v23;
      [v23 setRelationshipShareID:v22];

      if (ASSecureCloudEnabled())
      {
        v25 = [v7 objectForKeyedSubscript:@"RelationshipZoneShareReference"];
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

        v28 = [v26 recordID];
        [v76 setRelationshipZoneShareID:v28];

        v29 = [v7 objectForKeyedSubscript:@"RemoteRelationshipZoneShareReference"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v30 recordID];
        [v76 setRemoteRelationshipZoneShareID:v31];

        v13 = v27;
      }

      v32 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
      [v7 encodeSystemFieldsWithCoder:v32];
      [v32 finishEncoding];
      v33 = objc_alloc(MEMORY[0x277CCAAC8]);
      v71 = v32;
      v34 = [v32 encodedData];
      v85 = 0;
      v35 = [v33 initForReadingFromData:v34 error:&v85];
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
      v39 = [(ASCodableCloudKitRelationship *)v75 eventCount];
      if (v10 == 3)
      {
        v40 = [v76 relationshipEvents];
        v41 = [v40 count];

        v42 = v39 == v41;
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
        v84 = v7;
        v47 = [v8 objectsPassingTest:v83];
        v9[2](v9, v76, v47);

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
        v68 = v8;
        obj = v8;
        v49 = [obj countByEnumeratingWithState:&v79 objects:v86 count:16];
        v67 = v9;
        v69 = v39;
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
              v54 = [v53 parent];
              v55 = [v54 recordID];
              v56 = v7;
              v57 = [v7 recordID];
              v58 = [v55 isEqual:v57];

              if (v58)
              {
                v59 = [ASRelationshipEvent relationshipEventWithRecord:v53];
                v60 = [v48 arrayByAddingObject:v59];

                v61 = [v78 setByAddingObject:v53];

                v78 = v61;
                v48 = v60;
              }

              v7 = v56;
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
        v62 = [v76 relationshipEvents];
        v63 = [v62 count];

        if (v69 != v63)
        {
          ASLoggingInitialize();
          v64 = ASLogCloudKit;
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            [ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:v64 relationshipEventRecords:v76 completion:?];
          }
        }

        v9 = v67;
        v67[2](v67, v76, v78);

        v8 = v68;
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

      v9[2](v9, 0, v8);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASRelationship(CloudKitCodingSupport) _relationshipWithRecord:relationshipEventRecords:completion:];
    }

    v9[2](v9, 0, v8);
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

+ (id)relationshipWithCodableRelationship:(id)a3 version:(int64_t)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(ASRelationship);
  [(ASRelationship *)v6 setVersion:a4];
  v7 = MEMORY[0x277CCAD78];
  v8 = [v5 uuid];
  v9 = [v7 hk_UUIDWithData:v8];
  [(ASRelationship *)v6 setUUID:v9];

  v10 = [v5 incomingHandshakeToken];
  [(ASRelationship *)v6 setIncomingHandshakeToken:v10];

  v11 = [v5 outgoingHandshakeToken];
  [(ASRelationship *)v6 setOutgoingHandshakeToken:v11];

  v12 = [v5 cloudKitAddress];
  [(ASRelationship *)v6 setCloudKitAddress:v12];

  v13 = [v5 addresses];
  v14 = ASConsolidateAddresses(v13);
  [(ASRelationship *)v6 setAddresses:v14];

  v15 = [v5 preferredReachableAddress];
  [(ASRelationship *)v6 setPreferredReachableAddress:v15];

  v16 = [v5 preferredReachableService];
  v37 = v6;
  [(ASRelationship *)v6 setPreferredReachableService:v16];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v5 events];
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(v17);
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

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  [(ASRelationship *)v37 setRelationshipEvents:v21];
  -[ASRelationship setSupportedPhoneFeatures:](v37, "setSupportedPhoneFeatures:", [v5 supportedPhoneFeatures]);
  -[ASRelationship setSupportedWatchFeatures:](v37, "setSupportedWatchFeatures:", [v5 supportedWatchFeatures]);
  -[ASRelationship setCloudType:](v37, "setCloudType:", [v5 cloudType]);
  v28 = [v5 secureCloudUpgradeToken];
  [(ASRelationship *)v37 setSecureCloudUpgradeToken:v28];

  v29 = objc_opt_class();
  v30 = [v5 sentInvitation];
  v31 = ASSecureUnarchiveClassWithData(v29, v30);
  [(ASRelationship *)v37 setSentInvitation:v31];

  v32 = objc_opt_class();
  v33 = [v5 receivedInvitation];
  v34 = ASSecureUnarchiveClassWithData(v32, v33);
  [(ASRelationship *)v37 setReceivedInvitation:v34];

  [(ASRelationship *)v37 consolidateIfNeeded];
  v35 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)relationshipsWithRelationshipAndEventRecords:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectsPassingTest:&__block_literal_global];
  v17 = [v3 objectsPassingTest:&__block_literal_global_464];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [MEMORY[0x277CBEB18] array];
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
        v20 = v6;
        [ASRelationship _relationshipWithRecord:v11 relationshipEventRecords:v17 completion:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v12 = [v17 mutableCopy];
  [v12 removeObjectsInArray:v6];
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

- (id)codableRelationshipContainerIncludingCloudKitFields:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(ASCodableRelationshipContainer);
  v6 = [(ASRelationship *)self codableRelationship];
  [(ASCodableRelationshipContainer *)v5 setRelationship:v6];

  [(ASCodableRelationshipContainer *)v5 setVersion:[(ASRelationship *)self version]];
  if (v3)
  {
    v7 = [(ASRelationship *)self systemFieldsOnlyRecord];

    if (v7)
    {
      v8 = MEMORY[0x277CCAAB0];
      v9 = [(ASRelationship *)self systemFieldsOnlyRecord];
      v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setSystemFieldsOnlyRecord:v10];
    }

    v11 = [(ASRelationship *)self relationshipShareID];

    if (v11)
    {
      v12 = MEMORY[0x277CCAAB0];
      v13 = [(ASRelationship *)self relationshipShareID];
      v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRelationshipShareID:v14];
    }

    v15 = [(ASRelationship *)self remoteRelationshipShareID];

    if (v15)
    {
      v16 = MEMORY[0x277CCAAB0];
      v17 = [(ASRelationship *)self remoteRelationshipShareID];
      v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRemoteRelationshipShareID:v18];
    }

    v19 = [(ASRelationship *)self remoteActivityDataShareID];

    if (v19)
    {
      v20 = MEMORY[0x277CCAAB0];
      v21 = [(ASRelationship *)self remoteActivityDataShareID];
      v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:0];
      [(ASCodableRelationshipContainer *)v5 setRemoteActivityShareID:v22];
    }

    if (ASSecureCloudEnabled() && v3)
    {
      v23 = [(ASRelationship *)self relationshipZoneShareID];

      if (v23)
      {
        v24 = MEMORY[0x277CCAAB0];
        v25 = [(ASRelationship *)self relationshipZoneShareID];
        v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:0];
        [(ASCodableRelationshipContainer *)v5 setRelationshipZoneShareID:v26];
      }

      v27 = [(ASRelationship *)self remoteRelationshipZoneShareID];

      if (v27)
      {
        v28 = MEMORY[0x277CCAAB0];
        v29 = [(ASRelationship *)self remoteRelationshipZoneShareID];
        v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:0];
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

+ (id)relationshipWithCodableRelationshipContainer:(id)a3
{
  v3 = a3;
  v4 = [v3 relationship];
  v5 = +[ASRelationship relationshipWithCodableRelationship:version:](ASRelationship, "relationshipWithCodableRelationship:version:", v4, [v3 version]);
  v6 = objc_opt_class();
  v7 = [v3 systemFieldsOnlyRecord];
  v8 = ASSecureUnarchiveClassWithDataAndStrictness(v6, v7, 0);
  [v5 setSystemFieldsOnlyRecord:v8];

  v9 = objc_opt_class();
  v10 = [v3 relationshipShareID];
  v11 = ASSecureUnarchiveClassWithDataAndStrictness(v9, v10, 0);
  [v5 setRelationshipShareID:v11];

  v12 = objc_opt_class();
  v13 = [v3 remoteRelationshipShareID];
  v14 = ASSecureUnarchiveClassWithDataAndStrictness(v12, v13, 0);
  [v5 setRemoteRelationshipShareID:v14];

  v15 = objc_opt_class();
  v16 = [v3 remoteActivityShareID];
  v17 = ASSecureUnarchiveClassWithDataAndStrictness(v15, v16, 0);
  [v5 setRemoteActivityDataShareID:v17];

  if (ASSecureCloudEnabled())
  {
    v18 = objc_opt_class();
    v19 = [v3 relationshipZoneShareID];
    v20 = ASSecureUnarchiveClassWithDataAndStrictness(v18, v19, 0);
    [v5 setRelationshipZoneShareID:v20];

    v21 = objc_opt_class();
    v22 = [v3 remoteRelationshipZoneShareID];
    v23 = ASSecureUnarchiveClassWithDataAndStrictness(v21, v22, 0);
    [v5 setRemoteRelationshipZoneShareID:v23];
  }

  return v5;
}

- (ASRelationship)initWithIdentifier:(id)a3 cloudType:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASRelationship;
  v8 = [(ASRelationship *)&v12 init];
  v9 = v8;
  if (v8)
  {
    relationshipEvents = v8->_relationshipEvents;
    v8->_relationshipEvents = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v9->_UUID, a3);
    v9->_supportedPhoneFeatures = ASSupportedPhoneFeaturesForCurrentDevice();
    v9->_supportedWatchFeatures = ASSupportedWatchFeaturesForCurrentDevice();
    v9->_cloudType = a4;
  }

  return v9;
}

- (NSString)secureCloudZoneName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NSUUID *)self->_UUID UUIDString];
  v4 = [v2 stringWithFormat:@"RelationshipZone-%@", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 56) = self->_version;
  objc_storeStrong((v5 + 64), self->_UUID);
  objc_storeStrong((v5 + 80), self->_outgoingHandshakeToken);
  objc_storeStrong((v5 + 72), self->_incomingHandshakeToken);
  objc_storeStrong((v5 + 88), self->_cloudKitAddress);
  v6 = [(NSSet *)self->_addresses copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASRelationship *)self isEqualToRelationship:v4];
  }

  return v5;
}

- (BOOL)isEqualToRelationship:(id)a3
{
  v4 = a3;
  version = self->_version;
  if (version == [v4 version] && (supportedPhoneFeatures = self->_supportedPhoneFeatures, supportedPhoneFeatures == objc_msgSend(v4, "supportedPhoneFeatures")) && (supportedWatchFeatures = self->_supportedWatchFeatures, supportedWatchFeatures == objc_msgSend(v4, "supportedWatchFeatures")))
  {
    UUID = self->_UUID;
    v9 = [v4 UUID];
    if (ASObjectsAreEqual(UUID, v9))
    {
      incomingHandshakeToken = self->_incomingHandshakeToken;
      v11 = [v4 incomingHandshakeToken];
      if (ASStringsAreEqual(incomingHandshakeToken, v11))
      {
        outgoingHandshakeToken = self->_outgoingHandshakeToken;
        v13 = [v4 outgoingHandshakeToken];
        if (ASStringsAreEqual(outgoingHandshakeToken, v13))
        {
          cloudKitAddress = self->_cloudKitAddress;
          v15 = [v4 cloudKitAddress];
          if (ASStringsAreEqual(cloudKitAddress, v15))
          {
            preferredReachableAddress = self->_preferredReachableAddress;
            v17 = [v4 preferredReachableAddress];
            if (ASStringsAreEqual(preferredReachableAddress, v17))
            {
              preferredReachableService = self->_preferredReachableService;
              v19 = [v4 preferredReachableService];
              if (ASStringsAreEqual(preferredReachableService, v19))
              {
                v20 = [(CKRecord *)self->_systemFieldsOnlyRecord recordID];
                v44 = [v4 systemFieldsOnlyRecord];
                v21 = [v44 recordID];
                if (ASObjectsAreEqual(v20, v21))
                {
                  v43 = v20;
                  relationshipShareID = self->_relationshipShareID;
                  v42 = [v4 relationshipShareID];
                  if (ASObjectsAreEqual(relationshipShareID, v42))
                  {
                    remoteRelationshipShareID = self->_remoteRelationshipShareID;
                    v41 = [v4 remoteRelationshipShareID];
                    if (ASObjectsAreEqual(remoteRelationshipShareID, v41))
                    {
                      remoteActivityDataShareID = self->_remoteActivityDataShareID;
                      v40 = [v4 remoteActivityDataShareID];
                      if (ASObjectsAreEqual(remoteActivityDataShareID, v40))
                      {
                        relationshipEvents = self->_relationshipEvents;
                        v39 = [v4 relationshipEvents];
                        if (-[NSArray isEqualToArray:](relationshipEvents, "isEqualToArray:") && (cloudType = self->_cloudType, cloudType == [v4 cloudType]))
                        {
                          relationshipZoneShareID = self->_relationshipZoneShareID;
                          v38 = [v4 relationshipZoneShareID];
                          if (ASObjectsAreEqual(relationshipZoneShareID, v38))
                          {
                            remoteRelationshipZoneShareID = self->_remoteRelationshipZoneShareID;
                            v37 = [v4 remoteRelationshipZoneShareID];
                            if (ASObjectsAreEqual(remoteRelationshipZoneShareID, v37))
                            {
                              secureCloudUpgradeToken = self->_secureCloudUpgradeToken;
                              v36 = [v4 secureCloudUpgradeToken];
                              if (ASStringsAreEqual(secureCloudUpgradeToken, v36))
                              {
                                sentInvitation = self->_sentInvitation;
                                v35 = [v4 sentInvitation];
                                if (ASObjectsAreEqual(sentInvitation, v35))
                                {
                                  receivedInvitation = self->_receivedInvitation;
                                  v32 = [v4 receivedInvitation];
                                  v33 = ASObjectsAreEqual(receivedInvitation, v32);
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

                        v20 = v43;
                      }

                      else
                      {
                        v33 = 0;
                        v20 = v43;
                      }
                    }

                    else
                    {
                      v33 = 0;
                      v20 = v43;
                    }
                  }

                  else
                  {
                    v33 = 0;
                    v20 = v43;
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
  v7 = [(CKRecord *)self->_systemFieldsOnlyRecord recordID];
  v8 = [(CKRecord *)self->_systemFieldsOnlyRecord recordChangeTag];
  [v4 appendFormat:@"Record: %@, etag %@\n", v7, v8];

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

- (void)setRelationshipEvents:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_2];
  [(ASRelationship *)self _setRelationshipEvents:v4];
}

- (void)insertEvents:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = ASLogRelationships;
  if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_DEFAULT, "Inserting events: %{public}@", &v10, 0xCu);
  }

  v6 = [(NSArray *)self->_relationshipEvents arrayByAddingObjectsFromArray:v4];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_2];
  v8 = _ConsolidatedEvents(v7);
  [(ASRelationship *)self _setRelationshipEvents:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSDate)timestampForMostRecentRelationshipEvent
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_relationshipEvents firstObject];
  v4 = [v3 timestamp];

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
        v11 = [v10 timestamp];
        v12 = [v11 compare:v4];

        if (v12 == 1)
        {
          v13 = [v10 timestamp];

          v4 = v13;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)relationshipSnapshotForDate:(id)a3
{
  v4 = a3;
  v5 = [(ASRelationship *)self copy];
  v6 = [v5 relationshipEvents];
  v7 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___EventsPriorToDate_block_invoke;
  v12[3] = &unk_278C463C8;
  v13 = v4;
  v8 = v4;
  v9 = [v7 predicateWithBlock:v12];
  v10 = [v6 filteredArrayUsingPredicate:v9];

  [v5 setRelationshipEvents:v10];

  return v5;
}

- (void)traverseRelationshipHistoryStartingAtEventWithAnchor:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  while (a3 <= [(ASRelationship *)self currentRelationshipEventAnchor])
  {
    v7 = [(ASRelationship *)self copy];
    relationshipEvents = self->_relationshipEvents;
    ++a3;
    v9 = MEMORY[0x277CCAC30];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = ___EventsPriorToAnchor_block_invoke;
    v13[3] = &__block_descriptor_40_e46_B24__0__ASRelationshipEvent_8__NSDictionary_16l;
    v13[4] = a3;
    v10 = relationshipEvents;
    v11 = [v9 predicateWithBlock:v13];
    v12 = [(NSArray *)v10 filteredArrayUsingPredicate:v11];

    [v7 setRelationshipEvents:v12];
    v6[2](v6, v7);
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
      v10 = self;
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
        v10 = self;
        _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Relationship needs push for significant consolidation %@", &v9, 0xCu);
      }

      self->_needsPushForConsolidation = 1;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setRelationshipEvents:(id)a3
{
  objc_storeStrong(&self->_relationshipEvents, a3);

  [(ASRelationship *)self _updateCurrentRelationshipState];
}

- (void)_updateDateActivityDataBecameVisibleWithDate:(id)a3
{
  v5 = a3;
  if (!self->_dateActivityDataInitiallyBecameVisible)
  {
    v6 = v5;
    objc_storeStrong(&self->_dateActivityDataInitiallyBecameVisible, a3);
    v5 = v6;
  }
}

- (void)_updateDateFriendshipBeganWithDate:(id)a3
{
  v5 = a3;
  if (!self->_dateForLatestRelationshipStart)
  {
    v6 = v5;
    objc_storeStrong(&self->_dateForLatestRelationshipStart, a3);
    v5 = v6;
  }
}

@end