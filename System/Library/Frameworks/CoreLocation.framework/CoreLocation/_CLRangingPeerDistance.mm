@interface _CLRangingPeerDistance
- (_CLRangingPeerDistance)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLRangingPeerDistance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLRangingPeerDistance;
  [(_CLRangingPeerDistance *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];
  v8 = internal[3];
  v9 = internal[4];
  v10 = *(internal + 40);
  v11 = *(internal + 41);

  return [v4 initWithPeer:v6 date:v7 distanceMeters:v8 accuracyMeters:v9 initiator:v10 shouldUnlock:v11];
}

- (_CLRangingPeerDistance)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistancePeer"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceTimestamp"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceDistance"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceAccuracy"];
  v10 = [coder decodeBoolForKey:@"kCLCodingKeyRangingPeerDistanceInitiator"];
  v11 = [coder decodeBoolForKey:@"kCLCodingKeyRangingPeerDistanceUnlock"];

  return [(_CLRangingPeerDistance *)self initWithPeer:v6 date:v7 distanceMeters:v8 accuracyMeters:v9 initiator:v10 shouldUnlock:v11];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  [coder encodeObject:internal[1] forKey:@"kCLCodingKeyRangingPeerDistancePeer"];
  [coder encodeObject:internal[2] forKey:@"kCLCodingKeyRangingPeerDistanceTimestamp"];
  [coder encodeObject:internal[3] forKey:@"kCLCodingKeyRangingPeerDistanceDistance"];
  [coder encodeObject:internal[4] forKey:@"kCLCodingKeyRangingPeerDistanceAccuracy"];
  [coder encodeBool:*(internal + 40) forKey:@"kCLCodingKeyRangingPeerDistanceInitiator"];
  v7 = *(internal + 41);

  [coder encodeBool:v7 forKey:@"kCLCodingKeyRangingPeerDistanceUnlock"];
}

- (id)description
{
  internal = self->_internal;
  v3 = MEMORY[0x1E696AEC0];
  getMacAddressAsString = [internal[1] getMacAddressAsString];
  v5 = internal[2];
  [internal[3] floatValue];
  v7 = v6;
  [internal[4] floatValue];
  v9 = v8;
  if (*(internal + 41))
  {
    v10 = "Yes";
  }

  else
  {
    v10 = "No";
  }

  if ([internal[1] secureRangingKeyID])
  {
    v11 = "Yes";
  }

  else
  {
    v11 = "No";
  }

  if (*(internal + 40))
  {
    v12 = "Yes";
  }

  else
  {
    v12 = "No";
  }

  return [v3 stringWithFormat:@"Peer: %@ time:%@ distance[m]:%.02f accuracy[m]:%.02f unlock:%s secure:%s initiator:%s", getMacAddressAsString, v5, *&v7, *&v9, v10, v11, v12];
}

@end