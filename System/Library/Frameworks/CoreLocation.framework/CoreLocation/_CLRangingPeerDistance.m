@interface _CLRangingPeerDistance
- (_CLRangingPeerDistance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLRangingPeerDistance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLRangingPeerDistance;
  [(_CLRangingPeerDistance *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  internal = self->_internal;
  v6 = internal[1];
  v7 = internal[2];
  v8 = internal[3];
  v9 = internal[4];
  v10 = *(internal + 40);
  v11 = *(internal + 41);

  return [v4 initWithPeer:v6 date:v7 distanceMeters:v8 accuracyMeters:v9 initiator:v10 shouldUnlock:v11];
}

- (_CLRangingPeerDistance)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistancePeer"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceTimestamp"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceDistance"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLCodingKeyRangingPeerDistanceAccuracy"];
  v10 = [a3 decodeBoolForKey:@"kCLCodingKeyRangingPeerDistanceInitiator"];
  v11 = [a3 decodeBoolForKey:@"kCLCodingKeyRangingPeerDistanceUnlock"];

  return [(_CLRangingPeerDistance *)self initWithPeer:v6 date:v7 distanceMeters:v8 accuracyMeters:v9 initiator:v10 shouldUnlock:v11];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  internal = self->_internal;
  [a3 encodeObject:internal[1] forKey:@"kCLCodingKeyRangingPeerDistancePeer"];
  [a3 encodeObject:internal[2] forKey:@"kCLCodingKeyRangingPeerDistanceTimestamp"];
  [a3 encodeObject:internal[3] forKey:@"kCLCodingKeyRangingPeerDistanceDistance"];
  [a3 encodeObject:internal[4] forKey:@"kCLCodingKeyRangingPeerDistanceAccuracy"];
  [a3 encodeBool:*(internal + 40) forKey:@"kCLCodingKeyRangingPeerDistanceInitiator"];
  v7 = *(internal + 41);

  [a3 encodeBool:v7 forKey:@"kCLCodingKeyRangingPeerDistanceUnlock"];
}

- (id)description
{
  internal = self->_internal;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [internal[1] getMacAddressAsString];
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

  return [v3 stringWithFormat:@"Peer: %@ time:%@ distance[m]:%.02f accuracy[m]:%.02f unlock:%s secure:%s initiator:%s", v4, v5, *&v7, *&v9, v10, v11, v12];
}

@end