@interface PHASESoundPrototype
- (NSArray)mixerInformation;
- (PHASESoundPrototype)init;
- (PHASESoundPrototype)initWithEngine:(id)a3 actionTreeRootNode:(id)a4 error:(id *)a5;
- (PHASESoundPrototype)initWithEngine:(id)a3 registeredActionTreeIdentifier:(id)a4 error:(id *)a5;
- (void)deRegister;
- (void)dealloc;
@end

@implementation PHASESoundPrototype

- (PHASESoundPrototype)init
{
  [(PHASESoundPrototype *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESoundPrototype)initWithEngine:(id)a3 registeredActionTreeIdentifier:(id)a4 error:(id *)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  if (v8)
  {
    v22.receiver = self;
    v22.super_class = PHASESoundPrototype;
    v10 = [(PHASESoundPrototype *)&v22 init];
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_engine, v8);
      objc_storeStrong(&v11->_assetIdentifier, a4);
      programmaticAPIAsset = v11->_programmaticAPIAsset;
      v11->_programmaticAPIAsset = 0;
    }

    self = v11;
    v13 = self;
  }

  else
  {
    v14 = *MEMORY[0x277CCA450];
    v29 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v30[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v18 = **(Phase::Logger::GetInstance(v17) + 448);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 objectForKeyedSubscript:v14];
      v20 = v19;
      *buf = 136315650;
      v24 = "PHASESoundPrototype.mm";
      v25 = 1024;
      v26 = 47;
      v27 = 2080;
      v28 = [v19 UTF8String];
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346913633 userInfo:v16];
    }

    v13 = 0;
  }

  return v13;
}

- (PHASESoundPrototype)initWithEngine:(id)a3 actionTreeRootNode:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 && ((v21.receiver = self, v21.super_class = PHASESoundPrototype, v10 = -[PHASESoundPrototype init](&v21, sel_init), (self = v10) == 0) || (v11 = objc_storeWeak(&v10->_engine, v8), [v8 assetRegistry], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "getUniqueIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), assetIdentifier = self->_assetIdentifier, self->_assetIdentifier = v13, assetIdentifier, v12, v8, WeakRetained = objc_loadWeakRetained(&self->_engine), objc_msgSend(WeakRetained, "assetRegistry"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "registerSoundEventAssetWithRootNode:identifier:error:", v9, self->_assetIdentifier, a5), v17 = objc_claimAutoreleasedReturnValue(), programmaticAPIAsset = self->_programmaticAPIAsset, self->_programmaticAPIAsset = v17, programmaticAPIAsset, v16, WeakRetained, self->_programmaticAPIAsset)))
  {
    self = self;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)deRegister
{
  if (self->_programmaticAPIAsset)
  {
    WeakRetained = objc_loadWeakRetained(&self->_engine);
    v4 = [WeakRetained assetRegistry];
    v5 = [(PHASEAsset *)self->_programmaticAPIAsset identifier];
    [v4 unregisterAssetWithIdentifier:v5 completion:0];

    programmaticAPIAsset = self->_programmaticAPIAsset;
    self->_programmaticAPIAsset = 0;
  }
}

- (void)dealloc
{
  if (self->_programmaticAPIAsset)
  {
    [(PHASESoundPrototype *)self deRegister];
  }

  v3.receiver = self;
  v3.super_class = PHASESoundPrototype;
  [(PHASESoundPrototype *)&v3 dealloc];
}

- (NSArray)mixerInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v4 = [WeakRetained assetRegistry];
  v5 = [v4 mixerInformationForActionTreeWithIdentifier:self->_assetIdentifier];

  return v5;
}

@end