@interface AKPrivateEmailClientImpl
- (void)presentPrivateEmailUIForContext:(id)a3 completion:(id)a4;
@end

@implementation AKPrivateEmailClientImpl

- (void)presentPrivateEmailUIForContext:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = _AKLogHme();
  v16 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v21, location[0], v20->_uiProvider);
    _os_log_debug_impl(&dword_193225000, v17, v16, "Presenting %@ to %@", v21, 0x16u);
  }

  objc_storeStrong(&v17, 0);
  if (v20->_uiProvider)
  {
    v5 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
    queue = v5;
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __71__AKPrivateEmailClientImpl_presentPrivateEmailUIForContext_completion___block_invoke;
    v12 = &unk_1E73D6640;
    v13 = MEMORY[0x1E69E5928](v20);
    v14 = MEMORY[0x1E69E5928](location[0]);
    v15 = MEMORY[0x1E69E5928](v18);
    dispatch_sync(queue, &v8);
    MEMORY[0x1E69E5920](queue);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end