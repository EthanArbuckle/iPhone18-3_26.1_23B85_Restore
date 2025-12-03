@interface EKResourceChange
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipWeakKeys;
- (BOOL)alerted;
- (NSString)changedByDisplayName;
- (NSURL)changedByAddress;
- (id)emailAddress;
- (id)phoneNumber;
- (unsigned)changeType;
- (unsigned)changedProperties;
- (unsigned)publicStatus;
- (void)clearAlertedStatus;
@end

@implementation EKResourceChange

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken_6 != -1)
  {
    +[EKResourceChange knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys_6;

  return v3;
}

void __52__EKResourceChange_knownRelationshipSingleValueKeys__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992BF8];
  v4[0] = *MEMORY[0x1E6992BF0];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992C48];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = knownRelationshipSingleValueKeys_keys_6;
  knownRelationshipSingleValueKeys_keys_6 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_8 != -1)
  {
    +[EKResourceChange knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_8;

  return v3;
}

void __45__EKResourceChange_knownRelationshipWeakKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992C48];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipWeakKeys_keys_8;
  knownRelationshipWeakKeys_keys_8 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (NSString)changedByDisplayName
{
  v3 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C10]];
  if (!v3)
  {
    changedByFirstName = [(EKResourceChange *)self changedByFirstName];
    changedByLastName = [(EKResourceChange *)self changedByLastName];
    v3 = DisplayNameStringForIdentityWithProperties();
  }

  return v3;
}

- (NSURL)changedByAddress
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C08]];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)emailAddress
{
  changedByAddress = [(EKResourceChange *)self changedByAddress];
  cal_emailAddressString = [changedByAddress cal_emailAddressString];

  return cal_emailAddressString;
}

- (id)phoneNumber
{
  changedByAddress = [(EKResourceChange *)self changedByAddress];
  cal_phoneNumberString = [changedByAddress cal_phoneNumberString];

  return cal_phoneNumberString;
}

- (unsigned)changeType
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C00]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (unsigned)changedProperties
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C28]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (BOOL)alerted
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992BE8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)publicStatus
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992C50]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)clearAlertedStatus
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject unloadPropertyForKey:*MEMORY[0x1E6992BE8]];
}

@end