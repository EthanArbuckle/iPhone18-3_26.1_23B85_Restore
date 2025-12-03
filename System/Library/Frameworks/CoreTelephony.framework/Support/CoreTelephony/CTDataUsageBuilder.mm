@interface CTDataUsageBuilder
+ (id)getVirtualBundleIDForProcName:(id)name;
- (BOOL)addUsage:(id)usage forBundle:(id)bundle forPeriod:(unint64_t)period withPreferredLanguages:(id)languages withBlockedBundleIds:(id)ids;
- (CTDataUsageBuilder)initWithPeriods:(unint64_t)periods andRegistry:(const void *)registry andLogger:(const void *)logger andGreenTeaCapable:(BOOL)capable;
- (id).cxx_construct;
@end

@implementation CTDataUsageBuilder

+ (id)getVirtualBundleIDForProcName:(id)name
{
  nameCopy = name;
  v4 = [&off_10008BED0 objectForKey:nameCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (![nameCopy hasPrefix:@"com.apple."] || (objc_msgSend(nameCopy, "substringFromIndex:", objc_msgSend(@"com.apple.", "length")), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(&off_10008BED0, "objectForKey:", v7), v6 = objc_claimAutoreleasedReturnValue(), v7, !v6))
  {
    v8 = [@"com.apple." stringByAppendingString:nameCopy];
    v6 = [&off_10008BED0 objectForKey:v8];
  }

  return v6;
}

- (CTDataUsageBuilder)initWithPeriods:(unint64_t)periods andRegistry:(const void *)registry andLogger:(const void *)logger andGreenTeaCapable:(BOOL)capable
{
  v20.receiver = self;
  v20.super_class = CTDataUsageBuilder;
  v10 = [(CTDataUsageBuilder *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v13 = *registry;
    v12 = *(registry + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->fRegistry.__cntrl_;
    v11->fRegistry.__ptr_ = v13;
    v11->fRegistry.__cntrl_ = v12;
    if (cntrl)
    {
      sub_100007C00(cntrl);
    }

    v11->fLogger = logger;
    v11->fIsGreenTea = capable;
    v15 = [[CTDeviceDataUsage alloc] initWithPeriods:periods];
    deviceUsage = v11->_deviceUsage;
    v11->_deviceUsage = v15;

    v17 = [NSMutableDictionary dictionaryWithCapacity:200];
    appProperties = v11->_appProperties;
    v11->_appProperties = v17;
  }

  return v11;
}

- (BOOL)addUsage:(id)usage forBundle:(id)bundle forPeriod:(unint64_t)period withPreferredLanguages:(id)languages withBlockedBundleIds:(id)ids
{
  usageCopy = usage;
  bundleCopy = bundle;
  languagesCopy = languages;
  idsCopy = ids;
  deviceUsage = [(CTDataUsageBuilder *)self deviceUsage];
  LOBYTE(self) = [deviceUsage addUsage:usageCopy forBundle:bundleCopy forPeriod:period withPreferredLanguages:languagesCopy withBlockedBundleIds:idsCopy using:self];

  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end