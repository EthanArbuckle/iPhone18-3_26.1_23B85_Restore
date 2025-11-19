@interface PushToDeviceActivity
- (PushToDeviceActivity)initWithDevice:(id)a3 place:(id)a4;
- (id)activityTitle;
- (id)activityType;
- (id)icon;
- (void)performActivity;
@end

@implementation PushToDeviceActivity

- (id)icon
{
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 appKitBundleClass];

  v5 = [(MapsPushDevice *)self->_device model];
  v6 = [v4 iconNameForDeviceModel:v5];

  v7 = [UIImage systemImageNamed:v6];

  return v7;
}

- (void)performActivity
{
  v3 = +[MapsPushManager defaultManager];
  [v3 pushItem:self->_data toDevice:self->_device];
}

- (id)activityTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Send to %@" value:@"localized string not found" table:0];
  v5 = [(MapsPushDevice *)self->_device name];
  v6 = [NSString stringWithFormat:v4, v5];

  return v6;
}

- (id)activityType
{
  v2 = [(MapsPushDevice *)self->_device uniqueID];
  v3 = [NSString stringWithFormat:@"com.apple.Maps.Push.%@", v2];

  return v3;
}

- (PushToDeviceActivity)initWithDevice:(id)a3 place:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PushToDeviceActivity;
  v9 = [(PushToDeviceActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_data, a4);
  }

  return v10;
}

@end