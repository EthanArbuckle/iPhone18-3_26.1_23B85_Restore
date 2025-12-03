@interface ADModelBuilder
+ (id)modelBuilderForModelPath:(id)path destinationPath:(id)destinationPath buildConfigPath:(id)configPath forANE:(BOOL)e;
- (ADModelBuilder)initWithSourcePath:(id)path destinationPath:(id)destinationPath buildConfigPath:(id)configPath forANE:(BOOL)e;
- (BOOL)createE5MLBundle;
- (BOOL)makeRunnable;
- (BOOL)requiresCompilation;
- (BOOL)supportsCompilation;
- (NSString)runnableModelPath;
@end

@implementation ADModelBuilder

- (NSString)runnableModelPath
{
  if ([(ADModelBuilder *)self requiresCompilation])
  {
    v3 = [(NSString *)self->_destinationPath stringByAppendingFormat:@"/%@/model.bundle", self->_compiledModelUID];
  }

  else
  {
    v3 = self->_srcModelPath;
  }

  return v3;
}

- (BOOL)requiresCompilation
{
  pathExtension = [(NSString *)self->_srcModelPath pathExtension];
  v4 = [pathExtension isEqualToString:@"bundle"];

  if (v4)
  {
    return 0;
  }

  v6 = [(NSDictionary *)self->_buildConfig objectForKeyedSubscript:@"bundleAsEspressoV2"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)makeRunnable
{
  if ([(ADModelBuilder *)self requiresCompilation])
  {
    supportsCompilation = [(ADModelBuilder *)self supportsCompilation];
    if (supportsCompilation)
    {

      LOBYTE(supportsCompilation) = [(ADModelBuilder *)self createE5MLBundle];
    }
  }

  else
  {
    LOBYTE(supportsCompilation) = 1;
  }

  return supportsCompilation;
}

- (BOOL)supportsCompilation
{
  buildConfig = self->_buildConfig;
  if (buildConfig)
  {
    v4 = [(NSDictionary *)buildConfig objectForKeyedSubscript:@"bundleAsEspressoV2"];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      if (!self->_forANE || (LODWORD(buildConfig) = [MEMORY[0x277CEE958] hasANE], buildConfig))
      {
        LOBYTE(buildConfig) = 1;
      }
    }

    else
    {
      LOBYTE(buildConfig) = 0;
    }
  }

  return buildConfig;
}

- (ADModelBuilder)initWithSourcePath:(id)path destinationPath:(id)destinationPath buildConfigPath:(id)configPath forANE:(BOOL)e
{
  v53[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  destinationPathCopy = destinationPath;
  configPathCopy = configPath;
  v41.receiver = self;
  v41.super_class = ADModelBuilder;
  v11 = [(ADModelBuilder *)&v41 init];
  p_isa = &v11->super.isa;
  v40 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_srcModelPath, path);
    objc_storeStrong(p_isa + 2, destinationPath);
    objc_storeStrong(p_isa + 3, configPath);
    v40->_forANE = e;
    if (p_isa[3])
    {
      goto LABEL_6;
    }

    stringByDeletingLastPathComponent = [p_isa[1] stringByDeletingLastPathComponent];
    v14 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"build_config.plist"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager fileExistsAtPath:v14];

    if (v16)
    {
      objc_storeStrong(p_isa + 3, v14);
    }

    if (p_isa[3])
    {
LABEL_6:
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:?];
      buildConfig = v40->_buildConfig;
      v40->_buildConfig = v17;
    }

    v33 = MEMORY[0x277CCACA8];
    stringByDeletingLastPathComponent2 = [p_isa[1] stringByDeletingLastPathComponent];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:stringByDeletingLastPathComponent2];
    v20 = *MEMORY[0x277CBE868];
    v53[0] = *MEMORY[0x277CBE868];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v34 = [defaultManager2 enumeratorAtURL:v19 includingPropertiesForKeys:v21 options:4 errorHandler:0];

    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = crc32(0, 0, 0);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v34;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v23)
    {
      v24 = *v45;
      do
      {
        v25 = 0;
        do
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v44 + 1) + 8 * v25);
          v43 = 0;
          [v26 getResourceValue:&v43 forKey:v20 error:0];
          v27 = v43;
          if (([v27 BOOLValue] & 1) == 0)
          {
            v28 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v26];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = ___ZL14crc32ForFolderP8NSString_block_invoke;
            v42[3] = &unk_278CA6008;
            v42[4] = &v48;
            [v28 enumerateByteRangesUsingBlock:v42];
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v23);
    }

    v29 = *(v49 + 6);
    _Block_object_dispose(&v48, 8);

    v30 = [v33 stringWithFormat:@"crc32_%u_isANE_%d_espresso_%s", v29, v40->_forANE, espresso_get_version_string()];
    compiledModelUID = v40->_compiledModelUID;
    v40->_compiledModelUID = v30;
  }

  return v40;
}

- (BOOL)createE5MLBundle
{
  v170 = *MEMORY[0x277D85DE8];
  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      srcModelPath = self->_srcModelPath;
      destinationPath = self->_destinationPath;
      forANE = self->_forANE;
      buildConfigPath = self->_buildConfigPath;
      *buf = 138413058;
      *&buf[4] = srcModelPath;
      *&buf[12] = 2112;
      *&buf[14] = destinationPath;
      *&buf[22] = 1024;
      LODWORD(v152) = forANE;
      WORD2(v152) = 2112;
      *(&v152 + 6) = buildConfigPath;
      _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "compiling model %@ info folder %@. forANE:%d. buildConfigPath:%@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v43 = self->_srcModelPath;
    v44 = self->_destinationPath;
    v45 = self->_forANE;
    v46 = self->_buildConfigPath;
    *buf = 138413058;
    *&buf[4] = v43;
    *&buf[12] = 2112;
    *&buf[14] = v44;
    *&buf[22] = 1024;
    LODWORD(v152) = v45;
    WORD2(v152) = 2112;
    *(&v152 + 6) = v46;
    _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "compiling model %@ info folder %@. forANE:%d. buildConfigPath:%@", buf, 0x26u);
  }

  if (!self->_buildConfig)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = self->_srcModelPath;
    *buf = 138412290;
    *&buf[4] = v9;
    v10 = MEMORY[0x277D86220];
    v11 = "missing model build config file at %@. unable to compile";
    v12 = 12;
LABEL_123:
    _os_log_error_impl(&dword_240463000, v10, OS_LOG_TYPE_ERROR, v11, buf, v12);
    return 0;
  }

  if (ADDebugUtilsADVerboseLogsEnabled == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_srcModelPath;
      *buf = 138412290;
      *&buf[4] = v6;
      v7 = MEMORY[0x277D86220];
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(&dword_240463000, v7, v8, "model %@ can be compiled for e5ml", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = self->_srcModelPath;
    *buf = 138412290;
    *&buf[4] = v13;
    v7 = MEMORY[0x277D86220];
    v8 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  if (self->_forANE && ([MEMORY[0x277CEE958] hasANE] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "no ANE found to compile for";
    v12 = 2;
    goto LABEL_123;
  }

  runnableModelPath = [(ADModelBuilder *)self runnableModelPath];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v135 = [(NSString *)self->_destinationPath stringByAppendingPathComponent:uUIDString];
  v133 = [v135 stringByAppendingPathComponent:@"model.bundle"];
  v134 = [v135 stringByAppendingPathComponent:@"custom_options_net.plist"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = self->_destinationPath;
  v150 = 0;
  v139 = defaultManager;
  LODWORD(uUID) = [defaultManager createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v150];
  v17 = v150;
  if (uUID)
  {
    stringByDeletingLastPathComponent = [runnableModelPath stringByDeletingLastPathComponent];
    v149 = v17;
    v19 = [v139 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:0 attributes:0 error:&v149];
    v20 = v149;

    v132 = v20;
    if (v19)
    {

      goto LABEL_23;
    }

    v22 = [v20 code] == 516;

    if (v22)
    {
LABEL_23:
      if ([v20 code] == 516)
      {
        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          *buf = 0;
          v23 = MEMORY[0x277D86220];
          v24 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_40;
          }

          *buf = 0;
          v23 = MEMORY[0x277D86220];
          v24 = OS_LOG_TYPE_INFO;
        }

        _os_log_impl(&dword_240463000, v23, v24, "model already compiled or being compiled, no need to recompile", buf, 2u);
LABEL_40:
        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_46;
          }

          *buf = 134217984;
          *&buf[4] = 0x404E000000000000;
          v30 = MEMORY[0x277D86220];
          v31 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_46;
          }

          *buf = 134217984;
          *&buf[4] = 0x404E000000000000;
          v30 = MEMORY[0x277D86220];
          v31 = OS_LOG_TYPE_INFO;
        }

        _os_log_impl(&dword_240463000, v30, v31, "waiting for model folder to appear (timeout: %.0f seconds)", buf, 0xCu);
LABEL_46:
        v32 = runnableModelPath;
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        date = [MEMORY[0x277CBEAA8] date];
        while (([defaultManager2 fileExistsAtPath:v32] & 1) == 0)
        {
          date2 = [MEMORY[0x277CBEAA8] date];
          [date2 timeIntervalSinceDate:date];
          v37 = v36;

          if (v37 >= 60.0)
          {

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v42 = self->_destinationPath;
              *buf = 138412290;
              *&buf[4] = v42;
              _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "timed out waiting for model folder. Consider removing folder %@ and try again.", buf, 0xCu);
            }

            goto LABEL_65;
          }

          [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
        }

        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          v17 = v132;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "model folder found", buf, 2u);
          }

          v21 = 1;
        }

        else
        {
          v21 = 1;
          v17 = v132;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "model folder found", buf, 2u);
          }
        }

        goto LABEL_106;
      }

      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v144 = __34__ADModelBuilder_createE5MLBundle__block_invoke;
      v145 = &unk_278CA5FE0;
      v25 = v139;
      v146 = v25;
      selfCopy = self;
      v121 = runnableModelPath;
      v148 = v121;
      [v25 createDirectoryAtPath:v135 withIntermediateDirectories:1 attributes:0 error:0];
      v26 = MEMORY[0x277CCACA8];
      ADCommonUtils::runtimePlatformANEProductString(buf);
      if (buf[23] >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      v136 = [v26 stringWithUTF8String:v27];
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v28 = [(NSDictionary *)self->_buildConfig objectForKeyedSubscript:@"ProfileN301iOS"];
      v124 = v25;
      if ([v28 BOOLValue])
      {
        v29 = [v136 isEqualToString:@"H14G"];
      }

      else
      {
        v29 = 0;
      }

      if (![v136 hasSuffix:@".N301"] || (-[NSDictionary objectForKeyedSubscript:](self->_buildConfig, "objectForKeyedSubscript:", @"experimentalModelPlatformOverride"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "BOOLValue"), v38, !v39))
      {
LABEL_70:
        v128 = self->_buildConfig;
        v137 = v136;
        v126 = v134;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"KernelRewind"];
        v49 = [(NSDictionary *)v128 objectForKeyedSubscript:@"spatialSplitMode"];
        v50 = [v49 length] == 0;

        if (!v50)
        {
          v51 = [(NSDictionary *)v128 objectForKeyedSubscript:@"spatialSplitMode"];
          [dictionary setObject:v51 forKeyedSubscript:@"SpatialSplitMode"];
        }

        [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ScanWeightsForCompression"];
        v52 = [(NSDictionary *)v128 objectForKeyedSubscript:@"useReductionPerformance"];
        bOOLValue = [v52 BOOLValue];

        if (bOOLValue)
        {
          [dictionary setObject:@"ReductionPerf" forKeyedSubscript:@"Optimize"];
        }

        if (v29)
        {
          [dictionary setObject:&unk_285252070 forKeyedSubscript:@"NeFrequency"];
          [dictionary setObject:&unk_285252088 forKeyedSubscript:@"PstateDCSLevel"];
          [dictionary setObject:&unk_2852520A0 forKeyedSubscript:@"PstateSOCLevel"];
          [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"EnableContextSwitchEvents"];
        }

        lowercaseString = [v137 lowercaseString];
        *v161 = lowercaseString;
        v164[0] = dictionary;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v161 count:1];
        [v55 writeToFile:v126 atomically:1];

        array = [MEMORY[0x277CBEB18] array];
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v57 = dictionary;
        v58 = [v57 countByEnumeratingWithState:&v165 objects:buf count:16];
        if (v58)
        {
          v59 = *v166;
          do
          {
            for (i = 0; i != v58; ++i)
            {
              if (*v166 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = *(*(&v165 + 1) + 8 * i);
              v62 = MEMORY[0x277CCACA8];
              v63 = [v57 objectForKeyedSubscript:v61];
              v64 = [v62 stringWithFormat:@"%@=%@", v61, v63];
              [array addObject:v64];
            }

            v58 = [v57 countByEnumeratingWithState:&v165 objects:buf count:16];
          }

          while (v58);
        }

        v65 = [array componentsJoinedByString:{@", "}];

        v66 = self->_forANE;
        v67 = self->_srcModelPath;
        v131 = v133;
        v138 = v137;
        v68 = v126;
        v127 = v65;
        v69 = objc_alloc_init(MEMORY[0x277CCACB0]);
        v70 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/espressoc"];
        [v69 setExecutableURL:v70];

        if (v66)
        {
          pathExtension = [(NSString *)v67 pathExtension];
          v72 = [pathExtension isEqualToString:@"net"];

          if (v72)
          {
            *&v165 = @"--e5-require-ane-resident=strict";
            *(&v165 + 1) = @"--ane-options-plist";
            *&v166 = v68;
            *(&v166 + 1) = @"-i";
            *&v167 = v67;
            *(&v167 + 1) = @"-p";
            *&v168 = v138;
            *(&v168 + 1) = @"-o";
            v169 = v131;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:9];
          }

          else
          {
            *buf = @"--mil-entry-points";
            *&buf[8] = @"*";
            *&buf[16] = @"--e5-compute-units";
            *&v152 = @"ane";
            *(&v152 + 1) = @"--e5-require-ane-resident=strict";
            v153 = @"--ane-options";
            v154 = v127;
            v155 = @"-i";
            v156 = v67;
            v157 = @"-p";
            v158 = v138;
            v159 = @"-o";
            v160 = v131;
            [MEMORY[0x277CBEA60] arrayWithObjects:buf count:13];
          }
          v73 = ;
          [v69 setArguments:v73];
        }

        else
        {
          v164[0] = @"--mil-entry-points";
          v164[1] = @"*";
          v164[2] = @"-i";
          v164[3] = v67;
          v164[4] = @"-p";
          v164[5] = @"universal";
          v164[6] = @"-o";
          v164[7] = v131;
          v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:8];
          [v69 setArguments:v73];
        }

        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            executableURL = [v69 executableURL];
            path = [executableURL path];
            arguments = [v69 arguments];
            *v161 = 138412546;
            *&v161[4] = path;
            v162 = 2112;
            v163 = arguments;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "running %@ with arguments: %@", v161, 0x16u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          executableURL2 = [v69 executableURL];
          path2 = [executableURL2 path];
          arguments2 = [v69 arguments];
          *v161 = 138412546;
          *&v161[4] = path2;
          v162 = 2112;
          v163 = arguments2;
          _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "running %@ with arguments: %@", v161, 0x16u);
        }

        if (ADDebugUtilsADVerboseLogsEnabled == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v161 = 138412290;
            *&v161[4] = v127;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ANE options: %@", v161, 0xCu);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          *v161 = 138412290;
          *&v161[4] = v127;
          _os_log_debug_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "ANE options: %@", v161, 0xCu);
        }

        if (![v69 launchAndReturnError:0] || (objc_msgSend(v69, "waitUntilExit"), objc_msgSend(v69, "terminationStatus")))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            executableURL3 = [v69 executableURL];
            path3 = [executableURL3 path];
            arguments3 = [v69 arguments];
            *v161 = 138543618;
            *&v161[4] = path3;
            v162 = 2114;
            v163 = arguments3;
            _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to run %{public}@ with arguments: %{public}@", v161, 0x16u);
          }

          v21 = 0;
          goto LABEL_104;
        }

        v78 = v124;
        [v124 removeItemAtPath:v68 error:0];
        v122 = [v124 enumeratorAtPath:v131];
        while (1)
        {
          nextObject = [v122 nextObject];
          v80 = nextObject;
          if (!nextObject)
          {
            v21 = [v78 moveItemAtPath:v131 toPath:v121 error:0];
            goto LABEL_143;
          }

          pathExtension2 = [nextObject pathExtension];
          v82 = [pathExtension2 isEqualToString:@"hwx"];

          if (v82)
          {
            v83 = [v131 stringByAppendingPathComponent:v80];
            buildConfig = self->_buildConfig;
            v129 = v83;
            v125 = buildConfig;
            v85 = objc_alloc_init(MEMORY[0x277CCACB0]);
            v86 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/usr/local/bin/zin_ane_dump"];
            [v85 setExecutableURL:v86];

            *&v165 = @"-i";
            *(&v165 + 1) = v129;
            v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:2];
            [v85 setArguments:v87];

            pipe = [MEMORY[0x277CCAC10] pipe];
            [v85 setStandardOutput:?];
            if (![v85 launchAndReturnError:0] || (objc_msgSend(v85, "waitUntilExit"), objc_msgSend(v85, "terminationStatus")))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                executableURL4 = [v85 executableURL];
                path4 = [executableURL4 path];
                arguments4 = [v85 arguments];
                *buf = 138543618;
                *&buf[4] = path4;
                *&buf[12] = 2114;
                *&buf[14] = arguments4;
                _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to run %{public}@ with arguments: %{public}@", buf, 0x16u);
              }

              goto LABEL_140;
            }

            v88 = objc_alloc(MEMORY[0x277CCACA8]);
            fileHandleForReading = [pipe fileHandleForReading];
            v90 = [fileHandleForReading readDataToEndOfFileAndReturnError:0];
            v91 = [v88 initWithData:v90 encoding:4];

            v92 = [v91 rangeOfString:@"\\n\\s*--fspatial-split=" options:1024];
            if (v92 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unable to find ANE compilation flag SpatialSplitMode", buf, 2u);
              }

              goto LABEL_140;
            }

            v94 = [v91 substringFromIndex:v92 + v93];
            v95 = [v94 substringToIndex:{objc_msgSend(v94, "rangeOfString:", @"\n"}];

            v96 = [v95 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28524BA50];

            v97 = [(NSDictionary *)v125 objectForKeyedSubscript:@"spatialSplitMode"];
            lowercaseString2 = [v97 lowercaseString];

            if (([lowercaseString2 isEqualToString:v96] & 1) == 0)
            {
              if (lowercaseString2)
              {
                goto LABEL_137;
              }

              if (([v96 isEqualToString:@"disabled"] & 1) == 0)
              {
                lowercaseString2 = 0;
LABEL_137:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  *&buf[4] = lowercaseString2;
                  *&buf[12] = 2114;
                  *&buf[14] = v96;
                  _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mismatch in ANE compilation flag SpatialSplitMode between {%{public}@} and {%{public}@}", buf, 0x16u);
                }

LABEL_140:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "compiled model flags verification failed", buf, 2u);
                }

                v21 = 0;
LABEL_143:

LABEL_104:
                v144(v143);

LABEL_105:
                v17 = v132;
                goto LABEL_106;
              }
            }

            v99 = [v91 rangeOfString:@"\\n\\s*--optimize=" options:1024];
            v101 = &stru_28524BA50;
            if (v99 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v100 = [v91 substringFromIndex:v99 + v100];
              v103 = [v100 substringToIndex:{objc_msgSend(v100, "rangeOfString:", @"\n"}];

              v101 = v103;
            }

            v104 = [(NSDictionary *)v125 objectForKeyedSubscript:@"useReductionPerformance"];
            bOOLValue2 = [v104 BOOLValue];
            v106 = [(__CFString *)v101 isEqualToString:@"reduction-perf"];

            if (bOOLValue2 != v106)
            {
              v113 = [(NSDictionary *)v125 objectForKeyedSubscript:@"useReductionPerformance"];
              bOOLValue3 = [v113 BOOLValue];

              v115 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (bOOLValue3)
              {
                if (v115)
                {
                  *buf = 138543362;
                  *&buf[4] = v101;
                  v116 = MEMORY[0x277D86220];
                  v117 = "mismatch in ANE compilation flag Optimize. Expected {reduction-perf} and got {%{public}@}";
                  goto LABEL_145;
                }
              }

              else if (v115)
              {
                *buf = 138543362;
                *&buf[4] = v101;
                v116 = MEMORY[0x277D86220];
                v117 = "mismatch in ANE compilation flag Optimize. Expected {} and got {%{public}@}";
LABEL_145:
                _os_log_error_impl(&dword_240463000, v116, OS_LOG_TYPE_ERROR, v117, buf, 0xCu);
              }

              goto LABEL_140;
            }
          }

          v78 = v124;
        }
      }

      if (ADDebugUtilsADVerboseLogsEnabled == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v136;
          v40 = MEMORY[0x277D86220];
          v41 = OS_LOG_TYPE_DEFAULT;
LABEL_68:
          _os_log_impl(&dword_240463000, v40, v41, "platform is %@ but compiling to generic platform instead", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v136;
        v40 = MEMORY[0x277D86220];
        v41 = OS_LOG_TYPE_INFO;
        goto LABEL_68;
      }

      v48 = [v136 stringByReplacingOccurrencesOfString:@".N301" withString:&stru_28524BA50];

      v29 = 1;
      v136 = v48;
      goto LABEL_70;
    }

    v17 = v20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v132 = v17;
    localizedDescription = [v17 localizedDescription];
    *buf = 138412290;
    *&buf[4] = localizedDescription;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to create folder structure needed for compilation. Error: %@", buf, 0xCu);

LABEL_65:
    v21 = 0;
    goto LABEL_105;
  }

  v21 = 0;
LABEL_106:

  return v21;
}

void __34__ADModelBuilder_createE5MLBundle__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) contentsOfDirectoryAtPath:*(*(a1 + 40) + 16) error:{0, 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if (([v6 isEqualToString:*(*(a1 + 40) + 48)] & 1) == 0)
        {
          v7 = *(a1 + 32);
          v8 = [*(*(a1 + 40) + 16) stringByAppendingPathComponent:v6];
          [v7 removeItemAtPath:v8 error:0];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v9 = [*(a1 + 48) stringByDeletingLastPathComponent];
  v10 = v9;
  rmdir([v9 fileSystemRepresentation]);
}

+ (id)modelBuilderForModelPath:(id)path destinationPath:(id)destinationPath buildConfigPath:(id)configPath forANE:(BOOL)e
{
  eCopy = e;
  pathCopy = path;
  destinationPathCopy = destinationPath;
  configPathCopy = configPath;
  v12 = [[ADModelBuilder alloc] initWithSourcePath:pathCopy destinationPath:destinationPathCopy buildConfigPath:configPathCopy forANE:eCopy];

  return v12;
}

@end