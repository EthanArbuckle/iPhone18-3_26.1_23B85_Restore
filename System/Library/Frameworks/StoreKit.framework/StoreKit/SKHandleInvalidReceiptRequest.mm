@interface SKHandleInvalidReceiptRequest
- (void)_start;
@end

@implementation SKHandleInvalidReceiptRequest

- (void)_start
{
  v3 = +[SKServiceBroker defaultBroker];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SKHandleInvalidReceiptRequest__start__block_invoke;
  v6[3] = &unk_1E7B278B0;
  v6[4] = self;
  v4 = [v3 storeKitSynchronousServiceWithErrorHandler:v6];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SKHandleInvalidReceiptRequest__start__block_invoke_35;
  v5[3] = &unk_1E7B27980;
  v5[4] = self;
  [v4 handleInvalidReceipt:v5];
}

void __39__SKHandleInvalidReceiptRequest__start__block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __39__SKHandleInvalidReceiptRequest__start__block_invoke_cold_1(a1, a2);
  }
}

void __39__SKHandleInvalidReceiptRequest__start__block_invoke_35(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = 138543362;
    v4 = v2;
    _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%{public}@: Terminated due to invalid receipt.", &v3, 0xCu);
  }
}

void __39__SKHandleInvalidReceiptRequest__start__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543618;
  v4 = v2;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%{public}@: Error in remote proxy while terminating for invalid receipt: %{public}@", &v3, 0x16u);
}

@end