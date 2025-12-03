@interface HDClinicalIngestionOperation
- (HDClinicalIngestionOperation)initWithTask:(id)task nextOperation:(id)operation;
- (HDHealthRecordsXPCServiceClient)healthRecordsServiceClient;
- (NSString)debugDescription;
- (void)main;
- (void)setOperationError:(id)error;
@end

@implementation HDClinicalIngestionOperation

- (HDClinicalIngestionOperation)initWithTask:(id)task nextOperation:(id)operation
{
  taskCopy = task;
  operationCopy = operation;
  v16.receiver = self;
  v16.super_class = HDClinicalIngestionOperation;
  v9 = [(HDClinicalIngestionOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, task);
    objc_storeStrong(&v10->_nextOperation, operation);
    profile = [taskCopy profile];
    profile = v10->_profile;
    v10->_profile = profile;

    profileExtension = [taskCopy profileExtension];
    profileExtension = v10->_profileExtension;
    v10->_profileExtension = profileExtension;

    [operationCopy addDependency:v10];
  }

  return v10;
}

- (void)setOperationError:(id)error
{
  v4 = [error copy];
  operationError = self->_operationError;
  self->_operationError = v4;

  _objc_release_x1();
}

- (HDHealthRecordsXPCServiceClient)healthRecordsServiceClient
{
  task = [(HDClinicalIngestionOperation *)self task];
  healthRecordsServiceClient = [task healthRecordsServiceClient];

  return healthRecordsServiceClient;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  taskIdentifier = [(HDClinicalIngestionTask *)self->_task taskIdentifier];
  v5 = [NSString stringWithFormat:@"%@ task:%@", v3, taskIdentifier];

  return v5;
}

- (void)main
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end