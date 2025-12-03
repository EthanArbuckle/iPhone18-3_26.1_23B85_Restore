@interface _ANECompiler
+ (id)compileModel:(id *)model options:(id)options ok:(BOOL *)ok error:(id *)error;
+ (id)compileModelJIT:(id *)t ok:(BOOL *)ok error:(id *)error;
+ (id)createErrorWithUnderlyingError:(id)error;
+ (id)createInMemoryConstants:(id)constants;
+ (id)createJITNetworkFromModelAtPath:(id)path modelFilename:(id)filename aotModelAtPath:(id)atPath aotModelFilename:(id)modelFilename;
+ (id)createNetworkFromModelAtPath:(id)path modelFilename:(id)filename;
+ (void)initialize;
@end

@implementation _ANECompiler

+ (void)initialize
{
  qword_100021B20 = +[_ANELog compiler];

  _objc_release_x1();
}

+ (id)createNetworkFromModelAtPath:(id)path modelFilename:(id)filename
{
  pathCopy = path;
  filenameCopy = filename;
  v7 = [&__NSDictionary0__struct mutableCopy];
  [v7 setObject:filenameCopy forKeyedSubscript:@"NetworkSourceFileName"];
  [v7 setObject:pathCopy forKeyedSubscript:@"NetworkSourcePath"];
  v8 = [&__NSArray0__struct mutableCopy];
  [v8 addObject:v7];

  return v8;
}

+ (id)createJITNetworkFromModelAtPath:(id)path modelFilename:(id)filename aotModelAtPath:(id)atPath aotModelFilename:(id)modelFilename
{
  pathCopy = path;
  filenameCopy = filename;
  atPathCopy = atPath;
  modelFilenameCopy = modelFilename;
  v13 = [&__NSDictionary0__struct mutableCopy];
  [v13 setObject:modelFilenameCopy forKeyedSubscript:@"NetworkSourceFileName"];
  [v13 setObject:atPathCopy forKeyedSubscript:@"NetworkSourcePath"];
  [v13 setObject:filenameCopy forKeyedSubscript:@"NetworkJITShapesName"];
  [v13 setObject:pathCopy forKeyedSubscript:@"NetworkJITShapesPath"];
  v14 = [&__NSArray0__struct mutableCopy];
  [v14 addObject:v13];

  return v14;
}

+ (id)createErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v5 = objc_autoreleasePoolPush();
  v6 = [NSString stringWithFormat:@"_ANECompiler : ANECCompile() FAILED"];
  v7 = qword_100021B20;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_1000116FC();
  }

  v8 = +[_ANEStrings errorDomainCompiler];
  if (errorCopy)
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = v6;
    v16[1] = errorCopy;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [NSError errorWithDomain:v8 code:1 userInfo:v9];
  }

  else
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = [NSError errorWithDomain:v8 code:1 userInfo:v9];
  }

  v11 = v10;

  objc_autoreleasePoolPop(v5);

  return v11;
}

+ (id)compileModelJIT:(id *)t ok:(BOOL *)ok error:(id *)error
{
  v75 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100021B20);
  v83 = t->var0;
  v90 = t->var1;
  v92 = t->var4;
  v87 = t->var3;
  v80 = t->var6;
  v84 = t->var5;
  v89 = t->var2;
  var8 = t->var8;
  v10 = qword_100021B20;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v66 = NSStringFromSelector(a2);
    *buf = 138413058;
    *&buf[4] = v66;
    *&buf[12] = 2080;
    *&buf[14] = [v84 UTF8String];
    *&buf[22] = 2080;
    uTF8String = [v90 UTF8String];
    LOWORD(v122) = 2080;
    *(&v122 + 2) = [v83 UTF8String];
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@: START : compileModelJIT compilerRequest.aotModelBinaryPath=%s : inputModelPath(JIT)=%s modelFilename(JIT)=%s", buf, 0x2Au);
  }

  kdebug_trace();
  v11 = qword_100021B20;
  v12 = v11;
  v78 = (spid - 1);
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *ok;
    *buf = 67109376;
    *&buf[8] = 1024;
    *&buf[10] = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, spid, "_ANEF_JIT_ANEC_COMPILE", "%u ok:%u", buf, 0xEu);
  }

  v14 = +[_ANEStrings modelBinaryName];
  v82 = [self createJITNetworkFromModelAtPath:v90 modelFilename:v83 aotModelAtPath:v84 aotModelFilename:v14];

  v93 = [&__NSDictionary0__struct mutableCopy];
  [v93 setObject:v82 forKeyedSubscript:@"InputNetworks"];
  v86 = [NSString stringWithFormat:@"%@.tmp", v87];
  [v93 setObject:v92 forKeyedSubscript:@"OutputFilePath"];
  [v93 setObject:v86 forKeyedSubscript:@"OutputFileName"];
  v88 = [&__NSDictionary0__struct mutableCopy];
  v15 = +[_ANEDeviceInfo aneSubType];
  v16 = +[_ANEDeviceInfo aneSubTypeVariant];
  v17 = +[_ANEDeviceInfo aneSubTypeProductVariant];
  v79 = [NSString stringWithFormat:@"%@%@%@", v15, v16, v17];

  v18 = qword_100021B20;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001174C();
  }

  if (var8)
  {
    v19 = qword_100021B20;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = NSStringFromSelector(a2);
      sub_100011794(v20, &v123, v19);
    }
  }

  if (v89)
  {
    [v88 setObject:v89 forKeyedSubscript:@"OptionsFilePath"];
    v21 = qword_100021B20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v67 = NSStringFromSelector(a2);
      *buf = 138413058;
      *&buf[4] = v67;
      *&buf[12] = 2112;
      *&buf[14] = v90;
      *&buf[22] = 2112;
      uTF8String = v89;
      LOWORD(v122) = 2112;
      *(&v122 + 2) = v88;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@: inputModelPath=%@ : optionsFilePath=%@ : compilerOptions=%@", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  uTF8String = sub_10000C908;
  *&v122 = sub_10000C918;
  *(&v122 + 1) = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v103 = 0;
  v100[1] = _NSConcreteStackBlock;
  v100[2] = 3221225472;
  v100[3] = sub_10000C920;
  v100[4] = &unk_10001C6C8;
  v100[5] = buf;
  v100[6] = v102;
  v101 = 0;
  v100[7] = spid;
  v22 = ANECCompileJIT();
  if (!v22)
  {
    v23 = +[NSFileManager defaultManager];
    *ok = 1;
    v85 = [v92 stringByAppendingPathComponent:v86];
    v27 = [v92 stringByAppendingPathComponent:v87];
    v100[0] = 0;
    v77 = v27;
    v28 = [v23 removeItemAtPath:v27 error:v100];
    v29 = v100[0];
    if ((v28 & 1) == 0)
    {
      v30 = qword_100021B20;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v69 = NSStringFromSelector(a2);
        *v113 = 138412802;
        *v114 = v69;
        *&v114[8] = 2112;
        v115 = v77;
        v116 = 2112;
        v117 = v29;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "%@: FAILED removing %@ : lErr=%@", v113, 0x20u);
      }

      v27 = v77;
    }

    v99 = v29;
    v31 = [v23 moveItemAtPath:v85 toPath:v27 error:&v99];
    v32 = v99;

    *ok = v31;
    if (v31)
    {
      v33 = v77;
      if (!+[_ANEStorageHelper enableApfsPurging])
      {
        goto LABEL_35;
      }

      v98 = 0;
      v34 = [_ANEStorageHelper markPathAndDirectParentPurgeable:v77 error:&v98];
      v35 = v98;
      if ((v34 & 1) == 0)
      {
        v36 = qword_100021B20;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = NSStringFromSelector(a2);
          *v113 = 138412802;
          *v114 = v37;
          *&v114[8] = 2112;
          v115 = v77;
          v116 = 2112;
          v117 = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@: FAILED make %@ as purgeable : errorForPurgeable=%@", v113, 0x20u);
        }
      }
    }

    else
    {
      v35 = qword_100021B20;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v70 = NSStringFromSelector(a2);
        *v113 = 138413058;
        *v114 = v70;
        *&v114[8] = 2112;
        v115 = v85;
        v116 = 2112;
        v117 = v77;
        v118 = 2112;
        v119 = v32;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%@: FAILED moving %@ to %@ : lErr=%@", v113, 0x2Au);
      }
    }

    v33 = v77;
LABEL_35:
    v97 = v32;
    v76 = [v23 attributesOfItemAtPath:v33 error:&v97];
    v38 = v97;

    if (v76)
    {
      v96 = v38;
      v39 = [v23 attributesOfItemAtPath:v80 error:&v96];
      v40 = v96;

      kdebug_trace();
      v41 = qword_100021B20;
      v42 = v41;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
      {
        *v113 = 67109376;
        *v114 = 1;
        *&v114[4] = 1024;
        *&v114[6] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_EVENT, spid, "_ANEF_JIT_ANEC_COMPILE", "%u ret:%d", v113, 0xEu);
      }

      if (v39)
      {
        v43 = [v76 objectForKeyedSubscript:NSFileCreationDate];
        v73 = [v76 objectForKeyedSubscript:NSFileModificationDate];
        v74 = [v39 objectForKeyedSubscript:NSFileCreationDate];
        v44 = [v39 objectForKeyedSubscript:NSFileModificationDate];
        v45 = [v43 compare:v74];
        v46 = [v73 compare:v44];
        if (v45 == -1 || v46 == -1)
        {
          v48 = [v76 mutableCopy];
          [v48 setObject:v74 forKeyedSubscript:NSFileCreationDate];
          [v48 setObject:v44 forKeyedSubscript:NSFileModificationDate];
          v95 = v40;
          v49 = [v23 setAttributes:v48 ofItemAtPath:v77 error:&v95];
          v47 = v95;

          if ((v49 & 1) == 0)
          {
            v50 = qword_100021B20;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v72 = NSStringFromSelector(a2);
              *v113 = 138413058;
              *v114 = v72;
              *&v114[8] = 2112;
              v115 = v48;
              v116 = 2112;
              v117 = v77;
              v118 = 2112;
              v119 = v47;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%@: setAttributes:%@ ofItemAtPath:%@ failed : lErr=%@", v113, 0x2Au);
            }
          }
        }

        else
        {
          v47 = v40;
        }

        v40 = v47;
      }

      else
      {
        v43 = qword_100021B20;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_1000117E0();
        }
      }

      v38 = v40;
    }

    else
    {
      v39 = qword_100021B20;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_1000117E0();
      }
    }

    v51 = qword_100021B20;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
    {
      v68 = NSStringFromSelector(a2);
      *v108 = 138412802;
      *v109 = v68;
      *&v109[8] = 2112;
      v110 = v80;
      v111 = 2112;
      v112 = v92;
      _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "%@: Attempt to store %@ to %@", v108, 0x20u);
    }

    if ([_ANEModelCacheManager saveSourceModelPath:v80 outputModelDirectory:v92])
    {
      if (!+[_ANEStorageHelper enableApfsPurging])
      {
LABEL_69:

        goto LABEL_70;
      }

      kdebug_trace();
      v52 = qword_100021B20;
      v53 = v52;
      if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *v108 = 67109376;
        *v109 = 2;
        *&v109[4] = 1024;
        *&v109[6] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, spid, "_ANEF_JIT_ANEC_COMPILE", "%u ret:%d", v108, 0xEu);
      }

      v54 = [_ANEModelCacheManager cachedSourceModelStoreNameFor:v92];
      v94 = 0;
      v55 = [_ANEStorageHelper markPathAndDirectParentPurgeable:v54 error:&v94];
      v56 = v94;
      if ((v55 & 1) == 0)
      {
        v57 = qword_100021B20;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = NSStringFromSelector(a2);
          *v108 = 138412802;
          *v109 = v58;
          *&v109[8] = 2112;
          v110 = v54;
          v111 = 2112;
          v112 = v56;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%@: FAILED make %@ as purgeable : errorForPurgeable=%@", v108, 0x20u);
        }
      }
    }

    else
    {
      *ok = 0;
      v54 = qword_100021B20;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(a2);
        *v108 = 138412802;
        *v109 = v71;
        *&v109[8] = 2112;
        v110 = v80;
        v111 = 2112;
        v112 = v92;
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "%@: FAILED storing %@ to %@", v108, 0x20u);
      }
    }

    goto LABEL_69;
  }

  *ok = 0;
  v23 = [*(*&buf[8] + 40) objectForKeyedSubscript:@"ErrorList"];
  v85 = [NSString stringWithFormat:@"ANECCompile(%@) FAILED: err=%@", v90, v23];
  v24 = qword_100021B20;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_1000116FC();
  }

  if (error)
  {
    v25 = +[_ANEStrings errorDomainCompiler];
    v106 = NSLocalizedDescriptionKey;
    v107 = v85;
    v26 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    *error = [NSError errorWithDomain:v25 code:v22 userInfo:v26];
  }

  [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsToCompileANECIR"];
LABEL_70:

  v59 = qword_100021B20;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_100011830();
  }

  kdebug_trace();
  v60 = qword_100021B20;
  v61 = v60;
  if (v78 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v63 = qword_100021B20;
  }

  else
  {
    if (os_signpost_enabled(v60))
    {
      v62 = *ok;
      *v104 = 67109376;
      *v105 = 0;
      *&v105[4] = 1024;
      *&v105[6] = v62;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_EVENT, spid, "_ANEF_JIT_ANEC_COMPILE", "%u ok:%u", v104, 0xEu);
    }

    v63 = qword_100021B20;
    if (os_signpost_enabled(v63))
    {
      *v104 = 134349056;
      *v105 = v75;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_EVENT, spid, "_ANEF_JIT_ANEC_COMPILE", "%{public, signpost.description:begin_time}llu ", v104, 0xCu);
    }
  }

  v64 = *(*&buf[8] + 40);
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(buf, 8);

  return v64;
}

+ (id)compileModel:(id *)model options:(id)options ok:(BOOL *)ok error:(id *)error
{
  optionsCopy = options;
  if (!model->var7)
  {
    v13 = model->var1;
    v14 = model->var0;
    v91 = model->var2;
    v15 = model->var4;
    v88 = model->var3;
    v84 = model->var6;
    var8 = model->var8;
    v90 = v13;
    v92 = v14;
    v87 = v15;
    v85 = [self createNetworkFromModelAtPath:v13 modelFilename:v14];
    v93 = [&__NSDictionary0__struct mutableCopy];
    [v93 setObject:v85 forKeyedSubscript:@"InputNetworks"];
    v83 = [NSString stringWithFormat:@"%@.tmp", v88];
    [NSObject setObject:v93 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    [v93 setObject:v15 forKeyedSubscript:@"OutputFilePath"];
    v96 = [&__NSDictionary0__struct mutableCopy];
    v17 = +[_ANEDeviceInfo aneSubType];
    v18 = +[_ANEDeviceInfo aneSubTypeVariant];
    v19 = +[_ANEDeviceInfo aneSubTypeProductVariant];
    v89 = [NSString stringWithFormat:@"%@%@%@", v17, v18, v19];

    v20 = qword_100021B20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001174C();
    }

    [v96 setObject:v89 forKeyedSubscript:@"TargetArchitecture"];
    if (model->var10)
    {
      v21 = [_ANECompiler createInMemoryConstants:?];
      [v96 setObject:v21 forKeyedSubscript:@"mpsConstants"];
    }

    if (var8)
    {
      v22 = qword_100021B20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = NSStringFromSelector(a2);
        sub_100011794(v23, &v126, v22);
      }
    }

    if (v91)
    {
      [v96 setObject:v91 forKeyedSubscript:@"OptionsFilePath"];
      v24 = qword_100021B20;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v73 = NSStringFromSelector(a2);
        *v123 = 138413058;
        *&v123[4] = v73;
        *&v123[12] = 2112;
        *&v123[14] = v90;
        *&v123[22] = 2112;
        v124 = v91;
        LOWORD(v125) = 2112;
        *(&v125 + 2) = v96;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%@: inputModelPath=%@ : optionsFilePath=%@ : compilerOptions=%@", v123, 0x2Au);
      }
    }

    *v123 = 0;
    *&v123[8] = v123;
    *&v123[16] = 0x3032000000;
    v124 = sub_10000C908;
    *&v125 = sub_10000C918;
    *(&v125 + 1) = 0;
    v105[0] = 0;
    v105[1] = v105;
    v105[2] = 0x2020000000;
    v106 = 0;
    v25 = qword_100021B20;
    if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Calling ANE compiler", buf, 2u);
    }

    if ([v14 isEqualToString:@"model.llir.bundle"])
    {
      v26 = qword_100021B20;
      if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v116 = v14;
        v117 = 2112;
        v118 = v93;
        v119 = 2112;
        v120 = v96;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Calling ANECCompileOnline... modelFilename=%@ compilerInput:%@ compilerOptions:%@", buf, 0x20u);
      }

      v104[7] = _NSConcreteStackBlock;
      v104[8] = 3221225472;
      v104[9] = sub_10000DE0C;
      v104[10] = &unk_10001C6F0;
      v104[11] = v123;
      v104[12] = v105;
      v27 = ANECCompileOnline();
    }

    else
    {
      v104[1] = _NSConcreteStackBlock;
      v104[2] = 3221225472;
      v104[3] = sub_10000DE64;
      v104[4] = &unk_10001C6F0;
      v104[5] = v123;
      v104[6] = v105;
      v27 = ANECCompile();
    }

    v28 = v27;
    v29 = qword_100021B20;
    if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v116) = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Calling ANE compiler done ret(%d)", buf, 8u);
    }

    if (v28)
    {
      *ok = 0;
      v30 = [*(*&v123[8] + 40) objectForKeyedSubscript:@"ErrorList"];
      v86 = [NSString stringWithFormat:@"ANECCompile(%@) FAILED: err=%@", v90, v30];
      v31 = qword_100021B20;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_1000116FC();
      }

      if (error)
      {
        v32 = +[_ANEStrings errorDomainCompiler];
        v107 = NSLocalizedDescriptionKey;
        v108 = v86;
        v33 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        *error = [NSError errorWithDomain:v32 code:v28 userInfo:v33];
      }

      [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsToCompileANECIR"];
LABEL_86:

      v71 = qword_100021B20;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_100011830();
      }

      v12 = *(*&v123[8] + 40);
      _Block_object_dispose(v105, 8);
      _Block_object_dispose(v123, 8);

      goto LABEL_89;
    }

    v30 = +[NSFileManager defaultManager];
    *ok = 1;
    v86 = [v87 stringByAppendingPathComponent:v83];
    v34 = [v87 stringByAppendingPathComponent:v88];
    v104[0] = 0;
    v81 = v34;
    v35 = [v30 removeItemAtPath:v34 error:v104];
    v36 = v104[0];
    if ((v35 & 1) == 0)
    {
      v37 = qword_100021B20;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v75 = NSStringFromSelector(a2);
        *buf = 138412802;
        v116 = v75;
        v117 = 2112;
        v118 = v81;
        v119 = 2112;
        v120 = v36;
        _os_log_debug_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%@: FAILED removing %@ : lErr=%@", buf, 0x20u);
      }

      v34 = v81;
    }

    v103 = v36;
    v38 = [v30 moveItemAtPath:v86 toPath:v34 error:&v103];
    v39 = v103;

    *ok = v38;
    if (v38)
    {
      v40 = v81;
      if (!+[_ANEStorageHelper enableApfsPurging])
      {
        goto LABEL_47;
      }

      v102 = 0;
      v41 = [_ANEStorageHelper markPathAndDirectParentPurgeable:v81 error:&v102];
      v42 = v102;
      if ((v41 & 1) == 0)
      {
        v43 = qword_100021B20;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = NSStringFromSelector(a2);
          *buf = 138412802;
          v116 = v44;
          v117 = 2112;
          v118 = v81;
          v119 = 2112;
          v120 = v42;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@: FAILED make %@ as purgeable : errorForPurgeable=%@", buf, 0x20u);
        }
      }
    }

    else
    {
      v42 = qword_100021B20;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v76 = NSStringFromSelector(a2);
        *buf = 138413058;
        v116 = v76;
        v117 = 2112;
        v118 = v86;
        v119 = 2112;
        v120 = v81;
        v121 = 2112;
        v122 = v39;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%@: FAILED moving %@ to %@ : lErr=%@", buf, 0x2Au);
      }
    }

    v40 = v81;
LABEL_47:
    v101 = v39;
    v82 = [v30 attributesOfItemAtPath:v40 error:&v101];
    v45 = v101;

    if (v82)
    {
      v100 = v45;
      v46 = [v30 attributesOfItemAtPath:v84 error:&v100];
      v47 = v100;

      if (v46)
      {
        v48 = [v82 objectForKeyedSubscript:NSFileCreationDate];
        v79 = [v82 objectForKeyedSubscript:NSFileModificationDate];
        v80 = [v46 objectForKeyedSubscript:NSFileCreationDate];
        v49 = [v46 objectForKeyedSubscript:NSFileModificationDate];
        v50 = [v48 compare:v80];
        v51 = [v79 compare:v49];
        if (v50 == -1 || v51 == -1)
        {
          v53 = [v82 mutableCopy];
          [v53 setObject:v80 forKeyedSubscript:NSFileCreationDate];
          [v53 setObject:v49 forKeyedSubscript:NSFileModificationDate];
          v99 = v47;
          v54 = [v30 setAttributes:v53 ofItemAtPath:v81 error:&v99];
          v52 = v99;

          if ((v54 & 1) == 0)
          {
            v55 = qword_100021B20;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v78 = NSStringFromSelector(a2);
              *buf = 138413058;
              v116 = v78;
              v117 = 2112;
              v118 = v53;
              v119 = 2112;
              v120 = v81;
              v121 = 2112;
              v122 = v52;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%@: setAttributes:%@ ofItemAtPath:%@ failed : lErr=%@", buf, 0x2Au);
            }
          }
        }

        else
        {
          v52 = v47;
        }

        v47 = v52;
      }

      else
      {
        v48 = qword_100021B20;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_1000117E0();
        }
      }

      v45 = v47;
    }

    else
    {
      v46 = qword_100021B20;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_1000117E0();
      }
    }

    v56 = qword_100021B20;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v74 = NSStringFromSelector(a2);
      *v109 = 138412802;
      v110 = v74;
      v111 = 2112;
      v112 = v84;
      v113 = 2112;
      v114 = v87;
      _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "%@: Attempt to store %@ to %@", v109, 0x20u);
    }

    if ([_ANEModelCacheManager saveSourceModelPath:v84 outputModelDirectory:v87])
    {
      if (!+[_ANEStorageHelper enableApfsPurging])
      {
LABEL_75:
        v62 = [optionsCopy objectForKeyedSubscript:kANEFRetainModelsWithoutSourceURLKey];
        bOOLValue = [v62 BOOLValue];

        v64 = v82;
        if (bOOLValue)
        {
          v65 = qword_100021B20;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            sub_10001187C();
          }

          v64 = v82;
          if (+[_ANEModelCacheManager createModelCacheRetain:](_ANEModelCacheManager, "createModelCacheRetain:", v87) && +[_ANEStorageHelper enableApfsPurging])
          {
            v66 = [_ANEModelCacheManager cachedModelRetainNameFor:v87];
            v97 = 0;
            v67 = [_ANEStorageHelper markPathAndDirectParentPurgeable:v66 error:&v97];
            v68 = v97;
            if ((v67 & 1) == 0)
            {
              v69 = qword_100021B20;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                v70 = NSStringFromSelector(a2);
                *v109 = 138412802;
                v110 = v70;
                v111 = 2112;
                v112 = v66;
                v113 = 2112;
                v114 = v68;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "%@: FAILED make %@ as purgeable : errorForPurgeable=%@", v109, 0x20u);
              }
            }

            v64 = v82;
          }
        }

        goto LABEL_86;
      }

      v57 = [_ANEModelCacheManager cachedSourceModelStoreNameFor:v87];
      v98 = 0;
      v58 = [_ANEStorageHelper markPathAndDirectParentPurgeable:v57 error:&v98];
      v59 = v98;
      if ((v58 & 1) == 0)
      {
        v60 = qword_100021B20;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = NSStringFromSelector(a2);
          *v109 = 138412802;
          v110 = v61;
          v111 = 2112;
          v112 = v57;
          v113 = 2112;
          v114 = v59;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%@: FAILED make %@ as purgeable : errorForPurgeable=%@", v109, 0x20u);
        }
      }
    }

    else
    {
      *ok = 0;
      v57 = qword_100021B20;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v77 = NSStringFromSelector(a2);
        *v109 = 138412802;
        v110 = v77;
        v111 = 2112;
        v112 = v84;
        v113 = 2112;
        v114 = v87;
        _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%@: FAILED storing %@ to %@", v109, 0x20u);
      }
    }

    goto LABEL_75;
  }

  v10 = qword_100021B20;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = NSStringFromSelector(a2);
    sub_1000118C4(v11, buf, v10);
  }

  v12 = [self compileModelJIT:model ok:ok error:error];
  if (!*ok)
  {
    v90 = [NSString stringWithFormat:@"compileModelJIT: FAILED: lAttr=%@ : lErr=%@", v12, *error];
    v92 = +[_ANELog compiler];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_1000116FC();
    }

LABEL_89:
  }

  return v12;
}

+ (id)createInMemoryConstants:(id)constants
{
  constantsCopy = constants;
  v3 = [&__NSDictionary0__struct mutableCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = constantsCopy;
  v44 = v3;
  v5 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v5)
  {
    v6 = *v47;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v47 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v46 + 1) + 8 * v7);
      v9 = [&__NSDictionary0__struct mutableCopy];
      v10 = [v4 objectForKeyedSubscript:v8];
      v11 = [v10 objectForKey:kANEFConstantSurfaceIDKey];
      v12 = v11;
      if (!v11)
      {
        v21 = qword_100021B20;
        if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_ERROR))
        {
          sub_1000119E8(v8, v21, v22, v23, v24, v25, v26, v27);
        }

        goto LABEL_20;
      }

      ioSurface = [v11 ioSurface];
      AllocSize = IOSurfaceGetAllocSize(ioSurface);
      v15 = [NSData dataWithBytesNoCopy:IOSurfaceGetBaseAddress(ioSurface) length:AllocSize freeWhenDone:0];
      [v9 setObject:v15 forKeyedSubscript:@"mpsConstantDataRef"];

      v16 = [v10 objectForKey:kANEFConstantSurfaceAlignmentKey];
      LODWORD(ioSurface) = v16 == 0;

      if (ioSurface)
      {
        break;
      }

      valuePtr = 0;
      v17 = [v10 objectForKeyedSubscript:kANEFConstantSurfaceAlignmentKey];

      if (!CFNumberGetValue(v17, kCFNumberLongLongType, &valuePtr))
      {
        v35 = qword_100021B20;
        if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_ERROR))
        {
          sub_100011910(v8, v35, v36, v37, v38, v39, v40, v41);
        }

LABEL_20:

        v20 = 0;
        v19 = v44;
        goto LABEL_21;
      }

      v18 = [NSNumber numberWithUnsignedLongLong:valuePtr];
      [v9 setObject:v18 forKeyedSubscript:@"mpsConstantDataAlignment"];

      [v44 setObject:v9 forKey:v8];
      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v28 = qword_100021B20;
    if (os_log_type_enabled(qword_100021B20, OS_LOG_TYPE_ERROR))
    {
      sub_10001197C(v8, v28, v29, v30, v31, v32, v33, v34);
    }

    goto LABEL_20;
  }

LABEL_11:

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100011A54();
  }

  v19 = v44;
  v20 = v44;
LABEL_21:

  return v20;
}

@end