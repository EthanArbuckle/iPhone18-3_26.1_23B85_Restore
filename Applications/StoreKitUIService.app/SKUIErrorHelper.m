@interface SKUIErrorHelper
+ (id)errorWithSafeUserInfo:(id)a3;
@end

@implementation SKUIErrorHelper

+ (id)errorWithSafeUserInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [NSMutableDictionary alloc];
    v5 = [v3 userInfo];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v7 = [v3 userInfo];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000060F4;
    v15 = &unk_1000510B0;
    v17 = &v18;
    v8 = v6;
    v16 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:&v12];

    if (v19[3])
    {
      v9 = [v3 domain];
      v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v9, [v3 code], v8);
    }

    else
    {
      v10 = v3;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end