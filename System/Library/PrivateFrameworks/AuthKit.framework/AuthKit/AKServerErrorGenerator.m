@interface AKServerErrorGenerator
+ (id)errorFromServerResponseParameters:(id)a3 authenticationError:(int64_t)a4;
@end

@implementation AKServerErrorGenerator

+ (id)errorFromServerResponseParameters:(id)a3 authenticationError:(int64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v17 = 0;
  v16 = [location[0] objectForKeyedSubscript:@"em"];
  v15 = [location[0] objectForKeyedSubscript:@"tt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v22[0] = NSLocalizedFailureErrorKey;
    v23[0] = v15;
    v22[1] = NSLocalizedFailureReasonErrorKey;
    v23[1] = v16;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    v4 = [NSError ak_errorWithCode:v18 userInfo:v14];
    v5 = v17;
    v17 = v4;
    _objc_release(v5);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = NSLocalizedDescriptionKey;
      v21 = v16;
      v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v6 = [NSError ak_errorWithCode:v18 userInfo:?];
      v7 = v17;
      v17 = v6;
      _objc_release(v7);
      _objc_release(v12);
    }

    else
    {
      v8 = [NSError ak_errorWithCode:v18];
      v9 = v17;
      v17 = v8;
      _objc_release(v9);
    }
  }

  v11 = _objc_retain(v17);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v11;
}

@end