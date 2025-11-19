@interface EKSharee
+ (id)_urlForEmailAddress:(id)a3 andPhoneNumber:(id)a4;
+ (id)knownIdentityKeysForComparison;
+ (id)knownSingleValueKeysForComparison;
+ (id)shareeWithName:(id)a3 emailAddress:(id)a4;
+ (id)shareeWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5;
+ (id)shareeWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 externalID:(id)a6;
+ (id)shareeWithName:(id)a3 phoneNumber:(id)a4;
+ (id)shareeWithName:(id)a3 url:(id)a4;
+ (id)shareeWithUUID:(id)a3 name:(id)a4 emailAddress:(id)a5 phoneNumber:(id)a6;
+ (id)statusStringFromEnum:(unint64_t)a3;
+ (int)_calShareeAccessLevelFromEKShareeAccessLevel:(unint64_t)a3;
+ (int)_calShareeStatusFromEKShareeStatus:(unint64_t)a3;
+ (unint64_t)statusEnumFromString:(id)a3;
- (BOOL)isCurrentUserForSharing;
- (BOOL)isEqualToSharee:(id)a3;
- (BOOL)shareeMuteRemoval;
- (EKSharee)init;
- (EKSharee)initWithName:(id)a3 url:(id)a4 externalID:(id)a5;
- (NSPredicate)contactPredicate;
- (NSString)description;
- (NSString)emailAddress;
- (NSString)phoneNumber;
- (id)URL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayName;
- (id)existingContact;
- (int)shareeAccessLevelRaw;
- (int)shareeStatusRaw;
- (unint64_t)shareeAccessLevel;
- (unint64_t)shareeStatus;
- (void)setEmailAddress:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)setShareeAccessLevel:(unint64_t)a3;
- (void)setShareeStatus:(unint64_t)a3;
@end

@implementation EKSharee

- (NSPredicate)contactPredicate
{
  v3 = [(EKSharee *)self owner];
  v4 = [v3 source];
  v5 = [v4 isFacebookSource];

  if (v5)
  {
    v6 = [(EKSharee *)self address];
    if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
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
  v10 = [(EKSharee *)self name];
  v11 = [(EKSharee *)self emailAddress];
  v12 = [v9 predicateForContactMatchingEKParticipantWithName:v10 emailAddress:v11 URL:v7 predicateDescription:v8];

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

+ (id)shareeWithName:(id)a3 emailAddress:(id)a4
{
  v6 = MEMORY[0x1E695DFF8];
  v7 = a3;
  v8 = [a4 stringAddingMailto];
  v9 = [v6 URLWithString:v8];

  v10 = [a1 shareeWithName:v7 url:v9];

  return v10;
}

+ (id)shareeWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5
{
  v8 = a3;
  v9 = [a1 _urlForEmailAddress:a4 andPhoneNumber:a5];
  v10 = [[a1 alloc] initWithName:v8 url:v9];

  return v10;
}

+ (id)shareeWithName:(id)a3 phoneNumber:(id)a4
{
  v6 = MEMORY[0x1E695DFF8];
  v7 = a3;
  v8 = [a4 stringAddingTel];
  v9 = [v6 URLWithString:v8];

  v10 = [a1 shareeWithName:v7 url:v9];

  return v10;
}

+ (id)shareeWithName:(id)a3 url:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 url:v6];

  return v8;
}

+ (id)shareeWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 externalID:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [a1 _urlForEmailAddress:a4 andPhoneNumber:a5];
  v13 = [[a1 alloc] initWithName:v11 url:v12 externalID:v10];

  return v13;
}

+ (id)_urlForEmailAddress:(id)a3 andPhoneNumber:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v5 stringAddingMailto];
LABEL_5:
    v10 = v9;
    v11 = [v8 URLWithString:v9];

    goto LABEL_6;
  }

  if (v6)
  {
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v6 stringAddingTel];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

+ (id)shareeWithUUID:(id)a3 name:(id)a4 emailAddress:(id)a5 phoneNumber:(id)a6
{
  v10 = a3;
  v11 = [a1 shareeWithName:a4 emailAddress:a5 phoneNumber:a6];
  [v11 setUUID:v10];

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

- (EKSharee)initWithName:(id)a3 url:(id)a4 externalID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EKSharee *)self init];
  v12 = v11;
  if (v11)
  {
    [(EKSharee *)v11 setName:v8];
    v13 = [v9 absoluteString];
    [(EKSharee *)v12 setAddress:v13];

    [(EKSharee *)v12 setExternalID:v10];
    [(EKSharee *)v12 setShareeStatus:5];
    [(EKSharee *)v12 setShareeAccessLevel:2];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([MEMORY[0x1E6992F30] isProgramSDKAtLeast:0x7E30901FFFFFFFFLL])
  {
    v10.receiver = self;
    v10.super_class = EKSharee;
    return [(EKObject *)&v10 copyWithZone:a3];
  }

  else
  {
    v5 = objc_alloc_init(EKSharee);
    if (v5)
    {
      v6 = [(EKSharee *)self name];
      [(EKSharee *)v5 setName:v6];

      v7 = [(EKSharee *)self address];
      [(EKSharee *)v5 setAddress:v7];

      v8 = [(EKSharee *)self externalID];
      [(EKSharee *)v5 setExternalID:v8];

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
  v5 = [(EKSharee *)self UUID];
  v6 = [(EKSharee *)self name];
  v7 = [(EKSharee *)self emailAddress];
  v8 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ name = %@; email = %@; status = %lu; accessLevel = %lu;}", v4, self, v5, v6, v7, -[EKSharee shareeStatus](self, "shareeStatus"), -[EKSharee shareeAccessLevel](self, "shareeAccessLevel")];;

  return v8;
}

+ (int)_calShareeStatusFromEKShareeStatus:(unint64_t)a3
{
  if (a3 < 7)
  {
    return dword_1A81C3E48[a3];
  }

  v5 = EKLogHandle;
  result = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    [(EKSharee *)a3 _calShareeStatusFromEKShareeStatus:v5, v6, v7, v8, v9, v10, v11];
    return 0;
  }

  return result;
}

+ (int)_calShareeAccessLevelFromEKShareeAccessLevel:(unint64_t)a3
{
  v3 = a3;
  if (a3 >= 4)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKSharee *)v3 _calShareeAccessLevelFromEKShareeAccessLevel:v4, v5, v6, v7, v8, v9, v10];
    }

    LODWORD(v3) = 0;
  }

  return v3;
}

- (id)displayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C78]];
  if (!v3)
  {
    v4 = [(EKSharee *)self firstName];
    v5 = [(EKSharee *)self lastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)URL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(EKSharee *)self address];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (NSString)emailAddress
{
  v3 = [(EKSharee *)self address];
  v4 = [v3 hasMailto];

  if (v4)
  {
    v5 = [(EKSharee *)self address];
    v6 = [v5 stringRemovingMailto];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setEmailAddress:(id)a3
{
  v4 = [a3 stringAddingMailto];
  [(EKSharee *)self setAddress:v4];
}

- (NSString)phoneNumber
{
  v3 = [(EKSharee *)self address];
  v4 = [v3 hasTel];

  if (v4)
  {
    v5 = [(EKSharee *)self address];
    v6 = [v5 stringRemovingTel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPhoneNumber:(id)a3
{
  v4 = [a3 stringAddingTel];
  [(EKSharee *)self setAddress:v4];
}

- (int)shareeStatusRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C98]];
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)shareeStatus
{
  v2 = [(EKSharee *)self shareeStatusRaw];
  v3 = objc_opt_class();

  return [v3 _ekShareeStatusFromCalShareeStatus:v2];
}

- (void)setShareeStatus:(unint64_t)a3
{
  v4 = [objc_opt_class() _calShareeStatusFromEKShareeStatus:a3];

  [(EKSharee *)self setShareeStatusRaw:v4];
}

- (int)shareeAccessLevelRaw
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C68]];
  v3 = [v2 integerValue];

  return v3;
}

- (unint64_t)shareeAccessLevel
{
  v2 = [(EKSharee *)self shareeAccessLevelRaw];
  v3 = objc_opt_class();

  return [v3 _ekShareeAccessLevelFromCalShareeAccessLevel:v2];
}

- (void)setShareeAccessLevel:(unint64_t)a3
{
  v4 = [objc_opt_class() _calShareeAccessLevelFromEKShareeAccessLevel:a3];

  [(EKSharee *)self setShareeAccessLevelRaw:v4];
}

- (BOOL)shareeMuteRemoval
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C90]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)existingContact
{
  v3 = [MEMORY[0x1E6992F50] defaultProvider];
  v4 = [(EKSharee *)self contactPredicate];
  v5 = [MEMORY[0x1E695CD58] CalKeys];
  v6 = [v3 unifiedContactsMatchingPredicate:v4 keysToFetch:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (BOOL)isCurrentUserForSharing
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(EKSharee *)self owner];
  v4 = [v3 sharedOwnerAddresses];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(EKSharee *)self address];
        LOBYTE(v9) = [v9 isEqualToString:v10];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isEqualToSharee:(id)a3
{
  v4 = a3;
  v5 = [(EKSharee *)self emailAddress];
  v6 = [v4 emailAddress];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [(EKSharee *)self familyEmailAddressAliases];

    if (v10)
    {
      v11 = [(EKSharee *)self familyEmailAddressAliases];
      [v9 addObjectsFromArray:v11];
    }

    v12 = [(EKSharee *)self emailAddress];

    if (v12)
    {
      v13 = [(EKSharee *)self emailAddress];
      [v9 addObject:v13];
    }

    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = [v4 familyEmailAddressAliases];

    if (v15)
    {
      v16 = [v4 familyEmailAddressAliases];
      [v9 addObjectsFromArray:v16];
    }

    v17 = [v4 emailAddress];

    if (v17)
    {
      v18 = [v4 emailAddress];
      [v9 addObject:v18];
    }

    v8 = [v9 intersectsSet:v14];
  }

  return v8;
}

+ (unint64_t)statusEnumFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"invite-accepted"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"invite-declined"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"invite-deleted"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"invite-invalid"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"invite-noresponse"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)statusStringFromEnum:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E78000F0[a3 - 1];
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