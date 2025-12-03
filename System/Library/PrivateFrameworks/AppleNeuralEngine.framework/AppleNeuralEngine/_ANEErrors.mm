@interface _ANEErrors
+ (id)badArgumentForMethod:(id)method;
+ (id)baseModelIdentifierNotFoundForNewInstanceMethod:(id)method;
+ (id)createErrorWithCode:(int64_t)code description:(id)description;
+ (id)dataNotFoundForMethod:(id)method;
+ (id)entitlementErrorForMethod:(id)method;
+ (id)fileAccessErrorForMethod:(id)method;
+ (id)fileNotFoundErrorForMethod:(id)method;
+ (id)guestToHostInterfaceTooOld:(id)old;
+ (id)hostTooOld:(id)old;
+ (id)invalidModelErrorForMethod:(id)method;
+ (id)invalidModelInstanceErrorForMethod:(id)method;
+ (id)invalidModelKeyErrorForMethod:(id)method;
+ (id)missingCodeSigningErrorForMethod:(id)method;
+ (id)modelIdentifierNotFoundForMethod:(id)method;
+ (id)modelNewInstanceCacheIdentifierNotNilMethod:(id)method;
+ (id)notSupportedErrorForMethod:(id)method;
+ (id)priorityErrorForMethod:(id)method;
+ (id)programChainingPrepareErrorForMethod:(id)method;
+ (id)programCreationErrorForMethod:(id)method;
+ (id)programIOSurfacesMapErrorForMethod:(id)method code:(int64_t)code;
+ (id)programIOSurfacesUnmapErrorForMethod:(id)method code:(int64_t)code;
+ (id)programInferenceOtherErrorForMethod:(id)method;
+ (id)programInferenceOverflowErrorForMethod:(id)method;
+ (id)programInferenceProgramNotFoundForMethod:(id)method;
+ (id)programLoadErrorForMethod:(id)method;
+ (id)programLoadErrorForMethod:(id)method code:(int64_t)code;
+ (id)programLoadNewInstanceErrorForMethod:(id)method;
+ (id)programLoadNewInstanceErrorForMethod:(id)method code:(int64_t)code;
+ (id)systemModelPurgeNotAllowedForMethod:(id)method;
+ (id)timeoutErrorForMethod:(id)method;
+ (id)virtualizationDataError:(id)error;
+ (id)virtualizationHostError:(id)error;
+ (id)virtualizationHostError:(id)error error:(id)a4;
@end

@implementation _ANEErrors

+ (id)createErrorWithCode:(int64_t)code description:(id)description
{
  v18[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v6 = MEMORY[0x1E696ABC0];
  v7 = +[_ANEStrings errorDomainGeneric];
  v17 = *MEMORY[0x1E696A578];
  v18[0] = descriptionCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v6 errorWithDomain:v7 code:code userInfo:v8];

  v10 = +[_ANELog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138412546;
    v14 = descriptionCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1AD246000, v10, OS_LOG_TYPE_INFO, "%@ : %@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)entitlementErrorForMethod:(id)method
{
  v4 = MEMORY[0x1E696AEC0];
  methodCopy = method;
  v6 = +[_ANEStrings restrictedAccessEntitlement];
  v7 = [v4 stringWithFormat:@"%@: requires restricted access connection and (%@) entitlement", methodCopy, v6];

  v8 = [self createErrorWithCode:1 description:v7];

  return v8;
}

+ (id)priorityErrorForMethod:(id)method
{
  v4 = MEMORY[0x1E696AEC0];
  methodCopy = method;
  v6 = +[_ANEStrings restrictedAccessEntitlement];
  v7 = [v4 stringWithFormat:@"%@: Realtime priority requires restricted access connection and (%@) entitlement", methodCopy, v6];

  v8 = [self createErrorWithCode:2 description:v7];

  return v8;
}

+ (id)timeoutErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: timed out", method];
  v5 = [self createErrorWithCode:3 description:method];

  return v5;
}

+ (id)programCreationErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program creation failure", method];
  v5 = [self createErrorWithCode:4 description:method];

  return v5;
}

+ (id)programInferenceOverflowErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program Inference overflow", method];
  v5 = [self createErrorWithCode:5 description:method];

  return v5;
}

+ (id)programInferenceOtherErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program Inference error", method];
  v5 = [self createErrorWithCode:8 description:method];

  return v5;
}

+ (id)programLoadErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program load failure", method];
  v5 = [self createErrorWithCode:6 description:method];

  return v5;
}

+ (id)programLoadErrorForMethod:(id)method code:(int64_t)code
{
  code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program load failure (0x%X)", method, code];
  v6 = [self createErrorWithCode:6 description:code];

  return v6;
}

+ (id)programIOSurfacesMapErrorForMethod:(id)method code:(int64_t)code
{
  code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program IOSurfaces map failure (0x%X)", method, code];
  v6 = [self createErrorWithCode:13 description:code];

  return v6;
}

+ (id)programIOSurfacesUnmapErrorForMethod:(id)method code:(int64_t)code
{
  code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program IOSurfaces unmap failure (0x%X)", method, code];
  v6 = [self createErrorWithCode:14 description:code];

  return v6;
}

+ (id)missingCodeSigningErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Missing code signing identity", method];
  v5 = [self createErrorWithCode:7 description:method];

  return v5;
}

+ (id)fileAccessErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: file access failure", method];
  v5 = [self createErrorWithCode:9 description:method];

  return v5;
}

+ (id)invalidModelErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: invalid model", method];
  v5 = [self createErrorWithCode:10 description:method];

  return v5;
}

+ (id)invalidModelKeyErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: invalid model key", method];
  v5 = [self createErrorWithCode:11 description:method];

  return v5;
}

+ (id)systemModelPurgeNotAllowedForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: system model purge not allowed", method];
  v5 = [self createErrorWithCode:12 description:method];

  return v5;
}

+ (id)programChainingPrepareErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program chaining prepare error", method];
  v5 = [self createErrorWithCode:15 description:method];

  return v5;
}

+ (id)fileNotFoundErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: file not found", method];
  v5 = [self createErrorWithCode:16 description:method];

  return v5;
}

+ (id)modelIdentifierNotFoundForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: model identifier not found", method];
  v5 = [self createErrorWithCode:17 description:method];

  return v5;
}

+ (id)baseModelIdentifierNotFoundForNewInstanceMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: base model identifier not found for new instance", method];
  v5 = [self createErrorWithCode:18 description:method];

  return v5;
}

+ (id)modelNewInstanceCacheIdentifierNotNilMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: model cacheURLIdentifier for new instance should be nil", method];
  v5 = [self createErrorWithCode:19 description:method];

  return v5;
}

+ (id)invalidModelInstanceErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: invalid model instance", method];
  v5 = [self createErrorWithCode:20 description:method];

  return v5;
}

+ (id)programLoadNewInstanceErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program load new instance failure", method];
  v5 = [self createErrorWithCode:21 description:method];

  return v5;
}

+ (id)programLoadNewInstanceErrorForMethod:(id)method code:(int64_t)code
{
  code = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program load new instance failure (0x%X)", method, code];
  v6 = [self createErrorWithCode:21 description:code];

  return v6;
}

+ (id)hostTooOld:(id)old
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Host too old, ANE hardware not available", old];
  v5 = [self createErrorWithCode:22 description:v4];

  return v5;
}

+ (id)guestToHostInterfaceTooOld:(id)old
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Guest-to-Host interface too old, feature not supported", old];
  v5 = [self createErrorWithCode:22 description:v4];

  return v5;
}

+ (id)programInferenceProgramNotFoundForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program Inference error", method];
  v5 = [self createErrorWithCode:23 description:method];

  return v5;
}

+ (id)dataNotFoundForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Data not found error", method];
  v5 = [self createErrorWithCode:24 description:method];

  return v5;
}

+ (id)notSupportedErrorForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Not supported", method];
  v5 = [self createErrorWithCode:25 description:method];

  return v5;
}

+ (id)badArgumentForMethod:(id)method
{
  method = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Bad argument error", method];
  v5 = [self createErrorWithCode:26 description:method];

  return v5;
}

+ (id)virtualizationDataError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Virtualization data error", error];
  v5 = [self createErrorWithCode:27 description:error];

  return v5;
}

+ (id)virtualizationHostError:(id)error
{
  error = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Virtualization unknown host-side error", error];
  v5 = [self createErrorWithCode:29 description:error];

  return v5;
}

+ (id)virtualizationHostError:(id)error error:(id)a4
{
  if (a4)
  {
    v6 = MEMORY[0x1E696AEC0];
    errorCopy = error;
    v8 = [a4 description];
    errorCopy2 = [v6 stringWithFormat:@"%@: Virtualization host-side error=%@", errorCopy, v8];

    [self createErrorWithCode:29 description:errorCopy2];
  }

  else
  {
    errorCopy2 = error;
    [_ANEErrors virtualizationHostError:errorCopy2];
  }
  v10 = ;

  return v10;
}

@end