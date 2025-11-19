@interface BCUserAgent
+ (id)_macOSXBuildString;
+ (id)_macOSXVersionString;
+ (id)_userVisibleWebKitVersionString;
+ (id)audibleUserAgent;
+ (id)clientUserAgentWithOverrideVersion:(id)a3;
+ (void)_getSystemVersionMajor:(int *)a3 minor:(int *)a4 bugfix:(int *)a5;
@end

@implementation BCUserAgent

+ (id)clientUserAgentWithOverrideVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  }

  v7 = [AMSUserAgent alloc];
  v8 = +[AMSProcessInfo currentProcess];
  v9 = [v7 initWithProcessInfo:v8];

  [v9 setClientName:@"iBooks"];
  [v9 setClientVersion:v5];
  v10 = [v9 compile];

  return v10;
}

+ (void)_getSystemVersionMajor:(int *)a3 minor:(int *)a4 bugfix:(int *)a5
{
  if (qword_345EB8 == -1)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1EAB18();
  if (a3)
  {
LABEL_3:
    *a3 = dword_33EFC8;
  }

LABEL_4:
  if (a4)
  {
    *a4 = dword_33EFCC;
  }

  if (a5)
  {
    *a5 = dword_345EB0;
  }
}

+ (id)_macOSXVersionString
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_132668;
  block[3] = &unk_2C7CA8;
  block[4] = a1;
  if (qword_345EC8 != -1)
  {
    dispatch_once(&qword_345EC8, block);
  }

  v2 = qword_345EC0;

  return v2;
}

+ (id)_userVisibleWebKitVersionString
{
  if (qword_345ED8 != -1)
  {
    sub_1EAB2C();
  }

  v3 = qword_345ED0;

  return v3;
}

+ (id)_macOSXBuildString
{
  if (qword_345EE8 != -1)
  {
    sub_1EAB40();
  }

  v3 = qword_345EE0;

  return v3;
}

+ (id)audibleUserAgent
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v4 = [objc_opt_class() _macOSXVersionString];
  v5 = [objc_opt_class() _userVisibleWebKitVersionString];
  v6 = [objc_opt_class() _macOSXBuildString];
  v7 = [NSString stringWithFormat:@"Books/%@ (Macintosh OS X %@; %@) AppleWebKit/%@", v3, v4, v6, v5];;

  return v7;
}

@end