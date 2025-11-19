@interface CXJoinCallActivitySession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToJoinCallActivitySession:(id)a3;
- (CXJoinCallActivitySession)initWithActivity:(id)a3;
- (CXJoinCallActivitySession)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXJoinCallActivitySession

- (CXJoinCallActivitySession)initWithActivity:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CXJoinCallActivitySession;
  v6 = [(CXJoinCallActivitySession *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    timestamp = v6->_timestamp;
    v6->_timestamp = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    UUID = v6->_UUID;
    v6->_UUID = v9;

    objc_storeStrong(&v6->_activity, a3);
    v6->_state = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXJoinCallActivitySession *)self UUID];
  [v3 appendFormat:@" identifierUUIDString=%@", v4];

  v5 = [(CXJoinCallActivitySession *)self activity];
  [v3 appendFormat:@" activity=%@", v5];

  v6 = [(CXJoinCallActivitySession *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", v6];

  [v3 appendFormat:@" state=%lu", -[CXJoinCallActivitySession state](self, "state")];
  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallActivitySession *)self isEqualToJoinCallActivitySession:v4];

  return v5;
}

- (BOOL)isEqualToJoinCallActivitySession:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivitySession *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(CXJoinCallActivitySession *)self activity];
    v8 = [v4 activity];
    if ([v7 isEqualToJoinCallActivity:v8])
    {
      v9 = [(CXJoinCallActivitySession *)self timestamp];
      v10 = [v4 timestamp];
      if (v9 == v10)
      {
        v12 = [(CXJoinCallActivitySession *)self state];
        v11 = v12 == [v4 state];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(CXJoinCallActivitySession *)self UUID];
  v4 = [v3 hash];
  v5 = [(CXJoinCallActivitySession *)self activity];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXJoinCallActivitySession *)self timestamp];
  v8 = [v7 hash];
  v9 = v8 ^ [(CXJoinCallActivitySession *)self state];

  return v6 ^ v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXJoinCallActivitySession *)self activity];
  v6 = [v4 initWithActivity:v5];

  v7 = [(CXJoinCallActivitySession *)self UUID];
  [v6 setUUID:v7];

  v8 = [(CXJoinCallActivitySession *)self timestamp];
  [v6 setTimestamp:v8];

  [v6 setState:{-[CXJoinCallActivitySession state](self, "state")}];
  return v6;
}

- (CXJoinCallActivitySession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivitySession *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_activity);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    activity = v5->_activity;
    v5->_activity = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_timestamp);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = NSStringFromSelector(sel_state);
    v5->_state = [v4 decodeIntegerForKey:v18];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivitySession *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXJoinCallActivitySession *)self activity];
  v8 = NSStringFromSelector(sel_activity);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXJoinCallActivitySession *)self timestamp];
  v10 = NSStringFromSelector(sel_timestamp);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXJoinCallActivitySession *)self state];
  v12 = NSStringFromSelector(sel_state);
  [v4 encodeInteger:v11 forKey:v12];
}

@end