@interface _ANECVAIRCompiler
+ (id)compileModelAt:(id)at csIdentity:(id)identity plistFilename:(id)filename optionsFilename:(id)optionsFilename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 ok:(BOOL *)self2 error:(id *)self3;
@end

@implementation _ANECVAIRCompiler

+ (id)compileModelAt:(id)at csIdentity:(id)identity plistFilename:(id)filename optionsFilename:(id)optionsFilename outputURL:(id)l saveSourceURL:(id)rL aotModelBinaryPath:(id)path isEncryptedModel:(BOOL)self0 options:(id)self1 ok:(BOOL *)self2 error:(id *)self3
{
  atCopy = at;
  identityCopy = identity;
  filenameCopy = filename;
  optionsFilenameCopy = optionsFilename;
  lCopy = l;
  rLCopy = rL;
  pathCopy = path;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  path = [atCopy path];
  v22 = [NSString stringWithFormat:@"%@/", path];

  path2 = [lCopy path];
  obj = [NSString stringWithFormat:@"%@/", path2];

  path3 = [rLCopy path];
  v60 = [NSString stringWithFormat:@"%@", path3];

  v25 = +[_ANELog compiler];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v48 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = v48;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    *&v70 = v60;
    _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@ inputModelPath=%@ sourceModelPath=%@", buf, 0x20u);
  }

  v26 = optionsFilenameCopy;
  v55 = v26;
  if (v26)
  {
    v27 = [v22 stringByAppendingPathComponent:v26];
  }

  else
  {
    v27 = 0;
  }

  if (!filenameCopy)
  {
    filenameCopy = +[_ANEStrings defaultANECIRFileName];
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
  v29 = filenameCopy;
  *buf = v29;
  v50 = v22;
  *&buf[8] = v50;
  v51 = v27;
  *&buf[16] = v51;
  *&v70 = +[_ANEStrings modelBinaryName];
  objc_storeStrong(&v70 + 1, obj);
  objc_storeStrong(&v71 + 1, v60);
  objc_storeStrong(&v71, path);
  *(&v72 + 1) = model;
  LOBYTE(v72) = v57 != 0;
  if (v57)
  {
    v30 = 17;
  }

  else
  {
    v30 = 1;
  }

  v31 = +[NSDate date];
  v65 = 0;
  v54 = [_ANECompiler compileModel:buf options:optionsCopy ok:ok error:&v65];
  v56 = v65;
  v32 = +[NSDate date];
  [v32 timeIntervalSinceDate:v31];
  v34 = v33;
  if (!*ok)
  {
    v35 = [NSString stringWithFormat:@"_ANECVAIRCompiler: for %@ FAILED: lAttr=%@ : lErr=%@", identityCopy, v54, v56];
    v36 = +[_ANELog compiler];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      sub_100010D94(v37, v35, v68, v36);
    }
  }

  v64 = &stru_10001CBD8;
  v38 = [_ANEStrings trimmedModelPath:rLCopy trimmedPath:&v64];
  v39 = v64;
  v66[0] = @"csIdentity";
  v66[1] = @"modelURL";
  v67[0] = identityCopy;
  v67[1] = v39;
  v66[2] = @"privacy_score";
  v40 = [NSNumber numberWithBool:v38];
  v67[2] = v40;
  v66[3] = @"modelType";
  v41 = [NSNumber numberWithInteger:v30];
  v42 = v41;
  if (v29)
  {
    v43 = v29;
  }

  else
  {
    v43 = &stru_10001CBD8;
  }

  v67[3] = v41;
  v67[4] = v43;
  v66[4] = @"compilationArgs";
  v66[5] = @"modelIRTranslationTime";
  v67[5] = &off_10001D488;
  v66[6] = @"modelCompileTime";
  v44 = [NSNumber numberWithDouble:v34 * 1000.0];
  v67[6] = v44;
  v66[7] = @"modelCompiled";
  v45 = [NSNumber numberWithBool:*ok];
  v67[7] = v45;
  v46 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:8];
  [_ANEDataReporter reportTelemetryToPPS:@"modelCompilation" playload:v46];

  sub_100004038(buf);
  objc_autoreleasePoolPop(context);
  if (error && !*ok)
  {
    *error = [_ANECompiler createErrorWithUnderlyingError:v56];
  }

  return v54;
}

@end