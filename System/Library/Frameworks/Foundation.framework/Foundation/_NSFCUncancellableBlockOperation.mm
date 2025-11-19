@interface _NSFCUncancellableBlockOperation
- (void)cancel;
@end

@implementation _NSFCUncancellableBlockOperation

- (void)cancel
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  v2 = qword_1ED4400F8;
  if (os_log_type_enabled(qword_1ED4400F8, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_INFO, "Refusing to cancel a File Coordination-originating operation", v3, 2u);
  }
}

@end