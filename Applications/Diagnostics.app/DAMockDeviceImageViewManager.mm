@interface DAMockDeviceImageViewManager
+ (id)sharedInstance;
- (void)deviceImageViewForDeviceStateAttributes:(id)attributes completion:(id)completion;
@end

@implementation DAMockDeviceImageViewManager

+ (id)sharedInstance
{
  if (qword_100202DC8 != -1)
  {
    sub_100158F90();
  }

  v3 = qword_100202DC0;

  return v3;
}

- (void)deviceImageViewForDeviceStateAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C714;
  v10[3] = &unk_1001BC5A8;
  v11 = attributesCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = attributesCopy;
  dispatch_async(v7, v10);
}

@end