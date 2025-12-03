@interface ASContact
+ (id)contactWithCodableContact:(id)contact;
- (ASContact)contactWithKeys:(id)keys;
- (ASContact)init;
- (ASContact)initWithRelationship:(id)relationship remoteRelationship:(id)remoteRelationship;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContact:(id)contact;
- (NSString)displayName;
- (NSString)primaryDestinationForMessaging;
- (NSUUID)UUID;
- (id)_bestDestinationForContact:(id)contact;
- (id)_bestDestinationFromKnownDestinations;
- (id)copyWithZone:(_NSZone *)zone;
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

  primaryRelationship = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  preferredReachableAddress = [primaryRelationship preferredReachableAddress];

  primaryRelationship2 = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  cloudKitAddress = [primaryRelationship2 cloudKitAddress];

  if (!cloudKitAddress)
  {
    if (!preferredReachableAddress)
    {
      anyObject = [(NSSet *)self->_destinations anyObject];
      v13 = anyObject;
      v14 = &stru_2850D2AA8;
      if (anyObject)
      {
        v14 = anyObject;
      }

      v4 = v14;

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (ASDestinationIsMako(cloudKitAddress, v10) && preferredReachableAddress)
  {
LABEL_14:
    v11 = preferredReachableAddress;
    goto LABEL_15;
  }

  v11 = cloudKitAddress;
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
    legacyRelationship = [(ASRelationshipStorage *)self->_relationshipStorage legacyRelationship];
    uUID = [legacyRelationship UUID];
    secureCloudRelationship = [(ASRelationshipStorage *)self->_relationshipStorage secureCloudRelationship];
    uUID2 = [secureCloudRelationship UUID];
    v7 = [uUID isEqual:uUID2];

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

  primaryRelationship = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  uUID3 = [primaryRelationship UUID];

  return uUID3;
}

- (ASContact)init
{
  v3 = objc_alloc_init(ASRelationship);
  v4 = objc_alloc_init(ASRelationship);
  v5 = [(ASContact *)self initWithRelationship:v3 remoteRelationship:v4];

  return v5;
}

+ (id)contactWithCodableContact:(id)contact
{
  v30 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = objc_alloc_init(ASContact);
  linkedContactStoreIdentifier = [contactCopy linkedContactStoreIdentifier];
  [(ASContact *)v4 setLinkedContactStoreIdentifier:linkedContactStoreIdentifier];

  fullName = [contactCopy fullName];
  [(ASContact *)v4 setFullName:fullName];

  shortName = [contactCopy shortName];
  [(ASContact *)v4 setShortName:shortName];

  destinations = [contactCopy destinations];
  v9 = ASConsolidateAddresses(destinations);
  [(ASContact *)v4 setDestinations:v9];

  -[ASContact setShouldRemove:](v4, "setShouldRemove:", [contactCopy shouldRemove]);
  if (ASSecureCloudEnabled())
  {
    v10 = objc_opt_class();
    pendingRelationshipShareItem = [contactCopy pendingRelationshipShareItem];
    v12 = ASSecureUnarchiveClassWithDataAndStrictness(v10, pendingRelationshipShareItem, 1);
    [(ASContact *)v4 setPendingRelationshipShareItem:v12];

    if ([contactCopy hasPendingLegacyShareLocations])
    {
      v13 = [ASCodableShareLocations alloc];
      pendingLegacyShareLocations = [contactCopy pendingLegacyShareLocations];
      v15 = [(ASCodableShareLocations *)v13 initWithData:pendingLegacyShareLocations];
      [(ASContact *)v4 setPendingLegacyShareLocations:v15];
    }

    else
    {
      [(ASContact *)v4 setPendingLegacyShareLocations:0];
    }
  }

  if ([contactCopy hasRelationshipStorage])
  {
    relationshipStorage = [contactCopy relationshipStorage];
    v17 = [ASRelationshipStorage relationshipStorageWithCodableRelationshipStorage:relationshipStorage];
    [(ASContact *)v4 setRelationshipStorage:v17];
  }

  else
  {
    v18 = objc_alloc_init(ASRelationshipStorage);
    relationshipContainer = [contactCopy relationshipContainer];

    if (relationshipContainer)
    {
      relationshipContainer2 = [contactCopy relationshipContainer];
      v21 = [ASRelationship relationshipWithCodableRelationshipContainer:relationshipContainer2];
      [(ASRelationshipStorage *)v18 setLegacyRelationship:v21];
    }

    remoteRelationshipContainer = [contactCopy remoteRelationshipContainer];

    if (remoteRelationshipContainer)
    {
      remoteRelationshipContainer2 = [contactCopy remoteRelationshipContainer];
      v24 = [ASRelationship relationshipWithCodableRelationshipContainer:remoteRelationshipContainer2];
      [(ASRelationshipStorage *)v18 setLegacyRemoteRelationship:v24];
    }

    relationshipStorage = [(ASRelationshipStorage *)v18 storageWithSynchronizedRelationshipIdentifiers];

    [(ASContact *)v4 setRelationshipStorage:relationshipStorage];
    ASLoggingInitialize();
    v25 = ASLogRelationships;
    if (os_log_type_enabled(ASLogRelationships, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = relationshipStorage;
      _os_log_impl(&dword_23E4FA000, v25, OS_LOG_TYPE_DEFAULT, "Migrated relationships to storage %@", &v28, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v4;
}

- (ASContact)initWithRelationship:(id)relationship remoteRelationship:(id)remoteRelationship
{
  relationshipCopy = relationship;
  remoteRelationshipCopy = remoteRelationship;
  v14.receiver = self;
  v14.super_class = ASContact;
  v8 = [(ASContact *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    destinations = v8->_destinations;
    v8->_destinations = v9;

    v11 = [[ASRelationshipStorage alloc] initWithRelationship:relationshipCopy remoteRelationship:remoteRelationshipCopy];
    relationshipStorage = v8->_relationshipStorage;
    v8->_relationshipStorage = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUID = [(ASContact *)self UUID];
  v9 = *&self->_linkedContactStoreIdentifier;
  shortName = self->_shortName;
  displayName = [(ASContact *)self displayName];
  v7 = [v3 stringWithFormat:@"Contact uuid=%@ contactStoreId=%@ fullName=%@ shortName=%@ displayName=%@ destinations=%@", uUID, v9, shortName, displayName, self->_destinations];

  return v7;
}

- (id)fullDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  fullName = self->_fullName;
  uUID = [(ASContact *)self UUID];
  [v3 appendFormat:@"-------- Contact - %@ (%@) --------\n", fullName, uUID];

  [v3 appendFormat:@"Full Name: %@\n", self->_fullName];
  [v3 appendFormat:@"Short Name: %@\n", self->_shortName];
  displayName = [(ASContact *)self displayName];
  [v3 appendFormat:@"Display Name: %@\n", displayName];

  [v3 appendFormat:@"Destinations: %@\n", self->_destinations];
  primaryDestinationForMessaging = [(ASContact *)self primaryDestinationForMessaging];
  [v3 appendFormat:@"Primary Destination For Messaging: %@\n", primaryDestinationForMessaging];

  v8 = NSStringFromASCloudType([(ASContact *)self cloudType]);
  [v3 appendFormat:@"Cloud Type: %@\n", v8];

  pendingRelationshipShareItem = [(ASContact *)self pendingRelationshipShareItem];
  [v3 appendFormat:@"Pending Secure Cloud Share Item: %@\n", pendingRelationshipShareItem];

  pendingLegacyShareLocations = [(ASContact *)self pendingLegacyShareLocations];
  [v3 appendFormat:@"Pending Legacy Share Locations: %@\n", pendingLegacyShareLocations];

  v11 = [v3 copy];

  return v11;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASContact *)self isEqualToContact:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToContact:(id)contact
{
  contactCopy = contact;
  linkedContactStoreIdentifier = self->_linkedContactStoreIdentifier;
  linkedContactStoreIdentifier = [contactCopy linkedContactStoreIdentifier];
  if (ASStringsAreEqual(linkedContactStoreIdentifier, linkedContactStoreIdentifier))
  {
    fullName = self->_fullName;
    fullName = [contactCopy fullName];
    if (ASStringsAreEqual(fullName, fullName))
    {
      shortName = self->_shortName;
      shortName = [contactCopy shortName];
      if (ASStringsAreEqual(shortName, shortName))
      {
        destinations = self->_destinations;
        destinations = [contactCopy destinations];
        if ([(NSSet *)destinations isEqualToSet:destinations])
        {
          relationshipStorage = self->_relationshipStorage;
          relationshipStorage = [contactCopy relationshipStorage];
          if ([(ASRelationshipStorage *)relationshipStorage isEqualToRelationshipStorage:relationshipStorage])
          {
            pendingRelationshipShareItem = self->_pendingRelationshipShareItem;
            pendingRelationshipShareItem = [contactCopy pendingRelationshipShareItem];
            if (ASObjectsAreEqualOrNil(pendingRelationshipShareItem, pendingRelationshipShareItem))
            {
              pendingLegacyShareLocations = self->_pendingLegacyShareLocations;
              pendingLegacyShareLocations = [contactCopy pendingLegacyShareLocations];
              v19 = ASObjectsAreEqualOrNil(pendingLegacyShareLocations, pendingLegacyShareLocations);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v5 + 24), self->_linkedContactStoreIdentifier);
  objc_storeStrong((v5 + 32), self->_fullName);
  objc_storeStrong((v5 + 40), self->_shortName);
  v6 = [(NSSet *)self->_destinations copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  *(v5 + 16) = self->_shouldRemove;
  v8 = [(ASRelationshipStorage *)self->_relationshipStorage copyWithZone:zone];
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
    uUID = [(ASContact *)self UUID];
    *buf = 138543618;
    v18 = uUID;
    v19 = 2112;
    selfCopy = self;
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
    _bestDestinationFromKnownDestinations = [(ASContact *)self _bestDestinationFromKnownDestinations];
    v10 = _bestDestinationFromKnownDestinations;
    goto LABEL_13;
  }

  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E4FA000, v11, OS_LOG_TYPE_DEFAULT, "Found a destination on linked contact, sanitizing", buf, 2u);
  }

  _bestDestinationFromKnownDestinations = v10;
LABEL_13:
  v13 = ASContactSanitizedDestination(_bestDestinationFromKnownDestinations);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (ASContact)contactWithKeys:(id)keys
{
  keysCopy = keys;
  linkedContactStoreIdentifier = [(ASContact *)self linkedContactStoreIdentifier];

  if (linkedContactStoreIdentifier)
  {
    contactStore = [(ASContact *)self contactStore];
    if (!contactStore)
    {
      contactStore = objc_alloc_init(MEMORY[0x277CBDAB8]);
    }

    linkedContactStoreIdentifier2 = [(ASContact *)self linkedContactStoreIdentifier];
    v13 = 0;
    v8 = [contactStore unifiedContactWithIdentifier:linkedContactStoreIdentifier2 keysToFetch:keysCopy error:&v13];
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

  primaryRelationship = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  preferredReachableAddress = [primaryRelationship preferredReachableAddress];
  if (preferredReachableAddress)
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

  preferredReachableAddress = [primaryRelationship cloudKitAddress];
  if (preferredReachableAddress)
  {
LABEL_7:
    anyObject = preferredReachableAddress;
  }

  else
  {
    ASLoggingInitialize();
    v9 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(ASContact *)v9 _bestDestinationFromKnownDestinations];
    }

    destinations = [(ASContact *)self destinations];
    anyObject = [destinations anyObject];
  }

  return anyObject;
}

- (id)_bestDestinationForContact:(id)contact
{
  v37 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  ASLoggingInitialize();
  v6 = ASLogDefault;
  if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    displayName = [(ASContact *)self displayName];
    *buf = 138412290;
    v36 = displayName;
    _os_log_impl(&dword_23E4FA000, v7, OS_LOG_TYPE_DEFAULT, "Looking for best destination for CNContact: %@", buf, 0xCu);
  }

  phoneNumbers = [contactCopy phoneNumbers];
  v10 = [phoneNumbers hk_map:&__block_literal_global_4];

  primaryRelationship = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  preferredReachableAddress = [primaryRelationship preferredReachableAddress];
  if (preferredReachableAddress)
  {
    preferredReachableAddress2 = [primaryRelationship preferredReachableAddress];
    v34 = preferredReachableAddress2;
    preferredReachableAddress4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    firstObject = _FindIntersectingDestination(v10, preferredReachableAddress4);
  }

  else
  {
    firstObject = _FindIntersectingDestination(v10, MEMORY[0x277CBEBF8]);
  }

  if (firstObject)
  {
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = firstObject;
    v16 = "Found a phone number that matches preferredReachableAddress, selecting: %@";
LABEL_15:
    _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    goto LABEL_16;
  }

  addresses = [primaryRelationship addresses];
  allObjects = [addresses allObjects];
  firstObject = _FindIntersectingDestination(v10, allObjects);

  if (firstObject)
  {
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = firstObject;
    v16 = "Found a phone number that matches the address set, selecting: %@";
    goto LABEL_15;
  }

  if ([v10 count])
  {
    firstObject = [v10 firstObject];
    ASLoggingInitialize();
    v15 = ASLogDefault;
    if (!os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v36 = firstObject;
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

  emailAddresses = [contactCopy emailAddresses];
  v23 = [emailAddresses hk_map:&__block_literal_global_337];

  preferredReachableAddress3 = [primaryRelationship preferredReachableAddress];
  if (preferredReachableAddress3)
  {
    preferredReachableAddress4 = [primaryRelationship preferredReachableAddress];
    v33 = preferredReachableAddress4;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    firstObject = _FindIntersectingDestination(v23, v25);
  }

  else
  {
    firstObject = _FindIntersectingDestination(v23, MEMORY[0x277CBEBF8]);
  }

  if (firstObject)
  {
    ASLoggingInitialize();
    v26 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = firstObject;
      v27 = "Found email that matches preferredReachableAddress, selecting: %@";
LABEL_41:
      _os_log_impl(&dword_23E4FA000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    }
  }

  else
  {
    cloudKitAddress = [primaryRelationship cloudKitAddress];
    if (cloudKitAddress)
    {
      preferredReachableAddress4 = [primaryRelationship cloudKitAddress];
      v32 = preferredReachableAddress4;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    }

    else
    {
      v29 = MEMORY[0x277CBEBF8];
    }

    firstObject = _FindIntersectingDestination(v23, v29);
    if (cloudKitAddress)
    {
    }

    if (firstObject)
    {
      ASLoggingInitialize();
      v26 = ASLogDefault;
      if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = firstObject;
        v27 = "Found email that matches the CloudKitAddress, selecting: %@";
        goto LABEL_41;
      }
    }

    else
    {
      addresses2 = [primaryRelationship addresses];
      allObjects2 = [addresses2 allObjects];
      firstObject = _FindIntersectingDestination(v23, allObjects2);

      if (firstObject)
      {
        ASLoggingInitialize();
        v26 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = firstObject;
          v27 = "Found email that matches the address set, selecting: %@";
          goto LABEL_41;
        }
      }

      else
      {
        if (![v23 count])
        {
          firstObject = 0;
          goto LABEL_42;
        }

        firstObject = [v23 firstObject];
        ASLoggingInitialize();
        v26 = ASLogDefault;
        if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = firstObject;
          v27 = "Has a non-matching email, selecting: %@";
          goto LABEL_41;
        }
      }
    }
  }

LABEL_42:

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];

  return firstObject;
}

id __40__ASContact__bestDestinationForContact___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

- (unint64_t)cloudType
{
  primaryRelationship = [(ASRelationshipStorage *)self->_relationshipStorage primaryRelationship];
  cloudType = [primaryRelationship cloudType];

  return cloudType;
}

- (void)UUID
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_23E4FA000, a2, OS_LOG_TYPE_ERROR, "Relationship storage has mismatched UUIDs: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)primaryDestinationForMessaging
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  linkedContactStoreIdentifier = [a2 linkedContactStoreIdentifier];
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