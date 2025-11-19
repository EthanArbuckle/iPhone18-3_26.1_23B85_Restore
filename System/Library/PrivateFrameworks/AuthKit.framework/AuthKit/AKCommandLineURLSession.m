@interface AKCommandLineURLSession
+ (id)sharedServerUIURLSession;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
@end

@implementation AKCommandLineURLSession

+ (id)sharedServerUIURLSession
{
  v5 = &sharedServerUIURLSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_32);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedServerUIURLSession_sharedURLSession;

  return v2;
}

uint64_t __51__AKCommandLineURLSession_sharedServerUIURLSession__block_invoke()
{
  v0 = objc_alloc_init(AKCommandLineURLSession);
  v1 = sharedServerUIURLSession_sharedURLSession;
  sharedServerUIURLSession_sharedURLSession = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = 0;
  objc_storeStrong(&v38, a6);
  v37 = 0;
  objc_storeStrong(&v37, a7);
  v36 = _AKLogSystem();
  v35 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v39 URL];
    v19 = [v38 URL];
    __os_log_helper_16_2_2_8_64_8_64(v43, v20, v19);
    _os_log_debug_impl(&dword_193225000, v36, v35, "Session processing redirect from %@ to %@", v43, 0x16u);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v20);
  }

  objc_storeStrong(&v36, 0);
  if (v39)
  {
    if (v38)
    {
      v17 = [v39 allHeaderFields];
      v33 = [v17 aaf_filter:&__block_literal_global_29];
      MEMORY[0x1E69E5920](v17);
      v31 = 0;
      v18 = 1;
      if (v33)
      {
        v32 = [v33 allKeys];
        v31 = 1;
        v18 = [v32 count] == 0;
      }

      if (v31)
      {
        MEMORY[0x1E69E5920](v32);
      }

      if (v18)
      {
        oslog = _AKLogSystem();
        v29 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v15 = oslog;
          v16 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_debug_impl(&dword_193225000, v15, v16, "Redirect session is missing continuation header's.", v28, 2u);
        }

        objc_storeStrong(&oslog, 0);
        if (v37)
        {
          (*(v37 + 2))(v37, v38);
        }

        v34 = 1;
      }

      else
      {
        v27 = [v38 mutableCopy];
        memset(__b, 0, sizeof(__b));
        v13 = [v33 allKeys];
        v14 = [v13 countByEnumeratingWithState:__b objects:v42 count:16];
        if (v14)
        {
          v10 = *__b[2];
          v11 = 0;
          v12 = v14;
          while (1)
          {
            v9 = v11;
            if (*__b[2] != v10)
            {
              objc_enumerationMutation(v13);
            }

            v26 = *(__b[1] + 8 * v11);
            v7 = v27;
            v8 = [v33 objectForKey:v26];
            [v7 setValue:? forHTTPHeaderField:?];
            MEMORY[0x1E69E5920](v8);
            ++v11;
            if (v9 + 1 >= v12)
            {
              v11 = 0;
              v12 = [v13 countByEnumeratingWithState:__b objects:v42 count:16];
              if (!v12)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x1E69E5920](v13);
        if (v37)
        {
          (*(v37 + 2))(v37, v27);
        }

        v34 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v33, 0);
    }

    else
    {
      if (v37)
      {
        (*(v37 + 2))(v37, v38);
      }

      v34 = 1;
    }
  }

  else
  {
    if (v37)
    {
      (*(v37 + 2))(v37, v38);
    }

    v34 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __99__AKCommandLineURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [location[0] containsString:@"X-Apple-I-Cont"];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

@end