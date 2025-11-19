@interface ABPersonGetArrayOfAllFTSPropertyIDs
@end

@implementation ABPersonGetArrayOfAllFTSPropertyIDs

CFArrayRef ___ABPersonGetArrayOfAllFTSPropertyIDs_block_invoke()
{
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = kABPersonFirstNameProperty;
  values[1] = kABPersonLastNameProperty;
  values[2] = kABPersonMiddleNameProperty;
  values[3] = kABPersonFirstNamePhoneticProperty;
  values[4] = kABPersonMiddleNamePhoneticProperty;
  values[5] = kABPersonLastNamePhoneticProperty;
  values[6] = kABPersonOrganizationProperty;
  values[7] = kABPersonOrganizationPhoneticProperty;
  values[8] = kABPersonDepartmentProperty;
  values[9] = kABPersonNoteProperty;
  values[10] = kABPersonBirthdayProperty;
  values[11] = kABPersonJobTitleProperty;
  values[12] = kABPersonNicknameProperty;
  values[13] = kABPersonPrefixProperty;
  values[14] = kABPersonSuffixProperty;
  values[15] = kABPersonDisplayNameProperty;
  values[16] = kABPersonPhoneProperty;
  values[17] = kABPersonEmailProperty;
  values[18] = kABPersonAddressProperty;
  values[19] = kABPersonSocialProfileProperty;
  values[20] = kABPersonURLProperty;
  values[21] = kABPersonRelatedNamesProperty;
  values[22] = kABPersonInstantMessageProperty;
  values[23] = kABPersonDateProperty;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 24, 0);
  _ABPersonGetArrayOfAllFTSPropertyIDs_retVal = result;
  return result;
}

@end