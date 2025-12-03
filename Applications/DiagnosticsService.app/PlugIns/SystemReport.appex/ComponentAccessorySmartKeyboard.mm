@interface ComponentAccessorySmartKeyboard
- (BOOL)isPresent;
- (ComponentAccessorySmartKeyboard)init;
- (void)populateAttributes:(id)attributes;
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
  device = [(ComponentAccessorySmartKeyboard *)self device];
  v3 = device != 0;

  return v3;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  device = [(ComponentAccessorySmartKeyboard *)self device];
  v5 = [device stringFromHIDReport:17];

  if (v5)
  {
    [attributesCopy setObject:v5 forKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v6 = +[NSNull null];
    [attributesCopy setObject:v6 forKeyedSubscript:@"serialNumber"];
  }
}

@end