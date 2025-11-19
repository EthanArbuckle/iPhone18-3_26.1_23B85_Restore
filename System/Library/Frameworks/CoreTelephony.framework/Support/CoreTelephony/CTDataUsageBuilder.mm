@interface CTDataUsageBuilder
+ (id)getVirtualBundleIDForProcName:(id)a3;
- (BOOL)addUsage:(id)a3 forBundle:(id)a4 forPeriod:(unint64_t)a5 withPreferredLanguages:(id)a6 withBlockedBundleIds:(id)a7;
- (CTDataUsageBuilder)initWithPeriods:(unint64_t)a3 andRegistry:(const void *)a4 andLogger:(const void *)a5 andGreenTeaCapable:(BOOL)a6;
- (id).cxx_construct;
@end

@implementation CTDataUsageBuilder

+ (id)getVirtualBundleIDForProcName:(id)a3
{
  v3 = a3;
  v4 = [&off_10008BED0 objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (![v3 hasPrefix:@"com.apple."] || (objc_msgSend(v3, "substringFromIndex:", objc_msgSend(@"com.apple.", "length")), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(&off_10008BED0, "objectForKey:", v7), v6 = objc_claimAutoreleasedReturnValue(), v7, !v6))
  {
    v8 = [@"com.apple." stringByAppendingString:v3];
    v6 = [&off_10008BED0 objectForKey:v8];
  }

  return v6;
}

- (CTDataUsageBuilder)initWithPeriods:(unint64_t)a3 andRegistry:(const void *)a4 andLogger:(const void *)a5 andGreenTeaCapable:(BOOL)a6
{
  v20.receiver = self;
  v20.super_class = CTDataUsageBuilder;
  v10 = [(CTDataUsageBuilder *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v13 = *a4;
    v12 = *(a4 + 1);
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

    v11->fLogger = a5;
    v11->fIsGreenTea = a6;
    v15 = [[CTDeviceDataUsage alloc] initWithPeriods:a3];
    deviceUsage = v11->_deviceUsage;
    v11->_deviceUsage = v15;

    v17 = [NSMutableDictionary dictionaryWithCapacity:200];
    appProperties = v11->_appProperties;
    v11->_appProperties = v17;
  }

  return v11;
}

- (BOOL)addUsage:(id)a3 forBundle:(id)a4 forPeriod:(unint64_t)a5 withPreferredLanguages:(id)a6 withBlockedBundleIds:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(CTDataUsageBuilder *)self deviceUsage];
  LOBYTE(self) = [v16 addUsage:v12 forBundle:v13 forPeriod:a5 withPreferredLanguages:v14 withBlockedBundleIds:v15 using:self];

  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end