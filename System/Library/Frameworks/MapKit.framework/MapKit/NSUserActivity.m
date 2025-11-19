@interface NSUserActivity
@end

@implementation NSUserActivity

void __40__NSUserActivity_MKMapItem__setMapItem___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a3 dictionaryRepresentation];
  v13 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:200 options:0 error:&v13];
  v11 = v13;
  if (!v10)
  {
    v12 = MKGetMKDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "Failed to serialize map item: %{public}@", buf, 0xCu);
    }
  }

  (*(v8 + 2))(v8, v7, v10, 0, 0);
}

@end