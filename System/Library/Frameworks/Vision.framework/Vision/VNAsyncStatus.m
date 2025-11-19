@interface VNAsyncStatus
- (VNAsyncStatus)initWithStatus:(BOOL)a3 error:(id)a4;
- (id)description;
@end

@implementation VNAsyncStatus

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(VNAsyncStatus *)self completed];
  v5 = [(VNAsyncStatus *)self error];
  v6 = [v3 initWithFormat:@"completed: %d: error: %@", v4, v5];

  return v6;
}

- (VNAsyncStatus)initWithStatus:(BOOL)a3 error:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VNAsyncStatus;
  v8 = [(VNAsyncStatus *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_completed = a3;
    objc_storeStrong(&v8->_error, a4);
    v18 = 0;
    v10 = [VNValidationUtilities validateAsyncStatusState:v9 error:&v18];
    v11 = v18;
    v12 = v11;
    if (!v10)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [v11 localizedDescription];
      v15 = [v13 stringWithFormat:@"Invalid async state - %@", v14];
      [VNError VNAssert:0 log:v15];
    }

    v16 = v9;
  }

  return v9;
}

@end