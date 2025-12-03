@interface ASRelationshipStorage
+ (ASRelationshipStorage)relationshipStorageWithCodableRelationshipStorage:(id)storage;
- (ASRelationship)primaryRelationship;
- (ASRelationship)primaryRemoteRelationship;
- (ASRelationshipStorage)init;
- (ASRelationshipStorage)initWithRelationship:(id)relationship remoteRelationship:(id)remoteRelationship;
- (ASRelationshipStorage)storageWithSynchronizedRelationshipIdentifiers;
- (BOOL)isEqualToRelationshipStorage:(id)storage;
- (id)_chosePrimaryRelationshipWithSecureCloudRelationship:(id)relationship legacyRelationship:(id)legacyRelationship;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fullDescription;
- (id)relationshipForCloudType:(unint64_t)type;
- (id)remoteRelationshipForCloudType:(unint64_t)type;
- (void)updateRelationship:(id)relationship cloudType:(unint64_t)type;
- (void)updateRemoteRelationship:(id)relationship cloudType:(unint64_t)type;
@end

@implementation ASRelationshipStorage

- (ASRelationship)primaryRelationship
{
  secureCloudRelationship = [(ASRelationshipStorage *)self secureCloudRelationship];
  legacyRelationship = [(ASRelationshipStorage *)self legacyRelationship];
  v5 = [(ASRelationshipStorage *)self _chosePrimaryRelationshipWithSecureCloudRelationship:secureCloudRelationship legacyRelationship:legacyRelationship];

  return v5;
}

- (ASRelationshipStorage)init
{
  v3 = objc_alloc_init(ASRelationship);
  v4 = objc_alloc_init(ASRelationship);
  v5 = [(ASRelationshipStorage *)self initWithRelationship:v3 remoteRelationship:v4];

  return v5;
}

- (ASRelationship)primaryRemoteRelationship
{
  secureCloudRemoteRelationship = [(ASRelationshipStorage *)self secureCloudRemoteRelationship];
  legacyRemoteRelationship = [(ASRelationshipStorage *)self legacyRemoteRelationship];
  v5 = [(ASRelationshipStorage *)self _chosePrimaryRelationshipWithSecureCloudRelationship:secureCloudRemoteRelationship legacyRelationship:legacyRemoteRelationship];

  return v5;
}

+ (ASRelationshipStorage)relationshipStorageWithCodableRelationshipStorage:(id)storage
{
  storageCopy = storage;
  v4 = objc_alloc_init(ASRelationshipStorage);
  legacyRelationshipContainer = [storageCopy legacyRelationshipContainer];
  v6 = [ASRelationship relationshipWithCodableRelationshipContainer:legacyRelationshipContainer];
  [(ASRelationshipStorage *)v4 setLegacyRelationship:v6];

  legacyRemoteRelationshipContainer = [storageCopy legacyRemoteRelationshipContainer];
  v8 = [ASRelationship relationshipWithCodableRelationshipContainer:legacyRemoteRelationshipContainer];
  [(ASRelationshipStorage *)v4 setLegacyRemoteRelationship:v8];

  secureCloudRelationshipContainer = [storageCopy secureCloudRelationshipContainer];
  v10 = [ASRelationship relationshipWithCodableRelationshipContainer:secureCloudRelationshipContainer];
  [(ASRelationshipStorage *)v4 setSecureCloudRelationship:v10];

  secureCloudRemoteRelationshipContainer = [storageCopy secureCloudRemoteRelationshipContainer];

  v12 = [ASRelationship relationshipWithCodableRelationshipContainer:secureCloudRemoteRelationshipContainer];
  [(ASRelationshipStorage *)v4 setSecureCloudRemoteRelationship:v12];

  return v4;
}

- (ASRelationshipStorage)initWithRelationship:(id)relationship remoteRelationship:(id)remoteRelationship
{
  relationshipCopy = relationship;
  remoteRelationshipCopy = remoteRelationship;
  v17.receiver = self;
  v17.super_class = ASRelationshipStorage;
  v9 = [(ASRelationshipStorage *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyRelationship, relationship);
    objc_storeStrong(&v10->_legacyRemoteRelationship, remoteRelationship);
    v11 = [relationshipCopy copy];
    v12 = [remoteRelationshipCopy copy];
    [(ASRelationship *)v11 setCloudType:1];
    [(ASRelationship *)v12 setCloudType:1];
    secureCloudRelationship = v10->_secureCloudRelationship;
    v10->_secureCloudRelationship = v11;
    v14 = v11;

    secureCloudRemoteRelationship = v10->_secureCloudRemoteRelationship;
    v10->_secureCloudRemoteRelationship = v12;
  }

  return v10;
}

- (id)description
{
  primaryRelationship = [(ASRelationshipStorage *)self primaryRelationship];
  cloudType = [primaryRelationship cloudType];

  primaryRemoteRelationship = [(ASRelationshipStorage *)self primaryRemoteRelationship];
  cloudType2 = [primaryRemoteRelationship cloudType];

  if (cloudType)
  {
    v7 = &stru_2850D2AA8;
  }

  else
  {
    v7 = @" (PRIMARY)";
  }

  if (cloudType)
  {
    v8 = @" (PRIMARY)";
  }

  else
  {
    v8 = &stru_2850D2AA8;
  }

  if (cloudType2)
  {
    v9 = &stru_2850D2AA8;
  }

  else
  {
    v9 = @" (PRIMARY)";
  }

  if (cloudType2)
  {
    v10 = @" (PRIMARY)";
  }

  else
  {
    v10 = &stru_2850D2AA8;
  }

  v11 = MEMORY[0x277CCACA8];
  legacyRelationship = self->_legacyRelationship;
  legacyRemoteRelationship = self->_legacyRemoteRelationship;
  secureCloudRelationship = self->_secureCloudRelationship;
  secureCloudRemoteRelationship = self->_secureCloudRemoteRelationship;
  v16 = v8;
  v17 = v9;
  v18 = v7;
  secureCloudRemoteRelationship = [v11 stringWithFormat:@"ASRelationshipStorage:\nLEGACY LOCAL%@: %@\nLEGACY REMOTE%@: %@\nSECURE CLOUD LOCAL%@: %@\nSECURE CLOUD REMOTE%@: %@", v18, legacyRelationship, v17, legacyRemoteRelationship, v16, secureCloudRelationship, v10, secureCloudRemoteRelationship];

  return secureCloudRemoteRelationship;
}

- (id)fullDescription
{
  primaryRelationship = [(ASRelationshipStorage *)self primaryRelationship];
  cloudType = [primaryRelationship cloudType];

  primaryRemoteRelationship = [(ASRelationshipStorage *)self primaryRemoteRelationship];
  cloudType2 = [primaryRemoteRelationship cloudType];

  v7 = &stru_2850D2AA8;
  if (cloudType)
  {
    v8 = &stru_2850D2AA8;
  }

  else
  {
    v8 = @" (PRIMARY)";
  }

  if (cloudType)
  {
    v9 = @" (PRIMARY)";
  }

  else
  {
    v9 = &stru_2850D2AA8;
  }

  if (cloudType2)
  {
    v10 = &stru_2850D2AA8;
  }

  else
  {
    v10 = @" (PRIMARY)";
  }

  if (cloudType2)
  {
    v7 = @" (PRIMARY)";
  }

  v11 = MEMORY[0x277CCAB68];
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = v8;
  v16 = objc_alloc_init(v11);
  [v16 appendFormat:@"-------- Relationship Storage --------\n"];
  fullDescription = [(ASRelationship *)self->_legacyRelationship fullDescription];
  [v16 appendFormat:@"LEGACY LOCAL%@: \n%@\n", v15, fullDescription];

  fullDescription2 = [(ASRelationship *)self->_legacyRemoteRelationship fullDescription];
  [v16 appendFormat:@"LEGACY REMOTE%@: \n%@\n", v14, fullDescription2];

  fullDescription3 = [(ASRelationship *)self->_secureCloudRelationship fullDescription];
  [v16 appendFormat:@"SECURE CLOUD LOCAL%@: \n%@\n", v13, fullDescription3];

  fullDescription4 = [(ASRelationship *)self->_secureCloudRemoteRelationship fullDescription];
  [v16 appendFormat:@"SECURE CLOUD REMOTE%@: \n%@\n", v12, fullDescription4];

  v21 = [v16 copy];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ASRelationship *)self->_legacyRelationship copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ASRelationship *)self->_legacyRemoteRelationship copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(ASRelationship *)self->_secureCloudRelationship copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(ASRelationship *)self->_secureCloudRemoteRelationship copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqualToRelationshipStorage:(id)storage
{
  storageCopy = storage;
  legacyRelationship = self->_legacyRelationship;
  legacyRelationship = [storageCopy legacyRelationship];
  if ([(ASRelationship *)legacyRelationship isEqualToRelationship:legacyRelationship])
  {
    legacyRemoteRelationship = self->_legacyRemoteRelationship;
    legacyRemoteRelationship = [storageCopy legacyRemoteRelationship];
    if ([(ASRelationship *)legacyRemoteRelationship isEqualToRelationship:legacyRemoteRelationship])
    {
      secureCloudRelationship = self->_secureCloudRelationship;
      secureCloudRelationship = [storageCopy secureCloudRelationship];
      if ([(ASRelationship *)secureCloudRelationship isEqualToRelationship:secureCloudRelationship])
      {
        secureCloudRemoteRelationship = self->_secureCloudRemoteRelationship;
        secureCloudRemoteRelationship = [storageCopy secureCloudRemoteRelationship];
        v13 = [(ASRelationship *)secureCloudRemoteRelationship isEqualToRelationship:secureCloudRemoteRelationship];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_chosePrimaryRelationshipWithSecureCloudRelationship:(id)relationship legacyRelationship:(id)legacyRelationship
{
  relationshipCopy = relationship;
  legacyRelationshipCopy = legacyRelationship;
  dateForLatestRelationshipStart = [legacyRelationshipCopy dateForLatestRelationshipStart];
  dateForLatestRelationshipEnd = [legacyRelationshipCopy dateForLatestRelationshipEnd];
  dateForLatestRelationshipStart2 = [relationshipCopy dateForLatestRelationshipStart];
  dateForLatestRelationshipEnd2 = [relationshipCopy dateForLatestRelationshipEnd];
  if (([relationshipCopy isFriendshipActive] & 1) == 0 && (objc_msgSend(relationshipCopy, "hasInviteRequestEvent") & 1) == 0 && objc_msgSend(legacyRelationshipCopy, "isFriendshipActive") && objc_msgSend(dateForLatestRelationshipEnd2, "hk_isAfterOrEqualToDate:", dateForLatestRelationshipStart))
  {
    v11 = relationshipCopy;
LABEL_11:
    v12 = [v11 copy];
    goto LABEL_37;
  }

  if (([legacyRelationshipCopy isFriendshipActive] & 1) == 0 && (objc_msgSend(legacyRelationshipCopy, "hasInviteRequestEvent") & 1) == 0 && objc_msgSend(relationshipCopy, "isFriendshipActive") && objc_msgSend(dateForLatestRelationshipEnd, "hk_isAfterOrEqualToDate:", dateForLatestRelationshipStart2))
  {
    v11 = legacyRelationshipCopy;
    goto LABEL_11;
  }

  dateForLatestDowngradeCompleted = [legacyRelationshipCopy dateForLatestDowngradeCompleted];
  dateForLatestMigrationCompleted = [relationshipCopy dateForLatestMigrationCompleted];
  if ([relationshipCopy isFriendshipActive] && objc_msgSend(relationshipCopy, "secureCloudMigrationCompleted") && (!dateForLatestRelationshipEnd || objc_msgSend(dateForLatestRelationshipStart2, "hk_isAfterOrEqualToDate:", dateForLatestRelationshipEnd)) && (!dateForLatestDowngradeCompleted || objc_msgSend(dateForLatestMigrationCompleted, "hk_isAfterOrEqualToDate:", dateForLatestDowngradeCompleted)))
  {
    v15 = relationshipCopy;
  }

  else
  {
    if (![legacyRelationshipCopy isFriendshipActive])
    {
      v27 = dateForLatestRelationshipStart;
      dateForLatestInviteRequestEvent = [relationshipCopy dateForLatestInviteRequestEvent];
      v17 = dateForLatestInviteRequestEvent;
      if (dateForLatestInviteRequestEvent)
      {
        distantPast = dateForLatestInviteRequestEvent;
      }

      else
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
      }

      v19 = distantPast;

      dateForLatestInviteRequestEvent2 = [legacyRelationshipCopy dateForLatestInviteRequestEvent];
      v21 = dateForLatestInviteRequestEvent2;
      if (dateForLatestInviteRequestEvent2)
      {
        distantPast2 = dateForLatestInviteRequestEvent2;
      }

      else
      {
        distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v23 = distantPast2;

      if ([relationshipCopy hasInviteRequestEvent] && objc_msgSend(legacyRelationshipCopy, "hasInviteRequestEvent"))
      {
        if ([v19 hk_isAfterOrEqualToDate:v23])
        {
          v24 = relationshipCopy;
        }

        else
        {
          v24 = legacyRelationshipCopy;
        }
      }

      else
      {
        hasInviteRequestEvent = [relationshipCopy hasInviteRequestEvent];
        v24 = relationshipCopy;
        if ((hasInviteRequestEvent & 1) == 0)
        {
          [legacyRelationshipCopy hasInviteRequestEvent];
          v24 = legacyRelationshipCopy;
        }
      }

      v12 = [v24 copy];

      dateForLatestRelationshipStart = v27;
      goto LABEL_36;
    }

    v15 = legacyRelationshipCopy;
  }

  v12 = [v15 copy];
LABEL_36:

LABEL_37:

  return v12;
}

- (id)relationshipForCloudType:(unint64_t)type
{
  v3 = 8;
  if (type == 1)
  {
    v3 = 24;
  }

  return *(&self->super.isa + v3);
}

- (void)updateRelationship:(id)relationship cloudType:(unint64_t)type
{
  relationshipCopy = relationship;
  cloudType = [relationshipCopy cloudType];
  v7 = 8;
  if (cloudType == 1)
  {
    v7 = 24;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = relationshipCopy;
}

- (id)remoteRelationshipForCloudType:(unint64_t)type
{
  v3 = 16;
  if (type == 1)
  {
    v3 = 32;
  }

  return *(&self->super.isa + v3);
}

- (void)updateRemoteRelationship:(id)relationship cloudType:(unint64_t)type
{
  relationshipCopy = relationship;
  cloudType = [relationshipCopy cloudType];
  v7 = 16;
  if (cloudType == 1)
  {
    v7 = 32;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = relationshipCopy;
}

- (ASRelationshipStorage)storageWithSynchronizedRelationshipIdentifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(ASRelationshipStorage *)self copy];
  primaryRelationship = [v2 primaryRelationship];
  if ([primaryRelationship cloudType])
  {
LABEL_2:

    goto LABEL_3;
  }

  legacyRelationship = [v2 legacyRelationship];
  uUID = [legacyRelationship UUID];
  secureCloudRelationship = [v2 secureCloudRelationship];
  uUID2 = [secureCloudRelationship UUID];
  v11 = [uUID isEqual:uUID2];

  if ((v11 & 1) == 0)
  {
    primaryRelationship = [v2 secureCloudRelationship];
    legacyRelationship2 = [v2 legacyRelationship];
    uUID3 = [legacyRelationship2 UUID];
    [primaryRelationship setUUID:uUID3];

    [v2 setSecureCloudRelationship:primaryRelationship];
    ASLoggingInitialize();
    v14 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v2;
      _os_log_impl(&dword_23E4FA000, v14, OS_LOG_TYPE_DEFAULT, "Synchronized relationship identifiers: %@", &v23, 0xCu);
    }

    goto LABEL_2;
  }

LABEL_3:
  primaryRemoteRelationship = [v2 primaryRemoteRelationship];
  if ([primaryRemoteRelationship cloudType])
  {
LABEL_4:

    goto LABEL_5;
  }

  legacyRemoteRelationship = [v2 legacyRemoteRelationship];
  uUID4 = [legacyRemoteRelationship UUID];
  secureCloudRemoteRelationship = [v2 secureCloudRemoteRelationship];
  uUID5 = [secureCloudRemoteRelationship UUID];
  v19 = [uUID4 isEqual:uUID5];

  if ((v19 & 1) == 0)
  {
    primaryRemoteRelationship = [v2 secureCloudRemoteRelationship];
    legacyRemoteRelationship2 = [v2 legacyRemoteRelationship];
    uUID6 = [legacyRemoteRelationship2 UUID];
    [primaryRemoteRelationship setUUID:uUID6];

    [v2 setSecureCloudRemoteRelationship:primaryRemoteRelationship];
    ASLoggingInitialize();
    v22 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v2;
      _os_log_impl(&dword_23E4FA000, v22, OS_LOG_TYPE_DEFAULT, "Synchronized remote relationship identifiers: %@", &v23, 0xCu);
    }

    goto LABEL_4;
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

@end