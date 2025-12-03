@interface AMSCookieDatabaseSchema
+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error;
+ (BOOL)migrateVersion0to1WithMigration:(id)migration error:(id *)error;
+ (void)_sendAutoBugCaptureReportWithSubtypeContext:(id)context;
@end

@implementation AMSCookieDatabaseSchema

+ (BOOL)createOrUpdateSchemaUsingConnection:(id)connection error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = AMSSetLogKeyIfNeeded();
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__19;
  v35 = __Block_byref_object_dispose__19;
  v36 = 0;
  v8 = [[AMSSQLiteSchema alloc] initWithConnection:connectionCopy];
  currentUserVersion = [(AMSSQLiteSchema *)v8 currentUserVersion];
  v10 = v30;
  while (1)
  {
    if (currentUserVersion > 0)
    {
      goto LABEL_22;
    }

    if (!currentUserVersion)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v30[0] = __69__AMSCookieDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke;
      v30[1] = &unk_1E73B61A8;
      v30[2] = &v31;
      v30[3] = self;
      if (![(AMSSQLiteSchema *)v8 migrateToVersion:1 usingBlock:v29 error:0])
      {
        break;
      }
    }

    currentUserVersion2 = [(AMSSQLiteSchema *)v8 currentUserVersion];
    v12 = currentUserVersion2 == currentUserVersion;
    currentUserVersion = currentUserVersion2;
    if (v12)
    {
      v13 = +[AMSLogConfig sharedAccountsCookiesConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = AMSLogKey();
        v16 = MEMORY[0x1E696AEC0];
        if (v15)
        {
          v17 = objc_opt_class();
          v10 = AMSLogKey();
          [v16 stringWithFormat:@"%@: [%@] ", v17, v10];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
        }
        v18 = ;
        *buf = 138543362;
        v38 = v18;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to update AMS cookie database schema. User version did not change.", buf, 0xCu);
        if (v15)
        {

          v18 = v10;
        }
      }

      [self _sendAutoBugCaptureReportWithSubtypeContext:@"User version did not change after updating the cookie database schema"];
LABEL_22:
      v26 = 1;
      goto LABEL_23;
    }
  }

  v19 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v21 = AMSLogKey();
    v22 = MEMORY[0x1E696AEC0];
    if (v21)
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      v25 = [v22 stringWithFormat:@"%@: [%@] ", v23, v24];
    }

    else
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", objc_opt_class()];
      v24 = v25;
    }

    v28 = AMSLogableError(v32[5]);
    *buf = 138543618;
    v38 = v25;
    v39 = 2114;
    v40 = v28;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Failed to update AMS cookie database schema. error = %{public}@", buf, 0x16u);
    if (v21)
    {
    }
  }

  if (error)
  {
    *error = v32[5];
  }

  [self _sendAutoBugCaptureReportWithSubtypeContext:@"Error during create or update cookie schema"];
  v26 = 0;
LABEL_23:

  _Block_object_dispose(&v31, 8);
  return v26;
}

void __69__AMSCookieDatabaseSchema_createOrUpdateSchemaUsingConnection_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  obj = *(v5 + 40);
  v6 = [v4 migrateVersion0to1WithMigration:a2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if ((v6 & 1) == 0)
  {
    v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        v2 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, v2];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v14 = AMSLogableError(*(*(*(a1 + 32) + 8) + 40));
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error migrating cookie database from version 0 to 1. error = %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = v2;
      }
    }
  }
}

+ (BOOL)migrateVersion0to1WithMigration:(id)migration error:(id *)error
{
  migrationCopy = migration;
  if ([migrationCopy executeStatement:@"PRAGMA auto_vacuum = 2;" error:error])
  {
    v6 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"CREATE TABLE cookies (");
    v7 = [&unk_1F0779BC8 ams_mapWithTransformIgnoresNil:&__block_literal_global_33];
    v8 = [&unk_1F0779BC8 ams_filterUsingTest:&__block_literal_global_104];
    v9 = [v8 ams_mapWithTransformIgnoresNil:&__block_literal_global_106];

    v10 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"PRIMARY KEY(");
    v11 = [v9 componentsJoinedByString:{@", "}];
    [v10 appendString:v11];

    [v10 appendString:@""]);
    v12 = [v7 arrayByAddingObject:v10];

    v13 = [v12 componentsJoinedByString:{@", "}];
    [v6 appendString:v13];

    [v6 appendString:@";"]);
    v14 = [v6 copy];
    v15 = [migrationCopy executeStatement:v14 error:error];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __65__AMSCookieDatabaseSchema_migrateVersion0to1WithMigration_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];
  if (v2 == 14)
  {
    v3 = 0;
  }

  else
  {
    v4 = v2;
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = AMSNameForAMSCookieDatabaseColumn(v4);
    [v5 appendString:v6];

    [v5 appendString:@" "];
    if (v4 >= 0xE)
    {
      v7 = 0;
    }

    else
    {
      v7 = @"TEXT";
    }

    [v5 appendString:v7];
    if (v4 <= 8 && ((1 << v4) & 0x148) != 0)
    {
      [v5 appendString:@" NOT NULL"];
    }

    v3 = [v5 copy];
  }

  return v3;
}

__CFString *__65__AMSCookieDatabaseSchema_migrateVersion0to1WithMigration_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];

  return AMSNameForAMSCookieDatabaseColumn(v2);
}

+ (void)_sendAutoBugCaptureReportWithSubtypeContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v3 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = AMSHashIfNeeded(contextCopy);
    *buf = 138543618;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Sending Auto Bug Capture report for subtype context: %{public}@.", buf, 0x16u);
    if (v8)
    {

      v12 = v3;
    }
  }

  v14 = [AMSAutoBugCaptureReport alloc];
  v15 = +[AMSProcessInfo currentProcess];
  bundleIdentifier = [v15 bundleIdentifier];
  v17 = [(AMSAutoBugCaptureReport *)v14 initWithDomain:@"AppleMediaServices" type:@"AMSCookieDatabaseSchema" subtype:@"Failure" subtypeContext:contextCopy process:bundleIdentifier thresholdValues:0];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__AMSCookieDatabaseSchema__sendAutoBugCaptureReportWithSubtypeContext___block_invoke;
  v18[3] = &__block_descriptor_40_e53_v24__0__AMSAutoBugCaptureReportResponse_8__NSError_16l;
  v18[4] = self;
  [(AMSAutoBugCaptureReport *)v17 captureWithDelay:0 events:0 payload:0 actions:v18 completionHandler:0.0];
}

void __71__AMSCookieDatabaseSchema__sendAutoBugCaptureReportWithSubtypeContext___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        a1 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, a1];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v18 = AMSLogableError(v4);
      *buf = 138543618;
      v20 = v12;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to send Auto Bug Capture report: %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = a1;
      }
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        a1 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, a1];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully sent Auto Bug Capture report.", buf, 0xCu);
      if (v13)
      {

        v17 = a1;
      }
    }
  }
}

@end