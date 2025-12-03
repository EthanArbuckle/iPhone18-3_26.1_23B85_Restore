@interface _ANEMILCompiler
+ (id)compileModelAt:(id)at modelName:(id)name csIdentity:(id)identity optionsFilename:(id)filename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 ok:(BOOL *)self2 error:(id *)self3;
@end

@implementation _ANEMILCompiler

+ (id)compileModelAt:(id)at modelName:(id)name csIdentity:(id)identity optionsFilename:(id)filename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 ok:(BOOL *)self2 error:(id *)self3
{
  atCopy = at;
  nameCopy = name;
  identityCopy = identity;
  filenameCopy = filename;
  lCopy = l;
  rLCopy = rL;
  pathCopy = path;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  v51 = atCopy;
  path = [atCopy path];
  v22 = [NSString stringWithFormat:@"%@/", path];

  path2 = [lCopy path];
  obj = [NSString stringWithFormat:@"%@/", path2];

  path3 = [rLCopy path];
  v60 = [NSString stringWithFormat:@"%@", path3];

  v25 = filenameCopy;
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

  v28 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];

  if (v28)
  {
    v57 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
  }

  else
  {
    v57 = 0;
  }

  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v49 = nameCopy;
  *buf = v49;
  v50 = v22;
  *&buf[8] = v50;
  v52 = v26;
  *&buf[16] = v52;
  *&v70 = +[_ANEStrings modelBinaryName];
  objc_storeStrong(&v70 + 1, obj);
  objc_storeStrong(&v71 + 1, v60);
  objc_storeStrong(&v71, path);
  BYTE1(v72) = model;
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
  v55 = [_ANECompiler compileModel:buf options:optionsCopy ok:ok error:&v65];
  v56 = v65;
  v31 = +[NSDate date];
  [v31 timeIntervalSinceDate:v30];
  v33 = v32;
  if (!*ok)
  {
    v34 = [NSString stringWithFormat:@"_ANEMILCompiler: for %@ FAILED: lAttr=%@ : lErr=%@", identityCopy, v55, v56];
    v35 = +[_ANELog compiler];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      sub_100010D94(v36, v34, v68, v35);
    }
  }

  v64 = &stru_10001CBD8;
  v37 = [_ANEStrings trimmedModelPath:rLCopy trimmedPath:&v64];
  v38 = v64;
  v66[0] = @"csIdentity";
  v66[1] = @"modelURL";
  v67[0] = identityCopy;
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
  v44 = [NSNumber numberWithBool:*ok];
  v67[7] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:8];
  [_ANEDataReporter reportTelemetryToPPS:@"modelCompilation" playload:v45];

  sub_100004038(buf);
  objc_autoreleasePoolPop(context);
  if (error && !*ok)
  {
    *error = [_ANECompiler createErrorWithUnderlyingError:v56];
  }

  return v55;
}

@end