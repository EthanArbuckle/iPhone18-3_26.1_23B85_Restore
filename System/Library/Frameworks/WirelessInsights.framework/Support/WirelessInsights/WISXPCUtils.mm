@interface WISXPCUtils
+ (id)dictionaryFromPrimitivesXPCDict:(dict)dict error:(id *)error;
+ (id)extractValueFromDict:(id)dict atKey:(id)key ofExpectedClass:(Class)class error:(id *)error;
+ (id)extractValueFromDict:(id)dict atKey:(id)key ofExpectedClass:(Class)class orDefault:(id)default;
+ (void)setError:(id *)error code:(int64_t)code message:(id)message;
@end

@implementation WISXPCUtils

+ (id)dictionaryFromPrimitivesXPCDict:(dict)dict error:(id *)error
{
  v6 = objc_alloc_init(NSMutableDictionary);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = *dict.var0.fObj;
  v11 = _NSConcreteStackBlock;
  v12 = 3321888768;
  v13 = sub_10009E460;
  v14 = &unk_1002AEA60;
  v16 = &v19;
  errorCopy = error;
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

+ (id)extractValueFromDict:(id)dict atKey:(id)key ofExpectedClass:(Class)class error:(id *)error
{
  dictCopy = dict;
  keyCopy = key;
  if (dictCopy)
  {
    keyCopy2 = [dictCopy objectForKey:keyCopy];
    if (keyCopy2)
    {
      if (objc_opt_isKindOfClass())
      {
        keyCopy2 = keyCopy2;
        v11 = keyCopy2;
        goto LABEL_9;
      }

      keyCopy = [NSString stringWithFormat:@"Value for key %@ is not of expected class", keyCopy];
      [WISXPCUtils setError:error code:0 message:keyCopy];
    }

    else
    {
      keyCopy = [NSString stringWithFormat:@"Value for key %@ is null", keyCopy];
      [WISXPCUtils setError:error code:0 message:keyCopy];
    }

    v11 = 0;
  }

  else
  {
    keyCopy2 = [NSString stringWithFormat:@"Cannot extract key %@, dict is null", keyCopy];
    v11 = 0;
    [WISXPCUtils setError:error code:0 message:keyCopy2];
  }

LABEL_9:

  return v11;
}

+ (id)extractValueFromDict:(id)dict atKey:(id)key ofExpectedClass:(Class)class orDefault:(id)default
{
  defaultCopy = default;
  v16 = 0;
  v10 = [WISXPCUtils extractValueFromDict:dict atKey:key ofExpectedClass:class error:&v16];
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
    v13 = defaultCopy;
  }

  v14 = v13;

  return v14;
}

+ (void)setError:(id *)error code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v9 = NSLocalizedDescriptionKey;
  v10 = messageCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  *error = [NSError errorWithDomain:@"WISXPCUtils" code:code userInfo:v8];
}

@end