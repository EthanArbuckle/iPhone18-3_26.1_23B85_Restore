@interface ASRelationshipStorage
+ (ASRelationshipStorage)relationshipStorageWithCodableRelationshipStorage:(id)a3;
- (ASRelationship)primaryRelationship;
- (ASRelationship)primaryRemoteRelationship;
- (ASRelationshipStorage)init;
- (ASRelationshipStorage)initWithRelationship:(id)a3 remoteRelationship:(id)a4;
- (ASRelationshipStorage)storageWithSynchronizedRelationshipIdentifiers;
- (BOOL)isEqualToRelationshipStorage:(id)a3;
- (id)_chosePrimaryRelationshipWithSecureCloudRelationship:(id)a3 legacyRelationship:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDescription;
- (id)relationshipForCloudType:(unint64_t)a3;
- (id)remoteRelationshipForCloudType:(unint64_t)a3;
- (void)updateRelationship:(id)a3 cloudType:(unint64_t)a4;
- (void)updateRemoteRelationship:(id)a3 cloudType:(unint64_t)a4;
@end

@implementation ASRelationshipStorage

- (ASRelationship)primaryRelationship
{
  v3 = [(ASRelationshipStorage *)self secureCloudRelationship];
  v4 = [(ASRelationshipStorage *)self legacyRelationship];
  v5 = [(ASRelationshipStorage *)self _chosePrimaryRelationshipWithSecureCloudRelationship:v3 legacyRelationship:v4];

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
  v3 = [(ASRelationshipStorage *)self secureCloudRemoteRelationship];
  v4 = [(ASRelationshipStorage *)self legacyRemoteRelationship];
  v5 = [(ASRelationshipStorage *)self _chosePrimaryRelationshipWithSecureCloudRelationship:v3 legacyRelationship:v4];

  return v5;
}

+ (ASRelationshipStorage)relationshipStorageWithCodableRelationshipStorage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ASRelationshipStorage);
  v5 = [v3 legacyRelationshipContainer];
  v6 = [ASRelationship relationshipWithCodableRelationshipContainer:v5];
  [(ASRelationshipStorage *)v4 setLegacyRelationship:v6];

  v7 = [v3 legacyRemoteRelationshipContainer];
  v8 = [ASRelationship relationshipWithCodableRelationshipContainer:v7];
  [(ASRelationshipStorage *)v4 setLegacyRemoteRelationship:v8];

  v9 = [v3 secureCloudRelationshipContainer];
  v10 = [ASRelationship relationshipWithCodableRelationshipContainer:v9];
  [(ASRelationshipStorage *)v4 setSecureCloudRelationship:v10];

  v11 = [v3 secureCloudRemoteRelationshipContainer];

  v12 = [ASRelationship relationshipWithCodableRelationshipContainer:v11];
  [(ASRelationshipStorage *)v4 setSecureCloudRemoteRelationship:v12];

  return v4;
}

- (ASRelationshipStorage)initWithRelationship:(id)a3 remoteRelationship:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = ASRelationshipStorage;
  v9 = [(ASRelationshipStorage *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_legacyRelationship, a3);
    objc_storeStrong(&v10->_legacyRemoteRelationship, a4);
    v11 = [v7 copy];
    v12 = [v8 copy];
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
  v3 = [(ASRelationshipStorage *)self primaryRelationship];
  v4 = [v3 cloudType];

  v5 = [(ASRelationshipStorage *)self primaryRemoteRelationship];
  v6 = [v5 cloudType];

  if (v4)
  {
    v7 = &stru_2850D2AA8;
  }

  else
  {
    v7 = @" (PRIMARY)";
  }

  if (v4)
  {
    v8 = @" (PRIMARY)";
  }

  else
  {
    v8 = &stru_2850D2AA8;
  }

  if (v6)
  {
    v9 = &stru_2850D2AA8;
  }

  else
  {
    v9 = @" (PRIMARY)";
  }

  if (v6)
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
  v19 = [v11 stringWithFormat:@"ASRelationshipStorage:\nLEGACY LOCAL%@: %@\nLEGACY REMOTE%@: %@\nSECURE CLOUD LOCAL%@: %@\nSECURE CLOUD REMOTE%@: %@", v18, legacyRelationship, v17, legacyRemoteRelationship, v16, secureCloudRelationship, v10, secureCloudRemoteRelationship];

  return v19;
}

- (id)fullDescription
{
  v3 = [(ASRelationshipStorage *)self primaryRelationship];
  v4 = [v3 cloudType];

  v5 = [(ASRelationshipStorage *)self primaryRemoteRelationship];
  v6 = [v5 cloudType];

  v7 = &stru_2850D2AA8;
  if (v4)
  {
    v8 = &stru_2850D2AA8;
  }

  else
  {
    v8 = @" (PRIMARY)";
  }

  if (v4)
  {
    v9 = @" (PRIMARY)";
  }

  else
  {
    v9 = &stru_2850D2AA8;
  }

  if (v6)
  {
    v10 = &stru_2850D2AA8;
  }

  else
  {
    v10 = @" (PRIMARY)";
  }

  if (v6)
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
  v17 = [(ASRelationship *)self->_legacyRelationship fullDescription];
  [v16 appendFormat:@"LEGACY LOCAL%@: \n%@\n", v15, v17];

  v18 = [(ASRelationship *)self->_legacyRemoteRelationship fullDescription];
  [v16 appendFormat:@"LEGACY REMOTE%@: \n%@\n", v14, v18];

  v19 = [(ASRelationship *)self->_secureCloudRelationship fullDescription];
  [v16 appendFormat:@"SECURE CLOUD LOCAL%@: \n%@\n", v13, v19];

  v20 = [(ASRelationship *)self->_secureCloudRemoteRelationship fullDescription];
  [v16 appendFormat:@"SECURE CLOUD REMOTE%@: \n%@\n", v12, v20];

  v21 = [v16 copy];

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ASRelationship *)self->_legacyRelationship copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(ASRelationship *)self->_legacyRemoteRelationship copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(ASRelationship *)self->_secureCloudRelationship copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(ASRelationship *)self->_secureCloudRemoteRelationship copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqualToRelationshipStorage:(id)a3
{
  v4 = a3;
  legacyRelationship = self->_legacyRelationship;
  v6 = [v4 legacyRelationship];
  if ([(ASRelationship *)legacyRelationship isEqualToRelationship:v6])
  {
    legacyRemoteRelationship = self->_legacyRemoteRelationship;
    v8 = [v4 legacyRemoteRelationship];
    if ([(ASRelationship *)legacyRemoteRelationship isEqualToRelationship:v8])
    {
      secureCloudRelationship = self->_secureCloudRelationship;
      v10 = [v4 secureCloudRelationship];
      if ([(ASRelationship *)secureCloudRelationship isEqualToRelationship:v10])
      {
        secureCloudRemoteRelationship = self->_secureCloudRemoteRelationship;
        v12 = [v4 secureCloudRemoteRelationship];
        v13 = [(ASRelationship *)secureCloudRemoteRelationship isEqualToRelationship:v12];
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

- (id)_chosePrimaryRelationshipWithSecureCloudRelationship:(id)a3 legacyRelationship:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 dateForLatestRelationshipStart];
  v8 = [v6 dateForLatestRelationshipEnd];
  v9 = [v5 dateForLatestRelationshipStart];
  v10 = [v5 dateForLatestRelationshipEnd];
  if (([v5 isFriendshipActive] & 1) == 0 && (objc_msgSend(v5, "hasInviteRequestEvent") & 1) == 0 && objc_msgSend(v6, "isFriendshipActive") && objc_msgSend(v10, "hk_isAfterOrEqualToDate:", v7))
  {
    v11 = v5;
LABEL_11:
    v12 = [v11 copy];
    goto LABEL_37;
  }

  if (([v6 isFriendshipActive] & 1) == 0 && (objc_msgSend(v6, "hasInviteRequestEvent") & 1) == 0 && objc_msgSend(v5, "isFriendshipActive") && objc_msgSend(v8, "hk_isAfterOrEqualToDate:", v9))
  {
    v11 = v6;
    goto LABEL_11;
  }

  v13 = [v6 dateForLatestDowngradeCompleted];
  v14 = [v5 dateForLatestMigrationCompleted];
  if ([v5 isFriendshipActive] && objc_msgSend(v5, "secureCloudMigrationCompleted") && (!v8 || objc_msgSend(v9, "hk_isAfterOrEqualToDate:", v8)) && (!v13 || objc_msgSend(v14, "hk_isAfterOrEqualToDate:", v13)))
  {
    v15 = v5;
  }

  else
  {
    if (![v6 isFriendshipActive])
    {
      v27 = v7;
      v16 = [v5 dateForLatestInviteRequestEvent];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v19 = v18;

      v20 = [v6 dateForLatestInviteRequestEvent];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v23 = v22;

      if ([v5 hasInviteRequestEvent] && objc_msgSend(v6, "hasInviteRequestEvent"))
      {
        if ([v19 hk_isAfterOrEqualToDate:v23])
        {
          v24 = v5;
        }

        else
        {
          v24 = v6;
        }
      }

      else
      {
        v25 = [v5 hasInviteRequestEvent];
        v24 = v5;
        if ((v25 & 1) == 0)
        {
          [v6 hasInviteRequestEvent];
          v24 = v6;
        }
      }

      v12 = [v24 copy];

      v7 = v27;
      goto LABEL_36;
    }

    v15 = v6;
  }

  v12 = [v15 copy];
LABEL_36:

LABEL_37:

  return v12;
}

- (id)relationshipForCloudType:(unint64_t)a3
{
  v3 = 8;
  if (a3 == 1)
  {
    v3 = 24;
  }

  return *(&self->super.isa + v3);
}

- (void)updateRelationship:(id)a3 cloudType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 cloudType];
  v7 = 8;
  if (v6 == 1)
  {
    v7 = 24;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v5;
}

- (id)remoteRelationshipForCloudType:(unint64_t)a3
{
  v3 = 16;
  if (a3 == 1)
  {
    v3 = 32;
  }

  return *(&self->super.isa + v3);
}

- (void)updateRemoteRelationship:(id)a3 cloudType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 cloudType];
  v7 = 16;
  if (v6 == 1)
  {
    v7 = 32;
  }

  v8 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v5;
}

- (ASRelationshipStorage)storageWithSynchronizedRelationshipIdentifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [(ASRelationshipStorage *)self copy];
  v3 = [v2 primaryRelationship];
  if ([v3 cloudType])
  {
LABEL_2:

    goto LABEL_3;
  }

  v7 = [v2 legacyRelationship];
  v8 = [v7 UUID];
  v9 = [v2 secureCloudRelationship];
  v10 = [v9 UUID];
  v11 = [v8 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v3 = [v2 secureCloudRelationship];
    v12 = [v2 legacyRelationship];
    v13 = [v12 UUID];
    [v3 setUUID:v13];

    [v2 setSecureCloudRelationship:v3];
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
  v4 = [v2 primaryRemoteRelationship];
  if ([v4 cloudType])
  {
LABEL_4:

    goto LABEL_5;
  }

  v15 = [v2 legacyRemoteRelationship];
  v16 = [v15 UUID];
  v17 = [v2 secureCloudRemoteRelationship];
  v18 = [v17 UUID];
  v19 = [v16 isEqual:v18];

  if ((v19 & 1) == 0)
  {
    v4 = [v2 secureCloudRemoteRelationship];
    v20 = [v2 legacyRemoteRelationship];
    v21 = [v20 UUID];
    [v4 setUUID:v21];

    [v2 setSecureCloudRemoteRelationship:v4];
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