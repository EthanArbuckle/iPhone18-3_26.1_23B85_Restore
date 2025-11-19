@interface ACXPendingAppUpdateState
- (ACXPendingAppUpdateState)initWithCoder:(id)a3;
- (ACXPendingAppUpdateState)initWithCompanionBundleID:(id)a3;
- (BOOL)hasExpired;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACXPendingAppUpdateState

- (ACXPendingAppUpdateState)initWithCompanionBundleID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ACXPendingAppUpdateState;
  v6 = [(ACXPendingAppUpdateState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_companionAppBundleID, a3);
    +[NSDate timeIntervalSinceReferenceDate];
    v7->_creationTime = v8;
  }

  return v7;
}

- (BOOL)hasExpired
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  [(ACXPendingAppUpdateState *)self creationTime];
  return v4 - v5 > 604800.0;
}

- (ACXPendingAppUpdateState)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ACXPendingAppUpdateState;
  v5 = [(ACXPendingAppUpdateState *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
    companionAppBundleID = v5->_companionAppBundleID;
    v5->_companionAppBundleID = v6;

    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_creationTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  creationTime = self->_creationTime;
  v5 = a3;
  [v5 encodeDouble:@"creationTime" forKey:creationTime];
  [v5 encodeObject:self->_companionAppBundleID forKey:@"companionAppBundleID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  v6 = [v4 initWithCompanionBundleID:v5];

  [(ACXPendingAppUpdateState *)self creationTime];
  v6[2] = v7;
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ACXPendingAppUpdateState *)self companionAppBundleID];
      v7 = [(ACXPendingAppUpdateState *)v5 companionAppBundleID];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  [(ACXPendingAppUpdateState *)self creationTime];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [NSString stringWithFormat:@"<%@<%p> companionAppBundleID:%@ creationTime:%@>", v4, self, v5, v6];

  return v7;
}

@end