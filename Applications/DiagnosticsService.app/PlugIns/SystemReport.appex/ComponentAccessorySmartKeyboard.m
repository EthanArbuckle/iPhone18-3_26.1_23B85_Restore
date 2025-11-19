@interface ComponentAccessorySmartKeyboard
- (BOOL)isPresent;
- (ComponentAccessorySmartKeyboard)init;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentAccessorySmartKeyboard

- (ComponentAccessorySmartKeyboard)init
{
  v6.receiver = self;
  v6.super_class = ComponentAccessorySmartKeyboard;
  v2 = [(ComponentAccessorySmartKeyboard *)&v6 init];
  if (v2)
  {
    v3 = [DSIOHIDDevice deviceMatchingAccessories:&off_1000C86F0];
    device = v2->_device;
    v2->_device = v3;
  }

  return v2;
}

- (BOOL)isPresent
{
  v2 = [(ComponentAccessorySmartKeyboard *)self device];
  v3 = v2 != 0;

  return v3;
}

- (void)populateAttributes:(id)a3
{
  v7 = a3;
  v4 = [(ComponentAccessorySmartKeyboard *)self device];
  v5 = [v4 stringFromHIDReport:17];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v6 = +[NSNull null];
    [v7 setObject:v6 forKeyedSubscript:@"serialNumber"];
  }
}

@end