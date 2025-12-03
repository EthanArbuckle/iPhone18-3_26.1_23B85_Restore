@interface ICDeviceHardwareHandler
- (ICDeviceHardwareHandler)init;
- (void)addDeviceContext:(id)context;
- (void)removeDeviceContext:(id)context;
@end

@implementation ICDeviceHardwareHandler

- (ICDeviceHardwareHandler)init
{
  v9.receiver = self;
  v9.super_class = ICDeviceHardwareHandler;
  v2 = [(ICDeviceHardwareHandler *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_deviceContextsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deviceContexts = v3->_deviceContexts;
    v3->_deviceContexts = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    disabledContexts = v3->_disabledContexts;
    v3->_disabledContexts = v6;
  }

  return v3;
}

- (void)addDeviceContext:(id)context
{
  v60 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  __ICOSLogCreate();
  v5 = @"addDeviceContext";
  if ([@"addDeviceContext" length] >= 0x15)
  {
    v6 = [@"addDeviceContext" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
  v9 = [contextCopy objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
  v10 = [v7 stringWithFormat:@"Handle: %@ | Identifier: %@", v8, v9];

  v11 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v5;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v58 = 2114;
    v59 = v10;
    _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_deviceContextsLock);
  selfCopy = self;
  v14 = [(NSMutableArray *)self->_deviceContexts copy];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v52;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v52 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v51 + 1) + 8 * v18);
      v20 = [v19 objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
      v21 = [contextCopy objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
      v22 = [v20 isEqualToString:v21];

      v23 = [v19 objectForKeyedSubscript:@"ICDeviceHandle"];
      v24 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
      v25 = [v23 isEqualToString:v24];

      if (v22 & 1) != 0 || (v25)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
        if (v16)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    if (v22)
    {
      v27 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
      v26 = selfCopy;
      [(NSMutableArray *)selfCopy->_disabledContexts addObject:contextCopy];
      __ICOSLogCreate();
      v28 = @"adding (disabled)";
      if ([@"adding (disabled)" length] >= 0x15)
      {
        v29 = [@"adding (disabled)" substringWithRange:{0, 18}];
        v28 = [v29 stringByAppendingString:@".."];
      }

      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [v30 stringWithFormat:@"%@ -> %@", v32, v27];

      v34 = *MEMORY[0x1E69A8B08];
      if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
      {
        v35 = v28;
        v36 = v34;
        uTF8String2 = [(__CFString *)v28 UTF8String];
        *buf = 136446466;
        uTF8String = uTF8String2;
        v58 = 2114;
        v59 = v33;
        _os_log_impl(&dword_1C6F19000, v36, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    v26 = selfCopy;
    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_14:

    v26 = selfCopy;
  }

  [(NSMutableArray *)v26->_deviceContexts addObject:contextCopy];
  v27 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
  __ICOSLogCreate();
  v38 = @"adding (new)";
  if ([@"adding (new)" length] >= 0x15)
  {
    v39 = [@"adding (new)" substringWithRange:{0, 18}];
    v38 = [v39 stringByAppendingString:@".."];
  }

  v40 = MEMORY[0x1E696AEC0];
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v43 = [v40 stringWithFormat:@"%@ -> %@", v42, v27];

  v44 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v45 = v38;
    v46 = v44;
    uTF8String3 = [(__CFString *)v38 UTF8String];
    *buf = 136446466;
    uTF8String = uTF8String3;
    v58 = 2114;
    v59 = v43;
    _os_log_impl(&dword_1C6F19000, v46, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  v28 = [contextCopy objectForKeyedSubscript:@"ICDeviceDelegate"];
  [(__CFString *)v28 openDeviceHandle:v27];
LABEL_27:

LABEL_28:
  os_unfair_lock_unlock(&v26->_deviceContextsLock);

  v48 = *MEMORY[0x1E69E9840];
}

- (void)removeDeviceContext:(id)context
{
  v91 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  __ICOSLogCreate();
  v5 = @"removeDeviceContext";
  if ([@"removeDeviceContext" length] >= 0x15)
  {
    v6 = [@"removeDeviceContext" substringWithRange:{0, 18}];
    v5 = [v6 stringByAppendingString:@".."];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
  v9 = [contextCopy objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
  v10 = [v7 stringWithFormat:@"Handle: %@ | Identifier: %@", v8, v9];

  v11 = *MEMORY[0x1E69A8B08];
  if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v5;
    v13 = v11;
    *buf = 136446466;
    uTF8String = [(__CFString *)v5 UTF8String];
    v89 = 2114;
    v90 = v10;
    _os_log_impl(&dword_1C6F19000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_deviceContextsLock);
  selfCopy = self;
  v14 = [(NSMutableArray *)self->_disabledContexts copy];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v81;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v81 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v80 + 1) + 8 * i);
        v21 = [v20 objectForKeyedSubscript:@"ICDeviceHandle"];
        v22 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
        v23 = [v21 isEqualToString:v22];

        if (v23)
        {
          [(NSMutableArray *)selfCopy->_disabledContexts removeObject:v20];
          __ICOSLogCreate();
          v36 = @"removing (disabled)";
          if ([@"removing (disabled)" length] >= 0x15)
          {
            v37 = [@"removing (disabled)" substringWithRange:{0, 18}];
            v36 = [v37 stringByAppendingString:@".."];
          }

          v38 = MEMORY[0x1E696AEC0];
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = [v38 stringWithFormat:@"%@ -> %@", v40, v20];

          v42 = *MEMORY[0x1E69A8B08];
          if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
          {
            v43 = v36;
            v44 = v42;
            uTF8String2 = [(__CFString *)v36 UTF8String];
            *buf = 136446466;
            uTF8String = uTF8String2;
            v89 = 2114;
            v90 = v41;
            _os_log_impl(&dword_1C6F19000, v44, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }

          os_unfair_lock_unlock(&selfCopy->_deviceContextsLock);
          goto LABEL_48;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = selfCopy;
  v25 = [(NSMutableArray *)selfCopy->_deviceContexts copy];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v76 objects:v85 count:16];
  v70 = v15;
  if (v27)
  {
    v28 = v27;
    v29 = *v77;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v76 + 1) + 8 * j);
        v32 = [v31 objectForKeyedSubscript:@"ICDeviceHandle"];
        v33 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
        v34 = [v32 isEqualToString:v33];

        if (v34)
        {
          v46 = [v31 objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
          v35 = [v46 copy];

          v47 = [v31 objectForKeyedSubscript:@"ICDeviceDelegate"];
          v48 = [contextCopy objectForKeyedSubscript:@"ICDeviceHandle"];
          [v47 closeDeviceHandle:v48];

          v24 = selfCopy;
          [(NSMutableArray *)selfCopy->_deviceContexts removeObject:v31];

          goto LABEL_28;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }

    v35 = 0;
    v24 = selfCopy;
LABEL_28:
    v15 = v70;
  }

  else
  {
    v35 = 0;
  }

  os_unfair_lock_unlock(&v24->_deviceContextsLock);
  if (v35)
  {
    os_unfair_lock_lock(&v24->_deviceContextsLock);
    v49 = [(NSMutableArray *)v24->_disabledContexts copy];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v50 = v49;
    v51 = [v50 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v51)
    {
      v52 = *v73;
      while (2)
      {
        for (k = 0; k != v51; k = k + 1)
        {
          if (*v73 != v52)
          {
            objc_enumerationMutation(v50);
          }

          v54 = *(*(&v72 + 1) + 8 * k);
          v55 = [v54 objectForKeyedSubscript:@"ICDevicePrimaryIdentifier"];
          v56 = [v55 isEqualToString:v35];

          if (v56)
          {
            v57 = [v54 objectForKeyedSubscript:@"ICDeviceHandle"];
            __ICOSLogCreate();
            v58 = @"re-enabling (disabled)";
            if ([@"re-enabling (disabled)" length] >= 0x15)
            {
              v59 = [@"re-enabling (disabled)" substringWithRange:{0, 18}];
              v58 = [v59 stringByAppendingString:@".."];
            }

            v60 = MEMORY[0x1E696AEC0];
            v24 = selfCopy;
            v61 = objc_opt_class();
            v62 = NSStringFromClass(v61);
            v63 = [v60 stringWithFormat:@"%@ -> %@", v62, v57];

            v64 = *MEMORY[0x1E69A8B08];
            v15 = v70;
            if (os_log_type_enabled(*MEMORY[0x1E69A8B08], OS_LOG_TYPE_DEFAULT))
            {
              v65 = v58;
              v66 = v64;
              uTF8String3 = [(__CFString *)v58 UTF8String];
              *buf = 136446466;
              uTF8String = uTF8String3;
              v89 = 2114;
              v90 = v63;
              _os_log_impl(&dword_1C6F19000, v66, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
            }

            v51 = [v54 copy];
            [(NSMutableArray *)selfCopy->_disabledContexts removeObject:v54];

            goto LABEL_45;
          }
        }

        v51 = [v50 countByEnumeratingWithState:&v72 objects:v84 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }

      v15 = v70;
      v24 = selfCopy;
    }

LABEL_45:

    os_unfair_lock_unlock(&v24->_deviceContextsLock);
    if (v51)
    {
      v68 = [v51 objectForKeyedSubscript:@"ICDeviceDelegate"];
      [v68 notifyAddedDevice:v51];
    }
  }

LABEL_48:

  v69 = *MEMORY[0x1E69E9840];
}

@end