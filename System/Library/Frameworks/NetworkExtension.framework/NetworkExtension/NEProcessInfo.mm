@interface NEProcessInfo
+ (BOOL)is64bitCapable;
+ (id)copyDNSUUIDs;
+ (id)copyNEHelperUUIDs;
+ (id)copyUUIDsForBundleID:(id)d uid:(unsigned int)uid;
+ (id)copyUUIDsForExecutable:(id)executable;
+ (id)copyUUIDsForExecutableWithoutCache:(id)cache;
+ (id)copyUUIDsForPID:(int)d;
+ (id)copyUUIDsFromExecutable:(uint64_t)executable;
+ (uint64_t)copyUUIDForSingleArch:(uint64_t)arch;
+ (void)clearUUIDCache;
+ (void)initGlobals;
@end

@implementation NEProcessInfo

+ (id)copyUUIDsForPID:(int)d
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (proc_pidpath(d, buffer, 0x400u) < 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
    v5 = [NEProcessInfo copyUUIDsForExecutable:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)is64bitCapable
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v7 = 4;
  if (sysctlbyname("hw.cpu64bit_capable", &v8, &v7, 0, 0))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v10 = v6;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to get 64 bit capability: %s", buf, 0xCu);
    }
  }

  result = v8 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)copyNEHelperUUIDs
{
  v2 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/nehelper"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 addObjectsFromArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)copyDNSUUIDs
{
  v2 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/sbin/mDNSResponder"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 addObjectsFromArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)clearUUIDCache
{
  +[NEProcessInfo initGlobals];
  v2 = g_queue;

  dispatch_sync(v2, &__block_literal_global_10_15549);
}

+ (void)initGlobals
{
  objc_opt_self();
  if (initGlobals_mapping_init != -1)
  {

    dispatch_once(&initGlobals_mapping_init, &__block_literal_global_15551);
  }
}

uint64_t __28__NEProcessInfo_initGlobals__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("NEProcessInfo queue", v0);
  v2 = g_queue;
  g_queue = v1;

  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v4 = g_executableUUIDMapping;
  g_executableUUIDMapping = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)copyUUIDsForExecutable:(id)executable
{
  executableCopy = executable;
  +[NEProcessInfo initGlobals];
  v4 = 0;
  if (executableCopy && g_executableUUIDMapping)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = g_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __40__NEProcessInfo_copyUUIDsForExecutable___block_invoke;
    v12 = &unk_1E7F0A0E8;
    v13 = executableCopy;
    v7 = v5;
    v14 = v7;
    dispatch_sync(v6, &v9);
    if ([v7 count])
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __40__NEProcessInfo_copyUUIDsForExecutable___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [g_executableUUIDMapping objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [g_executableUUIDMapping objectForKeyedSubscript:v2];
    [v4 addObjectsFromArray:v5];

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [g_executableUUIDMapping objectForKeyedSubscript:v2];
      v11 = 136315650;
      v12 = "+[NEProcessInfo copyUUIDsForExecutable:]_block_invoke";
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v7;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%s: cached %@ UUID %@", &v11, 0x20u);
    }
  }

  else
  {
    v8 = +[NEProcessInfo copyUUIDsFromExecutable:](NEProcessInfo, [v2 UTF8String]);
    if (v8)
    {
      v6 = v8;
      [g_executableUUIDMapping setObject:v8 forKeyedSubscript:v2];
      [*(a1 + 40) addObjectsFromArray:v6];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "+[NEProcessInfo copyUUIDsForExecutable:]_block_invoke";
        v13 = 2112;
        v14 = v2;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@", &v11, 0x16u);
      }

      v6 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)copyUUIDsFromExecutable:(uint64_t)executable
{
  v54 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_26;
  }

  v3 = open(a2, 0);
  if (v3 < 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v28 = __error();
      v29 = strerror(*v28);
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
      LOWORD(host_info_out[3]) = 2080;
      *(&host_info_out[3] + 2) = a2;
      HIWORD(host_info_out[5]) = 2080;
      *&host_info_out[6] = v29;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%s: cannot open %s: %s", host_info_out, 0x20u);
    }

    goto LABEL_10;
  }

  v4 = v3;
  v42 = 0;
  if (read(v3, &v42, 4uLL) != 4)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v30 = __error();
      v31 = strerror(*v30);
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
      LOWORD(host_info_out[3]) = 2080;
      *(&host_info_out[3] + 2) = a2;
      HIWORD(host_info_out[5]) = 2080;
      *&host_info_out[6] = v31;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: cannot read magic for %s: %s", host_info_out, 0x20u);
    }

    goto LABEL_14;
  }

  lseek(v4, 0, 0);
  if ((v42 + 17958194) < 2)
  {
    v5 = [NEProcessInfo copyUUIDForSingleArch:v4];
    v6 = v5;
    if (v5)
    {
      v47 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315138;
        *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%s: failed to get UUID for Single Arch", host_info_out, 0xCu);
      }

      v7 = 0;
    }

    goto LABEL_23;
  }

  v7 = 0;
  if (v42 != -1095041334)
  {
    goto LABEL_23;
  }

  v10 = objc_opt_self();
  v53 = 0u;
  memset(host_info_out, 0, sizeof(host_info_out));
  host_info_outCnt = 12;
  v11 = MEMORY[0x1BFAFA980](v10);
  if (host_info(v11, 1, host_info_out, &host_info_outCnt))
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v13 = "%s: cannot get host_info";
LABEL_43:
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  v45 = 0;
  if (read(v4, &v45, 8uLL) != 8)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v13 = "%s: failed to read file";
      goto LABEL_43;
    }

LABEL_46:

LABEL_14:
    v7 = 0;
    goto LABEL_23;
  }

  v18 = HIDWORD(v45);
  v19 = bswap32(HIDWORD(v45));
  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
    v50 = 1024;
    LODWORD(v51[0]) = v19;
    _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "%s: number of arch detected: %d", buf, 0x12u);
  }

  if (!v18)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "Number of architectures is 0", buf, 2u);
    }

    goto LABEL_46;
  }

  if (v19 >= 0x20)
  {
    v21 = 32;
  }

  else
  {
    v21 = v19;
  }

  v22 = malloc_type_malloc(4 * (v21 + 4 * v21), 0x1000040A86A77D5uLL);
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  v24 = v22;
  v25 = v21;
  do
  {
    v43 = 0uLL;
    v44 = 0;
    if (read(v4, &v43, 0x14uLL) != 20)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
        _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%s: failed to read arch info", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_74;
    }

    LODWORD(v43) = bswap32(v43);
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v50 = 1024;
      LODWORD(v51[0]) = v43;
      WORD2(v51[0]) = 1024;
      *(v51 + 6) = v43;
      _os_log_debug_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEBUG, "%s: cpu type %X (%d)", buf, 0x18u);
    }

    DWORD2(v43) = bswap32(DWORD2(v43));
    v27 = v43;
    v24[4] = v44;
    *v24 = v27;
    v24 += 5;
    --v25;
  }

  while (v25);
  v7 = 0;
  v33 = v23 + 2;
  do
  {
    v34 = *v33;
    if (!*v33)
    {
      v37 = ne_log_obj();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 136315138;
      v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v38 = "%s: invalid offset";
      v39 = v37;
      v40 = 12;
LABEL_65:
      _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
      goto LABEL_73;
    }

    v35 = *(v33 - 2);
    if (lseek(v4, *v33, 0) == -1)
    {
      v37 = ne_log_obj();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 136315394;
      v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v50 = 1024;
      LODWORD(v51[0]) = v34;
      v38 = "%s: failed to seek to offset %u";
      v39 = v37;
      v40 = 18;
      goto LABEL_65;
    }

    v36 = [NEProcessInfo copyUUIDForSingleArch:v4];
    if (!v36)
    {
      v41 = ne_log_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
        v50 = 1024;
        LODWORD(v51[0]) = v34;
        _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, "%s: failed to get uuid for offset %u", buf, 0x12u);
      }

      v37 = 0;
      goto LABEL_72;
    }

    v37 = v36;
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v7)
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
          _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, "%s: failed allocate UUID array", buf, 0xCu);
        }

        v7 = 0;
LABEL_72:

        goto LABEL_73;
      }
    }

    if (v35 == host_info_out[3])
    {
      [v7 insertObject:v37 atIndex:0];
    }

    else
    {
      [v7 addObject:v37];
    }

    v33 += 5;

    --v21;
  }

  while (v21);
  v37 = ne_log_obj();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v49 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
    v50 = 2112;
    v51[0] = v7;
    _os_log_debug_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_DEBUG, "%s: uuids %@", buf, 0x16u);
  }

LABEL_73:

LABEL_74:
  free(v23);
LABEL_23:
  close(v4);
  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    host_info_out[0] = 136315394;
    *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
    LOWORD(host_info_out[3]) = 2112;
    *(&host_info_out[3] + 2) = v7;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%s: UUIDs %@", host_info_out, 0x16u);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (uint64_t)copyUUIDForSingleArch:(uint64_t)arch
{
  v18[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v10[0] = 0;
  v10[1] = 0;
  v12 = 0;
  v11 = 0;
  if (read(a2, v10, 0x1CuLL) == 28)
  {
    if (LODWORD(v10[0]) == -17958193)
    {
      lseek(a2, 4, 1);
    }

    if (v11)
    {
      for (i = 0; i < v11; ++i)
      {
        v9 = 0;
        if (read(a2, &v9, 8uLL) != 8)
        {
          break;
        }

        if (v9 == 27)
        {
          v17 = 0;
          v18[0] = 0;
          v18[1] = 0;
          v7 = read(a2, v18, 0x10uLL);
          v4 = 0;
          if (v7 == 16)
          {
            v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
            v8 = ne_log_obj();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v14 = "+[NEProcessInfo copyUUIDForSingleArch:]";
              v15 = 2112;
              v16 = v4;
              _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%s: got UUID %@", buf, 0x16u);
            }
          }

          goto LABEL_10;
        }

        lseek(a2, HIDWORD(v9) - 8, 1);
      }
    }
  }

  v4 = 0;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)copyUUIDsForExecutableWithoutCache:(id)cache
{
  cacheCopy = cache;
  +[NEProcessInfo initGlobals];
  if (cacheCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = g_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__NEProcessInfo_copyUUIDsForExecutableWithoutCache___block_invoke;
    v12 = &unk_1E7F0A0E8;
    v13 = cacheCopy;
    v6 = v4;
    v14 = v6;
    dispatch_sync(v5, &v9);
    if ([v6 count])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__NEProcessInfo_copyUUIDsForExecutableWithoutCache___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = +[NEProcessInfo copyUUIDsFromExecutable:](NEProcessInfo, [v2 UTF8String]);
  if (v3)
  {
    [g_executableUUIDMapping setObject:v3 forKeyedSubscript:v2];
    [*(a1 + 40) addObjectsFromArray:v3];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "+[NEProcessInfo copyUUIDsForExecutableWithoutCache:]_block_invoke";
      v8 = 2112;
      v9 = v2;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)copyUUIDsForBundleID:(id)d uid:(unsigned int)uid
{
  v4 = MEMORY[0x1E695DF70];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [dCopy UTF8String];
  v7 = NEHelperCacheCopyAppUUIDMappingForUIDExtended();
  v8 = v7;
  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9E50])
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __42__NEProcessInfo_copyUUIDsForBundleID_uid___block_invoke;
    applier[3] = &unk_1E7F09530;
    v11 = v6;
    xpc_array_apply(v8, applier);
  }

  return v6;
}

uint64_t __42__NEProcessInfo_copyUUIDsForBundleID_uid___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1BFAFC5E0](v4) == MEMORY[0x1E69E9F20])
  {
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [v6 addObject:v7];
  }

  return 1;
}

@end