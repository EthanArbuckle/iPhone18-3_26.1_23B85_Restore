@interface VNAsyncStatus
- (VNAsyncStatus)initWithStatus:(BOOL)status error:(id)error;
- (id)description;
@end

@implementation VNAsyncStatus

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  completed = [(VNAsyncStatus *)self completed];
  error = [(VNAsyncStatus *)self error];
  v6 = [v3 initWithFormat:@"completed: %d: error: %@", completed, error];

  return v6;
}

- (VNAsyncStatus)initWithStatus:(BOOL)status error:(id)error
{
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = VNAsyncStatus;
  v8 = [(VNAsyncStatus *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_completed = status;
    objc_storeStrong(&v8->_error, error);
    v18 = 0;
    v10 = [VNValidationUtilities validateAsyncStatusState:v9 error:&v18];
    v11 = v18;
    v12 = v11;
    if (!v10)
    {
      v13 = MEMORY[0x1E696AEC0];
      localizedDescription = [v11 localizedDescription];
      v15 = [v13 stringWithFormat:@"Invalid async state - %@", localizedDescription];
      [VNError VNAssert:0 log:v15];
    }

    v16 = v9;
  }

  return v9;
}

@end