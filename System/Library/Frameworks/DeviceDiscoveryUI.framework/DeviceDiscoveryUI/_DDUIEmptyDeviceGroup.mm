@interface _DDUIEmptyDeviceGroup
- (_DDUIEmptyDeviceGroup)initWithName:(id)name;
@end

@implementation _DDUIEmptyDeviceGroup

- (_DDUIEmptyDeviceGroup)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = _DDUIEmptyDeviceGroup;
  v5 = [(_DDUIEmptyDeviceGroup *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;
  }

  return v5;
}

@end