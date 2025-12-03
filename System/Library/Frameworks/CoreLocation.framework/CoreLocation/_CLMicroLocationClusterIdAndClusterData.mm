@interface _CLMicroLocationClusterIdAndClusterData
- (_CLMicroLocationClusterIdAndClusterData)initWithClusterIdentifier:(id)identifier meanBleRssi:(double)rssi meanUwbRange:(double)range;
- (_CLMicroLocationClusterIdAndClusterData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLMicroLocationClusterIdAndClusterData

- (_CLMicroLocationClusterIdAndClusterData)initWithClusterIdentifier:(id)identifier meanBleRssi:(double)rssi meanUwbRange:(double)range
{
  v10.receiver = self;
  v10.super_class = _CLMicroLocationClusterIdAndClusterData;
  v8 = [(_CLMicroLocationClusterIdAndClusterData *)&v10 init];
  if (v8)
  {
    v8->_clusterIdentifier = [identifier copy];
    v8->_meanBLEReceivedSignalStrength = rssi;
    v8->_meanUWBRange = range;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationClusterIdAndClusterData;
  [(_CLMicroLocationClusterIdAndClusterData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)[(_CLMicroLocationClusterIdAndClusterData *)self clusterIdentifier] copyWithZone:zone];
  [(_CLMicroLocationClusterIdAndClusterData *)self meanBLEReceivedSignalStrength];
  v8 = v7;
  [(_CLMicroLocationClusterIdAndClusterData *)self meanUWBRange];

  return [v5 initWithClusterIdentifier:v6 meanBleRssi:v8 meanUwbRange:v9];
}

- (_CLMicroLocationClusterIdAndClusterData)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLMicroLocationClusterIdAndClusterData;
  v4 = [(_CLMicroLocationClusterIdAndClusterData *)&v8 init];
  if (v4)
  {
    v4->_clusterIdentifier = [coder decodeObjectOfClass:objc_opt_class() forKey:@"clusterId"];
    [coder decodeDoubleForKey:@"meanUwbRange"];
    v4->_meanUWBRange = v5;
    [coder decodeDoubleForKey:@"meanBleRssi"];
    v4->_meanBLEReceivedSignalStrength = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_clusterIdentifier forKey:@"clusterId"];
  [coder encodeDouble:@"meanUwbRange" forKey:self->_meanUWBRange];
  meanBLEReceivedSignalStrength = self->_meanBLEReceivedSignalStrength;

  [coder encodeDouble:@"meanBleRssi" forKey:meanBLEReceivedSignalStrength];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  clusterIdentifier = [(_CLMicroLocationClusterIdAndClusterData *)self clusterIdentifier];
  [(_CLMicroLocationClusterIdAndClusterData *)self meanUWBRange];
  v6 = v5;
  [(_CLMicroLocationClusterIdAndClusterData *)self meanBLEReceivedSignalStrength];
  return [v3 stringWithFormat:@"clusterIdentifier: %@, meanUwbRange: %.3f(m), meanBleRssi: %.3f(dbm)", clusterIdentifier, v6, v7];
}

@end