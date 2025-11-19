@interface ACUIPluginLoader
+ (id)pluginBundleWithName:(id)a3;
@end

@implementation ACUIPluginLoader

+ (id)pluginBundleWithName:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = [MEMORY[0x277CCAA00] defaultManager];
  v36 = [v37 URLsForDirectory:5 inDomains:8];
  if (v36 && [v36 count])
  {
    v32 = 0;
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"PreferenceBundles/AccountSettings/%@", location[0]];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v36);
    v17 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
    if (v17)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(__b[1] + 8 * v14);
        v28 = [v30 URLByAppendingPathComponent:v31];
        v27 = 0;
        v26 = 0;
        v25 = 0;
        v3 = *MEMORY[0x277CBE868];
        v24 = 0;
        v11 = [v28 getResourceValue:&v25 forKey:v3 error:&v24];
        objc_storeStrong(&v27, v25);
        objc_storeStrong(&v26, v24);
        if (v11)
        {
          v21 = [v27 BOOLValue];
          if (v21)
          {
            v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v28];
            v5 = v32;
            v32 = v4;
            MEMORY[0x277D82BD8](v5);
            v33 = v32 ? 2 : 0;
          }

          else
          {
            v20 = _ACUILogSystem();
            v19 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v8 = v20;
              __os_log_helper_16_2_3_8_32_4_0_8_64(v41, "+[ACUIPluginLoader pluginBundleWithName:]", 56, v28);
              _os_log_debug_impl(&dword_23DC86000, v8, v19, "%s (%d) Skipping file at %@ because it isn't a directory", v41, 0x1Cu);
            }

            objc_storeStrong(&v20, 0);
            v33 = 3;
          }
        }

        else
        {
          oslog = _ACUILogSystem();
          v22 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v9 = oslog;
            v10 = v22;
            __os_log_helper_16_2_4_8_32_4_0_8_64_8_64(v42, "+[ACUIPluginLoader pluginBundleWithName:]", 39, v28, v26);
            _os_log_error_impl(&dword_23DC86000, v9, v10, "%s (%d) Couldn't get value for the directory at %@: %@", v42, 0x26u);
          }

          objc_storeStrong(&oslog, 0);
          v33 = 3;
        }

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v28, 0);
        if (v33)
        {
          if (v33 != 3)
          {
            break;
          }
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
          if (!v15)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
LABEL_25:
      v33 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v32)
    {
      v18 = _ACUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_32_4_0_8_64(v40, "+[ACUIPluginLoader pluginBundleWithName:]", 67, location[0]);
        _os_log_impl(&dword_23DC86000, v18, OS_LOG_TYPE_DEFAULT, "%s (%d) Couldn't find plugin for %@", v40, 0x1Cu);
      }

      objc_storeStrong(&v18, 0);
    }

    v39 = MEMORY[0x277D82BE0](v32);
    v33 = 1;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v35 = _ACUILogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v44, "+[ACUIPluginLoader pluginBundleWithName:]", 27);
      _os_log_error_impl(&dword_23DC86000, v35, type, "%s (%d) Couldn't find the system library directory to search for plugins.", v44, 0x12u);
    }

    objc_storeStrong(&v35, 0);
    v39 = 0;
    v33 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v39;

  return v6;
}

@end