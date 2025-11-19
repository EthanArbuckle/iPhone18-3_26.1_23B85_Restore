@interface CNContactListActionConfiguration
+ (id)log;
- (id)containerForContainerIdentifier:(id)a3;
@end

@implementation CNContactListActionConfiguration

+ (id)log
{
  if (log_cn_once_token_6_66562 != -1)
  {
    dispatch_once(&log_cn_once_token_6_66562, &__block_literal_global_66563);
  }

  v3 = log_cn_once_object_6_66564;

  return v3;
}

uint64_t __39__CNContactListActionConfiguration_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactListActionConfiguration");
  v1 = log_cn_once_object_6_66564;
  log_cn_once_object_6_66564 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)containerForContainerIdentifier:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = MEMORY[0x1E695CE48];
    v19[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v7 = [v5 predicateForContainersWithIdentifiers:v6];

    v8 = [(CNContactListActionConfiguration *)self contactStore];
    v14 = 0;
    v9 = [v8 containersMatchingPredicate:v7 error:&v14];
    v10 = v14;

    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v10;
        _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Error fetching container for container identifier:%@, error: %@", buf, 0x16u);
      }

      v12 = 0;
    }

    else
    {
      v12 = [v9 firstObject];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end