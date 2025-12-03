@interface EKVirtualConferenceRoomType
+ (void)virtualConferenceRoomTypesWithCompletion:(id)completion queue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (EKVirtualConferenceRoomType)initWithTitle:(id)title identifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier;
@end

@implementation EKVirtualConferenceRoomType

- (EKVirtualConferenceRoomType)initWithTitle:(id)title identifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier
{
  titleCopy = title;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v15.receiver = self;
  v15.super_class = EKVirtualConferenceRoomType;
  v12 = [(EKVirtualConferenceRoomType *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_extensionBundleIdentifier, bundleIdentifier);
  }

  return v13;
}

+ (void)virtualConferenceRoomTypesWithCompletion:(id)completion queue:(id)queue
{
  v23[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  queueCopy = queue;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__21;
  v20[4] = __Block_byref_object_dispose__21;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = dispatch_group_create();
  v8 = *MEMORY[0x1E696A2F8];
  v22[0] = @"LS:ExtensionPlatforms";
  v22[1] = v8;
  v23[0] = &unk_1F1B6B218;
  v23[1] = @"com.apple.calendar.virtualconference";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v10 = MEMORY[0x1E696ABD0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke;
  v15[3] = &unk_1E78000D0;
  v19 = v20;
  v11 = v7;
  v16 = v11;
  v12 = queueCopy;
  v17 = v12;
  v13 = completionCopy;
  v18 = v13;
  [v10 extensionsWithMatchingAttributes:v9 completion:v15];

  _Block_object_dispose(v20, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_cold_1();
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v20 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 identifier];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_101;
          v29[3] = &unk_1E7800010;
          v12 = *(a1 + 56);
          v30 = v11;
          v32 = v12;
          v31 = *(a1 + 32);
          v13 = v11;
          [v10 setRequestCompletionBlock:v29];
          [v10 setRequestCancellationBlock:&__block_literal_global_67];
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108;
          v27[3] = &unk_1E7800058;
          v28 = 0;
          [v10 setRequestInterruptionBlock:v27];
          v14 = objc_alloc_init(MEMORY[0x1E696ABE0]);
          v38 = @"_EKVirtualConferenceRequestTypeKey";
          v39 = @"_EKVirtualConferenceRequestTypeRoomTypes";
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          [v14 setUserInfo:v15];

          dispatch_group_enter(*(a1 + 32));
          v37 = v14;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_110;
          v26[3] = &unk_1E7800080;
          v26[4] = v10;
          [v10 beginExtensionRequestWithOptions:1 inputItems:v16 completion:v26];
        }

        v8 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v8);
    }

    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111;
    block[3] = &unk_1E78000A8;
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v21 = *(a1 + 48);
    v18 = v21;
    v25 = v21;
    dispatch_async(v17, block);

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v5)
  {
    v26 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 userInfo];
        v9 = [v8 objectForKey:@"_EKVirtualConferenceRoomTypeTitleKey"];

        v10 = [v7 userInfo];
        v11 = [v10 objectForKey:@"_EKVirtualConferenceRoomTypeIdentifierKey"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v11;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = v15;
        if (v13)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            v19 = @"(nil)";
            if (v16)
            {
              v20 = v16;
            }

            else
            {
              v20 = @"(nil)";
            }

            *buf = 138412802;
            v32 = v7;
            if (v13)
            {
              v19 = v13;
            }

            v33 = 2112;
            v34 = v20;
            v35 = 2112;
            v36 = v19;
            _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Skipping extension room type %@ because it has insufficient information. Identifier = %@ title = %@", buf, 0x20u);
          }
        }

        else
        {
          v21 = [[EKVirtualConferenceRoomType alloc] initWithTitle:v13 identifier:v15 extensionBundleIdentifier:*(a1 + 32)];
          v22 = *(*(*(a1 + 48) + 8) + 40);
          objc_sync_enter(v22);
          [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
          objc_sync_exit(v22);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
  v23 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_106_cold_1();
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108_cold_1(v3, a1);
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Request for virtual conference room types failed, extension = %@ request = %@ error = %@", &v10, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111_cold_1(v4);
    }
  }

  v5 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_112;
  block[3] = &unk_1E77FFFE8;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  dispatch_async(v5, block);
}

uint64_t __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_112(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(EKVirtualConferenceRoomType *)v5 title];
      title2 = [(EKVirtualConferenceRoomType *)self title];
      if (CalEqualStrings())
      {
        identifier = [(EKVirtualConferenceRoomType *)v5 identifier];
        identifier2 = [(EKVirtualConferenceRoomType *)self identifier];
        if (CalEqualStrings())
        {
          extensionBundleIdentifier = [(EKVirtualConferenceRoomType *)v5 extensionBundleIdentifier];
          extensionBundleIdentifier2 = [(EKVirtualConferenceRoomType *)self extensionBundleIdentifier];
          v12 = CalEqualStrings();
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "Failed to find virtual conference extensions. Error = %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_106_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Request for virtual conference room type cancelled, request = %@ error = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v3, v4, "Request for virtual conference room interrupted, request = %@ error = %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end