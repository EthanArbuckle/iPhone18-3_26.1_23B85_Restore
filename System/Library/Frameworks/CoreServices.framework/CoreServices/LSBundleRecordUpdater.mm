@interface LSBundleRecordUpdater
- (BOOL)checkNeedsUpdateForiTunesMetadata:(id)metadata SINFo:(id)fo placeholderMetadata:(id)placeholderMetadata;
- (BOOL)parsePersonas:(id)personas error:(id *)error;
- (BOOL)updateBundleRecord:(id *)record;
- (LSBundleRecordUpdater)initWithBundleIdentifier:(id)identifier preferPlaceholder:(BOOL)placeholder;
- (LSBundleRecordUpdater)initWithDatabase:(id)database bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data;
- (id).cxx_construct;
- (void)dealloc;
- (void)parsePlaceholderMetadata:(id)metadata;
- (void)parseSINFDictionary:(id)dictionary;
- (void)parseiTunesMetadata:(id)metadata;
@end

@implementation LSBundleRecordUpdater

- (LSBundleRecordUpdater)initWithDatabase:(id)database bundleUnit:(unsigned int)unit bundleData:(const LSBundleData *)data
{
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = LSBundleRecordUpdater;
  v9 = [(LSBundleRecordUpdater *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(LSRecordBuilder *)v9 setDatabase:databaseCopy];
    v10->_bundleID = unit;
    memcpy(&v10->_bundleData, data, 0x238uLL);
    v10->_hasContext = 0;
  }

  return v10;
}

- (LSBundleRecordUpdater)initWithBundleIdentifier:(id)identifier preferPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  obj = 0;
  v22 = 0;
  identifierCopy = identifier;
  v24 = 0;
  inited = _LSContextInitReturningError(&obj, &v24);
  v8 = v24;
  if (inited)
  {
    if (placeholderCopy)
    {
      v9 = 1152;
    }

    else
    {
      v9 = 128;
    }

    memset(buf, 0, 32);
    if (_LSBundleFindWithInfoAndNo_IOFilter(&obj, 0, identifierCopy, 0, buf, 2, v9, 0, 0, &v23, &v22, 0))
    {
      v10 = 0;
      v11 = 1;
      goto LABEL_9;
    }

    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "initContextAndLookupBundle", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordUpdater.mm", 61);

    v8 = v12;
    _LSContextDestroy(&obj);
  }

  v13 = v8;
  v11 = 0;
  v10 = v8;
LABEL_9:

  v14 = v10;
  if (v11)
  {
    v15 = [(LSBundleRecordUpdater *)self initWithDatabase:obj bundleUnit:v23 bundleData:v22];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_context.db, obj);
      v16->_hasContext = 1;
      v17 = _LSDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v22 + 172);
        *buf = 138412546;
        *&buf[4] = identifierCopy;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "Created bundleRecordUpdater for app %@. flags=%llx", buf, 0x16u);
      }

      goto LABEL_18;
    }

    _LSContextDestroy(&obj);
  }

  else
  {
  }

  v17 = _LSDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(LSBundleRecordUpdater *)identifierCopy initWithBundleIdentifier:v14 preferPlaceholder:v17];
  }

  v16 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  if (self->_hasContext)
  {
    _LSContextDestroy(&self->_context.db);
  }

  v3.receiver = self;
  v3.super_class = LSBundleRecordUpdater;
  [(LSBundleRecordUpdater *)&v3 dealloc];
}

- (void)parseiTunesMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadataCopy && self->_bundleID)
  {
    v56 = metadataCopy;
    v5 = *(&self->_bundleData._clas + 1);
    bundleFlags_high = HIDWORD(self->_bundleData._bundleFlags);
    v6 = _LSPlistGet(self->super._db, self->_bundleData.base.infoDictionary);
    v7 = _LSPlistDataGetDictionary(v6, 0);

    v55 = [v7 mutableCopy];
    LODWORD(v7) = [v56 _LS_BoolForKey:@"initialODRSize"];
    v8 = [v56 _LS_BoolForKey:@"is-purchased-redownload"];
    v9 = [v56 _LS_BoolForKey:@"DeviceBasedVPP"];
    v10 = v5 | 0x80000000000;
    if (!v7)
    {
      v10 = v5;
    }

    if (v8)
    {
      v10 |= 0x400000uLL;
    }

    if (v9)
    {
      v10 |= 0x8000000000000uLL;
    }

    v50 = v10;
    v11 = objc_opt_class();
    v12 = [v56 objectForKey:@"artistName"];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = v12;
      if (objc_opt_isKindOfClass())
      {
        v13 = v14;
      }

      else
      {

        v13 = 0;
      }
    }

    v53 = v13;
    HIDWORD(self->_bundleData.installFailureReason) = _LSDatabaseCreateStringForCFString(self->super._db, v13, 0);
    v15 = objc_opt_class();
    v16 = [v56 objectForKey:@"itemName"];
    v17 = v16;
    if (v15 && v16)
    {
      v18 = v16;
      if (objc_opt_isKindOfClass())
      {
        v17 = v18;
      }

      else
      {

        v17 = 0;
      }
    }

    v52 = v17;
    HIDWORD(self->_bundleData.familyID) = _LSDatabaseCreateStringForCFString(self->super._db, v17, 0);
    v19 = objc_opt_class();
    v20 = [v56 objectForKey:@"sourceApp"];
    v21 = v20;
    if (v19 && v20)
    {
      v22 = v20;
      if (objc_opt_isKindOfClass())
      {
        v21 = v22;
      }

      else
      {

        v21 = 0;
      }
    }

    v51 = v21;
    LODWORD(self->_bundleData.versionIdentifier) = _LSDatabaseCreateStringForCFString(self->super._db, v21, 0);
    *&self->_bundleData.itemName = [v56 _LS_integerForKey:@"s"];
    v23 = [v56 _LS_integerForKey:@"softwareVersionExternalIdentifier"];
    if (!v23)
    {
      v23 = [v56 _LS_integerForKey:@"betaExternalVersionIdentifier"];
    }

    self->_bundleData.storefront = v23;
    v24 = objc_opt_class();
    v25 = [v56 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    v26 = v25;
    if (v24 && v25)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = v26;
        v26 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    else if (!v25)
    {
      goto LABEL_40;
    }

    v28 = objc_opt_class();
    v29 = [v26 objectForKey:@"accountInfo"];
    v27 = v29;
    if (v28 && v29)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      v30 = [v27 _LS_integerForKey:@"PurchaserID"];
      if (!v30)
      {
        v30 = [v27 _LS_integerForKey:@"DSPersonID"];
      }

      *(&self->_bundleData.staticDiskUsage + 4) = v30;
      goto LABEL_39;
    }

    if (v29)
    {
      goto LABEL_36;
    }

LABEL_40:
    v31 = objc_opt_class();
    v32 = [v56 objectForKey:@"variantID"];
    v33 = v32;
    if (v31 && v32 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v33 = 0;
    }

    HIDWORD(self->_bundleData.versionIdentifier) = _LSDatabaseCreateStringForCFString(self->super._db, v33, 0);
    v34 = objc_opt_class();
    v35 = [v56 objectForKey:@"managementDeclarationIdentifier"];
    v36 = v35;
    if (v34 && v35 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v36 = 0;
    }

    self->_bundleData.sourceAppBundleID = _LSDatabaseCreateStringForCFString(self->super._db, v36, 0);
    v37 = objc_opt_class();
    v38 = [v56 objectForKey:@"storeCohort"];
    v39 = v38;
    if (v37 && v38)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v39 = 0;
LABEL_54:
        *(&self->_bundleData.compatibilityState + 4) = [v56 _LS_integerForKey:@"itemId"];
        v40 = objc_opt_class();
        v41 = [v56 objectForKey:@"rating"];
        v42 = v41;
        if (v40 && v41)
        {
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = v42;
            v42 = 0;
LABEL_64:

            goto LABEL_65;
          }
        }

        else if (!v41)
        {
LABEL_65:
          _LSPlistRemove(self->super._db, *(&self->_bundleData.ratingLabel + 1));
          *(&self->_bundleData.ratingLabel + 1) = 0;
          v47 = objc_opt_class();
          v48 = [v56 objectForKey:@"distributorInfo"];
          v49 = v48;
          if (v47 && v48)
          {
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else if (!v48)
          {
LABEL_72:
            _LSPlistRemove(self->super._db, self->_bundleData.base.infoDictionary);
            self->_bundleData.base.infoDictionary = _LSPlistAdd(self->super._db, v55);
            HIDWORD(self->_bundleData._bundleFlags) = bundleFlags_high;
            *(&self->_bundleData._clas + 1) = v50;

            metadataCopy = v56;
            goto LABEL_73;
          }

          *(&self->_bundleData.ratingLabel + 1) = _LSPlistAdd(self->super._db, v49);
LABEL_71:

          goto LABEL_72;
        }

        self->_modifiedPlugins.__table_.__size_ = *&self->_bundleData.appVariant;
        v44 = [(__CFString *)v42 _LS_integerForKey:@"rank"];
        *&self->_modifiedPlugins.__table_.__max_load_factor_ = v44;
        *&self->_bundleData.appVariant = v44;
        v45 = objc_opt_class();
        v46 = [(__CFString *)v42 objectForKey:@"label"];
        v43 = v46;
        if (v45 && v46 && (objc_opt_isKindOfClass() & 1) == 0)
        {

          v43 = 0;
        }

        *(&self->_bundleData.managementDeclarationIdentifier + 1) = _LSDatabaseCreateStringForCFString(self->super._db, v43, 0);
        goto LABEL_64;
      }
    }

    else if (!v38)
    {
      goto LABEL_54;
    }

    [v55 setObject:v39 forKeyedSubscript:@"storeCohort"];
    bundleFlags_high |= 0x4000u;
    goto LABEL_54;
  }

LABEL_73:
}

- (void)parseSINFDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy && self->_bundleID)
  {
    v11 = dictionaryCopy;
    p_bundleData = &self->_bundleData;
    *(&self->_bundleData.purchaserDSID + 4) = [dictionaryCopy _LS_integerForKey:@"DownloaderDSID"];
    *(&self->_bundleData.staticDiskUsage + 4) = [v11 _LS_integerForKey:@"ApplicationDSID"];
    *(&self->_bundleData.downloaderDSID + 4) = [v11 _LS_integerForKey:@"FamilyID"];
    v6 = *(&self->_bundleData._clas + 1);
    v7 = [v11 _LS_BoolForKey:@"MissingSINF"];
    v8 = [v11 _LS_BoolForKey:@"HasMIDBasedSINF"];
    v9 = 0x2000000;
    if (!v7)
    {
      v9 = 0;
    }

    v10 = 0x1000000;
    if (!v8)
    {
      v10 = 0;
    }

    *(&p_bundleData->_clas + 1) = v9 | v10 | v6 & 0xFFFFFFFFFCFFFFFFLL;
    dictionaryCopy = v11;
  }
}

- (void)parsePlaceholderMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = metadataCopy;
  if (metadataCopy && self->_bundleID)
  {
    v8 = metadataCopy;
    v6 = [metadataCopy _LS_integerForKey:@"LSInstallType"];
    if (v6)
    {
      self->_bundleData.shortVersionString = v6;
    }

    v7 = [v8 _LS_integerForKey:@"PlaceholderFailureReason"];
    v5 = v8;
    if (v7)
    {
      *&self->_bundleData.installType = v7;
    }
  }
}

- (BOOL)parsePersonas:(id)personas error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  personasCopy = personas;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(personasCopy, "count")}];
  memset(&v55, 0, sizeof(v55));
  std::vector<unsigned int>::reserve(&v55, [personasCopy count]);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = personasCopy;
  v6 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
  selfCopy = self;
  if (v6)
  {
    v7 = 0;
    v8 = *v52;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [(_LSPersonaWithAttributes *)v10 personaType]== 3;
        personaUniqueString = [(_LSPersonaWithAttributes *)v10 personaUniqueString];
        [v5 addObject:personaUniqueString];

        personaType = [(_LSPersonaWithAttributes *)v10 personaType];
        end = v55.__end_;
        if (v55.__end_ >= v55.__end_cap_.__value_)
        {
          begin = v55.__begin_;
          v17 = v55.__end_ - v55.__begin_;
          v18 = v55.__end_ - v55.__begin_;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v20 = v55.__end_cap_.__value_ - v55.__begin_;
          if ((v55.__end_cap_.__value_ - v55.__begin_) >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
          v22 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          if (v22)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:nn200100](&v55, v22);
          }

          *(4 * v18) = personaType;
          v15 = (4 * v18 + 4);
          memcpy(0, begin, v17);
          v23 = v55.__begin_;
          v55.__begin_ = 0;
          v55.__end_ = v15;
          v55.__end_cap_.__value_ = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v55.__end_ = personaType;
          v15 = end + 1;
        }

        v7 |= v11;
        v55.__end_ = v15;
      }

      v6 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v6);

    p_bundleData = &self->_bundleData;
    v25 = 0x100000000000000;
    if ((v7 & 1) == 0)
    {
      v25 = 0;
    }

    v26 = *(&self->_bundleData._clas + 1) & 0xFEFFFFFFFFFFFFFFLL | v25;
  }

  else
  {

    p_bundleData = &self->_bundleData;
    v26 = *(&self->_bundleData._clas + 1) & 0xFEFFFFFFFFFFFFFFLL;
  }

  *(&p_bundleData->_clas + 1) = v26;
  appContainerAlias = p_bundleData->appContainerAlias;
  v28 = [v5 count];
  if (v28)
  {
    LODWORD(v28) = _LSDatabaseCreateStringArray(self->super._db, v5, 0, 0);
  }

  p_appContainerAlias = &p_bundleData->appContainerAlias;
  p_bundleData->appContainerAlias = v28;
  _LSDatabaseDisposeStringArray(self->super._db, appContainerAlias);
  v30 = *&p_bundleData->revision;
  if (v55.__end_ == v55.__begin_)
  {
    v31 = 0;
  }

  else
  {
    [(_LSDatabase *)self->super._db store];
    v31 = _CSArrayCreate();
  }

  *&p_bundleData->revision = v31;
  [(_LSDatabase *)self->super._db store];
  _CSArrayDispose();
  if (![obj count] || *p_appContainerAlias && *&p_bundleData->revision)
  {
    v32 = _LSRegistrationLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = self->_bundleID;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = bundleID;
      _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "Unsetting redactible for unit %llx", &buf, 0xCu);
    }

    *&p_bundleData->base.flags &= ~0x20u;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x4812000000;
    v58 = __Block_byref_object_copy__11;
    v59 = __Block_byref_object_dispose__11;
    v60 = &unk_1818533FF;
    v62 = 0;
    v63 = 0;
    __p = 0;
    [(_LSDatabase *)self->super._db store];
    libraryPath = p_bundleData->libraryPath;
    _CSArrayEnumerateAllValues();
    selfCopy2 = self;
    v36 = *(*(&buf + 1) + 48);
    for (j = *(*(&buf + 1) + 56); v36 != j; selfCopy2 = selfCopy)
    {
      v38 = *v36;
      [(_LSDatabase *)selfCopy2->super._db store];
      _CSStringRelease();
      ++v36;
    }

    _Block_object_dispose(&buf, 8);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }

    v39 = 0;
    v40 = 1;
  }

  else
  {
    v41 = _LSDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [(LSBundleRecordUpdater *)&p_bundleData->appContainerAlias parsePersonas:v41 error:?];
    }

    *p_appContainerAlias = 0;
    v42 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "[LSBundleRecordUpdater parsePersonas:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBundleRecordUpdater.mm", 309);
    v39 = v42;
    if (v47)
    {
      v43 = v42;
      v40 = 0;
      *v47 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  if (v55.__begin_)
  {
    v55.__end_ = v55.__begin_;
    operator delete(v55.__begin_);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v40;
}

void __45__LSBundleRecordUpdater_parsePersonas_error___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>((*(a1 + 32) + 600), &v41);
  if (!v4)
  {
    v5 = _LSGetPlugin(*(*(a1 + 32) + 8), v41);
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = v41;
      v7 = v5[11];
      v8 = v5[12];
      v9 = v5[13];
      *(v56 + 12) = *(v5 + 220);
      v56[0] = v9;
      v55 = v8;
      v54 = v7;
      v10 = v5[7];
      v11 = v5[8];
      v12 = v5[9];
      v53 = v5[10];
      v52 = v12;
      v51 = v11;
      v50 = v10;
      v13 = v5[3];
      v14 = v5[4];
      v15 = v5[5];
      v49 = v5[6];
      v48 = v15;
      v47 = v14;
      v46 = v13;
      v17 = *v5;
      v16 = v5[1];
      v45 = v5[2];
      v43 = v17;
      v44 = v16;
      v4 = std::__hash_table<std::__hash_value_type<unsigned int,LSPluginData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSPluginData>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSPluginData>>((v6 + 600), buf);
    }

    else
    {
      v4 = 0;
    }
  }

  v18 = _LSRegistrationLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v4 + 8);
    [(_LSDatabase *)*(*(a1 + 32) + 8) store];
    v20 = _CSStringCopyCFString();
    *buf = 138412290;
    *&v43 = v20;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Rolling UUID on %@ and marking not eligible for redaction", buf, 0xCu);
  }

  v21 = *(v4 + 60);
  _LSBindableDeactivate(*(*(a1 + 32) + 8), v41);
  v22 = *(*(a1 + 40) + 8);
  v24 = v22[7];
  v23 = v22[8];
  if (v24 >= v23)
  {
    v26 = v22[6];
    v27 = v24 - v26;
    v28 = (v24 - v26) >> 2;
    v29 = v28 + 1;
    if ((v28 + 1) >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v30 = v23 - v26;
    if (v30 >> 1 > v29)
    {
      v29 = v30 >> 1;
    }

    v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
    v32 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v31)
    {
      v32 = v29;
    }

    if (v32)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v22 + 6), v32);
    }

    v33 = (v24 - v26) >> 2;
    v34 = (4 * v28);
    v35 = (4 * v28 - 4 * v33);
    *v34 = *(v4 + 60);
    v25 = v34 + 1;
    memcpy(v35, v26, v27);
    v36 = v22[6];
    v22[6] = v35;
    v22[7] = v25;
    v22[8] = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v24 = *(v4 + 60);
    v25 = v24 + 4;
  }

  v22[7] = v25;
  v37 = *(*(a1 + 32) + 8);
  v38 = [MEMORY[0x1E696AFB0] UUID];
  v39 = [v38 UUIDString];
  *(v4 + 60) = _LSDatabaseCreateStringForCFString(v37, v39, 0);

  *(v4 + 184) &= ~0x20u;
  v40 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateBundleRecord:(id *)record
{
  v22 = 0;
  *&self->_bundleData.appStoreToolsBuildVersion = _LSDatabaseGetSequenceNumber(self->super._db) + 1;
  self->_bundleData.localizedNameWithContext[0] = CFAbsoluteTimeGetCurrent();
  db = self->super._db;
  _LSDatabaseSetSequenceNumber();
  [(_LSDatabase *)self->super._db store];
  v6 = *([(_LSDatabase *)self->super._db schema]+ 4);
  bundleID = self->_bundleID;
  v8 = _CSStoreWriteToUnit();
  for (i = &self->_modifiedPlugins; ; _LSBindableActivate(self->super._db, i->__table_.__first_node_.__next_))
  {
    i = i->__table_.__bucket_list_.__ptr_;
    if (!i)
    {
      break;
    }

    [(_LSDatabase *)self->super._db store];
    v10 = *([(_LSDatabase *)self->super._db schema]+ 1588);
    next_low = LODWORD(i->__table_.__first_node_.__next_);
    _CSStoreWriteToUnit();
    ptr_low = LODWORD(i[6].__table_.__bucket_list_.__ptr_);
  }

  if (v8)
  {
    if (self->_modifiedPlugins.__table_.__size_ != *&self->_modifiedPlugins.__table_.__max_load_factor_)
    {
      v13 = +[LSApplicationRestrictionsManager sharedInstance];
      v14 = [(LSApplicationRestrictionsManager *)v13 willRestrictedStateOfBundleWithRatingRank:*&self->_modifiedPlugins.__table_.__max_load_factor_ changeOnUpdateToRatingRank:?];

      if (v14)
      {
        exactIdentifier = self->_bundleData.base.exactIdentifier;
        [(_LSDatabase *)self->super._db store];
        v16 = _CSStringCopyCFString();
        v21 = self->super._db;
        v17 = [MEMORY[0x1E695DFD8] setWithObject:v16];
        v18 = +[LSApplicationRestrictionsManager sharedInstance];
        defaultStateProvider = [(LSApplicationRestrictionsManager *)v18 defaultStateProvider];
        _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(&v21, v17, defaultStateProvider);
      }
    }

    _LSDatabaseCommit(self->super._db);
  }

  else if (record)
  {
    *record = v22;
  }

  return v8 != 0;
}

- (BOOL)checkNeedsUpdateForiTunesMetadata:(id)metadata SINFo:(id)fo placeholderMetadata:(id)placeholderMetadata
{
  metadataCopy = metadata;
  placeholderMetadataCopy = placeholderMetadata;
  v10 = placeholderMetadataCopy;
  v11 = (metadataCopy | fo) != 0;
  if (placeholderMetadataCopy)
  {
    v12 = [placeholderMetadataCopy _LS_integerForKey:@"LSInstallType"];
    v13 = [v10 _LS_integerForKey:@"PlaceholderFailureReason"];
    if (v12 && v12 != self->_bundleData.shortVersionString)
    {
      v11 = 1;
    }

    if (v13)
    {
      v11 |= v13 != *&self->_bundleData.installType;
    }

    v14 = objc_opt_class();
    v15 = [metadataCopy objectForKey:@"rating"];
    v16 = v15;
    if (v14 && v15)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v15)
    {
LABEL_12:
      v11 |= [v16 _LS_integerForKey:@"rank"] != *&self->_bundleData.appVariant;
LABEL_13:
    }
  }

  return v11 & 1;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 600) = 0u;
  *(self + 616) = 0u;
  *(self + 158) = 1065353216;
  return self;
}

- (void)initWithBundleIdentifier:(NSObject *)a3 preferPlaceholder:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_18162D000, a2, a3, "could not make bundle record updater for %@: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)parsePersonas:(NSObject *)a3 error:.cold.1(unsigned int *a1, _DWORD *a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  *v4 = 134218240;
  *&v4[4] = *a1;
  *&v4[12] = 2048;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_1_0(&dword_18162D000, a2, a3, "failed to allocate personas (%llx) or persona types (%llx) CSArray", *v4, *&v4[8]);
  v3 = *MEMORY[0x1E69E9840];
}

@end