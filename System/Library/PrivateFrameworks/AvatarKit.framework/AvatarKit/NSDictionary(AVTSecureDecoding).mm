@interface NSDictionary(AVTSecureDecoding)
- (id)avt_mutableContainersCopy;
- (id)avt_objectForKey:()AVTSecureDecoding ofClass:didFail:error:;
- (id)avt_objectForKey:()AVTSecureDecoding ofClasses:didFail:error:;
@end

@implementation NSDictionary(AVTSecureDecoding)

- (id)avt_objectForKey:()AVTSecureDecoding ofClass:didFail:error:
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [self objectForKeyedSubscript:v9];
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"Unexpected class %@ for key %@", v14, v9];

    v16 = avt_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_1BB472000, v16, OS_LOG_TYPE_DEFAULT, "Decoding error: %@", buf, 0xCu);
    }

    if (a6)
    {
      v17 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = v15;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a6 = [v17 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v18];
    }

    *a5 = 1;

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)avt_objectForKey:()AVTSecureDecoding ofClasses:didFail:error:
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [self objectForKeyedSubscript:v10];
  if (v12)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v25 = v12;
            goto LABEL_16;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v13 = [v19 stringWithFormat:@"Unexpected class %@ for key %@", v21, v10, v28];

    v22 = avt_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v13;
      _os_log_impl(&dword_1BB472000, v22, OS_LOG_TYPE_DEFAULT, "Decoding error: %@", buf, 0xCu);
    }

    if (a6)
    {
      v23 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33 = v13;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a6 = [v23 errorWithDomain:@"AVTErrorDomain" code:3 userInfo:v24];
    }

    v25 = 0;
    *a5 = 1;
LABEL_16:
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)avt_mutableContainersCopy
{
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(self, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__NSDictionary_AVTSecureDecoding__avt_mutableContainersCopy__block_invoke;
  v5[3] = &unk_1E7F48E68;
  v3 = v2;
  v6 = v3;
  [self enumerateKeysAndObjectsUsingBlock:v5];

  return v3;
}

@end