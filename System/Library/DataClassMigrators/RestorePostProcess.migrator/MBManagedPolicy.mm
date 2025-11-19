@interface MBManagedPolicy
+ (MBManagedPolicy)sharedPolicy;
- (BOOL)_checkBehaviorOption:(id)a3 description:(id)a4 allowedOut:(BOOL *)a5 error:(id *)a6;
- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)a3 error:(id *)a4;
- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)a3;
- (BOOL)checkIfCloudBackupIsAllowed:(id *)a3;
- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)a3;
- (BOOL)checkIfDriveBackupIsAllowed:(id *)a3;
- (BOOL)checkIfDriveRestoreIsAllowed:(id *)a3;
- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)a3;
- (id)_init;
@end

@implementation MBManagedPolicy

+ (MBManagedPolicy)sharedPolicy
{
  if (qword_2A808 != -1)
  {
    sub_13658();
  }

  v3 = qword_2A800;

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MBManagedPolicy;
  v2 = [(MBManagedPolicy *)&v8 init];
  if (v2)
  {
    v3 = +[MBBehaviorOptions sharedOptions];
    behaviorOptions = v2->_behaviorOptions;
    v2->_behaviorOptions = v3;

    v5 = +[MCProfileConnection sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v5;
  }

  return v2;
}

- (BOOL)checkIfDriveBackupIsAllowed:(id *)a3
{
  v8 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Drive backup" allowedOut:&v8 error:a3];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive backup" error:a3];
  }

  return v8;
}

- (BOOL)checkIfDriveRestoreIsAllowed:(id *)a3
{
  v8 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveRestore];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Drive restore" allowedOut:&v8 error:a3];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive restore" error:a3];
  }

  return v8;
}

- (BOOL)checkIfCloudBackupIsAllowed:(id *)a3
{
  v14 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Cloud backup" allowedOut:&v14 error:a3];

  if (v6)
  {
    if ([(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Cloud backup" error:a3])
    {
      if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:MCFeatureCloudBackupAllowed]!= 2)
      {
        v11 = 1;
        return v11 & 1;
      }

      v7 = [MBError errorWithCode:22 format:@"Cloud backup is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v13 = [v7 description];
        _MBLog();
      }

      if (a3)
      {
        v10 = v7;
        *a3 = v7;
      }
    }

    v11 = 0;
  }

  else
  {
    v11 = v14;
  }

  return v11 & 1;
}

- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)a3
{
  v14 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowEnablingCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Enabling cloud backup" allowedOut:&v14 error:a3];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection isSettingLockedDownByRestrictions:MCFeatureCloudBackupAllowed])
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud backup enabling is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v13 = [v7 description];
        _MBLog();
      }

      if (a3)
      {
        v10 = v7;
        *a3 = v7;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = v14;
  }

  return v11 & 1;
}

- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)a3
{
  v14 = 1;
  v5 = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudAccountModification];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:v5 description:@"Cloud account modification" allowedOut:&v14 error:a3];

  if (v6)
  {
    if ([(MCProfileConnection *)self->_profileConnection effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed]== 2)
    {
      v7 = [MBError errorWithCode:22 format:@"Cloud account modification is disabled by MDM"];
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 description];
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

        v13 = [v7 description];
        _MBLog();
      }

      if (a3)
      {
        v10 = v7;
        *a3 = v7;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = v14;
  }

  return v11 & 1;
}

- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)a3
{
  v4 = [(MCProfileConnection *)self->_profileConnection isDiagnosticSubmissionAllowed];
  if ((v4 & 1) == 0)
  {
    v5 = [MBError errorWithCode:22 format:@"Diagnostic reporting is disabled by MDM"];
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 description];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "=managed-policy= %@", buf, 0xCu);

      v10 = [v5 description];
      _MBLog();
    }

    if (a3)
    {
      v8 = v5;
      *a3 = v5;
    }
  }

  return v4;
}

- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_1366C();
  }

  v7 = v6;
  if ([(MCProfileConnection *)self->_profileConnection isEphemeralMultiUser])
  {
    v8 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in EDU mode", v7];
  }

  else
  {
    v8 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && +[MDMConfiguration isRapidReturnToService])
  {
    v9 = [MBError errorWithCode:22 format:@"%@ is disabled for this device in RRTS mode", v7];

    v8 = v9;
  }

  if (v8)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 description];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

      v14 = [v8 description];
      _MBLog();
    }

    if (a4)
    {
      v12 = v8;
      *a4 = v8;
    }
  }

  return v8 == 0;
}

- (BOOL)_checkBehaviorOption:(id)a3 description:(id)a4 allowedOut:(BOOL *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    sub_136C4();
  }

  if (!a5)
  {
    sub_13698();
  }

  v11 = v10;
  if (v9)
  {
    if ([v9 BOOLValue])
    {
      *a5 = 1;
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "=managed-policy= %@ force allowed by behavior option", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      *a5 = 0;
      v12 = [MBError errorWithCode:555 format:@"%@ force disallowed by behavior option", v11];
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 description];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "=managed-policy= %@", buf, 0xCu);

        v17 = [v12 description];
        _MBLog();
      }

      if (a6)
      {
        v15 = v12;
        *a6 = v12;
      }
    }
  }

  return v9 == 0;
}

@end