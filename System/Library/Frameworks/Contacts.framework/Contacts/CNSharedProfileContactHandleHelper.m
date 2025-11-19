@interface CNSharedProfileContactHandleHelper
+ (id)log;
- (BOOL)contact:(id)a3 containsEmailHandleString:(id)a4;
- (BOOL)contact:(id)a3 containsHandleString:(id)a4;
- (BOOL)contact:(id)a3 containsPhoneHandleString:(id)a4;
- (CNSharedProfileContactHandleHelper)init;
- (CNSharedProfileContactHandleHelper)initWithHandleStringClassifier:(id)a3;
@end

@implementation CNSharedProfileContactHandleHelper

+ (id)log
{
  if (log_cn_once_token_0_15 != -1)
  {
    +[CNSharedProfileContactHandleHelper log];
  }

  v3 = log_cn_once_object_0_15;

  return v3;
}

uint64_t __41__CNSharedProfileContactHandleHelper_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSharedProfileContactHandleHelper");
  v1 = log_cn_once_object_0_15;
  log_cn_once_object_0_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSharedProfileContactHandleHelper)init
{
  v5.receiver = self;
  v5.super_class = CNSharedProfileContactHandleHelper;
  v2 = [(CNSharedProfileContactHandleHelper *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6996728]) initWithClassificationQuality:0];
    v2 = [(CNSharedProfileContactHandleHelper *)v2 initWithHandleStringClassifier:v3];
  }

  return v2;
}

- (CNSharedProfileContactHandleHelper)initWithHandleStringClassifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNSharedProfileContactHandleHelper;
  v6 = [(CNSharedProfileContactHandleHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classifier, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)contact:(id)a3 containsHandleString:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 isKeyAvailable:@"emailAddresses"] || (objc_msgSend(v6, "isKeyAvailable:", @"phoneNumbers") & 1) == 0)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNSharedProfileContactHandleHelper contact:v8 containsHandleString:?];
    }
  }

  v9 = [(CNSharedProfileContactHandleHelper *)self classifier];
  v10 = [v9 typeOfHandleString:v7];

  if (v10)
  {
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v11 = [(CNSharedProfileContactHandleHelper *)self contact:v6 containsEmailHandleString:v7];
      goto LABEL_13;
    }

LABEL_12:
    v11 = [(CNSharedProfileContactHandleHelper *)self contact:v6 containsPhoneHandleString:v7];
LABEL_13:
    v12 = v11;
    goto LABEL_15;
  }

  if (![(CNSharedProfileContactHandleHelper *)self contact:v6 containsEmailHandleString:v7])
  {
    goto LABEL_12;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (BOOL)contact:(id)a3 containsEmailHandleString:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [a3 emailAddresses];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x1E69964B0];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) value];
        v13 = (*(v10 + 16))(v10, v12);

        LOBYTE(v12) = [v13 isEqualToString:v5];
        if (v12)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)contact:(id)a3 containsPhoneHandleString:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 phoneNumbers];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) value];
        v11 = [v10 unformattedInternationalStringValue];

        LOBYTE(v10) = [v11 isEqualToString:v5];
        if (v10)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end