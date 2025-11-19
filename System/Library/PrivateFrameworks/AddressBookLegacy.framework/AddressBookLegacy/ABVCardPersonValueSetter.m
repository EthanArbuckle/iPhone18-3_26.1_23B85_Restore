@interface ABVCardPersonValueSetter
+ (__CFArray)supportedProperties;
- (ABVCardPersonValueSetter)initWithPerson:(void *)a3;
- (BOOL)setImageData:(id)a3 cropRectX:(int)a4 cropRectY:(int)a5 cropRectWidth:(int)a6 cropRectHeight:(int)a7;
- (BOOL)setValue:(void *)a3 forProperty:(unsigned int)a4;
- (id)imageData;
- (void)dealloc;
- (void)setValueInTemporaryCache:(id)a3 forProperty:(unsigned int)a4;
- (void)valueForProperty:(unsigned int)a3;
@end

@implementation ABVCardPersonValueSetter

- (ABVCardPersonValueSetter)initWithPerson:(void *)a3
{
  v6.receiver = self;
  v6.super_class = ABVCardPersonValueSetter;
  v4 = [(ABVCardPersonValueSetter *)&v6 init];
  if (a3)
  {
    CFRetain(a3);
  }

  v4->_person = a3;
  v4->_properties = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  return v4;
}

- (void)dealloc
{
  person = self->_person;
  if (person)
  {
    CFRelease(person);
  }

  properties = self->_properties;
  if (properties)
  {
    CFRelease(properties);
  }

  v5.receiver = self;
  v5.super_class = ABVCardPersonValueSetter;
  [(ABVCardPersonValueSetter *)&v5 dealloc];
}

+ (__CFArray)supportedProperties
{
  if (supportedProperties_onceToken_0 != -1)
  {
    +[ABVCardPersonValueSetter supportedProperties];
  }

  return supportedProperties_retVal_0;
}

CFArrayRef __47__ABVCardPersonValueSetter_supportedProperties__block_invoke()
{
  values[46] = *MEMORY[0x1E69E9840];
  values[0] = kABPersonKindProperty;
  values[1] = kABPersonFirstNameProperty;
  values[2] = kABPersonMiddleNameProperty;
  values[3] = kABPersonLastNameProperty;
  values[4] = kABPersonPrefixProperty;
  values[5] = kABPersonSuffixProperty;
  values[6] = kABPersonNicknameProperty;
  values[7] = kABPersonPreviousFamilyNameProperty;
  values[8] = kABPersonFirstNamePhoneticProperty;
  values[9] = kABPersonMiddleNamePhoneticProperty;
  values[10] = kABPersonLastNamePhoneticProperty;
  values[11] = kABPersonFirstNamePronunciationProperty;
  values[12] = kABPersonMiddleNamePronunciationProperty;
  values[13] = kABPersonLastNamePronunciationProperty;
  values[14] = kABPersonAddressingGrammarProperty;
  values[15] = kABPersonOrganizationProperty;
  values[16] = kABPersonOrganizationPhoneticProperty;
  values[17] = kABPersonOrganizationPronunciationProperty;
  values[18] = kABPersonJobTitleProperty;
  values[19] = kABPersonDepartmentProperty;
  values[20] = kABPersonPhoneProperty;
  values[21] = kABPersonEmailProperty;
  values[22] = kABPersonAddressProperty;
  values[23] = kABPersonURLProperty;
  values[24] = kABPersonDateProperty;
  values[25] = kABPersonBirthdayProperty;
  values[26] = kABPersonNoteProperty;
  values[27] = kABPersonSocialProfileProperty;
  values[28] = kABPersonInstantMessageProperty;
  values[29] = kABPersonRelatedNamesProperty;
  values[30] = kABPersonExternalIdentifierProperty;
  values[31] = kABPersonExternalUUIDProperty;
  values[32] = kABPersonExternalRepresentationProperty;
  values[33] = kABPersonImageURIProperty;
  values[34] = kABPersonPhonemeDataProperty;
  values[35] = kABPersonAlternateBirthdayProperty;
  values[36] = kABPersonMapsDataProperty;
  values[37] = kABPersonSoundProperty;
  values[38] = kABPersonDowntimeWhitelistProperty;
  values[39] = kABPersonImageTypeProperty;
  values[40] = kABPersonImageHashProperty;
  values[41] = kABPersonMemojiMetadataProperty;
  values[42] = kABPersonWallpaperProperty;
  values[43] = kABPersonWallpaperURIProperty;
  values[44] = kABPersonDisplayFlagsProperty;
  values[45] = kABPersonSensitiveContentConfigurationProperty;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 46, 0);
  supportedProperties_retVal_0 = result;
  return result;
}

- (BOOL)setValue:(void *)a3 forProperty:(unsigned int)a4
{
  v7 = +[ABVCardPersonValueSetter supportedProperties];
  if (a4 && (v8 = v7, v11.length = CFArrayGetCount(v7), v11.location = 0, CFArrayGetFirstIndexOfValue(v8, v11, a4) == -1))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = ABRecordSetValue(self->_person, a4, a3, 0);
    if (v9)
    {
      CFArrayAppendValue(self->_properties, a4);
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)valueForProperty:(unsigned int)a3
{
  v3 = ABRecordCopyValue(self->_person, a3);

  return v3;
}

- (BOOL)setImageData:(id)a3 cropRectX:(int)a4 cropRectY:(int)a5 cropRectWidth:(int)a6 cropRectHeight:(int)a7
{
  person = self->_person;
  if (a6 && a7)
  {
    return ABPersonSetImageDataWithInvertedCropRect(person, 2, a3, a4, a5, a6, a7);
  }

  else
  {
    return ABPersonSetImageData(person, a3, 0);
  }
}

- (id)imageData
{
  v2 = ABPersonCopyImageData(self->_person);

  return v2;
}

- (void)setValueInTemporaryCache:(id)a3 forProperty:(unsigned int)a4
{
  if (ABDiagnosticsEnabled())
  {
    _ABLog2(6, "[ABVCardPersonValueSetter setValueInTemporaryCache:forProperty:]", 3470, 0, @"%s", v4, v5, v6, "[ABVCardPersonValueSetter setValueInTemporaryCache:forProperty:]");
  }
}

@end