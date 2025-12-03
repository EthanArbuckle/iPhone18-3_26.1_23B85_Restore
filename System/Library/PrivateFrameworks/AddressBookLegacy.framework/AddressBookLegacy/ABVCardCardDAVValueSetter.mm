@interface ABVCardCardDAVValueSetter
+ (__CFDictionary)_personToGroupPropertyMap;
+ (int)groupPropertyForPersonProperty:(int)property;
- (ABVCardCardDAVValueSetter)initWithGroup:(void *)group options:(unint64_t)options;
- (ABVCardCardDAVValueSetter)initWithPerson:(void *)person options:(unint64_t)options;
- (BOOL)setImageData:(id)data cropRectX:(int)x cropRectY:(int)y cropRectWidth:(int)width cropRectHeight:(int)height;
- (BOOL)setValue:(void *)value forProperty:(unsigned int)property;
- (id)imageData;
- (void)_drainExistingProperties;
- (void)copyParsedRecordWithSource:(void *)source outRecordType:(unsigned int *)type;
- (void)valueForProperty:(unsigned int)property;
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

+ (int)groupPropertyForPersonProperty:(int)property
{
  value = -1;
  CFDictionaryGetValueIfPresent([self _personToGroupPropertyMap], property, &value);
  return value;
}

- (void)copyParsedRecordWithSource:(void *)source outRecordType:(unsigned int *)type
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_recordIsGroup)
  {
    v7 = CFRetain(self->super._person);
    if (!type)
    {
      return v7;
    }

    goto LABEL_12;
  }

  if (source)
  {
    v6 = ABGroupCreateInSource(source);
  }

  else
  {
    v6 = ABGroupCreate();
  }

  v7 = v6;
  _personToGroupPropertyMap = [objc_opt_class() _personToGroupPropertyMap];
  Count = CFDictionaryGetCount(_personToGroupPropertyMap);
  v10 = (v16 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v10;
  CFDictionaryGetKeysAndValues(_personToGroupPropertyMap, v16, v10);
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

  if (type)
  {
LABEL_12:
    *type = self->_recordIsGroup;
  }

  return v7;
}

- (void)valueForProperty:(unsigned int)property
{
  v3 = *&property;
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

- (BOOL)setValue:(void *)value forProperty:(unsigned int)property
{
  if (self->_importingToExistingGroup)
  {
    v6 = [objc_opt_class() groupPropertyForPersonProperty:*&property];
    if (v6 == -1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      if (ABRecordSetValue(self->super._person, v6, value, 0))
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
    return [(ABVCardPersonValueSetter *)&v9 setValue:value forProperty:*&property];
  }
}

- (void)_drainExistingProperties
{
  supportedProperties = [objc_opt_class() supportedProperties];
  if (supportedProperties)
  {
    v4 = supportedProperties;
    Count = CFArrayGetCount(supportedProperties);
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

- (ABVCardCardDAVValueSetter)initWithPerson:(void *)person options:(unint64_t)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVValueSetter;
  v5 = [(ABVCardPersonValueSetter *)&v8 initWithPerson:person];
  v6 = v5;
  if (v5)
  {
    v5->_wallpaperSupported = (optionsCopy & 2) != 0;
    v5->_isImageSyncFailedTimeSet = [(ABVCardCardDAVValueSetter *)v5 valueForProperty:kABPersonImageSyncFailedTimeProperty]!= 0;
    if (optionsCopy)
    {
      [(ABVCardCardDAVValueSetter *)v6 _drainExistingProperties];
    }
  }

  return v6;
}

- (ABVCardCardDAVValueSetter)initWithGroup:(void *)group options:(unint64_t)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = ABVCardCardDAVValueSetter;
  v5 = [(ABVCardPersonValueSetter *)&v8 initWithPerson:group];
  v6 = v5;
  if (v5)
  {
    v5->_importingToExistingGroup = 1;
    if (optionsCopy)
    {
      [(ABVCardCardDAVValueSetter *)v5 _drainExistingProperties];
    }
  }

  return v6;
}

- (BOOL)setImageData:(id)data cropRectX:(int)x cropRectY:(int)y cropRectWidth:(int)width cropRectHeight:(int)height
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_recordIsGroup)
  {
    v7 = *&height;
    v8 = *&width;
    v9 = *&y;
    v10 = *&x;
    v13 = ABPersonCopyImageDataWithFormat(self->super._person, 5u);
    v14 = v13;
    if (v13 && [(__CFData *)v13 isEqualToData:data])
    {
      if (ABImageUtilsOriginalSizeCropRectMatchesSyncedCropRect(self->super._person, data, v10, v9, v8, v7))
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
    [(ABVCardPersonValueSetter *)&v20 setImageData:data cropRectX:v10 cropRectY:v9 cropRectWidth:v8 cropRectHeight:v7];
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