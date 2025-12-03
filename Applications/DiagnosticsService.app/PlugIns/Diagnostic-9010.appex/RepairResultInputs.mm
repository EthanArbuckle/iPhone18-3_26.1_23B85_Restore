@interface RepairResultInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation RepairResultInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v23 = 0;
  v5 = [parametersCopy NSNumberFromKey:@"testStatusCode" lowerBound:&off_100008890 upperBound:&off_1000088A8 defaultValue:&off_1000088C0 failed:&v23];
  testStatusCode = self->testStatusCode;
  self->testStatusCode = v5;

  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->testStatusCode;
    if (v23)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "testStatusCode : %@ validationFailed: %@", buf, 0x16u);
  }

  v10 = [parametersCopy NSNumberFromKey:@"testIdentifier" lowerBound:&off_100008890 upperBound:&off_1000088A8 defaultValue:&off_1000088D8 failed:&v23];
  testIdentifier = self->testIdentifier;
  self->testIdentifier = v10;

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->testIdentifier;
    if (v23)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *buf = 138412546;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "testIdentifier: %@ validationFailed: %@", buf, 0x16u);
  }

  v15 = [NSSet setWithObject:objc_opt_class()];
  v16 = [parametersCopy NSArrayFromKey:@"removedPartSPC" types:v15 maxLength:256 defaultValue:0 failed:&v23];
  removedPartSPC = self->removedPartSPC;
  self->removedPartSPC = v16;

  v18 = handleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->removedPartSPC;
    if (v23)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    *buf = 138412546;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "removedPartSPC: %@ validationFailed: %@", buf, 0x16u);
  }

  v21 = v23;
  return (v21 & 1) == 0;
}

@end