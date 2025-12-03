@interface ManagedNetworkSettings
+ (id)sharedMNS;
- (ManagedNetworkSettings)init;
- (void)handleEvent:(id)event;
- (void)reloadMNS;
- (void)reloadNetworkdSettings;
@end

@implementation ManagedNetworkSettings

- (void)reloadMNS
{
  *(&v108[15] + 2) = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/Library/Preferences/com.apple.networkd.sysctl.plist"];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/Library/Managed Preferences/mobile/com.apple.networkd.sysctl.plist"];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v91 objects:&v105 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v92;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v92 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v91 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        [dictionary setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v91 objects:&v105 count:16];
    }

    while (v6);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v87 objects:type count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v88;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v88 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v87 + 1) + 8 * j);
        v18 = [dictionary objectForKeyedSubscript:v17];
        if (v18)
        {
          v19 = v18;
          v20 = [v4 objectForKeyedSubscript:v17];
          v21 = [v11 objectForKeyedSubscript:v17];

          if (v20 != v21)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v22 = gLogObj;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v4 objectForKeyedSubscript:v17];
              v24 = [v11 objectForKeyedSubscript:v17];
              buf = 136446978;
              v97 = "copyNetworkdCombinedSysctlSettingsDict";
              v98 = 2114;
              v99 = v17;
              v100 = 2114;
              v101 = v23;
              v102 = 2114;
              v103 = v24;
              _os_log_impl(&dword_181A37000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s MNS sysctl %{public}@ : ignoring managed value %{public}@ since it is in settings with value %{public}@", &buf, 0x2Au);
            }
          }
        }

        v16 = [v11 objectForKeyedSubscript:v17];
        [dictionary setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v87 objects:type count:16];
    }

    while (v13);
  }

  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v25 = dictionary;
  v26 = [v25 countByEnumeratingWithState:&v83 objects:v95 count:16];
  v27 = &qword_1ED411000;
  if (v26)
  {
    v28 = v26;
    v29 = *v84;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v81 = v25;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v84 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v83 + 1) + 8 * k);
        if (!v31)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v36 = v27[275];
          v105 = 136446210;
          v106 = "isSysctlAllowlisted";
          v37 = _os_log_send_and_compose_impl();

          LOBYTE(type[0]) = 16;
          LOBYTE(v91) = 0;
          if (__nwlog_fault(v37, type, &v91))
          {
            if (LOBYTE(type[0]) == 17)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v38 = v27[275];
              v39 = type[0];
              if (os_log_type_enabled(v38, type[0]))
              {
                v105 = 136446210;
                v106 = "isSysctlAllowlisted";
                v40 = v38;
                v41 = v39;
                v42 = "%{public}s called with null name";
                goto LABEL_49;
              }

              goto LABEL_50;
            }

            if (v91 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v45 = v27[275];
              v46 = type[0];
              v47 = os_log_type_enabled(v45, type[0]);
              if (backtrace_string)
              {
                if (v47)
                {
                  v105 = 136446466;
                  v106 = "isSysctlAllowlisted";
                  v107 = 2082;
                  v108[0] = backtrace_string;
                  _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null name, dumping backtrace:%{public}s", &v105, 0x16u);
                }

                free(backtrace_string);
              }

              else
              {
                if (v47)
                {
                  v105 = 136446210;
                  v106 = "isSysctlAllowlisted";
                  _os_log_impl(&dword_181A37000, v45, v46, "%{public}s called with null name, no backtrace", &v105, 0xCu);
                }
              }

              v25 = v81;
              if (!v37)
              {
                goto LABEL_53;
              }

LABEL_52:
              free(v37);
LABEL_53:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v33 = v27[275];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v105 = 136446466;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 2114;
                v108[0] = v31;
                _os_log_impl(&dword_181A37000, v33, OS_LOG_TYPE_ERROR, "%{public}s MNS sysctl name %{public}@ is not allowlisted", &v105, 0x16u);
              }

              goto LABEL_25;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = v27[275];
            v48 = type[0];
            if (os_log_type_enabled(v38, type[0]))
            {
              v105 = 136446210;
              v106 = "isSysctlAllowlisted";
              v40 = v38;
              v41 = v48;
              v42 = "%{public}s called with null name, backtrace limit exceeded";
LABEL_49:
              _os_log_impl(&dword_181A37000, v40, v41, v42, &v105, 0xCu);
            }

LABEL_50:

            v27 = &qword_1ED411000;
          }

          if (v37)
          {
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        if (([*(*(&v83 + 1) + 8 * k) hasPrefix:@"net."] & 1) == 0)
        {
          goto LABEL_53;
        }

        v32 = [v25 objectForKeyedSubscript:v31];
        LODWORD(v91) = 0;
        v33 = v32;
        if (v33 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          longLongValue = [v33 longLongValue];
          intValue = 0x7FFFFFFF;
          if (longLongValue <= 0x7FFFFFFF)
          {
            if (longLongValue >= 0xFFFFFFFF80000000)
            {
              intValue = [v33 intValue];
            }

            else
            {
              intValue = 0x80000000;
            }
          }

          LODWORD(v91) = intValue;

          uTF8String = [v31 UTF8String];
          LODWORD(v87) = 0;
          type[0] = 4;
          if (!sysctlbyname(uTF8String, &v87, type, 0, 0) && type[0] == 4)
          {
            if (v91 == v87)
            {
              goto LABEL_107;
            }

LABEL_83:
            if (!sysctlbyname(uTF8String, 0, 0, &v91, 4uLL))
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v66 = v27[275];
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                v105 = 136446978;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 2114;
                v108[0] = v31;
                LOWORD(v108[1]) = 1024;
                *(&v108[1] + 2) = v87;
                HIWORD(v108[1]) = 1024;
                LODWORD(v108[2]) = v91;
                _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEFAULT, "%{public}s MNS successfully set sysctl %{public}@ from %d to %d", &v105, 0x22u);
              }

              goto LABEL_107;
            }

            v62 = v27;
            v63 = **(StatusReg + 8);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v64 = v62[275];
            v65 = v64;
            if (v63 == 45)
            {
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v105 = 136446978;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 1024;
                LODWORD(v108[0]) = v91;
                WORD2(v108[0]) = 2114;
                *(v108 + 6) = v31;
                HIWORD(v108[1]) = 1024;
                LODWORD(v108[2]) = 45;
                _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_ERROR, "%{public}s MNS error writing %d to sysctl %{public}@ %{darwin.errno}d", &v105, 0x22u);
              }

              goto LABEL_106;
            }

            v105 = 136446978;
            v106 = "[ManagedNetworkSettings reloadMNS]";
            v107 = 1024;
            LODWORD(v108[0]) = v91;
            WORD2(v108[0]) = 2114;
            *(v108 + 6) = v31;
            HIWORD(v108[1]) = 1024;
            LODWORD(v108[2]) = v63;
            v67 = _os_log_send_and_compose_impl();

            LOBYTE(buf) = 16;
            v82 = 0;
            if (__nwlog_fault(v67, &buf, &v82))
            {
              if (buf == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v68 = gLogObj;
                v69 = buf;
                if (os_log_type_enabled(v68, buf))
                {
                  v105 = 136446978;
                  v106 = "[ManagedNetworkSettings reloadMNS]";
                  v107 = 1024;
                  LODWORD(v108[0]) = v91;
                  WORD2(v108[0]) = 2114;
                  *(v108 + 6) = v31;
                  HIWORD(v108[1]) = 1024;
                  LODWORD(v108[2]) = v63;
                  v70 = v68;
                  v71 = v69;
                  v72 = "%{public}s MNS error writing %d to sysctl %{public}@ %{darwin.errno}d";
                  goto LABEL_102;
                }

                goto LABEL_103;
              }

              if (v82 == 1)
              {
                v73 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v74 = gLogObj;
                v79 = buf;
                v75 = os_log_type_enabled(v74, buf);
                if (v73)
                {
                  if (v75)
                  {
                    v105 = 136447234;
                    v106 = "[ManagedNetworkSettings reloadMNS]";
                    v107 = 1024;
                    LODWORD(v108[0]) = v91;
                    WORD2(v108[0]) = 2114;
                    *(v108 + 6) = v31;
                    HIWORD(v108[1]) = 1024;
                    LODWORD(v108[2]) = v63;
                    WORD2(v108[2]) = 2082;
                    *(&v108[2] + 6) = v73;
                    _os_log_impl(&dword_181A37000, v74, v79, "%{public}s MNS error writing %d to sysctl %{public}@ %{darwin.errno}d, dumping backtrace:%{public}s", &v105, 0x2Cu);
                  }

                  free(v73);
                  goto LABEL_104;
                }

                if (v75)
                {
                  v105 = 136446978;
                  v106 = "[ManagedNetworkSettings reloadMNS]";
                  v107 = 1024;
                  LODWORD(v108[0]) = v91;
                  WORD2(v108[0]) = 2114;
                  *(v108 + 6) = v31;
                  HIWORD(v108[1]) = 1024;
                  LODWORD(v108[2]) = v63;
                  _os_log_impl(&dword_181A37000, v74, v79, "%{public}s MNS error writing %d to sysctl %{public}@ %{darwin.errno}d, no backtrace", &v105, 0x22u);
                }

                if (!v67)
                {
                  goto LABEL_106;
                }

LABEL_105:
                free(v67);
LABEL_106:
                v27 = &qword_1ED411000;
LABEL_107:
                v25 = v81;
                goto LABEL_25;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v68 = gLogObj;
              v76 = buf;
              if (os_log_type_enabled(v68, buf))
              {
                v105 = 136446978;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 1024;
                LODWORD(v108[0]) = v91;
                WORD2(v108[0]) = 2114;
                *(v108 + 6) = v31;
                HIWORD(v108[1]) = 1024;
                LODWORD(v108[2]) = v63;
                v70 = v68;
                v71 = v76;
                v72 = "%{public}s MNS error writing %d to sysctl %{public}@ %{darwin.errno}d, backtrace limit exceeded";
LABEL_102:
                _os_log_impl(&dword_181A37000, v70, v71, v72, &v105, 0x22u);
              }

LABEL_103:
            }

LABEL_104:
            if (v67)
            {
              goto LABEL_105;
            }

            goto LABEL_106;
          }

          v50 = **(StatusReg + 8);
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v51 = v27[275];
          v105 = 136446722;
          v106 = "[ManagedNetworkSettings reloadMNS]";
          v107 = 2114;
          v108[0] = v31;
          LOWORD(v108[1]) = 1024;
          *v78 = v50;
          *(&v108[1] + 2) = v50;
          v52 = _os_log_send_and_compose_impl();

          LOBYTE(buf) = 16;
          v82 = 0;
          if (__nwlog_fault(v52, &buf, &v82))
          {
            if (buf != 17)
            {
              if (v82 == 1)
              {
                v58 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v59 = v58;
                v53 = gLogObj;
                v77 = buf;
                v60 = os_log_type_enabled(v53, buf);
                if (v59)
                {
                  if (v60)
                  {
                    v105 = 136446978;
                    v106 = "[ManagedNetworkSettings reloadMNS]";
                    v107 = 2114;
                    v108[0] = v31;
                    LOWORD(v108[1]) = 1024;
                    *(&v108[1] + 2) = *v78;
                    HIWORD(v108[1]) = 2082;
                    v108[2] = v59;
                    _os_log_impl(&dword_181A37000, v53, v77, "%{public}s MNS error reading sysctl %{public}@ %{darwin.errno}d, dumping backtrace:%{public}s", &v105, 0x26u);
                  }

                  free(v59);
                  goto LABEL_80;
                }

                if (!v60)
                {
                  goto LABEL_79;
                }

                v105 = 136446722;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 2114;
                v108[0] = v31;
                LOWORD(v108[1]) = 1024;
                *(&v108[1] + 2) = *v78;
                v55 = v53;
                v56 = v77;
                v57 = "%{public}s MNS error reading sysctl %{public}@ %{darwin.errno}d, no backtrace";
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v53 = gLogObj;
                v61 = buf;
                if (!os_log_type_enabled(v53, buf))
                {
                  goto LABEL_79;
                }

                v105 = 136446722;
                v106 = "[ManagedNetworkSettings reloadMNS]";
                v107 = 2114;
                v108[0] = v31;
                LOWORD(v108[1]) = 1024;
                *(&v108[1] + 2) = *v78;
                v55 = v53;
                v56 = v61;
                v57 = "%{public}s MNS error reading sysctl %{public}@ %{darwin.errno}d, backtrace limit exceeded";
              }

LABEL_78:
              _os_log_impl(&dword_181A37000, v55, v56, v57, &v105, 0x1Cu);
              goto LABEL_79;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v53 = gLogObj;
            v54 = buf;
            if (os_log_type_enabled(v53, buf))
            {
              v105 = 136446722;
              v106 = "[ManagedNetworkSettings reloadMNS]";
              v107 = 2114;
              v108[0] = v31;
              LOWORD(v108[1]) = 1024;
              *(&v108[1] + 2) = *v78;
              v55 = v53;
              v56 = v54;
              v57 = "%{public}s MNS error reading sysctl %{public}@ %{darwin.errno}d";
              goto LABEL_78;
            }

LABEL_79:
          }

LABEL_80:
          if (v52)
          {
            free(v52);
          }

          v27 = &qword_1ED411000;
          goto LABEL_83;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = v27[275];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v105 = 136446722;
          v106 = "[ManagedNetworkSettings reloadMNS]";
          v107 = 2114;
          v108[0] = v33;
          LOWORD(v108[1]) = 2114;
          *(&v108[1] + 2) = v31;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s MNS observed invalid value %{public}@ for key %{public}@", &v105, 0x20u);
        }

LABEL_25:
      }

      v28 = [v25 countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v28);
  }
}

- (void)reloadNetworkdSettings
{
  v2 = nw_setting_libnetcore_debug;
  networkd_settings_init();
  if (sCachedSettings)
  {
    pthread_mutex_lock(&sSettingsMutex);
    if (sCachedSettings)
    {
      int64 = xpc_dictionary_get_int64(sCachedSettings, v2);
    }

    else
    {
      int64 = 0;
    }

    pthread_mutex_unlock(&sSettingsMutex);
  }

  else
  {
    int64 = 0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_file_path_settings];
  dictionary = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v4];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v13 = dictionary;

  v6 = [v13 copy];
  v7 = MEMORY[0x1E695DF90];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_file_path_settings_managed];
  v9 = [v7 dictionaryWithContentsOfFile:v8];

  if (![v9 count])
  {

    v9 = 0;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_settings_managed_settings];
  if (v9)
  {
    dictionary2 = v13;
    if (!v13)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = dictionary2;
    [dictionary2 setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    [v13 removeObjectForKey:v10];
  }

  if ([v13 count])
  {
    v12 = v13;
  }

  else
  {

    v12 = 0;
  }

  v14 = v12;
  saveAndPostNetworkdSettings(v12, v6, int64);
}

- (void)handleEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v22 = "[ManagedNetworkSettings handleEvent:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v9, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v22 = "[ManagedNetworkSettings handleEvent:]";
        v12 = "%{public}s called with null event";
LABEL_24:
        v16 = v10;
        v17 = v11;
        goto LABEL_25;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_26;
        }

        *buf = 136446210;
        v22 = "[ManagedNetworkSettings handleEvent:]";
        v12 = "%{public}s called with null event, backtrace limit exceeded";
        goto LABEL_24;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_26:

          if (!v9)
          {
            goto LABEL_34;
          }

LABEL_27:
          free(v9);
          goto LABEL_34;
        }

        *buf = 136446210;
        v22 = "[ManagedNetworkSettings handleEvent:]";
        v12 = "%{public}s called with null event, no backtrace";
        v16 = v10;
        v17 = v14;
LABEL_25:
        _os_log_impl(&dword_181A37000, v16, v17, v12, buf, 0xCu);
        goto LABEL_26;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "[ManagedNetworkSettings handleEvent:]";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v14, "%{public}s called with null event, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v9)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  string = xpc_dictionary_get_string(eventCopy, *MEMORY[0x1E69E9E40]);
  if (string)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    if (([v7 isEqualToString:@"NetworkdSettingsChanged"]& 1) != 0 || [v7 isEqualToString:@"NetworkdManagedSettingsChanged"])
    {
      [(ManagedNetworkSettings *)self reloadNetworkdSettings];
    }

    else if (([v7 isEqualToString:@"NetworkdSysctlSettingsChanged"]& 1) != 0 || [v7 isEqualToString:@"NetworkdManagedSysctlSettingsChanged"])
    {
      [(ManagedNetworkSettings *)self reloadMNS];
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v22 = "[ManagedNetworkSettings handleEvent:]";
        v23 = 2114;
        v24 = v7;
        _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_DEBUG, "%{public}s MNS received an event with unknown name %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "[ManagedNetworkSettings handleEvent:]";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s MNS received an event with no name", buf, 0xCu);
    }
  }

LABEL_34:
}

- (ManagedNetworkSettings)init
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = ManagedNetworkSettings;
  v2 = [(ManagedNetworkSettings *)&v18 init];
  v3 = v2;
  if (!v2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136446210;
    v20 = "[ManagedNetworkSettings init]";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (__nwlog_fault(v6, &type, &v16))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "[ManagedNetworkSettings init]";
        v9 = "%{public}s super init failed";
LABEL_17:
        v14 = v7;
        v15 = v8;
        goto LABEL_18;
      }

      if (v16 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v7 = gLogObj;
        v8 = type;
        if (!os_log_type_enabled(v7, type))
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v20 = "[ManagedNetworkSettings init]";
        v9 = "%{public}s super init failed, backtrace limit exceeded";
        goto LABEL_17;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v11 = type;
      v12 = os_log_type_enabled(v7, type);
      if (!backtrace_string)
      {
        if (!v12)
        {
LABEL_19:

          if (!v6)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        *buf = 136446210;
        v20 = "[ManagedNetworkSettings init]";
        v9 = "%{public}s super init failed, no backtrace";
        v14 = v7;
        v15 = v11;
LABEL_18:
        _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
        goto LABEL_19;
      }

      if (v12)
      {
        *buf = 136446466;
        v20 = "[ManagedNetworkSettings init]";
        v21 = 2082;
        v22 = backtrace_string;
        _os_log_impl(&dword_181A37000, v7, v11, "%{public}s super init failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_13:
    free(v6);
    goto LABEL_14;
  }

  v4 = v2;
LABEL_14:

  return v3;
}

+ (id)sharedMNS
{
  if (sharedMNS_onceToken != -1)
  {
    dispatch_once(&sharedMNS_onceToken, &__block_literal_global_23863);
  }

  v3 = sharedMNS_gManagedNetworkSettings;

  return v3;
}

void __35__ManagedNetworkSettings_sharedMNS__block_invoke()
{
  v0 = objc_alloc_init(ManagedNetworkSettings);
  v1 = sharedMNS_gManagedNetworkSettings;
  sharedMNS_gManagedNetworkSettings = v0;
}

@end