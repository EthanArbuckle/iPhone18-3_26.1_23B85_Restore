@interface AVTAvatarDescriptor
+ (BOOL)_canLoadDataRepresentation:(id)representation minSupportedVersion:(int64_t)version serializationVersion:(int64_t)serializationVersion error:(id *)error;
+ (BOOL)ntk_canLoadDataRepresentation:(id)representation forDevice:(id)device error:(id *)error;
+ (void)_device:(id)_device minSupportedVersion:(int64_t *)version serializationVersion:(int64_t *)serializationVersion;
@end

@implementation AVTAvatarDescriptor

+ (void)_device:(id)_device minSupportedVersion:(int64_t *)version serializationVersion:(int64_t *)serializationVersion
{
  pdrDeviceVersion = [_device pdrDeviceVersion];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (dword_26A58[v8] <= pdrDeviceVersion)
    {
      v10 = *&dword_26A58[v8 + 2];
      v9 = *&dword_26A58[v8 + 4];
    }

    v11 = v8 >= 18;
    v8 += 6;
  }

  while (!v11);
  *version = v10;
  *serializationVersion = v9;
}

+ (BOOL)_canLoadDataRepresentation:(id)representation minSupportedVersion:(int64_t)version serializationVersion:(int64_t)serializationVersion error:(id *)error
{
  representationCopy = representation;
  v10 = objc_autoreleasePoolPush();
  v25 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:representationCopy options:0 error:&v25];
  v12 = v25;
  if (v11)
  {
    v13 = [v11 objectForKey:@"minVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      versionCopy = [v13 integerValue];
    }

    else
    {
      versionCopy = 0x7FFFFFFFFFFFFFFFLL;
    }

    v17 = [v11 objectForKey:@"version"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v17 integerValue];
      v19 = @"Recipe version / minVersion (%d / %d) could not be determined";
      v16 = 2003;
      if (integerValue != 0x7FFFFFFFFFFFFFFFLL && versionCopy != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (integerValue >= version)
        {
          if (versionCopy <= serializationVersion)
          {
            versionCopy = 0;
            v16 = 0;
LABEL_14:

            if (!versionCopy)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v16 = 2002;
          integerValue = versionCopy;
          versionCopy = serializationVersion;
          v19 = @"Recipe is too new (%d > %d)";
        }

        else
        {
          v19 = @"Recipe is too old (%d < %d)";
          v16 = 2001;
          versionCopy = version;
        }
      }
    }

    else
    {
      v19 = @"Recipe version / minVersion (%d / %d) could not be determined";
      v16 = 2003;
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    versionCopy = [NSString stringWithFormat:v19, integerValue, versionCopy];
    goto LABEL_14;
  }

  versionCopy = [NSString stringWithFormat:@"Recipe could not be decoded (%@)", v12];
  v16 = 2003;
  if (versionCopy)
  {
LABEL_15:
    v20 = kNTKErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = versionCopy;
    v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = [NSError errorWithDomain:v20 code:v16 userInfo:v21];

    v12 = v22;
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
  if (error)
  {
    v23 = v12;
    *error = v12;
  }

  return v12 == 0;
}

+ (BOOL)ntk_canLoadDataRepresentation:(id)representation forDevice:(id)device error:(id *)error
{
  v10 = 0;
  v11 = 0;
  representationCopy = representation;
  [self _device:device minSupportedVersion:&v11 serializationVersion:&v10];
  LOBYTE(error) = [self _canLoadDataRepresentation:representationCopy minSupportedVersion:v11 serializationVersion:v10 error:error];

  return error;
}

@end