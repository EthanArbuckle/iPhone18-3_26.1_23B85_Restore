@interface NTKCharacterFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)additionalPigmentFaceDomains;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (NTKPigmentEditOptionProvider)currentProvider;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)faceSharingName;
- (id)pigmentOptionProvider;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)_selectedCharacter;
- (void)_noteLegacyOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6;
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
  v3 = [v2 localizedCapitalizedString];

  return v3;
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

- (void)_noteOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14.receiver = self;
  v14.super_class = NTKCharacterFace;
  [(NTKCharacterFace *)&v14 _noteOptionChangedFrom:v10 to:v11 forCustomEditMode:a5 slot:v12];
  if ([(NTKCharacterFace *)self deviceSupportsPigmentEditOption])
  {
    if (a5 == 10)
    {
      v13 = [v11 pigmentEditOption];
      if (v13)
      {
        sub_F8FC(self, v13);
      }
    }

    else if (a5 == 12)
    {
      sub_F834(v11, self);
    }
  }

  else
  {
    [(NTKCharacterFace *)self _noteLegacyOptionChangedFrom:v10 to:v11 forCustomEditMode:a5 slot:v12];
  }
}

- (void)_noteLegacyOptionChangedFrom:(id)a3 to:(id)a4 forCustomEditMode:(int64_t)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a5 != 10)
  {
    goto LABEL_6;
  }

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_F970(v10, v32);
      }

      goto LABEL_24;
    }
  }

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_F9E8(v11, v32);
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

    v15 = [(NTKCharacterFace *)self _selectedCharacter];
    v16 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:10 slot:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 character];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v10;

      v16 = v17;
    }

    v18 = self->_previousCharacterColors;
    v19 = [NSNumber numberWithUnsignedInteger:v15];
    [(NSMutableDictionary *)v18 setObject:v16 forKeyedSubscript:v19];
  }

  if (a5 == 12)
  {
    v20 = [(NTKCharacterFace *)self selectedOptionForCustomEditMode:10 slot:0];
    if (v20)
    {
      v21 = [v11 character];
      v22 = self->_previousCharacterColors;
      v23 = [NSNumber numberWithUnsignedInteger:v21];
      v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:v23];

      if (v24)
      {
        v25 = self->_previousCharacterColors;
        v26 = [NSNumber numberWithUnsignedInteger:v21];
        [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];
      }

      else
      {
        v26 = [(NTKCharacterFace *)self device];
        [NTKCharacterColorEditOption optionWithOption:v20 forCharacter:v21 forDevice:v26];
      }
      v33 = ;

      [(NTKCharacterFace *)self selectOption:v33 forCustomEditMode:10 slot:0];
    }

    [(NTKCharacterFace *)self _notifyObserversOptionsDidChangeForEditMode:10];
LABEL_28:

    goto LABEL_29;
  }

  if (a5 == 10)
  {
    v27 = [(NTKCharacterFace *)self _selectedCharacter];
    if (v27 != 0xFFFFFFFF)
    {
      v28 = v27;
      v29 = [(NTKCharacterFace *)self device];
      v20 = [NTKCharacterColorEditOption optionWithOption:v11 forCharacter:v28 forDevice:v29];

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

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    v7 = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterColorEditOption optionWithFaceColor:6 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v7 = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterEditOption optionWithCharacter:0 forDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 12)
  {
    v4 = [NTKCharacterFaceBundle localizedStringForKey:@"EDIT_MODE_LABEL_CHARACTER_COMPANION" comment:@"Character"];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___NTKCharacterFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, a4);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    v9 = [(NTKCharacterFace *)self _selectedCharacter];
    v7 = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterColorEditOption numberOfOptionsForCharacter:v9 forDevice:v7];
  }

  else
  {
    if (a3 != 12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v7 = [(NTKCharacterFace *)self device];
    v8 = [NTKCharacterEditOption numberOfOptionsForDevice:v7];
  }

  v10 = v8;

LABEL_7:
  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  if (a4 == 10)
  {
    v11 = [(NTKCharacterFace *)self _selectedCharacter];
    v9 = [(NTKCharacterFace *)self device];
    v10 = [NTKCharacterColorEditOption optionAtIndex:a3 forCharacter:v11 forDevice:v9];
    goto LABEL_5;
  }

  if (a4 == 12)
  {
    v9 = [(NTKCharacterFace *)self device];
    v10 = [NTKCharacterEditOption optionAtIndex:a3 forDevice:v9];
LABEL_5:
    v12 = v10;

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 10)
  {
    v12 = [(NTKCharacterFace *)self _selectedCharacter];
    v10 = [(NTKCharacterFace *)self device];
    v11 = [NTKCharacterColorEditOption indexOfOption:v8 forCharacter:v12 forDevice:v10];
  }

  else
  {
    if (a4 != 12)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v10 = [(NTKCharacterFace *)self device];
    v11 = [NTKCharacterEditOption indexOfOption:v8 forDevice:v10];
  }

  v13 = v11;

LABEL_7:
  return v13;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 12)
  {
    v4 = off_1C300;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 10)
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
    v4 = [v2 character];
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
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
  v2 = [(NTKCharacterFace *)self _faceDescriptionKey];
  v3 = [NTKCharacterFaceBundle localizedStringForKey:v2 comment:v2];

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

- (int64_t)_editModeForOldEncodingIndex:(int64_t)a3
{
  v3 = 10;
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 12;
  }
}

@end