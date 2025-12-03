@interface MBManagedPolicy
+ (MBManagedPolicy)sharedPolicy;
- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error;
- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error;
- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed;
- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed;
- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed;
- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed;
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

- (BOOL)checkIfDriveBackupIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveBackup description:@"Drive backup" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive backup" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfDriveRestoreIsAllowed:(id *)allowed
{
  v8 = 1;
  allowDriveRestore = [(MBBehaviorOptions *)self->_behaviorOptions allowDriveRestore];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowDriveRestore description:@"Drive restore" allowedOut:&v8 error:allowed];

  if (v6)
  {
    [(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Drive restore" error:allowed];
  }

  return v8;
}

- (BOOL)checkIfCloudBackupIsAllowed:(id *)allowed
{
  v14 = 1;
  allowCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudBackup description:@"Cloud backup" allowedOut:&v14 error:allowed];

  if (v6)
  {
    if ([(MBManagedPolicy *)self _checkIfAnyBackupOrRestoreIsAllowed:@"Cloud backup" error:allowed])
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

      if (allowed)
      {
        v10 = v7;
        *allowed = v7;
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

- (BOOL)checkIfEnablingCloudBackupIsAllowed:(id *)allowed
{
  v14 = 1;
  allowEnablingCloudBackup = [(MBBehaviorOptions *)self->_behaviorOptions allowEnablingCloudBackup];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowEnablingCloudBackup description:@"Enabling cloud backup" allowedOut:&v14 error:allowed];

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

      if (allowed)
      {
        v10 = v7;
        *allowed = v7;
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

- (BOOL)checkIfCloudAccountModificationIsAllowed:(id *)allowed
{
  v14 = 1;
  allowCloudAccountModification = [(MBBehaviorOptions *)self->_behaviorOptions allowCloudAccountModification];
  v6 = [(MBManagedPolicy *)self _checkBehaviorOption:allowCloudAccountModification description:@"Cloud account modification" allowedOut:&v14 error:allowed];

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

      if (allowed)
      {
        v10 = v7;
        *allowed = v7;
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

- (BOOL)checkIfDiagnosticTelemetryIsAllowed:(id *)allowed
{
  isDiagnosticSubmissionAllowed = [(MCProfileConnection *)self->_profileConnection isDiagnosticSubmissionAllowed];
  if ((isDiagnosticSubmissionAllowed & 1) == 0)
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

    if (allowed)
    {
      v8 = v5;
      *allowed = v5;
    }
  }

  return isDiagnosticSubmissionAllowed;
}

- (BOOL)_checkIfAnyBackupOrRestoreIsAllowed:(id)allowed error:(id *)error
{
  allowedCopy = allowed;
  if (!allowedCopy)
  {
    sub_1366C();
  }

  v7 = allowedCopy;
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

    if (error)
    {
      v12 = v8;
      *error = v8;
    }
  }

  return v8 == 0;
}

- (BOOL)_checkBehaviorOption:(id)option description:(id)description allowedOut:(BOOL *)out error:(id *)error
{
  optionCopy = option;
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    sub_136C4();
  }

  if (!out)
  {
    sub_13698();
  }

  v11 = descriptionCopy;
  if (optionCopy)
  {
    if ([optionCopy BOOLValue])
    {
      *out = 1;
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
      *out = 0;
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

      if (error)
      {
        v15 = v12;
        *error = v12;
      }
    }
  }

  return optionCopy == 0;
}

@end