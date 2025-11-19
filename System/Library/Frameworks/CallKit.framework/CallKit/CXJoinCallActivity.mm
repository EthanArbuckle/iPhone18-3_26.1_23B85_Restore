@interface CXJoinCallActivity
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToJoinCallActivity:(id)a3;
- (CXJoinCallActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 activityIdentifier:(id)a6;
- (CXJoinCallActivity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CXJoinCallActivity

- (CXJoinCallActivity)initWithBundleIdentifier:(id)a3 metadata:(id)a4 applicationContext:(id)a5 activityIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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

    objc_storeStrong(&v15->_bundleIdentifier, a3);
    objc_storeStrong(&v15->_applicationContext, a5);
    objc_storeStrong(&v15->_metadata, a4);
    objc_storeStrong(&v15->_activityIdentifier, a6);
    v15->_startWhenStaged = 0;
  }

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CXJoinCallActivity *)self UUID];
  [v3 appendFormat:@" identifierUUIDString=%@", v4];

  v5 = [(CXJoinCallActivity *)self bundleIdentifier];
  [v3 appendFormat:@" bundleIdentifier=%@", v5];

  v6 = [(CXJoinCallActivity *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", v6];

  v7 = [(CXJoinCallActivity *)self startWhenStaged];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  [v3 appendFormat:@" startWhenStaged=%@", v8];
  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXJoinCallActivity *)self isEqualToJoinCallActivity:v4];

  return v5;
}

- (BOOL)isEqualToJoinCallActivity:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivity *)self UUID];
  v6 = [v4 UUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(CXJoinCallActivity *)self applicationContext];
    v8 = [v4 applicationContext];
    if ([v7 isEqual:v8])
    {
      v9 = [(CXJoinCallActivity *)self metadata];
      v10 = [v4 metadata];
      if ([v9 isEqual:v10])
      {
        v11 = [(CXJoinCallActivity *)self timestamp];
        v12 = [v4 timestamp];
        if ([v11 isEqual:v12])
        {
          v21 = v11;
          v13 = [(CXJoinCallActivity *)self bundleIdentifier];
          [v4 bundleIdentifier];
          v20 = v22 = v13;
          if ([v13 isEqual:?])
          {
            v14 = [(CXJoinCallActivity *)self activityIdentifier];
            v18 = [v4 metadata];
            v19 = v14;
            if ([v14 isEqual:?])
            {
              v15 = [(CXJoinCallActivity *)self startWhenStaged];
              v16 = v15 ^ [v4 startWhenStaged] ^ 1;
            }

            else
            {
              LOBYTE(v16) = 0;
            }

            v11 = v21;
          }

          else
          {
            LOBYTE(v16) = 0;
            v11 = v21;
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
  v3 = [(CXJoinCallActivity *)self UUID];
  v4 = [v3 hash];
  v5 = [(CXJoinCallActivity *)self bundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(CXJoinCallActivity *)self applicationContext];
  v8 = [v7 hash];
  v9 = [(CXJoinCallActivity *)self timestamp];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CXJoinCallActivity *)self activityIdentifier];
  v12 = [v11 hash];
  v13 = [(CXJoinCallActivity *)self metadata];
  v14 = v12 ^ [v13 hash];
  v15 = [(CXJoinCallActivity *)self startWhenStaged];
  v16 = 1237;
  if (v15)
  {
    v16 = 1231;
  }

  v17 = v14 ^ v16;

  return v10 ^ v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CXJoinCallActivity *)self bundleIdentifier];
  v6 = [(CXJoinCallActivity *)self metadata];
  v7 = [(CXJoinCallActivity *)self applicationContext];
  v8 = [(CXJoinCallActivity *)self activityIdentifier];
  v9 = [v4 initWithBundleIdentifier:v5 metadata:v6 applicationContext:v7 activityIdentifier:v8];

  v10 = [(CXJoinCallActivity *)self UUID];
  [v9 setUUID:v10];

  v11 = [(CXJoinCallActivity *)self timestamp];
  [v9 setTimestamp:v11];

  [v9 setStartWhenStaged:{-[CXJoinCallActivity startWhenStaged](self, "startWhenStaged")}];
  return v9;
}

- (CXJoinCallActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivity *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_UUID);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    UUID = v5->_UUID;
    v5->_UUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_applicationContext);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    applicationContext = v5->_applicationContext;
    v5->_applicationContext = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_timestamp);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = NSStringFromSelector(sel_bundleIdentifier);
    v19 = [v4 decodeObjectForKey:v18];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v19;

    v21 = NSStringFromSelector(sel_activityIdentifier);
    v22 = [v4 decodeObjectForKey:v21];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v22;

    v24 = NSStringFromSelector(sel_metadata);
    v25 = [v4 decodeObjectForKey:v24];
    metadata = v5->_metadata;
    v5->_metadata = v25;

    v27 = NSStringFromSelector(sel_startWhenStaged);
    v5->_startWhenStaged = [v4 decodeBoolForKey:v27];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXJoinCallActivity *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(CXJoinCallActivity *)self applicationContext];
  v8 = NSStringFromSelector(sel_applicationContext);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(CXJoinCallActivity *)self timestamp];
  v10 = NSStringFromSelector(sel_timestamp);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(CXJoinCallActivity *)self bundleIdentifier];
  v12 = NSStringFromSelector(sel_bundleIdentifier);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(CXJoinCallActivity *)self activityIdentifier];
  v14 = NSStringFromSelector(sel_activityIdentifier);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(CXJoinCallActivity *)self metadata];
  v16 = NSStringFromSelector(sel_metadata);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(CXJoinCallActivity *)self startWhenStaged];
  v18 = NSStringFromSelector(sel_startWhenStaged);
  [v4 encodeBool:v17 forKey:v18];
}

@end