@interface INIntentSlotDescription
- (BOOL)isEnum;
- (BOOL)isEqual:(id)a3;
- (Class)resolutionResultClass;
- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 isExtended:(BOOL)a7 isPrivate:(BOOL)a8 valueType:(int64_t)a9 valueStyle:(int64_t)a10 codableAttribute:(id)a11 defaultValueSelectorStrings:(id)a12 provideOptionsSelectorStrings:(id)a13 resolutionResultClass:(Class)a14 resolveSelectors:(SEL)a15;
- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 isExtended:(BOOL)a7 isPrivate:(BOOL)a8 valueType:(int64_t)a9 valueStyle:(int64_t)a10 defaultValueSelectorStrings:(id)a11 provideOptionsSelectorStrings:(id)a12 resolutionResultClass:(Class)a13 resolveSelectors:(SEL)a14;
- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 valueType:(int64_t)a7 valueStyle:(int64_t)a8 isExtended:(BOOL)a9 isPrivate:(BOOL)a10 resolveSelectors:(SEL)a11;
- (SEL)deprecatedResolveSelector;
- (SEL)resolveSelector;
- (id)localizeValue:(id)a3 forLanguage:(id)a4;
- (id)localizeValue:(id)a3 withLocalizer:(id)a4;
- (id)valueForSlotComposer:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forSlotComposer:(id)a4;
@end

@implementation INIntentSlotDescription

- (SEL)resolveSelector
{
  v3 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v6 = [v5 objectAtIndex:0];
  v7 = NSSelectorFromString(v6);

  return v7;
}

- (BOOL)isEnum
{
  v3 = [(INIntentSlotDescription *)self valueType];
  isKindOfClass = 1;
  if (v3 > 171)
  {
    if (((v3 - 172) > 0x1F || ((1 << (v3 + 84)) & 0x800D1A61) == 0) && ((v3 - 234) > 7 || ((1 << (v3 + 22)) & 0x87) == 0))
    {
LABEL_10:
      v6 = [(INIntentSlotDescription *)self codableAttribute];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    switch(v3)
    {
      case 57:
      case 58:
      case 63:
      case 64:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 84:
      case 85:
      case 88:
      case 90:
      case 91:
      case 95:
      case 96:
      case 97:
      case 98:
      case 114:
      case 115:
      case 116:
      case 118:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 136:
      case 140:
      case 141:
      case 143:
      case 149:
      case 155:
      case 156:
      case 158:
      case 161:
        return isKindOfClass & 1;
      case 59:
      case 60:
      case 61:
      case 62:
      case 65:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 86:
      case 87:
      case 89:
      case 92:
      case 93:
      case 94:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 117:
      case 119:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 137:
      case 138:
      case 139:
      case 142:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 157:
      case 159:
      case 160:
        goto LABEL_10;
      default:
        if (v3 != 1)
        {
          goto LABEL_10;
        }

        break;
    }
  }

  return isKindOfClass & 1;
}

- (Class)resolutionResultClass
{
  resolutionResultClass = self->_resolutionResultClass;
  if (resolutionResultClass)
  {
  }

  else
  {
    resolutionResultClass = objc_opt_class();
  }

  return resolutionResultClass;
}

- (id)localizeValue:(id)a3 withLocalizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INIntentSlotDescription *)self valueType];
  if (v8 > 202)
  {
    if (v8 <= 234)
    {
      if (v8 == 203)
      {
        v9 = INDeviceIdiomGetLocalizedName([v6 integerValue], v7);
        goto LABEL_23;
      }

      if (v8 == 234)
      {
        v9 = INBinarySettingValueGetLocalizedName([v6 integerValue], v7);
        goto LABEL_23;
      }
    }

    else
    {
      switch(v8)
      {
        case 235:
          v9 = INBoundedSettingValueGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 236:
          v9 = INSettingActionGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 241:
          v9 = INEventAttributeGetLocalizedName([v6 integerValue], v7);
LABEL_23:
          v22 = v9;
          goto LABEL_24;
      }
    }

LABEL_22:
    v9 = [v6 _intents_readableTitleWithLocalizer:v7];
    goto LABEL_23;
  }

  switch(v8)
  {
    case 114:
      v9 = INVisualCodeTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 115:
      v9 = INWorkoutGoalUnitTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 116:
      v9 = INWorkoutLocationTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 117:
    case 119:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 137:
    case 138:
    case 139:
    case 142:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 157:
    case 159:
    case 160:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 173:
    case 174:
    case 175:
    case 176:
    case 179:
    case 180:
    case 182:
    case 185:
    case 186:
    case 187:
    case 189:
      goto LABEL_22;
    case 118:
      v9 = INWorkoutSequenceLabelGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 120:
      v9 = INCarAirCirculationModeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 121:
      v9 = INCarAudioSourceGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 122:
      v9 = INCarDefrosterGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 123:
      v9 = INCarSeatGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 124:
      v9 = INRelativeReferenceGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 125:
      v9 = INRelativeSettingGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 126:
      v9 = INDateSearchTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 127:
      v9 = INLocationSearchTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 128:
      v9 = INTaskStatusGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 129:
      v9 = INNotebookItemTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 136:
      v9 = INTaskReferenceGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 140:
      v24 = INTemporalEventTriggerTypeOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
      goto LABEL_78;
    case 141:
      v9 = INTaskPriorityGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 143:
      v24 = INCarSignalOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
      goto LABEL_78;
    case 149:
      v9 = INRadioTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 155:
      v9 = INPlaybackRepeatModeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 156:
      v9 = INPlaybackQueueLocationGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 158:
      v9 = INMediaAffinityTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 161:
      v9 = INParsecCategoryGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 172:
      v9 = INWellnessObjectTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 177:
      v9 = INWellnessQuestionTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 178:
      v9 = INWellnessQueryResultTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 181:
      v24 = INAlarmRepeatScheduleOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
LABEL_78:
      v12 = v24;
      v22 = [v24 _intents_readableTitleWithLocalizer:v7];
      break;
    case 183:
      v9 = INUpdateAlarmOperationGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 184:
      v9 = INChangeAlarmStatusOperationGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 188:
      v9 = INAlarmSearchTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 190:
      v9 = INTimerStateGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    case 191:
      v9 = INTimerTypeGetLocalizedName([v6 integerValue], v7);
      goto LABEL_23;
    default:
      switch(v8)
      {
        case '9':
          v9 = INBillTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case ':':
          v9 = INPaymentStatusGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case ';':
        case '<':
        case '=':
        case '>':
        case 'A':
        case 'J':
        case 'K':
        case 'L':
        case 'M':
        case 'N':
        case 'O':
        case 'P':
        case 'Q':
        case 'R':
        case 'S':
        case 'V':
        case 'W':
        case 'Y':
        case '\\':
        case ']':
        case '^':
          goto LABEL_22;
        case '?':
          v9 = INAccountTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case '@':
          v9 = INBalanceTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'B':
          v9 = INAudioCallTTYTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'C':
          v9 = INCallAudioRouteGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'D':
          v24 = INCallCapabilityOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
          goto LABEL_78;
        case 'E':
          v9 = INCallCapabilityGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'F':
          v9 = INCallDestinationTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'G':
          v9 = INCallRecordTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'H':
          v24 = INCallRecordTypeOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
          goto LABEL_78;
        case 'I':
          v9 = INPreferredCallProviderGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'T':
          v9 = INMessageAttributeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'U':
          v24 = INMessageAttributeOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
          goto LABEL_78;
        case 'X':
          v9 = INMessageEffectTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'Z':
          v9 = INOutgoingMessageTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case '[':
          v9 = INMessageSoundTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case '_':
          v9 = INAnnouncementSoundTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
          v9 = INReadActionTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'a':
          v9 = INUserNotificationTypeGetLocalizedName([v6 integerValue], v7);
          goto LABEL_23;
        case 'b':
          v24 = INPhotoAttributeOptionsGetLocalizedNames([v6 unsignedIntegerValue], v7);
          goto LABEL_78;
        default:
          if (v8 != 3)
          {
            goto LABEL_22;
          }

          v10 = [(INIntentSlotDescription *)self name];
          v11 = [v10 isEqualToString:@"duration"];

          if (!v11)
          {
            goto LABEL_22;
          }

          v12 = objc_alloc_init(MEMORY[0x1E696AB70]);
          v13 = [v7 languageCode];
          if (v13)
          {
            v14 = [MEMORY[0x1E695DEE8] currentCalendar];
            v15 = *MEMORY[0x1E695E480];
            v16 = [v14 locale];
            ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v15, [v16 localeIdentifier]);

            v18 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, @"numbers");
            CFRelease(ComponentsFromLocaleIdentifier);
            v19 = MEMORY[0x1E695DF58];
            if (v18)
            {
              v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@numbers=%@", v13, v18];
              v21 = [v19 localeWithLocaleIdentifier:v20];
              [v14 setLocale:v21];
            }

            else
            {
              v20 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
              [v14 setLocale:v20];
            }

            [v12 setCalendar:v14];
          }

          [v12 setUnitsStyle:3];
          [v12 setAllowedUnits:224];
          [v6 doubleValue];
          v22 = [v12 stringFromTimeInterval:?];

          break;
      }

      break;
  }

LABEL_24:

  return v22;
}

- (id)localizeValue:(id)a3 forLanguage:(id)a4
{
  v6 = a3;
  v7 = [INStringLocalizer localizerForLanguage:a4];
  v8 = [(INIntentSlotDescription *)self localizeValue:v6 withLocalizer:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    name = self->_name;
    v10 = 0;
    if ((name == v5[3] || [(NSString *)name isEqualToString:?]) && self->_tag == v5[4])
    {
      facadePropertyName = self->_facadePropertyName;
      if (facadePropertyName == v5[5] || [(NSString *)facadePropertyName isEqualToString:?])
      {
        dataPropertyName = self->_dataPropertyName;
        if ((dataPropertyName == v5[6] || [(NSString *)dataPropertyName isEqualToString:?]) && self->_valueType == v5[7] && self->_valueStyle == v5[8] && self->_isExtended == *(v5 + 8) && self->_isPrivate == *(v5 + 9))
        {
          resolveSelectorStrings = self->_resolveSelectorStrings;
          if (resolveSelectorStrings == v5[9] || [(NSArray *)resolveSelectorStrings isEqualToArray:?])
          {
            v10 = 1;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = self->_tag ^ [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_facadePropertyName hash];
  v5 = v3 ^ v4 ^ [(NSString *)self->_dataPropertyName hash]^ self->_valueType ^ self->_valueStyle ^ self->_isExtended ^ self->_isPrivate;
  return v5 ^ [(NSArray *)self->_resolveSelectorStrings hash];
}

- (SEL)deprecatedResolveSelector
{
  v3 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v6 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v7 = [v5 objectAtIndex:{objc_msgSend(v6, "count") - 1}];
  v8 = NSSelectorFromString(v7);

  return v8;
}

- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 isExtended:(BOOL)a7 isPrivate:(BOOL)a8 valueType:(int64_t)a9 valueStyle:(int64_t)a10 defaultValueSelectorStrings:(id)a11 provideOptionsSelectorStrings:(id)a12 resolutionResultClass:(Class)a13 resolveSelectors:(SEL)a14
{
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a11;
  v24 = a12;
  v45.receiver = self;
  v45.super_class = INIntentSlotDescription;
  v25 = [(INIntentSlotDescription *)&v45 init];
  if (v25)
  {
    v26 = a14;
    v43 = v20;
    v27 = [v20 copy];
    name = v25->_name;
    v25->_name = v27;

    v25->_tag = a4;
    v29 = [v21 copy];
    facadePropertyName = v25->_facadePropertyName;
    v25->_facadePropertyName = v29;

    v31 = [v22 copy];
    dataPropertyName = v25->_dataPropertyName;
    v25->_dataPropertyName = v31;

    v25->_valueType = a9;
    v25->_valueStyle = a10;
    v25->_isExtended = a7;
    v25->_isPrivate = a8;
    v33 = [MEMORY[0x1E695DF70] array];
    v44 = &v46;
    if (a14)
    {
      do
      {
        v34 = NSStringFromSelector(v26);
        [(NSArray *)v33 addObject:v34];

        v35 = v44++;
        v26 = *v35;
      }

      while (*v35);
    }

    resolveSelectorStrings = v25->_resolveSelectorStrings;
    v25->_resolveSelectorStrings = v33;
    v37 = v33;

    objc_storeStrong(&v25->_resolutionResultClass, a13);
    v38 = [v24 copy];
    provideOptionsSelectorStrings = v25->_provideOptionsSelectorStrings;
    v25->_provideOptionsSelectorStrings = v38;

    v40 = [v23 copy];
    defaultValueSelectorStrings = v25->_defaultValueSelectorStrings;
    v25->_defaultValueSelectorStrings = v40;

    v20 = v43;
  }

  return v25;
}

- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 valueType:(int64_t)a7 valueStyle:(int64_t)a8 isExtended:(BOOL)a9 isPrivate:(BOOL)a10 resolveSelectors:(SEL)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v34.receiver = self;
  v34.super_class = INIntentSlotDescription;
  v20 = [(INIntentSlotDescription *)&v34 init];
  if (v20)
  {
    v21 = a11;
    v22 = [v17 copy];
    name = v20->_name;
    v20->_name = v22;

    v20->_tag = a4;
    v24 = [v18 copy];
    facadePropertyName = v20->_facadePropertyName;
    v20->_facadePropertyName = v24;

    v26 = [v19 copy];
    dataPropertyName = v20->_dataPropertyName;
    v20->_dataPropertyName = v26;

    v20->_valueType = a7;
    v20->_valueStyle = a8;
    v20->_isExtended = a9;
    v20->_isPrivate = a10;
    v28 = [MEMORY[0x1E695DF70] array];
    v33 = &v35;
    if (a11)
    {
      do
      {
        v29 = NSStringFromSelector(v21);
        [(NSArray *)v28 addObject:v29];

        v30 = v33++;
        v21 = *v30;
      }

      while (*v30);
    }

    resolveSelectorStrings = v20->_resolveSelectorStrings;
    v20->_resolveSelectorStrings = v28;
  }

  return v20;
}

- (INIntentSlotDescription)initWithName:(id)a3 tag:(unint64_t)a4 facadePropertyName:(id)a5 dataPropertyName:(id)a6 isExtended:(BOOL)a7 isPrivate:(BOOL)a8 valueType:(int64_t)a9 valueStyle:(int64_t)a10 codableAttribute:(id)a11 defaultValueSelectorStrings:(id)a12 provideOptionsSelectorStrings:(id)a13 resolutionResultClass:(Class)a14 resolveSelectors:(SEL)a15
{
  v20 = a3;
  v21 = a5;
  v22 = a6;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v47.receiver = self;
  v47.super_class = INIntentSlotDescription;
  v26 = [(INIntentSlotDescription *)&v47 init];
  if (v26)
  {
    v44 = v23;
    v27 = a15;
    v28 = [v20 copy];
    name = v26->_name;
    v26->_name = v28;

    v26->_tag = a4;
    v30 = [v21 copy];
    facadePropertyName = v26->_facadePropertyName;
    v26->_facadePropertyName = v30;

    v32 = [v22 copy];
    dataPropertyName = v26->_dataPropertyName;
    v26->_dataPropertyName = v32;

    v26->_valueType = a9;
    v26->_valueStyle = a10;
    v26->_isExtended = a7;
    v26->_isPrivate = a8;
    objc_storeStrong(&v26->_codableAttribute, a11);
    v34 = [MEMORY[0x1E695DF70] array];
    v46 = &v48;
    if (a15)
    {
      do
      {
        v35 = NSStringFromSelector(v27);
        [v34 addObject:v35];

        v36 = v46++;
        v27 = *v36;
      }

      while (*v36);
    }

    v37 = [v34 copy];
    resolveSelectorStrings = v26->_resolveSelectorStrings;
    v26->_resolveSelectorStrings = v37;

    v39 = [v25 copy];
    provideOptionsSelectorStrings = v26->_provideOptionsSelectorStrings;
    v26->_provideOptionsSelectorStrings = v39;

    v41 = [v24 copy];
    defaultValueSelectorStrings = v26->_defaultValueSelectorStrings;
    v26->_defaultValueSelectorStrings = v41;

    objc_storeStrong(&v26->_resolutionResultClass, a14);
    v23 = v44;
  }

  return v26;
}

- (void)setValue:(id)a3 forSlotComposer:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v6 intentSlotDescriptions];
  v8 = [v7 containsObject:self];

  if (v8)
  {
    v9 = [(INIntentSlotDescription *)self facadePropertyName];
    [v6 setValue:v10 forKey:v9];
  }
}

- (id)valueForSlotComposer:(id)a3
{
  v4 = a3;
  v5 = [v4 intentSlotDescriptions];
  v6 = [v5 containsObject:self];

  if (v6)
  {
    v7 = [(INIntentSlotDescription *)self facadePropertyName];
    v8 = [v4 valueForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end