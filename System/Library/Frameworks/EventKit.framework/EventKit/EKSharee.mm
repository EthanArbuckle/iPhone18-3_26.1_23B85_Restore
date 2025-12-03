@interface EKSharee
+ (id)_urlForEmailAddress:(id)address andPhoneNumber:(id)number;
+ (id)knownIdentityKeysForComparison;
+ (id)knownSingleValueKeysForComparison;
+ (id)shareeWithName:(id)name emailAddress:(id)address;
+ (id)shareeWithName:(id)name emailAddress:(id)address phoneNumber:(id)number;
+ (id)shareeWithName:(id)name emailAddress:(id)address phoneNumber:(id)number externalID:(id)d;
+ (id)shareeWithName:(id)name phoneNumber:(id)number;
+ (id)shareeWithName:(id)name url:(id)url;
+ (id)shareeWithUUID:(id)d name:(id)name emailAddress:(id)address phoneNumber:(id)number;
+ (id)statusStringFromEnum:(unint64_t)enum;
+ (int)_calShareeAccessLevelFromEKShareeAccessLevel:(unint64_t)level;
+ (int)_calShareeStatusFromEKShareeStatus:(unint64_t)status;
+ (unint64_t)statusEnumFromString:(id)string;
- (BOOL)isCurrentUserForSharing;
- (BOOL)isEqualToSharee:(id)sharee;
- (BOOL)shareeMuteRemoval;
- (EKSharee)init;
- (EKSharee)initWithName:(id)name url:(id)url externalID:(id)d;
- (NSPredicate)contactPredicate;
- (NSString)description;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (id)URL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayName;
- (id)existingContact;
- (int)shareeAccessLevelRaw;
- (int)shareeStatusRaw;
- (unint64_t)shareeAccessLevel;
- (unint64_t)shareeStatus;
- (void)setEmailAddress:(id)address;
- (void)setPhoneNumber:(id)number;
- (void)setShareeAccessLevel:(unint64_t)level;
- (void)setShareeStatus:(unint64_t)status;
@end

@implementation EKSharee

- (NSPredicate)contactPredicate
{
  owner = [(EKSharee *)self owner];
  source = [owner source];
  isFacebookSource = [source isFacebookSource];

  if (isFacebookSource)
  {
    address = [(EKSharee *)self address];
    if (address)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:address];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  v9 = MEMORY[0x1E695CD58];
  name = [(EKSharee *)self name];
  emailAddress = [(EKSharee *)self emailAddress];
  v12 = [v9 predicateForContactMatchingEKParticipantWithName:name emailAddress:emailAddress URL:v7 predicateDescription:v8];

  return v12;
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_9 != -1)
  {
    +[EKSharee knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_9;

  return v3;
}

void __42__EKSharee_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_9;
  knownIdentityKeysForComparison_keys_9 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_8 != -1)
  {
    +[EKSharee knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_8;

  return v3;
}

void __45__EKSharee_knownSingleValueKeysForComparison__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992C78];
  v6[0] = *MEMORY[0x1E6992C70];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992C88];
  v6[2] = *MEMORY[0x1E6992C80];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6992C98];
  v6[4] = *MEMORY[0x1E6992C68];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = knownSingleValueKeysForComparison_keys_8;
  knownSingleValueKeysForComparison_keys_8 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)shareeWithName:(id)name emailAddress:(id)address
{
  v6 = MEMORY[0x1E695DFF8];
  nameCopy = name;
  stringAddingMailto = [address stringAddingMailto];
  v9 = [v6 URLWithString:stringAddingMailto];

  v10 = [self shareeWithName:nameCopy url:v9];

  return v10;
}

+ (id)shareeWithName:(id)name emailAddress:(id)address phoneNumber:(id)number
{
  nameCopy = name;
  v9 = [self _urlForEmailAddress:address andPhoneNumber:number];
  v10 = [[self alloc] initWithName:nameCopy url:v9];

  return v10;
}

+ (id)shareeWithName:(id)name phoneNumber:(id)number
{
  v6 = MEMORY[0x1E695DFF8];
  nameCopy = name;
  stringAddingTel = [number stringAddingTel];
  v9 = [v6 URLWithString:stringAddingTel];

  v10 = [self shareeWithName:nameCopy url:v9];

  return v10;
}

+ (id)shareeWithName:(id)name url:(id)url
{
  urlCopy = url;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy url:urlCopy];

  return v8;
}

+ (id)shareeWithName:(id)name emailAddress:(id)address phoneNumber:(id)number externalID:(id)d
{
  dCopy = d;
  nameCopy = name;
  v12 = [self _urlForEmailAddress:address andPhoneNumber:number];
  v13 = [[self alloc] initWithName:nameCopy url:v12 externalID:dCopy];

  return v13;
}

+ (id)_urlForEmailAddress:(id)address andPhoneNumber:(id)number
{
  addressCopy = address;
  numberCopy = number;
  v7 = numberCopy;
  if (addressCopy)
  {
    v8 = MEMORY[0x1E695DFF8];
    stringAddingMailto = [addressCopy stringAddingMailto];
LABEL_5:
    v10 = stringAddingMailto;
    v11 = [v8 URLWithString:stringAddingMailto];

    goto LABEL_6;
  }

  if (numberCopy)
  {
    v8 = MEMORY[0x1E695DFF8];
    stringAddingMailto = [numberCopy stringAddingTel];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (id)shareeWithUUID:(id)d name:(id)name emailAddress:(id)address phoneNumber:(id)number
{
  dCopy = d;
  v11 = [self shareeWithName:name emailAddress:address phoneNumber:number];
  [v11 setUUID:dCopy];

  return v11;
}

- (EKSharee)init
{
  v5.receiver = self;
  v5.super_class = EKSharee;
  v2 = [(EKObject *)&v5 init];
  if (v2)
  {
    v3 = EKUUIDString();
    [(EKSharee *)v2 setUUID:v3];
  }

  return v2;
}

- (EKSharee)initWithName:(id)name url:(id)url externalID:(id)d
{
  nameCopy = name;
  urlCopy = url;
  dCopy = d;
  v11 = [(EKSharee *)self init];
  v12 = v11;
  if (v11)
  {
    [(EKSharee *)v11 setName:nameCopy];
    absoluteString = [urlCopy absoluteString];
    [(EKSharee *)v12 setAddress:absoluteString];

    [(EKSharee *)v12 setExternalID:dCopy];
    [(EKSharee *)v12 setShareeStatus:5];
    [(EKSharee *)v12 setShareeAccessLevel:2];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v10.receiver = self;
    v10.super_class = EKSharee;
    return [(EKObject *)&v10 copyWithZone:zone];
  }

  else
  {
    v5 = objc_alloc_init(EKSharee);
    if (v5)
    {
      name = [(EKSharee *)self name];
      [(EKSharee *)v5 setName:name];

      address = [(EKSharee *)self address];
      [(EKSharee *)v5 setAddress:address];

      externalID = [(EKSharee *)self externalID];
      [(EKSharee *)v5 setExternalID:externalID];

      [(EKSharee *)v5 setShareeStatusRaw:[(EKSharee *)self shareeStatusRaw]];
      [(EKSharee *)v5 setShareeAccessLevelRaw:[(EKSharee *)self shareeAccessLevelRaw]];
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKSharee *)self UUID];
  name = [(EKSharee *)self name];
  emailAddress = [(EKSharee *)self emailAddress];
  v8 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; status = %lu; accessLevel = %lu;}", v4, self, uUID, name, emailAddress, -[EKSharee shareeStatus](self, "shareeStatus"), -[EKSharee shareeAccessLevel](self, "shareeAccessLevel")];;

  return v8;
}

+ (int)_calShareeStatusFromEKShareeStatus:(unint64_t)status
{
  if (status < 7)
  {
    return dword_1A81C3E48[status];
  }

  v5 = EKLogHandle;
  result = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    [(EKSharee *)status _calShareeStatusFromEKShareeStatus:v5, v6, v7, v8, v9, v10, v11];
    return 0;
  }

  return result;
}

+ (int)_calShareeAccessLevelFromEKShareeAccessLevel:(unint64_t)level
{
  levelCopy = level;
  if (level >= 4)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKSharee *)levelCopy _calShareeAccessLevelFromEKShareeAccessLevel:v4, v5, v6, v7, v8, v9, v10];
    }

    LODWORD(levelCopy) = 0;
  }

  return levelCopy;
}

- (id)displayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C78]];
  if (!v3)
  {
    firstName = [(EKSharee *)self firstName];
    lastName = [(EKSharee *)self lastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)URL
{
  v2 = MEMORY[0x1E695DFF8];
  address = [(EKSharee *)self address];
  v4 = [v2 URLWithString:address];

  return v4;
}

- (NSString)emailAddress
{
  address = [(EKSharee *)self address];
  hasMailto = [address hasMailto];

  if (hasMailto)
  {
    address2 = [(EKSharee *)self address];
    stringRemovingMailto = [address2 stringRemovingMailto];
  }

  else
  {
    stringRemovingMailto = 0;
  }

  return stringRemovingMailto;
}

- (void)setEmailAddress:(id)address
{
  stringAddingMailto = [address stringAddingMailto];
  [(EKSharee *)self setAddress:stringAddingMailto];
}

- (NSString)phoneNumber
{
  address = [(EKSharee *)self address];
  hasTel = [address hasTel];

  if (hasTel)
  {
    address2 = [(EKSharee *)self address];
    stringRemovingTel = [address2 stringRemovingTel];
  }

  else
  {
    stringRemovingTel = 0;
  }

  return stringRemovingTel;
}

- (void)setPhoneNumber:(id)number
{
  stringAddingTel = [number stringAddingTel];
  [(EKSharee *)self setAddress:stringAddingTel];
}

- (int)shareeStatusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C98]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)shareeStatus
{
  shareeStatusRaw = [(EKSharee *)self shareeStatusRaw];
  v3 = objc_opt_class();

  return [v3 _ekShareeStatusFromCalShareeStatus:shareeStatusRaw];
}

- (void)setShareeStatus:(unint64_t)status
{
  v4 = [objc_opt_class() _calShareeStatusFromEKShareeStatus:status];

  [(EKSharee *)self setShareeStatusRaw:v4];
}

- (int)shareeAccessLevelRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C68]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)shareeAccessLevel
{
  shareeAccessLevelRaw = [(EKSharee *)self shareeAccessLevelRaw];
  v3 = objc_opt_class();

  return [v3 _ekShareeAccessLevelFromCalShareeAccessLevel:shareeAccessLevelRaw];
}

- (void)setShareeAccessLevel:(unint64_t)level
{
  v4 = [objc_opt_class() _calShareeAccessLevelFromEKShareeAccessLevel:level];

  [(EKSharee *)self setShareeAccessLevelRaw:v4];
}

- (BOOL)shareeMuteRemoval
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C90]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)existingContact
{
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  contactPredicate = [(EKSharee *)self contactPredicate];
  calKeys = [MEMORY[0x1E695CD58] CalKeys];
  v6 = [defaultProvider unifiedContactsMatchingPredicate:contactPredicate keysToFetch:calKeys];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)isCurrentUserForSharing
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  owner = [(EKSharee *)self owner];
  sharedOwnerAddresses = [owner sharedOwnerAddresses];

  v5 = [sharedOwnerAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(sharedOwnerAddresses);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        address = [(EKSharee *)self address];
        LOBYTE(v9) = [v9 isEqualToString:address];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [sharedOwnerAddresses countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqualToSharee:(id)sharee
{
  shareeCopy = sharee;
  emailAddress = [(EKSharee *)self emailAddress];
  emailAddress2 = [shareeCopy emailAddress];
  v7 = [emailAddress isEqual:emailAddress2];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    familyEmailAddressAliases = [(EKSharee *)self familyEmailAddressAliases];

    if (familyEmailAddressAliases)
    {
      familyEmailAddressAliases2 = [(EKSharee *)self familyEmailAddressAliases];
      [v9 addObjectsFromArray:familyEmailAddressAliases2];
    }

    emailAddress3 = [(EKSharee *)self emailAddress];

    if (emailAddress3)
    {
      emailAddress4 = [(EKSharee *)self emailAddress];
      [v9 addObject:emailAddress4];
    }

    v14 = [MEMORY[0x1E695DFA8] set];
    familyEmailAddressAliases3 = [shareeCopy familyEmailAddressAliases];

    if (familyEmailAddressAliases3)
    {
      familyEmailAddressAliases4 = [shareeCopy familyEmailAddressAliases];
      [v9 addObjectsFromArray:familyEmailAddressAliases4];
    }

    emailAddress5 = [shareeCopy emailAddress];

    if (emailAddress5)
    {
      emailAddress6 = [shareeCopy emailAddress];
      [v9 addObject:emailAddress6];
    }

    v8 = [v9 intersectsSet:v14];
  }

  return v8;
}

+ (unint64_t)statusEnumFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"invite-accepted"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"invite-declined"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"invite-deleted"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"invite-invalid"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"invite-noresponse"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)statusStringFromEnum:(unint64_t)enum
{
  if (enum - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78000F0[enum - 1];
  }
}

+ (void)_ekShareeStatusFromCalShareeStatus:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected CalShareeStatus: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_calShareeStatusFromEKShareeStatus:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected EKShareeStatus: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_ekShareeAccessLevelFromCalShareeAccessLevel:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected CalShareeAccessLevel: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_calShareeAccessLevelFromEKShareeAccessLevel:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1A805E000, a2, a3, "Unexpected EKShareeAccessLevel: %d", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end