@interface EKObjectChangeOwnerIDHelper
@end

@implementation EKObjectChangeOwnerIDHelper

+ (void)createOwnerIDWithRowID:(int)a1 objectType:(NSObject *)a2 databaseID:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Invalid databaseID: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)createOwnerIDWithRowID:(uint64_t)a1 objectType:(NSObject *)a2 databaseID:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Invalid rowID passed in. rowID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)createOwnerIDWithRowID:(void *)a1 objectType:(uint64_t)a2 databaseID:.cold.3(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithInteger:a2];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "Invalid owner object type. Type: %@", &v7, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end