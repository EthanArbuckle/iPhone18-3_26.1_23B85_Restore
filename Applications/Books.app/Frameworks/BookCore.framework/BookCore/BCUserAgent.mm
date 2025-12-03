@interface BCUserAgent
+ (id)_macOSXBuildString;
+ (id)_macOSXVersionString;
+ (id)_userVisibleWebKitVersionString;
+ (id)audibleUserAgent;
+ (id)clientUserAgentWithOverrideVersion:(id)version;
+ (void)_getSystemVersionMajor:(int *)major minor:(int *)minor bugfix:(int *)bugfix;
@end

@implementation BCUserAgent

+ (id)clientUserAgentWithOverrideVersion:(id)version
{
  versionCopy = version;
  v4 = versionCopy;
  if (versionCopy)
  {
    v5 = versionCopy;
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
  compile = [v9 compile];

  return compile;
}

+ (void)_getSystemVersionMajor:(int *)major minor:(int *)minor bugfix:(int *)bugfix
{
  if (qword_345EB8 == -1)
  {
    if (!major)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1EAB18();
  if (major)
  {
LABEL_3:
    *major = dword_33EFC8;
  }

LABEL_4:
  if (minor)
  {
    *minor = dword_33EFCC;
  }

  if (bugfix)
  {
    *bugfix = dword_345EB0;
  }
}

+ (id)_macOSXVersionString
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_132668;
  block[3] = &unk_2C7CA8;
  block[4] = self;
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

  _macOSXVersionString = [objc_opt_class() _macOSXVersionString];
  _userVisibleWebKitVersionString = [objc_opt_class() _userVisibleWebKitVersionString];
  _macOSXBuildString = [objc_opt_class() _macOSXBuildString];
  v7 = [NSString stringWithFormat:@"Books/%@ (Macintosh OS X %@; %@) AppleWebKit/%@", v3, _macOSXVersionString, _macOSXBuildString, _userVisibleWebKitVersionString];;

  return v7;
}

@end