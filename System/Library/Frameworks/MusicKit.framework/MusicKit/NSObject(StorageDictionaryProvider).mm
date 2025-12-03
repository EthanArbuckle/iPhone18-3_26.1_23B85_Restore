@interface NSObject(StorageDictionaryProvider)
+ (id)_musicKit_modelObjectStorageDictionaryForGenericModelObject:()StorageDictionaryProvider;
+ (id)_musicKit_modelObjectStorageDictionaryForPin:()StorageDictionaryProvider;
+ (id)_musicKit_modelObjectStorageDictionaryForPlaylistEntry:()StorageDictionaryProvider;
+ (id)_musicKit_modelObjectStorageDictionaryForStoreBrowseContentItem:()StorageDictionaryProvider;
- (id)_musicKit_modelObjectRawStorageDictionary;
- (id)musicKit_modelObjectStorageDictionary;
@end

@implementation NSObject(StorageDictionaryProvider)

- (id)_musicKit_modelObjectRawStorageDictionary
{
  getMPModelObjectClass();
  if (objc_opt_isKindOfClass())
  {
    v2 = [self valueForKey:@"_storage"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_modelObjectStorageDictionary
{
  getMPModelObjectClass();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    getMPModelGenericObjectClass();
    if (objc_opt_isKindOfClass())
    {
      _musicKit_innerModelObject = selfCopy;
      v4 = [objc_opt_class() _musicKit_modelObjectStorageDictionaryForGenericModelObject:_musicKit_innerModelObject];
    }

    else
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v6 = getMPModelStoreBrowseContentItemClass_softClass;
      v19 = getMPModelStoreBrowseContentItemClass_softClass;
      if (!getMPModelStoreBrowseContentItemClass_softClass)
      {
        v11 = MEMORY[0x277D85DD0];
        v12 = 3221225472;
        v13 = __getMPModelStoreBrowseContentItemClass_block_invoke;
        v14 = &unk_278229610;
        v15 = &v16;
        __getMPModelStoreBrowseContentItemClass_block_invoke(&v11);
        v6 = v17[3];
      }

      v7 = v6;
      _Block_object_dispose(&v16, 8);
      if (objc_opt_isKindOfClass())
      {
        _musicKit_innerModelObject = selfCopy;
        v4 = [objc_opt_class() _musicKit_modelObjectStorageDictionaryForStoreBrowseContentItem:_musicKit_innerModelObject];
      }

      else
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2050000000;
        v8 = getMPModelPlaylistEntryClass_softClass;
        v19 = getMPModelPlaylistEntryClass_softClass;
        if (!getMPModelPlaylistEntryClass_softClass)
        {
          v11 = MEMORY[0x277D85DD0];
          v12 = 3221225472;
          v13 = __getMPModelPlaylistEntryClass_block_invoke;
          v14 = &unk_278229610;
          v15 = &v16;
          __getMPModelPlaylistEntryClass_block_invoke(&v11);
          v8 = v17[3];
        }

        v9 = v8;
        _Block_object_dispose(&v16, 8);
        if (objc_opt_isKindOfClass())
        {
          _musicKit_innerModelObject = selfCopy;
          v4 = [objc_opt_class() _musicKit_modelObjectStorageDictionaryForPlaylistEntry:_musicKit_innerModelObject];
        }

        else
        {
          getMPModelLibraryPinClass();
          if (objc_opt_isKindOfClass())
          {
            _musicKit_innerModelObject = selfCopy;
            [objc_opt_class() _musicKit_modelObjectStorageDictionaryForPin:_musicKit_innerModelObject];
          }

          else
          {
            _musicKit_innerModelObject = [selfCopy _musicKit_innerModelObject];
            [_musicKit_innerModelObject _musicKit_modelObjectRawStorageDictionary];
          }
          v4 = ;
        }
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_musicKit_modelObjectStorageDictionaryForGenericModelObject:()StorageDictionaryProvider
{
  v3 = a3;
  type = [v3 type];
  _musicKit_innerModelObject = [v3 _musicKit_innerModelObject];

  _musicKit_modelObjectRawStorageDictionary = [_musicKit_innerModelObject _musicKit_modelObjectRawStorageDictionary];
  v7 = [_musicKit_modelObjectRawStorageDictionary mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v7 setObject:v8 forKey:@"MusicKit_LegacyModelProperty_GenericType"];

  return v7;
}

+ (id)_musicKit_modelObjectStorageDictionaryForPlaylistEntry:()StorageDictionaryProvider
{
  v3 = a3;
  type = [v3 type];
  _musicKit_modelObjectRawStorageDictionary = [v3 _musicKit_modelObjectRawStorageDictionary];

  v6 = [_musicKit_modelObjectRawStorageDictionary mutableCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [v6 setObject:v7 forKey:@"MusicKit_LegacyModelPlaylistEntryType"];

  return v6;
}

+ (id)_musicKit_modelObjectStorageDictionaryForPin:()StorageDictionaryProvider
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MusicKit_Logging_Library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_2171EE000, v4, OS_LOG_TYPE_DEFAULT, "Creating storage dictionary for pin=%{public}@.", &v11, 0xCu);
  }

  pinnedEntityType = [v3 pinnedEntityType];
  _musicKit_modelObjectRawStorageDictionary = [v3 _musicKit_modelObjectRawStorageDictionary];
  v7 = [_musicKit_modelObjectRawStorageDictionary mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:pinnedEntityType];
  [v7 setObject:v8 forKey:@"MusicKit_LegacyModelLibraryPinnedEntityType"];

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_musicKit_modelObjectStorageDictionaryForStoreBrowseContentItem:()StorageDictionaryProvider
{
  v3 = a3;
  v4 = +[MusicKit_SoftLinking_MPModelGenericObject rawValueForType:](MusicKit_SoftLinking_MPModelGenericObject, "rawValueForType:", +[MusicKit_SoftLinking_MPModelStoreBrowseContentItem _genericObjectTypeForItemType:](MusicKit_SoftLinking_MPModelStoreBrowseContentItem, "_genericObjectTypeForItemType:", [v3 itemType]));
  innerObject = [v3 innerObject];

  _musicKit_modelObjectRawStorageDictionary = [innerObject _musicKit_modelObjectRawStorageDictionary];
  v7 = [_musicKit_modelObjectRawStorageDictionary mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  [v7 setObject:v8 forKey:@"MusicKit_LegacyModelProperty_GenericType"];

  return v7;
}

@end