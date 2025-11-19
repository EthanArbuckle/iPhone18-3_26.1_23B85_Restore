@interface _ANEMILCompiler
+ (id)compileModelAt:(id)a3 modelName:(id)a4 csIdentity:(id)a5 optionsFilename:(id)a6 outputURL:(id)a7 saveSourceURL:(id)a8 aotModelBinaryPath:(id)a9 isEncryptedModel:(BOOL)a10 options:(id)a11 ok:(BOOL *)a12 error:(id *)a13;
@end

@implementation _ANEMILCompiler

+ (id)compileModelAt:(id)a3 modelName:(id)a4 csIdentity:(id)a5 optionsFilename:(id)a6 outputURL:(id)a7 saveSourceURL:(id)a8 aotModelBinaryPath:(id)a9 isEncryptedModel:(BOOL)a10 options:(id)a11 ok:(BOOL *)a12 error:(id *)a13
{
  v18 = a3;
  v19 = a4;
  v61 = a5;
  v20 = a6;
  v59 = a7;
  v62 = a8;
  v53 = a9;
  v63 = a11;
  context = objc_autoreleasePoolPush();
  v51 = v18;
  v21 = [v18 path];
  v22 = [NSString stringWithFormat:@"%@/", v21];

  v23 = [v59 path];
  obj = [NSString stringWithFormat:@"%@/", v23];

  v24 = [v62 path];
  v60 = [NSString stringWithFormat:@"%@", v24];

  v25 = v20;
  if (v25)
  {
    v26 = [v22 stringByAppendingPathComponent:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = +[_ANELog compiler];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v47 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v47;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    *&v70 = v60;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@ inputModelPath=%@ sourceModelPath=%@", buf, 0x20u);
  }

  v28 = [v63 objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];

  if (v28)
  {
    v57 = [v63 objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
  }

  else
  {
    v57 = 0;
  }

  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v49 = v19;
  *buf = v49;
  v50 = v22;
  *&buf[8] = v50;
  v52 = v26;
  *&buf[16] = v52;
  *&v70 = +[_ANEStrings modelBinaryName];
  objc_storeStrong(&v70 + 1, obj);
  objc_storeStrong(&v71 + 1, v60);
  objc_storeStrong(&v71, a9);
  BYTE1(v72) = a10;
  BYTE2(v72) = 1;
  LOBYTE(v72) = v57 != 0;
  if (v57)
  {
    v29 = 19;
  }

  else
  {
    v29 = 3;
  }

  v30 = +[NSDate date];
  v65 = 0;
  v55 = [_ANECompiler compileModel:buf options:v63 ok:a12 error:&v65];
  v56 = v65;
  v31 = +[NSDate date];
  [v31 timeIntervalSinceDate:v30];
  v33 = v32;
  if (!*a12)
  {
    v34 = [NSString stringWithFormat:@"_ANEMILCompiler: for %@ FAILED: lAttr=%@ : lErr=%@", v61, v55, v56];
    v35 = +[_ANELog compiler];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      sub_100010D94(v36, v34, v68, v35);
    }
  }

  v64 = &stru_10001CBD8;
  v37 = [_ANEStrings trimmedModelPath:v62 trimmedPath:&v64];
  v38 = v64;
  v66[0] = @"csIdentity";
  v66[1] = @"modelURL";
  v67[0] = v61;
  v67[1] = v38;
  v66[2] = @"privacy_score";
  v39 = [NSNumber numberWithBool:v37];
  v67[2] = v39;
  v66[3] = @"modelType";
  v40 = [NSNumber numberWithInteger:v29];
  v41 = v40;
  if (v25)
  {
    v42 = v25;
  }

  else
  {
    v42 = &stru_10001CBD8;
  }

  v67[3] = v40;
  v67[4] = v42;
  v66[4] = @"compilationArgs";
  v66[5] = @"modelIRTranslationTime";
  v67[5] = &off_10001D4B8;
  v66[6] = @"modelCompileTime";
  v43 = [NSNumber numberWithDouble:v33 * 1000.0];
  v67[6] = v43;
  v66[7] = @"modelCompiled";
  v44 = [NSNumber numberWithBool:*a12];
  v67[7] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:8];
  [_ANEDataReporter reportTelemetryToPPS:@"modelCompilation" playload:v45];

  sub_100004038(buf);
  objc_autoreleasePoolPop(context);
  if (a13 && !*a12)
  {
    *a13 = [_ANECompiler createErrorWithUnderlyingError:v56];
  }

  return v55;
}

@end