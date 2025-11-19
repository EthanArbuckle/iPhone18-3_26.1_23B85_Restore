@interface AVTAvatarDescriptor
+ (BOOL)_canLoadDataRepresentation:(id)a3 minSupportedVersion:(int64_t)a4 serializationVersion:(int64_t)a5 error:(id *)a6;
+ (BOOL)ntk_canLoadDataRepresentation:(id)a3 forDevice:(id)a4 error:(id *)a5;
+ (void)_device:(id)a3 minSupportedVersion:(int64_t *)a4 serializationVersion:(int64_t *)a5;
@end

@implementation AVTAvatarDescriptor

+ (void)_device:(id)a3 minSupportedVersion:(int64_t *)a4 serializationVersion:(int64_t *)a5
{
  v7 = [a3 pdrDeviceVersion];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (dword_26A58[v8] <= v7)
    {
      v10 = *&dword_26A58[v8 + 2];
      v9 = *&dword_26A58[v8 + 4];
    }

    v11 = v8 >= 18;
    v8 += 6;
  }

  while (!v11);
  *a4 = v10;
  *a5 = v9;
}

+ (BOOL)_canLoadDataRepresentation:(id)a3 minSupportedVersion:(int64_t)a4 serializationVersion:(int64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = objc_autoreleasePoolPush();
  v25 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v25];
  v12 = v25;
  if (v11)
  {
    v13 = [v11 objectForKey:@"minVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 integerValue];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v17 = [v11 objectForKey:@"version"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 integerValue];
      v19 = @"Recipe version / minVersion (%d / %d) could not be determined";
      v16 = 2003;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v18 >= a4)
        {
          if (v14 <= a5)
          {
            v15 = 0;
            v16 = 0;
LABEL_14:

            if (!v15)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v16 = 2002;
          v18 = v14;
          v14 = a5;
          v19 = @"Recipe is too new (%d > %d)";
        }

        else
        {
          v19 = @"Recipe is too old (%d < %d)";
          v16 = 2001;
          v14 = a4;
        }
      }
    }

    else
    {
      v19 = @"Recipe version / minVersion (%d / %d) could not be determined";
      v16 = 2003;
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v15 = [NSString stringWithFormat:v19, v18, v14];
    goto LABEL_14;
  }

  v15 = [NSString stringWithFormat:@"Recipe could not be decoded (%@)", v12];
  v16 = 2003;
  if (v15)
  {
LABEL_15:
    v20 = kNTKErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = v15;
    v21 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v22 = [NSError errorWithDomain:v20 code:v16 userInfo:v21];

    v12 = v22;
  }

LABEL_16:

  objc_autoreleasePoolPop(v10);
  if (a6)
  {
    v23 = v12;
    *a6 = v12;
  }

  return v12 == 0;
}

+ (BOOL)ntk_canLoadDataRepresentation:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v10 = 0;
  v11 = 0;
  v8 = a3;
  [a1 _device:a4 minSupportedVersion:&v11 serializationVersion:&v10];
  LOBYTE(a5) = [a1 _canLoadDataRepresentation:v8 minSupportedVersion:v11 serializationVersion:v10 error:a5];

  return a5;
}

@end