@interface AMSMutableBinaryPromise
+ (BOOL)cancelPromise:(id)a3;
+ (BOOL)finishPromise:(id)a3 withError:(id)a4;
+ (BOOL)finishPromise:(id)a3 withPromise:(id)a4;
+ (BOOL)finishPromise:(id)a3 withSuccess:(BOOL)a4;
+ (BOOL)finishPromise:(id)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (BOOL)cancel;
- (BOOL)finishWithPromise:(id)a3;
- (BOOL)finishWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation AMSMutableBinaryPromise

- (BOOL)cancel
{
  v3 = objc_opt_class();

  return [v3 cancelPromise:self];
}

- (BOOL)finishWithPromise:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() finishPromise:self withPromise:v4];

  return self;
}

- (BOOL)finishWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  LOBYTE(v4) = [objc_opt_class() finishPromise:self withSuccess:v4 error:v6];

  return v4;
}

+ (BOOL)cancelPromise:(id)a3
{
  v3 = a3;
  v4 = [v3 backingPromise];
  v5 = [v4 cancel];

  [v3 stopRetainingSelf];
  return v5;
}

+ (BOOL)finishPromise:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 backingPromise];
  v8 = [v7 finishWithError:v5];

  [v6 stopRetainingSelf];
  return v8;
}

+ (BOOL)finishPromise:(id)a3 withSuccess:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 backingPromise];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v8 = [v6 finishWithResult:v7];

  [v5 stopRetainingSelf];
  return v8;
}

+ (BOOL)finishPromise:(id)a3 withPromise:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AMSMutableBinaryPromise_finishPromise_withPromise___block_invoke;
  v10[3] = &unk_1E73B35D8;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 addFinishBlock:v10];
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

+ (BOOL)finishPromise:(id)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v7 = MEMORY[0x1E695E118];
  if (!a4)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = a5;
  v10 = a3;
  v11 = [v10 backingPromise];
  v12 = [v11 finishWithResult:v8 error:v9];

  [v10 stopRetainingSelf];
  return v12;
}

@end