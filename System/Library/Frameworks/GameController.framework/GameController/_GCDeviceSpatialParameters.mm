@interface _GCDeviceSpatialParameters
- (BOOL)isEqual:(id)a3;
- (_GCDeviceSpatialParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)inherentChirality;
- (uint64_t)setInherentChirality:(uint64_t)result;
- (uint64_t)trackingSourceIOServiceRegistryID;
- (void)encodeWithCoder:(id)a3;
- (void)setTrackingSourceIOServiceRegistryID:(void *)a1;
@end

@implementation _GCDeviceSpatialParameters

- (_GCDeviceSpatialParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_GCDeviceSpatialParameters *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingSourceIOServiceRegistryID"];
  v8 = v6;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v7, v6, 8);

    v5->_inherentChirality = [v4 decodeIntegerForKey:@"inherentChirality"];
  }

  else
  {

    [v4 decodeIntegerForKey:@"inherentChirality"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_trackingSourceIOServiceRegistryID forKey:@"trackingSourceIOServiceRegistryID"];
    inherentChirality = self->_inherentChirality;
  }

  else
  {
    [_GCDeviceSpatialParameters encodeWithCoder:a3];
    inherentChirality = 0;
  }

  [a3 encodeInteger:inherentChirality forKey:@"inherentChirality"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDeviceSpatialParameters;
  v4 = [(GCDeviceObjectParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 1, self->_trackingSourceIOServiceRegistryID);
  v4[2] = self->_inherentChirality;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCDeviceSpatialParameters;
  v6 = [(GCDeviceObjectParameters *)&v8 isEqual:v4]&& ((trackingSourceIOServiceRegistryID = self->_trackingSourceIOServiceRegistryID, trackingSourceIOServiceRegistryID == v4[1]) || [(NSNumber *)trackingSourceIOServiceRegistryID isEqual:?]) && self->_inherentChirality == v4[2];

  return v6;
}

- (uint64_t)trackingSourceIOServiceRegistryID
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)inherentChirality
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setTrackingSourceIOServiceRegistryID:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 8);
  }
}

- (uint64_t)setInherentChirality:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v1 = a1;

  return [v1 encodeObject:0 forKey:@"trackingSourceIOServiceRegistryID"];
}

@end