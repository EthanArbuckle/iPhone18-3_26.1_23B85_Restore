@interface HDClinicalIngestionOperation
- (HDClinicalIngestionOperation)initWithTask:(id)a3 nextOperation:(id)a4;
- (HDHealthRecordsXPCServiceClient)healthRecordsServiceClient;
- (NSString)debugDescription;
- (void)main;
- (void)setOperationError:(id)a3;
@end

@implementation HDClinicalIngestionOperation

- (HDClinicalIngestionOperation)initWithTask:(id)a3 nextOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HDClinicalIngestionOperation;
  v9 = [(HDClinicalIngestionOperation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_task, a3);
    objc_storeStrong(&v10->_nextOperation, a4);
    v11 = [v7 profile];
    profile = v10->_profile;
    v10->_profile = v11;

    v13 = [v7 profileExtension];
    profileExtension = v10->_profileExtension;
    v10->_profileExtension = v13;

    [v8 addDependency:v10];
  }

  return v10;
}

- (void)setOperationError:(id)a3
{
  v4 = [a3 copy];
  operationError = self->_operationError;
  self->_operationError = v4;

  _objc_release_x1();
}

- (HDHealthRecordsXPCServiceClient)healthRecordsServiceClient
{
  v2 = [(HDClinicalIngestionOperation *)self task];
  v3 = [v2 healthRecordsServiceClient];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(HDClinicalIngestionTask *)self->_task taskIdentifier];
  v5 = [NSString stringWithFormat:@"%@ task:%@", v3, v4];

  return v5;
}

- (void)main
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end