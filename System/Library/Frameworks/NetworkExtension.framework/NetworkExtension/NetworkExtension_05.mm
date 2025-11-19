unint64_t NEVirtualInterfaceUpdateAdHocServiceReturnChanges(uint64_t a1, uint64_t *a2, int a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *MEMORY[0x1E695E480];
    v89 = a1 + 265;
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (a1 + 265), 0x600u);
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    v9 = *MEMORY[0x1E69822F0];
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, *MEMORY[0x1E69822F0], *(a1 + 488), *MEMORY[0x1E6982338]);
    v11 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982340]);
    key = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982330]);
    value = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982360]);
    v90 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), *MEMORY[0x1E6982368]);
    v91 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v9, *(a1 + 488), 0);
    if (a2)
    {
      *a2 = 0;
    }

    v12 = 0;
    if (!v6 || !Mutable || !v8 || !NetworkServiceEntity || !v11)
    {
LABEL_140:
      if (!v6)
      {
LABEL_142:
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        if (NetworkServiceEntity)
        {
          CFRelease(NetworkServiceEntity);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (key)
        {
          CFRelease(key);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v91)
        {
          CFRelease(v91);
        }

        if (v90)
        {
          CFRelease(v90);
        }

        goto LABEL_158;
      }

LABEL_141:
      CFRelease(v6);
      goto LABEL_142;
    }

    if (*(a1 + 416))
    {
      v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v12 = v13;
      if (v13)
      {
        v14 = *(a1 + 416);
        if (v14)
        {
          CFDictionarySetValue(v13, *MEMORY[0x1E69823D8], v14);
        }

        v15 = *(a1 + 432);
        if (v15)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823C8], v15);
        }

        v16 = *(a1 + 424);
        if (v16)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823D0], v16);
        }

        v17 = *(a1 + 392);
        if (v17)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E69823F0], v17);
        }

        v18 = *(a1 + 400);
        if (v18)
        {
          CFDictionarySetValue(v12, *MEMORY[0x1E6982400], v18);
        }

        if (*(a1 + 408))
        {
          v19 = CFNumberCreate(v5, kCFNumberIntType, (a1 + 408));
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(v12, *MEMORY[0x1E69823F8], v19);
            CFRelease(v20);
          }
        }

        v21 = *(a1 + 444);
        if (v21 >= 1)
        {
          NEAddIntToDictionary(v12, *MEMORY[0x1E69823E0], v21);
        }

        v22 = *(a1 + 440);
        if (v22)
        {
          NEAddIntToDictionary(v12, *MEMORY[0x1E69823E8], v22);
        }

        CFDictionarySetValue(v12, *MEMORY[0x1E69823B8], v6);
        if ((*(a1 + 312) & 0x81) != 0)
        {
          goto LABEL_29;
        }

        v39 = *(a1 + 416);
        if (!v39 || CFArrayGetCount(v39) < 1)
        {
          goto LABEL_30;
        }

        v40 = *(a1 + 344);
        if (!v40 || CFArrayGetCount(v40) <= 0)
        {
          v41 = *(a1 + 360);
          if (!v41 || CFArrayGetCount(v41) < 1)
          {
            goto LABEL_30;
          }
        }

        v42 = NEVirtualInterfaceCopyRouteCacheFromRoutes(*(a1 + 344), 0);
        v43 = NEVirtualInterfaceCopyRouteCacheFromRoutes(*(a1 + 360), 1);
        v80 = v42;
        v81 = v43;
        if (v42)
        {
          v42 = _CFXPCCreateXPCObjectFromCFObject();
          v43 = v81;
        }

        if (v43)
        {
          v43 = _CFXPCCreateXPCObjectFromCFObject();
        }

        v84 = v43;
        if (v42)
        {
          v44 = xpc_dictionary_create(0, 0, 0);
          if (v44)
          {
            v83 = v44;
            xpc_dictionary_set_value(v44, "ipv4-subnets", v42);
          }

          else
          {
            v83 = 0;
          }

          v43 = v84;
        }

        else
        {
          v83 = 0;
        }

        cfa = NetworkServiceEntity;
        if (v43 && (v66 = xpc_dictionary_create(0, 0, 0)) != 0)
        {
          v82 = v66;
          xpc_dictionary_set_value(v66, "ipv6-subnets", v84);
        }

        else
        {
          v82 = 0;
        }

        object = v42;
        Count = CFArrayGetCount(*(a1 + 416));
        if (Count < 1)
        {
          v76 = 0;
          goto LABEL_184;
        }

        v68 = Count;
        v78 = v11;
        v79 = v6;
        v69 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 416), v69);
          if (ValueAtIndex)
          {
            v71 = NECreateAddressStructFromString(ValueAtIndex, 0, 0);
            if (v71)
            {
              v72 = v71;
              v73 = v71[1];
              if (object && v73 == 2)
              {
                v74 = ne_session_address_matches_subnets();
                free(v72);
                if ((v74 & 1) == 0)
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (!v84 || v73 != 30)
                {
                  free(v71);
LABEL_182:
                  v76 = 1;
LABEL_183:
                  v11 = v78;
                  v6 = v79;
LABEL_184:
                  NetworkServiceEntity = cfa;
                  if (v80)
                  {
                    CFRelease(v80);
                  }

                  if (v81)
                  {
                    CFRelease(v81);
                  }

                  if (object)
                  {
                    xpc_release(object);
                  }

                  if (v84)
                  {
                    xpc_release(v84);
                  }

                  if (v83)
                  {
                    xpc_release(v83);
                  }

                  if (v82)
                  {
                    xpc_release(v82);
                  }

                  if (v76)
                  {
LABEL_30:
                    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v12, key))
                    {
                      *a2 |= 2uLL;
                    }

                    NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting DNS to dictionary with keys", v12);
                    CFDictionarySetValue(Mutable, key, v12);
                    CFRelease(v12);
                    v23 = a3;
                    goto LABEL_40;
                  }

LABEL_29:
                  CFDictionarySetValue(v12, *MEMORY[0x1E69823C0], *(a1 + 488));
                  goto LABEL_30;
                }

                v75 = ne_session_address_matches_subnets();
                free(v72);
                if (!v75)
                {
                  goto LABEL_182;
                }
              }
            }
          }

          if (v68 == ++v69)
          {
            v76 = 0;
            goto LABEL_183;
          }
        }
      }

      goto LABEL_141;
    }

    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), 0, key))
    {
      *a2 |= 2uLL;
    }

    v24 = ne_log_obj();
    v23 = a3;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v89;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%s: removing DNS", buf, 0xCu);
    }

    CFArrayAppendValue(v8, key);
LABEL_40:
    v25 = NEVirtualInterfaceCopyIPStateDictionary(a1, 2, v23);
    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v25, NetworkServiceEntity))
    {
      *a2 |= 1uLL;
      if (v25)
      {
        goto LABEL_43;
      }
    }

    else if (v25)
    {
LABEL_43:
      NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting IPv4 to dictionary with keys", v25);
      CFDictionarySetValue(Mutable, NetworkServiceEntity, v25);
      CFRelease(v25);
      goto LABEL_48;
    }

    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v89;
      _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEFAULT, "%s: removing IPv4", buf, 0xCu);
    }

    CFArrayAppendValue(v8, NetworkServiceEntity);
LABEL_48:
    v27 = NEVirtualInterfaceCopyIPStateDictionary(a1, 30, v23);
    if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), v27, v11))
    {
      *a2 |= 1uLL;
      if (v27)
      {
        goto LABEL_51;
      }
    }

    else if (v27)
    {
LABEL_51:
      NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting IPv6 to dictionary with keys", v27);
      v28 = v11;
      CFDictionarySetValue(Mutable, v11, v27);
      CFRelease(v27);
      goto LABEL_56;
    }

    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v89;
      _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEFAULT, "%s: removing IPv6", buf, 0xCu);
    }

    v28 = v11;
    CFArrayAppendValue(v8, v11);
LABEL_56:
    v30 = *(a1 + 448);
    TypeID = CFDictionaryGetTypeID();
    cf = NetworkServiceEntity;
    if ((!v30 || CFGetTypeID(v30) != TypeID) && (*(a1 + 312) & 1) == 0 && !*(a1 + 392))
    {
      if (a2 && !NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), 0, value))
      {
        *a2 |= 4uLL;
      }

      v45 = ne_log_obj();
      v11 = v28;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v89;
        _os_log_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEFAULT, "%s: removing proxies", buf, 0xCu);
      }

      CFArrayAppendValue(v8, value);
      if (a2)
      {
        goto LABEL_74;
      }

      goto LABEL_97;
    }

    v32 = *(a1 + 448);
    v33 = CFDictionaryGetTypeID();
    if (v32 && CFGetTypeID(v32) == v33)
    {
      v34 = *(a1 + 448);
      if (v34)
      {
        Copy = CFRetain(v34);
      }

      else
      {
        Copy = 0;
      }

      if (*(a1 + 392))
      {
        v51 = *MEMORY[0x1E6982700];
        if (!CFDictionaryContainsKey(Copy, *MEMORY[0x1E6982700]))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, Copy);
          CFDictionarySetValue(MutableCopy, v51, *(a1 + 392));
          v53 = *(a1 + 400);
          if (v53)
          {
            CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6982708], v53);
          }

          if (Copy)
          {
            CFRelease(Copy);
          }

          Copy = CFDictionaryCreateCopy(v5, MutableCopy);
          v11 = v28;
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

LABEL_66:
          if (a2)
          {
            if (!NEVirtualInterfaceIsStateEqualToDynamicStoreState(*(a1 + 496), Copy, value))
            {
              v36 = CFDictionaryContainsKey(Copy, *MEMORY[0x1E6982700]);
              v37 = *a2;
              if (v36 || (v37 & 1) != 0)
              {
                *a2 = v37 | 4;
              }
            }
          }

          NEVirtualInterfaceLogStateDictionaryKeys(a1, "setting proxies to dictionary with keys", Copy);
          CFDictionarySetValue(Mutable, value, Copy);
          if (Copy)
          {
            CFRelease(Copy);
          }

          if (a2)
          {
LABEL_74:
            v38 = *a2;
            if ((*a2 & 2) != 0 && (v38 & 1) == 0 && !*(a1 + 392))
            {
              *a2 = v38 & 0xFFFFFFFFFFFFFFFCLL;
            }
          }

LABEL_97:
          v46 = *(a1 + 312);
          v47 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v48 = v47;
          if (v46)
          {
            if (v47)
            {
              CFDictionarySetValue(v47, *MEMORY[0x1E6982718], *MEMORY[0x1E6982908]);
              v50 = ne_log_obj();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                *&buf[4] = v89;
                v96 = 2112;
                v97 = v48;
                _os_log_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_DEFAULT, "%s: setting primary service dictionary to %@", buf, 0x16u);
              }

              CFDictionarySetValue(Mutable, v91, v48);
              goto LABEL_130;
            }
          }

          else if (v47)
          {
            if ((*(a1 + 312) & 8) != 0)
            {
              v49 = MEMORY[0x1E6982920];
            }

            else if ((*(a1 + 312) & 4) != 0)
            {
              v49 = MEMORY[0x1E6982918];
            }

            else
            {
              if ((*(a1 + 312) & 2) == 0)
              {
LABEL_120:
                v54 = v11;
                v55 = v6;
                v56 = *(a1 + 316);
                if (v56)
                {
                  NEAddIntToDictionary(v48, *MEMORY[0x1E6982720], v56);
                }

                v57 = CFDictionaryGetCount(v48);
                v58 = ne_log_obj();
                v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                if (v57 < 1)
                {
                  v6 = v55;
                  if (v59)
                  {
                    *buf = 136315138;
                    *&buf[4] = v89;
                    _os_log_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_DEFAULT, "%s: removing service dictionary", buf, 0xCu);
                  }

                  CFArrayAppendValue(v8, v91);
                }

                else
                {
                  v6 = v55;
                  if (v59)
                  {
                    *buf = 136315394;
                    *&buf[4] = v89;
                    v96 = 2112;
                    v97 = v48;
                    _os_log_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_DEFAULT, "%s: setting non-primary service dictionary to %@", buf, 0x16u);
                  }

                  CFDictionarySetValue(Mutable, v91, v48);
                }

                v11 = v54;
LABEL_130:
                CFRelease(v48);
                if (*(a1 + 472))
                {
                  v60 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  NetworkServiceEntity = cf;
                  if (!v60)
                  {
                    v12 = 0;
                    goto LABEL_141;
                  }

                  v61 = v60;
                  NEAddIntToDictionary(v60, *MEMORY[0x1E6982858], 7);
                  CFDictionarySetValue(Mutable, v90, v61);
                  CFRelease(v61);
                }

                else
                {
                  CFArrayAppendValue(v8, v90);
                  NetworkServiceEntity = cf;
                }

                v62 = ne_log_large_obj();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = v89;
                  v96 = 2112;
                  v97 = Mutable;
                  _os_log_debug_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_DEBUG, "%s: Setting keys: %@", buf, 0x16u);
                }

                v63 = ne_log_large_obj();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = v89;
                  v96 = 2112;
                  v97 = v8;
                  _os_log_debug_impl(&dword_1BA83C000, v63, OS_LOG_TYPE_DEBUG, "%s: Removing keys: %@", buf, 0x16u);
                }

                v12 = SCDynamicStoreSetMultiple(*(a1 + 496), Mutable, v8, 0);
                if (v12)
                {
                  *(a1 + 312) |= 0x40u;
                }

                goto LABEL_140;
              }

              v49 = MEMORY[0x1E6982910];
            }

            CFDictionarySetValue(v47, *MEMORY[0x1E6982718], *v49);
            goto LABEL_120;
          }

          v12 = 0;
          NetworkServiceEntity = cf;
          goto LABEL_141;
        }
      }
    }

    else
    {
      *buf = *MEMORY[0x1E6982618];
      values[0] = 0;
      valuePtr = 1;
      values[0] = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
      Copy = CFDictionaryCreate(v5, buf, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFRelease(values[0]);
    }

    v11 = v28;
    goto LABEL_66;
  }

  v77 = ne_log_obj();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEVirtualInterfaceUpdateAdHocServiceReturnChanges";
    _os_log_fault_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_FAULT, "%s called with null interface", buf, 0xCu);
  }

  v12 = 0;
LABEL_158:
  v64 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t NEVirtualInterfaceIsStateEqualToDynamicStoreState(const __SCDynamicStore *a1, unint64_t a2, CFStringRef key)
{
  v4 = SCDynamicStoreCopyValue(a1, key);
  if (!(v4 | a2))
  {
    return 1;
  }

  v6 = v4;
  if (v4 && a2)
  {
    v7 = CFEqual(v4, a2);
  }

  else
  {
    v7 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  CFRelease(v6);
  return v7;
}

void NEVirtualInterfaceLogStateDictionaryKeys(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!theDict)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315394;
    v16 = a1 + 265;
    v17 = 2080;
    v18 = a2;
    v13 = "%s: %s: NULL";
LABEL_10:
    _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x16u);
    goto LABEL_11;
  }

  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = 136315394;
    v16 = a1 + 265;
    v17 = 2080;
    v18 = a2;
    v13 = "%s: %s: empty";
    goto LABEL_10;
  }

  v7 = Count;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1BFAF9060](*MEMORY[0x1E695E480], 8 * Count, 0x6004044C4A2DFLL, 0);
  CFDictionaryGetKeysAndValues(theDict, v9, 0);
  v10 = CFArrayCreate(v8, v9, v7, MEMORY[0x1E695E9C0]);
  CFAllocatorDeallocate(v8, v9);
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = a1 + 265;
    v17 = 2080;
    v18 = a2;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "%s: %s: %@", &v15, 0x20u);
  }

  CFRelease(v10);
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
}

_OWORD *NEVirtualInterfaceCreateNexusExtendedWithOptions(const __CFAllocator *a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, const unsigned __int8 *a12, const void *a13)
{
  v57 = *MEMORY[0x1E69E9840];
  Base = NEVirtualInterfaceCreateBase(a1, a2, a3, a4);
  v18 = Base;
  if (!Base)
  {
    goto LABEL_67;
  }

  v52 = a9;
  v53 = a8;
  v50 = a11;
  v51 = a10;
  v19 = *(Base + 32);
  if (v19 != 2)
  {
    if (v19 != 1)
    {
      goto LABEL_64;
    }

    if (a5)
    {
      v20 = xpc_array_create(0, 0);
      bytes = 1;
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v21, "interface-option", 0x14uLL);
      xpc_dictionary_set_data(v21, "interface-option-data", &bytes, 4uLL);
      xpc_array_append_value(v20, v21);
      xpc_release(v21);
      if (a6)
      {
LABEL_6:
        bytes = 4;
        v22 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v22, "interface-option", 1uLL);
        xpc_dictionary_set_data(v22, "interface-option-data", &bytes, 4uLL);
        xpc_array_append_value(v20, v22);
        xpc_release(v22);
      }
    }

    else
    {
      if (a8 | a7 | a9 | a10 | a11)
      {
        v25 = 0;
      }

      else
      {
        v25 = a13 == 0;
      }

      if (v25 && a6 == 0)
      {
        v20 = 0;
        goto LABEL_43;
      }

      v20 = xpc_array_create(0, 0);
      if (a6)
      {
        goto LABEL_6;
      }
    }

    if (a7)
    {
      if (a12 && !uuid_is_null(a12))
      {
        v23 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uuid(v23, "interface-bind-channel-exec-uuid", a12);
      }

      else
      {
        v23 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v23, "interface-bind-channel-pid", 1);
      }

      xpc_dictionary_set_uint64(v23, "interface-type", *(v18 + 32));
      xpc_array_append_value(v20, v23);
      xpc_release(v23);
      bytes = a7;
      v30 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v30, "interface-option", 0x11uLL);
      xpc_dictionary_set_data(v30, "interface-option-data", &bytes, 4uLL);
      xpc_array_append_value(v20, v30);
      xpc_release(v30);
    }

    if (v53)
    {
      v31 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v31, "interface-option", 0x15uLL);
      xpc_dictionary_set_data(v31, "interface-option-data", &v53, 4uLL);
      xpc_array_append_value(v20, v31);
      xpc_release(v31);
    }

    if (v52)
    {
      v32 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v32, "interface-option", 0x16uLL);
      xpc_dictionary_set_data(v32, "interface-option-data", &v52, 4uLL);
      xpc_array_append_value(v20, v32);
      xpc_release(v32);
    }

    if (v51)
    {
      v33 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v33, "interface-option", 0x19uLL);
      xpc_dictionary_set_data(v33, "interface-option-data", &v51, 4uLL);
      xpc_array_append_value(v20, v33);
      xpc_release(v33);
    }

    if (v50)
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v34, "interface-option", 0x1AuLL);
      xpc_dictionary_set_data(v34, "interface-option-data", &v50, 4uLL);
      xpc_array_append_value(v20, v34);
      xpc_release(v34);
    }

    TypeID = CFDictionaryGetTypeID();
    if (a13 && CFGetTypeID(a13) == TypeID)
    {
      v36 = _CFXPCCreateXPCObjectFromCFObject();
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __NEVirtualInterfaceConnectSocket_block_invoke;
      v55 = &__block_descriptor_tmp_60;
      v56 = v20;
      xpc_dictionary_apply(v36, applier);
      xpc_release(v36);
    }

LABEL_43:
    if (a6)
    {
      v37 = 4;
    }

    else
    {
      v37 = 0;
    }

    v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.utun_control", v20, v18 + 265, v18 + 73, v37);
    *(v18 + 74) = v24;
    *(v18 + 72) = a6;
    if (v20)
    {
      v38 = v20;
LABEL_60:
      xpc_release(v38);
      v24 = *(v18 + 74);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  if (!(a8 | a7 | a9 | a10 | a11) && (a5 & 1) == 0)
  {
    v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.ipsec_control", 0, Base + 265, Base + 73, 0);
    *(v18 + 74) = v24;
    goto LABEL_61;
  }

  v27 = xpc_array_create(0, 0);
  if (a5)
  {
    bytes = 1;
    v28 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v28, "interface-option", 0xCuLL);
    xpc_dictionary_set_data(v28, "interface-option-data", &bytes, 4uLL);
    xpc_array_append_value(v27, v28);
    xpc_release(v28);
  }

  if (a7)
  {
    if (a12 && !uuid_is_null(a12))
    {
      v29 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uuid(v29, "interface-bind-channel-exec-uuid", a12);
    }

    else
    {
      v29 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v29, "interface-bind-channel-pid", 1);
    }

    xpc_dictionary_set_uint64(v29, "interface-type", *(v18 + 32));
    xpc_array_append_value(v27, v29);
    xpc_release(v29);
    bytes = a7;
    v39 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v39, "interface-option", 8uLL);
    xpc_dictionary_set_data(v39, "interface-option-data", &bytes, 4uLL);
    xpc_array_append_value(v27, v39);
    xpc_release(v39);
  }

  if (v53)
  {
    v40 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v40, "interface-option", 0xDuLL);
    xpc_dictionary_set_data(v40, "interface-option-data", &v53, 4uLL);
    xpc_array_append_value(v27, v40);
    xpc_release(v40);
  }

  if (v52)
  {
    v41 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v41, "interface-option", 0xEuLL);
    xpc_dictionary_set_data(v41, "interface-option-data", &v52, 4uLL);
    xpc_array_append_value(v27, v41);
    xpc_release(v41);
  }

  if (v51)
  {
    v42 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v42, "interface-option", 0x12uLL);
    xpc_dictionary_set_data(v42, "interface-option-data", &v51, 4uLL);
    xpc_array_append_value(v27, v42);
    xpc_release(v42);
  }

  if (v50)
  {
    v43 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v43, "interface-option", 0x13uLL);
    xpc_dictionary_set_data(v43, "interface-option-data", &v50, 4uLL);
    xpc_array_append_value(v27, v43);
    xpc_release(v43);
  }

  v24 = NEVirtualInterfaceConnectSocketInner("com.apple.net.ipsec_control", v27, v18 + 265, v18 + 73, 0);
  *(v18 + 74) = v24;
  if (v27)
  {
    v38 = v27;
    goto LABEL_60;
  }

LABEL_61:
  if (v24 != -1)
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(v18 + 61);
      *applier = 136315394;
      *&applier[4] = v18 + 265;
      *&applier[12] = 2112;
      *&applier[14] = v45;
      _os_log_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s (%@)", applier, 0x16u);
    }

    goto LABEL_67;
  }

LABEL_64:
  v46 = ne_log_obj();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    *applier = 0;
    _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "Failed to open interface control socket\n", applier, 2u);
  }

  CFRelease(v18);
  v18 = 0;
LABEL_67:
  v47 = *MEMORY[0x1E69E9840];
  return v18;
}

_OWORD *NEVirtualInterfaceCreateBase(const __CFAllocator *a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (__NEVirtualInterfaceInitialize_onceToken != -1)
  {
    dispatch_once(&__NEVirtualInterfaceInitialize_onceToken, &__block_literal_global_65);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "NEVirtualInterfaceCreateBase";
      v31 = 1024;
      v32 = 1250;
      _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", &v29, 0x12u);
    }

    goto LABEL_23;
  }

  v9 = Instance;
  Instance[1] = 0u;
  v10 = (Instance + 1);
  Instance[30] = 0u;
  Instance[31] = 0u;
  Instance[28] = 0u;
  Instance[29] = 0u;
  Instance[26] = 0u;
  Instance[27] = 0u;
  Instance[24] = 0u;
  Instance[25] = 0u;
  Instance[22] = 0u;
  Instance[23] = 0u;
  Instance[20] = 0u;
  Instance[21] = 0u;
  Instance[18] = 0u;
  Instance[19] = 0u;
  Instance[16] = 0u;
  Instance[17] = 0u;
  Instance[14] = 0u;
  Instance[15] = 0u;
  Instance[12] = 0u;
  Instance[13] = 0u;
  Instance[10] = 0u;
  Instance[11] = 0u;
  Instance[8] = 0u;
  Instance[9] = 0u;
  Instance[6] = 0u;
  Instance[7] = 0u;
  Instance[4] = 0u;
  Instance[5] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  v11 = *MEMORY[0x1E695E480];
  v12 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v12)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "NEVirtualInterfaceCreateBase";
      v31 = 1024;
      v32 = 1258;
      v22 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_18:
      v23 = v21;
      v24 = 18;
LABEL_19:
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v22, &v29, v24);
    }

LABEL_22:
    CFRelease(v9);
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  *(v9 + 61) = CFUUIDCreateString(v11, v12);
  CFRelease(v13);
  if (!*(v9 + 61))
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315394;
      v30 = "NEVirtualInterfaceCreateBase";
      v31 = 1024;
      v32 = 1264;
      v22 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    *v10 = a3;
    dispatch_retain(a3);
  }

  *(v9 + 77) = -1;
  *(v9 + 73) = 1;
  *(v9 + 3) = a4;
  *(v9 + 32) = a2;
  v14 = MEMORY[0x1E695E9C0];
  *(v9 + 40) = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  *(v9 + 41) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 42) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 43) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 44) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 45) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 46) = CFArrayCreateMutable(v11, 0, v14);
  *(v9 + 47) = 1;
  *(v9 + 48) = 1;
  *(v9 + 76) = 0;
  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v16 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6982310], *MEMORY[0x1E695E4D0]);
    *(v9 + 62) = SCDynamicStoreCreateWithOptions(a1, @"NEVirtualInterface Helper Session", v16, 0, 0);
    CFRelease(v16);
    if (*(v9 + 62))
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v25 = SCDynamicStoreCreateWithOptions(a1, @"NEVirtualInterface Helper Session", 0, 0, 0);
  *(v9 + 62) = v25;
  if (!v25)
  {
LABEL_21:
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    LOWORD(v29) = 0;
    v22 = "Failed to open dynamic store session\n";
    v23 = v26;
    v24 = 2;
    goto LABEL_19;
  }

LABEL_10:
  v17 = *(v9 + 61);
  v18 = _SCNetworkServiceCopyActive();
  if (v18)
  {
    v19 = v18;
    SCNetworkServiceSetPrimaryRank();
    CFRelease(v19);
  }

LABEL_24:
  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __NEVirtualInterfaceConnectSocket_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v6, a2, a3);
  xpc_array_append_value(*(a1 + 32), v6);
  xpc_release(v6);
  return 1;
}

uint64_t NEVirtualInterfaceConnectSocketInner(uint64_t a1, uint64_t a2, char *a3, unsigned int *a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 1;
  KernelControlSocketExtended = NEHelperGetKernelControlSocketExtended();
  v9 = KernelControlSocketExtended;
  if ((KernelControlSocketExtended & 0x80000000) != 0)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Cannot get kernel control socket from NEHelper\n", buf, 2u);
    }

    if (v9 == -1)
    {
      if (!a4)
      {
LABEL_13:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

LABEL_12:
      *a4 = 0;
      goto LABEL_13;
    }

LABEL_16:
    close(v9);
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (ioctl(KernelControlSocketExtended, 0x8004667EuLL, &v21) == -1)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v18 = *__error();
    *buf = 67109120;
    v23 = v18;
    v12 = "FIONBIO failed: %d\n";
    goto LABEL_23;
  }

  if (!virtual_interface_get_properties(v9, a3, a4, 0, 0))
  {
    goto LABEL_16;
  }

  if (a5)
  {
    v19 = 0;
    v20 = 4;
    if (getsockopt(v9, 2, 1, &v19, &v20))
    {
      v10 = ne_log_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v11 = *__error();
      *buf = 67109120;
      v23 = v11;
      v12 = "getsockopt flags failed on kernel control socket (errno = %d)\n";
LABEL_23:
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v12, buf, 8u);
      goto LABEL_16;
    }

    if ((a5 & ~v19) != 0)
    {
      v19 |= a5;
      v20 = 4;
      if (setsockopt(v9, 2, 1, &v19, 4u))
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = *__error();
          *buf = 67109120;
          v23 = v17;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "setsockopt flags failed on kernel control socket (errno = %d)\n", buf, 8u);
        }

        goto LABEL_16;
      }
    }
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t virtual_interface_get_properties(int a1, char *a2, unsigned int *a3, uint64_t *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 24;
  if (!a2)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v25 = 0;
      v26 = 1024;
      v27 = 24;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Provider name buffer is invalid (%p, %u)", buf, 0x12u);
    }

    goto LABEL_8;
  }

  if (*a2)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      if (a3)
      {
        *a3 = if_nametoindex(a2);
      }

      if (a4)
      {
        if (!strncmp(a2, "utun", 4uLL))
        {
          v14 = 1;
        }

        else if (!strncmp(a2, "ipsec", 5uLL))
        {
          v14 = 2;
        }

        else
        {
          v13 = strncmp(a2, "utap", 4uLL);
          v14 = 3;
          if (v13)
          {
            v14 = 0;
          }
        }

        *a4 = v14;
      }

      if (!a5 || (v22 = 4, !getsockopt(a1, 2, 1, a5, &v22)))
      {
        result = 1;
        goto LABEL_31;
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = *__error();
        *buf = 67109120;
        LODWORD(v25) = v20;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "getsockopt flags failed on kernel control socket (errno = %d)\n", buf, 8u);
      }

      goto LABEL_29;
    }

    *buf = 136315138;
    v25 = a2;
    v11 = "Using interface name %s";
LABEL_5:
    _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
    goto LABEL_8;
  }

  v15 = getsockopt(a1, 2, 2, a2, &v23);
  v16 = ne_log_obj();
  v10 = v16;
  if (!v15)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    *buf = 136315138;
    v25 = a2;
    v11 = "getsockopt(UTUN_OPT_IFNAME) returned virtual interface name %s";
    goto LABEL_5;
  }

  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v21 = *__error();
  *buf = 67109120;
  LODWORD(v25) = v21;
  _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "getsockopt ifname failed on kernel control socket (errno = %d)\n", buf, 8u);
  if (a3)
  {
LABEL_19:
    *a3 = 0;
  }

LABEL_20:
  if (!a4)
  {
LABEL_29:
    result = 0;
    goto LABEL_31;
  }

  result = 0;
  *a4 = 0;
LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__NEVirtualInterfaceCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<NEVirtualInterface, %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

void NEVirtualInterfaceTearDown(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315138;
    v31 = a1 + 265;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Tearing down %s", &v30, 0xCu);
  }

  if (a1)
  {
    v3 = *(a1 + 488);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 488) = 0;
    }

    v4 = *(a1 + 496);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 496) = 0;
    }

    v5 = *(a1 + 320);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 320) = 0;
    }

    v6 = *(a1 + 328);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 328) = 0;
    }

    v7 = *(a1 + 336);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 336) = 0;
    }

    v8 = *(a1 + 344);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 344) = 0;
    }

    v9 = *(a1 + 352);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 352) = 0;
    }

    v10 = *(a1 + 360);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 360) = 0;
    }

    v11 = *(a1 + 368);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 368) = 0;
    }

    v12 = *(a1 + 416);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 416) = 0;
    }

    v13 = *(a1 + 432);
    if (v13)
    {
      CFRelease(v13);
      *(a1 + 432) = 0;
    }

    v14 = *(a1 + 424);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 424) = 0;
    }

    v15 = *(a1 + 392);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 392) = 0;
    }

    v16 = *(a1 + 400);
    if (v16)
    {
      CFRelease(v16);
      *(a1 + 400) = 0;
    }

    v17 = *(a1 + 448);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 448) = 0;
    }

    v18 = *(a1 + 456);
    if (v18)
    {
      CFRelease(v18);
      *(a1 + 456) = 0;
    }

    v19 = *(a1 + 464);
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 464) = 0;
    }

    v20 = *(a1 + 472);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 472) = 0;
    }

    v21 = *(a1 + 480);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 480) = 0;
    }

    NEVirtualInterfaceDisableChannel(a1);
    if (*(a1 + 256) != 2)
    {
      NEVirtualInterfaceAdjustReadBufferSize(a1, 0);
      NEVirtualInterfaceAdjustSendCount(a1, 0);
    }

    v22 = *(a1 + 308);
    if (v22 != -1)
    {
      close(v22);
      *(a1 + 308) = -1;
    }

    v23 = *(a1 + 32);
    if (v23)
    {
      _Block_release(v23);
      *(a1 + 32) = 0;
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      _Block_release(v24);
      *(a1 + 48) = 0;
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      _Block_release(v25);
      *(a1 + 40) = 0;
    }

    v26 = *(a1 + 16);
    if (v26)
    {
      dispatch_release(v26);
      *(a1 + 16) = 0;
    }

    v27 = *(a1 + 296);
    if (v27 != -1)
    {
      close(v27);
      *(a1 + 296) = -1;
    }

    v28 = *(a1 + 504);
    if (v28)
    {
      CFRelease(v28);
      *(a1 + 504) = 0;
    }

    if (*(a1 + 256) == 4)
    {
      NEHelperInterfaceDestroy();
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

BOOL NEVirtualInterfaceDisableChannel(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = ne_log_obj();
    result = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_12;
    }

    *__strerrbuf = 136315138;
    v22 = "NEVirtualInterfaceDisableChannel";
    v7 = "%s called with null interface";
    v8 = __strerrbuf;
    v9 = v11;
    v10 = 12;
    goto LABEL_14;
  }

  if ((*(a1 + 312) & 0x10) == 0)
  {
    goto LABEL_11;
  }

  *(a1 + 312) &= ~0x10u;
  if ((*(a1 + 256) - 1) < 2)
  {
    goto LABEL_11;
  }

  v1 = *(a1 + 296);
  v12 = 0;
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *__strerrbuf = 136315394;
    v22 = "NEVirtualInterfaceGetEnableChannelOption";
    v23 = 1024;
    v24 = 1655;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", __strerrbuf, 0x12u);
  }

  if (!setsockopt(v1, 2, 0, &v12, 4u))
  {
LABEL_11:
    result = 1;
    goto LABEL_12;
  }

  v3 = *__error();
  if (strerror_r(v3, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 67109890;
    v14 = v1;
    v15 = 1024;
    v16 = 0;
    v17 = 1024;
    v18 = v3;
    v19 = 2080;
    v20 = __strerrbuf;
    v7 = "setsockopt(%d, SYSPROTO_CONTROL, %d, disable): [%d] %s";
    v8 = buf;
    v9 = v4;
    v10 = 30;
LABEL_14:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v7, v8, v10);
  }

  result = 0;
LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceAdjustReadBufferSize(uint64_t a1, unsigned int a2)
{
  *&v35[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 256) != 2)
  {
    v31 = 16000;
    if (interface_get_mtu(a1 + 265, &v31, (a1 + 308)))
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v24 = *__error();
        *buf = 136315394;
        v33 = "NEVirtualInterfaceAdjustReadBufferSize";
        v34 = 1024;
        *v35 = v24;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%s: interface_get_mtu failed (%d), defaulting to max mtu", buf, 0x12u);
      }

      v7 = 16020;
    }

    else
    {
      v7 = v31 + 20;
    }

    LODWORD(v8) = *(a1 + 96);
    v9 = *(a1 + 88);
    if (v8 == a2 && v7 == v9)
    {
      goto LABEL_17;
    }

    *(a1 + 88) = v7;
    if (v7 != v9 && v8)
    {
      v10 = 0;
      while (1)
      {
        v11 = malloc_type_realloc(*(*(a1 + 80) + 8 * v10), *(a1 + 88), 0xB9532D18uLL);
        if (!v11)
        {
          break;
        }

        *(*(a1 + 80) + 8 * v10++) = v11;
        v8 = *(a1 + 96);
        if (v10 >= v8)
        {
          goto LABEL_16;
        }
      }

      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 88);
        *buf = 136315394;
        v33 = "NEVirtualInterfaceAdjustReadBufferSize";
        v34 = 2048;
        *v35 = v30;
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%s: failed to change read buffer size (length=%zu)", buf, 0x16u);
      }

      v17 = *(a1 + 96);
      v18 = a1;
      goto LABEL_51;
    }

LABEL_16:
    *(a1 + 96) = a2;
    if (v8 == a2)
    {
LABEL_17:
      result = 1;
      goto LABEL_18;
    }

    if (NEVirtualInterfaceAdjustMetadataBufferSize(a1, v8, a2))
    {
      v13 = *(a1 + 96);
      if (v8 >= v13)
      {
        if (v13 < v8)
        {
          do
          {
            free(*(*(a1 + 80) + 8 * v13++));
          }

          while (v8 != v13);
          LODWORD(v13) = *(a1 + 96);
        }

        v22 = *(a1 + 80);
        if (!v13)
        {
          free(v22);
          *(a1 + 80) = 0;
          goto LABEL_17;
        }

        v23 = malloc_type_realloc(v22, 8 * v13, 0x10040436913F5uLL);
        if (v23)
        {
          *(a1 + 80) = v23;
          goto LABEL_17;
        }

        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "NEVirtualInterfaceAdjustReadBufferSize";
          v34 = 1024;
          *v35 = a2;
          v26 = "%s: failed to reduce read buffer (cnt=%d)";
          v28 = v27;
          v29 = 18;
LABEL_49:
          _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, v26, buf, v29);
        }
      }

      else
      {
        v14 = malloc_type_realloc(*(a1 + 80), 8 * v13, 0x10040436913F5uLL);
        if (v14)
        {
          *(a1 + 80) = v14;
          bzero(&v14[8 * v8], 8 * (*(a1 + 96) - v8));
          if (v8 >= *(a1 + 96))
          {
            goto LABEL_17;
          }

          v15 = v8;
          while (1)
          {
            *(*(a1 + 80) + 8 * v15) = malloc_type_malloc(*(a1 + 88), 0xCC166E25uLL);
            if (!*(*(a1 + 80) + 8 * v15))
            {
              break;
            }

            ++v15;
            result = 1;
            if (v15 >= *(a1 + 96))
            {
              goto LABEL_18;
            }
          }

          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v33 = "NEVirtualInterfaceAdjustReadBufferSize";
            v34 = 1024;
            *v35 = a2;
            v35[2] = 1024;
            *&v35[3] = v8;
            v26 = "%s: failed to allocate read buffers (cnt=%d, prev=%d)";
            goto LABEL_48;
          }
        }

        else
        {
          v25 = ne_log_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v33 = "NEVirtualInterfaceAdjustReadBufferSize";
            v34 = 1024;
            *v35 = a2;
            v35[2] = 1024;
            *&v35[3] = v8;
            v26 = "%s: failed to allocate read buffer (cnt=%d, prev=%d)";
LABEL_48:
            v28 = v25;
            v29 = 24;
            goto LABEL_49;
          }
        }
      }

      v18 = a1;
      v17 = v8;
LABEL_51:
      NEVirtualInterfaceCleanupBuffersOnFailure(v18, v17);
      goto LABEL_52;
    }

    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "NEVirtualInterfaceAdjustReadBufferSize";
      v34 = 1024;
      *v35 = a2;
      v35[2] = 1024;
      *&v35[3] = v8;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s: failed to alloc metadata buffer (cnt=%d, prev=%d)", buf, 0x18u);
      if (v8)
      {
LABEL_32:
        v20 = 0;
        v21 = 8 * v8;
        do
        {
          free(*(*(a1 + 80) + v20));
          v20 += 8;
        }

        while (v21 != v20);
      }
    }

    else if (v8)
    {
      goto LABEL_32;
    }

    free(*(a1 + 80));
    result = 0;
    *(a1 + 80) = 0;
    goto LABEL_18;
  }

  v2 = ne_log_obj();
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315394;
    v33 = "NEVirtualInterfaceAdjustReadBufferSize";
    v34 = 1024;
    *v35 = 2068;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
LABEL_52:
    result = 0;
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t interface_get_mtu(uint64_t a1, _DWORD *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  if (*a3 == -1)
  {
    v5 = socket(2, 2, 0);
    *a3 = v5;
    if (v5 < 0)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315138;
        v15 = v13;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Failed to create ioctl socket to get MTU: %s", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

  __strlcpy_chk();
  LODWORD(v17) = 0;
  if (ioctl(*a3, 0xC0206933uLL, &v16) < 0)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136315138;
      v15 = v11;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "SIOCGIFMTU failed: %s", buf, 0xCu);
    }

    close(*a3);
    *a3 = -1;
LABEL_10:
    result = *__error();
    goto LABEL_11;
  }

  result = 0;
  *a2 = v17;
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceCleanupBuffersOnFailure(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v4 = 0;
    v5 = 8 * a2;
    do
    {
      free(*(*(a1 + 80) + v4));
      v4 += 8;
    }

    while (v5 != v4);
  }

  free(*(a1 + 80));
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;

  return NEVirtualInterfaceAdjustMetadataBufferSize(a1, a2, 0);
}

uint64_t NEVirtualInterfaceAdjustMetadataBufferSize(uint64_t a1, int a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    result = 1;
    goto LABEL_31;
  }

  v5 = *(a1 + 104);
  if (!a3)
  {
    free(v5);
    *(a1 + 104) = 0;
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 128));
    *(a1 + 128) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 144));
    *(a1 + 144) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    free(*(a1 + 168));
    *(a1 + 168) = 0;
    free(*(a1 + 176));
    *(a1 + 176) = 0;
    free(*(a1 + 184));
    *(a1 + 184) = 0;
    free(*(a1 + 192));
    *(a1 + 192) = 0;
    free(*(a1 + 200));
    result = 1;
    v10 = (a1 + 200);
LABEL_30:
    *v10 = 0;
    goto LABEL_31;
  }

  v6 = a3;
  *(a1 + 104) = reallocf(v5, 4 * a3);
  v7 = *(a1 + 112);
  if (*(a1 + 72))
  {
    v8 = 16 * v6;
    v9 = reallocf(v7, 16 * v6);
  }

  else
  {
    free(v7);
    v9 = 0;
    v8 = 16 * v6;
  }

  *(a1 + 112) = v9;
  *(a1 + 120) = reallocf(*(a1 + 120), 8 * v6);
  *(a1 + 128) = reallocf(*(a1 + 128), 8 * v6);
  *(a1 + 136) = reallocf(*(a1 + 136), 8 * v6);
  *(a1 + 144) = reallocf(*(a1 + 144), 8 * v6);
  *(a1 + 152) = reallocf(*(a1 + 152), 8 * v6);
  *(a1 + 160) = reallocf(*(a1 + 160), 8 * v6);
  *(a1 + 168) = reallocf(*(a1 + 168), 28 * v6);
  *(a1 + 176) = reallocf(*(a1 + 176), 28 * v6);
  *(a1 + 184) = reallocf(*(a1 + 184), v6);
  v11 = 1;
  if (*(a1 + 256) == 1)
  {
    v11 = 2;
  }

  if (*(a1 + 72))
  {
    ++v11;
  }

  *(a1 + 192) = reallocf(*(a1 + 192), v8 * v11);
  v10 = (a1 + 200);
  *(a1 + 200) = reallocf(*(a1 + 200), 56 * v6);
  if (!*(a1 + 104) || !*(a1 + 120) || *(a1 + 72) && !*(a1 + 112) || !*(a1 + 128) || !*(a1 + 136) || !*(a1 + 144) || !*(a1 + 152) || !*(a1 + 160) || !*(a1 + 168) || !*(a1 + 176) || !*(a1 + 184))
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "NEVirtualInterfaceAdjustMetadataBufferSize";
      v18 = 1024;
      v19 = 2031;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", &v16, 0x12u);
    }

    free(*(a1 + 104));
    *(a1 + 104) = 0;
    free(*(a1 + 112));
    *(a1 + 112) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 128));
    *(a1 + 128) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 144));
    *(a1 + 144) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    free(*(a1 + 168));
    *(a1 + 168) = 0;
    free(*(a1 + 176));
    *(a1 + 176) = 0;
    free(*(a1 + 184));
    *(a1 + 184) = 0;
    free(*(a1 + 192));
    *(a1 + 192) = 0;
    free(*(a1 + 200));
    result = 0;
    goto LABEL_30;
  }

  v12 = 0;
  v13 = 0;
  result = 1;
  do
  {
    *(*(a1 + 152) + 8 * v13) = *(a1 + 168) + v12;
    *(*(a1 + 160) + 8 * v13++) = *(a1 + 176) + v12;
    v12 += 28;
  }

  while (v6 != v13);
LABEL_31:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *NEVirtualInterfaceCreateUserEthernet(const __CFAllocator *a1, NSObject *a2, uint64_t a3, int a4, const char *a5, const void *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  Base = NEVirtualInterfaceCreateBase(a1, 3, a2, a3);
  if (Base)
  {
    v10 = dup(a4);
    *(Base + 74) = v10;
    if (v10 < 0)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        v17 = strerror(*v16);
        v18 = 136315138;
        v19 = v17;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Failed to dup the user ethernet control socket: %s", &v18, 0xCu);
      }

      CFRelease(Base);
      Base = 0;
    }

    else
    {
      __strlcpy_chk();
      *(Base + 73) = if_nametoindex(a5);
      *(Base + 72) = 0;
      *(Base + 264) = 0;
      if (a6)
      {
        CFRetain(a6);
        *(Base + 63) = a6;
      }

      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(Base + 61);
        v18 = 136315394;
        v19 = Base + 265;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s (%@)", &v18, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return Base;
}

char *NEVirtualInterfaceCreateRedirectInner(const __CFAllocator *a1, NSObject *a2, const __CFString *a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      Base = 0;
      goto LABEL_11;
    }

    *buffer = 0;
    v14 = "interface name is NULL";
    v15 = v13;
    v16 = 2;
LABEL_14:
    _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v14, buffer, v16);
    goto LABEL_10;
  }

  if ((a4 - 1) >= 3)
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buffer = 67109120;
    *&buffer[4] = a4;
    v14 = "invalid interface type %u";
    v15 = v17;
    v16 = 8;
    goto LABEL_14;
  }

  Base = NEVirtualInterfaceCreateBase(a1, 4, a2, a5);
  if (!Base)
  {
    goto LABEL_11;
  }

  *buffer = 0;
  v25 = 0;
  v26 = 0;
  CFStringGetCString(a3, buffer, 24, 0x8000100u);
  v8 = NEHelperInterfaceCreate();
  if (!v8)
  {
    CFRelease(Base);
    goto LABEL_10;
  }

  v9 = v8;
  string_ptr = xpc_string_get_string_ptr(v8);
  __strlcpy_chk();
  *(Base + 73) = if_nametoindex(string_ptr);
  Base[72] = 0;
  Base[264] = 0;
  *(Base + 74) = -1;
  xpc_release(v9);
  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(Base + 61);
    v20 = 136315394;
    v21 = Base + 265;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s (%@)", &v20, 0x16u);
  }

LABEL_11:
  v18 = *MEMORY[0x1E69E9840];
  return Base;
}

char *NEVirtualInterfaceCreateRedirectFromName(const __CFAllocator *a1, CFStringRef theString, NSObject *a3, int a4, NSObject *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((a4 - 1) >= 3)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      Base = 0;
      goto LABEL_12;
    }

    *buffer = 67109120;
    *&buffer[4] = a4;
    v14 = "invalid interface type %u";
    v15 = v13;
    v16 = 8;
LABEL_15:
    _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v14, buffer, v16);
    goto LABEL_11;
  }

  if (!theString || !CFStringHasPrefix(theString, @"rd"))
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buffer = 0;
    v14 = "invalid interface name";
    v15 = v17;
    v16 = 2;
    goto LABEL_15;
  }

  *buffer = 0;
  v25 = 0;
  v26 = 0;
  CFStringGetCString(theString, buffer, 24, 0x8000100u);
  if (NEIsValidInterface(buffer))
  {
    Base = NEVirtualInterfaceCreateBase(a1, 4, a3, a5);
    if (Base)
    {
      __strlcpy_chk();
      *(Base + 73) = if_nametoindex(Base + 265);
      Base[72] = 0;
      Base[264] = 0;
      *(Base + 74) = -1;
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(Base + 61);
        v20 = 136315394;
        v21 = Base + 265;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s (%@)", &v20, 0x16u);
      }
    }
  }

  else
  {
    Base = NEVirtualInterfaceCreateRedirectInner(a1, a5, theString, a4, a5);
  }

LABEL_12:
  v18 = *MEMORY[0x1E69E9840];
  return Base;
}

uint64_t NEVirtualInterfaceCreateFromSocketAndName(uint64_t a1, int a2, uint64_t a3, unint64_t a4, NSObject *a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1567;
LABEL_21:
      _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
    }

LABEL_38:
    v12 = 0;
    goto LABEL_39;
  }

  if (__NEVirtualInterfaceInitialize_onceToken != -1)
  {
    dispatch_once(&__NEVirtualInterfaceInitialize_onceToken, &__block_literal_global_65);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1575;
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  v12 = Instance;
  *(Instance + 16) = 0u;
  v13 = (Instance + 16);
  *(Instance + 480) = 0u;
  *(Instance + 496) = 0u;
  *(Instance + 448) = 0u;
  *(Instance + 464) = 0u;
  *(Instance + 416) = 0u;
  *(Instance + 432) = 0u;
  *(Instance + 384) = 0u;
  *(Instance + 400) = 0u;
  *(Instance + 352) = 0u;
  *(Instance + 368) = 0u;
  *(Instance + 320) = 0u;
  *(Instance + 336) = 0u;
  *(Instance + 288) = 0u;
  *(Instance + 304) = 0u;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 308) = -1;
  *(Instance + 264) = 1;
  *(Instance + 73) = 1;
  *(Instance + 296) = a2;
  v25 = 0;
  if (a3)
  {
    __strlcpy_chk();
  }

  v14 = (v12 + 256);
  v15 = (v12 + 256);
  if (a4)
  {
    v15 = 0;
    *v14 = a4;
  }

  if (a4 >= 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = &v25;
  }

  if (!virtual_interface_get_properties(*(v12 + 296), (v12 + 265), (v12 + 292), v15, v16))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1604;
      goto LABEL_36;
    }

LABEL_37:
    CFRelease(v12);
    goto LABEL_38;
  }

  if (*v14 == 1)
  {
    if ((v25 & 4) != 0)
    {
      *(v12 + 72) = 1;
    }
  }

  else if (!*v14)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1609;
LABEL_36:
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  if (!v20)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1620;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v21 = v20;
  *(v12 + 488) = CFUUIDCreateString(v19, v20);
  CFRelease(v21);
  if (!*(v12 + 488))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "NEVirtualInterfaceCreateFromSocketAndName";
      v28 = 1024;
      v29 = 1626;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (a5)
  {
    *v13 = a5;
    dispatch_retain(a5);
  }

  *(v12 + 24) = a6;
  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = (v12 + 265);
    _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEFAULT, "Created a new NEVirtualInterface %s from socket", buf, 0xCu);
  }

LABEL_39:
  v23 = *MEMORY[0x1E69E9840];
  return v12;
}

const __CFArray *NEVirtualInterfaceGetNexusInstance(uint64_t a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = ne_log_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_6;
    }

    *v11 = 136315138;
    *&v11[4] = "NEVirtualInterfaceGetNexusInstance";
    _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null interface", v11, 0xCu);
    goto LABEL_8;
  }

  result = NEVirtualInterfaceCopyNexusInstances(a1, 1u);
  if (result)
  {
    v4 = result;
    Count = CFArrayGetCount(result);
    if (Count == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      *v11 = CFUUIDGetUUIDBytes(ValueAtIndex);
      uuid_copy(a2, v11);
      CFRelease(v4);
      result = 1;
      goto LABEL_6;
    }

    v7 = Count;
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_6;
    }

    *v11 = 0x104000200;
    *&v11[8] = 2048;
    *&v11[10] = v7;
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Received unexpected number of channels (%d != %ld)", v11, 0x12u);
LABEL_8:
    result = 0;
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *NEVirtualInterfaceCopyNexusInstances(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "NEVirtualInterfaceCopyNexusInstances";
      _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "%s called with null interface", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v4 = *(a1 + 256);
  if (v4 == 2)
  {
    v5 = 9;
  }

  else
  {
    if (v4 != 1)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "NEVirtualInterfaceGetEnableChannelOption";
        v28 = 1024;
        v29 = 1655;
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      }

      if ((*(a1 + 256) - 1) >= 2)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "NEVirtualInterfaceGetChannelOption";
          v28 = 1024;
          v29 = 1671;
          _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
        }
      }

      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "NEVirtualInterfaceCopyNexusInstances";
        v28 = 1024;
        v29 = 1718;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      }

      goto LABEL_21;
    }

    v5 = 18;
  }

  v6 = *(a1 + 296);
  v25 = 16 * a2;
  v7 = malloc_type_calloc(1uLL, 16 * a2, 0x90344B37uLL);
  if (!v7)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "calloc failed", buf, 2u);
    }

    NEVirtualInterfaceDisableChannel(a1);
    goto LABEL_21;
  }

  v8 = v7;
  if (getsockopt(v6, 2, v5, v7, &v25))
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 67109120;
      LODWORD(v27) = v23;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "getsockopt GET_CHANNEL_UUID failed (errno %d)\n", buf, 8u);
    }

    NEVirtualInterfaceDisableChannel(a1);
    free(v8);
LABEL_21:
    Mutable = 0;
    goto LABEL_22;
  }

  *(a1 + 312) |= 0x10u;
  v17 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v18 = a2;
    v19 = v8 + 8;
    do
    {
      v20 = CFUUIDCreateFromUUIDBytes(v17, *(v19 - 8));
      if (v20)
      {
        v21 = v20;
        CFArrayAppendValue(Mutable, v20);
        CFRelease(v21);
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = Mutable;
    _os_log_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_INFO, "nexus instances created: %@", buf, 0xCu);
  }

  free(v8);
LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t NEVirtualInterfaceCreateChannel(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    LODWORD(v13) = 136315138;
    *(&v13 + 4) = "NEVirtualInterfaceCreateChannel";
    v6 = "%s called with null interface";
    v7 = &v13;
    v8 = v11;
    v9 = 12;
    goto LABEL_11;
  }

  v13 = 0uLL;
  if (!NEVirtualInterfaceGetNexusInstance(a1, &v13))
  {
    v4 = ne_log_obj();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
LABEL_8:
      result = 0;
      goto LABEL_9;
    }

    LOWORD(v12[0]) = 0;
    v6 = "NEVirtualInterfaceGetNexusInstance failed";
    v7 = v12;
    v8 = v4;
    v9 = 2;
LABEL_11:
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, v6, v7, v9);
    goto LABEL_8;
  }

  result = nw_channel_create_with_nexus();
  if (!result)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = *__error();
      v12[0] = 67109120;
      v12[1] = v10;
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "nw_channel_create_with_nexus failed (errno %d)", v12, 8u);
    }

    NEVirtualInterfaceDisableChannel(a1);
    goto LABEL_8;
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceEnableFlowswitch(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    result = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_11;
    }

    *buf = 136315138;
    v17 = "NEVirtualInterfaceEnableFlowswitch";
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null interface", buf, 0xCu);
    goto LABEL_14;
  }

  v3 = *(a1 + 296);
  v15 = a2 != 0;
  v4 = *(a1 + 256);
  if (v4 == 1)
  {
    v5 = 19;
  }

  else
  {
    if (v4 != 2)
    {
      v7 = ne_log_obj();
      result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_11;
      }

      *buf = 136315394;
      v17 = "NEVirtualInterfaceEnableFlowswitch";
      v18 = 1024;
      v19 = 1930;
      v8 = "NEVirtualInterface Failure in %s at line %d.";
      v9 = v7;
      v10 = 18;
      goto LABEL_13;
    }

    v5 = 10;
  }

  if (setsockopt(v3, 2, v5, &v15, 4u) == -1)
  {
    v11 = ne_log_obj();
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_11;
    }

    v13 = *__error();
    *buf = 67109120;
    LODWORD(v17) = v13;
    v8 = "setsockopt ENABLE_FLOWSWITCH failed (errno = %d)\n";
    v9 = v11;
    v10 = 8;
LABEL_13:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
LABEL_14:
    result = 0;
    goto LABEL_11;
  }

  result = 1;
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceNameIsVPN(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_10;
    }

    *v12 = 136315138;
    *&v12[4] = "NEVirtualInterfaceNameIsVPN";
    _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null interfaceName", v12, 0xCu);
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v4 = socket(30, 2, 0);
  if (v4 < 0)
  {
    goto LABEL_9;
  }

  v5 = v4;
  *v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  LOBYTE(v13) = a2 != 0;
  if (ioctl(v5, 0xC02069DFuLL, v12) < 0)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = a1;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to set is VPN flag for interface %s", buf, 0xCu);
    }
  }

  close(v5);
  result = 1;
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceIsVPN(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *MEMORY[0x1E69E9840];
    v3 = a1 + 265;

    return NEVirtualInterfaceNameIsVPN(v3, a2);
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = "NEVirtualInterfaceIsVPN";
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null interface", &v7, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

void NEVirtualInterfaceInvalidate(uint64_t a1)
{
  if (a1 && (*(a1 + 312) & 0x20) == 0)
  {
    *(a1 + 312) |= 0x20u;
    v1 = *(a1 + 64);
    if (v1)
    {
      *(a1 + 64) = 0;
      if (*(a1 + 74))
      {
        *(a1 + 74) = 0;
        dispatch_resume(v1);
      }

      dispatch_source_cancel(v1);
    }

    else
    {

      NEVirtualInterfaceTearDown(a1);
    }
  }
}

BOOL NEVirtualInterfaceSetBothReadIPPacketHandlers(void *a1, const void *a2, const void *a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPacketHandlers";
      v19 = 1024;
      v20 = 2419;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

LABEL_32:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a1[32] == 2)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPacketHandlers";
      v19 = 1024;
      v20 = 2423;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_29:
      v11 = v5;
      v12 = 18;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (!a4)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPacketHandlers";
      v19 = 1024;
      v20 = 2427;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (a2 && a3)
  {
    v10 = ne_log_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315138;
      v18 = "NEVirtualInterfaceSetBothReadIPPacketHandlers";
      v7 = "%s: Error: cannot set both single and mutliple packet handlers";
      v11 = v10;
      v12 = 12;
LABEL_30:
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v7, &v17, v12);
      result = 0;
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (!NEVirtualInterfaceAdjustReadBufferSize(a1, a4))
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPacketHandlers";
      v19 = 1024;
      v20 = 2436;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  v13 = a1[4];
  if (v13)
  {
    _Block_release(v13);
    a1[4] = 0;
  }

  v14 = a1[6];
  if (v14)
  {
    _Block_release(v14);
    a1[6] = 0;
  }

  if (a2)
  {
    a1[4] = _Block_copy(a2);
  }

  if (a3)
  {
    a1[6] = _Block_copy(a3);
  }

  if (!a1[2])
  {
    result = 1;
    goto LABEL_32;
  }

  v15 = *MEMORY[0x1E69E9840];

  return NEVirtualInterfaceCreateReadSource(a1);
}

BOOL NEVirtualInterfaceCreateReadSource(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 256) != 2)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = *(a1 + 74);
      *(a1 + 208) = *(a1 + 96);
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 1;
      if (ioctl(*(a1 + 296), 0x8004667EuLL, &v15) == -1)
      {
        v10 = ne_log_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        v11 = *__error();
        *buf = 67109120;
        v17 = v11;
        v3 = "FIONBIO failed: %d\n";
        v4 = v10;
        v5 = 8;
LABEL_5:
        _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, v3, buf, v5);
LABEL_17:
        result = 0;
        goto LABEL_18;
      }

      v9 = dispatch_source_create(MEMORY[0x1E69E96F8], *(a1 + 296), 0, *(a1 + 16));
      if (!v9)
      {
        v1 = ne_log_obj();
        if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v3 = "NEVirtualInterface could not create read source\n";
        goto LABEL_4;
      }

      v7 = v9;
      CFRetain(a1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __NEVirtualInterfaceCreateReadSource_block_invoke;
      handler[3] = &__block_descriptor_tmp_73;
      handler[4] = a1;
      handler[5] = v7;
      dispatch_source_set_cancel_handler(v7, handler);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __NEVirtualInterfaceCreateReadSource_block_invoke_2;
      v13[3] = &__block_descriptor_tmp_74;
      v13[4] = a1;
      dispatch_source_set_event_handler(v7, v13);
      *(a1 + 64) = v7;
      *(a1 + 208) = *(a1 + 96);
    }

    *(a1 + 74) = 0;
    dispatch_resume(v7);
LABEL_13:
    result = 1;
    goto LABEL_18;
  }

  v1 = ne_log_obj();
  result = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v3 = "Invalid interface type for creating read source\n";
LABEL_4:
    v4 = v1;
    v5 = 2;
    goto LABEL_5;
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __NEVirtualInterfaceCreateReadSource_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 74))
  {
    *(v2 + 74) = 0;
    dispatch_resume(*(a1 + 40));
  }

  dispatch_release(*(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    NEVirtualInterfaceTearDown(v3);
    v4 = *(a1 + 32);

    CFRelease(v4);
  }
}

BOOL NEVirtualInterfaceSetReadMultipleIPPacketsHandler(void *a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (NEVirtualInterfaceGetMaxPendingPackets(a1, &v7))
  {
    result = NEVirtualInterfaceSetBothReadIPPacketHandlers(a1, 0, a2, v7);
  }

  else
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      v9 = "NEVirtualInterfaceSetReadMultipleIPPacketsHandler";
      v10 = 1024;
      v11 = 2474;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceGetMaxPendingPackets(uint64_t a1, int *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v19 = "NEVirtualInterfaceGetMaxPendingPackets";
    v20 = 1024;
    LODWORD(v21) = 3160;
    v7 = "NEVirtualInterface Failure in %s at line %d.";
    goto LABEL_21;
  }

  v3 = *(a1 + 256);
  if (v3 == 1)
  {
    v16 = 4;
    v17 = 0;
    v8 = getsockopt(*(a1 + 296), 2, 16, &v17, &v16);
    if (v8)
    {
      v9 = v8;
      v10 = ne_log_obj();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_14;
      }

      v11 = strerror(v9);
      *buf = 136315394;
      v19 = "NEVirtualInterfaceGetMaxPendingPackets";
      v20 = 2080;
      v21 = v11;
      v7 = "%s failed to get max pending packets: %s\n";
      v12 = v10;
      v13 = 22;
    }

    else
    {
      if (v16 == 4)
      {
        if (!a2)
        {
          goto LABEL_7;
        }

        v4 = v17;
        goto LABEL_6;
      }

      v15 = ne_log_obj();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_14;
      }

      *buf = 136315138;
      v19 = "NEVirtualInterfaceGetMaxPendingPackets";
      v7 = "%s failed to get correct output length when getting max pending packets\n";
      v12 = v15;
      v13 = 12;
    }

LABEL_22:
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v7, buf, v13);
    result = 0;
    goto LABEL_14;
  }

  if (v3 != 3)
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_14;
    }

    *buf = 136315394;
    v19 = "NEVirtualInterfaceGetMaxPendingPackets";
    v20 = 1024;
    LODWORD(v21) = 3172;
    v7 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_21:
    v12 = v6;
    v13 = 18;
    goto LABEL_22;
  }

  if (a2)
  {
    v4 = 64;
LABEL_6:
    *a2 = v4;
  }

LABEL_7:
  result = 1;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEVirtualInterfaceSetBothReadIPPayloadHandler(void *a1, const void *a2, const void *a3, unsigned int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPayloadHandler";
      v19 = 1024;
      v20 = 2487;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

LABEL_32:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a1[32] == 2)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPayloadHandler";
      v19 = 1024;
      v20 = 2491;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_29:
      v11 = v5;
      v12 = 18;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if (!a4)
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPayloadHandler";
      v19 = 1024;
      v20 = 2495;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (a2 && a3)
  {
    v10 = ne_log_obj();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315138;
      v18 = "NEVirtualInterfaceSetBothReadIPPayloadHandler";
      v7 = "%s: Error: cannot set both single and mutliple payload handlers";
      v11 = v10;
      v12 = 12;
LABEL_30:
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v7, &v17, v12);
      result = 0;
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  if (!NEVirtualInterfaceAdjustReadBufferSize(a1, a4))
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = 136315394;
      v18 = "NEVirtualInterfaceSetBothReadIPPayloadHandler";
      v19 = 1024;
      v20 = 2504;
      v7 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  v13 = a1[5];
  if (v13)
  {
    _Block_release(v13);
    a1[5] = 0;
  }

  v14 = a1[7];
  if (v14)
  {
    _Block_release(v14);
    a1[7] = 0;
  }

  if (a2)
  {
    a1[5] = _Block_copy(a2);
  }

  if (a3)
  {
    a1[7] = _Block_copy(a3);
  }

  if (!a1[2])
  {
    result = 1;
    goto LABEL_32;
  }

  v15 = *MEMORY[0x1E69E9840];

  return NEVirtualInterfaceCreateReadSource(a1);
}

BOOL NEVirtualInterfaceSetReadMultipleIPPayloadsHandler(void *a1, const void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if (NEVirtualInterfaceGetMaxPendingPackets(a1, &v7))
  {
    result = NEVirtualInterfaceSetBothReadIPPayloadHandler(a1, 0, a2, v7);
  }

  else
  {
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      v9 = "NEVirtualInterfaceSetReadMultipleIPPayloadsHandler";
      v10 = 1024;
      v11 = 2542;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetReadAutomatically(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 73) = a2;
  }

  return result;
}

uint64_t NEVirtualInterfaceGetReadAutomatically(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 73);
  }

  else
  {
    v2 = ne_log_obj();
    result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v4 = 136315394;
      v5 = "NEVirtualInterfaceGetReadAutomatically";
      v6 = 1024;
      v7 = 2558;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", &v4, 0x12u);
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceWriteIPPacket(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  return NEVirtualInterfaceWriteMultipleIPPackets(a1, &v7, &v6, &v5, 1u);
}

uint64_t NEVirtualInterfaceWriteMultipleIPPayloadsInner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2737;
    goto LABEL_65;
  }

  if (*(a1 + 256) != 1)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2741;
    goto LABEL_65;
  }

  if (!a2)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2745;
    goto LABEL_65;
  }

  if (!a3)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2749;
    goto LABEL_65;
  }

  if (!a4)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2753;
    goto LABEL_65;
  }

  if (!a5)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2757;
    goto LABEL_65;
  }

  if (!a6)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2761;
    goto LABEL_65;
  }

  if ((*(a1 + 296) & 0x80000000) != 0)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2765;
    goto LABEL_65;
  }

  if (!a7)
  {
    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2769;
    goto LABEL_65;
  }

  v16 = *(a1 + 212);
  if (!v16)
  {
    NEVirtualInterfaceAdjustSendCount(a1, 0x10u);
    v16 = *(a1 + 212);
  }

  if (*(a1 + 72))
  {
    v17 = 60;
  }

  else
  {
    v17 = 44;
  }

  if (v16 <= a7)
  {
    v46 = malloc_type_malloc(32 * a7, 0x1080040FC6463CFuLL);
    if (v46)
    {
      v60 = v16;
      v62 = v46;
      v19 = a7;
      v47 = malloc_type_calloc(a7, 0x38uLL, 0x10A004053D910A2uLL);
      if (v47)
      {
        v61 = v47;
        v48 = malloc_type_calloc(a7, v17, 0xBD822BC6uLL);
        if (v48)
        {
          v18 = v48;
          goto LABEL_17;
        }

        v55 = ne_log_obj();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
          v65 = 1024;
          v66 = 2798;
          _os_log_error_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
        }

        free(v62);
        v52 = v61;
      }

      else
      {
        v51 = ne_log_obj();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
          v65 = 1024;
          v66 = 2792;
          _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
        }

        v52 = v62;
      }

      free(v52);
LABEL_66:
      v42 = 0;
      goto LABEL_67;
    }

    v45 = ne_log_obj();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    *buf = 136315394;
    v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
    v65 = 1024;
    v66 = 2787;
LABEL_65:
    _os_log_error_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
    goto LABEL_66;
  }

  v60 = v16;
  v61 = *(a1 + 224);
  v62 = *(a1 + 216);
  v59 = v17;
  v18 = *(a1 + 232);
  v19 = a7;
  bzero(v61, 56 * a7);
  bzero(v18, v59 * a7);
LABEL_17:
  v20 = 0;
  v21 = 0;
  do
  {
    if (!a8)
    {
      v21 = v20;
    }

    if (!*(a5 + 8 * v20))
    {
      v53 = v18;
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 136315394;
      v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
      v65 = 1024;
      v66 = 2817;
LABEL_81:
      _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_82;
    }

    v22 = *(a6 + 8 * v20);
    if (!v22)
    {
      v53 = v18;
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 136315394;
      v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
      v65 = 1024;
      v66 = 2822;
      goto LABEL_81;
    }

    v23 = *(a2 + 8 * v21);
    if (!v23)
    {
      v53 = v18;
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 136315394;
      v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
      v65 = 1024;
      v66 = 2827;
      goto LABEL_81;
    }

    v24 = *(a3 + 8 * v21);
    if (!v24)
    {
      v53 = v18;
      v54 = ne_log_obj();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      *buf = 136315394;
      v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
      v65 = 1024;
      v66 = 2832;
      goto LABEL_81;
    }

    if (*(v23 + 1) != *(v24 + 1))
    {
      v53 = v18;
      v54 = ne_log_obj();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v64 = "NEVirtualInterfaceWriteMultipleIPPayloadsInner";
        v65 = 1024;
        v66 = 2837;
        goto LABEL_81;
      }

LABEL_82:
      v42 = 0;
      v43 = v62;
      v44 = v60;
      goto LABEL_83;
    }

    v25 = &v62[16 * (2 * v20)];
    v26 = &v61[56 * v20];
    *(v26 + 2) = v25;
    *(v26 + 6) = 2;
    v27 = &v18[v20];
    *v25 = &v18[v20];
    v28 = &v62[16 * ((2 * v20) | 1)];
    *v28 = *(a5 + 8 * v20);
    *(v28 + 1) = v22;
    v29 = *(a2 + 8 * v21);
    v30 = *(v29 + 1);
    *&v18[v20] = v30 << 24;
    if (v30 == 30)
    {
      if (*(a1 + 72))
      {
        v38 = 20;
      }

      else
      {
        v38 = 4;
      }

      v39 = &v27[v38];
      *(v25 + 1) = 44;
      v40 = *(a3 + 8 * v21);
      *(v39 + 8) = *(v29 + 8);
      *(v39 + 24) = *(v40 + 8);
      *(v39 + 2) = bswap32(*(a6 + 8 * v20)) >> 16;
      v39[6] = *(a4 + v21);
      *v39 |= 0x60u;
    }

    else if (v30 == 2)
    {
      v31 = 0;
      if (*(a1 + 72))
      {
        v32 = 20;
      }

      else
      {
        v32 = 4;
      }

      v33 = &v27[v32];
      *(v25 + 1) = 24;
      v34 = *(a3 + 8 * v21);
      *(v33 + 3) = *(v29 + 4);
      *(v33 + 4) = *(v34 + 4);
      *(v33 + 1) = bswap32(*(a6 + 8 * v20) + 20) >> 16;
      v33[9] = *(a4 + v21);
      v33[8] = 64;
      *v33 = 69;
      *(v33 + 5) = 0;
      v35 = 22;
      v36 = v33;
      do
      {
        v37 = *v36;
        v36 += 2;
        v31 += v37;
        v35 -= 2;
      }

      while (v35 > 3);
      *(v33 + 5) = ~(HIWORD(v31) + v31 + ((HIWORD(v31) + v31) >> 16));
    }

    else
    {
      *(v25 + 1) = 4;
    }

    ++v20;
  }

  while (v20 != v19);
  v41 = *(a1 + 296);
  if (sendmsg_x() > 0)
  {
    v42 = 1;
    v43 = v62;
    v44 = v60;
    goto LABEL_84;
  }

  v53 = v18;
  v56 = ne_log_obj();
  v44 = v60;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    v57 = __error();
    v58 = strerror(*v57);
    *buf = 136315138;
    v64 = v58;
    _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "User Tunnel write error: %s", buf, 0xCu);
  }

  v42 = 0;
  v43 = v62;
LABEL_83:
  v18 = v53;
LABEL_84:
  if (v44 <= a7)
  {
    free(v43);
    free(v61);
    free(v18);
  }

LABEL_67:
  v49 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t NEVirtualInterfaceWriteMultipleIPPayloadsFromArray(uint64_t a1, uint64_t a2, uint64_t a3, char a4, CFArrayRef theArray)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a2;
  v20 = a4;
  Count = CFArrayGetCount(theArray);
  v8 = 8 * Count;
  v9 = malloc_type_malloc(v8, 0x10040436913F5uLL);
  if (!v9)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "NEVirtualInterfaceWriteMultipleIPPayloadsFromArray";
      v25 = 1024;
      v26 = 2922;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v10 = v9;
  v11 = malloc_type_malloc(v8, 0x100004000313F17uLL);
  if (!v11)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "NEVirtualInterfaceWriteMultipleIPPayloadsFromArray";
      v25 = 1024;
      v26 = 2927;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
    }

    free(v10);
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  if (Count)
  {
    for (i = 0; i != Count; v12[i++] = CFDataGetLength(ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      *(v10 + i) = CFDataGetBytePtr(ValueAtIndex);
    }
  }

  v15 = NEVirtualInterfaceWriteMultipleIPPayloadsInner(a1, &v22, &v21, &v20, v10, v12, Count, 1);
  free(v10);
  free(v12);
LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t NEVirtualInterfaceWriteIPPayload(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = a3;
  v11 = a2;
  v9 = a4;
  v7 = a6;
  v8 = a5;
  return NEVirtualInterfaceWriteMultipleIPPayloadsInner(a1, &v11, &v10, &v9, &v8, &v7, 1u, 1);
}

uint64_t NEVirtualInterfaceSetDelegateInterface(uint64_t result, const __CFString *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_28;
  }

  v2 = result;
  if (*(result + 264))
  {
LABEL_3:
    result = 0;
    goto LABEL_28;
  }

  TypeID = CFStringGetTypeID();
  if (a2 && CFGetTypeID(a2) == TypeID && CFStringGetLength(a2) >= 1)
  {
    Length = CFStringGetLength(a2);
    result = malloc_type_malloc(Length + 1, 0x5AA5A65uLL);
    if (!result)
    {
      goto LABEL_28;
    }

    v6 = result;
    v7 = CFStringGetLength(a2);
    CFStringGetCString(a2, v6, v7 + 1, 0x600u);
    strlen(v6);
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v2 + 256);
  if (v8 == 4)
  {
    v11 = NEHelperInterfaceSetDelegate();
  }

  else
  {
    if (v8 == 2)
    {
      v10 = *(v2 + 296);
    }

    else
    {
      if (v8 != 1)
      {
        v12 = 0;
        if (!v6)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v9 = *(v2 + 296);
    }

    v11 = NEHelperInterfaceSetOption();
  }

  v12 = v11;
  if (v6)
  {
LABEL_18:
    free(v6);
  }

LABEL_19:
  if (v12)
  {
    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    v17 = 136315138;
    v18 = strerror(v12);
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Could not set delegate interface: %s", &v17, 0xCu);
    goto LABEL_3;
  }

  v14 = *(v2 + 480);
  if (v14)
  {
    CFRelease(v14);
    *(v2 + 480) = 0;
  }

  v15 = CFStringGetTypeID();
  if (a2 && CFGetTypeID(a2) == v15)
  {
    *(v2 + 480) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  NEVirtualInterfaceUpdateMTUWithDelegate(v2);
  result = 1;
LABEL_28:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void NEVirtualInterfaceUpdateMTUWithDelegate(uint64_t a1)
{
  if (*(a1 + 300))
  {
    v2 = *(a1 + 480);
    TypeID = CFStringGetTypeID();
    if (v2)
    {
      if (CFGetTypeID(v2) == TypeID && CFStringGetLength(*(a1 + 480)) >= 1)
      {
        Length = CFStringGetLength(*(a1 + 480));
        v5 = malloc_type_malloc(Length + 1, 0xEB623B8CuLL);
        if (v5)
        {
          v6 = v5;
          v7 = *(a1 + 480);
          v8 = CFStringGetLength(v7);
          CFStringGetCString(v7, v6, v8 + 1, 0x600u);
          v9 = 0;
          LODWORD(v7) = interface_get_mtu(v6, &v9, (a1 + 308));
          free(v6);
          if (!v7)
          {
            NEVirtualInterfaceSetMTU(a1, v9 - *(a1 + 300));
          }
        }
      }
    }
  }
}

uint64_t NEVirtualInterfaceSetMTU(uint64_t result, int a2)
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
      goto LABEL_3;
    }

    v4 = *(result + 256);
    if (v4 == 3)
    {
      goto LABEL_3;
    }

    if (v4 != 1 || a2 < 16001)
    {
      v7 = NEHelperInterfaceSetMTU();
      if (v7)
      {
        v8 = v7;
        v9 = ne_log_obj();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_4;
        }

        v15 = 136315138;
        *v16 = strerror(v8);
        v10 = "Failed to set MTU with NEHelper: %s\n";
        v11 = v9;
        v12 = 12;
        goto LABEL_20;
      }

      if (*(v2 + 256) == 1)
      {
        v13 = *(v2 + 96);
        if (v13)
        {
          NEVirtualInterfaceAdjustReadBufferSize(v2, v13);
        }
      }

      result = 1;
    }

    else
    {
      v14 = ne_log_obj();
      result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v15 = 67109376;
        v16[0] = a2;
        LOWORD(v16[1]) = 1024;
        *(&v16[1] + 2) = 16000;
        v10 = "Requested MTU (%d) is larger than maximum allowed (%d)\n";
        v11 = v14;
        v12 = 14;
LABEL_20:
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v10, &v15, v12);
LABEL_3:
        result = 0;
      }
    }
  }

LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef NEVirtualInterfaceCopyDelegateInterfaceName(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 480)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

BOOL NEVirtualInterfaceSetDescription(uint64_t a1, CFStringRef theString)
{
  result = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && theString)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *buffer = 0u;
    v11 = 0u;
    CFStringGetCString(theString, buffer, 128, 0x8000100u);
    if (*(a1 + 256) == 4 && (v4 = NEHelperInterfaceSetDescription()) != 0)
    {
      v5 = v4;
      v6 = ne_log_obj();
      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v8 = 136315138;
        v9 = strerror(v5);
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Could not set description on redirect interface: %s", &v8, 0xCu);
        result = 0;
      }
    }

    else
    {
      result = 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetMTUOverhead(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      *(result + 300) = a2;
      NEVirtualInterfaceUpdateMTUWithDelegate(result);
      return 1;
    }
  }

  return result;
}

BOOL NEVirtualInterfaceSetMaxPendingPackets(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 256) == 1)
    {
      if (*(a1 + 264))
      {
        v3 = ne_log_obj();
        result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315394;
          *v13 = "NEVirtualInterfaceSetMaxPendingPackets";
          *&v13[8] = 1024;
          *&v13[10] = 3131;
          v5 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_24:
          _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0x12u);
          result = 0;
        }
      }

      else if (a2)
      {
        if (a2 >= 0x400)
        {
          v7 = 1024;
        }

        else
        {
          v7 = a2;
        }

        v8 = *(a1 + 296);
        v9 = NEHelperInterfaceSetOption();
        if (v9)
        {
          v10 = v9;
          v3 = ne_log_obj();
          result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 67109378;
            *v13 = a2;
            *&v13[4] = 2080;
            *&v13[6] = strerror(v10);
            v5 = "Failed to set max pending packets to %u with NEHelper: %s\n";
            goto LABEL_24;
          }
        }

        else
        {
          if (!*(a1 + 48) && !*(a1 + 56))
          {
            v7 = 1;
          }

          result = NEVirtualInterfaceAdjustReadBufferSize(a1, v7);
        }
      }

      else
      {
        v3 = ne_log_obj();
        result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315394;
          *v13 = "NEVirtualInterfaceSetMaxPendingPackets";
          *&v13[8] = 1024;
          *&v13[10] = 3135;
          v5 = "NEVirtualInterface Failure in %s at line %d.";
          goto LABEL_24;
        }
      }
    }

    else
    {
      v3 = ne_log_obj();
      result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315394;
        *v13 = "NEVirtualInterfaceSetMaxPendingPackets";
        *&v13[8] = 1024;
        *&v13[10] = 3127;
        v5 = "NEVirtualInterface Failure in %s at line %d.";
        goto LABEL_24;
      }
    }
  }

  else
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      *v13 = "NEVirtualInterfaceSetMaxPendingPackets";
      *&v13[8] = 1024;
      *&v13[10] = 3123;
      v5 = "NEVirtualInterface Failure in %s at line %d.";
      goto LABEL_24;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetOutputTrafficClass(uint64_t result, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 264) || *(result + 256) != 2)
    {
      goto LABEL_7;
    }

    v2 = *(result + 296);
    v3 = NEHelperInterfaceSetOption();
    if (!v3)
    {
      result = 1;
      goto LABEL_8;
    }

    v4 = v3;
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109378;
      v9 = a2;
      v10 = 2080;
      v11 = strerror(v4);
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Failed to set output traffic class to %d with NEHelper: %s\n", buf, 0x12u);
LABEL_7:
      result = 0;
    }
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetDSCPMapping(uint64_t result, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 264) || *(result + 256) != 2)
    {
      goto LABEL_7;
    }

    v2 = *(result + 296);
    v3 = NEHelperInterfaceSetOption();
    if (!v3)
    {
      result = 1;
      goto LABEL_8;
    }

    v4 = v3;
    v5 = ne_log_obj();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109378;
      v9 = a2;
      v10 = 2080;
      v11 = strerror(v4);
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Failed to set output DSCP mapping to %d with NEHelper: %s\n", buf, 0x12u);
LABEL_7:
      result = 0;
    }
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetVPNServerAddress(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
      return 0;
    }

    TypeID = CFStringGetTypeID();
    if (!a2)
    {
      v7 = *(v2 + 472);
      if (v7)
      {
        CFRelease(v7);
        *(v2 + 472) = 0;
      }

      return 1;
    }

    if (CFGetTypeID(a2) != TypeID || (result = NEGetAddressFamilyFromString(a2), result))
    {
      v5 = CFStringGetTypeID();
      if (CFGetTypeID(a2) != v5)
      {
        return 0;
      }

      v6 = *(v2 + 472);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 472) = 0;
      }

      *(v2 + 472) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
      return 1;
    }
  }

  return result;
}

CFTypeRef NEVirtualInterfaceCopyVPNServerAddress(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 472)) != 0)
  {
    return CFRetain(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetAsPrimary(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      v2 = *(result + 312);
      if ((v2 & 1) != a2)
      {
        *(result + 312) = v2 & 0xFE | a2 & 1;
      }

      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceIsPrimary(uint64_t result)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      return *(result + 312) & 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetServiceID(uint64_t a1, CFStringRef theString)
{
  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (a1 && theString)
  {
    v5 = *(a1 + 488);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 488) = 0;
    }

    *(a1 + 488) = CFStringCreateCopy(*MEMORY[0x1E695E480], theString);
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 488);
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "Reset serviceID for NEVirtualInterface (%@)\n", &v9, 0xCu);
    }

    result = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceSetRankPrimaryEligible(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      v2 = *(result + 312);
      if (((v2 >> 1) & 1) != a2)
      {
        *(result + 312) = v2 & 0xFD | (2 * (a2 & 1));
      }

      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetRankLast(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      v2 = *(result + 312);
      if (((v2 >> 2) & 1) != a2)
      {
        *(result + 312) = v2 & 0xFB | (4 * (a2 & 1));
      }

      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetRankNever(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      v2 = *(result + 312);
      if (((v2 >> 3) & 1) != a2)
      {
        *(result + 312) = v2 & 0xF7 | (8 * (a2 & 1));
      }

      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetServiceIndex(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      *(result + 316) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetIPv4Router(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
      return 0;
    }

    if (a2)
    {
      TypeID = CFStringGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        return 0;
      }

      v5 = *(v2 + 456);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 456) = 0;
      }

      *(v2 + 456) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 456);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 456) = 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t NEVirtualInterfaceSetIPv6Router(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
      return 0;
    }

    if (a2)
    {
      TypeID = CFStringGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        return 0;
      }

      v5 = *(v2 + 464);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 464) = 0;
      }

      *(v2 + 464) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 464);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 464) = 0;
      }
    }

    return 1;
  }

  return result;
}

CFStringRef NEVirtualInterfaceCopyIPv4Router(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 456)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

CFStringRef NEVirtualInterfaceCopyIPv6Router(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 464)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetIPv4ConfigurationMethod(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 256) == 3)
    {
      *(result + 376) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceGetIPv4ConfigurationMethod(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 376);
  }

  else
  {
    return 1;
  }
}

uint64_t NEVirtualInterfaceSetIPv6ConfigurationMethod(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 256) == 3)
    {
      *(result + 384) = a2;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceGetIPv6ConfigurationMethod(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 384);
  }

  else
  {
    return 1;
  }
}

uint64_t NEVirtualInterfaceAddAddressInternal(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = 0;
    goto LABEL_35;
  }

  v5 = 0;
  if (a2 && !*(a1 + 264))
  {
    v22 = 0;
    v9 = NECreateAddressStructDataFromString(a2, 0, &v22);
    v10 = v9;
    if (a3)
    {
      v11 = NECreateAddressStructDataFromString(a3, 0, 0);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = 0;
      if (v9)
      {
LABEL_6:
        if (a4)
        {
          if (v22 != 30)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              LOWORD(valuePtr) = 0;
              _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Error: trying to add lifetime with a non-IPv6 address\n", &valuePtr, 2u);
            }
          }

          BytePtr = CFDataGetBytePtr(v10);
          if (v11)
          {
            v14 = CFDataGetBytePtr(v11);
          }

          else
          {
            v14 = 0;
          }

          v15 = MEMORY[0x1BFAF9B10](a1 + 265, BytePtr, v14, a4);
        }

        else
        {
          CFDataGetBytePtr(v10);
          if (v11)
          {
            CFDataGetBytePtr(v11);
          }

          v15 = NEHelperInterfaceSetAddress();
        }

        v16 = v15;
        if (v15)
        {
          v17 = ne_log_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v21 = strerror(v16);
            valuePtr = 136315138;
            v24 = v21;
            _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to set address with NEHelper: %s\n", &valuePtr, 0xCu);
          }

          v5 = 0;
        }

        else
        {
          if (v22 == 30)
          {
            CFArrayAppendValue(*(a1 + 328), a2);
            valuePtr = 64;
            if (a3)
            {
              valuePtr = NEGetPrefixForIPv6NetmaskString(a3);
            }

            v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(*(a1 + 336), v18);
            if (v18)
            {
              CFRelease(v18);
            }
          }

          else if (v22 == 2)
          {
            CFArrayAppendValue(*(a1 + 320), a2);
          }

          v5 = 1;
        }

        CFRelease(v10);
        if (v11)
        {
LABEL_34:
          CFRelease(v11);
          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    v5 = 0;
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_35:
  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t NEVirtualInterfaceRemoveAddress(uint64_t a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_28;
  }

  v3 = 0;
  if (a2 && !*(a1 + 264))
  {
    v22 = 0;
    v5 = NECreateAddressStructDataFromString(a2, 0, &v22);
    TypeID = CFDataGetTypeID();
    if (v5)
    {
      if (CFGetTypeID(v5) == TypeID && v22 == 2)
      {
        v3 = *(a1 + 320);
        if (!v3)
        {
LABEL_27:
          CFRelease(v5);
          goto LABEL_28;
        }

        v26.length = CFArrayGetCount(*(a1 + 320));
        v26.location = 0;
        if (!CFArrayContainsValue(v3, v26, a2))
        {
          goto LABEL_20;
        }

        CFDataGetBytePtr(v5);
        v7 = NEHelperInterfaceRemoveAddress();
        if (v7)
        {
          v8 = v7;
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }

        v12 = *(a1 + 320);
        v28.length = CFArrayGetCount(v12);
        v28.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v28, a2);
        if (FirstIndexOfValue != -1)
        {
          v14 = FirstIndexOfValue;
          v15 = *(a1 + 320);
LABEL_25:
          CFArrayRemoveValueAtIndex(v15, v14);
        }
      }

      else
      {
        v10 = CFDataGetTypeID();
        v3 = 0;
        if (CFGetTypeID(v5) != v10)
        {
          goto LABEL_27;
        }

        if (v22 != 30)
        {
          goto LABEL_27;
        }

        v3 = *(a1 + 328);
        if (!v3)
        {
          goto LABEL_27;
        }

        v27.length = CFArrayGetCount(*(a1 + 328));
        v27.location = 0;
        if (!CFArrayContainsValue(v3, v27, a2))
        {
          goto LABEL_20;
        }

        CFDataGetBytePtr(v5);
        v11 = NEHelperInterfaceRemoveAddress();
        if (v11)
        {
          v8 = v11;
          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
LABEL_29:
            v21 = strerror(v8);
            *buf = 136315138;
            v24 = v21;
            _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to remove address with NEHelper: %s\n", buf, 0xCu);
          }

LABEL_20:
          v3 = 0;
          goto LABEL_27;
        }

        v16 = *(a1 + 328);
        v29.length = CFArrayGetCount(v16);
        v29.location = 0;
        v17 = CFArrayGetFirstIndexOfValue(v16, v29, a2);
        if (v17 != -1)
        {
          v18 = v17;
          CFArrayRemoveValueAtIndex(*(a1 + 328), v17);
          v15 = *(a1 + 336);
          v14 = v18;
          goto LABEL_25;
        }
      }

      v3 = 1;
      goto LABEL_27;
    }

    CFDataGetTypeID();
    goto LABEL_13;
  }

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t NEVirtualInterfaceRemoveAllAddresses(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 264))
  {
    return 0;
  }

  v2 = *(result + 320);
  if (!v2)
  {
LABEL_15:
    v10 = v1[41];
    if (v10)
    {
      for (i = 0; ; ++i)
      {
        Count = CFArrayGetCount(v10);
        v13 = v1[41];
        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
        TypeID = CFStringGetTypeID();
        if (ValueAtIndex)
        {
          if (CFGetTypeID(ValueAtIndex) == TypeID)
          {
            v8 = NECreateAddressStructDataFromString(ValueAtIndex, 0, 0);
            v16 = CFDataGetTypeID();
            if (v8)
            {
              if (CFGetTypeID(v8) == v16)
              {
                CFDataGetBytePtr(v8);
                if (NEHelperInterfaceRemoveAddress())
                {
                  goto LABEL_28;
                }
              }

              CFRelease(v8);
            }
          }
        }

        v10 = v1[41];
      }

      CFArrayRemoveAllValues(v13);
      CFArrayRemoveAllValues(v1[42]);
    }

    return 1;
  }

  for (j = 0; ; ++j)
  {
    v4 = CFArrayGetCount(v2);
    v5 = v1[40];
    if (j >= v4)
    {
      CFArrayRemoveAllValues(v5);
      goto LABEL_15;
    }

    v6 = CFArrayGetValueAtIndex(v5, j);
    v7 = CFStringGetTypeID();
    if (v6)
    {
      if (CFGetTypeID(v6) == v7)
      {
        v8 = NECreateAddressStructDataFromString(v6, 0, 0);
        v9 = CFDataGetTypeID();
        if (v8)
        {
          break;
        }
      }
    }

LABEL_13:
    v2 = v1[40];
  }

  if (CFGetTypeID(v8) != v9 || (CFDataGetBytePtr(v8), !NEHelperInterfaceRemoveAddress()))
  {
    CFRelease(v8);
    goto LABEL_13;
  }

LABEL_28:
  CFRelease(v8);
  return 0;
}

__CFArray *NEVirtualInterfaceCopyAddresses(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 320);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    v5 = *(a1 + 320);
    v10.length = CFArrayGetCount(v5);
    v10.location = 0;
    CFArrayAppendArray(Mutable, v5, v10);
  }

  v6 = *(a1 + 328);
  v7 = CFArrayGetTypeID();
  if (v6 && CFGetTypeID(v6) == v7)
  {
    v8 = *(a1 + 328);
    v11.length = CFArrayGetCount(v8);
    v11.location = 0;
    CFArrayAppendArray(Mutable, v8, v11);
  }

  return Mutable;
}

uint64_t NEVirtualInterfaceRemoveRoute(uint64_t result, const __CFString *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = result;
  if (*(result + 264))
  {
    goto LABEL_3;
  }

  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_3;
  }

  v8 = NEGetAddressFamilyFromString(a2);
  if (v8 != 30)
  {
    if (v8 == 2)
    {
      v9 = a3 == 0;
      v10 = 352;
      v11 = 344;
      goto LABEL_11;
    }

LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  v9 = a3 == 0;
  v10 = 368;
  v11 = 360;
LABEL_11:
  if (v9)
  {
    v10 = v11;
  }

  v12 = *(v3 + v10);
  v13 = CFArrayGetTypeID();
  if (!v12 || CFGetTypeID(v12) != v13)
  {
    goto LABEL_3;
  }

  v14 = 0;
  v15 = *MEMORY[0x1E69824A0];
  while (v14 < CFArrayGetCount(v12))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v14);
    v17 = CFDictionaryGetTypeID();
    if (ValueAtIndex)
    {
      if (CFGetTypeID(ValueAtIndex) == v17)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, v15);
        if (Value)
        {
          if (CFEqual(a2, Value))
          {
            CFArrayRemoveValueAtIndex(v12, v14);
            break;
          }
        }
      }
    }

    ++v14;
  }

  if (nelog_is_extra_vpn_logging_enabled())
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315650;
      v22 = v3 + 265;
      if (a3)
      {
        v20 = "excluded ";
      }

      else
      {
        v20 = "";
      }

      v23 = 2080;
      v24 = v20;
      v25 = 2112;
      v26 = a2;
      _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%s: removed %s route to %@", &v21, 0x20u);
    }
  }

  result = 1;
LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceRemoveAllRoutes(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        v5 = *(result + 344);
        if (v5)
        {
          CFArrayRemoveAllValues(v5);
        }

        v6 = v3[45];
        if (v6)
        {
          CFArrayRemoveAllValues(v6);
        }
      }

      if (a3)
      {
        v7 = v3[44];
        if (v7)
        {
          CFArrayRemoveAllValues(v7);
        }

        v8 = v3[46];
        if (v8)
        {
          CFArrayRemoveAllValues(v8);
        }
      }

      return 1;
    }
  }

  return result;
}

__CFArray *NEVirtualInterfaceCopyRoutes(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 352;
  if (!a2)
  {
    v2 = 344;
  }

  v3 = *(a1 + v2);
  v4 = 368;
  if (!a2)
  {
    v4 = 360;
  }

  v5 = *(a1 + v4);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  TypeID = CFArrayGetTypeID();
  if (v3 && CFGetTypeID(v3) == TypeID)
  {
    v10.length = CFArrayGetCount(v3);
    v10.location = 0;
    CFArrayAppendArray(Mutable, v3, v10);
  }

  v8 = CFArrayGetTypeID();
  if (v5 && CFGetTypeID(v5) == v8)
  {
    v11.length = CFArrayGetCount(v5);
    v11.location = 0;
    CFArrayAppendArray(Mutable, v5, v11);
  }

  return Mutable;
}

CFArrayRef NEVirtualInterfaceCopyIPv4Routes(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 352;
  if (!a2)
  {
    v2 = 344;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v3);
  }

  else
  {
    return 0;
  }
}

CFArrayRef NEVirtualInterfaceCopyIPv6Routes(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 368;
  if (!a2)
  {
    v2 = 360;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSDomain(uint64_t result, const __CFString *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
LABEL_3:
      result = 0;
      goto LABEL_15;
    }

    if (a2)
    {
      TypeID = CFStringGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        goto LABEL_3;
      }

      v5 = *(v2 + 432);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 432) = 0;
      }

      *(v2 + 432) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 432);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 432) = 0;
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = v2 + 265;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%s: set DNS domain to %@", &v9, 0x16u);
      }
    }

    result = 1;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef NEVirtualInterfaceCopyDNSDomain(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 432)) != 0)
  {
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSServers(uint64_t result, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
LABEL_3:
      result = 0;
      goto LABEL_15;
    }

    if (a2)
    {
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        goto LABEL_3;
      }

      v5 = *(v2 + 416);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 416) = 0;
      }

      *(v2 + 416) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 416);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 416) = 0;
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = v2 + 265;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%s: set DNS servers to %@", &v9, 0x16u);
      }
    }

    result = 1;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef NEVirtualInterfaceCopyDNSServers(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 416)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSSearchDomains(uint64_t result, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
LABEL_3:
      result = 0;
      goto LABEL_15;
    }

    if (a2)
    {
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        goto LABEL_3;
      }

      v5 = *(v2 + 424);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 424) = 0;
      }

      *(v2 + 424) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 424);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 424) = 0;
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = v2 + 265;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%s: set DNS search domains to %@", &v9, 0x16u);
      }
    }

    result = 1;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef NEVirtualInterfaceCopyDNSSearchDomains(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 424)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSSupplementalMatchDomains(uint64_t result, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
LABEL_3:
      result = 0;
      goto LABEL_15;
    }

    if (a2)
    {
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        goto LABEL_3;
      }

      v5 = *(v2 + 392);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 392) = 0;
      }

      *(v2 + 392) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 392);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 392) = 0;
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v7 = ne_log_large_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = v2 + 265;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%s: set DNS supplemental match domains to %@", &v9, 0x16u);
      }
    }

    result = 1;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef NEVirtualInterfaceCopyDNSSupplementalMatchDomains(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 392)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSSupplementalMatchOrders(uint64_t result, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
LABEL_3:
      result = 0;
      goto LABEL_15;
    }

    if (a2)
    {
      TypeID = CFArrayGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        goto LABEL_3;
      }

      v5 = *(v2 + 400);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 400) = 0;
      }

      *(v2 + 400) = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 400);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 400) = 0;
      }
    }

    if (nelog_is_extra_vpn_logging_enabled())
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315394;
        v10 = v2 + 265;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%s: set DNS supplemental match orders to %@", &v9, 0x16u);
      }
    }

    result = 1;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef NEVirtualInterfaceCopyDNSSupplementalMatchOrders(uint64_t a1)
{
  if (a1 && !*(a1 + 264) && (v2 = *(a1 + 400)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v2);
  }

  else
  {
    return 0;
  }
}

uint64_t NEVirtualInterfaceSetDNSSupplementalMatchDomainsNoSearch(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      *(result + 408) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceGetDNSSupplementalMatchDomainsNoSearch(uint64_t result)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      return *(result + 408);
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetDNSServiceIdentifier(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      *(result + 440) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetDNSPort(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 264))
    {
      return 0;
    }

    else
    {
      *(result + 444) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t NEVirtualInterfaceSetProxies(uint64_t result, const void *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 264))
    {
      return 0;
    }

    if (a2)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(a2) != TypeID)
      {
        return 0;
      }

      v5 = *(v2 + 448);
      if (v5)
      {
        CFRelease(v5);
        *(v2 + 448) = 0;
      }

      *(v2 + 448) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
    }

    else
    {
      v6 = *(result + 448);
      if (v6)
      {
        CFRelease(v6);
        *(v2 + 448) = 0;
      }
    }

    return 1;
  }

  return result;
}

CFDictionaryRef NEVirtualInterfaceCopyProxies(uint64_t a1)
{
  if (!a1 || *(a1 + 264) || *(a1 + 448))
  {
    return 0;
  }

  else
  {
    return CFDictionaryCreateCopy(*MEMORY[0x1E695E480], 0);
  }
}

uint64_t NEVirtualInterfaceGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 256);
  }

  return result;
}

uint64_t NEVirtualInterfaceDupSocket(uint64_t a1)
{
  if (a1)
  {
    return dup(*(a1 + 296));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t NEVirtualInterfaceGetIndex(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 292);
  }

  else
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v4 = 136315138;
      v5 = "NEVirtualInterfaceGetIndex";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null interface", &v4, 0xCu);
      result = 0;
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEVirtualInterfaceGetDelegateInterfaceFunctionalType(uint64_t result)
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 480);
    if (!v2)
    {
LABEL_20:
      result = 0;
      goto LABEL_23;
    }

    result = *(result + 304);
    if (!result)
    {
      *buffer = 0;
      v18 = 0;
      if (CFStringGetCString(v2, buffer, 16, 0x8000100u))
      {
        *buf = 0u;
        v22 = 0u;
        if (*(v1 + 308) == -1 && (v3 = socket(2, 2, 0), *(v1 + 308) = v3, v3 < 0))
        {
          v10 = ne_log_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v15 = __error();
            v16 = strerror(*v15);
            *v19 = 136315138;
            v20 = v16;
            _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Failed to create ioctl socket to get functional type: %s", v19, 0xCu);
          }
        }

        else
        {
          __strlcpy_chk();
          LODWORD(v22) = 0;
          if ((ioctl(*(v1 + 308), 0xC02069ADuLL, buf) & 0x80000000) == 0)
          {
            result = v22;
LABEL_22:
            *(v1 + 304) = result;
            goto LABEL_23;
          }

          v9 = ne_log_obj();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v13 = __error();
            v14 = strerror(*v13);
            *v19 = 136315138;
            v20 = v14;
            _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "SIOCGIFFUNCTIONALTYPE failed: %s", v19, 0xCu);
          }

          close(*(v1 + 308));
          *(v1 + 308) = -1;
        }

        if (!*__error())
        {
          result = 0;
          goto LABEL_22;
        }

        v11 = ne_log_obj();
        result = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
        if (result)
        {
          *buf = 0;
          v6 = "interface_get_functional_type failed";
          v7 = v11;
          v8 = 2;
          goto LABEL_19;
        }
      }

      else
      {
        v4 = ne_log_obj();
        result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
        if (result)
        {
          v5 = *(v1 + 480);
          *buf = 138412290;
          *&buf[4] = v5;
          v6 = "CFStringGetCString(%@) failed";
          v7 = v4;
          v8 = 12;
LABEL_19:
          _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v6, buf, v8);
          goto LABEL_20;
        }
      }
    }
  }

LABEL_23:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *nw_utun_protocol_identifier()
{
  if (nw_utun_protocol_identifier_packetProtocolOnceToken != -1)
  {
    dispatch_once(&nw_utun_protocol_identifier_packetProtocolOnceToken, &__block_literal_global_26249);
  }

  return &g_nw_utun_protocol_identifier;
}

uint64_t __nw_utun_protocol_identifier_block_invoke()
{
  qword_1EBC119F0 = 0;
  g_nw_utun_protocol_identifier = 0u;
  unk_1EBC119E0 = 0u;
  g_nw_utun_protocol_callbacks = 0u;
  unk_1EBC11A08 = 0u;
  xmmword_1EBC11A18 = 0u;
  unk_1EBC11A28 = 0u;
  xmmword_1EBC11A38 = 0u;
  *&qword_1EBC11A48 = 0u;
  xmmword_1EBC11A58 = 0u;
  unk_1EBC11A68 = 0u;
  xmmword_1EBC11A78 = 0u;
  unk_1EBC11A88 = 0u;
  xmmword_1EBC11A98 = 0u;
  unk_1EBC11AA8 = 0u;
  xmmword_1EBC11AB8 = 0u;
  unk_1EBC11AC8 = 0u;
  xmmword_1EBC11AD8 = 0u;
  unk_1EBC11AE8 = 0u;
  xmmword_1EBC11AF8 = 0u;
  __strlcpy_chk();
  qword_1EBC119F0 = 0x100000002;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_nw_utun_protocol_callbacks = nw_utun_protocol_add_input_handler;
  *(&g_nw_utun_protocol_callbacks + 1) = nw_utun_protocol_remove_input_handler;
  qword_1EBC11A48 = nw_utun_protocol_get_input_frames;
  qword_1EBC11A50 = nw_utun_protocol_get_output_frames;
  *&xmmword_1EBC11A58 = nw_utun_protocol_finalize_output_frames;

  return MEMORY[0x1EEDD4750](&g_nw_utun_protocol_identifier, nw_utun_protocol_create);
}

void *nw_utun_protocol_create()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C9AB51B7uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = &g_nw_utun_protocol_identifier;
    v0[3] = &g_nw_utun_protocol_callbacks;
    v0[5] = 0;
  }

  else
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v5 = 134217984;
      v6 = 64;
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "calloc(%zu) failed", &v5, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t __nw_utun_protocol_finalize_output_frames_block_invoke(uint64_t a1)
{
  v2 = *nw_frame_unclaimed_bytes();
  v3 = *(a1 + 32);
  nw_frame_unclaim();
  v4 = nw_frame_unclaimed_bytes();
  if ((v2 & 0xF0) == 0x60)
  {
    v5 = 503316480;
  }

  else
  {
    v5 = 0;
  }

  if ((v2 & 0xF0) == 0x40)
  {
    v6 = 0x2000000;
  }

  else
  {
    v6 = v5;
  }

  *v4 = v6;
  return 1;
}

uint64_t nw_utun_protocol_get_output_frames(uint64_t a1)
{
  v1 = (*(*(*(a1 + 32) + 24) + 88))();
  nw_frame_array_foreach();
  return v1;
}

uint64_t __nw_utun_protocol_get_output_frames_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_claim();
  return 1;
}

uint64_t nw_utun_protocol_get_input_frames(uint64_t a1)
{
  v1 = (*(*(*(a1 + 32) + 24) + 80))();
  nw_frame_array_foreach();
  return v1;
}

uint64_t __nw_utun_protocol_get_input_frames_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_claim();
  return 1;
}

BOOL nw_utun_protocol_remove_input_handler(void *a1, uint64_t a2, int a3)
{
  *(a2 + 32) = 0;
  v4 = a1[6];
  if (v4 == a2)
  {
    v7 = a1[4];
    if (v7)
    {
      (*(*(v7 + 24) + 8))();
    }

    a1[6] = 0;
    if (a3)
    {
      free(a1);
    }
  }

  return v4 == a2;
}

uint64_t nw_utun_protocol_add_input_handler(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
  uuid_copy(a1, a2);
  *(a2 + 32) = a1;
  return 1;
}

uint64_t NEVirtualInterfaceDidPublish(uint64_t result)
{
  if (result)
  {
    return (*(result + 312) >> 6) & 1;
  }

  return result;
}

uint64_t NEVirtualInterfaceHasDefaultRoute(uint64_t result)
{
  if (result)
  {
    return *(result + 312) >> 7;
  }

  return result;
}

uint64_t NEVirtualInterfaceSetHasDefaultRoute(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 312) = *(result + 312) & 0x7F | (a2 << 7);
  }

  return result;
}

void sub_1BAA26CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a55, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27265(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *createStringFromIKEv2EncryptionAlgorithm(uint64_t a1)
{
  if ((a1 - 1) >= 7)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%ld)", a1];
  }

  else
  {
    return off_1E7F0B408[a1 - 1];
  }
}

void sub_1BAA30D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28423(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  v4 = MEMORY[0x1EEDB6CF0](theData, dataToFind, searchRange.location, searchRange.length, compareOptions);
  result.length = v5;
  result.location = v4;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}