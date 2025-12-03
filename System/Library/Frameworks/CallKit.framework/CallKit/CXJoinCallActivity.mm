@interface CXJoinCallActivity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToJoinCallActivity:(id)activity;
- (CXJoinCallActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context activityIdentifier:(id)activityIdentifier;
- (CXJoinCallActivity)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXJoinCallActivity

- (CXJoinCallActivity)initWithBundleIdentifier:(id)identifier metadata:(id)metadata applicationContext:(id)context activityIdentifier:(id)activityIdentifier
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  contextCopy = context;
  activityIdentifierCopy = activityIdentifier;
  v21.receiver = self;
  v21.super_class = CXJoinCallActivity;
  v15 = [(CXJoinCallActivity *)&v21 init];
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    UUID = v15->_UUID;
    v15->_UUID = v16;

    v18 = [MEMORY[0x1E695DF00] now];
    timestamp = v15->_timestamp;
    v15->_timestamp = v18;

    objc_storeStrong(&v15->_bundleIdentifier, identifier);
    objc_storeStrong(&v15->_applicationContext, context);
    objc_storeStrong(&v15->_metadata, metadata);
    objc_storeStrong(&v15->_activityIdentifier, activityIdentifier);
    v15->_startWhenStaged = 0;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uUID = [(CXJoinCallActivity *)self UUID];
  [v3 appendFormat:@" identifierUUIDString=%@", uUID];

  bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", bundleIdentifier];

  timestamp = [(CXJoinCallActivity *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", timestamp];

  startWhenStaged = [(CXJoinCallActivity *)self startWhenStaged];
  v8 = @"NO";
  if (startWhenStaged)
  {
    v8 = @"YES";
  }

  [v3 appendFormat:@" startWhenStaged=%@", v8];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallActivity *)self isEqualToJoinCallActivity:equalCopy];

  return v5;
}

- (BOOL)isEqualToJoinCallActivity:(id)activity
{
  activityCopy = activity;
  uUID = [(CXJoinCallActivity *)self UUID];
  uUID2 = [activityCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    applicationContext = [(CXJoinCallActivity *)self applicationContext];
    applicationContext2 = [activityCopy applicationContext];
    if ([applicationContext isEqual:applicationContext2])
    {
      metadata = [(CXJoinCallActivity *)self metadata];
      metadata2 = [activityCopy metadata];
      if ([metadata isEqual:metadata2])
      {
        timestamp = [(CXJoinCallActivity *)self timestamp];
        timestamp2 = [activityCopy timestamp];
        if ([timestamp isEqual:timestamp2])
        {
          v21 = timestamp;
          bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
          [activityCopy bundleIdentifier];
          v20 = v22 = bundleIdentifier;
          if ([bundleIdentifier isEqual:?])
          {
            activityIdentifier = [(CXJoinCallActivity *)self activityIdentifier];
            metadata3 = [activityCopy metadata];
            v19 = activityIdentifier;
            if ([activityIdentifier isEqual:?])
            {
              startWhenStaged = [(CXJoinCallActivity *)self startWhenStaged];
              v16 = startWhenStaged ^ [activityCopy startWhenStaged] ^ 1;
            }

            else
            {
              LOBYTE(v16) = 0;
            }

            timestamp = v21;
          }

          else
          {
            LOBYTE(v16) = 0;
            timestamp = v21;
          }
        }

        else
        {
          LOBYTE(v16) = 0;
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  uUID = [(CXJoinCallActivity *)self UUID];
  v4 = [uUID hash];
  bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  applicationContext = [(CXJoinCallActivity *)self applicationContext];
  v8 = [applicationContext hash];
  timestamp = [(CXJoinCallActivity *)self timestamp];
  v10 = v6 ^ v8 ^ [timestamp hash];
  activityIdentifier = [(CXJoinCallActivity *)self activityIdentifier];
  v12 = [activityIdentifier hash];
  metadata = [(CXJoinCallActivity *)self metadata];
  v14 = v12 ^ [metadata hash];
  startWhenStaged = [(CXJoinCallActivity *)self startWhenStaged];
  v16 = 1237;
  if (startWhenStaged)
  {
    v16 = 1231;
  }

  v17 = v14 ^ v16;

  return v10 ^ v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
  metadata = [(CXJoinCallActivity *)self metadata];
  applicationContext = [(CXJoinCallActivity *)self applicationContext];
  activityIdentifier = [(CXJoinCallActivity *)self activityIdentifier];
  v9 = [v4 initWithBundleIdentifier:bundleIdentifier metadata:metadata applicationContext:applicationContext activityIdentifier:activityIdentifier];

  uUID = [(CXJoinCallActivity *)self UUID];
  [v9 setUUID:uUID];

  timestamp = [(CXJoinCallActivity *)self timestamp];
  [v9 setTimestamp:timestamp];

  [v9 setStartWhenStaged:{-[CXJoinCallActivity startWhenStaged](self, "startWhenStaged")}];
  return v9;
}

- (CXJoinCallActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXJoinCallActivity *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_applicationContext);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    applicationContext = v5->_applicationContext;
    v5->_applicationContext = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_timestamp);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = NSStringFromSelector(sel_bundleIdentifier);
    v19 = [coderCopy decodeObjectForKey:v18];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v19;

    v21 = NSStringFromSelector(sel_activityIdentifier);
    v22 = [coderCopy decodeObjectForKey:v21];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v22;

    v24 = NSStringFromSelector(sel_metadata);
    v25 = [coderCopy decodeObjectForKey:v24];
    metadata = v5->_metadata;
    v5->_metadata = v25;

    v27 = NSStringFromSelector(sel_startWhenStaged);
    v5->_startWhenStaged = [coderCopy decodeBoolForKey:v27];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(CXJoinCallActivity *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  applicationContext = [(CXJoinCallActivity *)self applicationContext];
  v8 = NSStringFromSelector(sel_applicationContext);
  [coderCopy encodeObject:applicationContext forKey:v8];

  timestamp = [(CXJoinCallActivity *)self timestamp];
  v10 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v10];

  bundleIdentifier = [(CXJoinCallActivity *)self bundleIdentifier];
  v12 = NSStringFromSelector(sel_bundleIdentifier);
  [coderCopy encodeObject:bundleIdentifier forKey:v12];

  activityIdentifier = [(CXJoinCallActivity *)self activityIdentifier];
  v14 = NSStringFromSelector(sel_activityIdentifier);
  [coderCopy encodeObject:activityIdentifier forKey:v14];

  metadata = [(CXJoinCallActivity *)self metadata];
  v16 = NSStringFromSelector(sel_metadata);
  [coderCopy encodeObject:metadata forKey:v16];

  startWhenStaged = [(CXJoinCallActivity *)self startWhenStaged];
  v18 = NSStringFromSelector(sel_startWhenStaged);
  [coderCopy encodeBool:startWhenStaged forKey:v18];
}

@end