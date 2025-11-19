@interface CNContainerDataSource
+ (id)os_log;
- (CNContainerDataSource)initWithContactStore:(id)a3;
- (NSArray)containerPickerItems;
- (NSArray)containers;
- (id)allAccounts;
- (id)writableContainersForAccount:(id)a3;
- (void)discoverContainers;
@end

@implementation CNContainerDataSource

- (id)writableContainersForAccount:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695CE48];
  v6 = [v4 identifier];
  v7 = [v5 predicateForContainersInAccountWithIdentifier:v6];

  v8 = [(CNContainerDataSource *)self contactViewCache];
  v9 = [v8 contactStore];
  v18 = 0;
  v10 = [v9 containersMatchingPredicate:v7 error:&v18];
  v11 = v18;

  if (v11)
  {
    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 identifier];
      v16 = [v11 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "Error fetching containers in account %@: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v20 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__CNContainerDataSource_writableContainersForAccount___block_invoke;
    v17[3] = &unk_1E74E4E38;
    v17[4] = self;
    v17[5] = buf;
    v13 = [v10 _cn_filter:v17];
    _Block_object_dispose(buf, 8);
  }

  return v13;
}

uint64_t __54__CNContainerDataSource_writableContainersForAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled] && (objc_msgSend(v3, "type") != 2 || (objc_msgSend(*(a1 + 32), "ignoresExchangeContainers") & 1) == 0))
  {
    if ([v3 type] != 2)
    {
      v5 = 1;
      goto LABEL_9;
    }

    v4 = *(*(a1 + 40) + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      v5 = 1;
      *(v4 + 24) = 1;
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)allAccounts
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(CNContainerDataSource *)self contactViewCache];
  v3 = [v2 contactStore];
  v9 = 0;
  v4 = [v3 accountsMatchingPredicate:0 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 localizedDescription];
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Error fetching accounts: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)discoverContainers
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "Fetching containers", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(CNContainerDataSource *)self allAccounts];
  v7 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v6))
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Accounts fetch returned 0 items", buf, 2u);
    }

    goto LABEL_37;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v6;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = v9;
  v11 = *v54;
  v48 = v4;
  v42 = v7;
  v43 = *v54;
  do
  {
    v12 = 0;
    v44 = v10;
    do
    {
      if (*v54 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v53 + 1) + 8 * v12);
      v14 = [(CNContainerDataSource *)self writableContainersForAccount:v13];
      if (((*(v7 + 16))(v7, v14) & 1) == 0)
      {
        v46 = v12;
        v47 = v14;
        v15 = [v14 count];
        v16 = [objc_opt_class() os_log];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (v15 < 2)
        {
          if (v17)
          {
            v35 = [v13 identifier];
            *buf = 138412290;
            v58 = v35;
            _os_log_debug_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEBUG, "Account %@ has only 1 container", buf, 0xCu);
          }

          v18 = [v14 firstObject];
          v30 = [v13 _cnui_displayName];
          v31 = objc_alloc_init(CNContainerPickerItem);
          [(CNContainerPickerItem *)v31 setName:v30];
          v32 = [v18 identifier];
          [(CNContainerPickerItem *)v31 setIdentifier:v32];

          -[CNContainerPickerItem setType:](v31, "setType:", [v18 type]);
          [v5 addObject:v31];
          [v4 addObject:v18];
          v33 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v18 identifier];
            *buf = 138412546;
            v58 = v36;
            v59 = 2112;
            v60 = v30;
            _os_log_debug_impl(&dword_199A75000, v33, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

            v4 = v48;
          }

LABEL_30:
          v11 = v43;
        }

        else
        {
          if (v17)
          {
            v34 = [v13 identifier];
            *buf = 138412290;
            v58 = v34;
            _os_log_debug_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEBUG, "Account %@ has more than 1 container", buf, 0xCu);
          }

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v18 = v14;
          v19 = [v18 countByEnumeratingWithState:&v49 objects:v61 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v50;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v49 + 1) + 8 * i);
                v24 = objc_alloc_init(CNContainerPickerItem);
                v25 = [v23 name];
                [(CNContainerPickerItem *)v24 setName:v25];

                v26 = [v23 identifier];
                [(CNContainerPickerItem *)v24 setIdentifier:v26];

                -[CNContainerPickerItem setType:](v24, "setType:", [v23 type]);
                [v5 addObject:v24];
                [v4 addObject:v23];
                v27 = [objc_opt_class() os_log];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  v28 = [v23 identifier];
                  v29 = [v23 name];
                  *buf = 138412546;
                  v58 = v28;
                  v59 = 2112;
                  v60 = v29;
                  _os_log_debug_impl(&dword_199A75000, v27, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

                  v4 = v48;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v49 objects:v61 count:16];
            }

            while (v20);
            v7 = v42;
            goto LABEL_30;
          }
        }

        v10 = v44;
        v12 = v46;
        v14 = v47;
      }

      ++v12;
    }

    while (v12 != v10);
    v10 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  }

  while (v10);
LABEL_34:

  v37 = [v4 copy];
  [(CNContainerDataSource *)self setContainers:v37];

  v38 = [v5 copy];
  [(CNContainerDataSource *)self setContainerPickerItems:v38];

  v8 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v39 = [(CNContainerDataSource *)self containers];
    v40 = [v39 count];
    *buf = 134217984;
    v58 = v40;
    _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "Finished fetching %lu containers", buf, 0xCu);
  }

  v6 = v41;
LABEL_37:
}

- (NSArray)containers
{
  containers = self->_containers;
  if (!containers)
  {
    [(CNContainerDataSource *)self discoverContainers];
    containers = self->_containers;
  }

  return containers;
}

- (NSArray)containerPickerItems
{
  containerPickerItems = self->_containerPickerItems;
  if (!containerPickerItems)
  {
    [(CNContainerDataSource *)self discoverContainers];
    containerPickerItems = self->_containerPickerItems;
  }

  return containerPickerItems;
}

- (CNContainerDataSource)initWithContactStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNContainerDataSource;
  v5 = [(CNContainerDataSource *)&v12 init];
  store = v5->_store;
  v5->_store = v4;
  v7 = v4;

  containerPickerItems = v5->_containerPickerItems;
  v5->_containerPickerItems = MEMORY[0x1E695E0F0];

  v9 = objc_alloc_init(CNContactViewCache);
  contactViewCache = v5->_contactViewCache;
  v5->_contactViewCache = v9;

  return v5;
}

+ (id)os_log
{
  if (os_log_cn_once_token_6 != -1)
  {
    dispatch_once(&os_log_cn_once_token_6, &__block_literal_global_43787);
  }

  v3 = os_log_cn_once_object_6;

  return v3;
}

uint64_t __31__CNContainerDataSource_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "containerDataSource");
  v1 = os_log_cn_once_object_6;
  os_log_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end