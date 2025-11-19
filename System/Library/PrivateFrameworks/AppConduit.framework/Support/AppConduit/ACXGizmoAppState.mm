@interface ACXGizmoAppState
- (ACXGizmoAppState)initWithCoder:(id)a3;
- (ACXGizmoAppState)initWithWatchBundleID:(id)a3 companionBundleID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)regenerateUniqueInstallID;
- (void)setInstallStatus:(unint64_t)a3;
@end

@implementation ACXGizmoAppState

- (ACXGizmoAppState)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ACXGizmoAppState;
  v5 = [(ACXGizmoAppState *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchAppBundleID"];
    watchAppBundleID = v5->_watchAppBundleID;
    v5->_watchAppBundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionAppBundleID"];
    companionAppBundleID = v5->_companionAppBundleID;
    v5->_companionAppBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v10;

    v5->_installStatus = [v4 decodeIntegerForKey:@"installStatus"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"watchKitAppExecutableHash"];
    watchKitAppExecutableHash = v5->_watchKitAppExecutableHash;
    v5->_watchKitAppExecutableHash = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(ACXGizmoAppState *)self watchAppBundleID];
  [v11 encodeObject:v4 forKey:@"watchAppBundleID"];

  v5 = [(ACXGizmoAppState *)self companionAppBundleID];

  if (v5)
  {
    v6 = [(ACXGizmoAppState *)self companionAppBundleID];
    [v11 encodeObject:v6 forKey:@"companionAppBundleID"];
  }

  v7 = [(ACXGizmoAppState *)self uniqueInstallID];

  if (v7)
  {
    v8 = [(ACXGizmoAppState *)self uniqueInstallID];
    [v11 encodeObject:v8 forKey:@"uniqueInstallID"];
  }

  v9 = [(ACXGizmoAppState *)self watchKitAppExecutableHash];

  if (v9)
  {
    v10 = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
    [v11 encodeObject:v10 forKey:@"watchKitAppExecutableHash"];
  }

  [v11 encodeInteger:-[ACXGizmoAppState installStatus](self forKey:{"installStatus"), @"installStatus"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ACXGizmoAppState *)self watchAppBundleID];
  v6 = [(ACXGizmoAppState *)self companionAppBundleID];
  v7 = [v4 initWithWatchBundleID:v5 companionBundleID:v6];

  v7[3] = [(ACXGizmoAppState *)self installStatus];
  v8 = [(ACXGizmoAppState *)self uniqueInstallID];
  v9 = v7[4];
  v7[4] = v8;

  v10 = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
  v11 = v7[5];
  v7[5] = v10;

  return v7;
}

- (ACXGizmoAppState)initWithWatchBundleID:(id)a3 companionBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ACXGizmoAppState;
  v9 = [(ACXGizmoAppState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_watchAppBundleID, a3);
    objc_storeStrong(&v10->_companionAppBundleID, a4);
    v10->_installStatus = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ACXGizmoAppState *)self installStatus];
      if (v6 == [(ACXGizmoAppState *)v5 installStatus])
      {
        v7 = [(ACXGizmoAppState *)self watchAppBundleID];
        v8 = [(ACXGizmoAppState *)v5 watchAppBundleID];
        v9 = v7;
        v10 = v8;
        v11 = v10;
        if ((v9 != 0) != (v10 != 0) || v9 && v10 && ![v9 isEqual:v10])
        {
          goto LABEL_13;
        }

        v12 = [(ACXGizmoAppState *)self companionAppBundleID];
        v13 = [(ACXGizmoAppState *)v5 companionAppBundleID];
        v9 = v12;
        v14 = v13;
        v11 = v14;
        if ((v9 != 0) != (v14 != 0) || v9 && v14 && ![v9 isEqual:v14])
        {
          goto LABEL_13;
        }

        v15 = [(ACXGizmoAppState *)self uniqueInstallID];
        v16 = [(ACXGizmoAppState *)v5 uniqueInstallID];
        v9 = v15;
        v17 = v16;
        v11 = v17;
        if ((v9 != 0) != (v17 != 0) || v9 && v17 && ![v9 isEqual:v17])
        {
LABEL_13:

          v18 = 0;
        }

        else
        {

          v9 = [(ACXGizmoAppState *)self watchKitAppExecutableHash];
          v11 = [(ACXGizmoAppState *)v5 watchKitAppExecutableHash];
          v18 = sub_100012414(v9, v11);
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

- (void)setInstallStatus:(unint64_t)a3
{
  installStatus = self->_installStatus;
  if (installStatus != a3)
  {
    if (a3 - 1 > 1 || installStatus - 3 > 0xFFFFFFFFFFFFFFFDLL)
    {
      if (a3 != 5)
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

      v9 = [(ACXGizmoAppState *)self watchAppBundleID];
      MOLogWrite();
    }

    else
    {
      if (self->_uniqueInstallID)
      {
        goto LABEL_14;
      }

      v6 = [(ACXGizmoAppState *)self watchAppBundleID];
      v7 = sub_1000125F8(v6);
      v8 = self->_uniqueInstallID;
      self->_uniqueInstallID = v7;

      if (qword_1000A4878)
      {
        if (*(qword_1000A4878 + 44) < 5)
        {
          goto LABEL_14;
        }
      }

      v9 = [(ACXGizmoAppState *)self watchAppBundleID];
      v11 = [(ACXGizmoAppState *)self uniqueInstallID];
      MOLogWrite();
    }

LABEL_14:
    self->_installStatus = a3;
  }
}

- (void)regenerateUniqueInstallID
{
  if (self->_uniqueInstallID)
  {
    v3 = [(ACXGizmoAppState *)self watchAppBundleID];
    v4 = sub_1000125F8(v3);
    uniqueInstallID = self->_uniqueInstallID;
    self->_uniqueInstallID = v4;

    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

    v7 = [(ACXGizmoAppState *)self watchAppBundleID];
    v6 = [(ACXGizmoAppState *)self uniqueInstallID];
    [(ACXGizmoAppState *)self installStatus];
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }

    v7 = [(ACXGizmoAppState *)self watchAppBundleID];
    v6 = [(ACXGizmoAppState *)self uniqueInstallID];
    [(ACXGizmoAppState *)self installStatus];
  }

  MOLogWrite();
}

@end