uint64_t start()
{
  *mainPort = 0;
  v0 = IOMasterPort(bootstrap_port, &mainPort[1]);
  if (v0)
  {
    sub_1000007B8("Error (%d) getting the IOMaster port", v0);
  }

  dword_100008000 = IORegistryEntryFromPath(mainPort[1], "IODeviceTree:/options");
  if (!dword_100008000)
  {
    sub_1000007B8("nvram is not supported on this system.", -1);
  }

  v1 = bootstrap_check_in(bootstrap_port, "com.apple.AdminLite", mainPort);
  if (v1)
  {
    sub_1000007B8("Error (%d) checking in with the bootstrap server", v1);
  }

  mach_msg_server_once(sub_100000F14, 0x878u, mainPort[0], 50331648);
  IOObjectRelease(dword_100008000);
  return 0;
}

void sub_1000007B8(const char *a1, uint64_t a2)
{
  fwrite("AdminLite", 9uLL, 1uLL, __stderrp);
  fprintf(__stderrp, a1, a2);
  fputc(10, __stderrp);
  exit(-1);
}

CFTypeRef sub_10000081C(_OWORD *a1, const __CFString *a2)
{
  v3 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *v8.val = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, a2, &v8);
  CFRelease(v5);
  return v6;
}

const void *sub_100000888(const void *a1)
{
  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000008C0(int a1, _OWORD *a2, char *__s2, const char *a4, int a5, _DWORD *a6)
{
  *a6 = 1;
  if (!strcmp("boot-args", __s2))
  {
    v12 = a2[1];
    v17[0] = *a2;
    v17[1] = v12;
    v13 = sub_10000081C(v17, @"com.apple.nvram.boot-args-set-allow");
    if (v13)
    {
      v14 = v13;
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v14))
      {
        if (CFBooleanGetValue(v14) == 1)
        {
          if (a5)
          {
            sub_1000009A8("IONVRAM-DELETE-PROPERTY", __s2);
            v16 = 0;
          }

          else
          {
            v16 = sub_1000009A8(__s2, a4);
          }

          *a6 = v16;
        }

        CFRelease(v14);
      }
    }
  }

  return 0;
}

uint64_t sub_1000009A8(char *cStr, const char *a2)
{
  v4 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v4)
  {
    sub_1000007B8("Error (-1) creating CFString for key %s", cStr);
  }

  v5 = v4;
  CFProperty = IORegistryEntryCreateCFProperty(dword_100008000, v4, 0, 0);
  if (CFProperty)
  {
    v7 = CFProperty;
    v8 = CFGetTypeID(CFProperty);
    CFRelease(v7);
    v9 = sub_100000B20(v8, a2);
    if (!v9)
    {
      sub_1000007B8("Error (-1) creating CFTypeRef for value %s", a2);
    }

    v10 = IORegistryEntrySetCFProperty(dword_100008000, v5, v9);
  }

  else
  {
    TypeID = CFDataGetTypeID();
    v12 = sub_100000B20(TypeID, a2);
    if (v12 && !IORegistryEntrySetCFProperty(dword_100008000, v5, v12) || (v13 = CFStringGetTypeID(), (v14 = sub_100000B20(v13, a2)) != 0) && !IORegistryEntrySetCFProperty(dword_100008000, v5, v14) || (v15 = CFNumberGetTypeID(), (v16 = sub_100000B20(v15, a2)) != 0) && !IORegistryEntrySetCFProperty(dword_100008000, v5, v16) || (v17 = CFBooleanGetTypeID(), (v18 = sub_100000B20(v17, a2)) != 0) && !IORegistryEntrySetCFProperty(dword_100008000, v5, v18))
    {
      v10 = 0;
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }
  }

  CFRelease(v5);
  return v10;
}

CFDataRef sub_100000B20(uint64_t a1, const char *a2)
{
  if (CFBooleanGetTypeID() == a1)
  {
    if (!strcmp("true", a2))
    {
      return kCFBooleanTrue;
    }

    else if (!strcmp("false", a2))
    {
      return kCFBooleanFalse;
    }

    else
    {
      return 0;
    }
  }

  else if (CFNumberGetTypeID() == a1)
  {
    valuePtr = strtol(a2, 0, 0);
    return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  }

  else if (CFStringGetTypeID() == a1)
  {

    return CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  }

  else if (CFDataGetTypeID() == a1)
  {
    v5 = strlen(a2);
    if (v5 < 1)
    {
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = 0;
      for (i = 0; i < v6; ++i)
      {
        v9 = &a2[i];
        v10 = a2[i];
        if (v10 == 37)
        {
          v11 = v9[1];
          if (v11 < 0)
          {
            if (!__maskrune(v11, 0x10000uLL))
            {
              return 0;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v11] & 0x10000) == 0)
          {
            return 0;
          }

          v12 = v9[2];
          if (v12 < 0)
          {
            if (!__maskrune(v12, 0x10000uLL))
            {
              return 0;
            }
          }

          else if ((_DefaultRuneLocale.__runetype[v12] & 0x10000) == 0)
          {
            return 0;
          }

          v13 = __toupper(v9[1]) - 48;
          i += 2;
          v14 = __toupper(a2[i]);
          v15 = v14 - 48;
          if ((v14 - 48) > 9)
          {
            v15 = v14 - 55;
          }

          if (v13 <= 9)
          {
            v16 = 16 * v13;
          }

          else
          {
            v16 = 16 * v13 - 112;
          }

          LOBYTE(v10) = v15 + v16;
        }

        a2[v7++] = v10;
      }
    }

    return CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a2, v7, kCFAllocatorDefault);
  }

  else
  {
    return 0;
  }
}

char *(*sub_100000D68(uint64_t a1))(char *result, uint64_t a2)
{
  if (*(a1 + 20) == 12345)
  {
    return sub_100000D88;
  }

  else
  {
    return 0;
  }
}

char *sub_100000D88(char *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v3 = result;
  v4 = *(result + 1);
  if ((v4 - 2101) < 0xFFFFF7FF)
  {
    goto LABEL_25;
  }

  v5 = *(result + 9);
  if (v5 > 0x400)
  {
    goto LABEL_25;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 52 < v5 || v4 < v6 + 52)
  {
    goto LABEL_25;
  }

  v8 = &result[v6];
  v9 = *(v8 + 11);
  if (v9 > 0x400)
  {
    goto LABEL_25;
  }

  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = v4 - v6;
  if (v11 - 52 < v9 || v11 != v10 + 52)
  {
    goto LABEL_25;
  }

  v13 = 1064;
  if (v4 < 0x428)
  {
    v13 = *(result + 1);
  }

  result = memchr(result + 40, 0, v13 - 40);
  if (!result || ((v14 = v8 - 1024, v15 = v8 + 48, &v3[v4] - v15 >= 1024) ? (v16 = 1024) : (v16 = &v3[v4] - v15), (result = memchr(v15, 0, v16)) == 0))
  {
LABEL_25:
    v18 = -304;
    goto LABEL_26;
  }

  v17 = &v3[(v4 + 3) & 0x1FFC];
  if (*v17 || *(v17 + 1) <= 0x1Fu)
  {
    v18 = -309;
LABEL_26:
    *(a2 + 32) = v18;
    *(a2 + 24) = NDR_record;
    return result;
  }

  v19 = *(v3 + 3);
  v20 = *&v14[v10 + 1072];
  v21 = *(v17 + 36);
  v22[0] = *(v17 + 20);
  v22[1] = v21;
  result = sub_1000008C0(v19, v22, v3 + 40, v15, v20, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100000F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = *(a1 + 20) + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (*(a1 + 20) == 12345)
  {
    sub_100000D88(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}