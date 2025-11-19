@interface CNErrorFactory(iOSAB)
@end

@implementation CNErrorFactory(iOSAB)

+ (void)errorForiOSABError:()iOSAB .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138543618;
  v6 = ABLogErrorPtr();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "errorForiOSABError:\niOSABError = %{public}@ \nCNError = %{public}@ backtrace:", &v5, 0x16u);
}

@end