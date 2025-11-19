@interface PRSPosterConfiguration(AmbientUI)
- (NSObject)amui_getConfiguredDisplayNameWithError:()AmbientUI;
@end

@implementation PRSPosterConfiguration(AmbientUI)

- (NSObject)amui_getConfiguredDisplayNameWithError:()AmbientUI
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a1 pr_loadOtherMetadataWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 displayNameLocalizationKey];
    if (!v7)
    {
      v8 = AMUILogSwitcher();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(PRSPosterConfiguration(AmbientUI) *)a1 amui_getConfiguredDisplayNameWithError:v8];
      }
    }

    v9 = [a1 pr_posterProvider];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v9 error:a3];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 URL];

        v13 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithURL:v12];
        v14 = v13;
        if (v13)
        {
          v15 = [v13 localizedStringForKey:v7 value:0 table:0];
          v16 = v15;
          if (v15)
          {
            v16 = v15;
            v17 = v16;
          }

          else
          {
            v18 = AMUILogSwitcher();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v21 = 138412802;
              v22 = v7;
              v23 = 2112;
              v24 = v14;
              v25 = 2112;
              v26 = a1;
              _os_log_error_impl(&dword_23F38B000, v18, OS_LOG_TYPE_ERROR, "Failed to load display name localization key %@ from bundle %@ for %@", &v21, 0x20u);
            }

            v17 = 0;
          }
        }

        else
        {
          v16 = AMUILogSwitcher();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
          }

          v17 = 0;
        }

        goto LABEL_29;
      }

      v12 = AMUILogSwitcher();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
      }
    }

    else
    {
      v12 = AMUILogSwitcher();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(PRSPosterConfiguration(AmbientUI) *)a1 amui_getConfiguredDisplayNameWithError:v12];
      }
    }

    v17 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (a3)
  {
    v7 = *a3;
  }

  else
  {
    v7 = 0;
  }

  v9 = AMUILogSwitcher();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PRSPosterConfiguration(AmbientUI) amui_getConfiguredDisplayNameWithError:];
  }

  v17 = 0;
LABEL_30:

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "No display name localization key for configuration %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Failed to load bundle %@ from %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "No extension record for provider %@ configuration %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Missing poster provider from configuration %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)amui_getConfiguredDisplayNameWithError:()AmbientUI .cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Unable to load metadata for poster configuration %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end