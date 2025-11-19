@interface AEAnnotationAirDropTextActivityItemProvider
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)supportedActivityTypes;
@end

@implementation AEAnnotationAirDropTextActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypeAirDrop;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([(AEAssetActivityItemProviderSource *)self supportsActivityType:v5])
  {
    v17.receiver = self;
    v17.super_class = AEAnnotationAirDropTextActivityItemProvider;
    v6 = [(AEAnnotationTextActivityItemProvider *)&v17 textForActivityType:v5];
    v7 = NSTemporaryDirectory();
    v8 = IMCommonCoreBundle();
    v9 = [v8 localizedStringForKey:@"AirDrop" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v10 = [v7 stringByAppendingPathComponent:v9];
    v11 = [v10 stringByAppendingPathExtension:@"txt"];

    v16 = 0;
    [v6 writeToFile:v11 atomically:0 encoding:4 error:&v16];
    v12 = 0;
    if (!v16)
    {
      v12 = [NSURL fileURLWithPath:v11];
    }
  }

  else
  {
    v6 = AESharingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

@end