@interface JSAFamilySharing
+ (void)launchFamilySharingSettings;
@end

@implementation JSAFamilySharing

+ (void)launchFamilySharingSettings
{
  v2 = +[NSThread isMainThread];
  if (v2)
  {

    sub_149A0(v2);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_14A28;
    block[3] = &unk_B2100;
    v4 = &stru_B2CE0;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end