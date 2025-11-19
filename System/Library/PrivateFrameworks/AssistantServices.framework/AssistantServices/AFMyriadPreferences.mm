@interface AFMyriadPreferences
- (AFMyriadPreferences)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4;
- (unsigned)deviceGroup;
@end

@implementation AFMyriadPreferences

- (unsigned)deviceGroup
{
  v2 = [(AFPreferences *)self->_pref myriadDeviceGroup];
  v3 = [v2 intValue];

  return v3;
}

- (AFMyriadPreferences)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AFMyriadPreferences;
  v9 = [(AFMyriadPreferences *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instanceContext, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = [[AFPreferences alloc] initWithInstanceContext:v10->_instanceContext];
    }

    pref = v10->_pref;
    v10->_pref = v11;
  }

  return v10;
}

@end