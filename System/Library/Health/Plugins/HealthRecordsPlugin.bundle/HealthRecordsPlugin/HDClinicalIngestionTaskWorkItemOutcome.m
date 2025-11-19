@interface HDClinicalIngestionTaskWorkItemOutcome
+ (HDClinicalIngestionTaskWorkItemOutcome)new;
- (HDClinicalIngestionTaskWorkItemOutcome)init;
- (HDClinicalIngestionTaskWorkItemOutcome)initWithFetchSuccess:(BOOL)a3 saveableResources:(id)a4 followUpWorkItems:(id)a5;
@end

@implementation HDClinicalIngestionTaskWorkItemOutcome

+ (HDClinicalIngestionTaskWorkItemOutcome)new
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v2, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskWorkItemOutcome)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalIngestionTaskWorkItemOutcome)initWithFetchSuccess:(BOOL)a3 saveableResources:(id)a4 followUpWorkItems:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HDClinicalIngestionTaskWorkItemOutcome;
  v10 = [(HDClinicalIngestionTaskWorkItemOutcome *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_fetchSuccess = a3;
    v12 = [v8 copy];
    saveableResources = v11->_saveableResources;
    v11->_saveableResources = v12;

    v14 = [v9 copy];
    followUpWorkItems = v11->_followUpWorkItems;
    v11->_followUpWorkItems = v14;
  }

  return v11;
}

@end