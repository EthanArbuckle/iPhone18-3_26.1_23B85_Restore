@interface INIntentSlotDescription
- (BOOL)isEnum;
- (BOOL)isEqual:(id)equal;
- (Class)resolutionResultClass;
- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName isExtended:(BOOL)extended isPrivate:(BOOL)private valueType:(int64_t)type valueStyle:(int64_t)self0 codableAttribute:(id)self1 defaultValueSelectorStrings:(id)self2 provideOptionsSelectorStrings:(id)self3 resolutionResultClass:(Class)self4 resolveSelectors:(SEL)self5;
- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName isExtended:(BOOL)extended isPrivate:(BOOL)private valueType:(int64_t)type valueStyle:(int64_t)self0 defaultValueSelectorStrings:(id)self1 provideOptionsSelectorStrings:(id)self2 resolutionResultClass:(Class)self3 resolveSelectors:(SEL)self4;
- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName valueType:(int64_t)type valueStyle:(int64_t)style isExtended:(BOOL)extended isPrivate:(BOOL)self0 resolveSelectors:(SEL)self1;
- (SEL)deprecatedResolveSelector;
- (SEL)resolveSelector;
- (id)localizeValue:(id)value forLanguage:(id)language;
- (id)localizeValue:(id)value withLocalizer:(id)localizer;
- (id)valueForSlotComposer:(id)composer;
- (unint64_t)hash;
- (void)setValue:(id)value forSlotComposer:(id)composer;
@end

@implementation INIntentSlotDescription

- (SEL)resolveSelector
{
  resolveSelectorStrings = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v4 = [resolveSelectorStrings count];

  if (!v4)
  {
    return 0;
  }

  resolveSelectorStrings2 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v6 = [resolveSelectorStrings2 objectAtIndex:0];
  v7 = NSSelectorFromString(v6);

  return v7;
}

- (BOOL)isEnum
{
  valueType = [(INIntentSlotDescription *)self valueType];
  isKindOfClass = 1;
  if (valueType > 171)
  {
    if (((valueType - 172) > 0x1F || ((1 << (valueType + 84)) & 0x800D1A61) == 0) && ((valueType - 234) > 7 || ((1 << (valueType + 22)) & 0x87) == 0))
    {
LABEL_10:
      codableAttribute = [(INIntentSlotDescription *)self codableAttribute];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    switch(valueType)
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
        if (valueType != 1)
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

- (id)localizeValue:(id)value withLocalizer:(id)localizer
{
  valueCopy = value;
  localizerCopy = localizer;
  valueType = [(INIntentSlotDescription *)self valueType];
  if (valueType > 202)
  {
    if (valueType <= 234)
    {
      if (valueType == 203)
      {
        v9 = INDeviceIdiomGetLocalizedName([valueCopy integerValue], localizerCopy);
        goto LABEL_23;
      }

      if (valueType == 234)
      {
        v9 = INBinarySettingValueGetLocalizedName([valueCopy integerValue], localizerCopy);
        goto LABEL_23;
      }
    }

    else
    {
      switch(valueType)
      {
        case 235:
          v9 = INBoundedSettingValueGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 236:
          v9 = INSettingActionGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 241:
          v9 = INEventAttributeGetLocalizedName([valueCopy integerValue], localizerCopy);
LABEL_23:
          v22 = v9;
          goto LABEL_24;
      }
    }

LABEL_22:
    v9 = [valueCopy _intents_readableTitleWithLocalizer:localizerCopy];
    goto LABEL_23;
  }

  switch(valueType)
  {
    case 114:
      v9 = INVisualCodeTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 115:
      v9 = INWorkoutGoalUnitTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 116:
      v9 = INWorkoutLocationTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
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
      v9 = INWorkoutSequenceLabelGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 120:
      v9 = INCarAirCirculationModeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 121:
      v9 = INCarAudioSourceGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 122:
      v9 = INCarDefrosterGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 123:
      v9 = INCarSeatGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 124:
      v9 = INRelativeReferenceGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 125:
      v9 = INRelativeSettingGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 126:
      v9 = INDateSearchTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 127:
      v9 = INLocationSearchTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 128:
      v9 = INTaskStatusGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 129:
      v9 = INNotebookItemTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 136:
      v9 = INTaskReferenceGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 140:
      v24 = INTemporalEventTriggerTypeOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
      goto LABEL_78;
    case 141:
      v9 = INTaskPriorityGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 143:
      v24 = INCarSignalOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
      goto LABEL_78;
    case 149:
      v9 = INRadioTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 155:
      v9 = INPlaybackRepeatModeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 156:
      v9 = INPlaybackQueueLocationGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 158:
      v9 = INMediaAffinityTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 161:
      v9 = INParsecCategoryGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 172:
      v9 = INWellnessObjectTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 177:
      v9 = INWellnessQuestionTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 178:
      v9 = INWellnessQueryResultTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 181:
      v24 = INAlarmRepeatScheduleOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
LABEL_78:
      v12 = v24;
      v22 = [v24 _intents_readableTitleWithLocalizer:localizerCopy];
      break;
    case 183:
      v9 = INUpdateAlarmOperationGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 184:
      v9 = INChangeAlarmStatusOperationGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 188:
      v9 = INAlarmSearchTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 190:
      v9 = INTimerStateGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    case 191:
      v9 = INTimerTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
      goto LABEL_23;
    default:
      switch(valueType)
      {
        case '9':
          v9 = INBillTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case ':':
          v9 = INPaymentStatusGetLocalizedName([valueCopy integerValue], localizerCopy);
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
          v9 = INAccountTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case '@':
          v9 = INBalanceTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'B':
          v9 = INAudioCallTTYTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'C':
          v9 = INCallAudioRouteGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'D':
          v24 = INCallCapabilityOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
          goto LABEL_78;
        case 'E':
          v9 = INCallCapabilityGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'F':
          v9 = INCallDestinationTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'G':
          v9 = INCallRecordTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'H':
          v24 = INCallRecordTypeOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
          goto LABEL_78;
        case 'I':
          v9 = INPreferredCallProviderGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'T':
          v9 = INMessageAttributeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'U':
          v24 = INMessageAttributeOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
          goto LABEL_78;
        case 'X':
          v9 = INMessageEffectTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'Z':
          v9 = INOutgoingMessageTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case '[':
          v9 = INMessageSoundTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case '_':
          v9 = INAnnouncementSoundTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
          v9 = INReadActionTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'a':
          v9 = INUserNotificationTypeGetLocalizedName([valueCopy integerValue], localizerCopy);
          goto LABEL_23;
        case 'b':
          v24 = INPhotoAttributeOptionsGetLocalizedNames([valueCopy unsignedIntegerValue], localizerCopy);
          goto LABEL_78;
        default:
          if (valueType != 3)
          {
            goto LABEL_22;
          }

          name = [(INIntentSlotDescription *)self name];
          v11 = [name isEqualToString:@"duration"];

          if (!v11)
          {
            goto LABEL_22;
          }

          v12 = objc_alloc_init(MEMORY[0x1E696AB70]);
          languageCode = [localizerCopy languageCode];
          if (languageCode)
          {
            currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
            v15 = *MEMORY[0x1E695E480];
            locale = [currentCalendar locale];
            ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v15, [locale localeIdentifier]);

            v18 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, @"numbers");
            CFRelease(ComponentsFromLocaleIdentifier);
            v19 = MEMORY[0x1E695DF58];
            if (v18)
            {
              v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@numbers=%@", languageCode, v18];
              v21 = [v19 localeWithLocaleIdentifier:v20];
              [currentCalendar setLocale:v21];
            }

            else
            {
              v20 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:languageCode];
              [currentCalendar setLocale:v20];
            }

            [v12 setCalendar:currentCalendar];
          }

          [v12 setUnitsStyle:3];
          [v12 setAllowedUnits:224];
          [valueCopy doubleValue];
          v22 = [v12 stringFromTimeInterval:?];

          break;
      }

      break;
  }

LABEL_24:

  return v22;
}

- (id)localizeValue:(id)value forLanguage:(id)language
{
  valueCopy = value;
  v7 = [INStringLocalizer localizerForLanguage:language];
  v8 = [(INIntentSlotDescription *)self localizeValue:valueCopy withLocalizer:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
  resolveSelectorStrings = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v4 = [resolveSelectorStrings count];

  if (!v4)
  {
    return 0;
  }

  resolveSelectorStrings2 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  resolveSelectorStrings3 = [(INIntentSlotDescription *)self resolveSelectorStrings];
  v7 = [resolveSelectorStrings2 objectAtIndex:{objc_msgSend(resolveSelectorStrings3, "count") - 1}];
  v8 = NSSelectorFromString(v7);

  return v8;
}

- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName isExtended:(BOOL)extended isPrivate:(BOOL)private valueType:(int64_t)type valueStyle:(int64_t)self0 defaultValueSelectorStrings:(id)self1 provideOptionsSelectorStrings:(id)self2 resolutionResultClass:(Class)self3 resolveSelectors:(SEL)self4
{
  nameCopy = name;
  propertyNameCopy = propertyName;
  dataPropertyNameCopy = dataPropertyName;
  stringsCopy = strings;
  selectorStringsCopy = selectorStrings;
  v45.receiver = self;
  v45.super_class = INIntentSlotDescription;
  v25 = [(INIntentSlotDescription *)&v45 init];
  if (v25)
  {
    selectorsCopy = selectors;
    v43 = nameCopy;
    v27 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v27;

    v25->_tag = tag;
    v29 = [propertyNameCopy copy];
    facadePropertyName = v25->_facadePropertyName;
    v25->_facadePropertyName = v29;

    v31 = [dataPropertyNameCopy copy];
    dataPropertyName = v25->_dataPropertyName;
    v25->_dataPropertyName = v31;

    v25->_valueType = type;
    v25->_valueStyle = style;
    v25->_isExtended = extended;
    v25->_isPrivate = private;
    array = [MEMORY[0x1E695DF70] array];
    v44 = &v46;
    if (selectors)
    {
      do
      {
        v34 = NSStringFromSelector(selectorsCopy);
        [(NSArray *)array addObject:v34];

        v35 = v44++;
        selectorsCopy = *v35;
      }

      while (*v35);
    }

    resolveSelectorStrings = v25->_resolveSelectorStrings;
    v25->_resolveSelectorStrings = array;
    v37 = array;

    objc_storeStrong(&v25->_resolutionResultClass, class);
    v38 = [selectorStringsCopy copy];
    provideOptionsSelectorStrings = v25->_provideOptionsSelectorStrings;
    v25->_provideOptionsSelectorStrings = v38;

    v40 = [stringsCopy copy];
    defaultValueSelectorStrings = v25->_defaultValueSelectorStrings;
    v25->_defaultValueSelectorStrings = v40;

    nameCopy = v43;
  }

  return v25;
}

- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName valueType:(int64_t)type valueStyle:(int64_t)style isExtended:(BOOL)extended isPrivate:(BOOL)self0 resolveSelectors:(SEL)self1
{
  nameCopy = name;
  propertyNameCopy = propertyName;
  dataPropertyNameCopy = dataPropertyName;
  v34.receiver = self;
  v34.super_class = INIntentSlotDescription;
  v20 = [(INIntentSlotDescription *)&v34 init];
  if (v20)
  {
    selectorsCopy = selectors;
    v22 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v22;

    v20->_tag = tag;
    v24 = [propertyNameCopy copy];
    facadePropertyName = v20->_facadePropertyName;
    v20->_facadePropertyName = v24;

    v26 = [dataPropertyNameCopy copy];
    dataPropertyName = v20->_dataPropertyName;
    v20->_dataPropertyName = v26;

    v20->_valueType = type;
    v20->_valueStyle = style;
    v20->_isExtended = extended;
    v20->_isPrivate = private;
    array = [MEMORY[0x1E695DF70] array];
    v33 = &v35;
    if (selectors)
    {
      do
      {
        v29 = NSStringFromSelector(selectorsCopy);
        [(NSArray *)array addObject:v29];

        v30 = v33++;
        selectorsCopy = *v30;
      }

      while (*v30);
    }

    resolveSelectorStrings = v20->_resolveSelectorStrings;
    v20->_resolveSelectorStrings = array;
  }

  return v20;
}

- (INIntentSlotDescription)initWithName:(id)name tag:(unint64_t)tag facadePropertyName:(id)propertyName dataPropertyName:(id)dataPropertyName isExtended:(BOOL)extended isPrivate:(BOOL)private valueType:(int64_t)type valueStyle:(int64_t)self0 codableAttribute:(id)self1 defaultValueSelectorStrings:(id)self2 provideOptionsSelectorStrings:(id)self3 resolutionResultClass:(Class)self4 resolveSelectors:(SEL)self5
{
  nameCopy = name;
  propertyNameCopy = propertyName;
  dataPropertyNameCopy = dataPropertyName;
  attributeCopy = attribute;
  stringsCopy = strings;
  selectorStringsCopy = selectorStrings;
  v47.receiver = self;
  v47.super_class = INIntentSlotDescription;
  v26 = [(INIntentSlotDescription *)&v47 init];
  if (v26)
  {
    v44 = attributeCopy;
    selectorsCopy = selectors;
    v28 = [nameCopy copy];
    name = v26->_name;
    v26->_name = v28;

    v26->_tag = tag;
    v30 = [propertyNameCopy copy];
    facadePropertyName = v26->_facadePropertyName;
    v26->_facadePropertyName = v30;

    v32 = [dataPropertyNameCopy copy];
    dataPropertyName = v26->_dataPropertyName;
    v26->_dataPropertyName = v32;

    v26->_valueType = type;
    v26->_valueStyle = style;
    v26->_isExtended = extended;
    v26->_isPrivate = private;
    objc_storeStrong(&v26->_codableAttribute, attribute);
    array = [MEMORY[0x1E695DF70] array];
    v46 = &v48;
    if (selectors)
    {
      do
      {
        v35 = NSStringFromSelector(selectorsCopy);
        [array addObject:v35];

        v36 = v46++;
        selectorsCopy = *v36;
      }

      while (*v36);
    }

    v37 = [array copy];
    resolveSelectorStrings = v26->_resolveSelectorStrings;
    v26->_resolveSelectorStrings = v37;

    v39 = [selectorStringsCopy copy];
    provideOptionsSelectorStrings = v26->_provideOptionsSelectorStrings;
    v26->_provideOptionsSelectorStrings = v39;

    v41 = [stringsCopy copy];
    defaultValueSelectorStrings = v26->_defaultValueSelectorStrings;
    v26->_defaultValueSelectorStrings = v41;

    objc_storeStrong(&v26->_resolutionResultClass, class);
    attributeCopy = v44;
  }

  return v26;
}

- (void)setValue:(id)value forSlotComposer:(id)composer
{
  valueCopy = value;
  composerCopy = composer;
  intentSlotDescriptions = [composerCopy intentSlotDescriptions];
  v8 = [intentSlotDescriptions containsObject:self];

  if (v8)
  {
    facadePropertyName = [(INIntentSlotDescription *)self facadePropertyName];
    [composerCopy setValue:valueCopy forKey:facadePropertyName];
  }
}

- (id)valueForSlotComposer:(id)composer
{
  composerCopy = composer;
  intentSlotDescriptions = [composerCopy intentSlotDescriptions];
  v6 = [intentSlotDescriptions containsObject:self];

  if (v6)
  {
    facadePropertyName = [(INIntentSlotDescription *)self facadePropertyName];
    v8 = [composerCopy valueForKey:facadePropertyName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end