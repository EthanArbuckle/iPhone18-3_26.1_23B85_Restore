@interface BatteryUsageRadarComposeViewController
+ (BOOL)hasRadarCompose;
- (BatteryUsageRadarComposeViewController)initWithParentView:(id)view andDictionary:(id)dictionary;
- (id)urlEncodedString:(id)string;
- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)showRadarComposeAlert;
@end

@implementation BatteryUsageRadarComposeViewController

+ (BOOL)hasRadarCompose
{
  if (qword_187DC8 != -1)
  {
    sub_11542C();
  }

  if (byte_187DC0 != 1)
  {
    return 0;
  }

  if (!qword_187DD0)
  {
    qword_187DD0 = dlopen("/System/Library/PrivateFrameworks/RadarCompose.framework/RadarCompose", 2);
    if (!qword_187DD0)
    {
      return 0;
    }
  }

  return isTapToRadarEnabled();
}

- (BatteryUsageRadarComposeViewController)initWithParentView:(id)view andDictionary:(id)dictionary
{
  viewCopy = view;
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BatteryUsageRadarComposeViewController;
  v8 = [(BatteryUsageRadarComposeViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(BatteryUsageRadarComposeViewController *)v8 setParentViewController:viewCopy];
    [(BatteryUsageRadarComposeViewController *)v9 setCurrentDictionary:dictionaryCopy];
  }

  return v9;
}

- (void)showRadarComposeAlert
{
  v2 = [[UIAlertView alloc] initWithTitle:0 message:@"What type of problem?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:{@"Battery Life Issue", @"Battery Usage UI Issue", 0}];
  [v2 show];
}

- (id)urlEncodedString:(id)string
{
  stringCopy = string;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = stringCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];
        v12 = sub_4A3C(v10);
        v13 = sub_4A3C(v11);
        v14 = [NSString stringWithFormat:@"%@=%@", v12, v13, v17];

        [v4 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 componentsJoinedByString:@"&"];

  return v15;
}

- (void)alertView:(id)view clickedButtonAtIndex:(int64_t)index
{
  if (index)
  {
    v5 = @"Purple Battery UI";
    if (index == 1)
    {
      v5 = @"Purple Battery Life";
    }

    v12[0] = @"ComponentName";
    v12[1] = @"ComponentVersion";
    v13[0] = v5;
    v13[1] = @"1.0";
    v12[2] = @"ComponentID";
    v12[3] = @"Reproducibility";
    v6 = @"485067";
    if (index == 1)
    {
      v6 = @"241066";
    }

    v13[2] = v6;
    v13[3] = @"I Didn't Try";
    v12[4] = @"Classification";
    v12[5] = @"Keywords";
    v13[4] = @"Power";
    v13[5] = @"RadarFromBatteryUsageUI";
    v12[6] = @"ExtensionIdentifiers";
    v13[6] = @"com.apple.PowerlogCore.diagnosticextension";
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:7];
    v8 = [(BatteryUsageRadarComposeViewController *)self urlEncodedString:v7];
    v9 = [@"tap-to-radar://new?" stringByAppendingString:v8];

    v10 = [NSURL URLWithString:v9];
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openURL:v10];
  }
}

@end