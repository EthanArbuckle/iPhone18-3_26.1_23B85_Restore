@interface ABVCardCardDAVValueSetter
+ (__CFDictionary)_personToGroupPropertyMap;
+ (int)groupPropertyForPersonProperty:(int)a3;
- (ABVCardCardDAVValueSetter)initWithGroup:(void *)a3 options:(unint64_t)a4;
- (ABVCardCardDAVValueSetter)initWithPerson:(void *)a3 options:(unint64_t)a4;
- (BOOL)setImageData:(id)a3 cropRectX:(int)a4 cropRectY:(int)a5 cropRectWidth:(int)a6 cropRectHeight:(int)a7;
- (BOOL)setValue:(void *)a3 forProperty:(unsigned int)a4;
- (id)imageData;
- (void)_drainExistingProperties;
- (void)copyParsedRecordWithSource:(void *)a3 outRecordType:(unsigned int *)a4;
- (void)valueForProperty:(unsigned int)a3;
@end

@implementation ABVCardCardDAVValueSetter

+ (__CFDictionary)_personToGroupPropertyMap
{
  result = _personToGroupPropertyMap_propertyMap;
  if (!_personToGroupPropertyMap_propertyMap)
  {
    _personToGroupPropertyMap_propertyMap = CFDictionaryCreateMutable(0, 0, 0, 0);
    CFDictionarySetValue(_personToGroupPropertyMap_propertyMap, kABPersonLastNameProperty, kABGroupNameProperty);
    CFDictionarySetValue(_personToGroupPropertyMap_propertyMap, kABPersonExternalIdentifierProperty, kABGroupExternalIdentifierProperty);
    CFDictionarySetValue(_personToGroupPropertyMap_propertyMap, kABPersonExternalUUIDProperty, kABGroupExternalUUIDProperty);
    CFDictionarySetValue(_personToGroupPropertyMap_propertyMap, kABPersonExternalRepresentationProperty, kABGroupExternalRepresentationProperty);
    return _personToGroupPropertyMap_propertyMap;
  }

  return result;
}

+ (int)groupPropertyForPersonProperty:(int)a3
{
  value = -1;
  CFDictionaryGetValueIfPresent([a1 _personToGroupPropertyMap], a3, &value);
  return value;
}

- (void)copyParsedRecordWithSource:(void *)a3 outRecordType:(unsigned int *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_recordIsGroup)
  {
    v7 = CFRetain(self->super._person);
    if (!a4)
    {
      return v7;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    v6 = ABGroupCreateInSource(a3);
  }

  else
  {
    v6 = ABGroupCreate();
  }

  v7 = v6;
  v8 = [objc_opt_class() _personToGroupPropertyMap];
  Count = CFDictionaryGetCount(v8);
  v10 = (v16 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v10;
  CFDictionaryGetKeysAndValues(v8, v16, v10);
  if (Count >= 1)
  {
    do
    {
      v12 = *v10++;
      v13 = ABRecordCopyValue(self->super._person, v12);
      if (v13)
      {
        v14 = v13;
        ABRecordSetValue(v7, *v11, v13, 0);
        CFRelease(v14);
      }

      v11 += 2;
      --Count;
    }

    while (Count);
  }

  if (a4)
  {
LABEL_12:
    *a4 = self->_recordIsGroup;
  }

  return v7;
}

- (void)valueForProperty:(unsigned int)a3
{
  v3 = *&a3;
  if (![(ABVCardCardDAVValueSetter *)self propertyIsValidForPerson:?])
  {
    return 0;
  }

  if (self->_importingToExistingGroup)
  {
    v3 = [objc_opt_class() groupPropertyForPersonProperty:v3];
    if (v3 == -1)
    {
      return 0;
    }
  }

  v6.receiver = self;
  v6.super_class = ABVCardCardDAVValueSetter;
  return [(ABVCardPersonValueSetter *)&v6 valueForProperty:v3];
}

- (BOOL)setValue:(void *)a3 forProperty:(unsigned int)a4
{
  if (self->_importingToExistingGroup)
  {
    v6 = [objc_opt_class() groupPropertyForPersonProperty:*&a4];
    if (v6 == -1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      if (ABRecordSetValue(self->super._person, v6, a3, 0))
      {
        CFArrayAppendValue(self->super._properties, v7);
      }

      return 1;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ABVCardCardDAVValueSetter;
    return [(ABVCardPersonValueSetter *)&v9 setValue:a3 forProperty:*&a4];
  }
}

- (void)_drainExistingProperties
{
  v3 = [objc_opt_class() supportedProperties];
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      v8 = kABPersonExternalIdentifierProperty;
      v9 = kABPersonExternalUUIDProperty;
      v19 = kABPersonWallpaperProperty;
      v17 = kABPersonImageURIProperty;
      v18 = kABPersonWallpaperURIProperty;
      v15 = kABPersonImageTypeProperty;
      v16 = kABPersonImageHashProperty;
      v10 = kABGroupExternalIdentifierProperty;
      v11 = kABGroupExternalUUIDProperty;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        v13 = ValueAtIndex;
        if (self->_importingToExistingGroup)
        {
          v14 = [objc_opt_class() groupPropertyForPersonProperty:ValueAtIndex];
          if (v14 == v10)
          {
            goto LABEL_19;
          }

          v13 = v14;
          if (v14 == -1 || v14 == v11)
          {
            goto LABEL_19;
          }
        }

        else if (v8 == ValueAtIndex || v9 == ValueAtIndex || !self->_wallpaperSupported && (v19 == ValueAtIndex || v18 == ValueAtIndex) || self->_isImageSyncFailedTimeSet && (v17 == ValueAtIndex || v16 == ValueAtIndex || v15 == ValueAtIndex))
        {
          goto LABEL_19;
        }

        ABRecordRemoveValue(self->super._person, v13, 0);
LABEL_19:
        ++v7;
      }

      while (v6 != v7);
    }
  }
}

- (ABVCardCardDAVValueSetter)initWithPerson:(void *)a3 options:(unint64_t)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVValueSetter;
  v5 = [(ABVCardPersonValueSetter *)&v8 initWithPerson:a3];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperSupported = (v4 & 2) != 0;
    v5->_isImageSyncFailedTimeSet = [(ABVCardCardDAVValueSetter *)v5 valueForProperty:kABPersonImageSyncFailedTimeProperty]!= 0;
    if (v4)
    {
      [(ABVCardCardDAVValueSetter *)v6 _drainExistingProperties];
    }
  }

  return v6;
}

- (ABVCardCardDAVValueSetter)initWithGroup:(void *)a3 options:(unint64_t)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVValueSetter;
  v5 = [(ABVCardPersonValueSetter *)&v8 initWithPerson:a3];
  v6 = v5;
  if (v5)
  {
    v5->_importingToExistingGroup = 1;
    if (v4)
    {
      [(ABVCardCardDAVValueSetter *)v5 _drainExistingProperties];
    }
  }

  return v6;
}

- (BOOL)setImageData:(id)a3 cropRectX:(int)a4 cropRectY:(int)a5 cropRectWidth:(int)a6 cropRectHeight:(int)a7
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_recordIsGroup)
  {
    v7 = *&a7;
    v8 = *&a6;
    v9 = *&a5;
    v10 = *&a4;
    v13 = ABPersonCopyImageDataWithFormat(self->super._person, 5u);
    v14 = v13;
    if (v13 && [(__CFData *)v13 isEqualToData:a3])
    {
      if (ABImageUtilsOriginalSizeCropRectMatchesSyncedCropRect(self->super._person, a3, v10, v9, v8, v7))
      {
        v15 = ABOSLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [ABVCardCardDAVValueSetter setImageData:v15 cropRectX:? cropRectY:? cropRectWidth:? cropRectHeight:?];
        }

LABEL_13:

        return 1;
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = ABOSLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544642;
      v18 = @"NO";
      if (!v16)
      {
        v18 = @"YES";
      }

      v22 = v18;
      v23 = 1024;
      v24 = v10;
      v25 = 1024;
      v26 = v9;
      v27 = 1024;
      v28 = v8;
      v29 = 1024;
      v30 = v7;
      v31 = 2114;
      v32 = @"YES";
      _os_log_impl(&dword_1B7EFB000, v17, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Sync image changed: %{public}@, cropRect {%i, %i, %i, %i} changed: %{public}@. Updating sync image on person", buf, 0x2Eu);
    }

    v20.receiver = self;
    v20.super_class = ABVCardCardDAVValueSetter;
    [(ABVCardPersonValueSetter *)&v20 setImageData:a3 cropRectX:v10 cropRectY:v9 cropRectWidth:v8 cropRectHeight:v7];
    ABPersonSetImageDataDerivedFromFormatAndReturnError(self->super._person, 5);
    goto LABEL_13;
  }

  return 1;
}

- (id)imageData
{
  if (self->_importingToExistingGroup || self->_recordIsGroup)
  {
    v3 = 0;
  }

  else
  {
    v3 = ABPersonCopyImageDataWithFormat(self->super._person, 5u);
  }

  return v3;
}

@end