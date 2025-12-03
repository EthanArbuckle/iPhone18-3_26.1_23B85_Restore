@interface HDMedicationsDiagnosticOperation
- (HDMedicationsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (void)run;
@end

@implementation HDMedicationsDiagnosticOperation

- (HDMedicationsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  v11.receiver = self;
  v11.super_class = HDMedicationsDiagnosticOperation;
  v3 = [(HDMedicationsDiagnosticOperation *)&v11 initWithAttachmentDirectoryURL:l];
  if (v3)
  {
    v4 = objc_alloc_init(HKHealthStore);
    healthStore = v3->_healthStore;
    v3->_healthStore = v4;

    v6 = HKCreateConcurrentDispatchQueue();
    concurrentQueue = v3->_concurrentQueue;
    v3->_concurrentQueue = v6;

    v8 = dispatch_group_create();
    dispatchGroup = v3->_dispatchGroup;
    v3->_dispatchGroup = v8;
  }

  return v3;
}

- (void)run
{
  [(HDMedicationsDiagnosticOperation *)self log:@"Fetching medications diagnostic information...\n"];
  if (self)
  {
    sub_1AF8(self);
    sub_1C90(self);
  }

  dispatchGroup = self->_dispatchGroup;
  v4 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(dispatchGroup, v4))
  {

    sub_1A30(self, @"Timed out attempting to get medication information");
  }

  else
  {

    sub_1A98(self);
  }
}

@end