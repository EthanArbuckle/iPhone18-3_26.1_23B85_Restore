@interface ADModelBuilder
+ (id)modelBuilderForModelPath:(id)a3 destinationPath:(id)a4 buildConfigPath:(id)a5 forANE:(BOOL)a6;
- (ADModelBuilder)initWithSourcePath:(id)a3 destinationPath:(id)a4 buildConfigPath:(id)a5 forANE:(BOOL)a6;
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
  v3 = [(NSString *)self->_srcModelPath pathExtension];
  v4 = [v3 isEqualToString:@"bundle"];

  if (v4)
  {
    return 0;
  }

  v6 = [(NSDictionary *)self->_buildConfig objectForKeyedSubscript:@"bundleAsEspressoV2"];
  v5 = [v6 BOOLValue];

  return v5;
}

- (BOOL)makeRunnable
{
  if ([(ADModelBuilder *)self requiresCompilation])
  {
    v3 = [(ADModelBuilder *)self supportsCompilation];
    if (v3)
    {

      LOBYTE(v3) = [(ADModelBuilder *)self createE5MLBundle];
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)supportsCompilation
{
  buildConfig = self->_buildConfig;
  if (buildConfig)
  {
    v4 = [(NSDictionary *)buildConfig objectForKeyedSubscript:@"bundleAsEspressoV2"];
    v5 = [v4 BOOLValue];

    if (v5)
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

- (ADModelBuilder)initWithSourcePath:(id)a3 destinationPath:(id)a4 buildConfigPath:(id)a5 forANE:(BOOL)a6
{
  v53[1] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v41.receiver = self;
  v41.super_class = ADModelBuilder;
  v11 = [(ADModelBuilder *)&v41 init];
  p_isa = &v11->super.isa;
  v40 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_srcModelPath, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    v40->_forANE = a6;
    if (p_isa[3])
    {
      goto LABEL_6;
    }

    v13 = [p_isa[1] stringByDeletingLastPathComponent];
    v14 = [v13 stringByAppendingPathComponent:@"build_config.plist"];

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [v15 fileExistsAtPath:v14];

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
    v35 = [p_isa[1] stringByDeletingLastPathComponent];
    v36 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35];
    v20 = *MEMORY[0x277CBE868];
    v53[0] = *MEMORY[0x277CBE868];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v34 = [v36 enumeratorAtURL:v19 includingPropertiesForKeys:v21 options:4 errorHandler:0];

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

  v140 = [(ADModelBuilder *)self runnableModelPath];
  v14 = [MEMORY[0x277CCAD78] UUID];
  v141 = [v14 UUIDString];

  v135 = [(NSString *)self->_destinationPath stringByAppendingPathComponent:v141];
  v133 = [v135 stringByAppendingPathComponent:@"model.bundle"];
  v134 = [v135 stringByAppendingPathComponent:@"custom_options_net.plist"];
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = self->_destinationPath;
  v150 = 0;
  v139 = v15;
  LODWORD(v14) = [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v150];
  v17 = v150;
  if (v14)
  {
    v18 = [v140 stringByDeletingLastPathComponent];
    v149 = v17;
    v19 = [v139 createDirectoryAtPath:v18 withIntermediateDirectories:0 attributes:0 error:&v149];
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
        v32 = v140;
        v33 = [MEMORY[0x277CCAA00] defaultManager];
        v34 = [MEMORY[0x277CBEAA8] date];
        while (([v33 fileExistsAtPath:v32] & 1) == 0)
        {
          v35 = [MEMORY[0x277CBEAA8] date];
          [v35 timeIntervalSinceDate:v34];
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
      v147 = self;
      v121 = v140;
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
        v130 = [MEMORY[0x277CBEB38] dictionary];
        [v130 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"KernelRewind"];
        v49 = [(NSDictionary *)v128 objectForKeyedSubscript:@"spatialSplitMode"];
        v50 = [v49 length] == 0;

        if (!v50)
        {
          v51 = [(NSDictionary *)v128 objectForKeyedSubscript:@"spatialSplitMode"];
          [v130 setObject:v51 forKeyedSubscript:@"SpatialSplitMode"];
        }

        [v130 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ScanWeightsForCompression"];
        v52 = [(NSDictionary *)v128 objectForKeyedSubscript:@"useReductionPerformance"];
        v53 = [v52 BOOLValue];

        if (v53)
        {
          [v130 setObject:@"ReductionPerf" forKeyedSubscript:@"Optimize"];
        }

        if (v29)
        {
          [v130 setObject:&unk_285252070 forKeyedSubscript:@"NeFrequency"];
          [v130 setObject:&unk_285252088 forKeyedSubscript:@"PstateDCSLevel"];
          [v130 setObject:&unk_2852520A0 forKeyedSubscript:@"PstateSOCLevel"];
          [v130 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"EnableContextSwitchEvents"];
        }

        v54 = [v137 lowercaseString];
        *v161 = v54;
        v164[0] = v130;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v161 count:1];
        [v55 writeToFile:v126 atomically:1];

        v56 = [MEMORY[0x277CBEB18] array];
        v167 = 0u;
        v168 = 0u;
        v165 = 0u;
        v166 = 0u;
        v57 = v130;
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
              [v56 addObject:v64];
            }

            v58 = [v57 countByEnumeratingWithState:&v165 objects:buf count:16];
          }

          while (v58);
        }

        v65 = [v56 componentsJoinedByString:{@", "}];

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
          v71 = [(NSString *)v67 pathExtension];
          v72 = [v71 isEqualToString:@"net"];

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
            v74 = [v69 executableURL];
            v75 = [v74 path];
            v76 = [v69 arguments];
            *v161 = 138412546;
            *&v161[4] = v75;
            v162 = 2112;
            v163 = v76;
            _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "running %@ with arguments: %@", v161, 0x16u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v110 = [v69 executableURL];
          v111 = [v110 path];
          v112 = [v69 arguments];
          *v161 = 138412546;
          *&v161[4] = v111;
          v162 = 2112;
          v163 = v112;
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
            v107 = [v69 executableURL];
            v108 = [v107 path];
            v109 = [v69 arguments];
            *v161 = 138543618;
            *&v161[4] = v108;
            v162 = 2114;
            v163 = v109;
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
          v79 = [v122 nextObject];
          v80 = v79;
          if (!v79)
          {
            v21 = [v78 moveItemAtPath:v131 toPath:v121 error:0];
            goto LABEL_143;
          }

          v81 = [v79 pathExtension];
          v82 = [v81 isEqualToString:@"hwx"];

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

            v123 = [MEMORY[0x277CCAC10] pipe];
            [v85 setStandardOutput:?];
            if (![v85 launchAndReturnError:0] || (objc_msgSend(v85, "waitUntilExit"), objc_msgSend(v85, "terminationStatus")))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v118 = [v85 executableURL];
                v119 = [v118 path];
                v120 = [v85 arguments];
                *buf = 138543618;
                *&buf[4] = v119;
                *&buf[12] = 2114;
                *&buf[14] = v120;
                _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to run %{public}@ with arguments: %{public}@", buf, 0x16u);
              }

              goto LABEL_140;
            }

            v88 = objc_alloc(MEMORY[0x277CCACA8]);
            v89 = [v123 fileHandleForReading];
            v90 = [v89 readDataToEndOfFileAndReturnError:0];
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
            v98 = [v97 lowercaseString];

            if (([v98 isEqualToString:v96] & 1) == 0)
            {
              if (v98)
              {
                goto LABEL_137;
              }

              if (([v96 isEqualToString:@"disabled"] & 1) == 0)
              {
                v98 = 0;
LABEL_137:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  *&buf[4] = v98;
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
              v102 = [v91 substringFromIndex:v99 + v100];
              v103 = [v102 substringToIndex:{objc_msgSend(v102, "rangeOfString:", @"\n"}];

              v101 = v103;
            }

            v104 = [(NSDictionary *)v125 objectForKeyedSubscript:@"useReductionPerformance"];
            v105 = [v104 BOOLValue];
            v106 = [(__CFString *)v101 isEqualToString:@"reduction-perf"];

            if (v105 != v106)
            {
              v113 = [(NSDictionary *)v125 objectForKeyedSubscript:@"useReductionPerformance"];
              v114 = [v113 BOOLValue];

              v115 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v114)
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
    v47 = [v17 localizedDescription];
    *buf = 138412290;
    *&buf[4] = v47;
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

+ (id)modelBuilderForModelPath:(id)a3 destinationPath:(id)a4 buildConfigPath:(id)a5 forANE:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [[ADModelBuilder alloc] initWithSourcePath:v9 destinationPath:v10 buildConfigPath:v11 forANE:v6];

  return v12;
}

@end