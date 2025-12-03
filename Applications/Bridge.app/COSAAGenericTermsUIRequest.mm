@interface COSAAGenericTermsUIRequest
+ (id)clientInfoHeaderForDevice:(id)device;
- (COSAAGenericTermsUIRequest)initWithGizmoDevice:(id)device showWarranty:(BOOL)warranty;
- (NSURLRequest)urlRequest;
@end

@implementation COSAAGenericTermsUIRequest

+ (id)clientInfoHeaderForDevice:(id)device
{
  v3 = NRDevicePropertyProductType;
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:v3];
  v6 = [NSString stringWithFormat:@"%@", v5];

  v7 = [deviceCopy valueForProperty:NRDevicePropertySystemName];
  v8 = [deviceCopy valueForProperty:NRDevicePropertySystemVersion];
  v9 = [deviceCopy valueForProperty:NRDevicePropertySystemBuildVersion];

  v10 = [NSString stringWithFormat:@"%@%@;%@", v7, v8, v9];;

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  infoDictionary = [v11 infoDictionary];
  v13 = [infoDictionary objectForKey:kCFBundleVersionKey];

  v14 = +[NSBundle mainBundle];
  infoDictionary2 = [v14 infoDictionary];
  v16 = [infoDictionary2 objectForKey:kCFBundleVersionKey];

  bundleIdentifier = [v11 bundleIdentifier];
  bundleIdentifier2 = [v14 bundleIdentifier];
  v19 = [NSString stringWithFormat:@"%@/%@ (%@/%@)", bundleIdentifier, v13, bundleIdentifier2, v16];

  v20 = [NSString stringWithFormat:@"<%@> <%@> <%@>", v6, v10, v19];

  return v20;
}

- (COSAAGenericTermsUIRequest)initWithGizmoDevice:(id)device showWarranty:(BOOL)warranty
{
  warrantyCopy = warranty;
  deviceCopy = device;
  if (warrantyCopy)
  {
    v8 = [&off_100281858 arrayByAddingObject:&off_100282000];
  }

  else
  {
    v8 = &off_100281858;
  }

  v14[0] = @"terms";
  v14[1] = @"format";
  v15[0] = v8;
  v15[1] = kAAProtocolGenericTermsUIBuddyMLKey;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v13.receiver = self;
  v13.super_class = COSAAGenericTermsUIRequest;
  v10 = [(COSAAGenericTermsUIRequest *)&v13 initWithParameters:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_showWarranty = warrantyCopy;
  }

  return v11;
}

- (NSURLRequest)urlRequest
{
  v13.receiver = self;
  v13.super_class = COSAAGenericTermsUIRequest;
  urlRequest = [(COSAAGenericTermsUIRequest *)&v13 urlRequest];
  if (urlRequest)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = urlRequest;
    }

    else
    {
      v4 = [urlRequest mutableCopy];
    }

    v5 = v4;
    v6 = [objc_opt_class() clientInfoHeaderForDevice:self->_device];
    pairedClientInfoHeaderName = [objc_opt_class() pairedClientInfoHeaderName];
    [v5 addValue:v6 forHTTPHeaderField:pairedClientInfoHeaderName];

    v8 = [(NRDevice *)self->_device valueForProperty:NRDevicePropertyModelNumber];
    deviceModelHeaderName = [objc_opt_class() deviceModelHeaderName];
    [v5 addValue:v8 forHTTPHeaderField:deviceModelHeaderName];

    if (self->_showWarranty)
    {
      [v5 setValue:@"true" forHTTPHeaderField:@"X-MMe-Show-Warranty"];
    }

    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      showWarranty = self->_showWarranty;
      *buf = 67110146;
      v15 = 84;
      v16 = 2080;
      v17 = "[COSAAGenericTermsUIRequest urlRequest]";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      v22 = 1024;
      v23 = showWarranty;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%d %s: Gizmo Info Header: %@; Model Number: %@; Show Warranty: %d", buf, 0x2Cu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end