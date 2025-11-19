@interface EventServiceHost
- (EventServiceHost)init;
@end

@implementation EventServiceHost

- (EventServiceHost)init
{
  v28.receiver = self;
  v28.super_class = EventServiceHost;
  val = [(EventServiceHost *)&v28 init];
  if (val)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.appstored.EventServiceHost.dispatch", v3);
    queue = val->_queue;
    val->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    onQueue_extensionRequestForIdentifier = val->_onQueue_extensionRequestForIdentifier;
    val->_onQueue_extensionRequestForIdentifier = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    onQueue_extensionRequestsForBundleID = val->_onQueue_extensionRequestsForBundleID;
    val->_onQueue_extensionRequestsForBundleID = v8;

    v27 = 0;
    v46[0] = NSExtensionPointName;
    v46[1] = @"ENTITLEMENT:com.apple.appstored-services.event";
    v47[0] = @"com.apple.appstored-services.event";
    v47[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
    v11 = [NSExtension extensionsWithMatchingAttributes:v10 error:&v27];
    extensions = val->_extensions;
    val->_extensions = v11;

    if (v27)
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v27;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error fetching extensions: %{public}@", buf, 0xCu);
      }
    }

    objc_initWeak(&location, val);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100306208;
    v43[3] = &unk_1005228D8;
    objc_copyWeak(&v44, &location);
    v14 = objc_retainBlock(v43);
    v15 = [v14 copy];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100306358;
    v41[3] = &unk_100522940;
    v16 = v15;
    v42 = v16;
    v17 = objc_retainBlock(v41);
    v18 = [v17 copy];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = val->_extensions;
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:buf count:16];
    if (v19)
    {
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          objc_initWeak(&from, v22);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100306518;
          v34[3] = &unk_100522968;
          v23 = v18;
          v35 = v23;
          [v22 setRequestCompletionBlock:v34];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100306608;
          v32[3] = &unk_100522990;
          v33 = v23;
          [v22 setRequestCancellationBlock:v32];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1003066F8;
          v29[3] = &unk_1005229E0;
          objc_copyWeak(&v31, &from);
          v30 = v16;
          [v22 setRequestInterruptionBlock:v29];

          objc_destroyWeak(&v31);
          objc_destroyWeak(&from);
        }

        v19 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:buf count:16];
      }

      while (v19);
    }

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return val;
}

@end