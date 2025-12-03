@interface CacheLocatorSettings
- (CacheLocatorSettings)initWithNibName:(id)name bundle:(id)bundle;
- (void)scanForCachesOn:(id)on withHandler:(id)handler;
- (void)stopScanning;
- (void)viewDidLoad;
@end

@implementation CacheLocatorSettings

- (void)scanForCachesOn:(id)on withHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  onCopy = on;
  selfCopy = self;
  sub_181A0(sub_18620, v7);
}

- (void)stopScanning
{
  if (*&self->PSViewController_opaque[OBJC_IVAR___CacheLocatorSettings_isResultAvailableSubscription])
  {
    selfCopy = self;

    sub_32BF4();
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  CacheLocatorSettings.viewDidLoad()();
}

- (CacheLocatorSettings)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_33244();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return CacheLocatorSettings.init(nibName:bundle:)(v5, v7, bundle);
}

@end