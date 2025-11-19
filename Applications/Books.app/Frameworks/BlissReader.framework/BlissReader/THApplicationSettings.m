@interface THApplicationSettings
+ (id)_singletonAlloc;
+ (id)sharedSettings;
- (unint64_t)flowSizeScale;
- (void)setFlowSizeScale:(unint64_t)a3;
@end

@implementation THApplicationSettings

+ (id)_singletonAlloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___THApplicationSettings;
  return objc_msgSendSuper2(&v3, "allocWithZone:", 0);
}

+ (id)sharedSettings
{
  result = qword_567798;
  if (!qword_567798)
  {
    objc_sync_enter(a1);
    if (!qword_567798)
    {
      v4 = [objc_msgSend(a1 "_singletonAlloc")];
      __dmb(0xBu);
      qword_567798 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    objc_sync_exit(a1);
    return qword_567798;
  }

  return result;
}

- (unint64_t)flowSizeScale
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSUserDefaults *)v2 objectForKey:kTHApplicationSettingsFlowSizeScale];
  if (!v3)
  {
    return 3;
  }

  result = [v3 unsignedIntegerValue];
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

- (void)setFlowSizeScale:(unint64_t)a3
{
  if (a3 >= 0xB)
  {
    v3 = 11;
  }

  else
  {
    v3 = a3;
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [(NSUserDefaults *)v4 setInteger:v3 forKey:kTHApplicationSettingsFlowSizeScale];
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = THFlowFontScaleChangedNotification;

  [(NSNotificationCenter *)v5 postNotificationName:v6 object:0];
}

@end