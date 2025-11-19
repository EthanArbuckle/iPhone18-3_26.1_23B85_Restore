@interface FakeMapsPushDevice
- (FakeMapsPushDevice)initWithName:(id)a3 model:(id)a4;
@end

@implementation FakeMapsPushDevice

- (FakeMapsPushDevice)initWithName:(id)a3 model:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = FakeMapsPushDevice;
  v8 = [(FakeMapsPushDevice *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    model = v8->_model;
    v8->_model = v11;

    v13 = v8;
  }

  return v8;
}

@end