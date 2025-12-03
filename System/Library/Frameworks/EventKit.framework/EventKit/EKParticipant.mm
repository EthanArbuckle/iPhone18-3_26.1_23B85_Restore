@interface EKParticipant
+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2;
+ (EKParticipant)participantWithName:(id)name emailAddress:(id)address phoneNumber:(id)number url:(id)url;
+ (id)knownIdentityKeysForComparison;
+ (id)knownRelationshipWeakKeys;
+ (id)knownSingleValueKeysForComparison;
- (ABRecordRef)ABRecordWithAddressBook:(ABAddressBookRef)addressBook;
- (BOOL)isCurrentUserForScheduling;
- (BOOL)isEqualToParticipant:(id)participant;
- (BOOL)isLocationRoom;
- (BOOL)needsResponse;
- (BOOL)scheduleForceSend;
- (EKParticipant)initWithName:(id)name emailAddress:(id)address phoneNumber:(id)number url:(id)url;
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
- (void)setURL:(id)l;
@end

@implementation EKParticipant

+ (EKParticipant)participantWithName:(id)name emailAddress:(id)address phoneNumber:(id)number url:(id)url
{
  urlCopy = url;
  numberCopy = number;
  addressCopy = address;
  nameCopy = name;
  v14 = [[self alloc] initWithName:nameCopy emailAddress:addressCopy phoneNumber:numberCopy url:urlCopy];

  return v14;
}

- (EKParticipant)initWithName:(id)name emailAddress:(id)address phoneNumber:(id)number url:(id)url
{
  nameCopy = name;
  addressCopy = address;
  numberCopy = number;
  urlCopy = url;
  v14 = [(EKObject *)self init];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = EKUUIDString();
  [(EKParticipant *)v14 setUUID:v15];

  v16 = [nameCopy copy];
  [(EKParticipant *)v14 setDisplayNameRaw:v16];

  if (urlCopy)
  {
    v17 = [urlCopy copy];
    [(EKParticipant *)v14 setURL:v17];
LABEL_9:

    goto LABEL_10;
  }

  if ([addressCopy length])
  {
    v18 = MEMORY[0x1E695DFF8];
    stringAddingMailto = [addressCopy stringAddingMailto];
LABEL_8:
    v17 = stringAddingMailto;
    v20 = [v18 URLWithString:stringAddingMailto];
    [(EKParticipant *)v14 setURL:v20];

    goto LABEL_9;
  }

  if ([numberCopy length])
  {
    v18 = MEMORY[0x1E695DFF8];
    stringAddingMailto = [numberCopy stringAddingTel];
    goto LABEL_8;
  }

LABEL_10:
  if (addressCopy)
  {
    [(EKParticipant *)v14 setEmailAddress:addressCopy];
  }

  else if ([urlCopy cal_hasSchemeMailto])
  {
    cal_resourceSpecifierNoLeadingSlashes = [urlCopy cal_resourceSpecifierNoLeadingSlashes];
    [(EKParticipant *)v14 setEmailAddress:cal_resourceSpecifierNoLeadingSlashes];
  }

  if (numberCopy)
  {
    [(EKParticipant *)v14 setPhoneNumber:numberCopy];
  }

  else if ([urlCopy cal_hasSchemeTel])
  {
    cal_resourceSpecifierNoLeadingSlashes2 = [urlCopy cal_resourceSpecifierNoLeadingSlashes];
    [(EKParticipant *)v14 setPhoneNumber:cal_resourceSpecifierNoLeadingSlashes2];
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
  displayNameRaw = [(EKParticipant *)self displayNameRaw];
  if (!displayNameRaw)
  {
    firstName = [(EKParticipant *)self firstName];
    lastName = [(EKParticipant *)self lastName];
    displayNameRaw = DisplayNameStringForIdentityWithProperties();
  }

  return displayNameRaw;
}

- (id)nameUsingAddressAsBackup
{
  name = [(EKParticipant *)self name];
  if (![name length])
  {
    emailAddress = [(EKParticipant *)self emailAddress];

    name = emailAddress;
  }

  if (![name length])
  {
    phoneNumber = [(EKParticipant *)self phoneNumber];

    name = phoneNumber;
  }

  if (![name length])
  {
    v6 = [(EKParticipant *)self URL];
    absoluteString = [v6 absoluteString];

    name = absoluteString;
  }

  return name;
}

- (BOOL)needsResponse
{
  v3 = objc_opt_class();
  participantStatus = [(EKParticipant *)self participantStatus];

  return [v3 needsResponseForParticipantStatus:participantStatus];
}

- (NSURL)URL
{
  uRLString = [(EKParticipant *)self URLString];
  if (!uRLString || ([MEMORY[0x1E695DFF8] URLWithString:uRLString], (uRLForNoMail = objc_claimAutoreleasedReturnValue()) == 0))
  {
    emailAddress = [(EKParticipant *)self emailAddress];

    if (emailAddress)
    {
      v6 = MEMORY[0x1E695DFF8];
      emailAddress2 = [(EKParticipant *)self emailAddress];
      stringAddingMailto = [emailAddress2 stringAddingMailto];
    }

    else
    {
      phoneNumber = [(EKParticipant *)self phoneNumber];

      if (!phoneNumber)
      {
LABEL_8:
        uRLForNoMail = [MEMORY[0x1E695DFF8] URLForNoMail];
        goto LABEL_9;
      }

      v6 = MEMORY[0x1E695DFF8];
      emailAddress2 = [(EKParticipant *)self phoneNumber];
      stringAddingMailto = [emailAddress2 stringAddingTel];
    }

    v10 = stringAddingMailto;
    uRLForNoMail = [v6 URLWithString:stringAddingMailto];

    if (uRLForNoMail)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return uRLForNoMail;
}

- (void)setURL:(id)l
{
  absoluteString = [l absoluteString];
  [(EKParticipant *)self setURLString:absoluteString];
}

- (BOOL)scheduleForceSend
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B90]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEqualToParticipant:(id)participant
{
  participantCopy = participant;
  v5 = objc_opt_class();
  uRLString = [(EKParticipant *)self URLString];
  emailAddress = [(EKParticipant *)self emailAddress];
  phoneNumber = [(EKParticipant *)self phoneNumber];
  uRLString2 = [participantCopy URLString];
  emailAddress2 = [participantCopy emailAddress];
  phoneNumber2 = [participantCopy phoneNumber];

  LOBYTE(participantCopy) = [v5 doesParticipantURLString:uRLString email:emailAddress andPhoneNumber:phoneNumber matchParticipantURLString:uRLString2 email:emailAddress2 andPhoneNumber:phoneNumber2];
  return participantCopy;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2
{
  value1Copy = value1;
  value2Copy = value2;
  keyCopy = key;
  object1Copy = object1;
  object2Copy = object2;
  if ([keyCopy isEqualToString:*MEMORY[0x1E6992B38]])
  {
    if (value1Copy | value2Copy && ([value1Copy isEqual:value2Copy] & 1) == 0)
    {
      if ((value1Copy == 0) != (value2Copy == 0))
      {
        v17 = 0;
      }

      else
      {
        v19 = object2Copy;
        v20 = object1Copy;
        v26 = objc_opt_class();
        emailAddress = [v20 emailAddress];
        phoneNumber = [v20 phoneNumber];

        emailAddress2 = [v19 emailAddress];
        phoneNumber2 = [v19 phoneNumber];

        v25 = emailAddress;
        v17 = [v26 doesParticipantURLString:value1Copy email:emailAddress andPhoneNumber:phoneNumber matchParticipantURLString:value2Copy email:emailAddress2 andPhoneNumber:phoneNumber2];
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = &OBJC_METACLASS___EKParticipant;
    v17 = objc_msgSendSuper2(&v27, sel_canonicalizedEqualityTestValue1_value2_key_object1_object2_, value1Copy, value2Copy, keyCopy, object1Copy, object2Copy);
  }

  return v17;
}

- (id)nameComponents
{
  v2 = MEMORY[0x1E6993018];
  name = [(EKParticipant *)self name];
  v4 = [v2 personNameComponentsFromString:name];

  return v4;
}

- (id)displayString
{
  emailAddress = [(EKParticipant *)self emailAddress];
  if (([emailAddress resemblesEmailAddress] & 1) == 0)
  {

    emailAddress = 0;
  }

  name = [(EKParticipant *)self name];
  v5 = [(EKParticipant *)self URL];
  if ([name length])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:name];
    if (![emailAddress length])
    {
      goto LABEL_9;
    }

    absoluteString = [MEMORY[0x1E696AEC0] stringWithFormat:@" <%@>", emailAddress];
    [v6 appendString:absoluteString];
    goto LABEL_6;
  }

  if ([emailAddress length])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithString:emailAddress];
  }

  else
  {
    if (v5)
    {
      v9 = MEMORY[0x1E696AD60];
      absoluteString = [v5 absoluteString];
      v6 = [v9 stringWithString:absoluteString];
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
  participantStatus = [(EKParticipant *)self participantStatus];
  v3 = EKBundle();
  v4 = v3;
  if ((participantStatus - 2) > 2)
  {
    v5 = @"No response";
  }

  else
  {
    v5 = off_1E77FE178[participantStatus - 2];
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
  name = [(EKParticipant *)self name];
  emailAddress = [(EKParticipant *)self emailAddress];
  v6 = [v3 contactWithDisplayName:name emailOrPhoneNumber:emailAddress];

  return v6;
}

- (id)existingContact
{
  defaultProvider = [MEMORY[0x1E6992F50] defaultProvider];
  contactPredicate = [(EKParticipant *)self contactPredicate];
  calKeys = [MEMORY[0x1E695CD58] CalKeys];
  v6 = [defaultProvider unifiedContactsMatchingPredicate:contactPredicate keysToFetch:calKeys];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (int)scheduleStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992B98]];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isCurrentUserForScheduling
{
  owner = [(EKParticipant *)self owner];
  selfAttendee = [owner selfAttendee];
  v5 = [selfAttendee URL];
  absoluteString = [v5 absoluteString];
  v7 = [(EKParticipant *)self URL];
  absoluteString2 = [v7 absoluteString];
  v9 = [absoluteString isEqualToString:absoluteString2];

  return v9;
}

- (id)generateSemanticIdentifier
{
  emailAddress = [(EKParticipant *)self emailAddress];
  v4 = emailAddress;
  if (emailAddress)
  {
    absoluteString = emailAddress;
  }

  else
  {
    phoneNumber = [(EKParticipant *)self phoneNumber];
    v7 = phoneNumber;
    if (phoneNumber)
    {
      absoluteString = phoneNumber;
    }

    else
    {
      v8 = [(EKParticipant *)self URL];
      v9 = v8;
      if (v8)
      {
        absoluteString = [v8 absoluteString];
      }

      else
      {
        name = [(EKParticipant *)self name];
        v11 = name;
        if (name)
        {
          absoluteString = name;
        }

        else
        {
          firstName = [(EKParticipant *)self firstName];
          lastName = [(EKParticipant *)self lastName];
          if (firstName | lastName)
          {
            string = [MEMORY[0x1E696AD60] string];
            v15 = string;
            if (firstName)
            {
              [string appendFormat:@"FIRST=%@;", firstName];
            }

            if (lastName)
            {
              [v15 appendFormat:@"LAST=%@;", lastName];
            }

            absoluteString = [v15 copy];
          }

          else
          {
            absoluteString = 0;
          }
        }
      }
    }
  }

  return absoluteString;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(EKParticipant *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p>(name = %@)", v4, self, name];

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
  emailAddress = [(EKParticipant *)self emailAddress];

  if (emailAddress)
  {
    v4 = MEMORY[0x1E695CD58];
    emailAddress2 = [(EKParticipant *)self emailAddress];
    emailAddress3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
    v7 = [v4 predicateForContactMatchingEKParticipantWithName:0 emailAddress:emailAddress2 URL:0 predicateDescription:emailAddress3];
LABEL_5:
    v11 = v7;
    goto LABEL_6;
  }

  phoneNumber = [(EKParticipant *)self phoneNumber];

  v9 = MEMORY[0x1E695CD58];
  if (phoneNumber)
  {
    v10 = MEMORY[0x1E695CF50];
    emailAddress2 = [(EKParticipant *)self phoneNumber];
    emailAddress3 = [v10 phoneNumberWithStringValue:emailAddress2];
    v7 = [v9 predicateForContactsMatchingPhoneNumber:emailAddress3];
    goto LABEL_5;
  }

  emailAddress2 = [(EKParticipant *)self name];
  emailAddress3 = [(EKParticipant *)self emailAddress];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[CNContact predicateForContactMatchingEKParticipantWithName:emailAddress:URL:predicateDescription:]"];
  v11 = [v9 predicateForContactMatchingEKParticipantWithName:emailAddress2 emailAddress:emailAddress3 URL:0 predicateDescription:v13];

LABEL_6:

  return v11;
}

@end