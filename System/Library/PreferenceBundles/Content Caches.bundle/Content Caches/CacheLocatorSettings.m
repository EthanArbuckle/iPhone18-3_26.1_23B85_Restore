@interface CacheLocatorSettings
- (CacheLocatorSettings)initWithNibName:(id)a3 bundle:(id)a4;
- (void)scanForCachesOn:(id)a3 withHandler:(id)a4;
- (void)stopScanning;
- (void)viewDidLoad;
@end

@implementation CacheLocatorSettings

- (void)scanForCachesOn:(id)a3 withHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_181A0(sub_18620, v7);
}

- (void)stopScanning
{
  if (*&self->PSViewController_opaque[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription])
  {
    v2 = self;

    sub_32BF4();
  }
}

- (void)viewDidLoad
{
  v2 = self;
  CacheLocatorSettings.viewDidLoad()();
}

- (CacheLocatorSettings)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_33244();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return CacheLocatorSettings.init(nibName:bundle:)(v5, v7, a4);
}

@end