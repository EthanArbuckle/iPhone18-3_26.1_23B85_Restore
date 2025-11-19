id sendAneSessionSignal(const __CFString *a1, const void *a2)
{
  v4 = 0;
  setAneHint(a1, a2, &v4);
  v2 = v4;

  return v2;
}

uint64_t setAneHint(const __CFString *a1, const void *a2, __CFDictionary **a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = IOServiceMatching("ANEClientHints");
  if (!v6)
  {
    v7 = 3758097085;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      setAneHint();
    }

    goto LABEL_45;
  }

  existing = 0;
  if (IOServiceGetMatchingServices(*MEMORY[0x277CD2898], v6, &existing))
  {
    v7 = 3758097136;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      setAneHint();
    }

    goto LABEL_45;
  }

  if (!existing)
  {
    v7 = 3758097136;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      setAneHint();
    }

    goto LABEL_45;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = MEMORY[0x277D85F48];
  v27 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v10 = IOIteratorNext(existing);
    if (!v10)
    {
      v7 = 0;
      goto LABEL_44;
    }

    v11 = v10;
    connect = 0;
    v12 = IOServiceOpen(v10, *v9, 0, &connect);
    if (v12)
    {
      break;
    }

    v13 = IOConnectSetCFProperty(connect, a1, a2);
    v7 = v13;
    if (a3 && !v13)
    {
      v14 = v9;
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      properties = 0;
      entry = 0;
      v17 = MEMORY[0x23EED8E50](connect, &entry);
      if (v17)
      {
        v18 = v17;
        v9 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          setAneHint(buf, v18, &v41);
        }

        goto LABEL_19;
      }

      v19 = IORegistryEntryCreateCFProperties(entry, &properties, v8, 0);
      if (v19)
      {
        v20 = v19;
        v9 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          setAneHint(v38, v20, v39);
        }

        goto LABEL_19;
      }

      if (strncmp(CStringPtr, "ANEHintClientSessionStart", 0x1AuLL))
      {
        v21 = strncmp(CStringPtr, "ANEHintClientSessionInfo", 0x19uLL);
        v9 = v14;
        if (!v21)
        {
          v22 = @"ANEClientSessionStatus";
          Value = CFDictionaryGetValue(properties, @"ANEClientSessionStatus");
          if (!Value)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              setAneHint(&v29, v30);
            }

            goto LABEL_19;
          }

LABEL_35:
          CFDictionarySetValue(Mutable, v22, Value);
        }

LABEL_19:
        *a3 = Mutable;
        if (properties)
        {
          CFRelease(properties);
        }

        v8 = v27;
        if (entry)
        {
          IOObjectRelease(entry);
        }

        goto LABEL_23;
      }

      v24 = CFDictionaryGetValue(properties, @"ANEClientTotalPages");
      if (v24)
      {
        CFDictionarySetValue(Mutable, @"ANEClientTotalPages", v24);
        v9 = v14;
      }

      else
      {
        v9 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          setAneHint(&v33, v34);
        }
      }

      v22 = @"ANEClientResidentPages";
      Value = CFDictionaryGetValue(properties, @"ANEClientResidentPages");
      if (!Value)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          setAneHint(&v31, v32);
        }

        goto LABEL_19;
      }

      goto LABEL_35;
    }

LABEL_23:
    IOServiceClose(connect);
    IOObjectRelease(v11);
    a3 = 0;
    if (v7)
    {
      goto LABEL_42;
    }
  }

  v7 = v12;
  IOObjectRelease(v11);
LABEL_42:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    setAneHint();
  }

LABEL_44:
  IOObjectRelease(existing);
LABEL_45:
  v25 = *MEMORY[0x277D85DE8];
  return v7;
}

_BYTE *OUTLINED_FUNCTION_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void setAneHint()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void setAneHint(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23C91E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get hintsUserClient IOService instance res: 0x%x\n", buf, 8u);
}

{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23C91E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get hintProperty from hintsUserClient\n res: 0x%x", buf, 8u);
}

void setAneHint(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_0(a1, a2);
  _os_log_error_impl(&dword_23C91E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot find kANEHintClientSessionStatus from hintProperty\n", v2, 2u);
}

{
  OUTLINED_FUNCTION_0(a1, a2);
  _os_log_error_impl(&dword_23C91E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot find kANEHintClientTotalPages from hintProperty\n", v2, 2u);
}

{
  OUTLINED_FUNCTION_0(a1, a2);
  _os_log_error_impl(&dword_23C91E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot find kANEHintClientResidentPages from hintProperty\n", v2, 2u);
}