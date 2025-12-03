@interface CXJoinCallParticipantCluster
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJoinCallParticipantCluster:(id)cluster;
- (CXJoinCallParticipantCluster)initWithCoder:(id)coder;
- (CXJoinCallParticipantCluster)initWithUUID:(id)d type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXJoinCallParticipantCluster

- (CXJoinCallParticipantCluster)initWithUUID:(id)d type:(int64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CXJoinCallParticipantCluster;
  v8 = [(CXJoinCallParticipantCluster *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_UUID, d);
    v9->_type = type;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXJoinCallParticipantCluster *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  [v3 appendFormat:@" type=%zd", -[CXJoinCallParticipantCluster type](self, "type")];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallParticipantCluster *)self isEqualToJoinCallParticipantCluster:equalCopy];

  return v5;
}

- (BOOL)isEqualToJoinCallParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  uUID = [(CXJoinCallParticipantCluster *)self UUID];
  uUID2 = [clusterCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    type = [(CXJoinCallParticipantCluster *)self type];
    v8 = type == [clusterCopy type];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  uUID = [(CXJoinCallParticipantCluster *)self UUID];
  v4 = [uUID hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CXJoinCallParticipantCluster type](self, "type")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CXJoinCallParticipantCluster allocWithZone:zone];
  uUID = [(CXJoinCallParticipantCluster *)self UUID];
  v6 = [(CXJoinCallParticipantCluster *)v4 initWithUUID:uUID type:[(CXJoinCallParticipantCluster *)self type]];

  return v6;
}

- (CXJoinCallParticipantCluster)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_type);
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [(CXJoinCallParticipantCluster *)self initWithUUID:v7 type:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXJoinCallParticipantCluster *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  type = [(CXJoinCallParticipantCluster *)self type];
  v8 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v8];
}

@end