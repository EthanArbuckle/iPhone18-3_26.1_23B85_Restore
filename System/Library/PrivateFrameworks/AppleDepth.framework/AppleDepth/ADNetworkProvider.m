@interface ADNetworkProvider
+ (BOOL)getAndVerifySizesFromConfig:(id)a3 inDictionary:(id)a4 forKey:(id)a5 sizes:(id)a6 layout:(unint64_t *)a7;
+ (id)createRequestedLayoutsForDimensions:(id)a3;
+ (id)createRequestedLayoutsForDimensions:(id)a3 function:(id)a4;
+ (id)createRequestedLayoutsForDimensions:(id)a3 layout:(unint64_t)a4 function:(id)a5;
+ (id)getAlternativePathForNetwork:(id)a3;
+ (id)getConfigFolderForNetwork:(id)a3;
+ (id)getDefaultPathForNetwork:(id)a3 allowPrecompiledModel:(BOOL)a4;
+ (id)nonRunnableProviderForNetwork:(id)a3;
+ (id)nonRunnableProviderForNetwork:(id)a3 espressoEngine:(unint64_t)a4;
+ (id)nonRunnableProviderForNetwork:(id)a3 requestedLayouts:(id)a4;
+ (id)providerForNetwork:(id)a3;
+ (id)providerForNetwork:(id)a3 espressoEngine:(unint64_t)a4;
+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4;
+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4 espressoEngine:(unint64_t)a5 makeRunnable:(BOOL)a6;
+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4 makeRunnable:(BOOL)a5;
+ (id)supportedSizesForSizesDict:(id)a3 key:(id)a4 expectedPixelFormat:(unsigned int)a5;
+ (void)updateSizeForItem:(id)a3 fromShape:(id)a4 customStrides:(id)a5 forLayout:(unint64_t)a6 target:(id)a7;
- (ADNetworkProvider)initWithNetwork:(id)a3 requestedLayouts:(id)a4 espressoEngine:(unint64_t)a5 makeRunnable:(BOOL)a6;
- (BOOL)bufferExists:(id)a3 isInput:(BOOL)a4;
- (BOOL)processConfig:(id)a3 inDictionary:(id)a4 forLayout:(unint64_t)a5;
- (BOOL)readJsonMetadataFile:(id)a3 requestedLayouts:(id)a4;
- (id)descriptorForBuffer:(id)a3 isInput:(BOOL)a4 pixelFormat:(unsigned int)a5;
- (id)generateLayoutNamesDictForFunction:(id)a3;
- (id)layoutNamesDictForFunction:(id)a3;
- (id)metadataForKey:(id)a3;
- (id)supportedDimensionsForInput:(id)a3 expectedPixelFormat:(unsigned int)a4;
- (id)supportedSizesForInput:(id)a3 expectedPixelFormat:(unsigned int)a4;
- (id)supportedSizesForOutput:(id)a3 expectedPixelFormat:(unsigned int)a4;
@end

@implementation ADNetworkProvider

- (id)layoutNamesDictForFunction:(id)a3
{
  v3 = [(ADNetworkProvider *)self generateLayoutNamesDictForFunction:a3];

  return v3;
}

- (id)generateLayoutNamesDictForFunction:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ADModelBuilder *)self->_modelBuilder runnableModelPath];
  v6 = [v5 hasSuffix:@".net"];

  if (v6)
  {
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Using functions/heads for v1 networks is not supported", buf, 2u);
      }

      v7 = 0;
    }

    else
    {
      v7 = self->_layoutNamesDict;
    }
  }

  else
  {
    v7 = objc_opt_new();
    if (!v4)
    {
      v4 = @"main";
    }

    if ([(NSDictionary *)self->_layoutNamesDict count])
    {
      v25 = 0uLL;
      v26 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v8 = [(NSDictionary *)self->_layoutNamesDict allKeys];
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v9)
      {
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v23 + 1) + 8 * i);
            v13 = [(NSDictionary *)self->_layoutNamesDict objectForKeyedSubscript:v12];
            if ([v13 hasPrefix:v4])
            {
              [(NSDictionary *)v7 setObject:v13 forKeyedSubscript:v12];
            }
          }

          v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v21 = 0uLL;
      v22 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      v8 = self->_knownConfigs;
      v14 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v14)
      {
        v15 = *v20;
        while (2)
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v8);
            }

            v17 = *(*(&v19 + 1) + 8 * j);
            if ([v17 hasPrefix:{v4, v19}])
            {
              [(NSDictionary *)v7 setObject:v17 forKeyedSubscript:&unk_28524A788];
              goto LABEL_30;
            }
          }

          v14 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_30:
  }

  return v7;
}

- (id)metadataForKey:(id)a3
{
  v4 = a3;
  networkMetadata = self->_networkMetadata;
  if (networkMetadata)
  {
    v6 = [(NSDictionary *)networkMetadata objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ADNetworkProvider)initWithNetwork:(id)a3 requestedLayouts:(id)a4 espressoEngine:(unint64_t)a5 makeRunnable:(BOOL)a6
{
  v6 = a6;
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CEE958] hasANE];
  if (a5 - 3 < 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v45 = v10;
      v46 = 1024;
      v47 = v13;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "creating network provider for %@. precompiled model allowed: %d", buf, 0x12u);
      if (!v10)
      {
        goto LABEL_43;
      }

LABEL_10:
      v43.receiver = self;
      v43.super_class = ADNetworkProvider;
      v14 = [(ADNetworkProvider *)&v43 init];
      if (!v14)
      {
LABEL_49:
        self = v14;
        v34 = self;
        goto LABEL_50;
      }

      v40 = v6;
      v42 = v11;
      v15 = [ADNetworkProvider getDefaultPathForNetwork:v10 allowPrecompiledModel:v13];
      v16 = [ADNetworkProvider getAlternativePathForNetwork:v10];
      v17 = [v15 stringByResolvingSymlinksInPath];

      v18 = [v16 stringByResolvingSymlinksInPath];

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v17;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "found default network path: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v17;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "found default network path: %@", buf, 0xCu);
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v18;
          _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "found alternative network path: %@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v18;
        _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "found alternative network path: %@", buf, 0xCu);
      }

      v19 = v17;
      v20 = v19;
      if (v18)
      {
        v21 = v18;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "--- WARNING: Using alternative network path, which is not inside AppleDepth framework ---", buf, 2u);
        }
      }

      else
      {
        v21 = v19;
        if (!v19)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v45 = v10;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not find network files for requested model:%{public}@", buf, 0xCu);
          }

          goto LABEL_39;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v21;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "found network path: %@", buf, 0xCu);
      }

      v41 = findNetworkSupportingFile(&cfstr_BuildConfigPli.isa, v21, v18, v20);
      v22 = findNetworkSupportingFile(&cfstr_ModelJson.isa, v21, v18, v20);
      v23 = [ADNetworkProvider getConfigFolderForNetwork:v10];
      v24 = [v23 stringByAppendingString:@"__precompiled"];

      v25 = [MEMORY[0x277CED0D0] modelBuilderForModelPath:v21 destinationPath:v24 buildConfigPath:v41 forANE:v13];
      modelBuilder = v14->_modelBuilder;
      v14->_modelBuilder = v25;

      if ([(ADNetworkProvider *)v14 readJsonMetadataFile:v22 requestedLayouts:v42])
      {
        if (!v40)
        {
LABEL_48:

          v11 = v42;
          goto LABEL_49;
        }

        url = v14->_url;
        v14->_url = 0;

        if ([(ADModelBuilder *)v14->_modelBuilder makeRunnable])
        {
          v28 = MEMORY[0x277CBEBC0];
          v29 = [(ADModelBuilder *)v14->_modelBuilder runnableModelPath];
          v30 = [v28 URLWithString:v29];
          v31 = v14->_url;
          v14->_url = v30;
        }

        v32 = v14->_url;
        if (v32)
        {
          if (ADDebugUtilsADVerboseLogsEnabled == 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v33 = [(NSURL *)v32 absoluteString];
              *buf = 138412290;
              v45 = v33;
              _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "chosen network path: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v39 = [(NSURL *)v32 absoluteString];
            *buf = 138412290;
            v45 = v39;
            _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "chosen network path: %@", buf, 0xCu);
          }

          goto LABEL_48;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 0;
        v35 = MEMORY[0x277D86220];
        v36 = "could not compile network as requested";
        v37 = 2;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
LABEL_36:

LABEL_39:
          v34 = 0;
          self = v14;
          v11 = v42;
          goto LABEL_50;
        }

        *buf = 138543362;
        v45 = v10;
        v35 = MEMORY[0x277D86220];
        v36 = "failed parsing json metadata for requested model %{public}@";
        v37 = 12;
      }

      _os_log_error_impl(&dword_2402F6000, v35, OS_LOG_TYPE_ERROR, v36, buf, v37);
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_9:
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

  *buf = 138412546;
  v45 = v10;
  v46 = 1024;
  v47 = v13;
  _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "creating network provider for %@. precompiled model allowed: %d", buf, 0x12u);
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_43:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unable to initialize network provider: nil network name", buf, 2u);
  }

  v34 = 0;
LABEL_50:

  return v34;
}

- (BOOL)readJsonMetadataFile:(id)a3 requestedLayouts:(id)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v88 = a3;
  v89 = a4;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v88];
  v87 = v5;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:0];
    v93 = v6;
    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not read network metadata", buf, 2u);
      }

LABEL_80:
      v21 = 0;
      goto LABEL_87;
    }

    objc_storeStrong(&self->_networkMetadata, v6);
    v7 = [v89 allKeys];
    v86 = [v7 containsObject:&unk_28524A788];

    v8 = [(ADModelBuilder *)self->_modelBuilder runnableModelPath];
    if ([v8 hasSuffix:@".bundle"])
    {
      v9 = [v93 objectForKeyedSubscript:@"configurations"];
      v10 = [v9 count] != 0;

      v86 |= v10;
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    sizesForInput = self->_sizesForInput;
    self->_sizesForInput = v11;

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v13 = [v93 objectForKeyedSubscript:@"inputs"];
    v14 = [v13 allKeys];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v106 objects:v113 count:16];
    if (v15)
    {
      v16 = *v107;
      if (v86)
      {
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v107 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v106 + 1) + 8 * i);
            v19 = [v93 objectForKeyedSubscript:@"inputs"];
            v20 = [v19 objectForKeyedSubscript:v18];
          }

          v15 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
        }

        while (v15);
      }

      else
      {
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v107 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v106 + 1) + 8 * j);
            v24 = [v93 objectForKeyedSubscript:@"inputs"];
            v25 = [v24 objectForKeyedSubscript:v23];

            v26 = [v25 objectForKeyedSubscript:@"Shape"];
            v27 = [v25 objectForKeyedSubscript:@"CustomStrides"];
            [ADNetworkProvider updateSizeForItem:v23 fromShape:v26 customStrides:v27 forLayout:255 target:self->_sizesForInput];
          }

          v15 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
        }

        while (v15);
      }
    }

    v28 = [MEMORY[0x277CBEB38] dictionary];
    sizesForOutput = self->_sizesForOutput;
    self->_sizesForOutput = v28;

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v30 = [v93 objectForKeyedSubscript:@"outputs"];
    obja = [v30 allKeys];

    v31 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v31)
    {
      v32 = *v103;
      if (v86)
      {
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v103 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v34 = *(*(&v102 + 1) + 8 * k);
            v35 = [v93 objectForKeyedSubscript:@"outputs"];
            v36 = [v35 objectForKeyedSubscript:v34];
          }

          v31 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
        }

        while (v31);
      }

      else
      {
        do
        {
          for (m = 0; m != v31; ++m)
          {
            if (*v103 != v32)
            {
              objc_enumerationMutation(obja);
            }

            v38 = *(*(&v102 + 1) + 8 * m);
            v39 = [v93 objectForKeyedSubscript:@"outputs"];
            v40 = [v39 objectForKeyedSubscript:v38];

            v41 = [v40 objectForKeyedSubscript:@"Shape"];
            v42 = [v40 objectForKeyedSubscript:@"CustomStrides"];
            [ADNetworkProvider updateSizeForItem:v38 fromShape:v41 customStrides:v42 forLayout:255 target:self->_sizesForOutput];
          }

          v31 = [obja countByEnumeratingWithState:&v102 objects:v112 count:16];
        }

        while (v31);
      }
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(NSMutableDictionary *)self->_sizesForInput allKeys];
        *buf = 138412290;
        v115 = v43;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network inputs: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v81 = [(NSMutableDictionary *)self->_sizesForInput allKeys];
      *buf = 138412290;
      v115 = v81;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "network inputs: %@", buf, 0xCu);
    }

    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(NSMutableDictionary *)self->_sizesForOutput allKeys];
        *buf = 138412290;
        v115 = v44;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network outputs: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v82 = [(NSMutableDictionary *)self->_sizesForOutput allKeys];
      *buf = 138412290;
      v115 = v82;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "network outputs: %@", buf, 0xCu);
    }

    v45 = objc_opt_new();
    layoutNamesDict = self->_layoutNamesDict;
    self->_layoutNamesDict = v45;

    v47 = objc_opt_new();
    knownConfigs = self->_knownConfigs;
    self->_knownConfigs = v47;

    if (!v89)
    {
      goto LABEL_59;
    }

    if ([v89 count])
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v49 = v89;
      v50 = [v49 countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v50)
      {
        v51 = *v99;
        while (2)
        {
          for (n = 0; n != v50; ++n)
          {
            if (*v99 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v98 + 1) + 8 * n);
            v54 = [v49 objectForKeyedSubscript:v53];
            LOBYTE(v53) = -[ADNetworkProvider processConfig:inDictionary:forLayout:](self, "processConfig:inDictionary:forLayout:", v54, v93, [v53 integerValue]);

            if ((v53 & 1) == 0)
            {

              goto LABEL_80;
            }
          }

          v50 = [v49 countByEnumeratingWithState:&v98 objects:v111 count:16];
          if (v50)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_68;
    }

    if (![v89 count])
    {
      v79 = self->_layoutNamesDict;
      self->_layoutNamesDict = 0;

      v55 = 255;
    }

    else
    {
LABEL_59:
      v55 = 254;
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v56 = [v93 objectForKeyedSubscript:@"configurations"];
    v49 = [v56 allKeys];

    v57 = [v49 countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (v57)
    {
      v58 = *v95;
      while (2)
      {
        for (ii = 0; ii != v57; ++ii)
        {
          if (*v95 != v58)
          {
            objc_enumerationMutation(v49);
          }

          if (![(ADNetworkProvider *)self processConfig:*(*(&v94 + 1) + 8 * ii) inDictionary:v93 forLayout:v55])
          {

            goto LABEL_80;
          }
        }

        v57 = [v49 countByEnumeratingWithState:&v94 objects:v110 count:16];
        if (v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_68:

    if (!v89 && ![(NSMutableArray *)self->_knownConfigs count])
    {
      [(NSMutableArray *)self->_knownConfigs addObject:@"main"];
    }

    v60 = [v93 objectForKeyedSubscript:@"confidence_thresholds_for_bucketing"];
    if (v60 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v61 = v60;
      v62 = [(ADConfidenceLevelRanges *)v61 objectForKeyedSubscript:@"low"];
      if (!v62 || ([(ADConfidenceLevelRanges *)v61 objectForKeyedSubscript:@"high"], v63 = objc_claimAutoreleasedReturnValue(), v64 = v63 == 0, v63, v62, v64))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v77 = MEMORY[0x277D86220];
          v78 = "network provides confidence threshold suggestion but no high/low thresholds found";
          goto LABEL_92;
        }

        goto LABEL_85;
      }

      v65 = [(ADConfidenceLevelRanges *)v61 objectForKeyedSubscript:@"low"];
      [v65 floatValue];
      v67 = v66;

      v68 = [(ADConfidenceLevelRanges *)v61 objectForKeyedSubscript:@"high"];
      [v68 floatValue];
      v70 = v69;

      if (v67 >= 0.0 && v70 >= 0.0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v77 = MEMORY[0x277D86220];
          v78 = "unable to support confidence threshold for non aleatoric uncertainty models";
LABEL_92:
          _os_log_error_impl(&dword_2402F6000, v77, OS_LOG_TYPE_ERROR, v78, buf, 2u);
          v21 = 0;
          goto LABEL_86;
        }

LABEL_85:
        v21 = 0;
        goto LABEL_86;
      }

      LODWORD(v71) = 2139095040;
      LODWORD(v76) = -8388608;
      *&v72 = v70;
      *&v73 = v70;
      *&v74 = v67;
      *&v75 = v67;
      v83 = [ADConfidenceLevelRanges rangesForUnits:3 lowLevel:v71 mediumLevel:v72 highLevel:v73, v74, v75, v76];
      confidenceLevelRanges = self->_confidenceLevelRanges;
      self->_confidenceLevelRanges = v83;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v85 = self->_confidenceLevelRanges;
        *buf = 138412290;
        v115 = v85;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network confidence threshold: %@", buf, 0xCu);
      }
    }

    else
    {
      v61 = self->_confidenceLevelRanges;
      self->_confidenceLevelRanges = 0;
    }

    v21 = 1;
LABEL_86:

LABEL_87:
    goto LABEL_88;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v115 = v88;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not find json file at path %{public}@", buf, 0xCu);
  }

  v21 = 0;
LABEL_88:

  return v21;
}

- (BOOL)processConfig:(id)a3 inDictionary:(id)a4 forLayout:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v22 = a5;
  v9 = [a4 objectForKeyedSubscript:@"configurations"];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v8;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "network does not have a configuration called %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "network supports layout for: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "network supports layout for: %@", buf, 0xCu);
  }

  if (![ADNetworkProvider getAndVerifySizesFromConfig:v8 inDictionary:v9 forKey:@"inputs" sizes:self->_sizesForInput layout:&v22]|| ![ADNetworkProvider getAndVerifySizesFromConfig:v8 inDictionary:v9 forKey:@"outputs" sizes:self->_sizesForOutput layout:&v22])
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  layoutNamesDict = self->_layoutNamesDict;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  v13 = [(NSDictionary *)layoutNamesDict objectForKeyedSubscript:v12];
  LOBYTE(layoutNamesDict) = v13 == 0;

  if (layoutNamesDict)
  {
    v20 = self->_layoutNamesDict;
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    [(NSDictionary *)v20 setObject:v8 forKeyedSubscript:v21];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = [MEMORY[0x277CED0C0] layoutAsString:v22];
    v15 = self->_layoutNamesDict;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v17 = [(NSDictionary *)v15 objectForKeyedSubscript:v16];
    *buf = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v17;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "multiple configurations defined for layout %{public}@ (found %{public}@, but only %{public}@ will be used)", buf, 0x20u);
  }

  [(NSMutableArray *)self->_knownConfigs addObject:v8];
  v18 = 1;
LABEL_15:

  return v18;
}

- (id)descriptorForBuffer:(id)a3 isInput:(BOOL)a4 pixelFormat:(unsigned int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  if (v8 && [(ADNetworkProvider *)self bufferExists:v8 isInput:v6])
  {
    v9 = MEMORY[0x277CED078];
    if (v6)
    {
      [(ADNetworkProvider *)self supportedSizesForInput:v8 expectedPixelFormat:v5];
    }

    else
    {
      [(ADNetworkProvider *)self supportedSizesForOutput:v8 expectedPixelFormat:v5];
    }
    v11 = ;
    v12 = [v9 descriptorForSupportedSizes:v11 pixelFormat:v5];

    v10 = [MEMORY[0x277CED058] descriptorWithName:v8 imageDescriptor:v12 isInput:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)bufferExists:(id)a3 isInput:(BOOL)a4
{
  v4 = 16;
  if (a4)
  {
    v4 = 8;
  }

  v5 = [*(&self->super.isa + v4) objectForKeyedSubscript:a3];
  v6 = v5 != 0;

  return v6;
}

- (id)supportedDimensionsForInput:(id)a3 expectedPixelFormat:(unsigned int)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(ADNetworkProvider *)self supportedSizesForInput:a3 expectedPixelFormat:*&a4];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = MEMORY[0x277CED080];
        [v10 size];
        v13 = v12;
        [v10 size];
        v15 = [v11 imageDimensionsWithWidth:v13 height:v14];
        if (([v5 containsObject:v15] & 1) == 0)
        {
          [v5 addObject:v15];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)supportedSizesForOutput:(id)a3 expectedPixelFormat:(unsigned int)a4
{
  v4 = [ADNetworkProvider supportedSizesForSizesDict:self->_sizesForOutput key:a3 expectedPixelFormat:*&a4];

  return v4;
}

- (id)supportedSizesForInput:(id)a3 expectedPixelFormat:(unsigned int)a4
{
  v4 = [ADNetworkProvider supportedSizesForSizesDict:self->_sizesForInput key:a3 expectedPixelFormat:*&a4];

  return v4;
}

+ (id)createRequestedLayoutsForDimensions:(id)a3 function:(id)a4
{
  v4 = [ADNetworkProvider createRequestedLayoutsForDimensions:a3 layout:255 function:a4];

  return v4;
}

+ (id)createRequestedLayoutsForDimensions:(id)a3
{
  v3 = [ADNetworkProvider createRequestedLayoutsForDimensions:a3 layout:255 function:@"main"];

  return v3;
}

+ (id)createRequestedLayoutsForDimensions:(id)a3 layout:(unint64_t)a4 function:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13 = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_height%tu_width%tu", v8, objc_msgSend(v7, "height"), objc_msgSend(v7, "width")];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v11;
}

+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4 espressoEngine:(unint64_t)a5 makeRunnable:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [[ADNetworkProvider alloc] initWithNetwork:v9 requestedLayouts:v10 espressoEngine:a5 makeRunnable:v6];

  return v11;
}

+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4 makeRunnable:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CEE958] hasANE];
  v10 = [ADNetworkProvider alloc];
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(ADNetworkProvider *)v10 initWithNetwork:v7 requestedLayouts:v8 espressoEngine:v11 makeRunnable:v5];

  return v12;
}

+ (id)nonRunnableProviderForNetwork:(id)a3 requestedLayouts:(id)a4
{
  v4 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:a4 makeRunnable:0];

  return v4;
}

+ (id)providerForNetwork:(id)a3 requestedLayouts:(id)a4
{
  v4 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:a4 makeRunnable:1];

  return v4;
}

+ (id)nonRunnableProviderForNetwork:(id)a3 espressoEngine:(unint64_t)a4
{
  v4 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:0 espressoEngine:a4 makeRunnable:0];

  return v4;
}

+ (id)providerForNetwork:(id)a3 espressoEngine:(unint64_t)a4
{
  v4 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:0 espressoEngine:a4 makeRunnable:1];

  return v4;
}

+ (id)nonRunnableProviderForNetwork:(id)a3
{
  v3 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:0 makeRunnable:0];

  return v3;
}

+ (id)providerForNetwork:(id)a3
{
  v3 = [ADNetworkProvider providerForNetwork:a3 requestedLayouts:0 makeRunnable:1];

  return v3;
}

+ (void)updateSizeForItem:(id)a3 fromShape:(id)a4 customStrides:(id)a5 forLayout:(unint64_t)a6 target:(id)a7
{
  v18 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [v13 objectForKeyedSubscript:v18];

  if (!v14)
  {
    v15 = objc_opt_new();
    [v13 setObject:v15 forKeyedSubscript:v18];
  }

  v16 = objc_opt_new();
  [v16 setLayout:a6];
  [v16 setShape:v11];
  [v16 setCustomStrides:v12];
  v17 = [v13 objectForKeyedSubscript:v18];
  [v17 addObject:v16];
}

+ (id)supportedSizesForSizesDict:(id)a3 key:(id)a4 expectedPixelFormat:(unsigned int)a5
{
  v5 = *&a5;
  v56 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v49 = a4;
  v7 = objc_opt_new();
  [v48 objectForKeyedSubscript:v49];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v8)
  {
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        v12 = [v11 shape];
        v13 = [v12 count] == 1;

        v14 = 1.0;
        if (!v13)
        {
          v15 = [v11 shape];
          v16 = [v11 shape];
          v17 = [v15 objectAtIndexedSubscript:{objc_msgSend(v16, "count") - 2}];
          [v17 floatValue];
          v19 = v18;

          v14 = v19;
        }

        v20 = [v11 shape];
        v21 = [v11 shape];
        v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(v21, "count") - 1}];
        [v22 floatValue];
        v24 = v23;

        if (PixelBufferUtils::componentsPerPixelForPixelFormat(v5, 0) == 1 && PixelBufferUtils::planeCountForPixelFormat(v5) <= 1)
        {
          v25 = [v11 shape];
          v26 = [v25 count] > 2;

          if (v26)
          {
            for (j = 0; ; ++j)
            {
              v28 = [v11 shape];
              v29 = j < [v28 count] - 2;

              if (!v29)
              {
                break;
              }

              v30 = [v11 shape];
              v31 = [v30 objectAtIndexedSubscript:j];
              [v31 floatValue];
              v33 = v32;

              v14 = v14 * v33;
            }
          }
        }

        [v11 layout];
        v34 = MEMORY[0x277CED088];
        v35 = [v11 layout];
        v36 = [v11 customStrides];
        v37 = [v34 createWithSize:v35 layout:v36 customStrides:{v24, v14}];
        [v7 addObject:v37];
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v8);
  }

  if ([v7 count])
  {
    v38 = MEMORY[0x277CED088];
    v39 = [v7 objectAtIndexedSubscript:0];
    [v39 size];
    v41 = v40;
    v43 = v42;
    v44 = [v7 objectAtIndexedSubscript:0];
    v45 = [v44 customStrides];
    v46 = [v38 createWithSize:255 layout:v45 customStrides:{v41, v43}];

    [v7 addObject:v46];
  }

  return v7;
}

+ (BOOL)getAndVerifySizesFromConfig:(id)a3 inDictionary:(id)a4 forKey:(id)a5 sizes:(id)a6 layout:(unint64_t *)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v52 = a6;
  v48 = v12;
  v49 = v11;
  v14 = [v12 objectForKeyedSubscript:v11];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = [v14 objectForKeyedSubscript:v13];
  v16 = [v15 allKeys];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v53 objects:v61 count:16];
  v47 = v17;
  if (v17)
  {
    v18 = 0;
    v51 = *v54;
    v19 = v17;
    while (1)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(v16);
      }

      v20 = **(&v53 + 1);
      v21 = [v14 objectForKeyedSubscript:{v13, v47}];
      v22 = [v21 objectForKeyedSubscript:v20];
      v23 = [v22 objectForKeyedSubscript:@"Shape"];

      v24 = [v14 objectForKeyedSubscript:v13];
      v25 = [v24 objectForKeyedSubscript:v20];
      v26 = [v25 objectForKeyedSubscript:@"CustomStrides"];

      v27 = [v23 objectAtIndexedSubscript:3];
      [v27 floatValue];
      v29 = v28;
      v30 = [v23 objectAtIndexedSubscript:2];
      [v30 floatValue];
      v32 = v31;

      v33 = *a7;
      if (*a7 == 254)
      {
        v33 = [MEMORY[0x277CED0C0] layoutForSize:{v29, v32}];
      }

      if (v18)
      {
        if (v33 != *a7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *a7 = v33;
      }

      [ADNetworkProvider updateSizeForItem:"updateSizeForItem:fromShape:customStrides:forLayout:target:" fromShape:v20 customStrides:v23 forLayout:v26 target:?];

      if (v19 >= 2)
      {
        break;
      }

LABEL_18:
      v16 = obj;
      v19 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      v18 = 1;
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    v34 = 1;
    while (1)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v53 + 1) + 8 * v34);
      v36 = [v14 objectForKeyedSubscript:v13];
      v37 = [v36 objectForKeyedSubscript:v35];
      v23 = [v37 objectForKeyedSubscript:@"Shape"];

      v38 = [v14 objectForKeyedSubscript:v13];
      v39 = [v38 objectForKeyedSubscript:v35];
      v26 = [v39 objectForKeyedSubscript:@"CustomStrides"];

      v40 = [v23 objectAtIndexedSubscript:3];
      [v40 floatValue];
      v42 = v41;
      v43 = [v23 objectAtIndexedSubscript:2];
      [v43 floatValue];
      v45 = v44;

      if (*a7 == 254 && [MEMORY[0x277CED0C0] layoutForSize:{v42, v45}] != *a7)
      {
        break;
      }

      [ADNetworkProvider updateSizeForItem:"updateSizeForItem:fromShape:customStrides:forLayout:target:" fromShape:v35 customStrides:v23 forLayout:v26 target:?];

      if (v19 == ++v34)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v58 = v13;
      v59 = 2112;
      v60 = v49;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Network %{public}@ dimensions are not the same layout for configuration: %@", buf, 0x16u);
    }

    v18 = 0;
    v16 = obj;
  }

  else
  {
    v18 = 1;
  }

LABEL_24:

  return (v47 != 0) & v18;
}

+ (id)getAlternativePathForNetwork:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v3 = [ADNetworkProvider getConfigFolderForNetwork:?];
  if (!v3)
  {
    v4 = 0;
    goto LABEL_36;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "looking for configuration folder at: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = v3;
    _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "looking for configuration folder at: %@", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v13 fileExistsAtPath:v3])
  {
    if (ADDebugUtilsADVerboseLogsEnabled == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "configuration folder found", buf, 2u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "configuration folder found", buf, 2u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v13 contentsOfDirectoryAtPath:v3 error:0];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v4 = 0;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v3 stringByAppendingPathComponent:v9];
          v11 = [v9 pathExtension];
          if (([v11 isEqualToString:@"net"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"bundle") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"mil"))
          {
            if (v4)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "model selection ambiguous: found multiple models in configuration folder", buf, 2u);
              }

              goto LABEL_34;
            }

            v4 = v10;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      if (v4)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not find required model file in configuration folder", buf, 2u);
    }
  }

LABEL_34:
  v4 = 0;
LABEL_35:

LABEL_36:

  return v4;
}

+ (id)getDefaultPathForNetwork:(id)a3 allowPrecompiledModel:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v6)
  {
    if (!v4)
    {
      v10 = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_33;
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 resourcePath];
    v10 = [v8 stringWithFormat:@"%@/MLModels", v9];

    ADCommonUtils::runtimePlatformANEProductString(&buf);
    if ((v30 & 0x80u) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", v5, p_buf];
    v13 = findModel(v10, v12);
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      goto LABEL_29;
    }

    v16 = __p;
    ADCommonUtils::runtimePlatformANEVersionString(__p);
    v17 = v30;
    if ((v30 & 0x80u) != 0)
    {
      v17 = *(&buf + 1);
    }

    if ((v28 & 0x80u) == 0)
    {
      v18 = v28;
    }

    else
    {
      v18 = __p[1];
    }

    if ((v28 & 0x80u) != 0)
    {
      v16 = __p[0];
    }

    if (v18 == v17 && ((v30 & 0x80u) == 0 ? (v19 = &buf) : (v19 = buf), !memcmp(v16, v19, v18)))
    {
      v14 = 0;
      v15 = 1;
      if (v28 < 0)
      {
LABEL_28:
        operator delete(__p[0]);
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%s", v5, v16];

      v21 = findModel(v10, v20);
      if (v21)
      {
        v14 = v21;
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 1;
      }

      v12 = v20;
      if (v28 < 0)
      {
        goto LABEL_28;
      }
    }

LABEL_29:
    if (v30 < 0)
    {
      operator delete(buf);
      if ((v15 & 1) == 0)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    else if ((v15 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_33:
    v22 = MEMORY[0x277CCACA8];
    v23 = [v7 resourcePath];
    v24 = [v22 stringWithFormat:@"%@/MLModels/NonPrecompiled", v23];

    v25 = findModel(v24, v5);

    if (v25)
    {
      v14 = v25;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find default path for model %{public}@", &buf, 0xCu);
      }

      v14 = 0;
    }

    v10 = v24;
    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed getting AppleDepth bundle", &buf, 2u);
  }

  v14 = 0;
LABEL_40:

  return v14;
}

+ (id)getConfigFolderForNetwork:(id)a3
{
  v3 = a3;
  v4 = [ADDeviceConfiguration stringForKey:kADDeviceConfigurationKeyModelConfigurationFolder];
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

@end