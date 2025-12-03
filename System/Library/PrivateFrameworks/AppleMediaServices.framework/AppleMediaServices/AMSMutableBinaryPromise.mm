@interface AMSMutableBinaryPromise
+ (BOOL)cancelPromise:(id)promise;
+ (BOOL)finishPromise:(id)promise withError:(id)error;
+ (BOOL)finishPromise:(id)promise withPromise:(id)withPromise;
+ (BOOL)finishPromise:(id)promise withSuccess:(BOOL)success;
+ (BOOL)finishPromise:(id)promise withSuccess:(BOOL)success error:(id)error;
- (BOOL)cancel;
- (BOOL)finishWithPromise:(id)promise;
- (BOOL)finishWithSuccess:(BOOL)success error:(id)error;
@end

@implementation AMSMutableBinaryPromise

- (BOOL)cancel
{
  v3 = objc_opt_class();

  return [v3 cancelPromise:self];
}

- (BOOL)finishWithPromise:(id)promise
{
  promiseCopy = promise;
  LOBYTE(self) = [objc_opt_class() finishPromise:self withPromise:promiseCopy];

  return self;
}

- (BOOL)finishWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  LOBYTE(successCopy) = [objc_opt_class() finishPromise:self withSuccess:successCopy error:errorCopy];

  return successCopy;
}

+ (BOOL)cancelPromise:(id)promise
{
  promiseCopy = promise;
  backingPromise = [promiseCopy backingPromise];
  cancel = [backingPromise cancel];

  [promiseCopy stopRetainingSelf];
  return cancel;
}

+ (BOOL)finishPromise:(id)promise withError:(id)error
{
  errorCopy = error;
  promiseCopy = promise;
  backingPromise = [promiseCopy backingPromise];
  v8 = [backingPromise finishWithError:errorCopy];

  [promiseCopy stopRetainingSelf];
  return v8;
}

+ (BOOL)finishPromise:(id)promise withSuccess:(BOOL)success
{
  successCopy = success;
  promiseCopy = promise;
  backingPromise = [promiseCopy backingPromise];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
  v8 = [backingPromise finishWithResult:v7];

  [promiseCopy stopRetainingSelf];
  return v8;
}

+ (BOOL)finishPromise:(id)promise withPromise:(id)withPromise
{
  promiseCopy = promise;
  withPromiseCopy = withPromise;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AMSMutableBinaryPromise_finishPromise_withPromise___block_invoke;
  v10[3] = &unk_1E73B35D8;
  v12 = &v13;
  v7 = promiseCopy;
  v11 = v7;
  [withPromiseCopy addFinishBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __53__AMSMutableBinaryPromise_finishPromise_withPromise___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) finishWithSuccess:a2 error:a3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)finishPromise:(id)promise withSuccess:(BOOL)success error:(id)error
{
  v7 = MEMORY[0x1E695E118];
  if (!success)
  {
    v7 = 0;
  }

  v8 = v7;
  errorCopy = error;
  promiseCopy = promise;
  backingPromise = [promiseCopy backingPromise];
  v12 = [backingPromise finishWithResult:v8 error:errorCopy];

  [promiseCopy stopRetainingSelf];
  return v12;
}

@end