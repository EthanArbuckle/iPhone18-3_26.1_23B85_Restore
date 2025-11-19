@interface WISXPCUtils
+ (id)dictionaryFromPrimitivesXPCDict:(dict)a3 error:(id *)a4;
+ (id)extractValueFromDict:(id)a3 atKey:(id)a4 ofExpectedClass:(Class)a5 error:(id *)a6;
+ (id)extractValueFromDict:(id)a3 atKey:(id)a4 ofExpectedClass:(Class)a5 orDefault:(id)a6;
+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5;
@end

@implementation WISXPCUtils

+ (id)dictionaryFromPrimitivesXPCDict:(dict)a3 error:(id *)a4
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = *a3.var0.fObj;
  v11 = _NSConcreteStackBlock;
  v12 = 3321888768;
  v13 = sub_10009E460;
  v14 = &unk_1002AEA60;
  v16 = &v19;
  v17 = a4;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = v6;
  v15 = v8;
  xpc_dictionary_apply(v7, &v11);
  if (v20[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v8 copy];
  }

  xpc_release(object);
  object = 0;
  _Block_object_dispose(&v19, 8);

  return v9;
}

+ (id)extractValueFromDict:(id)a3 atKey:(id)a4 ofExpectedClass:(Class)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 objectForKey:v9];
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v10;
        v11 = v10;
        goto LABEL_9;
      }

      v12 = [NSString stringWithFormat:@"Value for key %@ is not of expected class", v9];
      [WISXPCUtils setError:a6 code:0 message:v12];
    }

    else
    {
      v12 = [NSString stringWithFormat:@"Value for key %@ is null", v9];
      [WISXPCUtils setError:a6 code:0 message:v12];
    }

    v11 = 0;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"Cannot extract key %@, dict is null", v9];
    v11 = 0;
    [WISXPCUtils setError:a6 code:0 message:v10];
  }

LABEL_9:

  return v11;
}

+ (id)extractValueFromDict:(id)a3 atKey:(id)a4 ofExpectedClass:(Class)a5 orDefault:(id)a6
{
  v9 = a6;
  v16 = 0;
  v10 = [WISXPCUtils extractValueFromDict:a3 atKey:a4 ofExpectedClass:a5 error:&v16];
  v11 = v10;
  if (v10)
  {
    v12 = v16 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13;

  return v14;
}

+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5
{
  v7 = a5;
  v9 = NSLocalizedDescriptionKey;
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  *a3 = [NSError errorWithDomain:@"WISXPCUtils" code:a4 userInfo:v8];
}

@end