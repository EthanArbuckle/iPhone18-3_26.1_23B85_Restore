@interface ACXPendingAppUpdateState
- (ACXPendingAppUpdateState)initWithCoder:(id)coder;
- (ACXPendingAppUpdateState)initWithCompanionBundleID:(id)d;
- (BOOL)hasExpired;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACXPendingAppUpdateState

- (ACXPendingAppUpdateState)initWithCompanionBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ACXPendingAppUpdateState;
  v6 = [(ACXPendingAppUpdateState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_companionAppBundleID, d);
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

- (ACXPendingAppUpdateState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ACXPendingAppUpdateState;
  v5 = [(ACXPendingAppUpdateState *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
    companionAppBundleID = v5->_companionAppBundleID;
    v5->_companionAppBundleID = v6;

    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_creationTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creationTime = self->_creationTime;
  coderCopy = coder;
  [coderCopy encodeDouble:@"creationTime" forKey:creationTime];
  [coderCopy encodeObject:self->_companionAppBundleID forKey:@"companionAppBundleID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  companionAppBundleID = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  v6 = [v4 initWithCompanionBundleID:companionAppBundleID];

  [(ACXPendingAppUpdateState *)self creationTime];
  v6[2] = v7;
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      companionAppBundleID = [(ACXPendingAppUpdateState *)self companionAppBundleID];
      companionAppBundleID2 = [(ACXPendingAppUpdateState *)v5 companionAppBundleID];

      v8 = [companionAppBundleID isEqual:companionAppBundleID2];
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
  companionAppBundleID = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  v3 = [companionAppBundleID hash];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  companionAppBundleID = [(ACXPendingAppUpdateState *)self companionAppBundleID];
  [(ACXPendingAppUpdateState *)self creationTime];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [NSString stringWithFormat:@"<%@<%p> companionAppBundleID:%@ creationTime:%@>", v4, self, companionAppBundleID, v6];

  return v7;
}

@end