@interface SKUIErrorHelper
+ (id)errorWithSafeUserInfo:(id)info;
@end

@implementation SKUIErrorHelper

+ (id)errorWithSafeUserInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v4 = [NSMutableDictionary alloc];
    userInfo = [infoCopy userInfo];
    v6 = [v4 initWithCapacity:{objc_msgSend(userInfo, "count")}];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    userInfo2 = [infoCopy userInfo];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000060F4;
    v15 = &unk_1000510B0;
    v17 = &v18;
    v8 = v6;
    v16 = v8;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:&v12];

    if (v19[3])
    {
      domain = [infoCopy domain];
      v10 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [infoCopy code], v8);
    }

    else
    {
      v10 = infoCopy;
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