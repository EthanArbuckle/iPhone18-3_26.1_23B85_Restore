@interface CNSharedProfileContactHandleHelper
+ (id)log;
- (BOOL)contact:(id)contact containsEmailHandleString:(id)string;
- (BOOL)contact:(id)contact containsHandleString:(id)string;
- (BOOL)contact:(id)contact containsPhoneHandleString:(id)string;
- (CNSharedProfileContactHandleHelper)init;
- (CNSharedProfileContactHandleHelper)initWithHandleStringClassifier:(id)classifier;
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

- (CNSharedProfileContactHandleHelper)initWithHandleStringClassifier:(id)classifier
{
  classifierCopy = classifier;
  v10.receiver = self;
  v10.super_class = CNSharedProfileContactHandleHelper;
  v6 = [(CNSharedProfileContactHandleHelper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classifier, classifier);
    v8 = v7;
  }

  return v7;
}

- (BOOL)contact:(id)contact containsHandleString:(id)string
{
  contactCopy = contact;
  stringCopy = string;
  if (![contactCopy isKeyAvailable:@"emailAddresses"] || (objc_msgSend(contactCopy, "isKeyAvailable:", @"phoneNumbers") & 1) == 0)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNSharedProfileContactHandleHelper contact:v8 containsHandleString:?];
    }
  }

  classifier = [(CNSharedProfileContactHandleHelper *)self classifier];
  v10 = [classifier typeOfHandleString:stringCopy];

  if (v10)
  {
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        v12 = 0;
        goto LABEL_15;
      }

      v11 = [(CNSharedProfileContactHandleHelper *)self contact:contactCopy containsEmailHandleString:stringCopy];
      goto LABEL_13;
    }

LABEL_12:
    v11 = [(CNSharedProfileContactHandleHelper *)self contact:contactCopy containsPhoneHandleString:stringCopy];
LABEL_13:
    v12 = v11;
    goto LABEL_15;
  }

  if (![(CNSharedProfileContactHandleHelper *)self contact:contactCopy containsEmailHandleString:stringCopy])
  {
    goto LABEL_12;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (BOOL)contact:(id)contact containsEmailHandleString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  emailAddresses = [contact emailAddresses];
  v7 = [emailAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        value = [*(*(&v16 + 1) + 8 * i) value];
        v13 = (*(v10 + 16))(v10, value);

        LOBYTE(value) = [v13 isEqualToString:stringCopy];
        if (value)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v8 = [emailAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)contact:(id)contact containsPhoneHandleString:(id)string
{
  v18 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  phoneNumbers = [contact phoneNumbers];
  v7 = [phoneNumbers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        value = [*(*(&v13 + 1) + 8 * i) value];
        unformattedInternationalStringValue = [value unformattedInternationalStringValue];

        LOBYTE(value) = [unformattedInternationalStringValue isEqualToString:stringCopy];
        if (value)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [phoneNumbers countByEnumeratingWithState:&v13 objects:v17 count:16];
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