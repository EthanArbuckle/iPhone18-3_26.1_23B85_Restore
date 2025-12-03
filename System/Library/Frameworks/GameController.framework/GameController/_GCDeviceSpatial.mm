@interface _GCDeviceSpatial
- (_GCDeviceSpatial)initWithParameters:(id)parameters;
@end

@implementation _GCDeviceSpatial

- (_GCDeviceSpatial)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v10.receiver = self;
  v10.super_class = _GCDeviceSpatial;
  v5 = [(_GCDeviceSpatial *)&v10 init];
  v6 = v5;
  if (parametersCopy)
  {
    objc_storeStrong(&v5->_serviceRegistryID, parametersCopy[1]);
    v7 = parametersCopy[2];
  }

  else
  {
    serviceRegistryID = v5->_serviceRegistryID;
    v5->_serviceRegistryID = 0;

    v7 = 0;
  }

  v6->_inherentChirality = v7;

  return v6;
}

@end