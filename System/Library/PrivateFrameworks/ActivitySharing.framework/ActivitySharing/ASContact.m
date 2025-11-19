@interface ASContact
+ (id)contactWithCodableContact:(id)a3;
- (ASContact)contactWithKeys:(id)a3;
- (ASContact)init;
- (ASContact)initWithRelationship:(id)a3 remoteRelationship:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContact:(id)a3;
- (NSString)displayName;
- (NSString)primaryDestinationForMessaging;
- (NSUUID)UUID;
- (id)_bestDestinationForContact:(id)a3;
- (id)_bestDestinationFromKnownDestinations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fullDescription;
- (unint64_t)cloudType;
- (void)UUID;
- (void)primaryDestinationForMessaging;
@end

@implementation ASContact

- (NSString)displayName
{
  if ([(NSString *)self->_shortName length])
  {
    shortName = self->_shortName;
LABEL_5:
    v4 = shortName;
    goto LABEL_6;
  }

  if ([(NSString *)self->_fullName length])
  {
    shortName = self->_fullName;
    goto LABEL_5;
  }

  v6 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v7 = [v6 preferredReachableAddress];

  v8 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v9 = [v8 cloudKitAddress];

  if (!v9)
  {
    if (!v7)
    {
      v12 = [(NSSet *)self->_destinations anyObject];
      v13 = v12;
      v14 = &stru_2850D2AA8;
      if (v12)
      {
        v14 = v12;
      }

      v4 = v14;

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (ASDestinationIsMako(v9, v10) && v7)
  {
LABEL_14:
    v11 = v7;
    goto LABEL_15;
  }

  v11 = v9;
LABEL_15:
  v4 = v11;
LABEL_16:

LABEL_6:

  return v4;
}

- (NSUUID)UUID
{
  if (ASSecureCloudEnabled())
  {
    v3 = [(ASRelationshipStorage *)self->_relationshipStorage legacyRelationship];
    v4 = [v3 UUID];
    v5 = [(ASRelationshipStorage *)self->_relationshipStorage secureCloudRelationship];
    v6 = [v5 UUID];
    v7 = [v4 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      ASLoggingInitialize();
      v8 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        [(ASContact *)&self->_relationshipStorage UUID];
      }
    }
  }

  v9 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v10 = [v9 UUID];

  return v10;
}

- (ASContact)init
{
  v3 = objc_alloc_init(ASRelationship);
  v4 = objc_alloc_init(ASRelationship);
  v5 = [(ASContact *)self initWithRelationship:v3 remoteRelationship:v4];

  return v5;
}

+ (id)contactWithCodableContact:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(ASContact);
  v5 = [v3 linkedContactStoreIdentifier];
  [(ASContact *)v4 setLinkedContactStoreIdentifier:v5];

  v6 = [v3 fullName];
  [(ASContact *)v4 setFullName:v6];

  v7 = [v3 shortName];
  [(ASContact *)v4 setShortName:v7];

  v8 = [v3 destinations];
  v9 = ASConsolidateAddresses(v8);
  [(ASContact *)v4 setDestinations:v9];

  -[ASContact setShouldRemove:](v4, "setShouldRemove:", [v3 shouldRemove]);
  if (ASSecureCloudEnabled())
  {
    v10 = objc_opt_class();
    v11 = [v3 pendingRelationshipShareItem];
    v12 = ASSecureUnarchiveClassWithDataAndStrictness(v10, v11, 1);
    [(ASContact *)v4 setPendingRelationshipShareItem:v12];

    if ([v3 hasPendingLegacyShareLocations])
    {
      v13 = [ASCodableShareLocations alloc];
      v14 = [v3 pendingLegacyShareLocations];
      v15 = [(ASCodableShareLocations *)v13 initWithData:v14];
      [(ASContact *)v4 setPendingLegacyShareLocations:v15];
    }

    else
    {
      [(ASContact *)v4 setPendingLegacyShareLocations:0];
    }
  }

  if ([v3 hasRelationshipStorage])
  {
    v16 = [v3 relationshipStorage];
    v17 = [ASRelationshipStorage relationshipStorageWithCodableRelationshipStorage:v16];
    [(ASContact *)v4 setRelationshipStorage:v17];
  }

  else
  {
    v18 = objc_alloc_init(ASRelationshipStorage);
    v19 = [v3 relationshipContainer];

    if (v19)
    {
      v20 = [v3 relationshipContainer];
      v21 = [ASRelationship relationshipWithCodableRelationshipContainer:v20];
      [(ASRelationshipStorage *)v18 setLegacyRelationship:v21];
    }

    v22 = [v3 remoteRelationshipContainer];

    if (v22)
    {
      v23 = [v3 remoteRelationshipContainer];
      v24 = [ASRelationship relationshipWithCodableRelationshipContainer:v23];
      [(ASRelationshipStorage *)v18 setLegacyRemoteRelationship:v24];
    }

    v16 = [(ASRelationshipStorage *)v18 storageWithSynchronizedRelationshipIdentifiers];

    [(ASContact *)v4 setRelationshipStorage:v16];
    ASLoggingInitialize();
    v25 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v16;
      _os_log_impl(&dword_23E4FA000, v25, OS_LOG_TYPE_DEFAULT, "Migrated relationships to storage %@", &v28, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (ASContact)initWithRelationship:(id)a3 remoteRelationship:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASContact;
  v8 = [(ASContact *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    destinations = v8->_destinations;
    v8->_destinations = v9;

    v11 = [[ASRelationshipStorage alloc] initWithRelationship:v6 remoteRelationship:v7];
    relationshipStorage = v8->_relationshipStorage;
    v8->_relationshipStorage = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ASContact *)self UUID];
  v9 = *&self->_linkedContactStoreIdentifier;
  shortName = self->_shortName;
  v6 = [(ASContact *)self displayName];
  v7 = [v3 stringWithFormat:@"Contact uuid=%@ contactStoreId=%@ fullName=%@ shortName=%@ displayName=%@ destinations=%@", v4, v9, shortName, v6, self->_destinations];

  return v7;
}

- (id)fullDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  fullName = self->_fullName;
  v5 = [(ASContact *)self UUID];
  [v3 appendFormat:@"-------- Contact - %@ (%@) --------\n", fullName, v5];

  [v3 appendFormat:@"Full Name: %@\n", self->_fullName];
  [v3 appendFormat:@"Short Name: %@\n", self->_shortName];
  v6 = [(ASContact *)self displayName];
  [v3 appendFormat:@"Display Name: %@\n", v6];

  [v3 appendFormat:@"Destinations: %@\n", self->_destinations];
  v7 = [(ASContact *)self primaryDestinationForMessaging];
  [v3 appendFormat:@"Primary Destination For Messaging: %@\n", v7];

  v8 = NSStringFromASCloudType([(ASContact *)self cloudType]);
  [v3 appendFormat:@"Cloud Type: %@\n", v8];

  v9 = [(ASContact *)self pendingRelationshipShareItem];
  [v3 appendFormat:@"Pending Secure Cloud Share Item: %@\n", v9];

  v10 = [(ASContact *)self pendingLegacyShareLocations];
  [v3 appendFormat:@"Pending Legacy Share Locations: %@\n", v10];

  v11 = [v3 copy];

  return v11;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASContact *)self isEqualToContact:v4];
  }

  return v5;
}

- (BOOL)isEqualToContact:(id)a3
{
  v4 = a3;
  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  v6 = [v4 linkedContactStoreIdentifier];
  if (ASStringsAreEqual(linkedContactStoreIdentifier, v6))
  {
    fullName = self->_fullName;
    v8 = [v4 fullName];
    if (ASStringsAreEqual(fullName, v8))
    {
      shortName = self->_shortName;
      v10 = [v4 shortName];
      if (ASStringsAreEqual(shortName, v10))
      {
        destinations = self->_destinations;
        v12 = [v4 destinations];
        if ([(NSSet *)destinations isEqualToSet:v12])
        {
          relationshipStorage = self->_relationshipStorage;
          v14 = [v4 relationshipStorage];
          if ([(ASRelationshipStorage *)relationshipStorage isEqualToRelationshipStorage:v14])
          {
            pendingRelationshipShareItem = self->_pendingRelationshipShareItem;
            v16 = [v4 pendingRelationshipShareItem];
            if (ASObjectsAreEqualOrNil(pendingRelationshipShareItem, v16))
            {
              pendingLegacyShareLocations = self->_pendingLegacyShareLocations;
              v18 = [v4 pendingLegacyShareLocations];
              v19 = ASObjectsAreEqualOrNil(pendingLegacyShareLocations, v18);
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v5 + 24), self->_linkedContactStoreIdentifier);
  objc_storeStrong((v5 + 32), self->_fullName);
  objc_storeStrong((v5 + 40), self->_shortName);
  v6 = [(NSSet *)self->_destinations copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  *(v5 + 16) = self->_shouldRemove;
  v8 = [(ASRelationshipStorage *)self->_relationshipStorage copyWithZone:a3];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  objc_storeStrong((v5 + 56), self->_pendingRelationshipShareItem);
  objc_storeStrong((v5 + 64), self->_pendingLegacyShareLocations);
  return v5;
}

- (NSString)primaryDestinationForMessaging
{
  v21 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(ASContact *)self UUID];
    *buf = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = self;
    _os_log_impl(&dword_23E4FA000, v4, OS_LOG_TYPE_DEFAULT, "Looking for primary destination for messaging for contact %{public}@ - %@", buf, 0x16u);
  }

  v6 = *MEMORY[0x277CBD098];
  v16[0] = *MEMORY[0x277CBCFC0];
  v16[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [(ASContact *)self contactWithKeys:v7];

  if (!v8)
  {
    goto LABEL_12;
  }

  ASLoggingInitialize();
  v9 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v9, OS_LOG_TYPE_DEFAULT, "Found linked contact, choosing best destination", buf, 2u);
  }

  v10 = [(ASContact *)self _bestDestinationForContact:v8];
  ASLoggingInitialize();
  v11 = ASLogDefault;
  if (!v10)
  {
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(ASContact *)v11 primaryDestinationForMessaging];
    }

LABEL_12:
    v12 = [(ASContact *)self _bestDestinationFromKnownDestinations];
    v10 = v12;
    goto LABEL_13;
  }

  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Found a destination on linked contact, sanitizing", buf, 2u);
  }

  v12 = v10;
LABEL_13:
  v13 = ASContactSanitizedDestination(v12);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (ASContact)contactWithKeys:(id)a3
{
  v4 = a3;
  v5 = [(ASContact *)self linkedContactStoreIdentifier];

  if (v5)
  {
    v6 = [(ASContact *)self contactStore];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    v7 = [(ASContact *)self linkedContactStoreIdentifier];
    v13 = 0;
    v8 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:v4 error:&v13];
    v9 = v13;

    if (!v8 || v9)
    {
      ASLoggingInitialize();
      v10 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
      {
        [(ASContact *)v10 contactWithKeys:v9];
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    v11 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(ASContact *)v11 contactWithKeys:?];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_bestDestinationFromKnownDestinations
{
  ASLoggingInitialize();
  v3 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v3, OS_LOG_TYPE_DEFAULT, "Choosing the best destination from known relationship destinations", buf, 2u);
  }

  v4 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v5 = [v4 preferredReachableAddress];
  if (v5)
  {
    goto LABEL_7;
  }

  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23E4FA000, v6, OS_LOG_TYPE_DEFAULT, "No preferred reachable address, falling back to CloudKit address", v11, 2u);
  }

  v5 = [v4 cloudKitAddress];
  if (v5)
  {
LABEL_7:
    v7 = v5;
  }

  else
  {
    ASLoggingInitialize();
    v9 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(ASContact *)v9 _bestDestinationFromKnownDestinations];
    }

    v10 = [(ASContact *)self destinations];
    v7 = [v10 anyObject];
  }

  return v7;
}

- (id)_bestDestinationForContact:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(ASContact *)self displayName];
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Looking for best destination for CNContact: %@", buf, 0xCu);
  }

  v9 = [v5 phoneNumbers];
  v10 = [v9 hk_map:&__block_literal_global_4];

  v11 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v12 = [v11 preferredReachableAddress];
  if (v12)
  {
    v13 = [v11 preferredReachableAddress];
    v34 = v13;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v14 = _FindIntersectingDestination(v10, v3);
  }

  else
  {
    v14 = _FindIntersectingDestination(v10, MEMORY[0x277CBEBF8]);
  }

  if (v14)
  {
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = v14;
    v16 = "Found a phone number that matches preferredReachableAddress, selecting: %@";
LABEL_15:
    _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_16;
  }

  v17 = [v11 addresses];
  v18 = [v17 allObjects];
  v14 = _FindIntersectingDestination(v10, v18);

  if (v14)
  {
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = v14;
    v16 = "Found a phone number that matches the address set, selecting: %@";
    goto LABEL_15;
  }

  if ([v10 count])
  {
    v14 = [v10 firstObject];
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = v14;
    v16 = "Has a non-matching phone number, selecting: %@";
    goto LABEL_15;
  }

  ASLoggingInitialize();
  v21 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v21, OS_LOG_TYPE_DEFAULT, "Contact has no phone numbers, looking for email addresses", buf, 2u);
  }

  v22 = [v5 emailAddresses];
  v23 = [v22 hk_map:&__block_literal_global_337];

  v24 = [v11 preferredReachableAddress];
  if (v24)
  {
    v3 = [v11 preferredReachableAddress];
    v33 = v3;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v14 = _FindIntersectingDestination(v23, v25);
  }

  else
  {
    v14 = _FindIntersectingDestination(v23, MEMORY[0x277CBEBF8]);
  }

  if (v14)
  {
    ASLoggingInitialize();
    v26 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v14;
      v27 = "Found email that matches preferredReachableAddress, selecting: %@";
LABEL_41:
      _os_log_impl(&dword_23E4FA000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    }
  }

  else
  {
    v28 = [v11 cloudKitAddress];
    if (v28)
    {
      v3 = [v11 cloudKitAddress];
      v32 = v3;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    }

    else
    {
      v29 = MEMORY[0x277CBEBF8];
    }

    v14 = _FindIntersectingDestination(v23, v29);
    if (v28)
    {
    }

    if (v14)
    {
      ASLoggingInitialize();
      v26 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v14;
        v27 = "Found email that matches the CloudKitAddress, selecting: %@";
        goto LABEL_41;
      }
    }

    else
    {
      v30 = [v11 addresses];
      v31 = [v30 allObjects];
      v14 = _FindIntersectingDestination(v23, v31);

      if (v14)
      {
        ASLoggingInitialize();
        v26 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v14;
          v27 = "Found email that matches the address set, selecting: %@";
          goto LABEL_41;
        }
      }

      else
      {
        if (![v23 count])
        {
          v14 = 0;
          goto LABEL_42;
        }

        v14 = [v23 firstObject];
        ASLoggingInitialize();
        v26 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v14;
          v27 = "Has a non-matching email, selecting: %@";
          goto LABEL_41;
        }
      }
    }
  }

LABEL_42:

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

id __40__ASContact__bestDestinationForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

- (unint64_t)cloudType
{
  v2 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  v3 = [v2 cloudType];

  return v3;
}

- (void)UUID
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Relationship storage has mismatched UUIDs: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)primaryDestinationForMessaging
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 linkedContactStoreIdentifier];
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v5, v6, "Found a CNContactStore entry with no known destinations for ID: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)contactWithKeys:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 linkedContactStoreIdentifier];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_23E4FA000, v5, OS_LOG_TYPE_ERROR, "Error fetching contact %@, error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contactWithKeys:(void *)a1 .cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 UUID];
  OUTLINED_FUNCTION_4(&dword_23E4FA000, v5, v6, "Cannot fetch contact record for friend with UUID: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end