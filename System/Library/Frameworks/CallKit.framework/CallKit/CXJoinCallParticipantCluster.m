@interface CXJoinCallParticipantCluster
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToJoinCallParticipantCluster:(id)a3;
- (CXJoinCallParticipantCluster)initWithCoder:(id)a3;
- (CXJoinCallParticipantCluster)initWithUUID:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXJoinCallParticipantCluster

- (CXJoinCallParticipantCluster)initWithUUID:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CXJoinCallParticipantCluster;
  v8 = [(CXJoinCallParticipantCluster *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_UUID, a3);
    v9->_type = a4;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXJoinCallParticipantCluster *)self UUID];
  [v3 appendFormat:@" UUID=%@", v4];

  [v3 appendFormat:@" type=%zd", -[CXJoinCallParticipantCluster type](self, "type")];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallParticipantCluster *)self isEqualToJoinCallParticipantCluster:v4];

  return v5;
}

- (BOOL)isEqualToJoinCallParticipantCluster:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallParticipantCluster *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(CXJoinCallParticipantCluster *)self type];
    v8 = v7 == [v4 type];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CXJoinCallParticipantCluster *)self UUID];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CXJoinCallParticipantCluster type](self, "type")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CXJoinCallParticipantCluster allocWithZone:a3];
  v5 = [(CXJoinCallParticipantCluster *)self UUID];
  v6 = [(CXJoinCallParticipantCluster *)v4 initWithUUID:v5 type:[(CXJoinCallParticipantCluster *)self type]];

  return v6;
}

- (CXJoinCallParticipantCluster)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];
  v8 = NSStringFromSelector(sel_type);
  v9 = [v4 decodeIntegerForKey:v8];

  v10 = [(CXJoinCallParticipantCluster *)self initWithUUID:v7 type:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallParticipantCluster *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXJoinCallParticipantCluster *)self type];
  v8 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v7 forKey:v8];
}

@end