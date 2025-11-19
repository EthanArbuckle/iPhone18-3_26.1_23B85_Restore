@interface TKTokenKeychainItem
+ (NSDictionary)operationMap;
+ (TKTokenKeychainItem)keychainItemWithInfo:(id)a3;
+ (id)accessControlForConstraints:(id)a3 tokenID:(id)a4 error:(id *)a5;
- (NSData)accessControl;
- (NSMutableDictionary)keychainAttributes;
- (TKTokenKeychainItem)initWithItemInfo:(id)a3;
- (TKTokenKeychainItem)initWithObjectID:(TKTokenObjectID)objectID;
- (id)description;
- (void)setAccessControl:(id)a3;
@end

@implementation TKTokenKeychainItem

- (TKTokenKeychainItem)initWithObjectID:(TKTokenObjectID)objectID
{
  v5 = objectID;
  v9.receiver = self;
  v9.super_class = TKTokenKeychainItem;
  v6 = [(TKTokenKeychainItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectID, objectID);
  }

  return v7;
}

- (id)description
{
  v3 = [(TKTokenKeychainItem *)self objectID];
  v4 = [v3 description];

  if ([v4 length] >= 0x21)
  {
    v5 = [v4 substringToIndex:32];
    v6 = [v5 stringByAppendingString:@"..."];

    v4 = v6;
  }

  v7 = [(TKTokenKeychainItem *)self label];

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = v10;
  if (v7)
  {
    v12 = [(TKTokenKeychainItem *)self label];
    v13 = [v8 stringWithFormat:@"<%@: %@ '%@'>", v11, v4, v12];
  }

  else
  {
    v13 = [v8 stringWithFormat:@"<%@: %@>", v10, v4];
  }

  return v13;
}

+ (NSDictionary)operationMap
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = @"ord";
  v5[1] = @"osgn";
  v6[0] = &unk_1F5A85150;
  v6[1] = &unk_1F5A85168;
  v5[2] = @"od";
  v5[3] = @"ock";
  v6[2] = &unk_1F5A85180;
  v6[3] = &unk_1F5A85198;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)accessControlForConstraints:(id)a3 tokenID:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *MEMORY[0x1E695E480];
  v10 = SecAccessControlCreate();
  if (v10)
  {
    v22 = @"tkid";
    v11 = [v8 stringRepresentation];
    v23[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    if (SecAccessControlSetProtection())
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
      v14 = [a1 operationMap];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __65__TKTokenKeychainItem_accessControlForConstraints_tokenID_error___block_invoke;
      v19[3] = &unk_1E86B7DF8;
      v20 = v7;
      v21 = v13;
      v15 = v13;
      [v14 enumerateKeysAndObjectsUsingBlock:v19];

      SecAccessControlSetConstraints();
      v16 = SecAccessControlCopyData();
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __65__TKTokenKeychainItem_accessControlForConstraints_tokenID_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a3];
  v6 = v5;
  if (v5 && ([v5 isEqual:MEMORY[0x1E695E110]] & 1) == 0)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)setAccessControl:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_accessControl, a3);
  if (v5)
  {
    v35 = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = SecAccessControlCreateFromData();
    if (v7)
    {
      v8 = SecAccessControlGetProtection();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"tkid"];
        v10 = [(TKTokenKeychainItem *)self tokenID];
        v11 = [v10 stringRepresentation];
        v12 = [v9 isEqual:v11];

        if (v12)
        {
          v13 = SecAccessControlGetConstraints();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v8;
            v30 = v7;
            v14 = [MEMORY[0x1E695E0F8] mutableCopy];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v28 = v13;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v32;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v32 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v31 + 1) + 8 * i);
                  v21 = [objc_opt_class() operationMap];
                  v22 = [v21 objectForKeyedSubscript:v20];

                  if (v22)
                  {
                    v23 = [v15 objectForKeyedSubscript:v20];
                    [v14 setObject:v23 forKeyedSubscript:v22];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
              }

              while (v17);
            }

            v24 = [v14 copy];
            constraints = self->_constraints;
            self->_constraints = v24;

            v8 = v29;
            v7 = v30;
            v13 = v28;
          }
        }
      }
    }

    else
    {
      v8 = TK_LOG_token_2();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(TKTokenKeychainItem *)&v35 setAccessControl:v5, v8];
      }
    }

    v26 = v35;
  }

  else
  {
    v26 = self->_constraints;
    self->_constraints = MEMORY[0x1E695E0F8];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (NSData)accessControl
{
  accessControl = self->_accessControl;
  if (!accessControl)
  {
    v4 = [(TKTokenKeychainItem *)self constraints];
    if (v4)
    {
      v5 = [(TKTokenKeychainItem *)self tokenID];

      if (v5)
      {
        v6 = objc_opt_class();
        v7 = [(TKTokenKeychainItem *)self tokenID];
        v8 = [v6 accessControlForConstraints:v4 tokenID:v7 error:0];
        v9 = self->_accessControl;
        self->_accessControl = v8;
      }
    }

    accessControl = self->_accessControl;
  }

  return accessControl;
}

- (NSMutableDictionary)keychainAttributes
{
  v16[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v15[0] = *MEMORY[0x1E697AEC8];
  v4 = [(TKTokenKeychainItem *)self tokenID];
  v5 = [v4 stringRepresentation];
  v16[0] = v5;
  v15[1] = *MEMORY[0x1E697AEE8];
  v6 = [(TKTokenKeychainItem *)self encodedObjectID];
  v15[2] = *MEMORY[0x1E697ABD8];
  v7 = *MEMORY[0x1E697ABF8];
  v16[1] = v6;
  v16[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v9 = [v3 dictionaryWithDictionary:v8];

  v10 = [(TKTokenKeychainItem *)self label];

  if (v10)
  {
    v11 = [(TKTokenKeychainItem *)self label];
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
  }

  v12 = [(TKTokenKeychainItem *)self accessControl];
  if (v12)
  {
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E697ABC8]];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (TKTokenKeychainItem)initWithItemInfo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [TKTokenID alloc];
  v6 = *MEMORY[0x1E697AEC8];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AEC8]];
  v8 = [(TKTokenID *)v5 initWithTokenID:v7];

  if (v8)
  {
    v24 = 0;
    v9 = *MEMORY[0x1E697AEE8];
    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697AEE8]];
    v23 = 0;
    v11 = [(TKTokenID *)v8 decodedObjectID:v10 isCertificate:&v24 error:&v23];
    v12 = v23;

    if (v11)
    {
      v22.receiver = self;
      v22.super_class = TKTokenKeychainItem;
      v13 = [(TKTokenKeychainItem *)&v22 init];
      v14 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_objectID, v11);
        [(TKTokenKeychainItem *)v14 setTokenID:v8];
        v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [(TKTokenKeychainItem *)v14 setLabel:v15];

        v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
        [(TKTokenKeychainItem *)v14 setAccessControl:v16];
      }

      self = v14;
      v17 = self;
    }

    else
    {
      v18 = TK_LOG_token_2();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = [v4 objectForKeyedSubscript:v9];
        *buf = 138543618;
        v26 = v21;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_1DF413000, v18, OS_LOG_TYPE_ERROR, "Failed to recreate TKTokenKeychainItem from attributes: invalid kSecAttrTokenOID: %{public}@, error:%{public}@", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v12 = TK_LOG_token_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TKTokenKeychainItem *)v4 initWithItemInfo:v6];
    }

    v17 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (TKTokenKeychainItem)keychainItemWithInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E697AFF8]];
  if ([v4 isEqual:*MEMORY[0x1E697B000]])
  {
    v5 = off_1E86B6928;
LABEL_5:
    v6 = [objc_alloc(*v5) initWithItemInfo:v3];
    goto LABEL_7;
  }

  if ([v4 isEqual:*MEMORY[0x1E697B020]])
  {
    v5 = off_1E86B6940;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)setAccessControl:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_1DF413000, log, OS_LOG_TYPE_ERROR, "TKTokenKeychainItem got invalid accessControl, error:%{public}@ data:%{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithItemInfo:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end