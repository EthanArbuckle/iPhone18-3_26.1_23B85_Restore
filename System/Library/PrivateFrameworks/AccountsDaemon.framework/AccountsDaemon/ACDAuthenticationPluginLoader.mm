@interface ACDAuthenticationPluginLoader
- (ACDAuthenticationPluginLoader)init;
- (id)pluginForAuthenticationType:(id)type;
- (void)_setPlugin:(id)plugin forType:(id)type;
@end

@implementation ACDAuthenticationPluginLoader

- (ACDAuthenticationPluginLoader)init
{
  v7.receiver = self;
  v7.super_class = ACDAuthenticationPluginLoader;
  v2 = [(ACDAuthenticationPluginLoader *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CB8FA0]) initWithMaximum:60 inTimeInterval:3600.0];
    [(ACDAuthenticationPluginLoader *)v2 setRenewalRateLimiter:v3];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    authenticationPluginsByType = v2->_authenticationPluginsByType;
    v2->_authenticationPluginsByType = dictionary;

    v2->_pluginAccessLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)pluginForAuthenticationType:(id)type
{
  typeCopy = type;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke;
  v11 = &unk_27848C040;
  selfCopy = self;
  v5 = typeCopy;
  v13 = v5;
  v6 = v9;
  os_unfair_lock_lock(&self->_pluginAccessLock);
  v7 = v10(v6);
  os_unfair_lock_unlock(&self->_pluginAccessLock);

  return v7;
}

id __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v4 = [ACDPluginLoader pluginForIdentifier:*v2 subpath:@"Authentication"];
    v22 = 0;
    [v4 loadAndReturnError:&v22];
    v5 = v22;
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_1();
    }

    if (v4)
    {
      v7 = [v4 principalClass];
      v8 = _ACDLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_2();
      }

      v3 = objc_alloc_init(v7);
      v9 = _ACDLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_3();
      }

      if (v3)
      {
        if ([v3 conformsToProtocol:&unk_28354FEE8])
        {
          [*(*(a1 + 32) + 16) setObject:v3 forKey:*(a1 + 40)];
LABEL_21:

          goto LABEL_22;
        }

        v17 = _ACDLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_4(v7, v17);
        }

LABEL_20:
        v3 = 0;
        goto LABEL_21;
      }

      v10 = _ACDLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromClass(v7);
        v21 = *v2;
        *buf = 138412802;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        v27 = 2112;
        v28 = v5;
        _os_log_error_impl(&dword_221D2F000, v10, OS_LOG_TYPE_ERROR, "ACDAuthenticationPluginLoader: an authentication plugin of class %@ for auth type %@ could not be instantiated! Load Error: %@", buf, 0x20u);
      }
    }

    else
    {
      v10 = _ACDLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_5(v2, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    goto LABEL_20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_setPlugin:(id)plugin forType:(id)type
{
  pluginCopy = plugin;
  typeCopy = type;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __52__ACDAuthenticationPluginLoader__setPlugin_forType___block_invoke;
  v13 = &unk_27848C0B8;
  selfCopy = self;
  v8 = typeCopy;
  v15 = v8;
  v9 = pluginCopy;
  v16 = v9;
  v10 = v11;
  os_unfair_lock_lock(&self->_pluginAccessLock);
  v12(v10);
  os_unfair_lock_unlock(&self->_pluginAccessLock);
}

void __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginLoader: got pluginBundle %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginLoader: got principalClass %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "ACDAuthenticationPluginLoader: created plugin %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_4(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "ACDAuthenticationPluginLoader: authentication plugin of class %@ does not conform to ACDAccountAuthenticationPlugin protocol!", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __61__ACDAuthenticationPluginLoader_pluginForAuthenticationType___block_invoke_cold_5(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_5(&dword_221D2F000, a2, a3, "ACDAuthenticationPluginLoader: no authentication bundle for auth type %@, nothing to do here...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end