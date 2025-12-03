@interface PushToDeviceActivity
- (PushToDeviceActivity)initWithDevice:(id)device place:(id)place;
- (id)activityTitle;
- (id)activityType;
- (id)icon;
- (void)performActivity;
@end

@implementation PushToDeviceActivity

- (id)icon
{
  v3 = +[UIApplication sharedMapsDelegate];
  appKitBundleClass = [v3 appKitBundleClass];

  model = [(MapsPushDevice *)self->_device model];
  v6 = [appKitBundleClass iconNameForDeviceModel:model];

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
  name = [(MapsPushDevice *)self->_device name];
  v6 = [NSString stringWithFormat:v4, name];

  return v6;
}

- (id)activityType
{
  uniqueID = [(MapsPushDevice *)self->_device uniqueID];
  v3 = [NSString stringWithFormat:@"com.apple.Maps.Push.%@", uniqueID];

  return v3;
}

- (PushToDeviceActivity)initWithDevice:(id)device place:(id)place
{
  deviceCopy = device;
  placeCopy = place;
  v12.receiver = self;
  v12.super_class = PushToDeviceActivity;
  v9 = [(PushToDeviceActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_data, place);
  }

  return v10;
}

@end