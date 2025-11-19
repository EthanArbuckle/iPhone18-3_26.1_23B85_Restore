@interface ApplicationTester
- (ApplicationTester)initWithModel:(id)a3;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (Class)_testClassForTestName:(id)a3;
@end

@implementation ApplicationTester

- (ApplicationTester)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ApplicationTester;
  v6 = [(ApplicationTester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!self->_model)
  {
    sub_1001704CC(a2, self);
  }

  v12 = [(ApplicationTester *)self _testClassForTestName:v10];
  v13 = v12;
  if (v12)
  {
    byte_100251A38 = 1;
    v14 = [[v12 alloc] initWithApplication:v9 model:self->_model options:v11];
    currentlyRunningTest = self->_currentlyRunningTest;
    self->_currentlyRunningTest = v14;

    v16 = kCalUILogTestHandle;
    if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Running test: [%{public}@]", &v19, 0xCu);
    }

    [(ApplicationTest *)self->_currentlyRunningTest runTest];
  }

  else
  {
    v17 = kCalUILogTestHandle;
    if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find test class for test name: [%{public}@]. You may need to include this class in the collection returned from your [%{public}@]'s -testClasses method.", &v19, 0x16u);
    }
  }

  return v13 != 0;
}

- (Class)_testClassForTestName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v11 = kCalUILogTestHandle;
    if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v8 = "nil 'testName' provided.  Will not return a test class.";
      v9 = v11;
      v10 = 2;
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v5 = NSClassFromString(v3);
  v6 = objc_opt_class();
  if (([(objc_class *)v5 isSubclassOfClass:v6]& 1) == 0)
  {
    v7 = kCalUILogTestHandle;
    if (os_log_type_enabled(kCalUILogTestHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      v8 = "Will not provide test class since it is not a subclass of [%@].  Candidate class: [%@]";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v12 = v5;

  return v5;
}

@end