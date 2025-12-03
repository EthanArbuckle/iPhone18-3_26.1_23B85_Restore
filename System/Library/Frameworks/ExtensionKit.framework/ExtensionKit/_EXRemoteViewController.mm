@interface _EXRemoteViewController
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _EXRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v4 = _EXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_EXRemoteViewController *)errorCopy viewServiceDidTerminateWithError:v4];
  }
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1D29CC000, a2, OS_LOG_TYPE_ERROR, "VS terminated with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end