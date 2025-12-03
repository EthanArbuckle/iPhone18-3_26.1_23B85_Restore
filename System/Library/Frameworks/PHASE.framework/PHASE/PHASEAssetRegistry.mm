@interface PHASEAssetRegistry
- (BOOL)addAssetInternal:(id)internal stringPool:()unique_ptr<Phase:(std:(id *)phase :default_delete<Phase::StringPool>>)a4 :StringPool outError:;
- (BOOL)removeAssetInternal:(id)internal;
- (NSDictionary)globalMetaParameters;
- (PHASEAsset)assetForIdentifier:(NSString *)identifier;
- (PHASEAssetRegistry)init;
- (PHASEAssetRegistry)initWithEngine:(id)engine;
- (PHASEGlobalMetaParameterAsset)registerGlobalMetaParameter:(PHASEMetaParameterDefinition *)metaParameterDefinition error:(NSError *)error;
- (PHASESoundAsset)registerSoundAssetAtURL:(NSURL *)url identifier:(NSString *)identifier assetType:(PHASEAssetType)assetType channelLayout:(AVAudioChannelLayout *)channelLayout normalizationMode:(PHASENormalizationMode)normalizationMode error:(NSError *)error;
- (PHASESoundAsset)registerSoundAssetWithData:(NSData *)data identifier:(NSString *)identifier format:(AVAudioFormat *)format normalizationMode:(PHASENormalizationMode)normalizationMode error:(NSError *)error;
- (PHASESoundEventNodeAsset)registerSoundEventAssetWithRootNode:(PHASESoundEventNodeDefinition *)rootNode identifier:(NSString *)identifier error:(NSError *)error;
- (const)getActionTree:(unint64_t)tree;
- (const)getChannelMapping:(unint64_t)mapping;
- (const)getSoundAssetInfo:(unint64_t)info;
- (id).cxx_construct;
- (id)assetInfoString:(int64_t)string;
- (id)getAssetForUID:(id)d;
- (id)getGlobalMetaParameter:(unint64_t)parameter;
- (id)getUniqueIdentifier;
- (id)makeMetaParameterFromDefinition:(id)definition;
- (id)mixerInformationForActionTreeWithIdentifier:(id)identifier;
- (id)registerActionTreeWithRootNode:(id)node uid:(id)uid outError:(id *)error;
- (id)registerJSONDataBundleWithURL:(id)l assetBaseURL:(id)rL identifier:(id)identifier error:(id *)error;
- (id)registerJSONDataBundleWithURL:(id)l assetBaseURL:(id)rL uid:(id)uid outError:(id *)error;
- (id)registerSoundAssetAtURL:(id)l identifier:(id)identifier assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)error;
- (id)registerSoundAssetAtURL:(id)l identifier:(id)identifier assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)task error:(id *)self0;
- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout error:(id *)error;
- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode error:(id *)error;
- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)self0;
- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)self0 error:(id *)self1;
- (id)registerSoundAssetWithAudioFileData:(id)data uid:(id)uid assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout referenceGainDBSPL:(double)l outError:(id *)error;
- (id)registerSoundAssetWithData:(id)data identifier:(id)identifier format:(id)format normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)error;
- (id)registerSoundAssetWithData:(id)data identifier:(id)identifier format:(id)format normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)task error:(id *)error;
- (id)registerSoundAssetWithData:(id)data uid:(id)uid format:(id)format referenceGainDBSPL:(double)l outError:(id *)error;
- (id)registerSoundAssetWithURL:(id)l uid:(id)uid assetType:(int64_t)type channelLayout:(id)layout referenceGainDBSPL:(double)pL outError:(id *)error;
- (id)registerSoundEventAssetWithRootNode:(id)node uid:(id)uid error:(id *)error;
- (unint64_t)sizeInBytes;
- (unique_ptr<Phase::Controller::SoundAssetInfo,)makeSoundAssetInfoWithURL:(id)l assetString:(const char *)string assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(double)s ownerTask:(unsigned int)task outError:(id *)self0;
- (unique_ptr<Phase::StringPool,)makeStringPoolForSingleAsset:(id)asset outError:(id *)error;
- (void)logAddAsset:(id)asset;
- (void)logRemoveAsset:(id)asset;
- (void)removeAll;
- (void)setMetaParameter:(id)parameter value:(double)value withTimeInterval:(double)interval;
- (void)setMetaParameter:(id)parameter value:(id)value;
- (void)unregisterAssetWithIdentifier:(NSString *)identifier completion:(void *)handler;
- (void)unregisterAssetWithIdentifier:(uint64_t)identifier completion:;
@end

@implementation PHASEAssetRegistry

- (NSDictionary)globalMetaParameters
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:selfCopy->_metaParameterDictionary];
  objc_sync_exit(selfCopy);

  return v3;
}

- (PHASEAssetRegistry)init
{
  [(PHASEAssetRegistry *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)sizeInBytes
{
  next = self->_assetLookup.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += [next[3] sizeInBytes];
    next = *next;
  }

  while (next);
  return v3;
}

- (PHASEAssetRegistry)initWithEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = PHASEAssetRegistry;
  v5 = [(PHASEAssetRegistry *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engine, engineCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metaParameterDictionary = v6->_metaParameterDictionary;
    v6->_metaParameterDictionary = v7;
  }

  return v6;
}

- (id)registerJSONDataBundleWithURL:(id)l assetBaseURL:(id)rL uid:(id)uid outError:(id *)error
{
  v6 = [(PHASEAssetRegistry *)self registerJSONDataBundleWithURL:l assetBaseURL:rL identifier:uid error:error];

  return v6;
}

- (id)registerJSONDataBundleWithURL:(id)l assetBaseURL:(id)rL identifier:(id)identifier error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  identifierCopy = identifier;
  if (error)
  {
    *error = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (WeakRetained && [WeakRetained implementation])
  {
    if (!identifierCopy)
    {
      identifierCopy = [(PHASEAssetRegistry *)self getUniqueIdentifier];
    }

    v16 = identifierCopy;
    StringHashId = Phase::GetStringHashId(identifierCopy, v11);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, StringHashId);
    if (v13)
    {
      v14 = **Phase::Logger::GetInstance(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "PHASEAssetRegistry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 548;
        *&buf[18] = 2080;
        *&buf[20] = [(Phase *)identifierCopy UTF8String];
        *&buf[28] = 2080;
        *&buf[30] = [(Phase *)identifierCopy UTF8String];
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Asset %s already exists. Not loading databundle %s", buf, 0x26u);
      }

      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920804 userInfo:0];
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      objc_sync_exit(selfCopy);

      memset(buf, 0, 32);
      *&buf[32] = 1065353216;
      Phase::MakeDataBundleFromJSONFile([(Phase *)identifierCopy UTF8String], lCopy, error, &v20);
      if (v20)
      {
        Phase::BuildStringPool();
      }

      std::unique_ptr<Phase::DataBundle>::reset[abi:ne200100](&v20, 0);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(buf);
    }
  }

  else
  {
    v16 = identifierCopy;
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920802 userInfo:0];
    }
  }

  return 0;
}

- (unique_ptr<Phase::Controller::SoundAssetInfo,)makeSoundAssetInfoWithURL:(id)l assetString:(const char *)string assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(double)s ownerTask:(unsigned int)task outError:(id *)self0
{
  v15 = v10;
  lCopy = l;
  layoutCopy = layout;
  if (error)
  {
    *error = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v19 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    if (string)
    {
      v20 = *string;
      if (*string)
      {
        v21 = string + 1;
        v22 = 0xCBF29CE484222325;
        do
        {
          v22 = 0x100000001B3 * (v22 ^ v20);
          v23 = *v21++;
          v20 = v23;
        }

        while (v23);
      }
    }

    if (type == 1)
    {
      operator new();
    }

    if (!type)
    {
      operator new();
    }

    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:{@"Unhandled Asset Type: %lu", type}];
    *v15 = 0;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920802 userInfo:0];
    }

    *v15 = 0;
  }

  return v24;
}

- (id)registerSoundAssetWithURL:(id)l uid:(id)uid assetType:(int64_t)type channelLayout:(id)layout referenceGainDBSPL:(double)pL outError:(id *)error
{
  lCopy = l;
  uidCopy = uid;
  layoutCopy = layout;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v19) = *MEMORY[0x277D85F48];
  v17 = [(PHASEAssetRegistry *)self registerSoundAssetAtURL:lCopy identifier:uidCopy assetType:type channelLayout:layoutCopy normalizationMode:1 targetLKFS:v16 ownerTask:v19 error:error];

  return v17;
}

- (PHASESoundAsset)registerSoundAssetAtURL:(NSURL *)url identifier:(NSString *)identifier assetType:(PHASEAssetType)assetType channelLayout:(AVAudioChannelLayout *)channelLayout normalizationMode:(PHASENormalizationMode)normalizationMode error:(NSError *)error
{
  v14 = url;
  v15 = identifier;
  v16 = channelLayout;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v20) = *MEMORY[0x277D85F48];
  v18 = [(PHASEAssetRegistry *)self registerSoundAssetAtURL:v14 identifier:v15 assetType:assetType channelLayout:v16 normalizationMode:normalizationMode targetLKFS:v17 ownerTask:v20 error:error];

  return v18;
}

- (id)registerSoundAssetAtURL:(id)l identifier:(id)identifier assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)error
{
  lCopy = l;
  identifierCopy = identifier;
  layoutCopy = layout;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v21) = task;
  v19 = [(PHASEAssetRegistry *)self registerSoundAssetAtURL:lCopy identifier:identifierCopy assetType:type channelLayout:layoutCopy normalizationMode:mode targetLKFS:v18 ownerTask:v21 error:error];

  return v19;
}

- (id)registerSoundAssetAtURL:(id)l identifier:(id)identifier assetType:(int64_t)type channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)task error:(id *)self0
{
  lCopy = l;
  identifierCopy = identifier;
  layoutCopy = layout;
  sCopy = s;
  if (error)
  {
    *error = 0;
  }

  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = NSStringFromSelector(a2);
  [sCopy doubleValue];
  v24 = PHASEGetPropertyBounded<double>(v21, v22, v23, -100.0, 0.0);

  if (!identifierCopy)
  {
    identifierCopy = [(PHASEAssetRegistry *)self getUniqueIdentifier];
  }

  -[PHASEAssetRegistry makeSoundAssetInfoWithURL:assetString:assetType:channelLayout:normalizationMode:targetLKFS:ownerTask:outError:](self, "makeSoundAssetInfoWithURL:assetString:assetType:channelLayout:normalizationMode:targetLKFS:ownerTask:outError:", lCopy, [identifierCopy UTF8String], type, layoutCopy, mode, task, v24, error);
  if (v38)
  {
    [(PHASEAssetRegistry *)self makeStringPoolForSingleAsset:identifierCopy outError:error];
    v25 = [PHASESoundAsset alloc];
    v26 = v38;
    v38 = 0;
    v36 = v26;
    v27 = [(PHASESoundAsset *)v25 initWithURL:lCopy uid:identifierCopy assetType:type normalizationMode:mode soundAssetInfo:&v36 assetRegistry:self weakStringPoolReference:v37];
    v28 = v36;
    v36 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    if (v27 && (v29 = v37, v37 = 0, v35 = v29, v30 = -[PHASEAssetRegistry addAssetInternal:stringPool:outError:](self, "addAssetInternal:stringPool:outError:", v27, &v35, error), std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&v35), v30))
    {
      v31 = v27;
    }

    else
    {
      v31 = 0;
    }

    std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&v37);
    v32 = v38;
    v38 = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)registerSoundAssetWithData:(id)data uid:(id)uid format:(id)format referenceGainDBSPL:(double)l outError:(id *)error
{
  dataCopy = data;
  uidCopy = uid;
  formatCopy = format;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  v15 = [(PHASEAssetRegistry *)self registerSoundAssetWithData:dataCopy identifier:uidCopy format:formatCopy normalizationMode:1 targetLKFS:v14 ownerTask:*MEMORY[0x277D85F48] error:error];

  return v15;
}

- (PHASESoundAsset)registerSoundAssetWithData:(NSData *)data identifier:(NSString *)identifier format:(AVAudioFormat *)format normalizationMode:(PHASENormalizationMode)normalizationMode error:(NSError *)error
{
  v12 = data;
  v13 = identifier;
  v14 = format;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  v16 = [(PHASEAssetRegistry *)self registerSoundAssetWithData:v12 identifier:v13 format:v14 normalizationMode:normalizationMode targetLKFS:v15 ownerTask:*MEMORY[0x277D85F48] error:error];

  return v16;
}

- (id)registerSoundAssetWithData:(id)data identifier:(id)identifier format:(id)format normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)error
{
  v9 = *&task;
  dataCopy = data;
  identifierCopy = identifier;
  formatCopy = format;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  v18 = [(PHASEAssetRegistry *)self registerSoundAssetWithData:dataCopy identifier:identifierCopy format:formatCopy normalizationMode:mode targetLKFS:v17 ownerTask:v9 error:error];

  return v18;
}

- (id)registerSoundAssetWithData:(id)data identifier:(id)identifier format:(id)format normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)task error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  formatCopy = format;
  sCopy = s;
  if (error)
  {
    *error = 0;
    if (!formatCopy)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920803 userInfo:0];
      goto LABEL_14;
    }
  }

  else if (!formatCopy)
  {
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v18 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    if (!identifierCopy)
    {
      identifierCopy = [(PHASEAssetRegistry *)self getUniqueIdentifier];
    }

    Phase::GetStringHashId(identifierCopy, v19);
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    [sCopy doubleValue];
    PHASEGetPropertyBounded<double>(v21, v22, v23, -100.0, 0.0);

    operator new();
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920802 userInfo:0];
  }

LABEL_14:

  return 0;
}

- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout error:(id *)error
{
  v10 = *&hint;
  dataCopy = data;
  identifierCopy = identifier;
  layoutCopy = layout;
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v20) = *MEMORY[0x277D85F48];
  v18 = [(PHASEAssetRegistry *)self registerSoundAssetWithAudioFileData:dataCopy identifier:identifierCopy assetType:type fileTypeHint:v10 channelLayout:layoutCopy normalizationMode:0 targetLKFS:v17 ownerTask:v20 error:error];

  return v18;
}

- (id)registerSoundAssetWithAudioFileData:(id)data uid:(id)uid assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout referenceGainDBSPL:(double)l outError:(id *)error
{
  v11 = *&hint;
  dataCopy = data;
  uidCopy = uid;
  layoutCopy = layout;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v21) = *MEMORY[0x277D85F48];
  v19 = [(PHASEAssetRegistry *)self registerSoundAssetWithAudioFileData:dataCopy identifier:uidCopy assetType:type fileTypeHint:v11 channelLayout:layoutCopy normalizationMode:1 targetLKFS:v18 ownerTask:v21 error:error];

  return v19;
}

- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode error:(id *)error
{
  v11 = *&hint;
  dataCopy = data;
  identifierCopy = identifier;
  layoutCopy = layout;
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v21) = *MEMORY[0x277D85F48];
  v19 = [(PHASEAssetRegistry *)self registerSoundAssetWithAudioFileData:dataCopy identifier:identifierCopy assetType:type fileTypeHint:v11 channelLayout:layoutCopy normalizationMode:mode targetLKFS:v18 ownerTask:v21 error:error];

  return v19;
}

- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode ownerTask:(unsigned int)task error:(id *)self0
{
  v12 = *&hint;
  dataCopy = data;
  identifierCopy = identifier;
  layoutCopy = layout;
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
  LODWORD(v22) = task;
  v20 = [(PHASEAssetRegistry *)self registerSoundAssetWithAudioFileData:dataCopy identifier:identifierCopy assetType:type fileTypeHint:v12 channelLayout:layoutCopy normalizationMode:mode targetLKFS:v19 ownerTask:v22 error:error];

  return v20;
}

- (id)registerSoundAssetWithAudioFileData:(id)data identifier:(id)identifier assetType:(int64_t)type fileTypeHint:(unsigned int)hint channelLayout:(id)layout normalizationMode:(int64_t)mode targetLKFS:(id)s ownerTask:(unsigned int)self0 error:(id *)self1
{
  v37[6] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  layoutCopy = layout;
  sCopy = s;
  if (error)
  {
    *error = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v19 = WeakRetained;
  if (!WeakRetained || ![WeakRetained implementation])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920802 userInfo:0];
      *error = v25 = 0;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (!identifierCopy)
  {
    identifierCopy = [(PHASEAssetRegistry *)self getUniqueIdentifier];
  }

  Phase::GetStringHashId(identifierCopy, v20);
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  v23 = NSStringFromSelector(a2);
  [sCopy doubleValue];
  PHASEGetPropertyBounded<double>(v22, v23, v24, -100.0, 0.0);

  if (!type)
  {
    operator new();
  }

  if (type == 1)
  {
    operator new();
  }

  [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:{@"Unhandled Asset Type: %lu", type}];
  [(PHASEAssetRegistry *)self makeStringPoolForSingleAsset:identifierCopy outError:error];
  if (!v37[0])
  {
    std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](v37);
LABEL_20:
    v25 = 0;
    goto LABEL_25;
  }

  v26 = [PHASESoundAsset alloc];
  v36[0] = 0;
  v27 = [(PHASESoundAsset *)v26 initWithData:dataCopy uid:identifierCopy normalizationMode:mode soundAssetInfo:v36 assetRegistry:self weakStringPoolReference:v37[0]];
  v28 = v36[0];
  v36[0] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (!v27)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920806 userInfo:0];
      *error = v25 = 0;
      goto LABEL_24;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v29 = v37[0];
  v37[0] = 0;
  v35 = v29;
  v30 = [(PHASEAssetRegistry *)self addAssetInternal:v27 stringPool:&v35 outError:error];
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&v35);
  if (!v30)
  {
    goto LABEL_23;
  }

  v25 = v27;
LABEL_24:

  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](v37);
LABEL_25:

  return v25;
}

- (id)makeMetaParameterFromDefinition:(id)definition
{
  definitionCopy = definition;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = definitionCopy;
    v6 = [PHASENumberMetaParameter alloc];
    identifier = [v5 identifier];
    value = [v5 value];
    [value doubleValue];
    v10 = v9;
    [v5 minimum];
    v12 = v11;
    [v5 maximum];
    v14 = [(PHASENumberMetaParameter *)v6 initWithUID:identifier value:self rangeMin:v10 rangeMax:v12 delegate:v13];
LABEL_5:
    v17 = v14;

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = definitionCopy;
    v16 = [PHASEStringMetaParameter alloc];
    identifier = [v15 identifier];
    value = [v15 value];
    v14 = [(PHASEStringMetaParameter *)v16 initWithUID:identifier value:value delegate:self];
    goto LABEL_5;
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (PHASEGlobalMetaParameterAsset)registerGlobalMetaParameter:(PHASEMetaParameterDefinition *)metaParameterDefinition error:(NSError *)error
{
  v6 = metaParameterDefinition;
  if (error)
  {
    *error = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
  allKeys = [(NSMutableDictionary *)selfCopy->_metaParameterDictionary allKeys];
  v10 = [PHASEActionTreeBuilder getParamArray:v8 globalParamUIDs:allKeys outError:error];

  objc_sync_exit(selfCopy);
  if (v10)
  {
    memset(v13, 0, sizeof(v13));
    v14 = 1065353216;
    Phase::MakeGlobalMetaParameters(v10, v13, error, &v12);
    if (v12)
    {
      operator new();
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v13);
  }

  return 0;
}

- (id)registerActionTreeWithRootNode:(id)node uid:(id)uid outError:(id *)error
{
  v5 = [(PHASEAssetRegistry *)self registerSoundEventAssetWithRootNode:node uid:uid error:error];

  return v5;
}

- (id)registerSoundEventAssetWithRootNode:(id)node uid:(id)uid error:(id *)error
{
  v5 = [(PHASEAssetRegistry *)self registerSoundEventAssetWithRootNode:node identifier:uid error:error];

  return v5;
}

- (PHASESoundEventNodeAsset)registerSoundEventAssetWithRootNode:(PHASESoundEventNodeDefinition *)rootNode identifier:(NSString *)identifier error:(NSError *)error
{
  v8 = rootNode;
  getUniqueIdentifier = identifier;
  if (error)
  {
    *error = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    if (!getUniqueIdentifier)
    {
      getUniqueIdentifier = [(PHASEAssetRegistry *)self getUniqueIdentifier];
    }

    v12 = objc_alloc_init(PHASEActionTreeBuilder);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allKeys = [(NSMutableDictionary *)selfCopy->_metaParameterDictionary allKeys];
    objc_sync_exit(selfCopy);

    v15 = [MEMORY[0x277CBEA60] arrayWithObject:v8];
    v16 = [(PHASEActionTreeBuilder *)v12 createParseableDictionaryWithUID:getUniqueIdentifier rootNodes:v15 globalParamUIDs:allKeys assetRegistry:selfCopy outError:error];

    if (v16)
    {
      memset(v18, 0, sizeof(v18));
      v19 = 1065353216;
      Phase::MakeActionTree(v16, v18, objc_alloc_init(ActionTreeProgrammaticDetails), error);
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920802 userInfo:0];
  }

  return 0;
}

- (id)getUniqueIdentifier
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)setMetaParameter:(id)parameter value:(id)value
{
  parameterCopy = parameter;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    v9 = Phase::Controller::TaskManager::GetService<Phase::GlobalMetaParameterManager>(([v8 implementation] + 48), 6);
    uTF8String = [valueCopy UTF8String];
    if (uTF8String && (v11 = *uTF8String, *uTF8String))
    {
      v12 = 0xCBF29CE484222325;
      v13 = uTF8String + 1;
      do
      {
        v12 = 0x100000001B3 * (v12 ^ v11);
        v14 = *v13++;
        v11 = v14;
      }

      while (v14);
    }

    else
    {
      v12 = 0;
    }

    uTF8String2 = [parameterCopy UTF8String];
    if (uTF8String2 && (v16 = *uTF8String2, *uTF8String2))
    {
      v17 = 0xCBF29CE484222325;
      v18 = uTF8String2 + 1;
      do
      {
        v17 = 0x100000001B3 * (v17 ^ v16);
        v19 = *v18++;
        v16 = v19;
      }

      while (v19);
    }

    else
    {
      v17 = 0;
    }

    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::GlobalMetaParameterManager,BOOL,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(v9, v17, 2, v12, 0.0);
  }
}

- (void)setMetaParameter:(id)parameter value:(double)value withTimeInterval:(double)interval
{
  parameterCopy = parameter;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v9 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    v10 = Phase::Controller::TaskManager::GetService<Phase::GlobalMetaParameterManager>(([v9 implementation] + 48), 6);
    uTF8String = [parameterCopy UTF8String];
    if (uTF8String && (v12 = *uTF8String, *uTF8String))
    {
      v13 = uTF8String + 1;
      v14 = 0xCBF29CE484222325;
      do
      {
        v14 = 0x100000001B3 * (v14 ^ v12);
        v15 = *v13++;
        v12 = v15;
      }

      while (v15);
    }

    else
    {
      v14 = 0;
    }

    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::GlobalMetaParameterManager,BOOL,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(v10, v14, 1, *&value, interval);
  }
}

- (id)getAssetForUID:(id)d
{
  v3 = [(PHASEAssetRegistry *)self assetForIdentifier:d];

  return v3;
}

- (PHASEAsset)assetForIdentifier:(NSString *)identifier
{
  v4 = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  StringHashId = Phase::GetStringHashId(v4, v6);
  v8 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, StringHashId);
  if (v8)
  {
    v9 = v8[3];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)unregisterAssetWithIdentifier:(NSString *)identifier completion:(void *)handler
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = identifier;
  v7 = handler;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v9 = WeakRetained;
  if (WeakRetained && [WeakRetained implementation])
  {
    v10 = [(PHASEAssetRegistry *)self assetForIdentifier:v6];
    if (v10)
    {
      if (atomic_load(([v9 implementation] + 24)))
      {
        v12 = Phase::Controller::TaskManager::GetService<Phase::Controller::AssetUnloader>(([v9 implementation] + 48), 12);
        v13 = v10;
        v14 = _Block_copy(v7);
        v15 = **(v12 + 8);
        v23 = 0;
        v22 = 1;
        v16 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v15, 32, &v23, &v22);
        if (!v16)
        {
          Instance = Phase::Logger::GetInstance(0);
          Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
          v20 = **(v15 + 48);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "CommandQueue.hpp";
            v26 = 1024;
            v27 = 100;
            _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        }

        if (v22)
        {
          v17 = **(v15 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v25 = "CommandQueue.hpp";
            v26 = 1024;
            v27 = 89;
            v28 = 2048;
            v29 = v23;
            v30 = 2048;
            v31 = 32;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
          }
        }

        *v16 = &unk_284D35D10;
        v16[1] = v12;
        v16[2] = v13;
        v16[3] = v14;
        Phase::LockFreeQueueSPSC::CommitBytes(v15, 32);
        atomic_store(0, (v15 + 40));

        goto LABEL_15;
      }

      [(PHASEAssetRegistry *)self removeAssetInternal:v10];
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      v18 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "PHASEAssetRegistry.mm";
        v26 = 1024;
        v27 = 1684;
        _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Bad parameters when unregistering asset with identifier, aseet is nil.", buf, 0x12u);
      }

LABEL_14:
      (*(v7 + 2))(v7, v10 != 0);
    }

LABEL_15:
  }
}

- (id)mixerInformationForActionTreeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(PHASEAssetRegistry *)self assetForIdentifier:identifierCopy];
  getActionTree = [v5 getActionTree];
  v7 = getActionTree;
  if (getActionTree && *(getActionTree + 96))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 104);
      v11 = [v5 getNullableString:*(v10 + v8)];
      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
        v13 = objc_alloc_init(PHASEMixerInformation);
        [(PHASEMixerInformation *)v13 setMixerType:*(v10 + v8 + 8)];
        [(PHASEMixerInformation *)v13 setIdentifier:v12];
        [v4 addObject:v13];
      }

      ++v9;
      v8 += 5944;
    }

    while (v9 < *(v7 + 96));
  }

  return v4;
}

- (unique_ptr<Phase::StringPool,)makeStringPoolForSingleAsset:(id)asset outError:(id *)error
{
  LODWORD(v4) = 1065353216;
  [asset UTF8String];
  operator new();
}

- (void)logAddAsset:(id)asset
{
  v22 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = **Phase::Logger::GetInstance(assetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(Phase::Logger *)assetCopy identifier];
    uTF8String = [identifier UTF8String];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = 136316418;
    v11 = "PHASEAssetRegistry.mm";
    v12 = 1024;
    v13 = 1796;
    v14 = 2080;
    v15 = uTF8String;
    v16 = 2080;
    uTF8String2 = [v9 UTF8String];
    v18 = 2048;
    v19 = ([(Phase::Logger *)assetCopy sizeInBytes]/ 1000000.0);
    v20 = 2048;
    v21 = ([(PHASEAssetRegistry *)self sizeInBytes]/ 1000000.0);
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added Asset with name: %s, type: %s, size: %1.3f MB (total size: %1.3f MB)", &v10, 0x3Au);
  }
}

- (void)logRemoveAsset:(id)asset
{
  v22 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sizeInBytes = [assetCopy sizeInBytes];
  v8 = **Phase::Logger::GetInstance(sizeInBytes);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [assetCopy identifier];
    v10 = 136316418;
    v11 = "PHASEAssetRegistry.mm";
    v12 = 1024;
    v13 = 1808;
    v14 = 2080;
    uTF8String = [identifier UTF8String];
    v16 = 2080;
    uTF8String2 = [v6 UTF8String];
    v18 = 2048;
    v19 = (sizeInBytes / 1000000.0);
    v20 = 2048;
    v21 = ([(PHASEAssetRegistry *)self sizeInBytes]/ 1000000.0);
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removed Asset with name: %s, type: %s, size: %1.3f MB (total size: %1.3f MB)", &v10, 0x3Au);
  }
}

- (BOOL)addAssetInternal:(id)internal stringPool:()unique_ptr<Phase:(std:(id *)phase :default_delete<Phase::StringPool>>)a4 :StringPool outError:
{
  internalCopy = internal;
  v9 = internalCopy;
  if (phase)
  {
    *phase = 0;
  }

  identifier = [internalCopy identifier];
  StringHashId = Phase::GetStringHashId(identifier, v11);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = *a4.var0;
  *a4.var0 = 0;
  v24 = v14;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::unique_ptr<Phase::StringPool>>>(&selfCopy->_stringPools.__table_.__bucket_list_.__ptr_, StringHashId);
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&v24);
  if (phase && (v15 & 1) == 0)
  {
    *phase = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920804 userInfo:0];
  }

  v16 = v9;
  size = selfCopy->_assetLookup.__table_.__bucket_list_.__deleter_.__size_;
  if (!*&size)
  {
    goto LABEL_23;
  }

  v18 = vcnt_s8(size);
  v18.i16[0] = vaddlv_u8(v18);
  if (v18.u32[0] > 1uLL)
  {
    v19 = StringHashId;
    if (*&size <= StringHashId)
    {
      v19 = StringHashId % *&size;
    }
  }

  else
  {
    v19 = (*&size - 1) & StringHashId;
  }

  v20 = selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_[v19];
  if (!v20 || (v21 = *v20) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v22 = v21[1];
    if (v22 == StringHashId)
    {
      break;
    }

    if (v18.u32[0] > 1uLL)
    {
      if (v22 >= *&size)
      {
        v22 %= *&size;
      }
    }

    else
    {
      v22 &= *&size - 1;
    }

    if (v22 != v19)
    {
      goto LABEL_23;
    }

LABEL_22:
    v21 = *v21;
    if (!v21)
    {
      goto LABEL_23;
    }
  }

  if (v21[2] != StringHashId)
  {
    goto LABEL_22;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__erase_unique<unsigned long long>(&selfCopy->_stringPools, StringHashId);
  if (phase)
  {
    *phase = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920804 userInfo:0];
  }

  objc_sync_exit(selfCopy);

  return 0;
}

- (BOOL)removeAssetInternal:(id)internal
{
  v43 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  v5 = internalCopy;
  if (internalCopy)
  {
    owningDataBundleIdentifier = [internalCopy owningDataBundleIdentifier];

    if (owningDataBundleIdentifier)
    {
      selfCopy = **(Phase::Logger::GetInstance(v7) + 448);
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
      {
        identifier = [v5 identifier];
        owningDataBundleIdentifier2 = [v5 owningDataBundleIdentifier];
        v35 = 136315906;
        v36 = "PHASEAssetRegistry.mm";
        v37 = 1024;
        v38 = 1886;
        v39 = 2112;
        v40 = identifier;
        v41 = 2112;
        v42 = owningDataBundleIdentifier2;
        _os_log_impl(&dword_23A302000, &selfCopy->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Trying to remove asset %@ that is owned by a data bundle %@.  Remove the data bundle to remove the asset.  Ignoring.", &v35, 0x26u);
      }

      goto LABEL_5;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v5 getDataBundle])
      {
        std::terminate();
      }

      next = selfCopy->_assetLookup.__table_.__first_node_.__next_;
      while (next)
      {
        owningDataBundleIdentifier3 = [next[3] owningDataBundleIdentifier];
        identifier2 = [v5 identifier];
        v15 = owningDataBundleIdentifier3 == identifier2;

        if (v15)
        {
          v16 = next[3];
          v17 = *next;
          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(&v35, &selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, next);
          std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
          [(PHASEAssetRegistry *)selfCopy logRemoveAsset:v16];

          next = v17;
        }

        else
        {
          next = *next;
        }
      }

      identifier3 = [v5 identifier];
      StringHashId = Phase::GetStringHashId(identifier3, v28);

      std::__hash_table<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>>>::__erase_unique<unsigned long long>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, StringHashId);
      std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__erase_unique<unsigned long long>(&selfCopy->_stringPools, StringHashId);
      [(PHASEAssetRegistry *)selfCopy logRemoveAsset:v5];
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metaParameterDictionary = selfCopy->_metaParameterDictionary;
      identifier4 = [v5 identifier];
      v20 = [(NSMutableDictionary *)metaParameterDictionary objectForKeyedSubscript:identifier4];

      if (v20)
      {
        [v20 setDelegate:0];
        v21 = selfCopy->_metaParameterDictionary;
        identifier5 = [v5 identifier];
        [(NSMutableDictionary *)v21 removeObjectForKey:identifier5];
      }

      identifier6 = [v5 identifier];
      v25 = Phase::GetStringHashId(identifier6, v24);

      v26 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, v25);
      if (v26)
      {
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(&v35, &selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, v26);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
        std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__erase_unique<unsigned long long>(&selfCopy->_stringPools, v25);
        [(PHASEAssetRegistry *)selfCopy logRemoveAsset:v5];

LABEL_22:
        objc_sync_exit(selfCopy);
        v11 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      identifier7 = [v5 identifier];
      v32 = Phase::GetStringHashId(identifier7, v31);

      v33 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, v32);
      if (v33)
      {
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(&v35, &selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, v33);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](&v35);
        std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__erase_unique<unsigned long long>(&selfCopy->_stringPools, v32);
        [(PHASEAssetRegistry *)selfCopy logRemoveAsset:v5];
        goto LABEL_22;
      }
    }

    objc_sync_exit(selfCopy);
LABEL_5:
    v11 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v11 = 0;
LABEL_24:

  return v11;
}

- (void)removeAll
{
  next = self->_assetLookup.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          next = *next;
          if (!next)
          {
            goto LABEL_9;
          }
        }

        if (![(PHASEAssetRegistry *)self removeAssetInternal:next[3]])
        {
          break;
        }

        next = self->_assetLookup.__table_.__first_node_.__next_;
        if (!next)
        {
          goto LABEL_9;
        }
      }

      v4 = *next;
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(v7, &self->_assetLookup.__table_.__bucket_list_.__ptr_, next);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v7);
      next = v4;
    }

    while (v4);
LABEL_9:
    while (1)
    {
      v5 = self->_assetLookup.__table_.__first_node_.__next_;
      if (!v5)
      {
        break;
      }

      while (![(PHASEAssetRegistry *)self removeAssetInternal:v5[3]])
      {
        v6 = *v5;
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(v7, &self->_assetLookup.__table_.__bucket_list_.__ptr_, v5);
        std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v7);
        v5 = v6;
        if (!v6)
        {
          return;
        }
      }
    }
  }
}

- (id)assetInfoString:(int64_t)string
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = self->_assetLookup.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = objc_alloc_init(AssetInfo);
    identifier = [i[3] identifier];
    identifier = v7->identifier;
    v7->identifier = identifier;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    type = v7->type;
    v7->type = v11;

    v7->sizeInBytes = [i[3] sizeInBytes];
    [v5 addObject:v7];
  }

  if (string == 1935753580)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1 selector:sel_caseInsensitiveCompare_];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v5 sortUsingDescriptors:v14];
  }

  else
  {
    if (string != 1935758451)
    {
      goto LABEL_8;
    }

    v13 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"type" ascending:1];
    v14 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"sizeInBytes" ascending:0];
    v28[0] = v13;
    v28[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    [v5 sortUsingDescriptors:v15];
  }

LABEL_8:
  v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v16 appendString:@"\n=== Asset Registry ===\n"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"asset name: %@, type: %@, size: %1.3f MB\n", *(*(*(&v23 + 1) + 8 * j) + 8), *(*(*(&v23 + 1) + 8 * j) + 16), (*(*(*(&v23 + 1) + 8 * j) + 24) / 1000000.0)];
        [v16 appendString:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [v16 appendString:@"\n"];

  return v16;
}

- (const)getSoundAssetInfo:(unint64_t)info
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, info);
  if (v5)
  {
    v6 = v5[3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      getAssetInfo = [v6 getAssetInfo];
    }

    else
    {
      getAssetInfo = 0;
    }
  }

  else
  {
    getAssetInfo = 0;
  }

  objc_sync_exit(selfCopy);

  return getAssetInfo;
}

- (const)getActionTree:(unint64_t)tree
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, tree);
  if (v5)
  {
    v6 = v5[3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      getActionTree = [v6 getActionTree];
    }

    else
    {
      getActionTree = 0;
    }
  }

  else
  {
    getActionTree = 0;
  }

  objc_sync_exit(selfCopy);

  return getActionTree;
}

- (const)getChannelMapping:(unint64_t)mapping
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_sync_exit(selfCopy);

  return 0;
}

- (id)getGlobalMetaParameter:(unint64_t)parameter
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(&selfCopy->_assetLookup.__table_.__bucket_list_.__ptr_, parameter);
  if (v5)
  {
    v6 = v5[3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

- (void)unregisterAssetWithIdentifier:(uint64_t)identifier completion:
{

  JUMPOUT(0x23EE864A0);
}

@end