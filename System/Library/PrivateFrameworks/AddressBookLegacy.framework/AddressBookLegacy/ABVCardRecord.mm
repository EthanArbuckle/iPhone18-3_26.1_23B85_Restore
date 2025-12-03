@interface ABVCardRecord
+ (BOOL)includeAddressingGrammarInVCards;
+ (BOOL)includeNotesInVCards;
+ (BOOL)includePhotosInVCards;
+ (BOOL)includeREVInVCards;
+ (BOOL)vcardFieldisPrivate:(id)private;
+ (__CFArray)supportedProperties;
+ (void)setIncludeAddressingGrammarInVCards:(BOOL)cards;
+ (void)setIncludeNotesInVCards:(BOOL)cards;
+ (void)setIncludePhotosInVCards:(BOOL)cards;
+ (void)setIncludeREVInVCards:(BOOL)cards;
+ (void)setPrivateVCardEnabled:(BOOL)enabled;
+ (void)setVCardField:(id)field isPrivate:(BOOL)private;
- (ABVCardRecord)init;
- (ABVCardRecord)initWithRecord:(void *)record;
- (ABVCardRecord)initWithVCardRepresentation:(id)representation;
- (BOOL)_isCompany;
- (BOOL)setValue:(void *)value forProperty:(unsigned int)property;
- (__CFString)_vCardKeyForEmailLabel:(id)label;
- (__CFString)_vCardKeyForGenericLabel:(id)label;
- (id)ISO8061StringFromDate:(id)date;
- (id)ISO8061StringFromDateTime:(id)time;
- (id)_21vCardRepresentationAsData;
- (id)_copyGroupVCardRepresentationAsStringIncludeExternalProperties:(BOOL)properties;
- (id)_copyVCardRepresentationAsStringIncludeExternalProperties:(BOOL)properties withPhoto:(id)photo extraPhotoParameters:(id)parameters includePrivateData:(BOOL)data includeWallpaper:(BOOL)wallpaper;
- (id)_dictionaryForActivityAlerts;
- (id)_fullNameIncludingAuxiliaryElements:(BOOL)elements;
- (id)_prodID;
- (id)_realCompositeName;
- (id)_typeParameterForToneType:(id)type;
- (id)_vCardKeyForAddressLabel:(id)label vCard3:(BOOL)card3;
- (id)_vCardKeysForPhoneLabel:(id)label;
- (id)_valueForPersonSounds:(void *)sounds identifier:(int)identifier;
- (id)alternateName;
- (id)dataForInstantMessageProperties;
- (id)dataForSocialProfileProperty:(void *)property groupCount:(int64_t *)count includePrivateData:(BOOL)data;
- (id)dataForSoundProperty:(void *)property;
- (id)encodedDataForValue:(id)value charsetName:(id *)name;
- (id)encodedLineForValue:(id)value;
- (id)imageData;
- (id)newISO8061StringFromDate:(id)date;
- (id)propertyLineForGenericABProperty21:(unsigned int)property21 vCardProperty:(id)property;
- (id)propertyLineForGenericABProperty:(unsigned int)property vCardProperty:(id)cardProperty is21:(BOOL)is21 groupCount:(int64_t *)count;
- (id)propertyLineForIMHandles:(id)handles labels:(id)labels vCardProperty:(id)property;
- (id)propertyLineForIMPPProperty:(BOOL)property groupCount:(int64_t *)count includePrivateData:(BOOL)data;
- (id)propertyLineForInstantMessageHandles:(BOOL)handles groupCount:(int64_t *)count includePrivateData:(BOOL)data;
- (id)stringForAlternateBirthdayComponent:(id)component key:(id)key formatWidth:(int)width;
- (id)stringFromAlternateBirthday:(id)birthday;
- (id)vCardRepresentationForMode:(int)mode;
- (void)_addPersonSounds:(void *)sounds identifier:(int)identifier toActivityAlerts:(id *)alerts activity:(id)activity alert:(id)alert;
- (void)_appendPropValue:(id)value forPropKey:(id)key toOutString:(id)string usingDelimiter:(id)delimiter inGroup:(id)group;
- (void)appendLabel:(id)label toVCardRep:(id)rep inGroup:(id)group;
- (void)dealloc;
- (void)valueForProperty:(unsigned int)property;
@end

@implementation ABVCardRecord

- (ABVCardRecord)initWithRecord:(void *)record
{
  v6.receiver = self;
  v6.super_class = ABVCardRecord;
  v4 = [(ABVCardRecord *)&v6 init];
  if (v4)
  {
    v4->_record = CFRetain(record);
    v4->_properties = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  return v4;
}

- (ABVCardRecord)init
{
  v4.receiver = self;
  v4.super_class = ABVCardRecord;
  v2 = [(ABVCardRecord *)&v4 init];
  if (v2)
  {
    v2->_record = ABPersonCreate();
    v2->_properties = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  return v2;
}

- (ABVCardRecord)initWithVCardRepresentation:(id)representation
{
  v10.receiver = self;
  v10.super_class = ABVCardRecord;
  v4 = [(ABVCardRecord *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (representation)
    {
      v6 = objc_opt_new();
      v7 = [[ABVCardParser alloc] initWithData:representation];
      v8 = [(ABVCardParser *)v7 sortedPeopleAndProperties:0];
      if ([v8 count] == 1)
      {
        v5->_record = CFRetain([v8 lastObject]);
      }

      v5->_properties = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  record = self->_record;
  if (record)
  {
    CFRelease(record);
  }

  properties = self->_properties;
  if (properties)
  {
    CFRelease(properties);
  }

  v5.receiver = self;
  v5.super_class = ABVCardRecord;
  [(ABVCardRecord *)&v5 dealloc];
}

- (id)vCardRepresentationForMode:(int)mode
{
  if (mode)
  {
    if (mode == 1)
    {
      v4 = [(ABVCardRecord *)self _copyVCardRepresentationAsStringIncludeExternalProperties:0 withPhoto:0 extraPhotoParameters:0 includePrivateData:0 includeWallpaper:0];
      copyABVCardDataRepresentation = [v4 copyABVCardDataRepresentation];
      ABRegulatoryLogReadTransmitContactsData();

      return copyABVCardDataRepresentation;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(ABVCardRecord *)self _21vCardRepresentationAsData];
  }
}

+ (__CFArray)supportedProperties
{
  if (supportedProperties_onceToken != -1)
  {
    +[ABVCardRecord supportedProperties];
  }

  return supportedProperties_retVal;
}

CFArrayRef __36__ABVCardRecord_supportedProperties__block_invoke()
{
  values[36] = *MEMORY[0x1E69E9840];
  values[0] = kABPersonKindProperty;
  values[1] = kABPersonFirstNameProperty;
  values[2] = kABPersonMiddleNameProperty;
  values[3] = kABPersonLastNameProperty;
  values[4] = kABPersonPreviousFamilyNameProperty;
  values[5] = kABPersonPrefixProperty;
  values[6] = kABPersonSuffixProperty;
  values[7] = kABPersonNicknameProperty;
  values[8] = kABPersonFirstNamePhoneticProperty;
  values[9] = kABPersonMiddleNamePhoneticProperty;
  values[10] = kABPersonLastNamePhoneticProperty;
  values[11] = kABPersonFirstNamePronunciationProperty;
  values[12] = kABPersonMiddleNamePronunciationProperty;
  values[13] = kABPersonLastNamePronunciationProperty;
  values[14] = kABPersonOrganizationProperty;
  values[15] = kABPersonOrganizationPhoneticProperty;
  values[16] = kABPersonOrganizationPronunciationProperty;
  values[17] = kABPersonJobTitleProperty;
  values[18] = kABPersonDepartmentProperty;
  values[19] = kABPersonPhoneProperty;
  values[20] = kABPersonEmailProperty;
  values[21] = kABPersonAddressProperty;
  values[22] = kABPersonURLProperty;
  values[23] = kABPersonDateProperty;
  values[24] = kABPersonBirthdayProperty;
  values[25] = kABPersonNoteProperty;
  values[26] = kABPersonSocialProfileProperty;
  values[27] = kABPersonInstantMessageProperty;
  values[28] = kABPersonRelatedNamesProperty;
  values[29] = kABPersonImageURIProperty;
  values[30] = kABPersonPhonemeDataProperty;
  values[31] = kABPersonAlternateBirthdayProperty;
  values[32] = kABPersonMapsDataProperty;
  values[33] = kABPersonSoundProperty;
  values[34] = kABPersonWallpaperProperty;
  values[35] = kABPersonWallpaperURIProperty;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 36, 0);
  supportedProperties_retVal = result;
  return result;
}

- (BOOL)setValue:(void *)value forProperty:(unsigned int)property
{
  v7 = +[ABVCardRecord supportedProperties];
  if (property && (v8 = v7, v11.length = CFArrayGetCount(v7), v11.location = 0, CFArrayGetFirstIndexOfValue(v8, v11, property) == -1))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = ABRecordSetValue(self->_record, property, value, 0);
    if (v9)
    {
      CFArrayAppendValue(self->_properties, property);
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

+ (void)setPrivateVCardEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];

  CFPreferencesSetAppValue(@"ABPrivateVCardFieldsEnabled", v3, @"com.apple.AddressBook");
}

+ (void)setVCardField:(id)field isPrivate:(BOOL)private
{
  v6 = CFPreferencesCopyAppValue(@"ABPrivateVCardFields", @"com.apple.AddressBook");
  valuea = [v6 mutableCopy];

  v7 = valuea;
  if (!valuea)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  value = v7;
  if (private)
  {
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), field}];
  }

  else
  {
    [v7 removeObjectForKey:field];
  }

  CFPreferencesSetAppValue(@"ABPrivateVCardFields", value, @"com.apple.AddressBook");
}

+ (BOOL)vcardFieldisPrivate:(id)private
{
  v4 = CFPreferencesCopyAppValue(@"ABPrivateVCardFields", @"com.apple.AddressBook");
  LOBYTE(private) = [objc_msgSend(v4 objectForKey:{private), "BOOLValue"}];

  return private;
}

+ (void)setIncludeNotesInVCards:(BOOL)cards
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:cards];

  CFPreferencesSetAppValue(@"ABIncludeNotesInVCard", v3, @"com.apple.AddressBook");
}

+ (BOOL)includeNotesInVCards
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ABIncludeNotesInVCard", @"com.apple.AddressBook", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (void)setIncludeAddressingGrammarInVCards:(BOOL)cards
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:cards];

  CFPreferencesSetAppValue(@"ABIncludeAddressingGrammarInVCard", v3, @"com.apple.AddressBook");
}

+ (BOOL)includeAddressingGrammarInVCards
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ABIncludeAddressingGrammarInVCard", @"com.apple.AddressBook", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (void)setIncludeREVInVCards:(BOOL)cards
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:cards];

  CFPreferencesSetAppValue(@"ABIncludeREVInVCard", v3, @"com.apple.AddressBook");
}

+ (BOOL)includeREVInVCards
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ABIncludeREVInVCard", @"com.apple.AddressBook", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

+ (void)setIncludePhotosInVCards:(BOOL)cards
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:cards];

  CFPreferencesSetAppValue(@"ABIncludePhotosInVCard", v3, @"com.apple.AddressBook");
}

+ (BOOL)includePhotosInVCards
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"ABIncludePhotosInVCard", @"com.apple.AddressBook", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (id)_vCardKeyForAddressLabel:(id)label vCard3:(BOOL)card3
{
  card3Copy = card3;
  if ([label isEqualToString:@"_$!<Work>!$_"])
  {
    v6 = @"WORK";
    v7 = @";type=WORK";
    goto LABEL_5;
  }

  if ([label isEqualToString:@"_$!<Home>!$_"])
  {
    v6 = @"HOME";
    v7 = @";type=HOME";
LABEL_5:
    if (card3Copy)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  v9 = [label isEqualToString:@"_$!<Other>!$_"];
  v10 = @"OTHER";
  if (card3Copy)
  {
    v10 = @";type=OTHER";
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (__CFString)_vCardKeyForGenericLabel:(id)label
{
  if ([label isEqualToString:@"_$!<Work>!$_"])
  {
    return @"WORK";
  }

  if ([label isEqualToString:@"_$!<Home>!$_"])
  {
    return @"HOME";
  }

  return 0;
}

- (id)_vCardKeysForPhoneLabel:(id)label
{
  if ([label isEqualToString:@"_$!<Work>!$_"])
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = @"VOICE";
    return [v4 arrayWithObjects:{@"WORK", v5, 0, v13}];
  }

  if ([label isEqualToString:@"_$!<Home>!$_"])
  {
    v7 = MEMORY[0x1E695DEC8];
    v8 = @"VOICE";
    return [v7 arrayWithObjects:{@"HOME", v8, 0, v13}];
  }

  if ([label isEqualToString:@"_$!<Other>!$_"])
  {
    v9 = MEMORY[0x1E695DEC8];
    v10 = @"VOICE";
    return [v9 arrayWithObjects:{@"OTHER", v10, 0, v13}];
  }

  if ([label isEqualToString:@"_$!<Mobile>!$_"])
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{@"CELL", @"VOICE", 0, v13}];
  }

  if ([label isEqualToString:@"iPhone"])
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{@"IPHONE", @"CELL", @"VOICE", 0}];
  }

  if ([label isEqualToString:@"Apple Watch"])
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{@"APPLEWATCH", @"CELL", @"VOICE", 0}];
  }

  if ([label isEqualToString:@"_$!<Main>!$_"])
  {
    v11 = MEMORY[0x1E695DEC8];
    v12 = @"MAIN";
  }

  else
  {
    if ([label isEqualToString:@"_$!<WorkFAX>!$_"])
    {
      v4 = MEMORY[0x1E695DEC8];
      v5 = @"FAX";
      return [v4 arrayWithObjects:{@"WORK", v5, 0, v13}];
    }

    if ([label isEqualToString:@"_$!<HomeFAX>!$_"])
    {
      v7 = MEMORY[0x1E695DEC8];
      v8 = @"FAX";
      return [v7 arrayWithObjects:{@"HOME", v8, 0, v13}];
    }

    if ([label isEqualToString:@"_$!<OtherFAX>!$_"])
    {
      v9 = MEMORY[0x1E695DEC8];
      v10 = @"FAX";
      return [v9 arrayWithObjects:{@"OTHER", v10, 0, v13}];
    }

    if (![label isEqualToString:@"_$!<Pager>!$_"])
    {
      return 0;
    }

    v11 = MEMORY[0x1E695DEC8];
    v12 = @"PAGER";
  }

  return [v11 arrayWithObject:v12];
}

- (__CFString)_vCardKeyForEmailLabel:(id)label
{
  if ([label isEqualToString:@"_$!<Work>!$_"])
  {
    return @"WORK";
  }

  if ([label isEqualToString:@"_$!<Home>!$_"])
  {
    return @"HOME";
  }

  return 0;
}

- (void)appendLabel:(id)label toVCardRep:(id)rep inGroup:(id)group
{
  if (label)
  {
    [rep appendString:group];
    [rep appendString:@"."];
    [rep appendString:@"X-ABLabel:"];
    [rep appendString:{objc_msgSend(label, "abVCardKoshify")}];

    [rep appendString:@"\r\n"];
  }
}

- (id)newISO8061StringFromDate:(id)date
{
  if (newISO8061StringFromDate__pred != -1)
  {
    [ABVCardRecord newISO8061StringFromDate:];
  }

  v4 = [newISO8061StringFromDate__gmtDateFormatter stringFromDate:date];

  return v4;
}

uint64_t __42__ABVCardRecord_newISO8061StringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  newISO8061StringFromDate__gmtDateFormatter = v0;

  return [v0 setFormatOptions:275];
}

- (id)ISO8061StringFromDate:(id)date
{
  v3 = [(ABVCardRecord *)self newISO8061StringFromDate:date];

  return v3;
}

- (id)ISO8061StringFromDateTime:(id)time
{
  if (ISO8061StringFromDateTime__pred != -1)
  {
    [ABVCardRecord ISO8061StringFromDateTime:];
  }

  v4 = ISO8061StringFromDateTime__gmtDateFormatter;

  return [v4 stringFromDate:time];
}

uint64_t __43__ABVCardRecord_ISO8061StringFromDateTime___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  ISO8061StringFromDateTime__gmtDateFormatter = v0;

  return [v0 setFormatOptions:1907];
}

- (id)stringForAlternateBirthdayComponent:(id)component key:(id)key formatWidth:(int)width
{
  v5 = *&width;
  if ([component objectForKeyedSubscript:key])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%0*li", v5, objc_msgSend(objc_msgSend(component, "objectForKeyedSubscript:", key), "integerValue")];
  }

  else
  {
    return @"-";
  }
}

- (id)stringFromAlternateBirthday:(id)birthday
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"CALSCALE=%@:", objc_msgSend(birthday, "objectForKeyedSubscript:", @"calendarIdentifier"];
  [string appendString:{-[ABVCardRecord stringForAlternateBirthdayComponent:key:formatWidth:](self, "stringForAlternateBirthdayComponent:key:formatWidth:", birthday, @"era", 4)}];
  [string appendString:{-[ABVCardRecord stringForAlternateBirthdayComponent:key:formatWidth:](self, "stringForAlternateBirthdayComponent:key:formatWidth:", birthday, @"year", 4)}];
  [string appendString:{-[ABVCardRecord stringForAlternateBirthdayComponent:key:formatWidth:](self, "stringForAlternateBirthdayComponent:key:formatWidth:", birthday, @"month", 2)}];
  if ([objc_msgSend(birthday objectForKeyedSubscript:{@"isLeapMonth", "BOOLValue"}])
  {
    [string appendString:@"L"];
  }

  [string appendString:{-[ABVCardRecord stringForAlternateBirthdayComponent:key:formatWidth:](self, "stringForAlternateBirthdayComponent:key:formatWidth:", birthday, @"day", 2)}];
  return string;
}

- (void)valueForProperty:(unsigned int)property
{
  v3 = [(ABVCardRecord *)self copyValueForProperty:*&property];

  return v3;
}

- (id)propertyLineForGenericABProperty:(unsigned int)property vCardProperty:(id)cardProperty is21:(BOOL)is21 groupCount:(int64_t *)count
{
  v8 = *&property;
  string = [MEMORY[0x1E696AD60] string];
  v11 = [(ABVCardRecord *)self valueForProperty:v8];
  if (v11)
  {
    v12 = v11;
    PropertyType = ABMultiValueGetPropertyType(v11);
    PrimaryIdentifier = ABCMultiValueGetPrimaryIdentifier(v12);
    Count = ABMultiValueGetCount(v12);
    if (Count)
    {
      v14 = Count;
      v15 = 0;
      v26 = v12;
      selfCopy = self;
      v25 = Count;
      do
      {
        IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v12, v15);
        if ([(ABVCardRecord *)self _showField:v8 identifier:IdentifierAtIndex])
        {
          v17 = ABMultiValueCopyValueAtIndex(v12, v15);
          v18 = v17;
          if (PropertyType == 4)
          {
            v19 = [(ABVCardRecord *)self newISO8061StringFromDate:v17];
          }

          else
          {
            v19 = CFRetain(v17);
          }

          v30 = v19;
          v20 = ABMultiValueCopyLabelAtIndex(v12, v15);
          v21 = [(ABVCardRecord *)self _vCardKeyForGenericLabel:v20];
          v22 = v21;
          if (is21 || v21)
          {
            [string appendString:cardProperty];
            if (v22)
            {
              [string appendString:@";type="];
              [string appendString:v22];
              v22 = 0;
            }
          }

          else
          {
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld", (*count)++];
            [string appendString:v22];
            [string appendString:@"."];
            [string appendString:cardProperty];
          }

          if (IdentifierAtIndex == PrimaryIdentifier)
          {
            [string appendString:@";type=pref"];
          }

          [string appendString:@":"];
          [string appendString:{objc_msgSend(v30, "abVCardKoshify")}];
          [string appendString:@"\r\n"];
          self = selfCopy;
          if (v22)
          {
            [(ABVCardRecord *)selfCopy appendLabel:v20 toVCardRep:string inGroup:v22];
          }

          v14 = v25;
          v12 = v26;
          if (v18)
          {
            CFRelease(v18);
          }
        }

        ++v15;
      }

      while (v14 != v15);
    }
  }

  return string;
}

- (id)propertyLineForInstantMessageHandles:(BOOL)handles groupCount:(int64_t *)count includePrivateData:(BOOL)data
{
  dataCopy = data;
  string = [MEMORY[0x1E696AD60] string];
  v7 = kABPersonInstantMessageProperty;
  v8 = [(ABVCardRecord *)self valueForProperty:kABPersonInstantMessageProperty];
  if (v8)
  {
    v9 = v8;
    PrimaryIdentifier = ABCMultiValueGetPrimaryIdentifier(v8);
    Count = ABMultiValueGetCount(v9);
    if (Count)
    {
      v11 = Count;
      v12 = 0;
      v28 = v9;
      v32 = Count;
      while (1)
      {
        IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v9, v12);
        if ([(ABVCardRecord *)self _showField:v7 identifier:IdentifierAtIndex])
        {
          break;
        }

LABEL_36:
        if (++v12 == v11)
        {
          return string;
        }
      }

      v14 = ABMultiValueCopyValueAtIndex(v9, v12);
      v15 = [v14 objectForKey:@"service"];
      v35 = [v14 objectForKey:@"username"];
      v33 = [v14 objectForKey:@"teamIdentifier"];
      v16 = [v14 objectForKey:@"bundleIdentifiers"];
      v34 = [v14 objectForKey:@"identifier"];
      v17 = @"X-AIM";
      if (([v15 isEqualToString:@"AIM"] & 1) == 0)
      {
        v17 = @"X-JABBER";
        if (([v15 isEqualToString:@"Jabber"] & 1) == 0)
        {
          v17 = @"X-MSN";
          if (([v15 isEqualToString:@"MSN"] & 1) == 0)
          {
            v17 = @"X-YAHOO";
            if (([v15 isEqualToString:@"Yahoo"] & 1) == 0)
            {
              v17 = @"X-ICQ";
              if (([v15 isEqualToString:@"ICQ"] & 1) == 0)
              {
                if ([v15 length])
                {
                  goto LABEL_35;
                }

                v17 = @"X-MS-IMADDRESS";
              }
            }
          }
        }
      }

      if ([v35 length])
      {
        v18 = ABMultiValueCopyLabelAtIndex(v9, v12);
        selfCopy = self;
        v20 = [(ABVCardRecord *)self _vCardKeyForGenericLabel:v18];
        v21 = v20;
        if (!v18 || handles || v20)
        {
          [string appendString:v17];
          v22 = 0;
          v24 = 0;
          v23 = @";type=";
          if (!v21)
          {
LABEL_19:
            self = selfCopy;
            v9 = v28;
            if (dataCopy)
            {
              if (v33)
              {
                [string appendString:@";x-teamidentifier="];
                [string appendString:v33];
              }

              if (v16)
              {
                [string appendString:@";x-bundleidentifiers="];
                if ([v16 count])
                {
                  v25 = 0;
                  do
                  {
                    if (v25)
                    {
                      [string appendString:{@", "}];
                    }

                    [string appendString:{objc_msgSend(v16, "objectAtIndexedSubscript:", v25++)}];
                  }

                  while (v25 < [v16 count]);
                }
              }

              if (v34)
              {
                [string appendString:@";x-userid="];
                [string appendString:{objc_msgSend(v34, "abVCardKoshify")}];
              }
            }

            if (IdentifierAtIndex == PrimaryIdentifier)
            {
              [string appendString:@";type=pref"];
            }

            [string appendString:@":"];
            [string appendString:{objc_msgSend(v35, "abVCardKoshify")}];
            [string appendString:@"\r\n"];
            if (v24)
            {
              [(ABVCardRecord *)self appendLabel:v18 toVCardRep:string inGroup:v24];
            }

            v7 = kABPersonInstantMessageProperty;
            goto LABEL_35;
          }
        }

        else
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld", (*count)++];
          [string appendString:v22];
          v23 = @".";
          v21 = v17;
        }

        [string appendString:v23];
        [string appendString:v21];
        v24 = v22;
        goto LABEL_19;
      }

LABEL_35:

      v11 = v32;
      goto LABEL_36;
    }
  }

  return string;
}

- (id)propertyLineForIMPPProperty:(BOOL)property groupCount:(int64_t *)count includePrivateData:(BOOL)data
{
  dataCopy = data;
  string = [MEMORY[0x1E696AD60] string];
  v7 = [(ABVCardRecord *)self valueForProperty:kABPersonInstantMessageProperty];
  if (v7)
  {
    v8 = v7;
    Count = ABMultiValueGetCount(v7);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v8, i);
        if ([(ABVCardRecord *)self _showField:kABPersonInstantMessageProperty identifier:IdentifierAtIndex])
        {
          v11 = ABMultiValueCopyValueAtIndex(v8, i);
          v12 = [v11 objectForKey:@"username"];
          v33 = [v11 objectForKey:@"service"];
          v13 = [v11 objectForKey:@"teamIdentifier"];
          v14 = [v11 objectForKey:@"bundleIdentifiers"];
          v30 = [v11 objectForKey:@"identifier"];

          v31 = v12;
          if (v12)
          {
            v15 = ABMultiValueCopyLabelAtIndex(v8, i);
            v16 = [(ABVCardRecord *)self _vCardKeyForGenericLabel:v15];
            v17 = 0;
            v29 = v16;
            if (v15 && !v16)
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld", (*count)++];
              v17 = v18;
              [string appendString:v18];
              [string appendString:@"."];
            }

            [string appendString:@"IMPP"];
            if (v33)
            {
              [string appendFormat:@";X-SERVICE-TYPE=%@", v33];
            }

            if (dataCopy)
            {
              if (v13)
              {
                [string appendString:@";x-teamidentifier="];
                [string appendString:v13];
              }

              if (v14)
              {
                [string appendString:@";x-bundleidentifiers="];
                if ([v14 count])
                {
                  v19 = 0;
                  do
                  {
                    if (v19)
                    {
                      [string appendString:{@", "}];
                    }

                    [string appendString:{objc_msgSend(v14, "objectAtIndexedSubscript:", v19++)}];
                  }

                  while (v19 < [v14 count]);
                }
              }

              if (v30)
              {
                [string appendString:@";x-userid="];
                [string appendString:{objc_msgSend(v30, "abVCardKoshify")}];
              }
            }

            if (v29)
            {
              [string appendString:@";type="];
              [string appendString:v29];
            }

            if (IdentifierAtIndex == ABCMultiValueGetPrimaryIdentifier(v8))
            {
              [string appendString:@";type=pref"];
            }

            if (v33 && (v20 = MEMORY[0x1E695DF20], v21 = v17, v22 = MEMORY[0x1E696AAE8], v23 = objc_opt_class(), v24 = v22, v17 = v21, (v25 = [objc_msgSend(v20 dictionaryWithContentsOfFile:{objc_msgSend(objc_msgSend(v24, "bundleForClass:", v23), "pathForResource:ofType:", @"InstantMessageURLSchemes", @"plist", "valueForKey:", objc_msgSend(v33, "lowercaseString")}]) != 0))
            {
              [string appendFormat:@":%@", v25];
            }

            else
            {
              [string appendString:@":x-apple"];
            }

            [string appendFormat:@":%@\r\n", objc_msgSend(objc_msgSend(v31, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x1E696AB08], "URLPathAllowedCharacterSet")), "abVCardKoshify")];
            if (v17)
            {
              [(ABVCardRecord *)self appendLabel:v15 toVCardRep:string inGroup:v17];
            }
          }
        }
      }
    }
  }

  return string;
}

- (id)propertyLineForGenericABProperty21:(unsigned int)property21 vCardProperty:(id)property
{
  v4 = *&property21;
  data = [MEMORY[0x1E695DF88] data];
  v27 = 0;
  v7 = [(ABVCardRecord *)self valueForProperty:v4];
  if (v7)
  {
    v8 = v7;
    PropertyType = ABMultiValueGetPropertyType(v7);
    PrimaryIdentifier = ABCMultiValueGetPrimaryIdentifier(v8);
    Count = ABMultiValueGetCount(v8);
    if (Count)
    {
      v10 = Count;
      v11 = 0;
      v23 = Count;
      do
      {
        IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v8, v11);
        if ([(ABVCardRecord *)self _showField:v4 identifier:IdentifierAtIndex])
        {
          v13 = ABMultiValueCopyValueAtIndex(v8, v11);
          v14 = v13;
          if (PropertyType == 260)
          {
            v15 = [(ABVCardRecord *)self newISO8061StringFromDate:v13];
          }

          else
          {
            v15 = CFRetain(v13);
          }

          v16 = v15;
          v17 = ABMultiValueCopyLabelAtIndex(v8, v11);
          v18 = [(ABVCardRecord *)self _vCardKeyForGenericLabel:v17];
          [data abAppendString:property];
          if (v18)
          {
            [data abAppendString:@";type="];
            [data abAppendString:v18];
          }

          if (IdentifierAtIndex == PrimaryIdentifier)
          {
            [data abAppendString:@";type=pref"];
          }

          abVCardKoshify = [v16 abVCardKoshify];
          v20 = [(ABVCardRecord *)self encodedDataForValue:abVCardKoshify charsetName:&v27];
          if (v27)
          {
            v21 = v20;
            [data abAppendString:@";CHARSET="];
            [data abAppendString:v27];
            [data abAppendString:@":"];
            [data appendData:v21];
          }

          else
          {
            [data abAppendString:@":"];
            [data abAppendString:abVCardKoshify];
          }

          v10 = v23;
          [data abAppendString:@"\r\n"];

          if (v14)
          {
            CFRelease(v14);
          }
        }

        ++v11;
      }

      while (v10 != v11);
    }
  }

  return data;
}

- (id)dataForSocialProfileProperty:(void *)property groupCount:(int64_t *)count includePrivateData:(BOOL)data
{
  dataCopy = data;
  data = [MEMORY[0x1E695DF88] data];
  propertyCopy = property;
  if (property)
  {
    Count = ABMultiValueGetCount(property);
    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        v8 = ABMultiValueCopyValueAtIndex(propertyCopy, i);
        v9 = [v8 objectForKey:@"url"];
        v10 = [v8 objectForKey:@"service"];
        v11 = [v8 objectForKey:@"username"];
        v12 = [v8 objectForKey:@"identifier"];
        v13 = [v8 objectForKey:@"displayname"];
        v14 = [v8 objectForKey:@"bundleIdentifiers"];
        v15 = [v8 objectForKey:@"teamIdentifier"];
        if (v9 | v11)
        {
          v31 = v15;
          [data abAppendString:@"X-SOCIALPROFILE"];
          v16 = v10;
          if (v10)
          {
            v17 = MEMORY[0x1E696AEC0];
            abVCardKoshify = [v16 abVCardKoshify];
            v18 = v17;
            v10 = v16;
            [data abAppendString:{objc_msgSend(v18, "stringWithFormat:", @";type=%@", abVCardKoshify)}];
          }

          if (v11)
          {
            v19 = MEMORY[0x1E696AEC0];
            abVCardKoshify2 = [v11 abVCardKoshify];
            v20 = v19;
            v10 = v16;
            [data abAppendString:{objc_msgSend(v20, "stringWithFormat:", @";x-user=%@", abVCardKoshify2)}];
          }

          if (v12)
          {
            v21 = MEMORY[0x1E696AEC0];
            abVCardKoshify3 = [v12 abVCardKoshify];
            v22 = v21;
            v10 = v16;
            [data abAppendString:{objc_msgSend(v22, "stringWithFormat:", @";x-userid=%@", abVCardKoshify3)}];
          }

          if (v13)
          {
            [data abAppendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @";x-displayname=%@", objc_msgSend(v13, "abVCardKoshify"))}];
          }

          v23 = v11;
          if (dataCopy)
          {
            if (v31)
            {
              [data abAppendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @";x-teamidentifier=%@", objc_msgSend(v31, "abVCardKoshify"))}];
            }

            if (v14)
            {
              [data abAppendString:@";x-bundleidentifiers="];
              if ([v14 count])
              {
                v24 = 0;
                do
                {
                  if (v24)
                  {
                    [data abAppendString:{@", "}];
                  }

                  [data abAppendString:{objc_msgSend(objc_msgSend(v14, "objectAtIndexedSubscript:", v24++), "abVCardKoshify")}];
                }

                while (v24 < [v14 count]);
              }
            }
          }

          if (![v9 length])
          {
            v9 = socialProfileURLForServiceAndUsername(v10, v23);
          }

          [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v9, "abVCardKoshify"))}];
        }
      }
    }
  }

  return data;
}

- (id)propertyLineForIMHandles:(id)handles labels:(id)labels vCardProperty:(id)property
{
  data = [MEMORY[0x1E695DF88] data];
  v19 = 0;
  v10 = [handles count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v13 = [handles objectAtIndex:i];
      v14 = -[ABVCardRecord _vCardKeyForGenericLabel:](self, "_vCardKeyForGenericLabel:", [labels objectAtIndex:i]);
      [data abAppendString:property];
      if (v14)
      {
        [data abAppendString:@";type="];
        [data abAppendString:v14];
      }

      abVCardKoshify = [v13 abVCardKoshify];
      v16 = [(ABVCardRecord *)self encodedDataForValue:abVCardKoshify charsetName:&v19];
      if (v19)
      {
        v17 = v16;
        [data abAppendString:@";CHARSET="];
        [data abAppendString:v19];
        [data abAppendString:@":"];
        [data appendData:v17];
      }

      else
      {
        [data abAppendString:@":"];
        [data abAppendString:abVCardKoshify];
      }

      [data abAppendString:@"\r\n"];
    }
  }

  return data;
}

- (id)dataForInstantMessageProperties
{
  v2 = [(ABVCardRecord *)self valueForProperty:kABPersonInstantMessageProperty];
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v2)
  {
    Count = ABMultiValueGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v26 = @"ICQ";
      do
      {
        v6 = ABMultiValueCopyValueAtIndex(v2, v5);
        v7 = ABMultiValueCopyLabelAtIndex(v2, v5);
        v8 = [v6 objectForKey:@"service"];
        v10 = v36;
        v9 = v37;
        if (([v8 isEqualToString:@"AIM"] & 1) == 0)
        {
          v10 = v34;
          v9 = v35;
          if (([v8 isEqualToString:@"Jabber"] & 1) == 0)
          {
            v10 = v32;
            v9 = v33;
            if (([v8 isEqualToString:@"MSN"] & 1) == 0)
            {
              v10 = v30;
              v9 = v31;
              if (([v8 isEqualToString:@"Yahoo"] & 1) == 0)
              {
                v11 = [v8 isEqualToString:v26];
                if (v11)
                {
                  v9 = v29;
                }

                else
                {
                  v9 = 0;
                }

                if (v11)
                {
                  v10 = v28;
                }

                else
                {
                  v10 = 0;
                }
              }
            }
          }
        }

        v12 = [v6 objectForKey:{@"username", v26}];
        if (v12)
        {
          [v9 addObject:v12];
          if (v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = &stru_1F2FE2718;
          }

          [v10 addObject:v13];
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }

  data = [MEMORY[0x1E695DF88] data];
  v15 = [(ABVCardRecord *)self propertyLineForIMHandles:v37 labels:v36 vCardProperty:@"X-AIM"];
  if (v15)
  {
    v16 = v15;
    if ([v15 length])
    {
      [data appendData:v16];
    }
  }

  v17 = [(ABVCardRecord *)self propertyLineForIMHandles:v35 labels:v34 vCardProperty:@"X-JABBER"];
  if (v17)
  {
    v18 = v17;
    if ([v17 length])
    {
      [data appendData:v18];
    }
  }

  v19 = [(ABVCardRecord *)self propertyLineForIMHandles:v33 labels:v32 vCardProperty:@"X-MSN"];
  if (v19)
  {
    v20 = v19;
    if ([v19 length])
    {
      [data appendData:v20];
    }
  }

  v21 = [(ABVCardRecord *)self propertyLineForIMHandles:v31 labels:v30 vCardProperty:@"X-YAHOO"];
  if (v21)
  {
    v22 = v21;
    if ([v21 length])
    {
      [data appendData:v22];
    }
  }

  v23 = [(ABVCardRecord *)self propertyLineForIMHandles:v29 labels:v28 vCardProperty:@"X-ICQ"];
  if (v23)
  {
    v24 = v23;
    if ([v23 length])
    {
      [data appendData:v24];
    }
  }

  return data;
}

- (id)_valueForPersonSounds:(void *)sounds identifier:(int)identifier
{
  IndexForIdentifier = ABMultiValueGetIndexForIdentifier(sounds, identifier);
  if (IndexForIdentifier == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = ABMultiValueCopyValueAtIndex(sounds, IndexForIdentifier);
  }

  return v6;
}

- (void)_addPersonSounds:(void *)sounds identifier:(int)identifier toActivityAlerts:(id *)alerts activity:(id)activity alert:(id)alert
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = [(ABVCardRecord *)self _valueForPersonSounds:sounds identifier:*&identifier];
  if (v10)
  {
    v11 = v10;
    dictionary = *alerts;
    if (!*alerts)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      *alerts = dictionary;
    }

    v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(dictionary, "objectForKeyedSubscript:", activity)}];
    alertCopy = alert;
    v18[0] = v11;
    [v13 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, &alertCopy, 1)}];
    v14 = *alerts;
    activityCopy = activity;
    v16 = v13;
    [v14 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v16, &activityCopy, 1)}];
  }
}

- (id)_dictionaryForActivityAlerts
{
  v7 = 0;
  result = [(ABVCardRecord *)self valueForProperty:kABPersonSoundProperty];
  if (result)
  {
    v4 = result;
    v5 = [(ABVCardRecord *)self _valueForPersonSounds:result identifier:4294967293];
    if (v5)
    {
      v6 = [v5 dataUsingEncoding:4];
      v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:1 error:0];
    }

    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:0xFFFFFFFFLL toActivityAlerts:&v7 activity:@"com.apple.activityalert.call" alert:@"sound"];
    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:4294967195 toActivityAlerts:&v7 activity:@"com.apple.activityalert.call" alert:@"vibration"];
    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:4294967292 toActivityAlerts:&v7 activity:@"com.apple.activityalert.call" alert:@"ignoreMute"];
    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:4294967294 toActivityAlerts:&v7 activity:@"com.apple.activityalert.text" alert:@"sound"];
    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:4294967194 toActivityAlerts:&v7 activity:@"com.apple.activityalert.text" alert:@"vibration"];
    [(ABVCardRecord *)self _addPersonSounds:v4 identifier:4294967291 toActivityAlerts:&v7 activity:@"com.apple.activityalert.text" alert:@"ignoreMute"];
    return v7;
  }

  return result;
}

- (id)_typeParameterForToneType:(id)type
{
  if (![type caseInsensitiveCompare:@"com.apple.activityalert.call"])
  {
    return @"call";
  }

  if ([type caseInsensitiveCompare:@"com.apple.activityalert.text"])
  {
    return type;
  }

  return @"text";
}

- (id)dataForSoundProperty:(void *)property
{
  data = [MEMORY[0x1E695DF88] data];
  _dictionaryForActivityAlerts = [(ABVCardRecord *)self _dictionaryForActivityAlerts];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__ABVCardRecord_dataForSoundProperty___block_invoke;
  v7[3] = &unk_1E7CCCE58;
  v7[4] = data;
  v7[5] = self;
  [_dictionaryForActivityAlerts enumerateKeysAndObjectsUsingBlock:v7];
  return data;
}

uint64_t __38__ABVCardRecord_dataForSoundProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    [*(a1 + 32) abAppendString:@"X-ACTIVITY-ALERT:"];
    [*(a1 + 32) abAppendString:{+[ABVCardActivityAlertSerialization stringWithType:info:](ABVCardActivityAlertSerialization, "stringWithType:info:", objc_msgSend(*(a1 + 40), "_typeParameterForToneType:", a2), a3)}];
    v7 = *(a1 + 32);

    return [v7 abAppendString:@"\r\n"];
  }

  return result;
}

- (id)encodedLineForValue:(id)value
{
  data = [MEMORY[0x1E695DF88] data];
  if ([value canBeConvertedToEncoding:1])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@":"];
    [(__CFString *)v5 appendString:value];
    [(__CFString *)v5 appendString:@"\r\n"];
    v6 = v5;
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  [data appendData:{objc_msgSend(@";CHARSET=", "dataUsingEncoding:", 1)}];
  v7 = CFPreferencesCopyAppValue(@"AB21vCardEncoding", @"com.apple.AddressBook");
  if (v7)
  {
    v5 = v7;
    v8 = CFStringConvertIANACharSetNameToEncoding(v7);
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, value, v8, 0);
    v10 = CFMakeCollectable(ExternalRepresentation);
    if (v10)
    {
      v11 = v10;
      [data appendData:{-[__CFString dataUsingEncoding:](v5, "dataUsingEncoding:", 1)}];
      [data appendData:{objc_msgSend(@":", "dataUsingEncoding:", 1)}];
      [data appendData:v11];

      v6 = @"\r\n";
      goto LABEL_6;
    }
  }

  if ([value canBeConvertedToEncoding:5])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"LATIN1:"];
    [(__CFString *)v5 appendString:value];
    [(__CFString *)v5 appendString:@"\r\n"];
    v6 = v5;
    v12 = 5;
  }

  else
  {
    v14 = [value canBeConvertedToEncoding:30];
    v15 = objc_alloc(MEMORY[0x1E696AD60]);
    if (v14)
    {
      v5 = [v15 initWithString:@"MACINTOSH:"];
      [(__CFString *)v5 appendString:value];
      [(__CFString *)v5 appendString:@"\r\n"];
      v6 = v5;
      v12 = 30;
    }

    else
    {
      v5 = [v15 initWithString:@"UTF-8:"];
      [(__CFString *)v5 appendString:value];
      [(__CFString *)v5 appendString:@"\r\n"];
      v6 = v5;
      v12 = 4;
    }
  }

LABEL_7:
  [data appendData:{-[__CFString dataUsingEncoding:](v6, "dataUsingEncoding:", v12)}];

  return data;
}

- (id)encodedDataForValue:(id)value charsetName:(id *)name
{
  if ([value canBeConvertedToEncoding:1])
  {
    *name = 0;
    valueCopy4 = value;
    v7 = 1;
    goto LABEL_13;
  }

  v8 = CFPreferencesCopyAppValue(@"AB21vCardEncoding", @"com.apple.AddressBook");
  if ([value canBeConvertedToEncoding:5])
  {
    *name = @"LATIN1";
    valueCopy4 = value;
    v7 = 5;
    goto LABEL_13;
  }

  if (!v8 || (v9 = CFStringConvertIANACharSetNameToEncoding(v8), ExternalRepresentation = CFStringCreateExternalRepresentation(0, value, v9, 0), (v11 = CFMakeCollectable(ExternalRepresentation)) == 0))
  {
    if ([value canBeConvertedToEncoding:30])
    {
      *name = @"MACINTOSH";
      valueCopy4 = value;
      v7 = 30;
    }

    else
    {
      *name = @"UTF-8";
      valueCopy4 = value;
      v7 = 4;
    }

LABEL_13:

    return [valueCopy4 dataUsingEncoding:v7];
  }

  *name = v8;

  return v11;
}

- (id)_fullNameIncludingAuxiliaryElements:(BOOL)elements
{
  elementsCopy = elements;
  v5 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNameProperty];
  v6 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNameProperty];
  v7 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNameProperty];
  if (elementsCopy)
  {
    v8 = [(ABVCardRecord *)self valueForProperty:kABPersonPrefixProperty];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ABVCardRecord *)self valueForProperty:kABPersonSuffixProperty];
  string = [MEMORY[0x1E696AD60] string];
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = &stru_1F2FE2718;
  }

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_1F2FE2718;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1F2FE2718;
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = &stru_1F2FE2718;
  }

  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = &stru_1F2FE2718;
  }

  v16 = [(__CFString *)v11 length];
  v17 = [(__CFString *)v12 length];
  v24 = [(__CFString *)v13 length];
  v18 = [(__CFString *)v14 length];
  v19 = [(__CFString *)v15 length];
  if (v16)
  {
    if (!v17)
    {
      return v11;
    }

    v20 = v19;
    v25 = 0;
    CompositeNameFormatAndDelimiterForRecord = ABPersonGetCompositeNameFormatAndDelimiterForRecord(self->_record, &v25);
    if (v25)
    {
      v22 = v25;
    }

    else
    {
      v22 = @" ";
    }

    if (CompositeNameFormatAndDelimiterForRecord == 1)
    {
      if (v18)
      {
        [string appendString:v14];
        [string appendString:v22];
      }

      [string appendString:v12];
      [string appendString:v22];
      [string appendString:v11];
      if (v20)
      {
        [string appendString:v22];
        [string appendString:v15];
      }

      if (!v24)
      {
        return string;
      }

LABEL_40:
      [string appendString:v22];
      [string appendString:v13];
      return string;
    }

    if (v18)
    {
      [string appendString:v14];
      [string appendString:v22];
    }

    [string appendString:v11];
    [string appendString:v22];
    if (v24)
    {
      [string appendString:v13];
      [string appendString:v22];
    }

    [string appendString:v12];
    v13 = v15;
    if (v20)
    {
      goto LABEL_40;
    }
  }

  else if (v17)
  {
    return v12;
  }

  return string;
}

- (BOOL)_isCompany
{
  v2 = [(ABVCardRecord *)self valueForProperty:kABPersonKindProperty];
  if (v2)
  {
    LOBYTE(v2) = CFEqual(v2, kABPersonKindOrganization) != 0;
  }

  return v2;
}

- (id)alternateName
{
  result = [(ABVCardRecord *)self valueForProperty:kABPersonNicknameProperty];
  if (!result)
  {
    result = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationProperty];
    if (!result)
    {
      v4 = [(ABVCardRecord *)self valueForProperty:kABPersonEmailProperty];
      if (v4 && (v5 = v4, ABMultiValueGetCount(v4)))
      {
        v6 = ABMultiValueCopyValueAtIndex(v5, 0);

        return v6;
      }

      else
      {
        return &stru_1F2FE2718;
      }
    }
  }

  return result;
}

- (id)_realCompositeName
{
  if ([(ABVCardRecord *)self _isCompany])
  {
    v3 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationProperty];
    if (v3)
    {
      alternateName = v3;
      if ([v3 length])
      {
        goto LABEL_8;
      }
    }

    _fullName = [(ABVCardRecord *)self _fullName];
LABEL_6:
    alternateName = _fullName;
    if ([_fullName length])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  _fullName = [(ABVCardRecord *)self _fullNameIncludingAuxiliaryElements:1];
  if (_fullName)
  {
    goto LABEL_6;
  }

LABEL_7:
  alternateName = [(ABVCardRecord *)self alternateName];
LABEL_8:
  if (alternateName)
  {
    return alternateName;
  }

  else
  {
    return &stru_1F2FE2718;
  }
}

- (id)_21vCardRepresentationAsData
{
  data = [MEMORY[0x1E695DF88] data];
  array = [MEMORY[0x1E695DF70] array];
  [data abAppendString:@"BEGIN:VCARD"];
  [data abAppendString:@"\r\n"];
  [data abAppendString:@"VERSION:2.1"];
  [data abAppendString:@"\r\n"];
  v3 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNameProperty];
  if (!v3)
  {
    v3 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v3, "abVCardKoshify")}];
  v4 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNameProperty];
  if (!v4)
  {
    v4 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v4, "abVCardKoshify")}];
  v5 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNameProperty];
  if (!v5)
  {
    v5 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v5, "abVCardKoshify")}];
  v6 = [(ABVCardRecord *)self valueForProperty:kABCPrefixProperty];
  if (!v6)
  {
    v6 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v6, "abVCardKoshify")}];
  v7 = [(ABVCardRecord *)self valueForProperty:kABCSuffixProperty];
  if (!v7)
  {
    v7 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v7, "abVCardKoshify")}];
  [data abAppendString:@"N"];
  [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(array, "componentsJoinedByString:", @";"}];
  [array removeAllObjects];
  _realCompositeName = [(ABVCardRecord *)self _realCompositeName];
  if ([_realCompositeName length])
  {
    [data abAppendString:@"FN"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(_realCompositeName, "abVCardKoshify"))}];
  }

  v9 = [(ABVCardRecord *)self valueForProperty:kABPersonNicknameProperty];
  v10 = v9;
  if (v9 && ([v9 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"NICKNAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v10, "abVCardKoshify"))}];
  }

  v11 = [(ABVCardRecord *)self valueForProperty:kABPersonPreviousFamilyNameProperty];
  v12 = v11;
  if (v11 && ([v11 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-MAIDENNAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v12, "abVCardKoshify"))}];
  }

  v13 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNamePhoneticProperty];
  v14 = v13;
  if (v13 && ([v13 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PHONETIC-FIRST-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v14, "abVCardKoshify"))}];
  }

  v15 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNamePronunciationProperty];
  v16 = v15;
  if (v15 && ([v15 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PRONUNCIATION-FIRST-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v16, "abVCardKoshify"))}];
  }

  v17 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNamePhoneticProperty];
  v18 = v17;
  if (v17 && ([v17 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PHONETIC-MIDDLE-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v18, "abVCardKoshify"))}];
  }

  v19 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNamePronunciationProperty];
  v20 = v19;
  if (v19 && ([v19 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PRONUNCIATION-MIDDLE-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v20, "abVCardKoshify"))}];
  }

  v21 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNamePhoneticProperty];
  v22 = v21;
  if (v21 && ([v21 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PHONETIC-LAST-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v22, "abVCardKoshify"))}];
  }

  v23 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNamePronunciationProperty];
  v24 = v23;
  if (v23 && ([v23 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PRONUNCIATION-LAST-NAME"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v24, "abVCardKoshify"))}];
  }

  v25 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationProperty];
  v26 = [(ABVCardRecord *)self valueForProperty:kABPersonDepartmentProperty];
  if (v25 | v26 && (![v25 isEqualToString:&stru_1F2FE2718] || (objc_msgSend(v26, "isEqualToString:", &stru_1F2FE2718) & 1) == 0))
  {
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    if ([v25 length])
    {
      abVCardKoshify = [v25 abVCardKoshify];
    }

    else
    {
      abVCardKoshify = &stru_1F2FE2718;
    }

    [v27 appendString:abVCardKoshify];
    [v27 appendString:@";"];
    if ([v26 length])
    {
      abVCardKoshify2 = [v26 abVCardKoshify];
    }

    else
    {
      abVCardKoshify2 = &stru_1F2FE2718;
    }

    [v27 appendString:abVCardKoshify2];
    [data abAppendString:@"ORG"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", v27)}];
  }

  v30 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationPhoneticProperty];
  v31 = v30;
  if (v30 && ([v30 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PHONETIC-ORG"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v31, "abVCardKoshify"))}];
  }

  v32 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationPronunciationProperty];
  v33 = v32;
  if (v32 && ([v32 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"X-PRONUNCIATION-ORG"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v33, "abVCardKoshify"))}];
  }

  v34 = [(ABVCardRecord *)self valueForProperty:kABPersonJobTitleProperty];
  v35 = v34;
  if (v34 && ([v34 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [data abAppendString:@"TITLE"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v35, "abVCardKoshify"))}];
  }

  v36 = [(ABVCardRecord *)self valueForProperty:kABPersonEmailProperty];
  v37 = v36;
  if (v36)
  {
    Count = ABMultiValueGetCount(v36);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        if ([(ABVCardRecord *)self _showField:kABPersonEmailProperty identifier:ABMultiValueGetIdentifierAtIndex(v37, i)])
        {
          v40 = ABMultiValueCopyValueAtIndex(v37, i);
          v41 = ABMultiValueCopyLabelAtIndex(v37, i);
          [data abAppendString:@"EMAIL;INTERNET"];
          v42 = [(ABVCardRecord *)self _vCardKeyForEmailLabel:v41];
          if (v42)
          {
            [data abAppendString:@";"];
            [data abAppendString:v42];
          }

          [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v40, "abVCardKoshify"))}];
        }
      }
    }
  }

  v43 = [(ABVCardRecord *)self valueForProperty:?];
  v44 = v43;
  if (v43)
  {
    v83 = ABMultiValueGetCount(v43);
    if (v83 >= 1)
    {
      for (j = 0; j != v83; ++j)
      {
        if ([(ABVCardRecord *)self _showField:kABPersonPhoneProperty identifier:ABMultiValueGetIdentifierAtIndex(v44, j)])
        {
          v46 = ABMultiValueCopyValueAtIndex(v44, j);
          v47 = ABMultiValueCopyLabelAtIndex(v44, j);
          [data abAppendString:@"TEL"];
          v48 = [(ABVCardRecord *)self _vCardKeysForPhoneLabel:v47];
          v49 = [v48 count];
          if (v49 >= 1)
          {
            for (k = 0; k != v49; ++k)
            {
              v51 = [v48 objectAtIndex:k];
              [data abAppendString:@";"];
              [data abAppendString:v51];
            }
          }

          [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v46, "abVCardKoshify"))}];
        }
      }
    }
  }

  v52 = [(ABVCardRecord *)self valueForProperty:kABPersonAddressProperty];
  v53 = v52;
  if (v52)
  {
    v54 = ABMultiValueGetCount(v52);
    if (v54 >= 1)
    {
      for (m = 0; m != v54; ++m)
      {
        if ([(ABVCardRecord *)self _showField:kABPersonAddressProperty identifier:ABMultiValueGetIdentifierAtIndex(v53, m)])
        {
          v56 = ABMultiValueCopyValueAtIndex(v53, m);
          v57 = ABMultiValueCopyLabelAtIndex(v53, m);
          [data abAppendString:@"ADR"];
          v58 = [(ABVCardRecord *)self _vCardKeyForAddressLabel:v57 vCard3:0];
          if (v58)
          {
            [data abAppendString:@";"];
            [data abAppendString:v58];
          }

          [array addObject:&stru_1F2FE2718];
          v59 = [v56 objectForKey:@"Street"];
          v60 = v59;
          if (v59)
          {
            v61 = [v59 rangeOfString:@"\r"];
            if (v62)
            {
              v63 = v61;
              [array addObject:{objc_msgSend(objc_msgSend(v60, "substringToIndex:", v61), "abVCardKoshify")}];
              abVCardKoshify3 = [objc_msgSend(v60 substringFromIndex:{v63 + 1), "abVCardKoshify"}];
            }

            else
            {
              [array addObject:&stru_1F2FE2718];
              abVCardKoshify3 = [v60 abVCardKoshify];
            }

            [array addObject:abVCardKoshify3];
          }

          else
          {
            [array addObject:&stru_1F2FE2718];
            [array addObject:&stru_1F2FE2718];
          }

          v65 = [v56 objectForKey:@"City"];
          if (!v65)
          {
            v65 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v65, "abVCardKoshify")}];
          v66 = [v56 objectForKey:@"State"];
          if (!v66)
          {
            v66 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v66, "abVCardKoshify")}];
          v67 = [v56 objectForKey:@"ZIP"];
          if (!v67)
          {
            v67 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v67, "abVCardKoshify")}];
          v68 = [v56 objectForKey:@"Country"];
          if (!v68)
          {
            v68 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v68, "abVCardKoshify")}];
          [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(array, "componentsJoinedByString:", @";"}];
          [array removeAllObjects];
        }
      }
    }
  }

  v69 = [(ABVCardRecord *)self valueForProperty:kABPersonNoteProperty];
  v70 = v69;
  if (v69 && ([v69 isEqualToString:&stru_1F2FE2718] & 1) == 0 && objc_msgSend(objc_opt_class(), "includeNotesInVCards"))
  {
    [data abAppendString:@"NOTE"];
    [data appendData:{-[ABVCardRecord encodedLineForValue:](self, "encodedLineForValue:", objc_msgSend(v70, "abVCardKoshify"))}];
  }

  v71 = [(ABVCardRecord *)self propertyLineForGenericABProperty21:kABPersonURLProperty vCardProperty:@"URL"];
  v72 = v71;
  if (v71 && [v71 length])
  {
    [data appendData:v72];
  }

  v73 = [(ABVCardRecord *)self valueForProperty:kABPersonBirthdayProperty];
  if (v73 && [(ABVCardRecord *)self _showField:kABPersonBirthdayProperty])
  {
    [data abAppendString:@"BDAY;"];
    [data abAppendString:@"value=date:"];
    [data abAppendString:{-[ABVCardRecord ISO8061StringFromDate:](self, "ISO8061StringFromDate:", v73)}];
    [data abAppendString:@"\r\n"];
  }

  dataForInstantMessageProperties = [(ABVCardRecord *)self dataForInstantMessageProperties];
  v75 = dataForInstantMessageProperties;
  if (dataForInstantMessageProperties && [dataForInstantMessageProperties length])
  {
    [data appendData:v75];
  }

  v76 = [(ABVCardRecord *)self dataForSocialProfileProperty:[(ABVCardRecord *)self valueForProperty:kABPersonSocialProfileProperty] groupCount:0 includePrivateData:0];
  v77 = v76;
  if (v76 && [v76 length])
  {
    [data appendData:v77];
  }

  v78 = [(ABVCardRecord *)self propertyLineForGenericABProperty21:kABPersonRelatedNamesProperty vCardProperty:@"X-ABRELATEDNAMES"];
  v79 = v78;
  if (v78 && [v78 length])
  {
    [data appendData:v79];
  }

  v80 = [(ABVCardRecord *)self valueForProperty:kABPersonModificationDateProperty];
  if (v80 && [objc_opt_class() includeREVInVCards])
  {
    [data abAppendString:@"REV:"];
    [data abAppendString:{-[ABVCardRecord ISO8061StringFromDateTime:](self, "ISO8061StringFromDateTime:", v80)}];
    [data abAppendString:@"\r\n"];
  }

  v81 = [(ABVCardRecord *)self valueForProperty:kABPersonAlternateBirthdayProperty];
  if ([v81 count] && -[ABVCardRecord _showField:](self, "_showField:", kABPersonAlternateBirthdayProperty))
  {
    [data abAppendString:@"X-ALTBDAY;"];
    [data abAppendString:{-[ABVCardRecord stringFromAlternateBirthday:](self, "stringFromAlternateBirthday:", v81)}];
    [data abAppendString:@"\r\n"];
  }

  [data abAppendString:@"END:VCARD"];
  [data abAppendString:@"\r\n"];
  return data;
}

- (id)imageData
{
  if (ABPersonHasImageData(self->_record))
  {
    if (![(ABVCardRecord *)self useThumbnailImageFormatIfAvailable]|| (v3 = ABPersonCopyImageDataWithFormat(self->_record, kABPersonImageFormatThumbnail)) == 0)
    {
      v3 = ABPersonCopyImageDataWithFormat(self->_record, kABPersonImageFormatOriginalSize);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_prodID
{
  if (_prodID_onceToken != -1)
  {
    [ABVCardRecord _prodID];
  }

  return _prodID__sProdID;
}

void __24__ABVCardRecord__prodID__block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v2 = v0;
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  _prodID__sProdID = [v1 initWithFormat:@"-//Apple Inc.//iOS %@//EN", objc_msgSend(v2, "objectForKey:", *MEMORY[0x1E695E208])];
}

- (void)_appendPropValue:(id)value forPropKey:(id)key toOutString:(id)string usingDelimiter:(id)delimiter inGroup:(id)group
{
  v23 = *MEMORY[0x1E69E9840];
  if (group)
  {
    [string appendString:group];
    [string appendString:@"."];
  }

  [string appendString:key];
  [string appendString:@":"];
  if ([(ABVCardRecord *)self _usesArrayForExternalPropKey:key])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [value countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(value);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if ((v15 & 1) == 0)
          {
            [string appendString:{@", "}];
          }

          [string appendString:{objc_msgSend(v17, "abVCardKoshify")}];
          v15 = 0;
        }

        v13 = [value countByEnumeratingWithState:&v18 objects:v22 count:16];
        v15 = 0;
      }

      while (v13);
    }
  }

  else
  {
    [string appendString:{objc_msgSend(value, "abVCardKoshify")}];
  }

  [string appendString:delimiter];
}

- (id)_copyVCardRepresentationAsStringIncludeExternalProperties:(BOOL)properties withPhoto:(id)photo extraPhotoParameters:(id)parameters includePrivateData:(BOOL)data includeWallpaper:(BOOL)wallpaper
{
  wallpaperCopy = wallpaper;
  dataCopy = data;
  propertiesCopy = properties;
  v201 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v198 = 1;
  array = [MEMORY[0x1E695DF70] array];
  [v8 appendString:@"BEGIN:VCARD"];
  [v8 appendString:@"\r\n"];
  [v8 appendString:@"VERSION:3.0"];
  [v8 appendString:@"\r\n"];
  [v8 appendString:@"PRODID:"];
  [v8 appendString:{-[ABVCardRecord _prodID](self, "_prodID")}];
  [v8 appendString:@"\r\n"];
  v9 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNameProperty];
  if (!v9)
  {
    v9 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v9, "abVCardKoshify")}];
  v10 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNameProperty];
  if (!v10)
  {
    v10 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v10, "abVCardKoshify")}];
  v11 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNameProperty];
  if (!v11)
  {
    v11 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v11, "abVCardKoshify")}];
  v12 = [(ABVCardRecord *)self valueForProperty:kABPersonPrefixProperty];
  if (!v12)
  {
    v12 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v12, "abVCardKoshify")}];
  v13 = [(ABVCardRecord *)self valueForProperty:kABPersonSuffixProperty];
  if (!v13)
  {
    v13 = &stru_1F2FE2718;
  }

  [array addObject:{-[__CFString abVCardKoshify](v13, "abVCardKoshify")}];
  [v8 appendString:@"N:"];
  [v8 appendString:{objc_msgSend(array, "componentsJoinedByString:", @";"}];
  [v8 appendString:@"\r\n"];
  [array removeAllObjects];
  _realCompositeName = [(ABVCardRecord *)self _realCompositeName];
  [v8 appendString:@"FN:"];
  if (_realCompositeName)
  {
    v15 = _realCompositeName;
  }

  else
  {
    v15 = &stru_1F2FE2718;
  }

  [v8 appendString:{-[__CFString abVCardKoshify](v15, "abVCardKoshify")}];
  [v8 appendString:@"\r\n"];
  v16 = [(ABVCardRecord *)self valueForProperty:kABPersonNicknameProperty];
  v17 = v16;
  if (v16 && ([v16 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"NICKNAME:"];
    [v8 appendString:{objc_msgSend(v17, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v18 = [(ABVCardRecord *)self valueForProperty:kABPersonPreviousFamilyNameProperty];
  v19 = v18;
  if (v18 && ([v18 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-MAIDENNAME:"];
    [v8 appendString:{objc_msgSend(v19, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v20 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNamePhoneticProperty];
  v21 = v20;
  if (v20 && ([v20 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PHONETIC-FIRST-NAME:"];
    [v8 appendString:{objc_msgSend(v21, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v22 = [(ABVCardRecord *)self valueForProperty:kABPersonFirstNamePronunciationProperty];
  v23 = v22;
  if (v22 && ([v22 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PRONUNCIATION-FIRST-NAME:"];
    [v8 appendString:{objc_msgSend(v23, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v24 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNamePhoneticProperty];
  v25 = v24;
  if (v24 && ([v24 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PHONETIC-MIDDLE-NAME:"];
    [v8 appendString:{objc_msgSend(v25, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v26 = [(ABVCardRecord *)self valueForProperty:kABPersonMiddleNamePronunciationProperty];
  v27 = v26;
  if (v26 && ([v26 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PRONUNCIATION-MIDDLE-NAME:"];
    [v8 appendString:{objc_msgSend(v27, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v28 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNamePhoneticProperty];
  v29 = v28;
  if (v28 && ([v28 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PHONETIC-LAST-NAME:"];
    [v8 appendString:{objc_msgSend(v29, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v30 = [(ABVCardRecord *)self valueForProperty:kABPersonLastNamePronunciationProperty];
  v31 = v30;
  if (v30 && ([v30 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PRONUNCIATION-LAST-NAME:"];
    [v8 appendString:{objc_msgSend(v31, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v32 = [(ABVCardRecord *)self valueForProperty:kABPersonAddressingGrammarProperty];
  if (v32)
  {
    if ([objc_opt_class() includeAddressingGrammarInVCards])
    {
      Count = ABMultiValueGetCount(v32);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          v35 = ABMultiValueCopyValueAtIndex(v32, i);
          v171 = v198++;
          [v8 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"item%ld"}];
          [v8 appendString:@".X-ADDRESSING-GRAMMAR:"];
          [v8 appendString:{objc_msgSend(v35, "abVCardKoshify")}];
          [v8 appendString:@"\r\n"];
        }
      }
    }
  }

  v36 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationProperty];
  v37 = [(ABVCardRecord *)self valueForProperty:kABPersonDepartmentProperty];
  if (v36 | v37 && (![v36 isEqualToString:&stru_1F2FE2718] || (objc_msgSend(v37, "isEqualToString:", &stru_1F2FE2718) & 1) == 0))
  {
    [v8 appendString:@"ORG:"];
    if ([v36 length])
    {
      abVCardKoshify = [v36 abVCardKoshify];
    }

    else
    {
      abVCardKoshify = &stru_1F2FE2718;
    }

    [v8 appendString:abVCardKoshify];
    [v8 appendString:@";"];
    if ([v37 length])
    {
      abVCardKoshify2 = [v37 abVCardKoshify];
    }

    else
    {
      abVCardKoshify2 = &stru_1F2FE2718;
    }

    [v8 appendString:abVCardKoshify2];
    [v8 appendString:@"\r\n"];
  }

  v40 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationPhoneticProperty];
  v41 = v40;
  if (v40 && ([v40 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PHONETIC-ORG:"];
    [v8 appendString:{objc_msgSend(v41, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v42 = [(ABVCardRecord *)self valueForProperty:kABPersonOrganizationPronunciationProperty];
  v43 = v42;
  if (v42 && ([v42 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"X-PRONUNCIATION-ORG:"];
    [v8 appendString:{objc_msgSend(v43, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v44 = [(ABVCardRecord *)self valueForProperty:kABPersonJobTitleProperty];
  v45 = v44;
  if (v44 && ([v44 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:@"TITLE:"];
    [v8 appendString:{objc_msgSend(v45, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v46 = [(ABVCardRecord *)self valueForProperty:?];
  v47 = v46;
  if (v46)
  {
    obj = ABCMultiValueGetPrimaryIdentifier(v46);
    v48 = ABMultiValueGetCount(v47);
    if (v48)
    {
      for (j = 0; j != v48; ++j)
      {
        IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v47, j);
        if ([(ABVCardRecord *)self _showField:kABPersonEmailProperty identifier:IdentifierAtIndex])
        {
          v51 = ABMultiValueCopyValueAtIndex(v47, j);
          v52 = ABMultiValueCopyLabelAtIndex(v47, j);
          v53 = [(ABVCardRecord *)self _vCardKeyForEmailLabel:v52];
          if (v53)
          {
            v54 = 0;
          }

          else
          {
            v171 = v198;
            v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld"];
            ++v198;
            [v8 appendString:v54];
            [v8 appendString:@"."];
          }

          [v8 appendString:@"EMAIL;type=INTERNET"];
          if (v53)
          {
            [v8 appendString:@";type="];
            [v8 appendString:v53];
          }

          if (IdentifierAtIndex == obj)
          {
            [v8 appendString:@";type=pref"];
          }

          [v8 appendString:@":"];
          [v8 appendString:{objc_msgSend(v51, "abVCardKoshify")}];
          [v8 appendString:@"\r\n"];
          if (v54)
          {
            [(ABVCardRecord *)self appendLabel:v52 toVCardRep:v8 inGroup:v54];
          }
        }
      }
    }
  }

  v55 = [(ABVCardRecord *)self valueForProperty:?];
  v56 = v55;
  if (v55)
  {
    PrimaryIdentifier = ABCMultiValueGetPrimaryIdentifier(v55);
    v178 = ABMultiValueGetCount(v56);
    if (v178)
    {
      for (k = 0; k != v178; ++k)
      {
        v58 = v56;
        v59 = ABMultiValueGetIdentifierAtIndex(v56, k);
        if ([(ABVCardRecord *)self _showField:kABPersonPhoneProperty identifier:v59])
        {
          v179 = ABMultiValueCopyValueAtIndex(v56, k);
          v185 = ABMultiValueCopyLabelAtIndex(v56, k);
          v60 = [(ABVCardRecord *)self _vCardKeysForPhoneLabel:v185];
          v61 = [v60 count];
          if (v61)
          {
            obja = 0;
          }

          else
          {
            v171 = v198;
            obja = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld"];
            ++v198;
            [v8 appendString:obja];
            [v8 appendString:@"."];
          }

          [v8 appendString:@"TEL"];
          if (v61 >= 1)
          {
            for (m = 0; m != v61; ++m)
            {
              v63 = [v60 objectAtIndex:m];
              [v8 appendString:@";type="];
              [v8 appendString:v63];
            }
          }

          if (v59 == PrimaryIdentifier)
          {
            [v8 appendString:@";type=pref"];
          }

          [v8 appendString:@":"];
          [v8 appendString:{objc_msgSend(v179, "abVCardKoshify")}];
          [v8 appendString:@"\r\n"];
          if (obja)
          {
            [(ABVCardRecord *)self appendLabel:v185 toVCardRep:v8 inGroup:obja];
          }
        }

        v56 = v58;
      }
    }
  }

  v64 = [(ABVCardRecord *)self valueForProperty:?];
  v65 = v64;
  if (v64)
  {
    v180 = ABCMultiValueGetPrimaryIdentifier(v64);
    objb = ABMultiValueGetCount(v65);
    if (objb)
    {
      for (n = 0; n != objb; ++n)
      {
        v67 = ABMultiValueGetIdentifierAtIndex(v65, n);
        if ([(ABVCardRecord *)self _showField:kABPersonAddressProperty identifier:v67])
        {
          v68 = ABMultiValueCopyValueAtIndex(v65, n);
          v69 = ABMultiValueCopyLabelAtIndex(v65, n);
          v70 = [(ABVCardRecord *)self _vCardKeyForAddressLabel:v69 vCard3:1];
          v171 = v198;
          v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"item%ld"];
          ++v198;
          [v8 appendString:v71];
          [v8 appendString:@"."];
          [v8 appendString:@"ADR"];
          if (v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = @";type=HOME";
          }

          [v8 appendString:v72];
          if (v67 == v180)
          {
            [v8 appendString:@";type=pref"];
          }

          [v8 appendString:@":"];
          [array addObject:&stru_1F2FE2718];
          v73 = [v68 objectForKey:@"Street"];
          v74 = v73;
          if (v73)
          {
            v75 = [v73 rangeOfString:@"\r"];
            if (v76)
            {
              v77 = v75;
              [array addObject:{objc_msgSend(objc_msgSend(v74, "substringToIndex:", v75), "abVCardKoshify")}];
              abVCardKoshify3 = [objc_msgSend(v74 substringFromIndex:{v77 + 1), "abVCardKoshify"}];
            }

            else
            {
              [array addObject:&stru_1F2FE2718];
              abVCardKoshify3 = [v74 abVCardKoshify];
            }

            [array addObject:abVCardKoshify3];
          }

          else
          {
            [array addObject:&stru_1F2FE2718];
            [array addObject:&stru_1F2FE2718];
          }

          v79 = [v68 objectForKey:@"City"];
          if (!v79)
          {
            v79 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v79, "abVCardKoshify")}];
          v80 = [v68 objectForKey:@"State"];
          if (!v80)
          {
            v80 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v80, "abVCardKoshify")}];
          v81 = [v68 objectForKey:@"ZIP"];
          if (!v81)
          {
            v81 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v81, "abVCardKoshify")}];
          v82 = [v68 objectForKey:@"Country"];
          if (!v82)
          {
            v82 = &stru_1F2FE2718;
          }

          [array addObject:{-[__CFString abVCardKoshify](v82, "abVCardKoshify")}];
          [v8 appendString:{objc_msgSend(array, "componentsJoinedByString:", @";"}];
          [array removeAllObjects];
          [v8 appendString:@"\r\n"];
          if (!v70)
          {
            [(ABVCardRecord *)self appendLabel:v69 toVCardRep:v8 inGroup:v71];
          }

          v83 = [v68 objectForKey:@"CountryCode"];
          if (v83)
          {
            [(ABVCardRecord *)self _appendPropValue:v83 forPropKey:@"X-ABADR" toOutString:v8 usingDelimiter:@"\r\n" inGroup:v71];
          }

          v84 = [v68 objectForKey:@"SubLocality"];
          if (v84)
          {
            [(ABVCardRecord *)self _appendPropValue:v84 forPropKey:@"X-APPLE-SUBLOCALITY" toOutString:v8 usingDelimiter:@"\r\n" inGroup:v71];
          }

          v85 = [v68 objectForKey:@"SubAdministrativeArea"];
          if (v85)
          {
            [(ABVCardRecord *)self _appendPropValue:v85 forPropKey:@"X-APPLE-SUBADMINISTRATIVEAREA" toOutString:v8 usingDelimiter:@"\r\n" inGroup:v71];
          }
        }
      }
    }
  }

  v86 = [(ABVCardRecord *)self valueForProperty:kABPersonNoteProperty];
  v87 = v86;
  if (v86 && ([v86 isEqualToString:&stru_1F2FE2718] & 1) == 0 && objc_msgSend(objc_opt_class(), "includeNotesInVCards"))
  {
    [v8 appendString:@"NOTE:"];
    [v8 appendString:{objc_msgSend(v87, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v88 = [(ABVCardRecord *)self propertyLineForGenericABProperty:kABPersonURLProperty vCardProperty:@"URL" is21:0 groupCount:&v198];
  v89 = v88;
  if (v88 && ([v88 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:v89];
  }

  v90 = [(ABVCardRecord *)self valueForProperty:kABPersonBirthdayProperty];
  if (v90 && [(ABVCardRecord *)self _showField:kABPersonBirthdayProperty])
  {
    [v8 appendString:@"BDAY;"];
    [v8 appendString:@"value=date:"];
    [v8 appendString:{-[ABVCardRecord ISO8061StringFromDate:](self, "ISO8061StringFromDate:", v90)}];
    [v8 appendString:@"\r\n"];
  }

  v91 = [(ABVCardRecord *)self valueForProperty:kABPersonImageURIProperty];
  includeImageURIInVCards = [objc_opt_class() includeImageURIInVCards];
  if (v91)
  {
    v93 = includeImageURIInVCards;
  }

  else
  {
    v93 = 0;
  }

  if (v93 == 1 && [v91 length])
  {
    v94 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"PHOTO"];
    v95 = [(ABVCardRecord *)self valueForProperty:kABPersonMemojiMetadataProperty];
    v96 = v95;
    if (v95 && [v95 length])
    {
      [v94 appendFormat:@";VND-63-MEMOJI-DETAILS=%@", objc_msgSend(v96, "base64EncodedStringWithOptions:", 0)];
    }

    if (parameters)
    {
      [v94 appendFormat:@";%@;VALUE=uri:", parameters];
    }

    else
    {
      [v94 appendString:@";VALUE=uri:"];
    }

    [v8 appendString:v94];
    [v8 appendString:{objc_msgSend(v91, "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  else
  {
    photoCopy = photo;
    if (!photo)
    {
      photoCopy = [(ABVCardRecord *)self imageData];
    }

    v98 = photoCopy;
    if ([(__CFData *)photoCopy length])
    {
      v99 = CGImageSourceCreateWithData(v98, 0);
      v100 = v99;
      if (v99)
      {
        Type = CGImageSourceGetType(v99);
        v102 = Type;
        if (Type)
        {
          if (UTTypeConformsTo(Type, *MEMORY[0x1E6963808]))
          {
            v103 = 0;
            v104 = @"JPEG";
          }

          else if (UTTypeConformsTo(v102, *MEMORY[0x1E69638A8]))
          {
            v103 = 0;
            v104 = @"TIFF";
          }

          else
          {
            v108 = UTTypeConformsTo(v102, *MEMORY[0x1E6963860]);
            v103 = v108 == 0;
            if (v108)
            {
              v104 = @"PNG";
            }

            else
            {
              v104 = 0;
            }
          }
        }

        else
        {
          v104 = 0;
          v103 = 1;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v100, 0, 0);
        if (ImageAtIndex)
        {
          v110 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"PHOTO"];
          v111 = [(ABVCardRecord *)self valueForProperty:kABPersonMemojiMetadataProperty];
          v112 = v111;
          if (v111 && [v111 length])
          {
            [v110 appendFormat:@";VND-63-MEMOJI-DETAILS=%@", objc_msgSend(v112, "base64EncodedStringWithOptions:", 0)];
          }

          [v110 appendString:@";ENCODING=b"];
          if (!v103)
          {
            [v110 appendFormat:@";TYPE=%@", v104];
          }

          if (parameters)
          {
            [v110 appendFormat:@";%@", parameters];
          }

          [v110 appendString:@":"];
          v113 = -[__CFData abEncodeVCardBase64DataWithInitialLength:](v98, "abEncodeVCardBase64DataWithInitialLength:", [v110 length]);
          v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v113 encoding:1];
          [v110 appendString:v114];
          [v8 appendString:v110];
          [v8 appendString:@"\r\n"];

          CFRelease(ImageAtIndex);
        }

        else
        {
          ABDiagnosticsEnabled();
          _ABLog2(4, "[ABVCardRecord _copyVCardRepresentationAsStringIncludeExternalProperties:withPhoto:extraPhotoParameters:includePrivateData:includeWallpaper:]", 2617, 0, @"Discarding corrupted image data", v115, v116, v117, v171);
        }

        CFRelease(v100);
      }

      else
      {
        ABDiagnosticsEnabled();
        _ABLog2(4, "[ABVCardRecord _copyVCardRepresentationAsStringIncludeExternalProperties:withPhoto:extraPhotoParameters:includePrivateData:includeWallpaper:]", 2621, 0, @"Discarding corrupted image data", v105, v106, v107, v171);
      }
    }
  }

  if (wallpaperCopy)
  {
    v118 = [(ABVCardRecord *)self valueForProperty:kABPersonWallpaperURIProperty];
    includeWallpaperURIInVCards = [objc_opt_class() includeWallpaperURIInVCards];
    if (v118)
    {
      v120 = includeWallpaperURIInVCards;
    }

    else
    {
      v120 = 0;
    }

    if (v120 == 1 && [v118 length])
    {
      [v8 appendString:@"VND-63-WALLPAPER;VALUE=uri:"];
      [v8 appendString:{objc_msgSend(v118, "abVCardKoshify")}];
      [v8 appendString:@"\r\n"];
    }

    else
    {
      v121 = [(ABVCardRecord *)self valueForProperty:kABPersonWallpaperProperty];
      v122 = v121;
      if (v121 && [v121 length])
      {
        [v8 appendString:@"VND-63-WALLPAPER;ENCODING=b:"];
        [v8 appendString:{objc_msgSend(objc_msgSend(v122, "base64EncodedStringWithOptions:", 0), "abVCardKoshify")}];
        [v8 appendString:@"\r\n"];
      }
    }
  }

  v123 = [(ABVCardRecord *)self valueForProperty:kABPersonSensitiveContentConfigurationProperty];
  if (v123)
  {
    [v8 appendString:@"VND-63-SENSITIVE-CONTENT-CONFIG:"];
    [v8 appendString:{objc_msgSend(objc_msgSend(v123, "base64EncodedStringWithOptions:", 0), "abVCardKoshify")}];
    [v8 appendString:@"\r\n"];
  }

  v124 = [(ABVCardRecord *)self propertyLineForInstantMessageHandles:0 groupCount:&v198 includePrivateData:dataCopy];
  v125 = v124;
  if (v124 && ([v124 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:v125];
  }

  v126 = [(ABVCardRecord *)self propertyLineForIMPPProperty:0 groupCount:&v198 includePrivateData:dataCopy];
  v127 = v126;
  if (v126 && ([v126 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:v127];
  }

  v128 = [(ABVCardRecord *)self dataForSocialProfileProperty:[(ABVCardRecord *)self valueForProperty:kABPersonSocialProfileProperty] groupCount:&v198 includePrivateData:dataCopy];
  v129 = v128;
  if (v128 && [v128 length])
  {
    v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v129 encoding:1];
    [v8 appendString:v130];
  }

  v131 = [(ABVCardRecord *)self propertyLineForGenericABProperty:kABPersonDateProperty vCardProperty:@"X-ABDATE" is21:0 groupCount:&v198];
  v132 = v131;
  if (v131 && ([v131 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:v132];
  }

  v133 = [(ABVCardRecord *)self propertyLineForGenericABProperty:kABPersonRelatedNamesProperty vCardProperty:@"X-ABRELATEDNAMES" is21:0 groupCount:&v198];
  v134 = v133;
  if (v133 && ([v133 isEqualToString:&stru_1F2FE2718] & 1) == 0)
  {
    [v8 appendString:v134];
  }

  if ([(ABVCardRecord *)self _isCompany])
  {
    [v8 appendString:@"X-ABShowAs:COMPANY"];
    [v8 appendString:@"\r\n"];
  }

  sharedPhotoDisplayPreferenceStringValue = [(ABVCardRecord *)self sharedPhotoDisplayPreferenceStringValue];
  if (sharedPhotoDisplayPreferenceStringValue)
  {
    [v8 appendString:@"X-SHARED-PHOTO-DISPLAY-PREF:"];
    [v8 appendString:sharedPhotoDisplayPreferenceStringValue];
    [v8 appendString:@"\r\n"];
  }

  v136 = [(ABVCardRecord *)self valueForProperty:kABPersonModificationDateProperty];
  if (v136 && [objc_opt_class() includeREVInVCards])
  {
    [v8 appendString:@"REV:"];
    [v8 appendString:{-[ABVCardRecord ISO8061StringFromDateTime:](self, "ISO8061StringFromDateTime:", v136)}];
    [v8 appendString:@"\r\n"];
  }

  if (propertiesCopy)
  {
    v137 = [(ABVCardRecord *)self valueForProperty:kABPersonExternalUUIDProperty];
    if ([v137 length])
    {
      [v8 appendString:@"UID:"];
      [v8 appendString:{objc_msgSend(v137, "abVCardKoshify")}];
      [v8 appendString:@"\r\n"];
    }

    v138 = [(ABVCardRecord *)self valueForProperty:kABPersonExternalRepresentationProperty];
    if (v138)
    {
      v197 = 0;
      v139 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v138 error:&v197];
      if (v139)
      {
        v140 = MEMORY[0x1E695DFD8];
        v141 = objc_opt_class();
        v142 = objc_opt_class();
        v188 = [v139 decodeObjectOfClasses:objc_msgSend(v140 forKey:{"setWithObjects:", v141, v142, objc_opt_class(), 0), *MEMORY[0x1E696A508]}];
        [v139 finishDecoding];
      }

      else
      {
        ABDiagnosticsEnabled();
        _ABLog2(4, "[ABVCardRecord _copyVCardRepresentationAsStringIncludeExternalProperties:withPhoto:extraPhotoParameters:includePrivateData:includeWallpaper:]", 2757, 0, @"Error trying to decode external representation: %@", v143, v144, v145, v197);
        v188 = 0;
      }

      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      allKeys = [v188 allKeys];
      v147 = [allKeys countByEnumeratingWithState:&v193 objects:v200 count:16];
      if (v147)
      {
        objc = allKeys;
        v186 = *v194;
        do
        {
          for (ii = 0; ii != v147; ++ii)
          {
            if (*v194 != v186)
            {
              objc_enumerationMutation(objc);
            }

            v149 = *(*(&v193 + 1) + 8 * ii);
            v150 = [v188 objectForKey:v149];
            v191 = 0u;
            v192 = 0u;
            v189 = 0u;
            v190 = 0u;
            v151 = [v150 countByEnumeratingWithState:&v189 objects:v199 count:16];
            if (v151)
            {
              v152 = *v190;
              do
              {
                for (jj = 0; jj != v151; ++jj)
                {
                  if (*v190 != v152)
                  {
                    objc_enumerationMutation(v150);
                  }

                  [(ABVCardRecord *)self _appendPropValue:*(*(&v189 + 1) + 8 * jj) forPropKey:v149 toOutString:v8 usingDelimiter:@"\r\n" inGroup:0];
                }

                v151 = [v150 countByEnumeratingWithState:&v189 objects:v199 count:16];
              }

              while (v151);
            }
          }

          v147 = [objc countByEnumeratingWithState:&v193 objects:v200 count:16];
        }

        while (v147);
      }
    }
  }

  if (dataCopy)
  {
    v154 = [(ABVCardRecord *)self valueForProperty:kABPersonPhonemeDataProperty];
    v155 = v154;
    if (v154)
    {
      if (([v154 isEqualToString:&stru_1F2FE2718] & 1) == 0)
      {
        [v8 appendString:@"X-ADDRESSBOOKSERVER-PHONEME-DATA:"];
        [v8 appendString:{objc_msgSend(v155, "abVCardKoshify")}];
        [v8 appendString:@"\r\n"];
      }
    }
  }

  v156 = [(ABVCardRecord *)self valueForProperty:kABPersonAlternateBirthdayProperty];
  if ([v156 count] && -[ABVCardRecord _showField:](self, "_showField:", kABPersonAlternateBirthdayProperty))
  {
    [v8 appendString:@"X-ALTBDAY;"];
    [v8 appendString:{-[ABVCardRecord stringFromAlternateBirthday:](self, "stringFromAlternateBirthday:", v156)}];
    [v8 appendString:@"\r\n"];
  }

  if (dataCopy)
  {
    v157 = [(ABVCardRecord *)self valueForProperty:kABPersonMapsDataProperty];
    v158 = v157;
    if (v157 && ([v157 isEqualToString:&stru_1F2FE2718] & 1) == 0)
    {
      [v8 appendString:@"X-APPLE-MAPS-DATA:"];
      [v8 appendString:{objc_msgSend(v158, "abVCardKoshify")}];
      [v8 appendString:@"\r\n"];
    }

    v159 = [(ABVCardRecord *)self dataForSoundProperty:[(ABVCardRecord *)self valueForProperty:kABPersonSoundProperty]];
    v160 = v159;
    if (v159 && [v159 length])
    {
      v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v160 encoding:1];
      [v8 appendString:v161];
    }

    v162 = [(ABVCardRecord *)self valueForProperty:kABPersonDowntimeWhitelistProperty];
    v163 = v162;
    if (v162 && [v162 length])
    {
      if ([v163 isEqualToString:@"true"])
      {
        v164 = @"X-APPLE-GUARDIAN-WHITELISTED:true";
      }

      else
      {
        v164 = @"X-APPLE-GUARDIAN-WHITELISTED:false";
      }

      [v8 appendString:v164];
      [v8 appendString:@"\r\n"];
    }

    v165 = [(ABVCardRecord *)self valueForProperty:kABPersonImageTypeProperty];
    v166 = v165;
    if (v165 && ([v165 isEqualToString:&stru_1F2FE2718] & 1) == 0)
    {
      [v8 appendString:@"X-IMAGETYPE:"];
      [v8 appendString:{objc_msgSend(v166, "abVCardKoshify")}];
      [v8 appendString:@"\r\n"];
    }

    v167 = [(ABVCardRecord *)self valueForProperty:kABPersonImageHashProperty];
    v168 = v167;
    if (v167 && [v167 length])
    {
      [v8 appendString:@"X-IMAGEHASH:"];
      [v8 appendString:{objc_msgSend(objc_msgSend(v168, "base64EncodedStringWithOptions:", 0), "abVCardKoshify")}];
      [v8 appendString:@"\r\n"];
    }
  }

  [v8 appendString:@"END:VCARD"];
  [v8 appendString:@"\r\n"];
  abStringByStrippingControlCharacters = [v8 abStringByStrippingControlCharacters];

  return abStringByStrippingControlCharacters;
}

- (id)_copyGroupVCardRepresentationAsStringIncludeExternalProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v48 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"BEGIN:VCARD"];
  [v5 appendString:@"\r\n"];
  [v5 appendString:@"VERSION:3.0"];
  [v5 appendString:@"\r\n"];
  [v5 appendString:@"X-ADDRESSBOOKSERVER-KIND:group"];
  [v5 appendString:@"\r\n"];
  [v5 appendString:@"PRODID:"];
  [v5 appendString:{-[ABVCardRecord _prodID](self, "_prodID")}];
  [v5 appendString:@"\r\n"];
  v6 = [(ABVCardRecord *)self valueForProperty:kABGroupNameProperty];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_1F2FE2718;
  }

  [v5 appendString:@"N:"];
  [v5 appendString:v7];
  [v5 appendString:@"\r\n"];
  [v5 appendString:@"FN:"];
  [v5 appendString:v7];
  [v5 appendString:@"\r\n"];
  if (propertiesCopy)
  {
    v8 = [(ABVCardRecord *)self valueForProperty:kABGroupExternalUUIDProperty];
    if ([v8 length])
    {
      [v5 appendString:@"UID:"];
      [v5 appendString:{objc_msgSend(v8, "abVCardKoshify")}];
      [v5 appendString:@"\r\n"];
    }

    v9 = [(ABVCardRecord *)self valueForProperty:kABGroupExternalRepresentationProperty];
    if (v9)
    {
      v45 = 0;
      v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:&v45];
      if (v10)
      {
        v11 = MEMORY[0x1E695DFD8];
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v34 = [v10 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, objc_opt_class(), 0), *MEMORY[0x1E696A508]}];
        [v10 finishDecoding];
      }

      else
      {
        ABDiagnosticsEnabled();
        _ABLog2(4, "[ABVCardRecord _copyGroupVCardRepresentationAsStringIncludeExternalProperties:]", 2912, 0, @"Error trying to decode external representation: %@", v14, v15, v16, v45);
        v34 = 0;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      allKeys = [v34 allKeys];
      v18 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v18)
      {
        obj = allKeys;
        v36 = *v42;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v42 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v41 + 1) + 8 * i);
            if ([v20 compare:@"X-ADDRESSBOOKSERVER-KIND" options:1])
            {
              if ([v20 compare:@"X-ADDRESSBOOKSERVER-MEMBER" options:1])
              {
                v21 = [v34 objectForKey:v20];
                v39 = 0u;
                v40 = 0u;
                v37 = 0u;
                v38 = 0u;
                v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
                if (v22)
                {
                  v23 = *v38;
                  do
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      if (*v38 != v23)
                      {
                        objc_enumerationMutation(v21);
                      }

                      [(ABVCardRecord *)self _appendPropValue:*(*(&v37 + 1) + 8 * j) forPropKey:v20 toOutString:v5 usingDelimiter:@"\r\n" inGroup:0];
                    }

                    v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
                  }

                  while (v22);
                }
              }
            }
          }

          v18 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v18);
      }
    }

    v25 = ABGroupCopyArrayOfAllMembers(self->_record);
    v26 = v25;
    if (v25)
    {
      Count = CFArrayGetCount(v25);
      if (Count >= 1)
      {
        v28 = 0;
        v29 = kABPersonExternalUUIDProperty;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, v28);
          v31 = ABRecordCopyValue(ValueAtIndex, v29);
          if (v31)
          {
            [v5 appendString:@"X-ADDRESSBOOKSERVER-MEMBER:urn:uuid:"];
            [v5 appendString:{objc_msgSend(v31, "abVCardKoshify")}];
            [v5 appendString:@"\r\n"];
          }

          ++v28;
        }

        while (Count != v28);
      }

      CFRelease(v26);
    }
  }

  [v5 appendString:@"END:VCARD"];
  [v5 appendString:@"\r\n"];
  abStringByStrippingControlCharacters = [v5 abStringByStrippingControlCharacters];

  return abStringByStrippingControlCharacters;
}

@end