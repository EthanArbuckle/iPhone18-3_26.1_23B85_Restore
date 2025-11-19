@interface EKParticipant
+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7;
+ (EKParticipant)participantWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 url:(id)a6;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
- (ABRecordRef)ABRecordWithAddressBook:(ABAddressBookRef)addressBook;
- (BOOL)isCurrentUserForScheduling;
- (BOOL)isEqualToParticipant:(id)a3;
- (BOOL)isLocationRoom;
- (BOOL)needsResponse;
- (BOOL)scheduleForceSend;
- (EKParticipant)initWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 url:(id)a6;
- (NSPredicate)contactPredicate;
- (NSString)description;
- (NSString)name;
- (NSURL)URL;
- (id)displayString;
- (id)existingContact;
- (id)generateSemanticIdentifier;
- (id)nameComponents;
- (id)nameUsingAddressAsBackup;
- (id)newContact;
- (id)rsvpStatusDisplayString;
- (int)scheduleStatus;
- (void)setURL:(id)a3;
@end

@implementation EKParticipant

+ (EKParticipant)participantWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 url:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithName:v13 emailAddress:v12 phoneNumber:v11 url:v10];

  return v14;
}

- (EKParticipant)initWithName:(id)a3 emailAddress:(id)a4 phoneNumber:(id)a5 url:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(EKObject *)self init];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = EKUUIDString();
  [(EKParticipant *)v14 setUUID:v15];

  v16 = [v10 copy];
  [(EKParticipant *)v14 setDisplayNameRaw:v16];

  if (v13)
  {
    v17 = [v13 copy];
    [(EKParticipant *)v14 setURL:v17];
LABEL_9:

    goto LABEL_10;
  }

  if ([v11 length])
  {
    v18 = MEMORY[0x1E695DFF8];
    v19 = [v11 stringAddingMailto];
LABEL_8:
    v17 = v19;
    v20 = [v18 URLWithString:v19];
    [(EKParticipant *)v14 setURL:v20];

    goto LABEL_9;
  }

  if ([v12 length])
  {
    v18 = MEMORY[0x1E695DFF8];
    v19 = [v12 stringAddingTel];
    goto LABEL_8;
  }

LABEL_10:
  if (v11)
  {
    [(EKParticipant *)v14 setEmailAddress:v11];
  }

  else if ([v13 cal_hasSchemeMailto])
  {
    v21 = [v13 cal_resourceSpecifierNoLeadingSlashes];
    [(EKParticipant *)v14 setEmailAddress:v21];
  }

  if (v12)
  {
    [(EKParticipant *)v14 setPhoneNumber:v12];
  }

  else if ([v13 cal_hasSchemeTel])
  {
    v22 = [v13 cal_resourceSpecifierNoLeadingSlashes];
    [(EKParticipant *)v14 setPhoneNumber:v22];
  }

  [(EKObject *)v14 updatePersistentValueForKeyIfNeeded:*MEMORY[0x1E6992B08]];
LABEL_19:

  return v14;
}

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_4 != -1)
  {
    +[EKParticipant knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_4;

  return v3;
}

void __47__EKParticipant_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B08];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_4;
  knownIdentityKeysForComparison_keys_4 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownSingleValueKeysForComparison
{
  if (knownSingleValueKeysForComparison_onceToken_2 != -1)
  {
    +[EKParticipant knownSingleValueKeysForComparison];
  }

  v3 = knownSingleValueKeysForComparison_keys_2;

  return v3;
}

void __50__EKParticipant_knownSingleValueKeysForComparison__block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992B40];
  v7[0] = *MEMORY[0x1E6992B38];
  v7[1] = v0;
  v1 = *MEMORY[0x1E6992B50];
  v7[2] = *MEMORY[0x1E6992B48];
  v7[3] = v1;
  v2 = *MEMORY[0x1E6992B60];
  v7[4] = *MEMORY[0x1E6992B58];
  v7[5] = v2;
  v3 = *MEMORY[0x1E6992B78];
  v7[6] = *MEMORY[0x1E6992B70];
  v7[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v5 = knownSingleValueKeysForComparison_keys_2;
  knownSingleValueKeysForComparison_keys_2 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_1 != -1)
  {
    +[EKParticipant knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_1;

  return v3;
}

void __42__EKParticipant_knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B18];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys_1;
  knownRelationshipWeakKeys_keys_1 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (NSString)name
{
  v3 = [(EKParticipant *)self displayNameRaw];
  if (!v3)
  {
    v4 = [(EKParticipant *)self firstName];
    v5 = [(EKParticipant *)self lastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (id)nameUsingAddressAsBackup
{
  v3 = [(EKParticipant *)self name];
  if (![v3 length])
  {
    v4 = [(EKParticipant *)self emailAddress];

    v3 = v4;
  }

  if (![v3 length])
  {
    v5 = [(EKParticipant *)self phoneNumber];

    v3 = v5;
  }

  if (![v3 length])
  {
    v6 = [(EKParticipant *)self URL];
    v7 = [v6 absoluteString];

    v3 = v7;
  }

  return v3;
}

- (BOOL)needsResponse
{
  v3 = objc_opt_class();
  v4 = [(EKParticipant *)self participantStatus];

  return [v3 needsResponseForParticipantStatus:v4];
}

- (NSURL)URL
{
  v3 = [(EKParticipant *)self URLString];
  if (!v3 || ([MEMORY[0x1E695DFF8] URLWithString:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [(EKParticipant *)self emailAddress];

    if (v5)
    {
      v6 = MEMORY[0x1E695DFF8];
      v7 = [(EKParticipant *)self emailAddress];
      v8 = [v7 stringAddingMailto];
    }

    else
    {
      v9 = [(EKParticipant *)self phoneNumber];

      if (!v9)
      {
LABEL_8:
        v4 = [MEMORY[0x1E695DFF8] URLForNoMail];
        goto LABEL_9;
      }

      v6 = MEMORY[0x1E695DFF8];
      v7 = [(EKParticipant *)self phoneNumber];
      v8 = [v7 stringAddingTel];
    }

    v10 = v8;
    v4 = [v6 URLWithString:v8];

    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

- (void)setURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(EKParticipant *)self setURLString:v4];
}

- (BOOL)scheduleForceSend
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B90]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEqualToParticipant:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(EKParticipant *)self URLString];
  v7 = [(EKParticipant *)self emailAddress];
  v8 = [(EKParticipant *)self phoneNumber];
  v9 = [v4 URLString];
  v10 = [v4 emailAddress];
  v11 = [v4 phoneNumber];

  LOBYTE(v4) = [v5 doesParticipantURLString:v6 email:v7 andPhoneNumber:v8 matchParticipantURLString:v9 email:v10 andPhoneNumber:v11];
  return v4;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)a3 value2:(id)a4 key:(id)a5 object1:(id)a6 object2:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 isEqualToString:*MEMORY[0x1E6992B38]])
  {
    if (v12 | v13 && ([v12 isEqual:v13] & 1) == 0)
    {
      if ((v12 == 0) != (v13 == 0))
      {
        v17 = 0;
      }

      else
      {
        v19 = v16;
        v20 = v15;
        v26 = objc_opt_class();
        v21 = [v20 emailAddress];
        v22 = [v20 phoneNumber];

        v23 = [v19 emailAddress];
        v24 = [v19 phoneNumber];

        v25 = v21;
        v17 = [v26 doesParticipantURLString:v12 email:v21 andPhoneNumber:v22 matchParticipantURLString:v13 email:v23 andPhoneNumber:v24];
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v27.receiver = a1;
    v27.super_class = &OBJC_METACLASS___EKParticipant;
    v17 = objc_msgSendSuper2(&v27, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, v12, v13, v14, v15, v16);
  }

  return v17;
}

- (id)nameComponents
{
  v2 = MEMORY[0x1E6993018];
  v3 = [(EKParticipant *)self name];
  v4 = [v2 personNameComponentsFromString:v3];

  return v4;
}

- (id)displayString
{
  v3 = [(EKParticipant *)self emailAddress];
  if (([v3 resemblesEmailAddress] & 1) == 0)
  {

    v3 = 0;
  }

  v4 = [(EKParticipant *)self name];
  v5 = [(EKParticipant *)self URL];
  if ([v4 length])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:v4];
    if (![v3 length])
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" <%@>", v3];
    [v6 appendString:v7];
    goto LABEL_6;
  }

  if ([v3 length])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:v3];
  }

  else
  {
    if (v5)
    {
      v9 = MEMORY[0x1E696AD60];
      v7 = [v5 absoluteString];
      v6 = [v9 stringWithString:v7];
LABEL_6:

      goto LABEL_9;
    }

    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)rsvpStatusDisplayString
{
  v2 = [(EKParticipant *)self participantStatus];
  v3 = EKBundle();
  v4 = v3;
  if ((v2 - 2) > 2)
  {
    v5 = @"No response";
  }

  else
  {
    v5 = off_1E77FE178[v2 - 2];
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F1B49D68 table:0];

  return v6;
}

- (ABRecordRef)ABRecordWithAddressBook:(ABAddressBookRef)addressBook
{
  if (!addressBook)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  CalendarFoundationPerformBlockOnSharedContactStore();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

void __41__EKParticipant_ABRecordWithAddressBook___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695CD58];
  v5 = [*(a1 + 32) name];
  v6 = [*(a1 + 32) emailAddress];
  v7 = [*(a1 + 32) URL];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  v9 = [v4 predicateForContactMatchingEKParticipantWithName:v5 emailAddress:v6 URL:v7 predicateDescription:v8];

  v10 = [v3 unifiedContactsMatchingPredicate:v9 keysToFetch:MEMORY[0x1E695E0F0] error:0];
  if ([v10 count])
  {
    v12 = *(a1 + 48);
    v11 = [v10 objectAtIndexedSubscript:0];
    *(*(*(a1 + 40) + 8) + 24) = [v3 publicABPersonFromContact:v11 publicAddressBook:&v12];
  }
}

- (BOOL)isLocationRoom
{
  if ([(EKParticipant *)self participantRole]== EKParticipantRoleChair || [(EKParticipant *)self participantType]!= EKParticipantTypeRoom)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)newContact
{
  v3 = MEMORY[0x1E695CD58];
  v4 = [(EKParticipant *)self name];
  v5 = [(EKParticipant *)self emailAddress];
  v6 = [v3 contactWithDisplayName:v4 emailOrPhoneNumber:v5];

  return v6;
}

- (id)existingContact
{
  v3 = [MEMORY[0x1E6992F50] defaultProvider];
  v4 = [(EKParticipant *)self contactPredicate];
  v5 = [MEMORY[0x1E695CD58] CalKeys];
  v6 = [v3 unifiedContactsMatchingPredicate:v4 keysToFetch:v5];
  v7 = [v6 firstObject];

  return v7;
}

- (int)scheduleStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B98]];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isCurrentUserForScheduling
{
  v3 = [(EKParticipant *)self owner];
  v4 = [v3 selfAttendee];
  v5 = [v4 URL];
  v6 = [v5 absoluteString];
  v7 = [(EKParticipant *)self URL];
  v8 = [v7 absoluteString];
  v9 = [v6 isEqualToString:v8];

  return v9;
}

- (id)generateSemanticIdentifier
{
  v3 = [(EKParticipant *)self emailAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(EKParticipant *)self phoneNumber];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [(EKParticipant *)self URL];
      v9 = v8;
      if (v8)
      {
        v5 = [v8 absoluteString];
      }

      else
      {
        v10 = [(EKParticipant *)self name];
        v11 = v10;
        if (v10)
        {
          v5 = v10;
        }

        else
        {
          v12 = [(EKParticipant *)self firstName];
          v13 = [(EKParticipant *)self lastName];
          if (v12 | v13)
          {
            v14 = [MEMORY[0x1E696AD60] string];
            v15 = v14;
            if (v12)
            {
              [v14 appendFormat:@"FIRST=%@;", v12];
            }

            if (v13)
            {
              [v15 appendFormat:@"LAST=%@;", v13];
            }

            v5 = [v15 copy];
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKParticipant *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p>(name = %@)", v4, self, v5];

  return v6;
}

uint64_t __40__EKParticipant_specialComparisonBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 participantStatus];
  if (v6 == [v5 participantStatus])
  {
    v7 = 1;
  }

  else if ([v4 needsResponse])
  {
    v7 = [v5 needsResponse];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSPredicate)contactPredicate
{
  v3 = [(EKParticipant *)self emailAddress];

  if (v3)
  {
    v4 = MEMORY[0x1E695CD58];
    v5 = [(EKParticipant *)self emailAddress];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
    v7 = [v4 predicateForContactMatchingEKParticipantWithName:0 emailAddress:v5 URL:0 predicateDescription:v6];
LABEL_5:
    v11 = v7;
    goto LABEL_6;
  }

  v8 = [(EKParticipant *)self phoneNumber];

  v9 = MEMORY[0x1E695CD58];
  if (v8)
  {
    v10 = MEMORY[0x1E695CF50];
    v5 = [(EKParticipant *)self phoneNumber];
    v6 = [v10 phoneNumberWithStringValue:v5];
    v7 = [v9 predicateForContactsMatchingPhoneNumber:v6];
    goto LABEL_5;
  }

  v5 = [(EKParticipant *)self name];
  v6 = [(EKParticipant *)self emailAddress];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  v11 = [v9 predicateForContactMatchingEKParticipantWithName:v5 emailAddress:v6 URL:0 predicateDescription:v13];

LABEL_6:

  return v11;
}

@end