@interface VRTraceVariable
@end

@implementation VRTraceVariable

void __VRTraceVariable__block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *keyExistsAndHasValidFormat = 0;
  if (!strcmp(v2, "int"))
  {
    v8 = *MEMORY[0x277D85E10];
    v9 = *v3;
LABEL_27:
    asprintf_l(keyExistsAndHasValidFormat, v8, "%d");
    goto LABEL_28;
  }

  if (!strcmp(v2, "unsigned int"))
  {
    v10 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%u");
    goto LABEL_28;
  }

  if (!strcmp(v2, "BOOL"))
  {
    v8 = *MEMORY[0x277D85E10];
    v11 = *v3;
    goto LABEL_27;
  }

  if (!strcmp(v2, "long"))
  {
    v21 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%ld");
    goto LABEL_28;
  }

  if (!strcmp(v2, "unsigned long"))
  {
    v27 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%lu");
    goto LABEL_28;
  }

  if (!strcmp(v2, "long long"))
  {
    v28 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%lld");
    goto LABEL_28;
  }

  if (!strcmp(v2, "unsigned long long"))
  {
    v29 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%llu");
    goto LABEL_28;
  }

  if (!strcmp(v2, "char"))
  {
    v30 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%hhd");
    goto LABEL_28;
  }

  if (!strcmp(v2, "unsigned char"))
  {
    v31 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%hhu");
    goto LABEL_28;
  }

  if (!strcmp(v2, "short"))
  {
    v32 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%hd");
    goto LABEL_28;
  }

  if (!strcmp(v2, "unsigned short"))
  {
    v33 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%hu");
    goto LABEL_28;
  }

  if (!strcmp(v2, "float"))
  {
    v34 = *MEMORY[0x277D85E10];
    v35 = *v3;
LABEL_61:
    asprintf_l(keyExistsAndHasValidFormat, v34, "%f");
    goto LABEL_28;
  }

  if (!strcmp(v2, "double"))
  {
    v34 = *MEMORY[0x277D85E10];
    v36 = *v3;
    goto LABEL_61;
  }

  if (!strcmp(v2, "void*"))
  {
    v37 = *v3;
    asprintf_l(keyExistsAndHasValidFormat, *MEMORY[0x277D85E10], "%p");
    goto LABEL_28;
  }

  if (!strcmp(v2, "cstr"))
  {
    v12 = malloc_type_calloc(v4 + 1, 1uLL, 0xC5C4FA80uLL);
    memcpy(v12, v3, v4);
    if (v12)
    {
      goto LABEL_29;
    }

LABEL_64:
    free(*(a1 + 40));
    VRTraceDebugBreak();
    goto LABEL_65;
  }

  v5 = malloc_type_malloc((v4 >> 3) + 2 * v4 + 23, 0xF1CCC73AuLL);
  *keyExistsAndHasValidFormat = v5;
  if (!v5)
  {
    goto LABEL_64;
  }

  *v5 = 60;
  v6 = v5 + 1;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (i && (i & 3) == 0)
      {
        *v6++ = 32;
      }

      sprintf(v6, "%02X", *(v3 + i));
      v6 += 2;
    }
  }

  *v6 = 62;
LABEL_28:
  v12 = *keyExistsAndHasValidFormat;
  if (!*keyExistsAndHasValidFormat)
  {
    goto LABEL_64;
  }

LABEL_29:
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("ViceroyTrace");
  v14 = *(a1 + 64);
  if (v14 > ErrorLogLevelForModule || v14 < 1)
  {
    goto LABEL_55;
  }

  v15 = VRTraceErrorLogLevelToCSTR(v14);
  v16 = *(a1 + 64);
  if (v16 > 2)
  {
    if (v16 > 4)
    {
      if (v16 > 7)
      {
        if (v16 != 8)
        {
          goto LABEL_55;
        }

        v24 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo != 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
          {
            v38 = *(a1 + 56);
            v39 = *(a1 + 32);
            *keyExistsAndHasValidFormat = 136316418;
            *&keyExistsAndHasValidFormat[4] = v15;
            v42 = 2080;
            v43 = "VRTraceVariable__block_invoke";
            v44 = 1024;
            v45 = 582;
            v46 = 2080;
            v47 = v38;
            v48 = 2080;
            v49 = v39;
            v50 = 2080;
            v51 = v12;
            _os_log_debug_impl(&dword_23D4DF000, v24, OS_LOG_TYPE_DEBUG, "ViceroyTrace [%s] %s:%d %s = (%s) %s", keyExistsAndHasValidFormat, 0x3Au);
          }

          goto LABEL_55;
        }

        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v24 = gVRTraceOSLog;
        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }
      }

      v25 = *(a1 + 56);
      v26 = *(a1 + 32);
      *keyExistsAndHasValidFormat = 136316418;
      *&keyExistsAndHasValidFormat[4] = v15;
      v42 = 2080;
      v43 = "VRTraceVariable__block_invoke";
      v44 = 1024;
      v45 = 582;
      v46 = 2080;
      v47 = v25;
      v48 = 2080;
      v49 = v26;
      v50 = 2080;
      v51 = v12;
      _os_log_impl(&dword_23D4DF000, v24, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d %s = (%s) %s", keyExistsAndHasValidFormat, 0x3Au);
      goto LABEL_55;
    }

    v18 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      v19 = *(a1 + 56);
      v20 = *(a1 + 32);
      *keyExistsAndHasValidFormat = 136316418;
      *&keyExistsAndHasValidFormat[4] = v15;
      v42 = 2080;
      v43 = "VRTraceVariable__block_invoke";
      v44 = 1024;
      v45 = 582;
      v46 = 2080;
      v47 = v19;
      v48 = 2080;
      v49 = v20;
      v50 = 2080;
      v51 = v12;
      _os_log_error_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_ERROR, "ViceroyTrace [%s] %s:%d %s = (%s) %s", keyExistsAndHasValidFormat, 0x3Au);
    }
  }

  else
  {
    keyExistsAndHasValidFormat[0] = -86;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableOSLogFault", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
    v18 = gVRTraceOSLog;
    if (!keyExistsAndHasValidFormat[0] || !AppBooleanValue)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_FAULT))
      {
        v22 = *(a1 + 56);
        v23 = *(a1 + 32);
        *keyExistsAndHasValidFormat = 136316418;
        *&keyExistsAndHasValidFormat[4] = v15;
        v42 = 2080;
        v43 = "VRTraceVariable__block_invoke";
        v44 = 1024;
        v45 = 582;
        v46 = 2080;
        v47 = v22;
        v48 = 2080;
        v49 = v23;
        v50 = 2080;
        v51 = v12;
        _os_log_fault_impl(&dword_23D4DF000, v18, OS_LOG_TYPE_FAULT, "ViceroyTrace [%s] %s:%d %s = (%s) %s", keyExistsAndHasValidFormat, 0x3Au);
      }

      goto LABEL_55;
    }

    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }
  }

LABEL_55:
  free(v12);
  free(*(a1 + 40));
LABEL_65:
  v40 = *MEMORY[0x277D85DE8];
}

@end