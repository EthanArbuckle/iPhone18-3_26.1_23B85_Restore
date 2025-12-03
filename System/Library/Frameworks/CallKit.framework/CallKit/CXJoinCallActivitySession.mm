@interface CXJoinCallActivitySession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJoinCallActivitySession:(id)session;
- (CXJoinCallActivitySession)initWithActivity:(id)activity;
- (CXJoinCallActivitySession)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXJoinCallActivitySession

- (CXJoinCallActivitySession)initWithActivity:(id)activity
{
  activityCopy = activity;
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

    objc_storeStrong(&v6->_activity, activity);
    v6->_state = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXJoinCallActivitySession *)self UUID];
  [v3 appendFormat:@" identifierUUIDString=%@", uUID];

  activity = [(CXJoinCallActivitySession *)self activity];
  [v3 appendFormat:@" activity=%@", activity];

  timestamp = [(CXJoinCallActivitySession *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", timestamp];

  [v3 appendFormat:@" state=%lu", -[CXJoinCallActivitySession state](self, "state")];
  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallActivitySession *)self isEqualToJoinCallActivitySession:equalCopy];

  return v5;
}

- (BOOL)isEqualToJoinCallActivitySession:(id)session
{
  sessionCopy = session;
  uUID = [(CXJoinCallActivitySession *)self UUID];
  uUID2 = [sessionCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    activity = [(CXJoinCallActivitySession *)self activity];
    activity2 = [sessionCopy activity];
    if ([activity isEqualToJoinCallActivity:activity2])
    {
      timestamp = [(CXJoinCallActivitySession *)self timestamp];
      timestamp2 = [sessionCopy timestamp];
      if (timestamp == timestamp2)
      {
        state = [(CXJoinCallActivitySession *)self state];
        v11 = state == [sessionCopy state];
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
  uUID = [(CXJoinCallActivitySession *)self UUID];
  v4 = [uUID hash];
  activity = [(CXJoinCallActivitySession *)self activity];
  v6 = [activity hash] ^ v4;
  timestamp = [(CXJoinCallActivitySession *)self timestamp];
  v8 = [timestamp hash];
  v9 = v8 ^ [(CXJoinCallActivitySession *)self state];

  return v6 ^ v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  activity = [(CXJoinCallActivitySession *)self activity];
  v6 = [v4 initWithActivity:activity];

  uUID = [(CXJoinCallActivitySession *)self UUID];
  [v6 setUUID:uUID];

  timestamp = [(CXJoinCallActivitySession *)self timestamp];
  [v6 setTimestamp:timestamp];

  [v6 setState:{-[CXJoinCallActivitySession state](self, "state")}];
  return v6;
}

- (CXJoinCallActivitySession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXJoinCallActivitySession *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_activity);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    activity = v5->_activity;
    v5->_activity = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_timestamp);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v18];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXJoinCallActivitySession *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  activity = [(CXJoinCallActivitySession *)self activity];
  v8 = NSStringFromSelector(sel_activity);
  [coderCopy encodeObject:activity forKey:v8];

  timestamp = [(CXJoinCallActivitySession *)self timestamp];
  v10 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v10];

  state = [(CXJoinCallActivitySession *)self state];
  v12 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v12];
}

@end