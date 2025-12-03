@interface ACXGizmoAppState
- (ACXGizmoAppState)initWithCoder:(id)coder;
- (ACXGizmoAppState)initWithWatchBundleID:(id)d companionBundleID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)regenerateUniqueInstallID;
- (void)setInstallStatus:(unint64_t)status;
@end

@implementation ACXGizmoAppState

- (ACXGizmoAppState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ACXGizmoAppState;
  v5 = [(ACXGizmoAppState *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchAppBundleID"];
    watchAppBundleID = v5->_watchAppBundleID;
    v5->_watchAppBundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
    companionAppBundleID = v5->_companionAppBundleID;
    v5->_companionAppBundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v10;

    v5->_installStatus = [coderCopy decodeIntegerForKey:@"installStatus"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
    watchKitAppExecutableHash = v5->_watchKitAppExecutableHash;
    v5->_watchKitAppExecutableHash = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
  [coderCopy encodeObject:watchAppBundleID forKey:@"watchAppBundleID"];

  companionAppBundleID = [(ACXGizmoAppState *)self companionAppBundleID];

  if (companionAppBundleID)
  {
    companionAppBundleID2 = [(ACXGizmoAppState *)self companionAppBundleID];
    [coderCopy encodeObject:companionAppBundleID2 forKey:@"companionAppBundleID"];
  }

  uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];

  if (uniqueInstallID)
  {
    uniqueInstallID2 = [(ACXGizmoAppState *)self uniqueInstallID];
    [coderCopy encodeObject:uniqueInstallID2 forKey:@"uniqueInstallID"];
  }

  watchKitAppExecutableHash = [(ACXGizmoAppState *)self watchKitAppExecutableHash];

  if (watchKitAppExecutableHash)
  {
    watchKitAppExecutableHash2 = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
    [coderCopy encodeObject:watchKitAppExecutableHash2 forKey:@"watchKitAppExecutableHash"];
  }

  [coderCopy encodeInteger:-[ACXGizmoAppState installStatus](self forKey:{"installStatus"), @"installStatus"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
  companionAppBundleID = [(ACXGizmoAppState *)self companionAppBundleID];
  v7 = [v4 initWithWatchBundleID:watchAppBundleID companionBundleID:companionAppBundleID];

  v7[3] = [(ACXGizmoAppState *)self installStatus];
  uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];
  v9 = v7[4];
  v7[4] = uniqueInstallID;

  watchKitAppExecutableHash = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
  v11 = v7[5];
  v7[5] = watchKitAppExecutableHash;

  return v7;
}

- (ACXGizmoAppState)initWithWatchBundleID:(id)d companionBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ACXGizmoAppState;
  v9 = [(ACXGizmoAppState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_watchAppBundleID, d);
    objc_storeStrong(&v10->_companionAppBundleID, iD);
    v10->_installStatus = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      installStatus = [(ACXGizmoAppState *)self installStatus];
      if (installStatus == [(ACXGizmoAppState *)v5 installStatus])
      {
        watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
        watchAppBundleID2 = [(ACXGizmoAppState *)v5 watchAppBundleID];
        watchKitAppExecutableHash = watchAppBundleID;
        v10 = watchAppBundleID2;
        watchKitAppExecutableHash2 = v10;
        if ((watchKitAppExecutableHash != 0) != (v10 != 0) || watchKitAppExecutableHash && v10 && ![watchKitAppExecutableHash isEqual:v10])
        {
          goto LABEL_13;
        }

        companionAppBundleID = [(ACXGizmoAppState *)self companionAppBundleID];
        companionAppBundleID2 = [(ACXGizmoAppState *)v5 companionAppBundleID];
        watchKitAppExecutableHash = companionAppBundleID;
        v14 = companionAppBundleID2;
        watchKitAppExecutableHash2 = v14;
        if ((watchKitAppExecutableHash != 0) != (v14 != 0) || watchKitAppExecutableHash && v14 && ![watchKitAppExecutableHash isEqual:v14])
        {
          goto LABEL_13;
        }

        uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];
        uniqueInstallID2 = [(ACXGizmoAppState *)v5 uniqueInstallID];
        watchKitAppExecutableHash = uniqueInstallID;
        v17 = uniqueInstallID2;
        watchKitAppExecutableHash2 = v17;
        if ((watchKitAppExecutableHash != 0) != (v17 != 0) || watchKitAppExecutableHash && v17 && ![watchKitAppExecutableHash isEqual:v17])
        {
LABEL_13:

          v18 = 0;
        }

        else
        {

          watchKitAppExecutableHash = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
          watchKitAppExecutableHash2 = [(ACXGizmoAppState *)v5 watchKitAppExecutableHash];
          v18 = sub_100012414(watchKitAppExecutableHash, watchKitAppExecutableHash2);
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)setInstallStatus:(unint64_t)status
{
  installStatus = self->_installStatus;
  if (installStatus != status)
  {
    if (status - 1 > 1 || installStatus - 3 > 0xFFFFFFFFFFFFFFFDLL)
    {
      if (status != 5)
      {
        goto LABEL_14;
      }

      uniqueInstallID = self->_uniqueInstallID;
      if (!uniqueInstallID)
      {
        goto LABEL_14;
      }

      self->_uniqueInstallID = 0;

      if (qword_1000A4878)
      {
        if (*(qword_1000A4878 + 44) < 5)
        {
          goto LABEL_14;
        }
      }

      watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
      MOLogWrite();
    }

    else
    {
      if (self->_uniqueInstallID)
      {
        goto LABEL_14;
      }

      watchAppBundleID2 = [(ACXGizmoAppState *)self watchAppBundleID];
      v7 = sub_1000125F8(watchAppBundleID2);
      v8 = self->_uniqueInstallID;
      self->_uniqueInstallID = v7;

      if (qword_1000A4878)
      {
        if (*(qword_1000A4878 + 44) < 5)
        {
          goto LABEL_14;
        }
      }

      watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
      uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];
      MOLogWrite();
    }

LABEL_14:
    self->_installStatus = status;
  }
}

- (void)regenerateUniqueInstallID
{
  if (self->_uniqueInstallID)
  {
    watchAppBundleID = [(ACXGizmoAppState *)self watchAppBundleID];
    v4 = sub_1000125F8(watchAppBundleID);
    uniqueInstallID = self->_uniqueInstallID;
    self->_uniqueInstallID = v4;

    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

    watchAppBundleID2 = [(ACXGizmoAppState *)self watchAppBundleID];
    uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];
    [(ACXGizmoAppState *)self installStatus];
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

    watchAppBundleID2 = [(ACXGizmoAppState *)self watchAppBundleID];
    uniqueInstallID = [(ACXGizmoAppState *)self uniqueInstallID];
    [(ACXGizmoAppState *)self installStatus];
  }

  MOLogWrite();
}

@end