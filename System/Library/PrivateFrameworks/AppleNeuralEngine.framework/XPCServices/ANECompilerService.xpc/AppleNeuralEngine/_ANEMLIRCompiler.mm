@interface _ANEMLIRCompiler
+ (id)compileModelAt:(id)at modelName:(id)name csIdentity:(id)identity optionsFilename:(id)filename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 mpsConstants:(id)self2 ok:(BOOL *)self3 error:(id *)self4;
@end

@implementation _ANEMLIRCompiler

+ (id)compileModelAt:(id)at modelName:(id)name csIdentity:(id)identity optionsFilename:(id)filename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 mpsConstants:(id)self2 ok:(BOOL *)self3 error:(id *)self4
{
  atCopy = at;
  nameCopy = name;
  identityCopy = identity;
  filenameCopy = filename;
  lCopy = l;
  rLCopy = rL;
  pathCopy = path;
  optionsCopy = options;
  constantsCopy = constants;
  context = objc_autoreleasePoolPush();
  v55 = atCopy;
  path = [atCopy path];
  v24 = [NSString stringWithFormat:@"%@/", path];

  path2 = [lCopy path];
  obj = [NSString stringWithFormat:@"%@/", path2];

  path3 = [rLCopy path];
  v64 = [NSString stringWithFormat:@"%@", path3];

  v27 = filenameCopy;
  v66 = v27;
  if (v27)
  {
    v28 = [v24 stringByAppendingPathComponent:v27];
  }

  else
  {
    v28 = 0;
  }

  v29 = +[_ANELog compiler];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v51 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v51;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    *&buf[22] = 2112;
    *&v75 = v64;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%@ inputModelPath=%@ sourceModelPath=%@", buf, 0x20u);
  }

  v30 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];

  if (v30)
  {
    v61 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
  }

  else
  {
    v61 = 0;
  }

  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v52 = nameCopy;
  *buf = v52;
  v54 = v24;
  *&buf[8] = v54;
  v56 = v28;
  *&buf[16] = v56;
  *&v75 = +[_ANEStrings modelBinaryName];
  objc_storeStrong(&v75 + 1, obj);
  objc_storeStrong(&v76 + 1, v64);
  objc_storeStrong(&v76, path);
  *(&v77 + 1) = model;
  LOBYTE(v77) = v61 != 0;
  objc_storeStrong(&v77 + 1, constants);
  v31 = v77;
  v60 = +[NSDate date];
  v70 = 0;
  v32 = [_ANECompiler compileModel:buf options:optionsCopy ok:ok error:&v70];
  v33 = v70;
  v34 = +[NSDate date];
  [v34 timeIntervalSinceDate:v60];
  v36 = v35;
  v53 = v34;
  if (!*ok)
  {
    v37 = [NSString stringWithFormat:@"_ANEMLIRCompiler: for %@ FAILED: lAttr=%@ : lErr=%@", identityCopy, v32, v33, v52, v34, v54];
    v38 = +[_ANELog compiler];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      sub_100010D94(v39, v37, v73, v38);
    }
  }

  v40 = v32;
  v69 = &stru_10001CBD8;
  v41 = [_ANEStrings trimmedModelPath:rLCopy trimmedPath:&v69];
  v42 = v69;
  v71[0] = @"csIdentity";
  v71[1] = @"modelURL";
  v72[0] = identityCopy;
  v72[1] = v42;
  v71[2] = @"privacy_score";
  v43 = [NSNumber numberWithBool:v41];
  v72[2] = v43;
  v71[3] = @"modelType";
  v44 = [NSNumber numberWithInteger:(16 * v31) | 4];
  v45 = v44;
  v46 = v66;
  if (!v66)
  {
    v46 = &stru_10001CBD8;
  }

  v72[3] = v44;
  v72[4] = v46;
  v71[4] = @"compilationArgs";
  v71[5] = @"modelIRTranslationTime";
  v72[5] = &off_10001D4D0;
  v71[6] = @"modelCompileTime";
  v47 = [NSNumber numberWithDouble:v36 * 1000.0];
  v72[6] = v47;
  v71[7] = @"modelCompiled";
  v48 = [NSNumber numberWithBool:*ok];
  v72[7] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:8];
  [_ANEDataReporter reportTelemetryToPPS:@"modelCompilation" playload:v49];

  sub_100004038(buf);
  objc_autoreleasePoolPop(context);
  if (error && !*ok)
  {
    *error = [_ANECompiler createErrorWithUnderlyingError:v33];
  }

  return v40;
}

@end