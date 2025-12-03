@interface _GCDeviceSpatialParameters
- (BOOL)isEqual:(id)equal;
- (_GCDeviceSpatialParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)inherentChirality;
- (uint64_t)setInherentChirality:(uint64_t)result;
- (uint64_t)trackingSourceIOServiceRegistryID;
- (void)encodeWithCoder:(id)coder;
- (void)setTrackingSourceIOServiceRegistryID:(void *)d;
@end

@implementation _GCDeviceSpatialParameters

- (_GCDeviceSpatialParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_GCDeviceSpatialParameters *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingSourceIOServiceRegistryID"];
  v8 = v6;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v7, v6, 8);

    v5->_inherentChirality = [coderCopy decodeIntegerForKey:@"inherentChirality"];
  }

  else
  {

    [coderCopy decodeIntegerForKey:@"inherentChirality"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_trackingSourceIOServiceRegistryID forKey:@"trackingSourceIOServiceRegistryID"];
    inherentChirality = self->_inherentChirality;
  }

  else
  {
    [_GCDeviceSpatialParameters encodeWithCoder:coder];
    inherentChirality = 0;
  }

  [coder encodeInteger:inherentChirality forKey:@"inherentChirality"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDeviceSpatialParameters;
  v4 = [(GCDeviceObjectParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 1, self->_trackingSourceIOServiceRegistryID);
  v4[2] = self->_inherentChirality;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCDeviceSpatialParameters;
  v6 = [(GCDeviceObjectParameters *)&v8 isEqual:equalCopy]&& ((trackingSourceIOServiceRegistryID = self->_trackingSourceIOServiceRegistryID, trackingSourceIOServiceRegistryID == equalCopy[1]) || [(NSNumber *)trackingSourceIOServiceRegistryID isEqual:?]) && self->_inherentChirality == equalCopy[2];

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

- (void)setTrackingSourceIOServiceRegistryID:(void *)d
{
  if (d)
  {
    objc_setProperty_nonatomic_copy(d, newValue, newValue, 8);
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