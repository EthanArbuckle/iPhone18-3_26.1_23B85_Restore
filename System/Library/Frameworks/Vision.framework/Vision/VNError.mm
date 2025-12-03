@interface VNError
+ (id)errorForCVReturnCode:(int)code localizedDescription:(id)description;
+ (id)errorForCVReturnCode:(int)code width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format localizedDescription:(id)description;
+ (id)errorForCancellationOfRequest:(id)request;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description;
+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForEspressoErrorInfo:(id)info localizedDescription:(id)description;
+ (id)errorForEspressoReturnStatus:(int)status localizedDescription:(id)description;
+ (id)errorForExecutionTimeoutWithLocalizedDescription:(id)description;
+ (id)errorForExecutionTimeoutWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForFailedEspressoPlan:(void *)plan localizedDescription:(id)description;
+ (id)errorForGPURequiredByRequest:(id)request;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)description;
+ (id)errorForInternalErrorWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForInvalidArgument:(id)argument named:(id)named;
+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)description;
+ (id)errorForInvalidFormatErrorWithLocalizedDescription:(id)description;
+ (id)errorForInvalidImageFailureWithLocalizedDescription:(id)description;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)description;
+ (id)errorForInvalidModelWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForInvalidOperationForRequestClass:(Class)class revision:(unint64_t)revision;
+ (id)errorForInvalidOperationForRequestSpecifier:(id)specifier;
+ (id)errorForInvalidOperationWithLocalizedDescription:(id)description;
+ (id)errorForInvalidOption:(id)option named:(id)named;
+ (id)errorForInvalidOption:(id)option named:(id)named localizedDescription:(id)description;
+ (id)errorForInvalidOptionWithLocalizedDescription:(id)description;
+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)description;
+ (id)errorForMissingOptionNamed:(id)named;
+ (id)errorForOSStatus:(int)status localizedDescription:(id)description;
+ (id)errorForOperationFailedErrorWithLocalizedDescription:(id)description;
+ (id)errorForOperationFailedErrorWithLocalizedDescription:(id)description underlyingError:(id)error;
+ (id)errorForOutOfBoundsErrorWithLocalizedDescription:(id)description;
+ (id)errorForUnimplementedFunctionWithLocalizedDescription:(id)description;
+ (id)errorForUnimplementedMethod:(SEL)method ofObject:(id)object;
+ (id)errorForUnknownErrorWithLocalizedDescription:(id)description;
+ (id)errorForUnsupportedComputeDevice:(id)device;
+ (id)errorForUnsupportedComputeDeviceWithLocalizedDescription:(id)description;
+ (id)errorForUnsupportedComputeStage:(id)stage;
+ (id)errorForUnsupportedConfigurationOfRequest:(id)request;
+ (id)errorForUnsupportedProcessingDevice:(id)device;
+ (id)errorForUnsupportedRequestClassName:(id)name;
+ (id)errorForUnsupportedRequestSpecifier:(id)specifier;
+ (id)errorForUnsupportedRevision:(unint64_t)revision ofRequest:(id)request;
+ (id)errorForUnsupportedRevision:(unint64_t)revision ofRequestClass:(Class)class;
+ (id)errorForUnsupportedSerializingHeaderVersion:(unsigned int)version;
+ (id)errorForVImageError:(int64_t)error localizedDescription:(id)description;
+ (id)errorWithCode:(int64_t)code message:(id)message;
+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
+ (void)VNAssert:(BOOL)assert log:(id)log;
+ (void)VNAssertClass:(Class)class needsToOverrideMethod:(SEL)method;
+ (void)logInternalError:(id)error;
@end

@implementation VNError

+ (void)VNAssertClass:(Class)class needsToOverrideMethod:(SEL)method
{
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = NSStringFromClass(class);
  v9 = NSStringFromSelector(method);
  v10 = [v7 initWithFormat:@"Base class implementation is not provided. %@ must implement %@", v8, v9];

  [self VNAssert:0 log:v10];
}

+ (void)VNAssert:(BOOL)assert log:(id)log
{
  logCopy = log;
  if (!assert)
  {
    uTF8String = [logCopy UTF8String];
    VNValidatedLog(4, @"%s", v6, v7, v8, v9, v10, v11, uTF8String);
  }
}

+ (void)logInternalError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v13 = errorCopy;
    code = [errorCopy code];
    localizedDescription = [v13 localizedDescription];
    [localizedDescription cStringUsingEncoding:1];
    localizedFailureReason = [v13 localizedFailureReason];
    [localizedFailureReason cStringUsingEncoding:1];
    VNValidatedLog(4, @"Error code: %llu; description: %s; reason: %s", v7, v8, v9, v10, v11, v12, code);

    errorCopy = v13;
  }
}

+ (id)errorForOSStatus:(int)status localizedDescription:(id)description
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{description, *MEMORY[0x1E696A578], 0}];
  v7 = [self errorWithDomain:*MEMORY[0x1E696A768] code:status userInfo:v6];

  return v7;
}

+ (id)errorForCVReturnCode:(int)code width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format localizedDescription:(id)description
{
  v9 = *&code;
  descriptionCopy = description;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = VisionCoreFourCharCodeToString();
  v13 = [v11 initWithFormat:@"%@ Width = %lu, Height = %lu, Format = %@", descriptionCopy, width, height, v12];

  v14 = [VNError errorForCVReturnCode:v9 localizedDescription:v13];

  return v14;
}

+ (id)errorForCVReturnCode:(int)code localizedDescription:(id)description
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{description, *MEMORY[0x1E696A578], 0}];
  v7 = [self errorWithDomain:*MEMORY[0x1E696A768] code:code userInfo:v6];

  return v7;
}

+ (id)errorForVImageError:(int64_t)error localizedDescription:(id)description
{
  descriptionCopy = description;
  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [MEMORY[0x1E696AD98] numberWithLong:error];
  v9 = [v7 initWithFormat:@"vImage_Error %@", v8];

  if ([descriptionCopy length])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", descriptionCopy, v9];

    v9 = v10;
  }

  v11 = [self errorForInternalErrorWithLocalizedDescription:v9];

  return v11;
}

+ (id)errorForFailedEspressoPlan:(void *)plan localizedDescription:(id)description
{
  descriptionCopy = description;
  error_info = espresso_plan_get_error_info();
  v8 = [self errorForEspressoErrorInfo:error_info localizedDescription:{v7, descriptionCopy}];

  return v8;
}

+ (id)errorForEspressoErrorInfo:(id)info localizedDescription:(id)description
{
  var2 = info.var2;
  v5 = *&info.var0;
  descriptionCopy = description;
  v8 = MEMORY[0x1E696AEC0];
  if (v5 >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"plan phase %u", v5];
  }

  else
  {
    v9 = off_1E77B2598[v5 & 3];
  }

  v10 = [v8 stringWithFormat:@"%s (%@)", var2, v9];

  if (descriptionCopy)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", descriptionCopy, v10];

    v10 = v11;
  }

  v12 = [self errorForInternalErrorWithLocalizedDescription:v10];

  return v12;
}

+ (id)errorForEspressoReturnStatus:(int)status localizedDescription:(id)description
{
  v4 = *&status;
  descriptionCopy = description;
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"%d", v4];
  status_string = espresso_get_status_string();
  if (status_string)
  {
    [string appendFormat:@": %s", status_string];
  }

  if ([descriptionCopy length])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", descriptionCopy, string];
  }

  else
  {
    v9 = string;
  }

  v10 = v9;

  v11 = [self errorForInternalErrorWithLocalizedDescription:v10];

  return v11;
}

+ (id)errorForUnsupportedComputeDeviceWithLocalizedDescription:(id)description
{
  v3 = [self errorWithCode:22 message:description];

  return v3;
}

+ (id)errorForUnsupportedComputeDevice:(id)device
{
  deviceCopy = device;
  deviceCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsupported compute device %@", deviceCopy];
  v6 = [self errorForUnsupportedComputeDeviceWithLocalizedDescription:deviceCopy];

  return v6;
}

+ (id)errorForUnsupportedComputeStage:(id)stage
{
  stageCopy = stage;
  stageCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unsupported compute stage %@", stageCopy];
  v6 = [self errorWithCode:21 message:stageCopy];

  return v6;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v4 = [self errorWithCode:17 message:description underlyingError:error];

  return v4;
}

+ (id)errorForDataUnavailableWithLocalizedDescription:(id)description
{
  v3 = [self errorForDataUnavailableWithLocalizedDescription:description underlyingError:0];

  return v3;
}

+ (id)errorForUnsupportedRequestSpecifier:(id)specifier
{
  specifierCopy = specifier;
  requestRevision = [specifierCopy requestRevision];
  v6 = [specifierCopy requestClassAndReturnError:0];
  if (v6)
  {
    v7 = [self errorForUnsupportedRevision:requestRevision ofRequestClass:v6];
  }

  else
  {
    requestClassName = [specifierCopy requestClassName];
    v7 = [self errorForUnsupportedRequestClassName:requestClassName];
  }

  return v7;
}

+ (id)errorForUnsupportedRequestClassName:(id)name
{
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a supported request", name];
  v5 = [self errorWithCode:19 message:name];

  return v5;
}

+ (id)errorForUnsupportedRevision:(unint64_t)revision ofRequestClass:(Class)class
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromClass(class);
  v9 = VNRequestRevisionString(class, revision);
  v10 = [v7 stringWithFormat:@"%@ does not support %@", v8, v9];

  v11 = [self errorWithCode:16 message:v10];

  return v11;
}

+ (id)errorForUnsupportedRevision:(unint64_t)revision ofRequest:(id)request
{
  requestCopy = request;
  v7 = [self errorForUnsupportedRevision:revision ofRequestClass:objc_opt_class()];

  return v7;
}

+ (id)errorForUnsupportedConfigurationOfRequest:(id)request
{
  request = [MEMORY[0x1E696AEC0] stringWithFormat:@"The current configuration of %@ is not supported", request];
  v5 = [self errorForInvalidOperationWithLocalizedDescription:request];

  return v5;
}

+ (id)errorForUnsupportedProcessingDevice:(id)device
{
  device = [MEMORY[0x1E696AEC0] stringWithFormat:@"processing with %@ is not supported", device];
  v4 = [VNError errorForInvalidOperationWithLocalizedDescription:device];

  return v4;
}

+ (id)errorForGPURequiredByRequest:(id)request
{
  requestCopy = request;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@ requires the GPU for processing", v6];

  v8 = [VNError errorForInvalidOperationWithLocalizedDescription:v7];

  return v8;
}

+ (id)errorForUnknownErrorWithLocalizedDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:11 userInfo:v5];

  return v6;
}

+ (id)errorForOperationFailedErrorWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v4 = [self errorWithCode:3 message:description underlyingError:error];

  return v4;
}

+ (id)errorForOperationFailedErrorWithLocalizedDescription:(id)description
{
  v3 = [self errorForOperationFailedErrorWithLocalizedDescription:description underlyingError:0];

  return v3;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v4 = [self errorWithCode:15 message:description underlyingError:error];

  return v4;
}

+ (id)errorForInvalidModelWithLocalizedDescription:(id)description
{
  v3 = [self errorForInvalidModelWithLocalizedDescription:description underlyingError:0];

  return v3;
}

+ (id)errorForInvalidArgument:(id)argument named:(id)named
{
  namedCopy = named;
  v7 = MEMORY[0x1E696AEC0];
  v8 = _prettyPrintedValue(argument);
  v9 = [v7 stringWithFormat:@"argument %@ has an invalid value of %@", namedCopy, v8];

  v10 = [self errorForInvalidArgumentWithLocalizedDescription:v9];

  return v10;
}

+ (id)errorForInvalidArgumentWithLocalizedDescription:(id)description
{
  v3 = [self errorWithCode:14 message:description];

  return v3;
}

+ (id)errorForInvalidOptionWithLocalizedDescription:(id)description
{
  v3 = [self errorWithCode:5 message:description];

  return v3;
}

+ (id)errorForInvalidOption:(id)option named:(id)named localizedDescription:(id)description
{
  namedCopy = named;
  descriptionCopy = description;
  v10 = MEMORY[0x1E696AEC0];
  v11 = _prettyPrintedValue(option);
  v12 = [v10 stringWithFormat:@"option %@ has an invalid value of %@", namedCopy, v11];

  if ([descriptionCopy length])
  {
    descriptionCopy = [v12 stringByAppendingFormat:@" - %@", descriptionCopy];

    v12 = descriptionCopy;
  }

  v14 = [self errorForInvalidOptionWithLocalizedDescription:v12];

  return v14;
}

+ (id)errorForInvalidOption:(id)option named:(id)named
{
  v4 = [self errorForInvalidOption:option named:named localizedDescription:0];

  return v4;
}

+ (id)errorForMissingOptionNamed:(id)named
{
  named = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing option %@", named];
  v5 = [self errorWithCode:7 message:named];

  return v5;
}

+ (id)errorForInvalidOperationForRequestSpecifier:(id)specifier
{
  specifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ does not support operation", specifier];
  v5 = [self errorForInvalidOperationWithLocalizedDescription:specifier];

  return v5;
}

+ (id)errorForInvalidOperationForRequestClass:(Class)class revision:(unint64_t)revision
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = VNRequestRevisionString(class, revision);
  v7 = [v5 stringWithFormat:@"%@ does not support operation", v6];

  v8 = [self errorForInvalidOperationWithLocalizedDescription:v7];

  return v8;
}

+ (id)errorForInvalidOperationWithLocalizedDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:12 userInfo:v5];

  return v6;
}

+ (id)errorForOutOfBoundsErrorWithLocalizedDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:4 userInfo:v5];

  return v6;
}

+ (id)errorForUnimplementedMethod:(SEL)method ofObject:(id)object
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = VNMethodSignatureStringForObjectAndSelector(object, method);
  v7 = [v5 stringWithFormat:@"%@ must be overridden", v6];

  v8 = [self errorForUnimplementedFunctionWithLocalizedDescription:v7];

  return v8;
}

+ (id)errorForUnimplementedFunctionWithLocalizedDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:8 userInfo:v5];

  return v6;
}

+ (id)errorForUnsupportedSerializingHeaderVersion:(unsigned int)version
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported serialized header version %u", *&version];
  v5 = [self errorForInvalidFormatErrorWithLocalizedDescription:v4];

  return v5;
}

+ (id)errorForInvalidFormatErrorWithLocalizedDescription:(id)description
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v8 = *MEMORY[0x1E696A578];
  v9[0] = descriptionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:2 userInfo:v5];

  return v6;
}

+ (id)errorForExecutionTimeoutWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{description, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0}];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:20 userInfo:v5];

  return v6;
}

+ (id)errorForExecutionTimeoutWithLocalizedDescription:(id)description
{
  v3 = [self errorForExecutionTimeoutWithLocalizedDescription:description underlyingError:0];

  return v3;
}

+ (id)errorForInternalErrorWithLocalizedDescription:(id)description underlyingError:(id)error
{
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{description, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0}];
  v6 = [self errorWithDomain:@"com.apple.Vision" code:9 userInfo:v5];

  return v6;
}

+ (id)errorForInternalErrorWithLocalizedDescription:(id)description
{
  v3 = [self errorForInternalErrorWithLocalizedDescription:description underlyingError:0];

  return v3;
}

+ (id)errorForInvalidImageFailureWithLocalizedDescription:(id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (descriptionCopy)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = descriptionCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self errorWithDomain:@"com.apple.Vision" code:13 userInfo:v6];

  return v7;
}

+ (id)errorForMemoryAllocationFailureWithLocalizedDescription:(id)description
{
  v10[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (descriptionCopy)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = descriptionCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self errorWithDomain:@"com.apple.Vision" code:10 userInfo:v6];

  return v7;
}

+ (id)errorForCancellationOfRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"request %@ was cancelled", v7];
  }

  else
  {
    v8 = @"request was cancelled";
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [requestCopy description];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x1E696A578], v10, @"VNRequest", 0}];

  v12 = [self errorWithDomain:@"com.apple.Vision" code:1 userInfo:v11];

  return v12;
}

+ (id)errorWithCode:(int64_t)code message:(id)message underlyingError:(id)error
{
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{message, *MEMORY[0x1E696A578], error, *MEMORY[0x1E696AA08], 0}];
  v8 = [self errorWithDomain:@"com.apple.Vision" code:code userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)code message:(id)message
{
  v4 = [self errorWithCode:code message:message underlyingError:0];

  return v4;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:domain code:code userInfo:info];
  [self logInternalError:v6];

  return v6;
}

@end