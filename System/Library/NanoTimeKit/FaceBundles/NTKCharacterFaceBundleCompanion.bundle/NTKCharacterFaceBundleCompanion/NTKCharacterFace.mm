@interface NTKCharacterFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)additionalPigmentFaceDomains;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (NTKPigmentEditOptionProvider)currentProvider;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)faceSharingName;
- (id)pigmentOptionProvider;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_selectedCharacter;
- (void)_noteLegacyOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKCharacterFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallComplicationTypes();
  v3 = NTKAllUtilityLargeComplicationTypes();
  v12[0] = NTKComplicationSlotTopLeft;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v13[0] = v5;
  v12[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v13[1] = v7;
  v12[2] = NTKComplicationSlotBottomCenter;
  v8 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (id)faceSharingName
{
  v2 = [(NTKCharacterFace *)self nameOfSelectedOptionForCustomEditMode:12];
  localizedCapitalizedString = [v2 localizedCapitalizedString];

  return localizedCapitalizedString;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomCenter;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)pigmentOptionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_currentProvider);
  if ([(NTKCharacterFace *)self _selectedCharacter]== &dword_0 + 1)
  {
    sub_F744(self);
  }

  else
  {
    sub_F684(self);
  }
  v4 = ;
  objc_storeWeak(&self->_currentProvider, v4);

  v5 = objc_loadWeakRetained(&self->_currentProvider);
  if (v5 != WeakRetained)
  {
    [(NTKCharacterFace *)self _notifyObserversOptionsDidChangeForEditMode:10];
  }

  v6 = objc_loadWeakRetained(&self->_currentProvider);

  return v6;
}

- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  fromCopy = from;
  toCopy = to;
  slotCopy = slot;
  v14.receiver = self;
  v14.super_class = NTKCharacterFace;
  [(NTKCharacterFace *)&v14 _noteOptionChangedFrom:fromCopy to:toCopy forCustomEditMode:mode slot:slotCopy];
  if ([(NTKCharacterFace *)self deviceSupportsPigmentEditOption])
  {
    if (mode == 10)
    {
      pigmentEditOption = [toCopy pigmentEditOption];
      if (pigmentEditOption)
      {
        sub_F8FC(self, pigmentEditOption);
      }
    }

    else if (mode == 12)
    {
      sub_F834(toCopy, self);
    }
  }

  else
  {
    [(NTKCharacterFace *)self _noteLegacyOptionChangedFrom:fromCopy to:toCopy forCustomEditMode:mode slot:slotCopy];
  }
}

- (void)_noteLegacyOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  fromCopy = from;
  toCopy = to;
  slotCopy = slot;
  if (mode != 10)
  {
    goto LABEL_6;
  }

  if (fromCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_F970(fromCopy, v32);
      }

      goto LABEL_24;
    }
  }

  if (toCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_F9E8(toCopy, v32);
      }

LABEL_24:

      goto LABEL_29;
    }
  }

LABEL_6:
  if (!self->_previousCharacterColors)
  {
    v13 = +[NSMutableDictionary dictionary];
    previousCharacterColors = self->_previousCharacterColors;
    self->_previousCharacterColors = v13;

    _selectedCharacter = [(NTKCharacterFace *)self _selectedCharacter];
    v16 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:10 slot:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _selectedCharacter = [fromCopy character];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = fromCopy;

      v16 = v17;
    }

    v18 = self->_previousCharacterColors;
    v19 = [NSNumber numberWithUnsignedInteger:_selectedCharacter];
    [(NSMutableDictionary *)v18 setObject:v16 forKeyedSubscript:v19];
  }

  if (mode == 12)
  {
    v20 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:10 slot:0];
    if (v20)
    {
      character = [toCopy character];
      v22 = self->_previousCharacterColors;
      v23 = [NSNumber numberWithUnsignedInteger:character];
      v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];

      if (v24)
      {
        v25 = self->_previousCharacterColors;
        device = [NSNumber numberWithUnsignedInteger:character];
        [(NSMutableDictionary *)v25 objectForKeyedSubscript:device];
      }

      else
      {
        device = [(NTKCharacterFace *)self device];
        [NTKCharacterColorEditOption optionWithOption:v20 forCharacter:character forDevice:device];
      }
      v33 = ;

      [(NTKCharacterFace *)self selectOption:v33 forCustomEditMode:10 slot:0];
    }

    [(NTKCharacterFace *)self _notifyObserversOptionsDidChangeForEditMode:10];
LABEL_28:

    goto LABEL_29;
  }

  if (mode == 10)
  {
    _selectedCharacter2 = [(NTKCharacterFace *)self _selectedCharacter];
    if (_selectedCharacter2 != 0xFFFFFFFF)
    {
      v28 = _selectedCharacter2;
      device2 = [(NTKCharacterFace *)self device];
      v20 = [NTKCharacterColorEditOption optionWithOption:toCopy forCharacter:v28 forDevice:device2];

      [(NTKCharacterFace *)self selectOption:v20 forCustomEditMode:10 slot:0];
      v30 = self->_previousCharacterColors;
      v31 = [NSNumber numberWithUnsignedInteger:v28];
      [(NSMutableDictionary *)v30 setObject:v20 forKeyedSubscript:v31];

      if ([v20 color] == &stru_BB0.version)
      {
        [(NSMutableDictionary *)self->_previousCharacterColors removeAllObjects];
      }

      goto LABEL_28;
    }
  }

LABEL_29:
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    device = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterColorEditOption optionWithFaceColor:6 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 12)
  {
    device = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterEditOption optionWithCharacter:0 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [NTKCharacterFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_CHARACTER_COMPANION" comment:@"Character"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKCharacterFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    _selectedCharacter = [(NTKCharacterFace *)self _selectedCharacter];
    device = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterColorEditOption numberOfOptionsForCharacter:_selectedCharacter forDevice:device];
  }

  else
  {
    if (mode != 12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    device = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterEditOption numberOfOptionsForDevice:device];
  }

  v10 = v8;

LABEL_7:
  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 10)
  {
    _selectedCharacter = [(NTKCharacterFace *)self _selectedCharacter];
    device = [(NTKCharacterFace *)self device];
    v10 = [NTKCharacterColorEditOption optionAtIndex:index forCharacter:_selectedCharacter forDevice:device];
    goto LABEL_5;
  }

  if (mode == 12)
  {
    device = [(NTKCharacterFace *)self device];
    v10 = [NTKCharacterEditOption optionAtIndex:index forDevice:device];
LABEL_5:
    v12 = v10;

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    _selectedCharacter = [(NTKCharacterFace *)self _selectedCharacter];
    device = [(NTKCharacterFace *)self device];
    v11 = [NTKCharacterColorEditOption indexOfOption:optionCopy forCharacter:_selectedCharacter forDevice:device];
  }

  else
  {
    if (mode != 12)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    device = [(NTKCharacterFace *)self device];
    v11 = [NTKCharacterEditOption indexOfOption:optionCopy forDevice:device];
  }

  v13 = v11;

LABEL_7:
  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    v4 = off_1C300;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 10)
  {
    v4 = off_1C2F8;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (unint64_t)_selectedCharacter
{
  v2 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:12 slot:0];
  v3 = v2;
  if (v2)
  {
    character = [v2 character];
  }

  else
  {
    character = 0xFFFFFFFFLL;
  }

  return character;
}

- (id)_faceDescriptionKey
{
  v2 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:12 slot:0];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 character]);
  v4 = [NSString stringWithFormat:@"FACE_STYLE_CHARACTER_%@_DESCRIPTION", v3];

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKCharacterFace *)self _faceDescriptionKey];
  v3 = [NTKCharacterFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

+ (id)additionalPigmentFaceDomains
{
  v4 = NTKColorPaletteDomainMinnie;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NTKPigmentEditOptionProvider)currentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_currentProvider);

  return WeakRetained;
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  v3 = 10;
  if (index != 1)
  {
    v3 = 0;
  }

  if (index)
  {
    return v3;
  }

  else
  {
    return 12;
  }
}

@end