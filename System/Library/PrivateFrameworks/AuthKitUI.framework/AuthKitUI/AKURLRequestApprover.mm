@interface AKURLRequestApprover
- (AKURLRequestApprover)initWithWhitelistedPaths:(id)a3;
- (BOOL)_matchInputAgainstPaths:(id)a3;
- (BOOL)shouldAllowRequest:(id)a3;
@end

@implementation AKURLRequestApprover

- (AKURLRequestApprover)initWithWhitelistedPaths:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKURLRequestApprover;
  v8 = [(AKURLRequestApprover *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = [location[0] copy];
    whiteListedPaths = v11->_whiteListedPaths;
    v11->_whiteListedPaths = v4;
    MEMORY[0x277D82BD8](whiteListedPaths);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)shouldAllowRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v16->_whiteListedPaths)
  {
    v6 = MEMORY[0x277CCACE0];
    v7 = [location[0] URL];
    v13 = [v6 componentsWithURL:? resolvingAgainstBaseURL:?];
    v9 = [v13 host];
    v8 = [v13 path];
    v12 = [v9 stringByAppendingString:?];
    MEMORY[0x277D82BD8](v8);
    *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v11 = [(AKURLRequestApprover *)v16 _matchInputAgainstPaths:v12, v3];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v11];
      __os_log_helper_16_2_2_8_64_8_64(v18, v5, v12);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Made redirection decision (%@) for <%@>", v18, 0x16u);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&oslog, 0);
    v17 = v11;
    v14 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v17 = 1;
    v14 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v17 & 1;
}

- (BOOL)_matchInputAgainstPaths:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v16->_whiteListedPaths);
  v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      if ([location[0] hasPrefix:v14])
      {
        break;
      }

      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        log = oslog;
        __os_log_helper_16_2_2_8_64_8_64(v18, v14, location[0]);
        _os_log_debug_impl(&dword_222379000, log, OS_LOG_TYPE_DEBUG, "Failed to match path: %@ > %@", v18, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }

    v17 = 1;
    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v12)
  {
    v17 = 0;
    v12 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v17 & 1;
}

@end