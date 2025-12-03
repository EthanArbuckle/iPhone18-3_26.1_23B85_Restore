@interface HDClinicalIngestionPerAccountOperation
- (HDClinicalIngestionPerAccountOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation;
- (id)debugDescription;
@end

@implementation HDClinicalIngestionPerAccountOperation

- (HDClinicalIngestionPerAccountOperation)initWithTask:(id)task account:(id)account nextOperation:(id)operation
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = HDClinicalIngestionPerAccountOperation;
  v9 = [(HDClinicalIngestionOperation *)&v13 initWithTask:task nextOperation:operation];
  if (v9)
  {
    v10 = [accountCopy copy];
    account = v9->_account;
    v9->_account = v10;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  task = [(HDClinicalIngestionOperation *)self task];
  taskIdentifier = [task taskIdentifier];
  identifier = [(HDClinicalAccount *)self->_account identifier];
  v7 = [NSString stringWithFormat:@"%@ task:%@ account:%@", v3, taskIdentifier, identifier];

  return v7;
}

@end