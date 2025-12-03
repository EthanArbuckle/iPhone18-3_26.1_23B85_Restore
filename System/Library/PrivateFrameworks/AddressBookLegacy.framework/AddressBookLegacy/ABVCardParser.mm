@interface ABVCardParser
- (ABVCardParser)initWithData:(id)data;
- (ABVCardParser)initWithData:(id)data watchdogTimer:(id)timer;
- (BOOL)_setDataValueOrNoteIfNull:(id)null forProperty:(unsigned int)property;
- (BOOL)_setMultiValuesOrNoteIfNull:(id)null forProperty:(unsigned int)property valueComparator:(id)comparator;
- (BOOL)_setPersonSounds:(void *)sounds identifier:(int)identifier fromActivity:(id)activity alert:(id)alert otherValue:(id)value;
- (BOOL)_setStringValueOrNoteIfNull:(id)null forProperty:(unsigned int)property;
- (BOOL)_usesRemainingLineForExternalPropKey:(id)key;
- (BOOL)addIMValueTo:(id)to;
- (BOOL)importToPerson:(void *)person foundProperties:(const __CFArray *)properties;
- (BOOL)importToValueSetter:(id)setter;
- (BOOL)parseABDATE;
- (BOOL)parseABExtensionType:(id)type;
- (BOOL)parseABMaiden;
- (BOOL)parseABReleatedNames;
- (BOOL)parseABUID;
- (BOOL)parseADD;
- (BOOL)parseADR;
- (BOOL)parseActivityAlerts;
- (BOOL)parseAddressingGrammar;
- (BOOL)parseAlternateBirthday;
- (BOOL)parseBDAY;
- (BOOL)parseEMAIL;
- (BOOL)parseGuardianWhitelisted;
- (BOOL)parseIMAGEHASH;
- (BOOL)parseIMAGETYPE;
- (BOOL)parseIMPP;
- (BOOL)parseItem;
- (BOOL)parseN;
- (BOOL)parseNICKNAME;
- (BOOL)parseORG;
- (BOOL)parsePhoto:(id)photo;
- (BOOL)parseSensitiveContentConfigurationData;
- (BOOL)parseSocialProfiles;
- (BOOL)parseTEL;
- (BOOL)parseVERSION;
- (BOOL)parseWallpaper:(id)wallpaper;
- (__CFArray)peopleAndProperties:(const __CFArray *)properties;
- (id)_genericLabel;
- (id)_socialProfileBundleIdentifiers;
- (id)_socialProfileDisplayName;
- (id)_socialProfileService;
- (id)_socialProfileTeamIdentifier;
- (id)_socialProfileUserId;
- (id)_socialProfileUsername;
- (id)dateFromISO8601String:(id)string;
- (id)genericLabel;
- (id)parseInstantMessengerProfile:(id)profile;
- (id)parseRemainingLine;
- (id)parseSingleValue;
- (id)parseURL;
- (id)parseValueArray;
- (id)phoneLabel;
- (id)sortedPeopleAndProperties:(const __CFArray *)properties;
- (int)_addIMHandles:(id)handles toService:(__CFString *)service multiValue:(void *)value uniquenessCheckingMultiValue:(void *)multiValue;
- (int)_addIMPPProfiles:(id)profiles multiValue:(void *)value uniquenessCheckingMultiValue:(void *)multiValue;
- (void)_setValueFromExtension:(id)extension forKey:(id)key onAddress:(id)address toKey:(id)toKey;
- (void)addActivityAlertMultiValues;
- (void)addAddressMultiValues;
- (void)addInstantMessageMultiValues;
- (void)addMultiValues:(id)values toProperty:(unsigned int)property valueComparator:(id)comparator;
- (void)addSocialProfileMultiValues;
- (void)cleanUpCardState;
- (void)copyNextPersonWithLength:(int *)length foundProperties:(const __CFArray *)properties;
- (void)dealloc;
- (void)parseABShowAs;
- (void)parseSharedPhotoDisplayPreference;
- (void)setSource:(void *)source;
@end

@implementation ABVCardParser

- (ABVCardParser)initWithData:(id)data
{
  v5 = [ABVCardWatchdogTimer timerWithTimeProvider:objc_alloc_init(_ABVCardTimeProvider)];

  return [(ABVCardParser *)self initWithData:data watchdogTimer:v5];
}

- (ABVCardParser)initWithData:(id)data watchdogTimer:(id)timer
{
  if (data && [data length] && (v11.receiver = self, v11.super_class = ABVCardParser, self = -[ABVCardParser init](&v11, sel_init), self->_data = data, self->_timer = timer, v7 = -[ABVCardLexer initWithData:watchdogTimer:]([ABVCardLexer alloc], "initWithData:watchdogTimer:", data, timer), (self->_lexer = v7) != 0))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:data encoding:4];
    if ([v8 hasPrefix:@"BEGIN:VCARD"] && objc_msgSend(v8, "rangeOfString:", @"VERSION:3.0") != 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_defaultEncoding = 4;
    }

    if (!self->_defaultEncoding)
    {
      self->_defaultEncoding = 1;
    }
  }

  else
  {
    selfCopy = self;
    return 0;
  }

  return self;
}

- (void)dealloc
{
  [(ABVCardParser *)self cleanUpCardState];
  source = self->_source;
  if (source)
  {
    CFRelease(source);
  }

  v4.receiver = self;
  v4.super_class = ABVCardParser;
  [(ABVCardParser *)&v4 dealloc];
}

- (void)cleanUpCardState
{
  self->_imageURI = 0;
  *&self->_first = 0u;
  *&self->_org = 0u;

  self->_emails = 0;
  self->_urls = 0;

  self->_relatedNames = 0;
  self->_dates = 0;

  self->_phones = 0;
  self->_addresses = 0;

  self->_aims = 0;
  self->_jabbers = 0;

  self->_msns = 0;
  self->_yahoos = 0;

  self->_icqs = 0;
  self->_untypedIMs = 0;

  self->_socialProfiles = 0;
  self->_instantMessengers = 0;

  self->_activityAlerts = 0;
  self->_notes = 0;

  self->_otherNotes = 0;
  self->_extensions = 0;

  self->_imageData = 0;
  self->_uid = 0;
  *&self->_cropRectX = 0;
  *&self->_cropRectWidth = 0;
  v3 = self->_cropRectChecksum;
  self->_cropRectChecksum = 0;

  self->_addressingGrammars = 0;
}

- (void)setSource:(void *)source
{
  source = self->_source;
  if (source != source)
  {
    if (source)
    {
      CFRelease(source);
    }

    if (source)
    {
      CFRetain(source);
    }

    self->_source = source;
  }
}

- (void)addMultiValues:(id)values toProperty:(unsigned int)property valueComparator:(id)comparator
{
  v5 = *&property;
  if ([(ABVCardValueSetter *)self->_valueSetter propertyIsValidForPerson:*&property])
  {
    v8 = [values count];
    TypeOfProperty = ABPersonGetTypeOfProperty(v5);
    v10 = [(ABVCardValueSetter *)self->_valueSetter valueForProperty:v5];
    if (v10)
    {
      v11 = v10;
      Count = ABMultiValueGetCount(v10);
      MutableCopy = ABMultiValueCreateMutableCopy(v11);
    }

    else
    {
      MutableCopy = ABMultiValueCreateMutable(TypeOfProperty);
      Count = 0;
    }

    cf = MutableCopy;
    v25 = v5;
    if (v8)
    {
      v13 = 0;
      v14 = 0;
      v15 = *MEMORY[0x1E695E738];
      do
      {
        v16 = [values objectAtIndex:{v13, Count}];
        grouping = [v16 grouping];
        if (!grouping || (v18 = [-[NSMutableDictionary objectForKey:](self->_extensions objectForKey:{grouping), "objectForKey:", @"X-ABLabel"}], !objc_msgSend(v18, "count")) || (name = objc_msgSend(v18, "objectAtIndex:", 0)) == 0)
        {
          name = [v16 name];
        }

        if (name)
        {
          v20 = name == v15;
        }

        else
        {
          v20 = 1;
        }

        v21 = !v20;
        if (v20)
        {
          name = [(ABVCardParser *)self defaultLabel];
        }

        value = [v16 value];
        if (value != v15)
        {
          v23 = value;
          if (value)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0 || [v23 length])
            {
              v14 += !ABMultiValueAddValueAndLabelIfUnique(cf, v23, name, v21, comparator);
            }
          }
        }

        ++v13;
      }

      while (v8 != v13);
    }

    else
    {
      v14 = 0;
    }

    if (Count != v14)
    {
      [(ABVCardParser *)self setLocalRecordHasAdditionalProperties:1];
    }

    if (v8)
    {
      [(ABVCardValueSetter *)self->_valueSetter setValue:cf forProperty:v25];
    }

    CFRelease(cf);
  }
}

- (void)_setValueFromExtension:(id)extension forKey:(id)key onAddress:(id)address toKey:(id)toKey
{
  v8 = [extension objectForKey:key];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    if (v9)
    {

      [address setObject:v9 forKey:toKey];
    }
  }
}

- (void)addAddressMultiValues
{
  if ([(ABVCardValueSetter *)self->_valueSetter propertyIsValidForPerson:kABPersonAddressProperty])
  {
    v3 = [(NSMutableArray *)self->_addresses count];
    v4 = [(ABVCardValueSetter *)self->_valueSetter valueForProperty:kABPersonAddressProperty];
    if (v4)
    {
      v5 = v4;
      Count = ABMultiValueGetCount(v4);
      MutableCopy = ABMultiValueCreateMutableCopy(v5);
    }

    else
    {
      MutableCopy = ABMultiValueCreateMutable(0x105u);
      Count = 0;
    }

    if (v3 < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->_addresses objectAtIndex:v7];
        grouping = [v9 grouping];
        value = [v9 value];
        if (grouping && ((v12 = -[NSMutableDictionary objectForKey:](self->_extensions, "objectForKey:", grouping), v13 = [v12 objectForKey:@"X-ABLabel"], !objc_msgSend(v13, "count")) ? (name = 0) : (name = objc_msgSend(v13, "objectAtIndex:", 0)), -[ABVCardParser _setValueFromExtension:forKey:onAddress:toKey:](self, "_setValueFromExtension:forKey:onAddress:toKey:", v12, @"X-ABADR", value, @"CountryCode"), -[ABVCardParser _setValueFromExtension:forKey:onAddress:toKey:](self, "_setValueFromExtension:forKey:onAddress:toKey:", v12, @"X-APPLE-SUBLOCALITY", value, @"SubLocality"), -[ABVCardParser _setValueFromExtension:forKey:onAddress:toKey:](self, "_setValueFromExtension:forKey:onAddress:toKey:", v12, @"X-APPLE-SUBADMINISTRATIVEAREA", value, @"SubAdministrativeArea"), name))
        {
          v15 = 1;
        }

        else
        {
          name = [v9 name];
          v15 = 0;
        }

        if ([value count])
        {
          v8 += !ABMultiValueAddValueAndLabelIfUnique(MutableCopy, value, name, v15, __block_literal_global_9);
        }

        ++v7;
      }

      while (v3 != v7);
    }

    if (Count > v8)
    {
      [(ABVCardParser *)self setLocalRecordHasAdditionalProperties:1];
    }

    if (v3 >= 1)
    {
      [(ABVCardValueSetter *)self->_valueSetter setValue:MutableCopy forProperty:kABPersonAddressProperty];
    }

    CFRelease(MutableCopy);
  }
}

- (void)addSocialProfileMultiValues
{
  if ([(ABVCardValueSetter *)self->_valueSetter propertyIsValidForPerson:kABPersonSocialProfileProperty])
  {
    v3 = [(ABVCardValueSetter *)self->_valueSetter valueForProperty:kABPersonSocialProfileProperty];
    if (v3)
    {
      v4 = v3;
      Count = ABMultiValueGetCount(v3);
      MutableCopy = ABMultiValueCreateMutableCopy(v4);
    }

    else
    {
      MutableCopy = ABMultiValueCreateMutable(0x105u);
      Count = 0;
    }

    v6 = [(NSMutableArray *)self->_socialProfiles count];
    v7 = 0;
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = [(NSMutableArray *)self->_socialProfiles objectAtIndex:i];
        value = [v9 value];
        name = [v9 name];
        if ([v9 grouping])
        {
          v12 = [-[NSMutableDictionary objectForKey:](self->_extensions objectForKey:{objc_msgSend(v9, "grouping")), "objectForKey:", @"X-SOCIALPROFILE-ABUSERID"}];
          if ([v12 count])
          {
            [value setObject:objc_msgSend(v12 forKey:{"objectAtIndex:", 0), @"identifier"}];
          }
        }

        v7 += !ABMultiValueAddValueAndLabelIfUnique(MutableCopy, value, name, 0, 0);
      }
    }

    if (Count > v7)
    {
      [(ABVCardParser *)self setLocalRecordHasAdditionalProperties:1];
    }

    if (v6)
    {
      [(ABVCardValueSetter *)self->_valueSetter setValue:MutableCopy forProperty:kABPersonSocialProfileProperty];
    }

    CFRelease(MutableCopy);
  }
}

- (int)_addIMHandles:(id)handles toService:(__CFString *)service multiValue:(void *)value uniquenessCheckingMultiValue:(void *)multiValue
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [handles countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v32 = 0;
    v33 = *v35;
    v9 = *MEMORY[0x1E695E738];
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(handles);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        value = [v11 value];
        grouping = [v11 grouping];
        if (grouping)
        {
          v14 = [(NSMutableDictionary *)self->_extensions objectForKey:grouping];
          v15 = [v14 objectForKey:@"X-ABLabel"];
          if ([v15 count])
          {
            name = [v15 objectAtIndex:0];
          }

          else
          {
            name = 0;
          }

          v20 = [v14 objectForKey:@"x-teamidentifier"];
          if ([v20 count])
          {
            v19 = [v20 objectAtIndex:0];
          }

          else
          {
            v19 = 0;
          }

          v21 = [v14 objectForKey:@"x-bundleidentifiers"];
          if ([v21 count])
          {
            v18 = [v21 objectAtIndex:0];
          }

          else
          {
            v18 = 0;
          }

          v22 = [v14 objectForKey:@"x-userid"];
          if ([v22 count])
          {
            v17 = [v22 objectAtIndex:0];
            if (name)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v17 = 0;
            if (name)
            {
LABEL_21:
              if (name != v9)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
        }

        name = [v11 name];
LABEL_23:
        if (name)
        {
          v23 = name == v9;
        }

        else
        {
          v23 = 1;
        }

        v24 = !v23;
        if (v23)
        {
          name = [(ABVCardParser *)self defaultLabel];
        }

        if (value)
        {
          v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{value, @"username", service, @"service", 0}];
          v26 = v25;
          if (v19)
          {
            [v25 setObject:v19 forKey:@"teamIdentifier"];
          }

          if (v18)
          {
            [v26 setObject:v18 forKey:@"bundleIdentifiers"];
          }

          if (v17)
          {
            [v26 setObject:v17 forKey:@"identifier"];
          }

          if (!ABMultiValueAddValueAndLabelIfUnique(value, v26, name, v24, 0))
          {
            v32 += ABMultiValueAddValueAndLabelIfUnique(multiValue, v26, name, v24, 0);
          }
        }
      }

      v8 = [handles countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v8)
      {
        return v32;
      }
    }
  }

  return 0;
}

- (int)_addIMPPProfiles:(id)profiles multiValue:(void *)value uniquenessCheckingMultiValue:(void *)multiValue
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [profiles countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v30;
  do
  {
    v9 = 0;
    do
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(profiles);
      }

      v10 = *(*(&v29 + 1) + 8 * v9);
      v11 = [objc_msgSend(v10 "value")];
      name = [v10 name];
      grouping = [v10 grouping];
      if (grouping)
      {
        v14 = [(NSMutableDictionary *)self->_extensions objectForKey:grouping];
        v15 = [v14 objectForKey:@"X-ABLabel"];
        if ([v15 count])
        {
          name = [v15 objectAtIndex:0];
        }

        v16 = [v14 objectForKey:@"x-teamidentifier"];
        if ([v16 count])
        {
          v17 = [v16 objectAtIndex:0];
        }

        else
        {
          v17 = 0;
        }

        v19 = [v14 objectForKey:@"x-bundleidentifiers"];
        if ([v19 count])
        {
          v18 = [v19 objectAtIndex:0];
        }

        else
        {
          v18 = 0;
        }

        v20 = [v14 objectForKey:@"x-ueserid"];
        if ([v20 count])
        {
          v21 = [v20 objectAtIndex:0];
          goto LABEL_19;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v21 = 0;
LABEL_19:
      defaultLabel = name;
      if (name)
      {
        if (!v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        [v11 setObject:v17 forKey:@"teamIdentifier"];
        goto LABEL_22;
      }

      defaultLabel = [(ABVCardParser *)self defaultLabel];
      if (v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (v18)
      {
        [v11 setObject:v18 forKey:@"bundleIdentifiers"];
      }

      if (v21)
      {
        [v11 setObject:v21 forKey:@"identifier"];
      }

      if (!ABMultiValueAddValueAndLabelIfUnique(value, v11, defaultLabel, name != 0, 0))
      {
        v7 += ABMultiValueAddValueAndLabelIfUnique(multiValue, v11, defaultLabel, name != 0, 0);
      }

      ++v9;
    }

    while (v6 != v9);
    v23 = [profiles countByEnumeratingWithState:&v29 objects:v33 count:16];
    v6 = v23;
  }

  while (v23);
  return v7;
}

- (void)addInstantMessageMultiValues
{
  if ([(ABVCardValueSetter *)self->_valueSetter propertyIsValidForPerson:kABPersonInstantMessageProperty])
  {
    v3 = [(ABVCardValueSetter *)self->_valueSetter valueForProperty:kABPersonInstantMessageProperty];
    if (v3)
    {
      v4 = v3;
      Count = ABMultiValueGetCount(v3);
      MutableCopy = ABMultiValueCreateMutableCopy(v4);
    }

    else
    {
      MutableCopy = ABMultiValueCreateMutable(0x105u);
      Count = 0;
    }

    Mutable = ABMultiValueCreateMutable(0x105u);
    v8 = [(ABVCardParser *)self _addIMPPProfiles:self->_instantMessengers multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable];
    v9 = [(ABVCardParser *)self _addIMHandles:self->_aims toService:@"AIM" multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable]+ v8;
    v10 = v9 + [(ABVCardParser *)self _addIMHandles:self->_jabbers toService:@"Jabber" multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable];
    v11 = v10 + [(ABVCardParser *)self _addIMHandles:self->_msns toService:@"MSN" multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable];
    v12 = v11 + [(ABVCardParser *)self _addIMHandles:self->_yahoos toService:@"Yahoo" multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable];
    v13 = v12 + [(ABVCardParser *)self _addIMHandles:self->_icqs toService:@"ICQ" multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable];
    if (Count > v13 + [(ABVCardParser *)self _addIMHandles:self->_untypedIMs toService:0 multiValue:MutableCopy uniquenessCheckingMultiValue:Mutable])
    {
      [(ABVCardParser *)self setLocalRecordHasAdditionalProperties:1];
    }

    [(ABVCardValueSetter *)self->_valueSetter setValue:MutableCopy forProperty:kABPersonInstantMessageProperty];
    CFRelease(MutableCopy);

    CFRelease(Mutable);
  }
}

- (BOOL)_setPersonSounds:(void *)sounds identifier:(int)identifier fromActivity:(id)activity alert:(id)alert otherValue:(id)value
{
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  if (identifier != -3 && (!activity || !alert))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Either identifier must be kABPersonSoundIdentifierOther or alert and activity must be non nil"];
    return 0;
  }

  IndexForIdentifier = ABMultiValueGetIndexForIdentifier(sounds, identifier);
  if (IndexForIdentifier == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ABMultiValueCopyValueAtIndex(sounds, IndexForIdentifier);
  }

  if (identifierCopy != -3)
  {
    value = [-[NSMutableDictionary objectForKeyedSubscript:](self->_activityAlerts objectForKeyedSubscript:{activity), "objectForKeyedSubscript:", alert}];
  }

  if (!value || v14)
  {
    if (value)
    {
      if ([v14 caseInsensitiveCompare:value])
      {
        goto LABEL_13;
      }
    }

    else if (IndexForIdentifier != -1)
    {
      ABMultiValueRemoveValueAndLabelAtIndex(sounds, IndexForIdentifier);
LABEL_28:
      v17 = 1;
      goto LABEL_29;
    }

    v17 = 0;
LABEL_29:

    return v17;
  }

LABEL_13:
  if (IndexForIdentifier == -1)
  {
    Count = ABMultiValueGetCount(sounds);
    ABMultiValueInsertAndCreateIdentifier(sounds, value, 0, Count, 0, &identifierCopy2, 0);
    identifierCopy = identifierCopy2;
  }

  else
  {
    ABMultiValueReplaceValueAtIndex(sounds, value, IndexForIdentifier);
  }

  if (identifierCopy == -3)
  {
    goto LABEL_28;
  }

  if (activity && alert)
  {
    if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_activityAlerts objectForKeyedSubscript:{activity), "count"}] < 2)
    {
      [(NSMutableDictionary *)self->_activityAlerts removeObjectForKey:activity];
    }

    else
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[NSMutableDictionary objectForKeyedSubscript:](self->_activityAlerts, "objectForKeyedSubscript:", activity)}];
      [v16 removeObjectForKey:alert];
      [(NSMutableDictionary *)self->_activityAlerts setObject:v16 forKeyedSubscript:activity];
    }

    goto LABEL_28;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Either identifier must be kABPersonSoundIdentifierOther or alert and activity must be non nil"];

  return 0;
}

- (void)addActivityAlertMultiValues
{
  v3 = kABPersonSoundProperty;
  if ([(ABVCardValueSetter *)self->_valueSetter propertyIsValidForPerson:kABPersonSoundProperty])
  {
    v4 = [(ABVCardValueSetter *)self->_valueSetter valueForProperty:v3];
    if (v4)
    {
      MutableCopy = ABMultiValueCreateMutableCopy(v4);
    }

    else
    {
      MutableCopy = ABMultiValueCreateMutable(0x101u);
    }

    v6 = MutableCopy;
    v7 = [(ABVCardParser *)self _setPersonSounds:MutableCopy identifier:0xFFFFFFFFLL fromActivity:@"com.apple.activityalert.call" alert:@"sound" otherValue:0];
    v8 = v7 | [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967195 fromActivity:@"com.apple.activityalert.call" alert:@"vibration" otherValue:0];
    v9 = [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967292 fromActivity:@"com.apple.activityalert.call" alert:@"ignoreMute" otherValue:0];
    v10 = v8 | v9 | [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967294 fromActivity:@"com.apple.activityalert.text" alert:@"sound" otherValue:0];
    v11 = [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967194 fromActivity:@"com.apple.activityalert.text" alert:@"vibration" otherValue:0];
    v12 = v10 | v11 | [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967291 fromActivity:@"com.apple.activityalert.text" alert:@"ignoreMute" otherValue:0];
    if ([(NSMutableDictionary *)self->_activityAlerts count])
    {
      v13 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_activityAlerts options:0 error:0];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];
    }

    else
    {
      v14 = 0;
    }

    v15 = v12 | [(ABVCardParser *)self _setPersonSounds:v6 identifier:4294967293 fromActivity:0 alert:0 otherValue:v14];

    if (v15 == 1)
    {
      [(ABVCardParser *)self setLocalRecordHasAdditionalProperties:1];
      [(ABVCardValueSetter *)self->_valueSetter setValue:v6 forProperty:v3];
    }

    CFRelease(v6);
  }
}

- (BOOL)parseVERSION
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:1 quotedPrintable:0 stopTokens:36864 trim:1];
  v4 = v3;
  if (v3)
  {
    self->_30vCard = [v3 compare:@"3.0" options:1] == 0;
  }

  return v4 != 0;
}

- (BOOL)_setDataValueOrNoteIfNull:(id)null forProperty:(unsigned int)property
{
  v4 = *&property;
  if (null && [null length])
  {
    [(ABVCardValueSetter *)self->_valueSetter setValue:null forProperty:v4];
    return 1;
  }

  else
  {
    [(ABVCardParser *)self noteLackOfValueForProperty:v4];
    return 0;
  }
}

- (BOOL)_setStringValueOrNoteIfNull:(id)null forProperty:(unsigned int)property
{
  v4 = *&property;
  if (null && [null length])
  {
    [(ABVCardValueSetter *)self->_valueSetter setValue:null forProperty:v4];
    return 1;
  }

  else
  {
    [(ABVCardParser *)self noteLackOfValueForProperty:v4];
    return 0;
  }
}

- (BOOL)_setMultiValuesOrNoteIfNull:(id)null forProperty:(unsigned int)property valueComparator:(id)comparator
{
  if (null)
  {
    [(ABVCardParser *)self addMultiValues:null toProperty:*&property valueComparator:comparator];
  }

  else
  {
    [(ABVCardParser *)self noteLackOfValueForProperty:*&property];
  }

  return null != 0;
}

- (BOOL)parseN
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  self->_last = v3;
  [(ABVCardParser *)self _setStringValueOrNoteIfNull:v3 forProperty:kABPersonLastNameProperty];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    v4 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    self->_first = v4;
    [(ABVCardParser *)self _setStringValueOrNoteIfNull:v4 forProperty:kABPersonFirstNameProperty];
    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
    {
      [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
      [(ABVCardParser *)self _setStringValueOrNoteIfNull:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1] forProperty:kABPersonMiddleNameProperty];
      if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
      {
        [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
        [(ABVCardParser *)self _setStringValueOrNoteIfNull:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1] forProperty:kABPersonPrefixProperty];
        if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
        {
          [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
          [(ABVCardParser *)self _setStringValueOrNoteIfNull:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1] forProperty:kABPersonSuffixProperty];
          if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
          {
            [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
          }
        }
      }
    }
  }

  return 1;
}

- (BOOL)parseNICKNAME
{
  v3 = [(ABVCardParser *)self _setStringValueOrNoteIfNull:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1] forProperty:kABPersonNicknameProperty];
  if (v3 && [(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v3;
}

- (BOOL)parseABMaiden
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  v4 = [(ABVCardParser *)self _setStringValueOrNoteIfNull:v3 forProperty:kABPersonPreviousFamilyNameProperty];
  if (v4 && [(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v4;
}

- (BOOL)parseAddressingGrammar
{
  if (!self->_addressingGrammars)
  {
    self->_addressingGrammars = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  while (1)
  {
    v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    v4 = [[ABVCardParameter alloc] initWithName:&stru_1F2FE2718];
    [(ABVCardParameter *)v4 setValue:v3];
    if (self->_grouping)
    {
      [(ABVCardParameter *)v4 setGrouping:?];
    }

    [(NSMutableArray *)self->_addressingGrammars addObject:v4];

    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]!= 4097)
    {
      break;
    }

    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return 1;
}

- (BOOL)parseORG
{
  self->_org = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    [(ABVCardParser *)self _setStringValueOrNoteIfNull:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1] forProperty:kABPersonDepartmentProperty];
    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
    {
      [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    }
  }

  return 1;
}

- (id)parseSingleValue
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v3;
}

- (id)parseRemainingLine
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:0x8000 trim:1];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v3;
}

- (id)parseValueArray
{
  v3 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:64 stoppingAt:36864 inEncoding:self->_encoding];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v3;
}

- (id)parseURL
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:0x8000 trim:1];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v3;
}

- (id)_genericLabel
{
  result = [(NSMutableArray *)self->_itemParameters count];
  if (result)
  {
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = [-[NSMutableArray objectAtIndex:](self->_itemParameters objectAtIndex:{v5), "types"}];
      v7 = [v6 count];
      if (v7)
      {
        break;
      }

LABEL_9:
      if (++v5 == v4)
      {
        return 0;
      }
    }

    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [v6 objectAtIndex:v9];
      if (![v10 compare:@"HOME" options:1])
      {
        v11 = &kABHomeLabel;
        return *v11;
      }

      if (![v10 compare:@"WORK" options:1])
      {
        v11 = &kABWorkLabel;
        return *v11;
      }

      if (![v10 compare:@"OTHER" options:1])
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_9;
      }
    }

    v11 = &kABOtherLabel;
    return *v11;
  }

  return result;
}

- (id)genericLabel
{
  result = [(ABVCardParser *)self _genericLabel];
  if (!result)
  {
    return @"_$!<Work>!$_";
  }

  return result;
}

- (id)phoneLabel
{
  selfCopy = self;
  result = [(NSMutableArray *)self->_itemParameters count];
  v20 = result;
  if (result)
  {
    v4 = 0;
    v21 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v19 = selfCopy;
    do
    {
      v10 = [-[NSMutableArray objectAtIndex:](selfCopy->_itemParameters objectAtIndex:{v9), "types"}];
      v11 = [v10 count];
      if (v11)
      {
        v12 = v11;
        for (i = 0; v12 != i; ++i)
        {
          v14 = [v10 objectAtIndex:i];
          v15 = v14;
          if ((v6 & 1) != 0 || [v14 compare:@"HOME" options:1])
          {
            if ((v7 & 1) != 0 || [v15 compare:@"WORK" options:1])
            {
              if ((v5 & 1) != 0 || [v15 compare:@"OTHER" options:1])
              {
                if ((v8 & 1) != 0 || [v15 compare:@"FAX" options:1])
                {
                  if (![v15 compare:@"MAIN" options:1])
                  {
                    v18 = &kABPersonPhoneMainLabel;
                    return *v18;
                  }

                  if ((v21 & 1) != 0 || [v15 compare:@"CELL" options:1])
                  {
                    if (![v15 compare:@"IPHONE" options:1])
                    {
                      v18 = &kABPersonPhoneIPhoneLabel;
                      return *v18;
                    }

                    if (![v15 compare:@"APPLEWATCH" options:1])
                    {
                      v18 = kABPersonPhoneAppleWatchLabel;
                      return *v18;
                    }

                    if (![v15 compare:@"PAGER" options:1])
                    {
                      v18 = &kABPersonPhonePagerLabel;
                      return *v18;
                    }

                    if ([v15 compare:@"TYPE" options:1])
                    {
                      v16 = [v15 compare:@"PREF" options:1];
                      if (v4)
                      {
                        v17 = 1;
                      }

                      else
                      {
                        v17 = v16 == 0;
                      }

                      if (!v17)
                      {
                        v4 = v15;
                      }
                    }
                  }

                  else
                  {
                    v21 = 1;
                  }
                }

                else
                {
                  v8 = 1;
                }
              }

              else
              {
                v5 = 1;
              }
            }

            else
            {
              v7 = 1;
            }
          }

          else
          {
            v6 = 1;
          }
        }
      }

      ++v9;
      selfCopy = v19;
    }

    while (v9 != v20);
    if (v6)
    {
      if (v8)
      {
        v18 = &kABPersonPhoneHomeFAXLabel;
      }

      else
      {
        v18 = &kABHomeLabel;
      }

      return *v18;
    }

    if (v7)
    {
      if ((v8 & 1) == 0)
      {
        v18 = &kABWorkLabel;
        return *v18;
      }

LABEL_50:
      v18 = &kABPersonPhoneWorkFAXLabel;
      return *v18;
    }

    if (v5)
    {
      if (v8)
      {
        v18 = &kABPersonPhoneOtherFAXLabel;
      }

      else
      {
        v18 = &kABOtherLabel;
      }

      return *v18;
    }

    if (v8)
    {
      goto LABEL_50;
    }

    if (v21)
    {
      return @"_$!<Mobile>!$_";
    }

    else
    {
      return v4;
    }
  }

  return result;
}

- (BOOL)parseABUID
{
  parseSingleValue = [(ABVCardParser *)self parseSingleValue];
  v4 = parseSingleValue;
  if (parseSingleValue)
  {
    self->_uid = parseSingleValue;
  }

  return v4 != 0;
}

- (BOOL)parseEMAIL
{
  if (!self->_emails)
  {
    self->_emails = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  genericLabel = [(ABVCardParser *)self genericLabel];
  while (1)
  {
    v4 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    v5 = [[ABVCardParameter alloc] initWithName:genericLabel];
    [(ABVCardParameter *)v5 setValue:v4];
    if (self->_grouping)
    {
      [(ABVCardParameter *)v5 setGrouping:?];
    }

    [(NSMutableArray *)self->_emails addObject:v5];

    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]!= 4097)
    {
      break;
    }

    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return 1;
}

- (BOOL)parseTEL
{
  if (!self->_phones)
  {
    self->_phones = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  phoneLabel = [(ABVCardParser *)self phoneLabel];
  while (1)
  {
    v4 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    v5 = [[ABVCardParameter alloc] initWithName:phoneLabel];
    [(ABVCardParameter *)v5 setValue:v4];
    if (self->_grouping)
    {
      [(ABVCardParameter *)v5 setGrouping:?];
    }

    [(NSMutableArray *)self->_phones addObject:v5];

    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]!= 4097)
    {
      break;
    }

    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return 1;
}

- (BOOL)parseADR
{
  if (!self->_addresses)
  {
    self->_addresses = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = 1;
  v6 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v6)
  {
    v7 = v6;
    if ([v6 length])
    {
      [v4 appendString:v7];
      v5 = 0;
    }
  }

  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    v8 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 length];
      if (v10)
      {
        v11 = v5;
      }

      else
      {
        v11 = 1;
      }

      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v9 = v12;
      }

      else
      {
        [v4 appendString:@"\n"];
      }
    }

    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
    {
      [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
      v13 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13;
      if (![v13 length])
      {
        goto LABEL_25;
      }

      if (((v9 == 0) & ~v5) != 0)
      {
        v9 = v14;
      }

      else
      {
        [v4 appendString:v14];
        if (!v9)
        {
          goto LABEL_25;
        }
      }

      [v4 appendString:@"\n"];
      [v4 appendString:v9];
LABEL_25:
      if ([v4 length])
      {
        [v3 setObject:v4 forKey:@"Street"];
      }

      if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
      {
        [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
        v15 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
        if (v15)
        {
          v16 = v15;
          if ([v15 length])
          {
            [v3 setObject:v16 forKey:@"City"];
          }
        }

        if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
        {
          [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
          v17 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
          if (v17)
          {
            v18 = v17;
            if ([v17 length])
            {
              [v3 setObject:v18 forKey:@"State"];
            }
          }

          if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
          {
            [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
            v19 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
            if (v19)
            {
              v20 = v19;
              if ([v19 length])
              {
                [v3 setObject:v20 forKey:@"ZIP"];
              }
            }

            if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
            {
              [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
              v21 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
              if (v21)
              {
                v22 = v21;
                if ([v21 length])
                {
                  [v3 setObject:v22 forKey:@"Country"];
                }
              }

              if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
              {
                [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
              }
            }
          }
        }
      }
    }
  }

  v23 = [[ABVCardParameter alloc] initWithName:[(ABVCardParser *)self genericLabel]];
  [(ABVCardParameter *)v23 setValue:v3];
  if (self->_grouping)
  {
    [(ABVCardParameter *)v23 setGrouping:?];
  }

  [(NSMutableArray *)self->_addresses addObject:v23];

  return 1;
}

- (BOOL)parseADD
{
  if (!self->_addresses)
  {
    self->_addresses = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v5 && (v6 = v5, [v5 length]))
  {
    [v4 appendString:v6];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    v8 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    if (v8)
    {
      v9 = v8;
      if ([v8 length])
      {
        if (v7)
        {
          [v4 appendString:@"\n"];
        }

        [v4 appendString:v9];
      }
    }

    if ([v4 length])
    {
      [v3 setObject:v4 forKey:@"Street"];
    }

    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
    {
      [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
      v10 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
      if (v10)
      {
        v11 = v10;
        if ([v10 length])
        {
          [v3 setObject:v11 forKey:@"City"];
        }
      }

      if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
      {
        [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
        v12 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
        if (v12)
        {
          v13 = v12;
          if ([v12 length])
          {
            [v3 setObject:v13 forKey:@"State"];
          }
        }

        if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
        {
          [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
          v14 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
          if (v14)
          {
            v15 = v14;
            if ([v14 length])
            {
              [v3 setObject:v15 forKey:@"ZIP"];
            }
          }

          if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
          {
            [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
            v16 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
            if (v16)
            {
              v17 = v16;
              if ([v16 length])
              {
                [v3 setObject:v17 forKey:@"Country"];
              }
            }

            if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
            {
              [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
            }
          }
        }
      }
    }
  }

  v18 = [[ABVCardParameter alloc] initWithName:[(ABVCardParser *)self genericLabel]];
  [(ABVCardParameter *)v18 setValue:v3];
  [(NSMutableArray *)self->_addresses addObject:v18];

  return 1;
}

- (BOOL)parseABExtensionType:(id)type
{
  v5 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding];
  if (v5 && self->_grouping)
  {
    v6 = v5;
    v7 = [(NSMutableDictionary *)self->_extensions objectForKey:?];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_extensions setObject:v7 forKey:self->_grouping];
    }

    [v7 setObject:v6 forKey:type];
  }

  return 1;
}

- (id)_socialProfileUserId
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (id)_socialProfileUsername
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (id)_socialProfileDisplayName
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (id)_socialProfileTeamIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (id)_socialProfileBundleIdentifiers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (id)_socialProfileService
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemParameters = self->_itemParameters;
  v3 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  value = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(itemParameters);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([objc_msgSend(objc_msgSend(v8 "name")])
      {
        value = [v8 value];
      }
    }

    v4 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return value;
}

- (BOOL)parseSocialProfiles
{
  if (!self->_socialProfiles)
  {
    self->_socialProfiles = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v3 = socialProfileFromURL([(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1], [(ABVCardParser *)self _socialProfileService], [(ABVCardParser *)self _socialProfileUsername], [(ABVCardParser *)self _socialProfileUserId], [(ABVCardParser *)self _socialProfileDisplayName], [(ABVCardParser *)self _socialProfileTeamIdentifier], [(ABVCardParser *)self _socialProfileBundleIdentifiers]);
  if ([v3 count])
  {
    v4 = [[ABVCardParameter alloc] initWithName:[(ABVCardParser *)self genericLabel]];
    [(ABVCardParameter *)v4 setValue:v3];
    if (self->_grouping)
    {
      [(ABVCardParameter *)v4 setGrouping:?];
    }

    [(NSMutableArray *)self->_socialProfiles addObject:v4];
  }

  return 1;
}

- (id)parseInstantMessengerProfile:(id)profile
{
  profileCopy = profile;
  v41 = *MEMORY[0x1E69E9840];
  v5 = [profile rangeOfString:@":"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    profileCopy = [profileCopy substringFromIndex:v5 + 1];
  }

  stringByRemovingPercentEncoding = [profileCopy stringByRemovingPercentEncoding];
  if (stringByRemovingPercentEncoding)
  {
    v7 = stringByRemovingPercentEncoding;
  }

  else
  {
    v7 = profileCopy;
  }

  v29 = v7;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  itemParameters = self->_itemParameters;
  v9 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(itemParameters);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        if (![objc_msgSend(v13 "name")] || !objc_msgSend(objc_msgSend(v13, "name"), "compare:options:", @"X-SERVICE-TYPE", 1))
        {
          value = [v13 value];
          goto LABEL_18;
        }
      }

      v10 = [(NSMutableArray *)itemParameters countByEnumeratingWithState:&v35 objects:v40 count:16];
      value = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    value = 0;
  }

LABEL_18:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = self->_itemParameters;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
  v28 = value;
  if (v16)
  {
    v17 = v16;
    value4 = 0;
    value3 = 0;
    value2 = 0;
    v20 = *v32;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v31 + 1) + 8 * j);
        if ([objc_msgSend(v22 name])
        {
          if ([objc_msgSend(v22 "name")])
          {
            if (![objc_msgSend(v22 "name")])
            {
              value2 = [v22 value];
            }
          }

          else
          {
            value3 = [v22 value];
          }
        }

        else
        {
          value4 = [v22 value];
        }
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v17);
  }

  else
  {
    value4 = 0;
    value3 = 0;
    value2 = 0;
  }

  v23 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"InstantMessageCanonicalNames", @"plist"}];
  v24 = v28;
  if ([v23 objectForKey:{objc_msgSend(v28, "lowercaseString")}])
  {
    v24 = [v23 objectForKey:{objc_msgSend(v28, "lowercaseString")}];
  }

  v25 = [MEMORY[0x1E695DF90] dictionaryWithObject:v29 forKey:{@"username", v28}];
  v26 = v25;
  if (v24)
  {
    [v25 setObject:v24 forKey:@"service"];
  }

  if (value4)
  {
    [v26 setObject:value4 forKey:@"teamIdentifier"];
  }

  if (value3)
  {
    [v26 setObject:value3 forKey:@"bundleIdentifiers"];
  }

  if (value2)
  {
    [v26 setObject:value2 forKey:@"identifier"];
  }

  return v26;
}

- (BOOL)parseIMPP
{
  if (!self->_instantMessengers)
  {
    self->_instantMessengers = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v3 = [(ABVCardParser *)self parseInstantMessengerProfile:[(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1]];
  v4 = [[ABVCardParameter alloc] initWithName:[(ABVCardParser *)self genericLabel]];
  [(ABVCardParameter *)v4 setValue:v3];
  if (self->_grouping)
  {
    [(ABVCardParameter *)v4 setGrouping:?];
  }

  [(NSMutableArray *)self->_instantMessengers addObject:v4];

  return 1;
}

- (BOOL)parseGuardianWhitelisted
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if ([v3 isEqualToString:@"false"])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = [(ABVCardValueSetter *)self->_valueSetter setValue:v4 forProperty:kABPersonDowntimeWhitelistProperty];
  if (v5 && [(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v5;
}

- (BOOL)parseSensitiveContentConfigurationData
{
  selfCopy = self;
  parseSingleValue = [(ABVCardParser *)self parseSingleValue];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:parseSingleValue options:0];
  LOBYTE(selfCopy) = [(ABVCardParser *)selfCopy _setDataValueOrNoteIfNull:v4 forProperty:kABPersonSensitiveContentConfigurationProperty];

  return selfCopy;
}

- (BOOL)parseIMAGETYPE
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  v4 = [(ABVCardParser *)self _setStringValueOrNoteIfNull:v3 forProperty:kABPersonImageTypeProperty];
  if (v4 && [(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v4;
}

- (BOOL)parseIMAGEHASH
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
  v5 = [(ABVCardParser *)self _setDataValueOrNoteIfNull:v4 forProperty:kABPersonImageHashProperty];
  if (v5 && [(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 4097)
  {
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }

  return v5;
}

- (BOOL)addIMValueTo:(id)to
{
  genericLabel = [(ABVCardParser *)self genericLabel];
  v6 = 1;
  while (1)
  {
    v7 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
    v8 = [to count];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      while (([v7 isEqualToString:{objc_msgSend(objc_msgSend(to, "objectAtIndex:", v10), "value")}] & 1) == 0)
      {
        if (v9 == ++v10)
        {
          goto LABEL_6;
        }
      }

LABEL_10:
      v6 = 0;
      goto LABEL_11;
    }

LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    v11 = [[ABVCardParameter alloc] initWithName:genericLabel];
    [(ABVCardParameter *)v11 setValue:v7];
    if (self->_grouping)
    {
      [(ABVCardParameter *)v11 setGrouping:?];
    }

    [to addObject:v11];

    v6 = 1;
LABEL_11:
    if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]!= 4097)
    {
      return 1;
    }

    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
  }
}

- (BOOL)parseActivityAlerts
{
  if (!self->_activityAlerts)
  {
    self->_activityAlerts = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  parseRemainingLine = [(ABVCardParser *)self parseRemainingLine];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__ABVCardParser_parseActivityAlerts__block_invoke;
  v5[3] = &unk_1E7CCCEC0;
  v5[4] = self;
  [ABVCardActivityAlertSerialization parseString:parseRemainingLine intoTypeAndInfo:v5];
  return 1;
}

uint64_t __36__ABVCardParser_parseActivityAlerts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  result = [a2 length];
  if (result)
  {
    result = [a3 count];
    if (result)
    {
      v7 = *(*(a1 + 32) + 208);
      v8 = a2;
      v9[0] = a3;
      return [v7 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
    }
  }

  return result;
}

- (id)dateFromISO8601String:(id)string
{
  v4 = [string length];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  if ([string rangeOfString:@"-"] == 0x7FFFFFFFFFFFFFFFLL && v4 == 8)
  {
    [v5 setCalendar:{objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D850])}];
    [v5 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneWithName:", @"Zulu"}];
    [v5 setYear:{objc_msgSend(objc_msgSend(string, "substringWithRange:", 0, 4), "intValue")}];
    [v5 setMonth:{objc_msgSend(objc_msgSend(string, "substringWithRange:", 4, 2), "intValue")}];
    stringCopy2 = string;
    v8 = 6;
    goto LABEL_10;
  }

  if (v4 != 6 || ![string _cn_hasPrefix:@"--"])
  {
    v16 = 0;
    v15 = 0uLL;
    v12 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:string];
    [v12 scanInt:&v16 + 4];
    if ([v12 scanLocation] + 1 < v4)
    {
      [v12 setScanLocation:?];
      [v12 scanInt:&v16];
      if ([v12 scanLocation] + 1 < v4)
      {
        [v12 setScanLocation:?];
        [v12 scanInt:&v15 + 12];
        if ([v12 scanLocation] + 1 >= v4 || (objc_msgSend(v12, "setScanLocation:"), objc_msgSend(v12, "scanInt:", &v15 + 8), objc_msgSend(v12, "scanLocation") + 1 >= v4) || (objc_msgSend(v12, "setScanLocation:"), objc_msgSend(v12, "scanInt:", &v15 + 4), objc_msgSend(v12, "scanLocation") + 1 >= v4))
        {
          v13 = 1;
        }

        else
        {
          [v12 setScanLocation:?];
          [v12 scanInt:&v15];
          v13 = v15 == 0;
        }

        if (!*(&v15 + 4) && v13)
        {
          DWORD2(v15) = 12;
        }

        [v5 setCalendar:{objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D850])}];
        [v5 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneWithName:", @"Zulu"}];
        [v5 setYear:SHIDWORD(v16)];
        [v5 setMonth:v16];
        [v5 setDay:SHIDWORD(v15)];
        [v5 setHour:SDWORD2(v15)];
        [v5 setMinute:SDWORD1(v15)];
        v10 = v15;
        v9 = v5;
        goto LABEL_11;
      }
    }

LABEL_18:
    date = 0;
    goto LABEL_19;
  }

  if (![objc_msgSend(string substringWithRange:{2, 4), "_cn_containsOnlyDigits"}])
  {
    goto LABEL_18;
  }

  [v5 setCalendar:{objc_msgSend(MEMORY[0x1E695DEE8], "calendarWithIdentifier:", *MEMORY[0x1E695D850])}];
  [v5 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneWithName:", @"Zulu"}];
  [v5 setYear:1604];
  [v5 setMonth:{objc_msgSend(objc_msgSend(string, "substringWithRange:", 2, 2), "intValue")}];
  stringCopy2 = string;
  v8 = 4;
LABEL_10:
  [v5 setDay:{objc_msgSend(objc_msgSend(stringCopy2, "substringWithRange:", v8, 2), "intValue")}];
  [v5 setHour:12];
  [v5 setMinute:0];
  v9 = v5;
  v10 = 0;
LABEL_11:
  [v9 setSecond:v10];
  date = [v5 date];
LABEL_19:

  return date;
}

- (BOOL)parseBDAY
{
  v3 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v3)
  {
    v4 = v3;
    if ([(__CFString *)v3 length])
    {
      if ([(__CFString *)v4 rangeOfString:@", "]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [(ABVCardParser *)self dateFromISO8601String:v4];
        if (v5)
        {
          [(ABVCardValueSetter *)self->_valueSetter setValue:v5 forProperty:kABPersonBirthdayProperty];
        }

        else
        {
          [(ABVCardParser *)self noteLackOfValueForProperty:kABPersonBirthdayProperty];
        }
      }

      else
      {
        v6 = *MEMORY[0x1E695E480];
        v7 = CFDateFormatterCreate(*MEMORY[0x1E695E480], 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
        if (v7)
        {
          v8 = v7;
          CFDateFormatterSetFormat(v7, @"%a, %b %e, %Y");
          DateFromString = CFDateFormatterCreateDateFromString(v6, v8, v4, 0);
          if (DateFromString)
          {
            v10 = DateFromString;
            [(ABVCardValueSetter *)self->_valueSetter setValue:DateFromString forProperty:kABPersonBirthdayProperty];
            CFRelease(v10);
          }

          else
          {
            [(ABVCardParser *)self noteLackOfValueForProperty:kABPersonBirthdayProperty];
          }

          CFRelease(v8);
        }
      }
    }
  }

  return 1;
}

- (BOOL)parseAlternateBirthday
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_itemParameters count]== 1)
  {
    v4 = [(NSMutableArray *)self->_itemParameters objectAtIndexedSubscript:0];
    if (![objc_msgSend(v4 "name")])
    {
      if ([objc_msgSend(v4 "value")])
      {
        [dictionary setObject:objc_msgSend(v4 forKeyedSubscript:{"value"), @"calendarIdentifier"}];
      }
    }
  }

  v5 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v5)
  {
    v6 = v5;
    if ([v5 length])
    {
      v7 = [ABVCardDateScanner scannerWithString:v6];
      v8 = [(ABVCardDateScanner *)v7 scanCalendarUnit:2];
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v8), @"era"}];
      }

      v9 = [(ABVCardDateScanner *)v7 scanCalendarUnit:4];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v9), @"year"}];
      }

      v10 = [(ABVCardDateScanner *)v7 scanCalendarUnit:8];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v10), @"month"}];
      }

      [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", -[ABVCardDateScanner scanLeapMarker](v7, "scanLeapMarker")), @"isLeapMonth"}];
      v11 = [(ABVCardDateScanner *)v7 scanCalendarUnit:16];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", v11), @"day"}];
      }
    }
  }

  v12 = ABValidateAlternateBirthday(dictionary);
  if (v12)
  {
    [(ABVCardValueSetter *)self->_valueSetter setValue:dictionary forProperty:kABPersonAlternateBirthdayProperty];
  }

  return v12;
}

- (BOOL)parseABDATE
{
  if (!self->_dates)
  {
    self->_dates = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  defaultLabel = [(ABVCardParser *)self defaultLabel];
  v4 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v4)
  {
    v5 = v4;
    if ([v4 length])
    {
      v6 = [(ABVCardParser *)self dateFromISO8601String:v5];
      if (v6)
      {
        v7 = v6;
        v8 = [[ABVCardParameter alloc] initWithName:defaultLabel];
        [(ABVCardParameter *)v8 setValue:v7];
        if (self->_grouping)
        {
          [(ABVCardParameter *)v8 setGrouping:?];
        }

        [(NSMutableArray *)self->_dates addObject:v8];
      }
    }
  }

  return 1;
}

- (BOOL)parsePhoto:(id)photo
{
  if (photo)
  {
    self->_imageData = [photo abDecodeVCardBase64];
  }

  return photo != 0;
}

- (BOOL)parseWallpaper:(id)wallpaper
{
  if (wallpaper)
  {
    abDecodeVCardBase64 = [wallpaper abDecodeVCardBase64];
    v5 = kABPersonWallpaperProperty;

    return [(ABVCardParser *)self _setDataValueOrNoteIfNull:abDecodeVCardBase64 forProperty:v5];
  }

  else
  {
    parseSingleValue = [(ABVCardParser *)self parseSingleValue];
    v8 = kABPersonWallpaperURIProperty;

    return [(ABVCardParser *)self _setStringValueOrNoteIfNull:parseSingleValue forProperty:v8];
  }
}

- (void)parseABShowAs
{
  v3 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding];
  if ([v3 count])
  {
    if ([objc_msgSend(v3 objectAtIndex:{0), "compare:options:", @"COMPANY", 1}])
    {

      [(ABVCardParser *)self noteLackOfValueForProperty:kABPersonKindProperty];
    }

    else
    {
      valueSetter = self->_valueSetter;

      [(ABVCardValueSetter *)valueSetter setValue:kABPersonKindOrganization forProperty:kABPersonKindProperty];
    }
  }
}

- (void)parseSharedPhotoDisplayPreference
{
  v3 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:4096 stoppingAt:0x8000 inEncoding:self->_encoding];
  v4 = kABPersonDisplayFlagsProperty;
  v5 = [-[ABVCardValueSetter valueForProperty:](self->_valueSetter valueForProperty:{kABPersonDisplayFlagsProperty), "integerValue"}] & 0xFFFFFFFFFFFFFF3FLL;
  if ([v3 count])
  {
    v6 = [v3 objectAtIndex:0];
    if ([v6 isEqualToString:@"AUTOUPDATE"])
    {
      v5 |= 0x40uLL;
    }

    else if ([v6 isEqualToString:@"ALWAYS_ASK"])
    {
      v5 |= 0x80uLL;
    }

    else
    {
      v7 = [v6 isEqualToString:@"IMPLICIT_AUTOUPDATE"];
      v8 = 192;
      if (!v7)
      {
        v8 = 0;
      }

      v5 |= v8;
    }
  }

  valueSetter = self->_valueSetter;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  [(ABVCardValueSetter *)valueSetter setValue:v10 forProperty:v4];
}

- (BOOL)parseABReleatedNames
{
  if (!self->_relatedNames)
  {
    self->_relatedNames = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  defaultLabel = [(ABVCardParser *)self defaultLabel];
  v4 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:self->_encoding quotedPrintable:self->_quotedPrintable stopTokens:36864 trim:1];
  if (v4)
  {
    v5 = v4;
    if ([v4 length])
    {
      v6 = [[ABVCardParameter alloc] initWithName:defaultLabel];
      [(ABVCardParameter *)v6 setValue:v5];
      if (self->_grouping)
      {
        [(ABVCardParameter *)v6 setGrouping:?];
      }

      [(NSMutableArray *)self->_relatedNames addObject:v6];
    }
  }

  return 1;
}

- (BOOL)_usesRemainingLineForExternalPropKey:(id)key
{
  if ([key hasPrefix:@"X-APPLE-OL"])
  {
    return 1;
  }

  v4 = 1;
  if ([key compare:@"X-PHONETIC-COMPANY-NAME" options:1])
  {
    return [key compare:@"LABEL" options:1] == 0;
  }

  return v4;
}

- (BOOL)parseItem
{
  defaultEncoding = self->_defaultEncoding;
  *&self->_quotedPrintable = 0;
  self->_grouping = 0;
  self->_encoding = defaultEncoding;
  v4 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:256 stoppingAt:46080 inEncoding:1];
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    lastObject = [v4 lastObject];
    if (v6 == 2)
    {
      self->_grouping = [v4 objectAtIndex:0];
    }
  }

  else
  {
    lastObject = 0;
  }

  v8 = [lastObject compare:@"END" options:1];
  if (!v8)
  {
    return v8;
  }

  v63 = lastObject;
  p_base64 = &self->_base64;
  self->_itemParameters = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(ABVCardLexer *)self->_lexer nextTokenPeak:0];
  if (v10 != 8193)
  {
    v12 = v10;
    v62 = kABPersonMemojiMetadataProperty;
    v13 = @"QUOTED-PRINTABLE";
    while (1)
    {
      if ([(ABVCardLexer *)self->_lexer errorCount]>= 10)
      {
LABEL_61:

        goto LABEL_245;
      }

      if (v12 != 4097)
      {
        if (v12 == 65537)
        {
          goto LABEL_61;
        }

        goto LABEL_43;
      }

      v14 = [(ABVCardLexer *)self->_lexer nextStringInEncoding:1 quotedPrintable:0 stopTokens:46080 trim:1];
      v15 = [v14 compare:v13 options:1];
      p_quotedPrintable = &self->_quotedPrintable;
      if (!v15 || (v17 = [v14 compare:@"BASE64" options:1], p_quotedPrintable = &self->_base64, !v17))
      {
        *p_quotedPrintable = 1;
      }

      v18 = [[ABVCardParameter alloc] initWithName:v14];
      [(NSMutableArray *)self->_itemParameters addObject:v18];
      if ([(ABVCardLexer *)self->_lexer nextTokenPeak:1]== 1025)
      {
        break;
      }

LABEL_42:

LABEL_43:
      v12 = [(ABVCardLexer *)self->_lexer nextTokenPeak:0];
      if (v12 == 8193)
      {
        goto LABEL_7;
      }
    }

    v19 = v13;
    [(ABVCardLexer *)self->_lexer advanceToPeakPoint];
    if (self->_quotedPrintable)
    {
      v20 = 46080;
    }

    else
    {
      v20 = 45056;
    }

    v21 = [(ABVCardLexer *)self->_lexer nextArraySeperatedByToken:128 stoppingAt:v20 inEncoding:4];
    if ([(__CFString *)v21 count])
    {
      v22 = [(__CFString *)v21 objectAtIndex:0];
    }

    else
    {
      v22 = 0;
    }

    if ([v14 compare:@"TYPE" options:1])
    {
      if (![v14 compare:@"CHARSET" options:1])
      {
        if ([(__CFString *)v22 compare:@"UTF-7" options:1])
        {
          v26 = CFStringConvertIANACharSetNameToEncoding(v22);
          v13 = v19;
          if (v26 == -1)
          {
            self->_encoding = 0;
            ABDiagnosticsEnabled();
            _ABLog2(4, "[ABVCardParser parseItem]", 2160, 0, @"%@ is an invalid encoding", v27, v28, v29, v22);
          }

          else
          {
            self->_encoding = CFStringConvertEncodingToNSStringEncoding(v26);
          }

          goto LABEL_42;
        }

        self->_encoding = 4000100;
        goto LABEL_41;
      }

      if (![v14 compare:@"ENCODING" options:1])
      {
        v13 = v19;
        if ([(__CFString *)v22 compare:v19 options:1])
        {
          if (![(__CFString *)v22 compare:@"b" options:1]|| ![(__CFString *)v22 compare:@"BASE64" options:1])
          {
            *p_base64 = 1;
          }
        }

        else
        {
          self->_quotedPrintable = 1;
        }

        goto LABEL_42;
      }

      if ([v14 compare:@"X-USER" options:1] && objc_msgSend(v14, "compare:options:", @"X-USERID", 1) && objc_msgSend(v14, "compare:options:", @"SERVICE-TYPE", 1) && objc_msgSend(v14, "compare:options:", @"X-SERVICE-TYPE", 1) && objc_msgSend(v14, "compare:options:", @"X-DISPLAYNAME", 1) && objc_msgSend(v14, "compare:options:", @"X-TEAMIDENTIFIER", 1) && objc_msgSend(v14, "compare:options:", @"X-ABCROP-RECTANGLE", 1) && objc_msgSend(v14, "compare:options:", @"CALSCALE", 1))
      {
        if ([v14 compare:@"X-BUNDLEIDENTIFIERS" options:1])
        {
          v13 = v19;
          if (![v14 compare:@"VND-63-MEMOJI-DETAILS" options:1])
          {
            v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:0];
            [(ABVCardParser *)self _setDataValueOrNoteIfNull:v23 forProperty:v62];
          }

          goto LABEL_42;
        }

        v24 = v18;
        v25 = v21;
        goto LABEL_40;
      }
    }

    else
    {
      [(ABVCardParameter *)v18 addTypes:v21];
    }

    v24 = v18;
    v25 = v22;
LABEL_40:
    [(ABVCardParameter *)v24 setValue:v25];
LABEL_41:
    v13 = v19;
    goto LABEL_42;
  }

LABEL_7:
  if (*p_base64)
  {
    nextBase64Data = [(ABVCardLexer *)self->_lexer nextBase64Data];
  }

  else
  {
    nextBase64Data = 0;
  }

  switch([v63 length])
  {
    case 1:
      if ([v63 compare:@"N" options:1])
      {
        goto LABEL_198;
      }

      if (![(ABVCardParser *)self parseN])
      {
        ABDiagnosticsEnabled();
        v33 = @"Malformed N";
        v34 = 2313;
        goto LABEL_241;
      }

      goto LABEL_242;
    case 2:
      if ([v63 compare:@"FN" options:1])
      {
        goto LABEL_198;
      }

      self->_formattedName = [(ABVCardParser *)self parseSingleValue];
      goto LABEL_242;
    case 3:
      if ([v63 compare:@"UID" options:1])
      {
        if ([v63 compare:@"TEL" options:1])
        {
          if ([v63 compare:@"ADR" options:1])
          {
            if ([v63 compare:@"ORG" options:1])
            {
              if ([v63 compare:@"URL" options:1])
              {
                if ([v63 compare:@"ADD" options:1])
                {
                  goto LABEL_198;
                }

                if (![(ABVCardParser *)self parseADD])
                {
                  ABDiagnosticsEnabled();
                  v33 = @"Malformed ADD";
                  v34 = 2249;
                  goto LABEL_241;
                }
              }

              else
              {
                parseURL = [(ABVCardParser *)self parseURL];
                if (parseURL)
                {
                  v56 = parseURL;
                  if ([parseURL length])
                  {
                    if (!self->_urls)
                    {
                      self->_urls = objc_alloc_init(MEMORY[0x1E695DF70]);
                    }

                    _genericLabel = [(ABVCardParser *)self _genericLabel];
                    if (!_genericLabel)
                    {
                      _genericLabel = [(ABVCardParser *)self defaultURLLabel];
                    }

                    v58 = [[ABVCardParameter alloc] initWithName:_genericLabel];
                    [(ABVCardParameter *)v58 setValue:v56];
                    if (self->_grouping)
                    {
                      [(ABVCardParameter *)v58 setGrouping:?];
                    }

                    [(NSMutableArray *)self->_urls addObject:v58];
                  }
                }
              }
            }

            else if (![(ABVCardParser *)self parseORG])
            {
              ABDiagnosticsEnabled();
              v33 = @"Malformed ORG";
              v34 = 2217;
              goto LABEL_241;
            }
          }

          else if (![(ABVCardParser *)self parseADR])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed ADR";
            v34 = 2212;
            goto LABEL_241;
          }
        }

        else if (![(ABVCardParser *)self parseTEL])
        {
          ABDiagnosticsEnabled();
          v33 = @"Malformed TEL";
          v34 = 2207;
          goto LABEL_241;
        }
      }

      else
      {
        [(ABVCardParser *)self parseUID];
      }

      goto LABEL_242;
    case 4:
      if ([v63 compare:@"NOTE" options:1])
      {
        if ([v63 compare:@"BDAY" options:1])
        {
          if ([v63 compare:@"IMPP" options:1])
          {
            goto LABEL_198;
          }

          if (![(ABVCardParser *)self parseIMPP])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed IMPP";
            v34 = 2353;
            goto LABEL_241;
          }
        }

        else if (![(ABVCardParser *)self parseBDAY])
        {
          ABDiagnosticsEnabled();
          v33 = @"Malformed BDAY";
          v34 = 2348;
          goto LABEL_241;
        }
      }

      else
      {
        self->_notes = [-[ABVCardParser parseSingleValue](self "parseSingleValue")];
      }

      goto LABEL_242;
    case 5:
      if ([v63 compare:@"EMAIL" options:1])
      {
        if (![v63 compare:@"TITLE" options:1])
        {
          parseSingleValue = [(ABVCardParser *)self parseSingleValue];
          v36 = &kABPersonJobTitleProperty;
          goto LABEL_179;
        }

        if ([v63 compare:@"X-AIM" options:1])
        {
          if ([v63 compare:@"X-MSN" options:1])
          {
            if ([v63 compare:@"X-ICQ" options:1])
            {
              if ([v63 compare:@"PHOTO" options:1])
              {
                goto LABEL_198;
              }

              if (![(ABVCardParser *)self parsePhoto:nextBase64Data])
              {
                self->_imageURI = [(ABVCardParser *)self parseSingleValue];
              }

              if ([(NSMutableArray *)self->_itemParameters count])
              {
                v39 = 0;
                while (1)
                {
                  v40 = [(NSMutableArray *)self->_itemParameters objectAtIndex:v39];
                  if (![objc_msgSend(v40 "name")])
                  {
                    value = [v40 value];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v42 = [value componentsSeparatedByString:@"&"];
                      if ([v42 count] == 6)
                      {
                        if ([objc_msgSend(v42 objectAtIndex:{0), "isEqualToString:", @"ABClipRect_1"}])
                        {
                          break;
                        }
                      }
                    }
                  }

                  if (++v39 >= [(NSMutableArray *)self->_itemParameters count])
                  {
                    goto LABEL_242;
                  }
                }

                self->_cropRectX = [objc_msgSend(v42 objectAtIndex:{1), "intValue"}];
                self->_cropRectY = [objc_msgSend(v42 objectAtIndex:{2), "intValue"}];
                self->_cropRectWidth = [objc_msgSend(v42 objectAtIndex:{3), "intValue"}];
                self->_cropRectHeight = [objc_msgSend(v42 objectAtIndex:{4), "intValue"}];
                self->_cropRectChecksum = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:objc_msgSend(v42 options:{"objectAtIndex:", 5), 0}];
              }
            }

            else
            {
              icqs = self->_icqs;
              if (!icqs)
              {
                icqs = objc_alloc_init(MEMORY[0x1E695DF70]);
                self->_icqs = icqs;
              }

              if (![(ABVCardParser *)self addIMValueTo:icqs])
              {
                ABDiagnosticsEnabled();
                v33 = @"Malformed X-ICQ";
                v34 = 2281;
                goto LABEL_241;
              }
            }
          }

          else
          {
            msns = self->_msns;
            if (!msns)
            {
              msns = objc_alloc_init(MEMORY[0x1E695DF70]);
              self->_msns = msns;
            }

            if (![(ABVCardParser *)self addIMValueTo:msns])
            {
              ABDiagnosticsEnabled();
              v33 = @"Malformed X-MSN";
              v34 = 2274;
              goto LABEL_241;
            }
          }
        }

        else
        {
          aims = self->_aims;
          if (!aims)
          {
            aims = objc_alloc_init(MEMORY[0x1E695DF70]);
            self->_aims = aims;
          }

          if (![(ABVCardParser *)self addIMValueTo:aims])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed X-AIM";
            v34 = 2267;
            goto LABEL_241;
          }
        }
      }

      else if (![(ABVCardParser *)self parseEMAIL])
      {
        ABDiagnosticsEnabled();
        v33 = @"Malformed EMAIL";
        v34 = 2256;
        goto LABEL_241;
      }

      goto LABEL_242;
    case 7:
      if ([v63 compare:@"VERSION" options:1])
      {
        if ([v63 compare:@"X-ABUID" options:1])
        {
          if (![v63 compare:@"X-ABADR" options:1])
          {
            v38 = @"X-ABADR";
            goto LABEL_196;
          }

          if ([v63 compare:@"X-YAHOO" options:1])
          {
            goto LABEL_198;
          }

          yahoos = self->_yahoos;
          if (!yahoos)
          {
            yahoos = objc_alloc_init(MEMORY[0x1E695DF70]);
            self->_yahoos = yahoos;
          }

          if (![(ABVCardParser *)self addIMValueTo:yahoos])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed X-YAHOO";
            v34 = 2338;
            goto LABEL_241;
          }
        }

        else
        {
          [(ABVCardParser *)self parseABUID];
        }
      }

      else if (![(ABVCardParser *)self parseVERSION])
      {
        ABDiagnosticsEnabled();
        v33 = @"Malformed VERSION";
        v34 = 2325;
        goto LABEL_241;
      }

      goto LABEL_242;
    case 8:
      if ([v63 compare:@"NICKNAME" options:1])
      {
        if ([v63 compare:@"X-JABBER" options:1])
        {
          if ([v63 compare:@"X-ABDATE" options:1])
          {
            goto LABEL_198;
          }

          if (![(ABVCardParser *)self parseABDATE])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed ABDATE";
            v34 = 2372;
            goto LABEL_241;
          }
        }

        else
        {
          jabbers = self->_jabbers;
          if (!jabbers)
          {
            jabbers = objc_alloc_init(MEMORY[0x1E695DF70]);
            self->_jabbers = jabbers;
          }

          if (![(ABVCardParser *)self addIMValueTo:jabbers])
          {
            ABDiagnosticsEnabled();
            v33 = @"Malformed X-JABBER";
            v34 = 2367;
            goto LABEL_241;
          }
        }
      }

      else if (![(ABVCardParser *)self parseNICKNAME])
      {
        ABDiagnosticsEnabled();
        v33 = @"Malformed NICKNAME";
        v34 = 2360;
        goto LABEL_241;
      }

      goto LABEL_242;
    case 9:
      if (![v63 compare:@"X-ABLabel" options:1])
      {
        [(ABVCardParser *)self parseABExtensionType:@"X-ABLabel"];
        goto LABEL_198;
      }

      if (![v63 compare:@"X-ABOrder" options:1])
      {
        [(ABVCardParser *)self parseABOrder];
        goto LABEL_198;
      }

      if (![v63 compare:@"X-ABPhoto" options:1])
      {
        [(ABVCardParser *)self parseABPhoto];
        goto LABEL_198;
      }

      if ([v63 compare:@"X-ALTBDAY" options:1])
      {
        goto LABEL_198;
      }

      if (![(ABVCardParser *)self parseAlternateBirthday])
      {
        ABDiagnosticsEnabled();
        v33 = @"Malformed X-ALTBDAY";
        v34 = 2410;
        goto LABEL_241;
      }

      goto LABEL_242;
    case 10:
      if (![v63 compare:@"X-ABShowAs" options:1])
      {
        [(ABVCardParser *)self parseABShowAs];
      }

      goto LABEL_198;
    case 11:
      if ([v63 compare:@"X-IMAGETYPE" options:1])
      {
        if ([v63 compare:@"X-IMAGEHASH" options:1])
        {
          v37 = @"X-WALLPAPER";
          goto LABEL_146;
        }

        [(ABVCardParser *)self parseIMAGEHASH];
      }

      else
      {
        [(ABVCardParser *)self parseIMAGETYPE];
      }

      goto LABEL_198;
    case 12:
      if (![v63 compare:@"X-MAIDENNAME" options:1])
      {
        [(ABVCardParser *)self parseABMaiden];
      }

      goto LABEL_198;
    case 14:
      if ([v63 compare:@"X-MS-IMADDRESS" options:1])
      {
        if ([v63 compare:@"X-PHONETIC-ORG" options:1])
        {
          goto LABEL_198;
        }

        parseSingleValue = [(ABVCardParser *)self parseSingleValue];
        v36 = &kABPersonOrganizationPhoneticProperty;
        goto LABEL_179;
      }

      if (!self->_untypedIMs)
      {
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        self->_untypedIMs = v44;
        if (![(ABVCardParser *)self addIMValueTo:v44])
        {
          ABDiagnosticsEnabled();
          v33 = @"Malformed X-MS-IMADDRESS";
          v34 = 2445;
          goto LABEL_241;
        }
      }

      goto LABEL_242;
    case 15:
      if (![v63 compare:@"X-SOCIALPROFILE" options:1])
      {
        [(ABVCardParser *)self parseSocialProfiles];
      }

      goto LABEL_198;
    case 16:
      if (![v63 compare:@"X-ABRELATEDNAMES" options:1])
      {
        [(ABVCardParser *)self parseABReleatedNames];
        goto LABEL_198;
      }

      if (![v63 compare:@"X-ACTIVITY-ALERT" options:1])
      {
        if (![(ABVCardParser *)self parseActivityAlerts])
        {
          ABDiagnosticsEnabled();
          v33 = @"Malformed X-ACTIVITY-ALERT";
          v34 = 2463;
LABEL_241:
          _ABLog2(4, "[ABVCardParser parseItem]", v34, 0, v33, v30, v31, v32, v61);
        }

        goto LABEL_242;
      }

      v37 = @"VND-63-WALLPAPER";
LABEL_146:
      if (![v63 compare:v37 options:1])
      {
        [(ABVCardParser *)self parseWallpaper:nextBase64Data];
        goto LABEL_242;
      }

      goto LABEL_198;
    case 17:
      if ([v63 compare:@"X-APPLE-MAPS-DATA" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseRemainingLine];
      v36 = &kABPersonMapsDataProperty;
      goto LABEL_179;
    case 19:
      if (![v63 compare:@"X-PRONUNCIATION-ORG" options:1])
      {
        parseSingleValue = [(ABVCardParser *)self parseSingleValue];
        v36 = &kABPersonOrganizationPronunciationProperty;
        goto LABEL_179;
      }

      if ([v63 compare:@"X-APPLE-SUBLOCALITY" options:1])
      {
        goto LABEL_198;
      }

      v38 = @"X-APPLE-SUBLOCALITY";
LABEL_196:
      [(ABVCardParser *)self parseABExtensionType:v38];
      goto LABEL_242;
    case 20:
      if (![v63 compare:@"X-PHONETIC-LAST-NAME" options:1])
      {
        parseSingleValue = [(ABVCardParser *)self parseSingleValue];
        v36 = &kABPersonLastNamePhoneticProperty;
        goto LABEL_179;
      }

      if ([v63 compare:@"X-ADDRESSING-GRAMMAR" options:1])
      {
        goto LABEL_198;
      }

      [(ABVCardParser *)self parseAddressingGrammar];
      goto LABEL_242;
    case 21:
      if ([v63 compare:@"X-PHONETIC-FIRST-NAME" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseSingleValue];
      v36 = &kABPersonFirstNamePhoneticProperty;
      goto LABEL_179;
    case 22:
      if ([v63 compare:@"X-PHONETIC-MIDDLE-NAME" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseSingleValue];
      v36 = &kABPersonMiddleNamePhoneticProperty;
      goto LABEL_179;
    case 25:
      if ([v63 compare:@"X-PRONUNCIATION-LAST-NAME" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseSingleValue];
      v36 = &kABPersonLastNamePronunciationProperty;
      goto LABEL_179;
    case 26:
      if ([v63 compare:@"X-PRONUNCIATION-FIRST-NAME" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseSingleValue];
      v36 = &kABPersonFirstNamePronunciationProperty;
      goto LABEL_179;
    case 27:
      if ([v63 compare:@"X-PRONUNCIATION-MIDDLE-NAME" options:1])
      {
        if (![v63 compare:@"X-SHARED-PHOTO-DISPLAY-PREF" options:1])
        {
          [(ABVCardParser *)self parseSharedPhotoDisplayPreference];
          goto LABEL_242;
        }

LABEL_198:
        v47 = [(ABVCardParser *)self _usesArrayForExternalPropKey:v63];
        if (v47)
        {
          parseValueArray = [(ABVCardParser *)self parseValueArray];
        }

        else
        {
          if (![(ABVCardParser *)self _usesRemainingLineForExternalPropKey:v63])
          {
            parseSingleValue2 = [(ABVCardParser *)self parseSingleValue];
            if (![parseSingleValue2 length])
            {
              parseSingleValue2 = 0;
            }

            goto LABEL_205;
          }

          parseValueArray = [(ABVCardParser *)self parseRemainingLine];
        }

        parseSingleValue2 = parseValueArray;
LABEL_205:
        if ([v63 compare:@"LOGO" options:1] && objc_msgSend(v63, "compare:options:", @"SOUND", 1) && objc_msgSend(v63, "compare:options:", @"LABEL", 1) && objc_msgSend(v63, "compare:options:", @"PRODID", 1) && objc_msgSend(v63, "compare:options:", @"SORT-STRING", 1) && objc_msgSend(v63, "compare:options:", @"UID", 1) && objc_msgSend(v63, "compare:options:", @"REV", 1) && parseSingleValue2 && !-[ABVCardParser _handleUnknownTag:withValue:](self, "_handleUnknownTag:withValue:", v63, parseSingleValue2))
        {
          otherNotes = self->_otherNotes;
          if (!otherNotes)
          {
            otherNotes = objc_alloc_init(MEMORY[0x1E696AD60]);
            self->_otherNotes = otherNotes;
          }

          if ([(NSMutableString *)otherNotes length])
          {
            [(NSMutableString *)self->_otherNotes appendString:@"\n"];
          }

          [(NSMutableString *)self->_otherNotes appendString:v63];
          [(NSMutableString *)self->_otherNotes appendString:@": "];
          v51 = self->_otherNotes;
          if (v47)
          {
            v52 = [parseSingleValue2 componentsJoinedByString:{@", "}];
            v53 = v51;
          }

          else
          {
            v53 = self->_otherNotes;
            v52 = parseSingleValue2;
          }

          [(NSMutableString *)v53 appendString:v52];
        }

        goto LABEL_242;
      }

      parseSingleValue = [(ABVCardParser *)self parseSingleValue];
      v36 = &kABPersonMiddleNamePronunciationProperty;
LABEL_179:
      [(ABVCardParser *)self _setStringValueOrNoteIfNull:parseSingleValue forProperty:*v36];
LABEL_242:

      if ([(ABVCardLexer *)self->_lexer advanceToEOL]&& [(ABVCardLexer *)self->_lexer advancePastEOL])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
LABEL_245:
        LOBYTE(v8) = 0;
      }

      break;
    case 28:
      if ([v63 compare:@"X-APPLE-GUARDIAN-WHITELISTED" options:1])
      {
        goto LABEL_198;
      }

      if ([(ABVCardParser *)self parseGuardianWhitelisted])
      {
        goto LABEL_242;
      }

      ABDiagnosticsEnabled();
      v33 = @"Malformed X-APPLE-GUARDIAN-WHITELISTED";
      v34 = 2532;
      goto LABEL_241;
    case 29:
      if ([v63 compare:@"X-APPLE-SUBADMINISTRATIVEAREA" options:1])
      {
        goto LABEL_198;
      }

      v38 = @"X-APPLE-SUBADMINISTRATIVEAREA";
      goto LABEL_196;
    case 31:
      if ([v63 compare:@"VND-63-SENSITIVE-CONTENT-CONFIG" options:1])
      {
        goto LABEL_198;
      }

      [(ABVCardParser *)self parseSensitiveContentConfigurationData];
      goto LABEL_242;
    case 32:
      if ([v63 compare:@"X-ADDRESSBOOKSERVER-PHONEME-DATA" options:1])
      {
        goto LABEL_198;
      }

      parseSingleValue = [(ABVCardParser *)self parseRemainingLine];
      v36 = &kABPersonPhonemeDataProperty;
      goto LABEL_179;
    default:
      goto LABEL_198;
  }

  return v8;
}

- (BOOL)importToPerson:(void *)person foundProperties:(const __CFArray *)properties
{
  v6 = [[ABVCardPersonValueSetter alloc] initWithPerson:person];
  v7 = [(ABVCardParser *)self importToValueSetter:v6];
  if (properties)
  {
    foundProperties = [(ABVCardPersonValueSetter *)v6 foundProperties];
    if (foundProperties)
    {
      v9 = foundProperties;
      CFRetain(foundProperties);
      *properties = v9;
    }
  }

  return v7;
}

- (BOOL)importToValueSetter:(id)setter
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);

  self->_valueSetter = setter;
  self->_extensions = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(ABVCardLexer *)self->_lexer advanceToString];
  if ([(ABVCardLexer *)self->_lexer nextTokenPeak:0]!= 5)
  {
    ABDiagnosticsEnabled();
    v10 = @"Malformed BEGIN";
    v11 = 2650;
LABEL_20:
    _ABLog2(4, "[ABVCardParser importToValueSetter:]", v11, 0, v10, v7, v8, v9, v27);
    goto LABEL_21;
  }

  if (![(ABVCardLexer *)self->_lexer advanceToToken:8193 throughTypes:0x4000])
  {
    ABDiagnosticsEnabled();
    v10 = @"Malformed :";
    v11 = 2655;
    goto LABEL_20;
  }

  if (![(ABVCardLexer *)self->_lexer advanceToToken:6 throughTypes:0x4000])
  {
    ABDiagnosticsEnabled();
    v10 = @"Malformed VCARD";
    v11 = 2661;
    goto LABEL_20;
  }

  if (![(ABVCardLexer *)self->_lexer advanceToEOL])
  {
    ABDiagnosticsEnabled();
    v10 = @"Malformed space after EOL";
    v11 = 2667;
    goto LABEL_20;
  }

  if (![(ABVCardLexer *)self->_lexer advancePastEOL])
  {
    ABDiagnosticsEnabled();
    v10 = @"Malformed EOL";
    v11 = 2673;
    goto LABEL_20;
  }

    ;
  }

  [(ABVCardParser *)self _setStringValueOrNoteIfNull:self->_org forProperty:kABPersonOrganizationProperty];
  if (!self->_last && !self->_first && !self->_org)
  {
    formattedName = self->_formattedName;
    if (formattedName)
    {
      if ([(NSString *)formattedName length])
      {
        [(ABVCardValueSetter *)self->_valueSetter setValue:self->_formattedName forProperty:kABPersonLastNameProperty];
      }
    }
  }

  if ([(NSString *)self->_org length])
  {
    [-[ABVCardValueSetter fullName](self->_valueSetter "fullName")];
  }

  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_emails forProperty:kABPersonEmailProperty valueComparator:0];
  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_phones forProperty:kABPersonPhoneProperty valueComparator:&__block_literal_global_8];
  [(ABVCardParser *)self addAddressMultiValues];
  [(ABVCardParser *)self addSocialProfileMultiValues];
  [(ABVCardParser *)self addInstantMessageMultiValues];
  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_dates forProperty:kABPersonDateProperty valueComparator:0];
  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_relatedNames forProperty:kABPersonRelatedNamesProperty valueComparator:0];
  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_urls forProperty:kABPersonURLProperty valueComparator:0];
  [(ABVCardParser *)self _setMultiValuesOrNoteIfNull:self->_addressingGrammars forProperty:kABPersonAddressingGrammarProperty valueComparator:0];
  [(ABVCardParser *)self addActivityAlertMultiValues];
  if (self->_otherNotes)
  {
    if ([(NSMutableString *)self->_notes length])
    {
      [(NSMutableString *)self->_notes appendString:@"\n"];
      notes = self->_notes;
    }

    else
    {
      notes = [objc_msgSend(MEMORY[0x1E696AEC0] "string")];
      self->_notes = notes;
    }

    [(NSMutableString *)notes appendString:self->_otherNotes];
  }

  [(ABVCardParser *)self _setStringValueOrNoteIfNull:self->_notes forProperty:kABPersonNoteProperty];
  if ([(ABVCardValueSetter *)self->_valueSetter valueForProperty:kABPersonImageSyncFailedTimeProperty])
  {
    goto LABEL_43;
  }

  if (![(NSData *)self->_cropRectChecksum length])
  {
    goto LABEL_35;
  }

  imageData = self->_imageData;
  if (imageData)
  {
    v15 = 0;
  }

  else
  {
    imageData = [(ABVCardValueSetter *)self->_valueSetter imageData];
    self->_imageData = imageData;
    v15 = imageData != 0;
  }

  if ([-[NSData _cn_md5Hash](imageData "_cn_md5Hash")])
  {
    cropRectWidth = self->_cropRectWidth;
    if (cropRectWidth)
    {
      cropRectWidth = self->_cropRectHeight != 0;
    }

    goto LABEL_36;
  }

  if (v15)
  {

    cropRectWidth = 0;
    self->_imageData = 0;
  }

  else
  {
LABEL_35:
    cropRectWidth = 0;
  }

LABEL_36:
  if (self->_imageData)
  {
    valueSetter = self->_valueSetter;
    if (cropRectWidth)
    {
      [ABVCardValueSetter setImageData:"setImageData:cropRectX:cropRectY:cropRectWidth:cropRectHeight:" cropRectX:? cropRectY:? cropRectWidth:? cropRectHeight:?];
    }

    else
    {
      [(ABVCardValueSetter *)valueSetter setImageData:?];
    }
  }

  else if (!self->_imageURI)
  {
    [(ABVCardParser *)self noteLackOfValueForImageData];
  }

  [(ABVCardParser *)self _setStringValueOrNoteIfNull:self->_imageURI forProperty:kABPersonImageURIProperty];
LABEL_43:
  if ([(ABVCardLexer *)self->_lexer advanceToToken:8193 throughTypes:0x4000]&& [(ABVCardLexer *)self->_lexer advanceToToken:6 throughTypes:0x4000])
  {
    [(ABVCardLexer *)self->_lexer advancePastEOL];
    [(ABVCardParser *)self cleanUpCardState];
    v12 = 1;
    goto LABEL_22;
  }

  if ([(NSData *)self->_data length]> 0x3E7)
  {
    ABDiagnosticsEnabled();
    v22 = [(NSData *)self->_data length];
    _ABLog2(4, "[ABVCardParser importToValueSetter:]", 2820, 0, @"failed to import vcard, file too large to log (actual size %lu)", v23, v24, v25, v22);
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_data encoding:4];
    ABDiagnosticsEnabled();
    _ABLog2(4, "[ABVCardParser importToValueSetter:]", 2817, 0, @"failed to import vcard:\n%@\n", v19, v20, v21, v18);
  }

  [(ABVCardParser *)self cleanUpCardState];
LABEL_21:
  v12 = 0;
LABEL_22:
  [v5 drain];
  return v12;
}

BOOL __37__ABVCardParser_importToValueSetter___block_invoke()
{
  v0 = CPPhoneNumberCopyHomeCountryCode();
  v1 = CFPhoneNumberCreate();
  v2 = CFPhoneNumberCreate();
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = CFEqual(v1, v2) != 0;
    goto LABEL_10;
  }

  v7 = 0;
  v5 = 0;
  if (v1)
  {
LABEL_10:
    CFRelease(v1);
    v5 = v7;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v2)
  {
LABEL_8:
    CFRelease(v3);
  }

LABEL_9:
  CFRelease(v0);
  return v5;
}

- (void)copyNextPersonWithLength:(int *)length foundProperties:(const __CFArray *)properties
{
  if (![(ABVCardWatchdogTimer *)self->_timer isStarted])
  {
    [(ABVCardWatchdogTimer *)self->_timer start];
  }

  if ([(ABVCardLexer *)self->_lexer atEOF])
  {
    v7 = 0;
    if (length)
    {
      v8 = 0;
LABEL_11:
      *length = v8;
    }
  }

  else
  {
    cursor = [(ABVCardLexer *)self->_lexer cursor];
    v7 = ABPersonCreateInSource(self->_source);
    if (v7 && ![(ABVCardParser *)self importToPerson:v7 foundProperties:properties])
    {
      self->_hasImportErrors = 1;
      CFRelease(v7);
      v7 = 0;
    }

    if (length)
    {
      v8 = [(ABVCardLexer *)self->_lexer cursor]- cursor;
      goto LABEL_11;
    }
  }

  return v7;
}

- (__CFArray)peopleAndProperties:(const __CFArray *)properties
{
  if (![(ABVCardWatchdogTimer *)self->_timer isStarted])
  {
    [(ABVCardWatchdogTimer *)self->_timer start];
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFArrayCreateMutable(v5, 0, v6);
  if (![(ABVCardLexer *)self->_lexer atEOF])
  {
    while (1)
    {
      value = 0;
      v9 = [(ABVCardParser *)self copyNextPersonWithLength:0 foundProperties:&value];
      if (v9)
      {
        v10 = v9;
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v10);
      }

      if (value)
      {
        CFArrayAppendValue(v8, value);
        CFRelease(value);
      }

      if ([(ABVCardParser *)self hasImportErrors])
      {
        break;
      }

      if ([(ABVCardLexer *)self->_lexer atEOF])
      {
        goto LABEL_10;
      }
    }

    ABDiagnosticsEnabled();
    _ABLog2(4, "[ABVCardParser peopleAndProperties:]", 2876, 0, @"Aborting vCard parsing due to import errors.", v11, v12, v13, v15);
    if (!properties)
    {
      goto LABEL_13;
    }

LABEL_11:
    *properties = v8;
    goto LABEL_15;
  }

LABEL_10:
  if (properties)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_15:
  if (Mutable)
  {
    return CFAutorelease(Mutable);
  }

  else
  {
    return 0;
  }
}

- (id)sortedPeopleAndProperties:(const __CFArray *)properties
{
  cf = 0;
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:{-[ABVCardParser peopleAndProperties:](self, "peopleAndProperties:", &cf)}];
  if ([(ABVCardParser *)self hasImportErrors])
  {
    ABDiagnosticsEnabled();
    v9 = @"Aborting vCard sorting and returning 0 contact due to import errors.";
    v10 = 2904;
LABEL_8:
    _ABLog2(4, "[ABVCardParser sortedPeopleAndProperties:]", v10, 0, v9, v6, v7, v8, v13);
    return MEMORY[0x1E695E0F0];
  }

  _sortOrdering = ABPersonGetSortOrdering();
  [v5 sortUsingFunction:_SortPeople context:self];
  timer = self->_timer;
  if (timer && ![(ABVCardWatchdogTimer *)timer isValid])
  {
    ABDiagnosticsEnabled();
    v9 = @"Aborting vCard sorting and returning 0 contact due to sorting being too long.";
    v10 = 2911;
    goto LABEL_8;
  }

  if (properties)
  {
    *properties = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

@end