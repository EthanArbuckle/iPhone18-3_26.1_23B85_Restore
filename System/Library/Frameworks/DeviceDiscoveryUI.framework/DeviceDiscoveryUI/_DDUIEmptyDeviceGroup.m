@interface _DDUIEmptyDeviceGroup
- (_DDUIEmptyDeviceGroup)initWithName:(id)a3;
@end

@implementation _DDUIEmptyDeviceGroup

- (_DDUIEmptyDeviceGroup)initWithName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DDUIEmptyDeviceGroup;
  v5 = [(_DDUIEmptyDeviceGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end