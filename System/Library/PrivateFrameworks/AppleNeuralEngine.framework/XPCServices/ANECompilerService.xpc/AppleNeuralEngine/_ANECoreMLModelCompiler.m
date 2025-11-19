@interface _ANECoreMLModelCompiler
+ (id)compileModelAt:(id)a3 csIdentity:(id)a4 key:(id)a5 optionsFilename:(id)a6 tempDirectory:(id)a7 outputURL:(id)a8 saveSourceModelPath:(id)a9 aotModelBinaryPath:(id)a10 isEncryptedModel:(BOOL)a11 options:(id)a12 ok:(BOOL *)a13 error:(id *)a14;
+ (id)createErrorWithString:(id)a3;
+ (id)pathsForModelURL:(id)a3;
+ (void)initialize;
@end

@implementation _ANECoreMLModelCompiler

+ (void)initialize
{
  qword_100021B28 = +[_ANELog compiler];

  _objc_release_x1();
}

+ (id)createErrorWithString:(id)a3
{
  v4 = [NSString stringWithFormat:@"_ANECoreMLModelCompiler : error %@", a3];
  v5 = qword_100021B28;
  if (os_log_type_enabled(qword_100021B28, OS_LOG_TYPE_ERROR))
  {
    sub_100011A9C(v5, a2, v4);
  }

  [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsEspressoCompilation"];
  v6 = +[_ANEStrings errorDomainEspresso];
  v10 = NSLocalizedDescriptionKey;
  v11 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSError errorWithDomain:v6 code:1 userInfo:v7];

  return v8;
}

+ (id)pathsForModelURL:(id)a3
{
  v3 = [a3 path];
  v4 = [NSString stringWithFormat:@"%@/", v3];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 enumeratorAtPath:v3];
  v7 = 0;
  while (1)
  {
    v8 = [v6 nextObject];

    if (!v8)
    {
      break;
    }

    v7 = v8;
    if ([v8 containsString:@".net"])
    {
      goto LABEL_6;
    }
  }

  v8 = [NSString stringWithFormat:@"model.espresso.net"];
LABEL_6:
  v9 = [NSString stringWithFormat:@"%@%@", v4, v8];
  v10 = [v4 pathExtension];
  if ([v10 isEqualToString:@"bin"])
  {
    v11 = v4;
LABEL_8:

LABEL_10:
    v13 = v11;

    v9 = v13;
    goto LABEL_11;
  }

  v12 = [v4 containsString:@".bin:"];

  v11 = v4;
  if (v12)
  {
    goto LABEL_10;
  }

  v10 = [v4 pathExtension];
  if ([v10 isEqualToString:@"net"])
  {
    v11 = v3;
    goto LABEL_8;
  }

  v15 = [v4 pathExtension];
  v16 = [v15 isEqualToString:@"mil"];

  v11 = v3;
  if (v16)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

+ (id)compileModelAt:(id)a3 csIdentity:(id)a4 key:(id)a5 optionsFilename:(id)a6 tempDirectory:(id)a7 outputURL:(id)a8 saveSourceModelPath:(id)a9 aotModelBinaryPath:(id)a10 isEncryptedModel:(BOOL)a11 options:(id)a12 ok:(BOOL *)a13 error:(id *)a14
{
  v82 = a3;
  v81 = a4;
  v83 = a5;
  v77 = a6;
  v73 = a7;
  v74 = a8;
  v75 = a9;
  v66 = a10;
  v84 = a12;
  context = objc_autoreleasePoolPush();
  v76 = +[NSFileManager defaultManager];
  v85 = [a1 pathsForModelURL:v82];
  v19 = [v82 path];
  v68 = [NSString stringWithFormat:@"%@/", v19];

  v20 = [v74 path];
  obj = [NSString stringWithFormat:@"%@/", v20];

  v21 = +[_ANELog compiler];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v36 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v36;
    *&buf[12] = 2112;
    *&buf[14] = v85;
    *&buf[22] = 2112;
    *&buf[24] = v75;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%@ inputModelPath=%@ sourceModelPath=%@", buf, 0x20u);
  }

  v22 = [v84 objectForKeyedSubscript:kANEModelKeyEspressoTranslationOptions];
  v23 = &__NSDictionary0__struct;
  if (v22)
  {
    v23 = v22;
  }

  v72 = v23;
  v24 = [_ANEHashEncoding hexStringForString:v85];
  v25 = [_ANEHashEncoding hexStringForString:v83];
  v26 = [NSString stringWithFormat:@"%@/%@/%@/%@/", v73, v81, v24, v25];

  [v76 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];
  v79 = +[NSDate date];
  v89 = 0;
  LODWORD(v24) = [_ANEEspressoIRTranslator translateModelAt:v85 key:v83 outputPath:v26 isEncryptedModel:a11 translationOptions:v72 error:&v89];
  v80 = v89;
  v78 = +[NSDate date];
  [v78 timeIntervalSinceDate:v79];
  v28 = v27;
  if (v24)
  {
    if (v77)
    {
      v29 = [v68 stringByAppendingPathComponent:?];
      goto LABEL_21;
    }

    v33 = +[_ANEStrings defaultCompilerOptionsFilename];
    v29 = [v26 stringByAppendingPathComponent:v33];

    v88 = 0;
    if ([v76 fileExistsAtPath:v29 isDirectory:&v88])
    {
      if (v88 == 1)
      {
        v34 = [NSString stringWithFormat:@"Directory used for optionsFilePath (%@)", v29];
        v35 = 0;
LABEL_17:
        v37 = qword_100021B28;
        if (os_log_type_enabled(qword_100021B28, OS_LOG_TYPE_DEBUG))
        {
          sub_100011B50(v37, a2);
        }

        if (!v35)
        {
          v59 = qword_100021B28;
          if (os_log_type_enabled(qword_100021B28, OS_LOG_TYPE_ERROR))
          {
            v63 = v59;
            v64 = NSStringFromSelector(a2);
            *buf = 138413314;
            *&buf[4] = v64;
            *&buf[12] = 2112;
            *&buf[14] = v34;
            *&buf[22] = 2112;
            *&buf[24] = v85;
            LOWORD(v93[0]) = 2112;
            *(v93 + 2) = v83;
            WORD5(v93[0]) = 2112;
            *(v93 + 12) = v26;
            _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%@: %@ : FAILED : [_ANEEspressoIRTranslator -translateModelAt:%@ key=%@ outputPath:%@]", buf, 0x34u);
          }

          *a13 = 0;
          v60 = [a1 createErrorWithString:v34];

          v71 = &__NSDictionary0__struct;
          v31 = 0.0;
          v32 = 2;
          v80 = v60;
          goto LABEL_28;
        }

LABEL_21:
        v38 = [v84 objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];

        if (v38)
        {
          v39 = [v84 objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
        }

        else
        {
          v39 = 0;
        }

        v94 = 0;
        memset(v93, 0, sizeof(v93));
        memset(buf, 0, sizeof(buf));
        *buf = +[_ANEStrings defaultANECIRFileName];
        objc_storeStrong(&buf[8], v26);
        objc_storeStrong(&buf[16], v29);
        v40 = +[_ANEStrings modelBinaryName];
        v41 = *&buf[24];
        *&buf[24] = v40;

        objc_storeStrong(v93, obj);
        objc_storeStrong(&v93[1], a9);
        objc_storeStrong(v93 + 1, a10);
        *(&v93[1] + 9) = a11;
        BYTE8(v93[1]) = v39 != 0;
        if (v39)
        {
          v32 = 18;
        }

        else
        {
          v32 = 2;
        }

        v42 = +[NSDate date];

        v87 = v80;
        v71 = [_ANECompiler compileModel:buf options:v84 ok:a13 error:&v87];
        v43 = v87;

        v44 = +[NSDate date];

        [v44 timeIntervalSinceDate:v42];
        v46 = v45;
        sub_100004038(buf);

        v31 = v46 * 1000.0;
        v34 = v29;
        v78 = v44;
        v79 = v42;
        v80 = v43;
LABEL_28:

        goto LABEL_29;
      }

      v34 = 0;
    }

    else
    {
      v34 = [NSString stringWithFormat:@"No compiler options at optionsFilePath (%@)", v29];

      v29 = 0;
    }

    v35 = 1;
    goto LABEL_17;
  }

  *a13 = 0;
  v30 = qword_100021B28;
  v31 = 0.0;
  if (os_log_type_enabled(qword_100021B28, OS_LOG_TYPE_ERROR))
  {
    v61 = v30;
    v62 = NSStringFromSelector(a2);
    *buf = 138413314;
    *&buf[4] = v62;
    *&buf[12] = 2112;
    *&buf[14] = v85;
    *&buf[22] = 2112;
    *&buf[24] = v83;
    LOWORD(v93[0]) = 2112;
    *(v93 + 2) = v26;
    WORD5(v93[0]) = 2112;
    *(v93 + 12) = v80;
    _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%@, : [_ANEEspressoIRTranslator -translateModelAt:%@ key=%@ outputPath:%@] FAILED: %@", buf, 0x34u);
  }

  v71 = &__NSDictionary0__struct;
  v32 = 2;
LABEL_29:
  v47 = [NSURL fileURLWithPath:v75];
  v86 = &stru_10001CBD8;
  v48 = [_ANEStrings trimmedModelPath:v47 trimmedPath:&v86];
  v49 = v86;

  v90[0] = @"csIdentity";
  v90[1] = @"modelURL";
  v91[0] = v81;
  v91[1] = v49;
  v90[2] = @"privacy_score";
  v50 = [NSNumber numberWithBool:v48];
  v91[2] = v50;
  v90[3] = @"modelType";
  v51 = [NSNumber numberWithInteger:v32];
  v91[3] = v51;
  v52 = v77;
  if (!v77)
  {
    v52 = &stru_10001CBD8;
  }

  v91[4] = v52;
  v90[4] = @"compilationArgs";
  v90[5] = @"modelIRTranslationTime";
  v53 = [NSNumber numberWithDouble:v28 * 1000.0];
  v91[5] = v53;
  v90[6] = @"modelCompileTime";
  v54 = [NSNumber numberWithDouble:v31];
  v91[6] = v54;
  v90[7] = @"modelCompiled";
  v55 = [NSNumber numberWithBool:*a13];
  v91[7] = v55;
  v56 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:8];
  [_ANEDataReporter reportTelemetryToPPS:@"modelCompilation" playload:v56];

  objc_autoreleasePoolPop(context);
  if (a14 && !*a13)
  {
    *a14 = [v80 copy];
  }

  v57 = qword_100021B28;
  if (os_log_type_enabled(qword_100021B28, OS_LOG_TYPE_DEBUG))
  {
    sub_100011BF8(v57, a2);
  }

  return v71;
}

@end