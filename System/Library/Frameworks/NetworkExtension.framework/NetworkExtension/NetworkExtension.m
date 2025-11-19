uint64_t NECopySigningIdentifierForPIDwithAuditToken()
{
  result = ne_copy_signing_identifier_for_pid_with_audit_token();
  if (result)
  {
    v1 = result;
    v2 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v1);
    return v2;
  }

  return result;
}

const char *inputNotification2String(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "network changed";
  }

  else
  {
    return off_1E7F0ADF0[a1 - 1];
  }
}

uint64_t __NEVirtualInterfaceCreateReadSource_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 64))
  {
    v3 = *(result + 208);
    if (*(result + 73))
    {
      v4 = 0;
    }

    else
    {
      dispatch_suspend(*(result + 64));
      result = *(a1 + 32);
      *(result + 74) = 1;
      v4 = *(result + 73) == 0;
    }

    do
    {
      if (!v4)
      {
        v3 = *(result + 96);
      }

      result = NEVirtualInterfaceReadMultiplePackets(result, v3);
      if (!result)
      {
        break;
      }

      v4 = 0;
      result = *(a1 + 32);
    }

    while (*(result + 73));
  }

  return result;
}

BOOL NEVirtualInterfaceReadMultiplePackets(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 112);
  v6 = *(a1 + 256);
  bzero(*(a1 + 200), 56 * v4);
  if (v6 == 1)
  {
    bzero(*(a1 + 104), 4 * v4);
    v7 = 1;
    v8 = 4;
    if (v5)
    {
LABEL_6:
      v8 |= 0x10uLL;
      bzero(*(a1 + 112), 16 * v4);
      v9 = v7++;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v9 = -1;
LABEL_9:
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7 + 1;
    v14 = *(a1 + 192);
    v15 = (*(a1 + 200) + 24);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    do
    {
      v18 = v10;
      v19 = (v14 + 16 * v10);
      *(v15 - 1) = v19;
      *v15 = v13;
      if (v6 == 1)
      {
        *v19 = *(a1 + 104) + v12;
        *(v14 + 16 * v18 + 8) = 4;
      }

      if ((v9 & 0x80000000) == 0)
      {
        v20 = (v14 + 16 * (v9 + v18));
        *v20 = *(a1 + 112) + v11;
        v20[1] = 16;
      }

      v21 = *v16++;
      v22 = (v14 + 16 * (v7 + v18));
      v12 += 4;
      *v22 = v21;
      v22[1] = v17;
      v11 += 16;
      v15 += 14;
      v10 = v18 + v13;
    }

    while (4 * v4 != v12);
  }

  v23 = *(a1 + 296);
  v24 = recvmsg_x();
  v25 = v24;
  if (*(a1 + 32))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + 48) != 0;
  }

  if (*(a1 + 40))
  {
    v27 = 1;
    if (v24 < 0)
    {
      return v25 >= 0;
    }
  }

  else
  {
    v27 = *(a1 + 56) != 0;
    if (v24 < 0)
    {
      return v25 >= 0;
    }
  }

  if (v26 || v27)
  {
    v28 = v24;
    v53 = v24;
    bzero(*(a1 + 168), 28 * v24);
    bzero(*(a1 + 176), 28 * v25);
    bzero(*(a1 + 184), v25);
    if (v25)
    {
      v29 = 0;
      v30 = 0;
      v31 = 48;
      v56 = v8;
      v55 = v27;
      v54 = v25;
      while (1)
      {
        v32 = *(*(a1 + 200) + v31);
        if (v32 && v32 >= v8)
        {
          break;
        }

        *(*(a1 + 104) + 4 * v30) = 0;
        *(*(a1 + 128) + 8 * v30) = 0;
        *(*(a1 + 144) + 8 * v30) = 0;
LABEL_43:
        ++v29;
        v31 += 56;
        if (v28 == v29)
        {
          goto LABEL_49;
        }
      }

      v34 = v32 - v8;
      v35 = *(a1 + 136);
      *(*(a1 + 144) + 8 * v30) = v32 - v8;
      *(*(a1 + 104) + 4 * v30) = bswap32(*(*(a1 + 104) + 4 * v29));
      *(v35 + 8 * v30) = *(*(a1 + 80) + 8 * v29);
      if (!v27)
      {
LABEL_40:
        v48 = *(a1 + 32);
        if (v48)
        {
          (*(v48 + 16))(v48, a1, *(*(a1 + 104) + 4 * v29), *(*(a1 + 136) + 8 * v29), *(*(a1 + 144) + 8 * v29), *(a1 + 24));
        }

        v30 = (v30 + 1);
        goto LABEL_43;
      }

      v36 = *(*(a1 + 104) + 4 * v30);
      if (v36 == 2)
      {
        v37 = 16;
        v38 = 2;
        v39 = 4;
        v40 = 12;
        v41 = 4;
        v57 = 16;
        v58 = 9;
        v42 = 20;
      }

      else
      {
        if (v36 != 30)
        {
          v42 = 0;
LABEL_38:
          *(*(a1 + 120) + 8 * v30) = *(*(a1 + 136) + 8 * v30) + v42;
          v46 = *(a1 + 128);
          *(v46 + 8 * v30) = v34 - v42;
          v47 = *(a1 + 40);
          if (v47)
          {
            (*(v47 + 16))(v47, a1, *(*(a1 + 152) + 8 * v29), *(*(a1 + 160) + 8 * v29), *(*(a1 + 184) + v29), *(*(a1 + 120) + 8 * v29), *(v46 + 8 * v29), *(a1 + 24));
          }

          goto LABEL_40;
        }

        v37 = 28;
        v38 = 30;
        v39 = 8;
        v40 = 8;
        v41 = 16;
        v57 = 24;
        v58 = 6;
        v42 = 40;
      }

      v43 = *(*(a1 + 152) + 8 * v30);
      v44 = *(*(a1 + 160) + 8 * v30);
      v45 = *(*(a1 + 136) + 8 * v30);
      v44[1] = v38;
      v43[1] = v38;
      *v44 = v37;
      *v43 = v37;
      memcpy(&v43[v39], (v45 + v40), v41);
      memcpy(&v44[v39], (v45 + v57), v41);
      *(*(a1 + 184) + v30) = *(v45 + v58);
      v8 = v56;
      v27 = v55;
      v28 = v54;
      goto LABEL_38;
    }

    v30 = 0;
LABEL_49:
    v50 = *(a1 + 56);
    if (v50)
    {
      (*(v50 + 16))(v50, a1, *(a1 + 152), *(a1 + 160), *(a1 + 184), *(a1 + 120), *(a1 + 128), v30, *(a1 + 24));
    }

    v51 = *(a1 + 48);
    v25 = v53;
    if (v51)
    {
      (*(v51 + 16))(v51, a1, *(a1 + 104), *(a1 + 112), *(a1 + 136), *(a1 + 144), v30, *(a1 + 24));
    }
  }

  else if (*(a1 + 74))
  {
    v49 = *(a1 + 64);
    if (v49)
    {
      *(a1 + 208) = *(a1 + 96);
      dispatch_resume(v49);
      *(a1 + 74) = 0;
    }
  }

  return v25 >= 0;
}

void NEVirtualInterfaceReadyToReadMultiple(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "NEVirtualInterfaceReadyToReadMultiple";
      v10 = 1024;
      v11 = 2567;
      goto LABEL_14;
    }

LABEL_15:
    v4 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(a1 + 256) == 2)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "NEVirtualInterfaceReadyToReadMultiple";
      v10 = 1024;
      v11 = 2571;
LABEL_14:
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "NEVirtualInterfaceReadyToReadMultiple";
      v10 = 1024;
      v11 = 2575;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 64))
    {
      if (*(a1 + 74))
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 0x40000000;
        v6[2] = __NEVirtualInterfaceReadyToReadMultiple_block_invoke;
        v6[3] = &__block_descriptor_tmp_26143;
        v6[4] = a1;
        v7 = a2;
        dispatch_async(v3, v6);
      }
    }

    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E69E9840];

  NEVirtualInterfaceReadMultiplePackets(a1, a2);
}

uint64_t __NERepeatingEventCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  v3 = context;
  v5 = *(context + 2);
  v4 = *(context + 3);
  *(context + 3) = v4 + 1;
  if (v5)
  {
    v6 = v4 < v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = context[2];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_source_cancel(v1);
    result = v3[3];
    if (!result)
    {
      return result;
    }
  }

  v8 = *(result + 16);

  return v8();
}

void __NEIPSecDBCreateStatsTimer_block_invoke_232(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 52);
    *buf = 0;
    v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = v6;
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
    if (!v8)
    {
      free(v7);
      goto LABEL_32;
    }

    v9 = v8;
    *(v7 + 4) = 0;
    *v7 = 0u;
    v7[1] = 0u;
    *(v8 + 4) = 0;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v10 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), v5);
    v11 = v10;
    if (v10)
    {
      if (!NEIPSecDBFilloutBasicSAInfo(v10, 0, 0, buf, 0, 0, 0))
      {
        v14 = 0;
        v15 = 0;
        v12 = 0;
        goto LABEL_17;
      }

      *v7 = *buf;
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), v4);
    if (v13 && NEIPSecDBFilloutBasicSAInfo(v13, 0, 0, buf, 0, 0, 0))
    {
      *v9 = *buf;
      v14 = 1;
      v15 = v9;
      if (!v11)
      {
LABEL_17:
        free(v7);
        v16 = 0;
        v17 = 0;
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v16 = 1;
    v17 = 1;
    if (v14)
    {
LABEL_18:
      v18 = 1;
      goto LABEL_19;
    }

LABEL_15:
    free(v9);
    v18 = 0;
LABEL_19:
    v19 = v16 ^ 1;
    if (!v12)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      *buf = *(a1 + 48);
      if (!NEPFKeySendGetStats(*(*(a1 + 40) + 64), 0, buf, 1, 1, v12, v17))
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315138;
          v25 = "NEIPSecDBCreateStatsTimer_block_invoke";
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s: failed to send stats request for inbound SA\n", &v24, 0xCu);
        }
      }

      free(v12);
      ++*(*(a1 + 32) + 64);
    }

    if (v14 && v15)
    {
      *buf = *(a1 + 52);
      if (!NEPFKeySendGetStats(*(*(a1 + 40) + 64), 0, buf, 1, 2, v15, v18))
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = 136315138;
          v25 = "NEIPSecDBCreateStatsTimer_block_invoke";
          _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%s: failed to send stats request for outbound SA\n", &v24, 0xCu);
        }
      }

      free(v15);
      ++*(*(a1 + 32) + 64);
    }

    goto LABEL_32;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEIPSecDBStatsCreateArrays";
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
  }

LABEL_32:
  v22 = *MEMORY[0x1E69E9840];
}

void __NEVirtualInterfaceReadyToReadMultiple_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 64) && *(v2 + 74) && !NEVirtualInterfaceReadMultiplePackets(v2, *(a1 + 40)))
  {
    v3 = *(a1 + 32);
    *(v3 + 74) = 0;
    *(v3 + 208) = *(a1 + 40);
    v4 = *(v3 + 64);

    dispatch_resume(v4);
  }
}

const __CFDictionary *NEGetValueFromIntKeyedDictionary(const __CFDictionary *a1, int a2)
{
  Value = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(Value, v3);
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

uint64_t NEVirtualInterfaceWriteMultipleIPPackets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2613;
      goto LABEL_57;
    }

LABEL_58:
    v32 = 0;
    goto LABEL_59;
  }

  v6 = *(a1 + 256);
  if (v6 == 2)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2617;
LABEL_57:
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_58;
    }

    goto LABEL_58;
  }

  if (!a2 && v6 == 1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2621;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (!a3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2625;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (!a4)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2629;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if ((*(a1 + 296) & 0x80000000) != 0)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2633;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (!a5)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2637;
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v12 = *(a1 + 212);
  if (!v12)
  {
    NEVirtualInterfaceAdjustSendCount(a1, 0x10u);
    v12 = *(a1 + 212);
  }

  if (a2)
  {
    v13 = *(a1 + 256) == 1;
    v43 = v13;
  }

  else
  {
    v43 = 0;
    v13 = 0;
  }

  v14 = *(a1 + 72) != 0;
  if (*(a1 + 72))
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  if (v12 <= a5)
  {
    v19 = malloc_type_malloc(16 * v16 * a5, 0x1080040FC6463CFuLL);
    if (!v19)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
        v47 = 1024;
        v48 = 2669;
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    v17 = v19;
    v42 = v12;
    v18 = a5;
    v20 = malloc_type_calloc(a5, 0x38uLL, 0x10A004053D910A2uLL);
    if (!v20)
    {
      v37 = ne_log_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
        v47 = 1024;
        v48 = 2674;
        _os_log_error_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      }

      free(v17);
      goto LABEL_58;
    }

    v41 = v20;
  }

  else
  {
    v42 = v12;
    v17 = *(a1 + 216);
    v18 = a5;
    v41 = *(a1 + 224);
    bzero(v41, 56 * a5);
  }

  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v21 = 0;
  v22 = 0;
  v23 = v43;
  if (!a2)
  {
    v23 = 0;
  }

  v24 = v41 + 6;
  v25 = a2;
  do
  {
    if (!*(a3 + 8 * v22))
    {
      v31 = v41;
      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_51:
        v32 = 0;
        goto LABEL_52;
      }

      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2688;
LABEL_67:
      _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_51;
    }

    if (!*(a4 + 8 * v22))
    {
      v31 = v41;
      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      v46 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v47 = 1024;
      v48 = 2693;
      goto LABEL_67;
    }

    v26 = &v17[16 * v21];
    *(v24 - 1) = v26;
    *v24 = v16;
    if (v23)
    {
      *(a2 + 4 * v22) = bswap32(*(a2 + 4 * v22));
      *v26 = v25;
      *(v26 + 1) = 4;
    }

    if (v14)
    {
      v27 = &v17[16 * v13];
      *v27 = uu;
      v27[1] = 16;
    }

    v28 = &v17[16 * v14 + 16 * v13];
    *v28 = *(a3 + 8 * v22);
    v29 = *(a4 + 8 * v22++);
    v25 += 4;
    *(v28 + 1) = v29;
    v24 += 14;
    v13 += v16;
    v21 += v16;
  }

  while (v18 != v22);
  v30 = *(a1 + 296);
  v31 = v41;
  if (sendmsg_x() > 0)
  {
    v32 = 1;
LABEL_52:
    v34 = v42;
    goto LABEL_53;
  }

  v38 = ne_log_obj();
  v34 = v42;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = __error();
    v40 = strerror(*v39);
    *buf = 136315138;
    v46 = v40;
    _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, "User Tunnel write error: %s", buf, 0xCu);
  }

  v32 = 0;
LABEL_53:
  if (v34 <= a5)
  {
    free(v17);
    free(v31);
  }

LABEL_59:
  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

void NEVirtualInterfaceAdjustSendCount(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 256);
  if (v2 == 2)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "NEVirtualInterfaceAdjustSendCount";
      v15 = 1024;
      v16 = 1189;
      v4 = "NEVirtualInterface Failure in %s at line %d.";
LABEL_19:
      _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, v4, &v13, 0x12u);
    }
  }

  else if (*(a1 + 212) != a2)
  {
    *(a1 + 212) = a2;
    if (!a2)
    {
      free(*(a1 + 216));
      *(a1 + 216) = 0;
      free(*(a1 + 224));
      *(a1 + 224) = 0;
      free(*(a1 + 232));
      *(a1 + 232) = 0;
      free(*(a1 + 240));
      *(a1 + 240) = 0;
      free(*(a1 + 248));
      *(a1 + 248) = 0;
      goto LABEL_21;
    }

    v7 = v2 == 1;
    v8 = 1;
    if (v7)
    {
      v8 = 2;
    }

    if (*(a1 + 72))
    {
      ++v8;
    }

    *(a1 + 216) = reallocf(*(a1 + 216), 16 * a2 * v8);
    *(a1 + 224) = reallocf(*(a1 + 224), 56 * a2);
    v9 = 60;
    if (!*(a1 + 72))
    {
      v9 = 44;
    }

    *(a1 + 232) = reallocf(*(a1 + 232), v9 * a2);
    *(a1 + 240) = reallocf(*(a1 + 240), 8 * a2);
    v10 = reallocf(*(a1 + 248), 8 * a2);
    *(a1 + 248) = v10;
    v11 = *(a1 + 216);
    if (!v11 || !*(a1 + 224) || !*(a1 + 232) || !v10 || !*(a1 + 240))
    {
      free(v11);
      *(a1 + 216) = 0;
      free(*(a1 + 224));
      *(a1 + 224) = 0;
      free(*(a1 + 232));
      *(a1 + 232) = 0;
      free(*(a1 + 240));
      *(a1 + 240) = 0;
      free(*(a1 + 248));
      *(a1 + 248) = 0;
      *(a1 + 212) = 0;
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "NEVirtualInterfaceAdjustSendCount";
        v15 = 1024;
        v16 = a2;
        v4 = "%s: failed to allocate send buffers (cnt=%d)";
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
}

BOOL NEIPSecDBFilloutBasicSAInfo(CFDictionaryRef theDict, char *a2, char *a3, _DWORD *a4, void **a5, void **a6, char *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(theDict, @"Mode");
      if (Value)
      {
        if (CFEqual(Value, @"Transport"))
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 2;
      }

      *a3 = v15;
    }

    if (a2)
    {
      v16 = CFDictionaryGetValue(theDict, @"IPSecProtocol");
      if (v16)
      {
        if (CFEqual(v16, @"AH"))
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }
      }

      else
      {
        v17 = 3;
      }

      *a2 = v17;
    }

    if (a4)
    {
      v28 = 0;
      v18 = CFDictionaryGetValue(theDict, @"SPIValue");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberIntType, &v28);
        v19 = v28;
      }

      else
      {
        v19 = 0;
      }

      *a4 = bswap32(v19);
    }

    if (a5)
    {
      v20 = CFDictionaryGetValue(theDict, @"LocalAddress");
      v21 = CFDictionaryGetValue(theDict, @"LocalPort");
      *a5 = NECreateAddressStructFromString(v20, v21, 0);
    }

    if (a6)
    {
      v22 = CFDictionaryGetValue(theDict, @"RemoteAddress");
      v23 = CFDictionaryGetValue(theDict, @"RemotePort");
      *a6 = NECreateAddressStructFromString(v22, v23, 0);
    }

    if (a7 && CFDictionaryContainsKey(theDict, @"IPSecInterface"))
    {
      v24 = CFDictionaryGetValue(theDict, @"IPSecInterface");
      CFStringGetCString(v24, a7, 24, 0x600u);
    }
  }

  else
  {
    v27 = ne_log_obj();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = 136315138;
      v29 = "NEIPSecDBFilloutBasicSAInfo";
      _os_log_fault_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_FAULT, "%s called with null saData", &v28, 0xCu);
    }
  }

  result = theDict != 0;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_queue_t _NEIPSecDBGetQueue()
{
  result = _NEIPSecDBGetQueue_db_queue;
  if (!_NEIPSecDBGetQueue_db_queue)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    result = dispatch_queue_create("NEIPSecDB PFKey IO Queue", v1);
    _NEIPSecDBGetQueue_db_queue = result;
  }

  return result;
}

BOOL NEPFKeySendGetStats(NSObject *a1, unsigned int a2, unint64_t *a3, int a4, int a5, const UInt8 *a6, unsigned int a7)
{
  v7 = 0;
  v28 = *MEMORY[0x1E69E9840];
  if (a6 && a3 && a7)
  {
    v15 = 5 * a7;
    if (a4)
    {
      v16 = 56;
    }

    else
    {
      v16 = 32;
    }

    v17 = (v16 + 40 * a7) & 0xFFF8;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
    if (Mutable)
    {
      v19 = Mutable;
      v20 = 8 * v15;
      LODWORD(v26) = 5890;
      HIDWORD(v26) = (v17 >> 3);
      *&v27 = __PAIR64__(getpid(), a2);
      CFDataAppendBytes(v19, &v26, 16);
      if (a4)
      {
        v21 = *a3;
        v26 = 1310723;
        v27 = v21;
        if (a4 != 1)
        {
          *(&v27 + 1) = a3[1];
        }

        CFDataAppendBytes(v19, &v26, 24);
      }

      LODWORD(v27) = 0;
      LOWORD(v26) = (v20 + 16) >> 3;
      WORD1(v26) = 21;
      HIDWORD(v26) = a5;
      DWORD1(v27) = a7;
      CFDataAppendBytes(v19, &v26, 16);
      CFDataAppendBytes(v19, a6, 40 * a7);
      v7 = NEPFKeySend(a1, v19);
      if (CFDataGetLength(v19) != v17)
      {
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          Length = CFDataGetLength(v19);
          LODWORD(v26) = 67109376;
          HIDWORD(v26) = v17;
          LOWORD(v27) = 2048;
          *(&v27 + 2) = Length;
          _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "NEPFKeySendGetStats: calculated message length (%u) != final message len (%zd)", &v26, 0x12u);
        }
      }

      CFRelease(v19);
    }

    else
    {
      v7 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL NEPFKeySend(NSObject *a1, const __CFData *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_6;
    }

    LOWORD(v17.msg_name) = 0;
    v9 = "pfkey send invalid args";
    v10 = &v17;
    v11 = v8;
    v12 = 2;
LABEL_13:
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v9, v10, v12);
    result = 0;
    goto LABEL_6;
  }

  handle = dispatch_source_get_handle(a1);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  *&v17.msg_control = 0u;
  *&v17.msg_name = 0u;
  v17.msg_iov = &BytePtr;
  *&v17.msg_iovlen = 1;
  v4 = sendmsg(handle, &v17, 0);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v13 = ne_log_obj();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_6;
    }

    v14 = __error();
    v15 = strerror(*v14);
    *buf = 136315138;
    v21 = v15;
    v9 = "PFKey write error: %s";
    v10 = buf;
    v11 = v13;
    v12 = 12;
    goto LABEL_13;
  }

  v5 = v4;
  if (v4 < Length)
  {
    v16 = ne_log_obj();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_6;
    }

    *buf = 134218240;
    v21 = v5;
    v22 = 2048;
    v23 = Length;
    v9 = "PFKey failed to write an entire message (%zd < %zu)";
    v10 = buf;
    v11 = v16;
    v12 = 22;
    goto LABEL_13;
  }

  result = 1;
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NEPFKeyOpen_block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  *(&v79[2] + 4) = *MEMORY[0x1E69E9840];
  bzero(__s, 0x2000uLL);
  v74[0] = __s;
  v74[1] = 0x2000;
  memset(&v58.msg_iovlen + 1, 0, 20);
  v58.msg_iov = v74;
  v58.msg_iovlen = 1;
  *&v58.msg_name = 0u;
  while (1)
  {
    v2 = recvmsg(*(v1 + 48), &v58, 0);
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    if (v2 <= 0xF)
    {
      v51 = ne_log_obj();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *v59 = 134217984;
      *&v59[4] = v3;
      v52 = "Invalid PFKey message size: %zd";
      v53 = v59;
      v54 = v51;
      v55 = 12;
      goto LABEL_81;
    }

    *v59 = __s;
    *&v59[8] = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v4 = &__s[8 * v76];
    v5 = v77;
    v73 = 0;
    if (v76 >= 3uLL)
    {
      v6 = v77;
      while (1)
      {
        v5 = &v6[4 * *v6];
        if (*v6)
        {
          v7 = v4 >= v5;
        }

        else
        {
          v7 = 0;
        }

        if (!v7)
        {
          v5 = v6;
          goto LABEL_20;
        }

        v8 = v6[1];
        if (*&v59[8 * v8])
        {
          v19 = ne_log_obj();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_35;
          }

          v20 = v6[1];
          *buf = 67109120;
          LODWORD(v79[0]) = v20;
          v12 = v19;
          v13 = "duplicate extension type %u";
          goto LABEL_30;
        }

        if (v8 > 0x1D || ((1 << v8) & 0x3FFDFFFE) == 0)
        {
          break;
        }

        *&v59[8 * v8] = v6;
        v10 = v5 < v4 && v4 >= v5 + 2;
        v6 = v5;
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v37 = v6[1];
      *buf = 67109120;
      LODWORD(v79[0]) = v37;
      v12 = v36;
      v13 = "bad extension type %u";
      goto LABEL_30;
    }

LABEL_20:
    if (v5 != v4)
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      v79[0] = v5;
      LOWORD(v79[1]) = 2048;
      *(&v79[1] + 2) = v4;
      v12 = v11;
      v13 = "invalid pfkey message length p %p and ep %p";
      v14 = 22;
      goto LABEL_31;
    }

    v15 = *v59;
    if (!*v59)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = v21;
        v13 = "msg/mhp is NULL";
        v14 = 2;
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    if (**v59 != 2)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v46 = *v15;
        *buf = 67109120;
        LODWORD(v79[0]) = v46;
        v12 = v22;
        v13 = "invalid sadb version %u";
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    v16 = *(*v59 + 1);
    if (v16 >= 0x1B)
    {
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v18 = v15[1];
      *buf = 67109120;
      LODWORD(v79[0]) = v18;
      v12 = v17;
      v13 = "invalid message type %u";
LABEL_30:
      v14 = 8;
      goto LABEL_31;
    }

    v23 = *(*v59 + 3);
    if (v23 > 9)
    {
LABEL_56:
      if (*(*v59 + 3))
      {
LABEL_64:
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
LABEL_46:
          v31 = v15[3];
          *buf = 67109120;
          LODWORD(v79[0]) = v31;
          v12 = v30;
          v13 = "invalid sa type %u";
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v16 - 1 < 6 || v16 == 8)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_44:
          v28 = v15[3];
          v29 = v15[1];
          *buf = 67109376;
          LODWORD(v79[0]) = v28;
          WORD2(v79[0]) = 1024;
          *(v79 + 6) = v29;
          v12 = v27;
          v13 = "invalid sa type %u for message type %u";
          goto LABEL_72;
        }

        goto LABEL_35;
      }

      goto LABEL_49;
    }

    if (((1 << v23) & 0x1E0) != 0)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    if (((1 << v23) & 0x20C) != 0)
    {
      v24 = v16 > 0x13;
      v25 = (1 << v16) & 0xDC000;
      if (!v24 && v25 != 0)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_56;
      }

      if (v16 != 11)
      {
        goto LABEL_64;
      }
    }

LABEL_49:
    v32 = v61;
    if (!v61 || (v33 = *(&v61 + 1)) == 0)
    {
LABEL_55:
      (*(v1 + 32))(v59, *(v1 + 40));
      goto LABEL_35;
    }

    if (*(v61 + 4) == *(*(&v61 + 1) + 4))
    {
      v34 = *(v61 + 9);
      if (v34 == *(*(&v61 + 1) + 9))
      {
        if (v34 == 2 || v34 == 30)
        {
          goto LABEL_55;
        }

        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = *(v32 + 9);
          *buf = 67109120;
          LODWORD(v79[0]) = v45;
          v12 = v44;
          v13 = "invalid address family %u";
          goto LABEL_30;
        }
      }

      else
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = *(v32 + 9);
          v43 = *(v33 + 9);
          *buf = 67109376;
          LODWORD(v79[0]) = v42;
          WORD2(v79[0]) = 1024;
          *(v79 + 6) = v43;
          v12 = v41;
          v13 = "src address family %u != dst address family %u";
LABEL_72:
          v14 = 14;
LABEL_31:
          _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, buf, v14);
        }
      }
    }

    else
    {
      v38 = ne_log_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(v32 + 4);
        v40 = *(v33 + 4);
        *buf = 67109376;
        LODWORD(v79[0]) = v39;
        WORD2(v79[0]) = 1024;
        *(v79 + 6) = v40;
        v12 = v38;
        v13 = "src address protocol %u != dst address proto %u";
        goto LABEL_72;
      }
    }

LABEL_35:
    memset_s(__s, 0x2000uLL, 0, v3);
  }

  if (v2)
  {
    v47 = __error();
    v48 = *v47;
    if (*v47 != 35)
    {
      if (strerror_r(*v47, v59, 0x80uLL))
      {
        v59[0] = 0;
      }

      v57 = ne_log_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        LODWORD(v79[0]) = v48;
        WORD2(v79[0]) = 2080;
        *(v79 + 6) = v59;
        v52 = "PFKey socket received error: [%d] %s";
        v53 = buf;
        v54 = v57;
        v55 = 18;
        goto LABEL_81;
      }
    }
  }

  else
  {
    v56 = ne_log_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *v59 = 0;
      v52 = "PFKey socket received EOF";
      v53 = v59;
      v54 = v56;
      v55 = 2;
LABEL_81:
      _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, v52, v53, v55);
    }
  }

LABEL_78:
  result = memset_s(__s, 0x2000uLL, 0, 0x2000uLL);
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void NEIPSecDBReceivePFKeyMessage(uint64_t *a1, uint64_t a2)
{
  v171 = *MEMORY[0x1E69E9840];
  *v153 = 0;
  v152 = 0;
  if (!a2)
  {
    goto LABEL_168;
  }

  v2 = g_IPSecDBSessions;
  if (!g_IPSecDBSessions)
  {
    goto LABEL_168;
  }

  v172.length = CFArrayGetCount(g_IPSecDBSessions);
  v172.location = 0;
  if (!CFArrayContainsValue(v2, v172, a2))
  {
    goto LABEL_168;
  }

  CFRetain(a2);
  if (!*(a2 + 80) || !*(a2 + 88))
  {
    goto LABEL_167;
  }

  v5 = *a1;
  v6 = *(*a1 + 1);
  if (v6 <= 6)
  {
    if (v6 - 1 >= 3)
    {
      if (v6 == 4)
      {
        goto LABEL_23;
      }

      if (v6 != 5)
      {
        goto LABEL_167;
      }
    }

    goto LABEL_22;
  }

  if (v6 > 0x1A)
  {
LABEL_20:
    if (v6 == 8)
    {
      goto LABEL_23;
    }

    if (v6 != 7)
    {
      goto LABEL_167;
    }

    goto LABEL_22;
  }

  if (((1 << v6) & 0x5DE000) == 0)
  {
    if (((1 << v6) & 0x4000600) == 0)
    {
      if (v6 == 23)
      {
        v10 = *(v5 + 12);
        if (v10 == getpid())
        {
          v11 = 0;
          goto LABEL_24;
        }

        goto LABEL_167;
      }

      goto LABEL_20;
    }

LABEL_22:
    v12 = *(v5 + 12);
    if (v12 != getpid())
    {
      goto LABEL_167;
    }

LABEL_23:
    v11 = NEIPSecDBGetSAWithMessage(a2, a1, v153);
    goto LABEL_24;
  }

  v7 = *(v5 + 12);
  if (v7 != getpid())
  {
    goto LABEL_167;
  }

  *v153 = -1;
  v8 = a1[5];
  if (v8)
  {
    v9 = v8 + 8;
  }

  else
  {
    v25 = a1[23];
    if (v25)
    {
      v9 = v25 + 8;
    }

    else
    {
      v9 = 0;
    }
  }

  v151 = v9;
  v26 = a1[6];
  if (v26)
  {
    v27 = v26 + 8;
  }

  else
  {
    v28 = a1[25];
    if (v28)
    {
      v27 = v28 + 8;
    }

    else
    {
      v27 = 0;
    }
  }

  v11 = 0;
  if (!*a1)
  {
    goto LABEL_24;
  }

  v29 = a1[18];
  if (!v29)
  {
    goto LABEL_24;
  }

  Count = CFDictionaryGetCount(*(a2 + 88));
  v11 = Count;
  if (!Count)
  {
    goto LABEL_24;
  }

  v150 = v27;
  v31 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v32 = malloc_type_calloc(v11, 8uLL, 0x80040B8603338uLL);
  v149 = v31;
  CFDictionaryGetKeysAndValues(*(a2 + 88), v31, v32);
  if (v11 < 1)
  {
LABEL_80:
    v34 = 0;
    v11 = 0;
    v53 = v149;
    if (v149)
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v33 = 0;
  while (1)
  {
    v34 = v32[v33];
    v35 = NEGetIntFromDictionary(v34, @"PolicyID", 0);
    if (!v35)
    {
      break;
    }

    if (v35 == *(v29 + 8))
    {
      *buf = 0;
      v53 = v149;
      CFNumberGetValue(v149[v33], kCFNumberCFIndexType, buf);
      *v153 = *buf;
      goto LABEL_96;
    }

LABEL_79:
    if (v11 == ++v33)
    {
      goto LABEL_80;
    }
  }

  Value = CFDictionaryGetValue(v34, @"Direction");
  v37 = Value;
  if (!Value)
  {
    goto LABEL_72;
  }

  if (!CFEqual(Value, @"In"))
  {
    if (CFEqual(v37, @"Out"))
    {
      v43 = CFDictionaryGetValue(v34, @"LocalAddress");
      v44 = CFDictionaryGetValue(v34, @"LocalPort");
      v37 = NECreateAddressStructFromString(v43, v44, 0);
      v45 = CFDictionaryGetValue(v34, @"RemoteAddress");
      v46 = CFDictionaryGetValue(v34, @"RemotePort");
      v40 = NECreateAddressStructFromString(v45, v46, 0);
      goto LABEL_73;
    }

    v37 = 0;
LABEL_72:
    v40 = 0;
    goto LABEL_73;
  }

  v38 = CFDictionaryGetValue(v34, @"LocalAddress");
  v39 = CFDictionaryGetValue(v34, @"LocalPort");
  v40 = NECreateAddressStructFromString(v38, v39, 0);
  v41 = CFDictionaryGetValue(v34, @"RemoteAddress");
  v42 = CFDictionaryGetValue(v34, @"RemotePort");
  v37 = NECreateAddressStructFromString(v41, v42, 0);
LABEL_73:
  if (!NEIPSecDBAddressesMatch(v37, v151) || !NEIPSecDBAddressesMatch(v40, v150))
  {
    if (v37)
    {
      free(v37);
    }

    if (v40)
    {
      free(v40);
    }

    goto LABEL_79;
  }

  *buf = 0;
  v53 = v149;
  CFNumberGetValue(v149[v33], kCFNumberCFIndexType, buf);
  *v153 = *buf;
  if (v37)
  {
    free(v37);
  }

  if (v40)
  {
    free(v40);
  }

LABEL_96:
  free(v53);
  v11 = v34;
LABEL_97:
  if (v32)
  {
    free(v32);
  }

LABEL_24:
  v13 = *(v5 + 1);
  if (!v11 && v13 != 23)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(v5 + 1);
      v16 = NEIPSecDBExtractSPIFromPFKeyMessage(a1);
      *buf = 138412802;
      *&buf[4] = a2;
      v163 = 1024;
      v164 = v15;
      v165 = 1024;
      v166 = bswap32(v16);
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@ Received PFKey SA Message that could not be matched (type %d, SPI %08X)", buf, 0x18u);
    }

    goto LABEL_167;
  }

  v17 = *(v5 + 2);
  if (!*(v5 + 2))
  {
    if (v13 != 23 || NEIPSecDBStatsHandleReply(a2, a1, v153, &v152 + 1, &v152))
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(v5 + 1);
        v22 = v153[0];
        v23 = *(v5 + 12);
        v24 = NEIPSecDBExtractSPIFromPFKeyMessage(a1);
        *buf = 138413314;
        *&buf[4] = a2;
        v163 = 1024;
        v164 = v21;
        v165 = 1024;
        v166 = v22;
        v167 = 1024;
        v168 = v23;
        v169 = 1024;
        v170 = bswap32(v24);
        _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_INFO, "%@ Received PFKey Message associated with DB (type %d, SAID %u, pid %u, SPI %08X)", buf, 0x24u);
      }
    }

    switch(*(v5 + 1))
    {
      case 1:
        v79 = a1[1];
        if (v79)
        {
          v80 = bswap32(*(v79 + 4));
          v81 = @"SPIValue";
          goto LABEL_134;
        }

        v19 = 1;
        goto LABEL_160;
      case 2:
        v50 = v153[0];
        v51 = *(a2 + 96);
        v19 = 2;
        goto LABEL_161;
      case 3:
        v50 = v153[0];
        v51 = *(a2 + 96);
        v19 = 3;
        goto LABEL_161;
      case 4:
        NERemoveValueFromIntKeyedDictionary(*(a2 + 80), v153[0]);
        v78 = *(v5 + 12);
        if (v78 == getpid())
        {
          goto LABEL_159;
        }

        v70 = v153[0];
        v71 = a2;
        v72 = 9216;
        goto LABEL_137;
      case 5:
        v73 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          goto LABEL_159;
        }

        v75 = Mutable;
        v76 = *(v5 + 3);
        if (v76 == 3)
        {
          v77 = @"ESP";
        }

        else
        {
          if (v76 != 2)
          {
            goto LABEL_173;
          }

          v77 = @"AH";
        }

        CFDictionaryAddValue(Mutable, @"IPSecProtocol", v77);
LABEL_173:
        v97 = a1[9];
        if (v97)
        {
          NEAddSensitiveDataToDictionary(v75, @"EncryptionKey", (v97 + 8), *(v97 + 4) >> 3);
        }

        v98 = a1[8];
        if (v98)
        {
          NEAddSensitiveDataToDictionary(v75, @"AuthKey", (v98 + 8), *(v98 + 4) >> 3);
        }

        v99 = a1[22];
        if (v99)
        {
          if (*(v99 + 52))
          {
            v100 = CFStringCreateWithCString(v73, (v99 + 52), 0x600u);
            if (v100)
            {
              v101 = v100;
              CFDictionaryAddValue(v75, @"IPSecInterface", v100);
              CFRelease(v101);
            }
          }

          if (*(v99 + 28))
          {
            v102 = CFStringCreateWithCString(v73, (v99 + 28), 0x600u);
            if (v102)
            {
              v103 = v102;
              CFDictionaryAddValue(v75, @"OutgoingInterface", v102);
              CFRelease(v103);
            }
          }

          if (*(v99 + 4))
          {
            v104 = CFStringCreateWithCString(v73, (v99 + 4), 0x600u);
            if (v104)
            {
              v105 = v104;
              CFDictionaryAddValue(v75, @"InternalInterface", v104);
              CFRelease(v105);
            }
          }

          if (*(v99 + 76))
          {
            CFDictionaryAddValue(v75, @"IntializeDisabled", *MEMORY[0x1E695E4D0]);
          }
        }

        v106 = a1[2];
        if (v106)
        {
          v108 = a1[3];
          v107 = a1[4];
          v109 = time(0);
          NEAddDateToDictionary(v75, @"CreateTime", *(v106 + 16));
          NEAddDateToDictionary(v75, @"CurrentTime", v109);
          NEAddIntToDictionary(v75, @"DiffTime", v109 - *(v106 + 16));
          v110 = *(v106 + 24);
          if (v110)
          {
            NEAddDateToDictionary(v75, @"LastUseTime", v110);
          }

          NEAddIntToDictionary(v75, @"CurrentBytes", *(v106 + 8));
          NEAddIntToDictionary(v75, @"CurrentAllocations", *(v106 + 4));
          if (v108)
          {
            NEAddIntToDictionary(v75, @"HardLifetime", v108[4]);
            NEAddIntToDictionary(v75, @"HardUseTime", v108[6]);
            NEAddIntToDictionary(v75, @"HardBytes", v108[2]);
            NEAddIntToDictionary(v75, @"SoftAllocations", v108[1]);
          }

          if (v107)
          {
            NEAddIntToDictionary(v75, @"SoftLifetime", v107[4]);
            NEAddIntToDictionary(v75, @"SoftUseTime", v107[6]);
            NEAddIntToDictionary(v75, @"SoftBytes", v107[2]);
            NEAddIntToDictionary(v75, @"SoftAllocations", v107[1]);
          }
        }

        v111 = a1[1];
        if (!v111)
        {
          goto LABEL_224;
        }

        v112 = *(v111 + 9);
        if (v112 <= 3)
        {
          CFDictionaryAddValue(v75, @"State", off_1E7F091E8[v112]);
        }

        NEAddIntToDictionary(v75, @"SPIValue", bswap32(*(v111 + 4)));
        NEAddIntToDictionary(v75, @"ReplayWindowSize", *(v111 + 8));
        v113 = *(v111 + 11);
        switch(v113)
        {
          case 1:
            v114 = @"DES";
            break;
          case 12:
            v114 = @"AES-128";
            break;
          case 2:
            v114 = @"3DES";
            break;
          default:
            goto LABEL_215;
        }

        CFDictionaryAddValue(v75, @"EncryptionAlgorithm", v114);
LABEL_215:
        if (*(v111 + 10) - 1) <= 7u && ((0xE3u >> (*(v111 + 10) - 1)))
        {
          CFDictionaryAddValue(v75, @"AuthAlgorithm", off_1E7F09208[(*(v111 + 10) - 1)]);
        }

        if ((*(v111 + 12) & 2) == 0)
        {
          goto LABEL_224;
        }

        v118 = *MEMORY[0x1E695E4D0];
        CFDictionaryAddValue(v75, @"NATTraversal", *MEMORY[0x1E695E4D0]);
        v119 = *(v111 + 12);
        if ((v119 & 4) != 0)
        {
          CFDictionaryAddValue(v75, @"NATTKeepAlive", v118);
          v119 = *(v111 + 12);
          if ((v119 & 0x8000) == 0)
          {
LABEL_221:
            if ((v119 & 0x1000) == 0)
            {
              goto LABEL_223;
            }

            goto LABEL_222;
          }
        }

        else if ((v119 & 0x8000) == 0)
        {
          goto LABEL_221;
        }

        CFDictionaryAddValue(v75, @"NATTKeepAliveOffload", v118);
        if ((*(v111 + 12) & 0x1000) != 0)
        {
LABEL_222:
          CFDictionaryAddValue(v75, @"NATTDetectedPeer", v118);
        }

LABEL_223:
        NEAddIntToDictionary(v75, @"ReplayWindowSize", *(v111 + 16));
LABEL_224:
        v120 = a1[19];
        if (!v120)
        {
          goto LABEL_232;
        }

        v121 = *(v120 + 4);
        if (v121 == 1)
        {
          v122 = @"Transport";
        }

        else
        {
          if (v121 != 2)
          {
            goto LABEL_230;
          }

          v122 = @"Tunnel";
        }

        CFDictionaryAddValue(v75, @"Mode", v122);
LABEL_230:
        v123 = *(v120 + 12);
        if (v123)
        {
          NEAddIntToDictionary(v75, @"UniqueID", v123);
        }

LABEL_232:
        v124 = CFDictionaryGetValue(v11, @"Direction");
        if (v124)
        {
          v125 = CFEqual(v124, @"In");
          v126 = v125 == 0;
          if (v125)
          {
            v127 = 6;
LABEL_237:
            v128 = a1[v127];
            if (v128)
            {
              goto LABEL_241;
            }

            v129 = 25;
            if (v126)
            {
              v129 = 23;
            }

            v128 = a1[v129];
            if (v128)
            {
LABEL_241:
              NEAddAddressToDictionary(v75, @"LocalAddress", v128 + 8);
              NEAddPortToDictionary(v75, @"LocalPort", v128 + 8);
              NEAddIntToDictionary(v75, @"LocalPrefix", *(v128 + 5));
              v130 = *(v128 + 4);
            }

            else
            {
              v130 = 255;
            }

            v131 = 5;
            if (v126)
            {
              v131 = 6;
            }

            v132 = a1[v131];
            if (v132)
            {
              goto LABEL_248;
            }

            v133 = 23;
            if (v126)
            {
              v133 = 25;
            }

            v132 = a1[v133];
            if (v132)
            {
LABEL_248:
              NEAddAddressToDictionary(v75, @"RemoteAddress", v132 + 8);
              NEAddPortToDictionary(v75, @"RemotePort", v132 + 8);
              NEAddIntToDictionary(v75, @"RemotePrefix", *(v132 + 5));
            }

            if (v130 != 255)
            {
              NEAddIntToDictionary(v75, @"UpperLayerProtocol", v130);
            }

            NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v153[0], 1, v75);
            v134 = v75;
LABEL_292:
            CFRelease(v134);
            goto LABEL_163;
          }
        }

        else
        {
          v126 = 1;
        }

        v127 = 5;
        goto LABEL_237;
      case 6:
        v70 = v153[0];
        v71 = a2;
        v72 = 8448;
        goto LABEL_137;
      case 8:
        v70 = v153[0];
        v71 = a2;
        v72 = 8704;
        goto LABEL_137;
      case 0xE:
        v82 = a1[18];
        if (v82)
        {
          v80 = *(v82 + 8);
          v81 = @"PolicyID";
LABEL_134:
          v83 = v11;
LABEL_158:
          NEAddIntToDictionary(v83, v81, v80);
LABEL_159:
          v19 = *(v5 + 1);
        }

        else
        {
          v19 = 14;
        }

LABEL_160:
        v50 = v153[0];
        v51 = *(a2 + 96);
LABEL_161:
        v52 = 1;
        goto LABEL_162;
      case 0xF:
      case 0x16:
        NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v153[0], 1, 0);
        goto LABEL_90;
      case 0x10:
        v55 = *MEMORY[0x1E695E480];
        v56 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v56)
        {
          goto LABEL_159;
        }

        v57 = v56;
        v58 = a1[22];
        if (v58)
        {
          if (*(v58 + 52))
          {
            v59 = CFStringCreateWithCString(v55, (v58 + 52), 0x600u);
            if (v59)
            {
              v60 = v59;
              CFDictionaryAddValue(0, @"IPSecInterface", v59);
              CFRelease(v60);
            }
          }

          if (*(v58 + 28))
          {
            v61 = CFStringCreateWithCString(v55, (v58 + 28), 0x600u);
            if (v61)
            {
              v62 = v61;
              CFDictionaryAddValue(0, @"OutgoingInterface", v61);
              CFRelease(v62);
            }
          }

          if (*(v58 + 4))
          {
            v63 = CFStringCreateWithCString(v55, (v58 + 4), 0x600u);
            if (v63)
            {
              v64 = v63;
              CFDictionaryAddValue(0, @"InternalInterface", v63);
              CFRelease(v64);
            }
          }

          if (*(v58 + 76))
          {
            CFDictionaryAddValue(0, @"IntializeDisabled", *MEMORY[0x1E695E4D0]);
          }
        }

        v65 = a1[18];
        if (!v65)
        {
          goto LABEL_276;
        }

        v66 = *(v65 + 6);
        if (v66 == 1)
        {
          v67 = @"In";
        }

        else
        {
          if (v66 != 2)
          {
            goto LABEL_205;
          }

          v67 = @"Out";
        }

        CFDictionaryAddValue(v57, @"Direction", v67);
LABEL_205:
        NEAddIntToDictionary(v57, @"PolicyID", *(v65 + 2));
        v115 = v65[2];
        if (v115 <= 5)
        {
          CFDictionaryAddValue(v57, @"PolicyType", off_1E7F09248[v115]);
        }

        if (*v65 < 3u)
        {
          goto LABEL_274;
        }

        v116 = *(v65 + 21);
        if (*(v65 + 21))
        {
          if (v116 == 3)
          {
            v117 = @"Unique";
          }

          else
          {
            if (v116 != 2)
            {
              goto LABEL_259;
            }

            v117 = @"Require";
          }
        }

        else
        {
          v117 = @"None";
        }

        CFDictionaryAddValue(v57, @"Level", v117);
LABEL_259:
        v135 = *(v65 + 20);
        if (v135 == 1)
        {
          v136 = @"Transport";
        }

        else
        {
          if (v135 != 2)
          {
            goto LABEL_264;
          }

          v136 = @"Tunnel";
        }

        CFDictionaryAddValue(v57, @"Mode", v136);
LABEL_264:
        v137 = v65[9];
        if (v137 == 50)
        {
          v138 = @"ESP";
        }

        else
        {
          if (v137 != 51)
          {
            goto LABEL_269;
          }

          v138 = @"AH";
        }

        CFDictionaryAddValue(v57, @"IPSecProtocol", v138);
LABEL_269:
        if (v65[11])
        {
          NEAddIntToDictionary(v57, @"UniqueID", v65[11]);
        }

        v139 = v65[8];
        if (v139 >= 9)
        {
          v140 = *(v65 + 24);
          if (v140 + *(v65 + v140 + 24) + 8 == v139)
          {
            NEAddAddressToDictionary(v57, @"OuterLocalAddress", (v65 + 12));
            NEAddAddressToDictionary(v57, @"OuterRemoteAddress", v65 + v140 + 24);
          }
        }

LABEL_274:
        if (*(v65 + 6) == 1)
        {
          v141 = 0;
          v142 = 6;
        }

        else
        {
LABEL_276:
          v141 = 1;
          v142 = 5;
        }

        v143 = a1[v142];
        if (v143)
        {
          goto LABEL_281;
        }

        v144 = 25;
        if (v141)
        {
          v144 = 23;
        }

        v143 = a1[v144];
        if (v143)
        {
LABEL_281:
          NEAddAddressToDictionary(v57, @"LocalAddress", v143 + 8);
          NEAddPortToDictionary(v57, @"LocalPort", v143 + 8);
          NEAddIntToDictionary(v57, @"LocalPrefix", *(v143 + 5));
          v145 = *(v143 + 4);
        }

        else
        {
          v145 = 255;
        }

        v146 = 5;
        if (v141)
        {
          v146 = 6;
        }

        v147 = a1[v146];
        if (v147)
        {
          goto LABEL_288;
        }

        v148 = 23;
        if (v141)
        {
          v148 = 25;
        }

        v147 = a1[v148];
        if (v147)
        {
LABEL_288:
          NEAddAddressToDictionary(v57, @"RemoteAddress", v147 + 8);
          NEAddPortToDictionary(v57, @"RemotePort", v147 + 8);
          NEAddIntToDictionary(v57, @"RemotePrefix", *(v147 + 5));
        }

        if (v145 != 255)
        {
          NEAddIntToDictionary(v57, @"UpperLayerProtocol", v145);
        }

        NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v153[0], 1, v57);
        v134 = v57;
        goto LABEL_292;
      case 0x17:
        if (HIBYTE(v152) == 1)
        {
          v70 = v153[0];
          v71 = a2;
          v72 = 10240;
        }

        else
        {
          if (v152 != 1)
          {
            goto LABEL_163;
          }

          v70 = v153[0];
          v71 = a2;
          v72 = 8208;
        }

LABEL_137:
        NEIPSecDBNotifyClient(v71, v70, v72);
        goto LABEL_163;
      case 0x1A:
        v68 = CFDictionaryGetValue(v11, @"Direction");
        if (v68)
        {
          v69 = CFEqual(v68, @"In") == 0;
        }

        else
        {
          v69 = 1;
        }

        v84 = a1[22];
        if (v84)
        {
          v85 = MEMORY[0x1E695E480];
          if (*(v84 + 52))
          {
            v86 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v84 + 52), 0x600u);
            if (v86)
            {
              v87 = v86;
              CFDictionarySetValue(v11, @"IPSecInterface", v86);
              CFRelease(v87);
            }
          }

          v89 = *(v84 + 28);
          v88 = (v84 + 28);
          if (v89)
          {
            v90 = CFStringCreateWithCString(*v85, v88, 0x600u);
            if (v90)
            {
              v91 = v90;
              CFDictionarySetValue(v11, @"OutgoingInterface", v90);
              CFRelease(v91);
            }
          }
        }

        v92 = 28;
        if (v69)
        {
          v92 = 27;
        }

        v93 = a1[v92];
        if (v93)
        {
          CFDictionaryRemoveValue(v11, @"LocalAddress");
          CFDictionaryRemoveValue(v11, @"LocalPort");
          CFDictionaryRemoveValue(v11, @"LocalPrefix");
          NEAddAddressToDictionary(v11, @"LocalAddress", v93 + 8);
          NEAddPortToDictionary(v11, @"LocalPort", v93 + 8);
          NEAddIntToDictionary(v11, @"LocalPrefix", *(v93 + 5));
        }

        v94 = 27;
        if (v69)
        {
          v94 = 28;
        }

        v95 = a1[v94];
        if (!v95)
        {
          goto LABEL_159;
        }

        CFDictionaryRemoveValue(v11, @"RemoteAddress");
        CFDictionaryRemoveValue(v11, @"RemotePort");
        CFDictionaryRemoveValue(v11, @"RemotePrefix");
        NEAddAddressToDictionary(v11, @"RemoteAddress", v95 + 8);
        NEAddPortToDictionary(v11, @"RemotePort", v95 + 8);
        v80 = *(v95 + 5);
        v83 = v11;
        v81 = @"RemotePrefix";
        goto LABEL_158;
      default:
        goto LABEL_163;
    }
  }

  if (strerror_r(*(v5 + 2), buf, 0x80uLL))
  {
    buf[0] = 0;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v54 = *(v5 + 1);
    *v154 = 138413058;
    v155 = a2;
    v156 = 1024;
    v157 = v54;
    v158 = 1024;
    v159 = v17;
    v160 = 2080;
    v161 = buf;
    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Received PFKey Message (type %d) reporting error: [%d] %s", v154, 0x22u);
  }

  v19 = *(v5 + 1);
  if (v19 > 0xD)
  {
    if (*(v5 + 1) <= 0xFu)
    {
      if (v19 == 14)
      {
        v49 = *(a2 + 88);
        goto LABEL_94;
      }

      if (v19 != 15)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v19 == 16)
      {
        goto LABEL_95;
      }

      if (v19 != 22)
      {
        if (v19 != 26)
        {
          goto LABEL_163;
        }

        goto LABEL_84;
      }
    }

    NEIPSecDBNotifyRequest(*(a2 + 96), v19, v153[0], 0, 0);
    v48 = *(v5 + 2);
    if (v48 == 22 || v48 == 2)
    {
LABEL_90:
      v47 = *(a2 + 88);
      goto LABEL_91;
    }
  }

  else
  {
    if (*(v5 + 1) <= 2u)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_163;
        }

        goto LABEL_84;
      }
    }

    else if (v19 != 3)
    {
      if (v19 != 4 && v19 != 5)
      {
        goto LABEL_163;
      }

LABEL_84:
      NEIPSecDBNotifyRequest(*(a2 + 96), v19, v153[0], 0, 0);
      if (*(v5 + 2) != 2)
      {
        goto LABEL_163;
      }

      v47 = *(a2 + 80);
LABEL_91:
      NERemoveValueFromIntKeyedDictionary(v47, v153[0]);
      goto LABEL_163;
    }

    v49 = *(a2 + 80);
LABEL_94:
    NERemoveValueFromIntKeyedDictionary(v49, v153[0]);
    v19 = *(v5 + 1);
LABEL_95:
    v50 = v153[0];
    v51 = *(a2 + 96);
    v52 = 0;
LABEL_162:
    NEIPSecDBNotifyRequest(v51, v19, v50, v52, 0);
  }

LABEL_163:
  if (!CFDictionaryGetCount(*(a2 + 80)))
  {
    NEIPSecDBNotifyRequest(*(a2 + 96), 9, 0, 1, 0);
  }

  if (!CFDictionaryGetCount(*(a2 + 88)))
  {
    NEIPSecDBNotifyRequest(*(a2 + 96), 19, 0, 1, 0);
  }

LABEL_167:
  CFRelease(a2);
LABEL_168:
  v96 = *MEMORY[0x1E69E9840];
}

BOOL NEIPSecDBStatsHandleReply(uint64_t a1, uint64_t *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*a2 || (v6 = a2[20]) == 0 || (v7 = a2[21]) == 0)
  {
    v16 = ne_log_obj();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }

    v37 = 136315138;
    v38 = "NEIPSecDBStatsHandleReply";
    v13 = "%s: Bad sadb getsastat response";
    v14 = v16;
    v15 = 12;
    goto LABEL_31;
  }

  v8 = *(v6 + 8);
  if (!v8)
  {
    v18 = ne_log_obj();
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }

    v19 = *(v5 + 1);
    v37 = 136315394;
    v38 = "NEIPSecDBStatsHandleReply";
    v39 = 1024;
    v40 = v19;
    v13 = "%s: msg type %d: session-id[0] is invalid.";
    goto LABEL_20;
  }

  *a3 = v8;
  if (!*(v7 + 12))
  {
    v18 = ne_log_obj();
    result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }

    v20 = *(v5 + 1);
    v37 = 136315394;
    v38 = "NEIPSecDBStatsHandleReply";
    v39 = 1024;
    v40 = v20;
    v13 = "%s: msg type %d: sastats is invalid.";
LABEL_20:
    v14 = v18;
    v15 = 18;
LABEL_31:
    _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, v13, &v37, v15);
LABEL_32:
    result = 0;
    goto LABEL_15;
  }

  if (!a1)
  {
    v36 = ne_log_obj();
    result = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_15;
    }

    v37 = 136315138;
    v38 = "NEIPSecDBStatsUpdate";
    _os_log_fault_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_FAULT, "%s called with null session", &v37, 0xCu);
    goto LABEL_32;
  }

  v9 = *(v7 + 4);
  if (v8)
  {
    v10 = (v9 - 1) >= 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = ne_log_obj();
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_15;
    }

    LOWORD(v37) = 0;
    v13 = "invalid arguments";
    v14 = v11;
    v15 = 2;
    goto LABEL_31;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v23 = *(a1 + 104);
  if (!v23)
  {
    goto LABEL_32;
  }

  while (*(v23 + 4) != v8 && *(v23 + 5) != v8)
  {
    result = 0;
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_15;
    }
  }

  v24 = *(v7 + 32);
  if (v9 != 1)
  {
    if (v23[7] != v24)
    {
      v23[7] = v24;
      *(v23 + 80) = 1;
      goto LABEL_39;
    }

LABEL_37:
    v25 = vadd_s32(*(v23 + 68), 0x100000001);
    *(v23 + 68) = v25;
    v26 = v25.i32[0];
    goto LABEL_40;
  }

  if (v23[6] == v24)
  {
    goto LABEL_37;
  }

  v23[6] = v24;
  *(v23 + 81) = 1;
LABEL_39:
  v26 = *(v23 + 17) + 1;
  *(v23 + 17) = v26;
LABEL_40:
  if (v26 != *(v23 + 16))
  {
LABEL_53:
    result = 1;
    goto LABEL_15;
  }

  v27 = *(v23 + 8);
  if (!v27)
  {
LABEL_49:
    v32 = *(v23 + 9);
    if (v32)
    {
      if (*(v23 + 80) == 1 && (*(v23 + 81) & 1) == 0)
      {
        v33 = *(v23 + 19) + 1;
        *(v23 + 19) = v33;
        if (*(v23 + 10) * v33 >= v32)
        {
          v34 = ne_log_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(v23 + 10) * *(v23 + 19);
            v37 = 136315394;
            v38 = "NEIPSecDBStatsUpdate";
            v39 = 1024;
            v40 = v35;
            _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_DEFAULT, "%s: no incoming traffic on SA for past %d secs", &v37, 0x12u);
          }

          if (a5)
          {
            *a5 = 1;
          }

          *(v23 + 40) = 0;
          *(v23 + 19) = 0;
        }
      }

      else
      {
        *(v23 + 19) = 0;
        *(v23 + 40) = 0;
      }
    }

    goto LABEL_53;
  }

  if (*(v23 + 18) != v26)
  {
    *(v23 + 11) = 0;
    goto LABEL_49;
  }

  v28 = *(v23 + 10);
  v29 = *(v23 + 11) + 1;
  *(v23 + 11) = v29;
  if (v28 * v29 < v27)
  {
    goto LABEL_49;
  }

  v30 = ne_log_obj();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(v23 + 10) * *(v23 + 11);
    v37 = 136315394;
    v38 = "NEIPSecDBStatsUpdate";
    v39 = 1024;
    v40 = v31;
    _os_log_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_INFO, "%s: SA is idle for past %d secs", &v37, 0x12u);
  }

  result = 1;
  if (a4)
  {
    *a4 = 1;
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NEIPSecDBExtractSPIFromPFKeyMessage(void *a1)
{
  result = 0;
  v3 = *(*a1 + 1);
  if (v3 <= 0x1A)
  {
    v4 = 1 << v3;
    if ((v4 & 0x40006AE) != 0)
    {
      v5 = *(*a1 + 12);
      if (v5 != getpid() || !*a1)
      {
        return 0;
      }
    }

    else if ((v4 & 0x110) == 0)
    {
      return result;
    }

    v6 = a1[1];
    if (v6)
    {
      return *(v6 + 4);
    }

    return 0;
  }

  return result;
}

__CFString *__NEIPSecDBCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<NEIPSecDB %p [%p]> {", a1, v2);
  if (a1)
  {
    CFStringAppendFormat(Mutable, 0, @"UniqueIndex = %llu", a1[2]);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

NSObject *NEIPSecDBNotifyRequest(NSObject *result, int a2, int a3, char a4, CFTypeRef cf)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      isa = v5->isa;
      if (LODWORD(v5[3].isa) == a2 && HIDWORD(v5[3].isa) == a3)
      {
        break;
      }

      v5 = v5->isa;
      if (!isa)
      {
        return result;
      }
    }

    LOBYTE(v5[4].isa) = a4;
    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    v5[5].isa = v7;
    result = v5[2].isa;
    if (result)
    {

      return dispatch_semaphore_signal(result);
    }
  }

  return result;
}

__CFDictionary *NEVirtualInterfaceCopyStatistics(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      *v14 = xmmword_1BAA4E5F0;
      v15 = *(a1 + 292);
      v16 = 1;
      v9 = 180;
      if (sysctl(v14, 6u, v17, &v9, 0, 0) == -1)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v6 = __error();
          v7 = strerror(*v6);
          *buf = 136315394;
          v11 = a1 + 265;
          v12 = 2080;
          v13 = v7;
          _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to get statistics from interface %s: %s", buf, 0x16u);
        }
      }

      NEAddInt64ToDictionary(Mutable, @"BytesIn", v25);
      NEAddInt64ToDictionary(Mutable, @"BytesOut", *(&v25 + 1));
      NEAddInt64ToDictionary(Mutable, @"PacketsIn", *(&v22 + 1));
      NEAddInt64ToDictionary(Mutable, @"PacketsOut", *(&v23 + 1));
      NEAddInt64ToDictionary(Mutable, @"ErrorsIn", v23);
      NEAddInt64ToDictionary(Mutable, @"ErrorsOut", v24);
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v17 = 136315138;
      *&v17[4] = "NEVirtualInterfaceCopyStatistics";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null interface", v17, 0xCu);
    }

    Mutable = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void NEAddInt64ToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void *sub_1BA842654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BA842664()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA8426AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA842754()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8427AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA8427E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA84283C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA84288C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA8428D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA842920()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842958()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8429CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA842A1C(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1BA842A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA842B70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842BCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA842C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BA842D0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BA842DB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842DE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BA842E38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA842E80()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA842ED0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA842F30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842F68()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA842FBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA843018()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BA843060()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8430B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BA84985C(v3 + 64, a2, &qword_1EBC0ED60, &qword_1BAA4D460);
}

double sub_1BA84314C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1BAA39FDC();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1BA8431B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  return sub_1BA84985C(v3 + v4, a2, &qword_1EBC0ED68, &qword_1BAA4D468);
}

uint64_t sub_1BA843228()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA843274()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA8432B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA843384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA843484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84352C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84364C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA843694()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA8436CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA843714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA84375C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA8437AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA8437F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA843844()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA843888()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8438C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84396C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8439C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BA843A10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA843A60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = sub_1BAA39FDC();
  *a2 = v5;
  return result;
}

uint64_t sub_1BA843B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

char *sub_1BA843CEC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.getter();
  *a2 = result;
  return result;
}

void sub_1BA843D18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.setter(v4);
}

uint64_t sub_1BA8447E4()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA844858()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

void sub_1BA8448AC(const UInt8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = [(NSData *)v6 sensitiveDataWithBytes:a1 length:a2 - a1];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BAA3969C();
      v11 = v10;

      *a3 = v9;
      a3[1] = v11;
    }

    else
    {
      sub_1BA8497B4();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA844C18(uint64_t a1@<X8>)
{
  v43 = a1;
  v3 = *(*(sub_1BAA399FC() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAA39DCC();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  (MEMORY[0x1EEE9AC00])();
  v53 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BAA39A9C();
  v50 = *(v52 - 8);
  v8 = *(v50 + 64);
  (MEMORY[0x1EEE9AC00])();
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BAA39A7C();
  v46 = *(v48 - 8);
  v10 = *(v46 + 64);
  (MEMORY[0x1EEE9AC00])();
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A8C();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  (MEMORY[0x1EEE9AC00])();
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(sub_1BAA39A6C() - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v51 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAA3998C();
  v59 = *(v18 - 8);
  v19 = *(v59 + 64);
  v20 = (MEMORY[0x1EEE9AC00])();
  v56 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v41 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v41 - v28;
  v42 = v1;
  v30 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  v31 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8);
  if ((v31 & 0x2000000000000000) != 0)
  {
    v57 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
    v58 = v31 & 0xDFFFFFFFFFFFFFFFLL;
    sub_1BA8498C4(v30, v31 & 0xDFFFFFFFFFFFFFFFLL);
    sub_1BAA3997C();
    if (v2)
    {
      return;
    }

    v34 = v59;
    (*(v59 + 32))(v29, v27, v18);
  }

  else
  {
    sub_1BA84BC48(*(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key), *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8));
    v32 = sub_1BA849B04(v30);
    if (v2)
    {
      sub_1BA84BCB8(v30, v31);
      return;
    }

    v57 = v32;
    v58 = v33;
    sub_1BAA3997C();
    sub_1BA84BCB8(v30, v31);
    v35 = *(v59 + 32);
    v34 = v59;
    v35(v27, v24, v18);
    v35(v29, v27, v18);
  }

  (*(v34 + 16))(v56, v29, v18);
  (*(v44 + 104))(v15, *MEMORY[0x1E6966520], v45);
  (*(v46 + 104))(v47, *MEMORY[0x1E6966510], v48);
  (*(v50 + 104))(v49, *MEMORY[0x1E6966530], v52);
  sub_1BAA39A5C();
  v36 = v53;
  sub_1BAA39DBC();
  sub_1BAA39DAC();
  v38 = v37;
  (*(v54 + 8))(v36, v55);
  if (v38 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v39 = v42;
    v40 = *(v42 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
    v57 = *(v42 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
    v58 = v40;
    sub_1BA8498C4(v57, v40);
    sub_1BAA399EC();
    sub_1BA8498C4(*(v39 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v39 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
    sub_1BAA39AAC();
    (*(v59 + 8))(v29, v18);
  }
}

void sub_1BA845284(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v95 = a2;
  v76 = a3;
  v4 = sub_1BAA399FC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v72[1] = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72[0] = v72 - v8;
  v9 = sub_1BAA39DCC();
  v87 = *(v9 - 8);
  v88 = v9;
  v10 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v86 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A9C();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v83 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAA39A7C();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v82 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAA39A8C();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v79 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BAA39A6C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v93 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v74 = v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9F8, &qword_1BAA4CA48);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v72 - v28;
  v30 = sub_1BAA39A1C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v73 = v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v72 - v35;
  v37 = sub_1BAA399CC();
  v91 = *(v37 - 8);
  v92 = v37;
  v38 = *(v91 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v89 = v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = v72 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v72 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v90 = v72 - v47;
  v75 = v3;
  v49 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  v48 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8);
  if ((v48 & 0x2000000000000000) != 0)
  {
    v96 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
    v97 = v48 & 0xDFFFFFFFFFFFFFFFLL;
    sub_1BA8498C4(v49, v48 & 0xDFFFFFFFFFFFFFFFLL);
    v52 = v98;
    sub_1BAA399AC();
    if (!v52)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1BA84BC48(*(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key), *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8));
    v50 = v49;
    v51 = v98;
    sub_1BAA39A0C();
    if (v51)
    {

      (*(v31 + 56))(v29, 1, 1, v30);
      sub_1BA84BC58(v29, &qword_1EBC0E9F8, &qword_1BAA4CA48);
      sub_1BA84BC48(v49, v48);
      v69 = sub_1BA849B04(v50);
      v71 = v70;
      sub_1BA84BCB8(v49, v48);
      v96 = v69;
      v97 = v71;
      sub_1BAA399AC();
      sub_1BA84BCB8(v49, v48);
      v46 = v43;
LABEL_5:
      v54 = v90;
      v53 = v91;
      v55 = v92;
      (*(v91 + 32))(v90, v46, v92);
      (*(v53 + 16))(v89, v54, v55);
      (*(v77 + 104))(v79, *MEMORY[0x1E6966520], v78);
      (*(v80 + 104))(v82, *MEMORY[0x1E6966510], v81);
      (*(v84 + 104))(v83, *MEMORY[0x1E6966530], v85);
      sub_1BAA39A5C();
      v56 = v86;
      sub_1BAA39DBC();
      sub_1BAA39DAC();
      v58 = v57;
      (*(v87 + 8))(v56, v88);
      if (v58 >> 60 != 15)
      {
        v59 = v75;
        v61 = *(v75 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
        v96 = *(v75 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
        v60 = v96;
        v97 = v61;
        sub_1BA8498C4(v94, v95);
        sub_1BA8498C4(v60, v61);
        sub_1BAA399EC();
        sub_1BA8498C4(*(v59 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v59 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
        v62 = v92;
        sub_1BAA39AEC();
        (*(v91 + 8))(v90, v62);
        return;
      }

      __break(1u);
      goto LABEL_11;
    }

    v98 = 0;
    (*(v31 + 56))(v29, 0, 1, v30);
    (*(v31 + 32))(v36, v29, v30);
    (*(v31 + 16))(v73, v36, v30);
    (*(v77 + 104))(v79, *MEMORY[0x1E6966520], v78);
    (*(v80 + 104))(v82, *MEMORY[0x1E6966510], v81);
    (*(v84 + 104))(v83, *MEMORY[0x1E6966530], v85);
    sub_1BAA39A5C();
    v63 = v86;
    sub_1BAA39DBC();
    v93 = sub_1BAA39DAC();
    v65 = v64;
    (*(v87 + 8))(v63, v88);
    v92 = v65;
    if (v65 >> 60 == 15)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v66 = v75;
    v68 = *(v75 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
    v96 = *(v75 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
    v67 = v96;
    v97 = v68;
    sub_1BA8498C4(v94, v95);
    sub_1BA8498C4(v67, v68);
    sub_1BAA399EC();
    sub_1BA8498C4(*(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
    sub_1BAA39AEC();
    (*(v31 + 8))(v36, v30);
    sub_1BA84BCB8(v49, v48);
  }
}

void sub_1BA845CFC()
{
  v2 = sub_1BAA39ADC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA844C18(v6);
  if (!v1)
  {
    v7 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
    v8 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload + 8);
    v33 = v7;
    v34 = v8;
    v9 = v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad;
    v10 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    v11 = *(v9 + 8);
    if (v11 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v13 = 0xC000000000000000;
    if (v11 >> 60 != 15)
    {
      v13 = v11;
    }

    v31 = v12;
    v32 = v13;
    sub_1BA8498C4(v7, v8);
    sub_1BA84BC34(v10, v11);
    sub_1BA849808();
    v14 = sub_1BAA39ACC();
    v16 = v15;
    sub_1BA84724C(v31, v32);
    sub_1BA84724C(v33, v34);
    v17 = sub_1BAA39ABC();
    v19 = v17;
    v20 = v18;
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_19;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
LABEL_19:
        v26 = v16 >> 62;
        if ((v16 >> 62) > 1)
        {
          if (v26 != 2)
          {
            v27 = 0;
            goto LABEL_29;
          }

          v29 = *(v14 + 16);
          v28 = *(v14 + 24);
          v25 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (!v25)
          {
            goto LABEL_29;
          }

          __break(1u);
        }

        else if (!v26)
        {
          v27 = BYTE6(v16);
LABEL_29:
          if (!__OFADD__(v22, v27))
          {
            v33 = sub_1BA849C28(v22 + v27);
            v34 = v30;
            sub_1BAA396AC();
            sub_1BAA396AC();
            sub_1BA84724C(v14, v16);
            sub_1BA84724C(v19, v20);
            (*(v3 + 8))(v6, v2);
            return;
          }

          __break(1u);
          goto LABEL_32;
        }

        LODWORD(v27) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
LABEL_33:
          __break(1u);
          return;
        }

        v27 = v27;
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v18);
      goto LABEL_19;
    }

    LODWORD(v22) = HIDWORD(v17) - v17;
    if (__OFSUB__(HIDWORD(v17), v17))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v22 = v22;
    goto LABEL_19;
  }
}

uint64_t sub_1BA845FC0()
{
  v2 = sub_1BAA39B0C();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  v7 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  v8 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload + 8);
  sub_1BA8498C4(v7, v8);
  sub_1BA846208(32, v7, v8, &v24);
  v10 = v24;
  v9 = v25;
  v11 = *v6;
  v12 = v6[1];
  sub_1BA8498C4(*v6, v12);
  sub_1BA846350(32, v11, v12, &v24);
  v14 = v24;
  v13 = v25;
  sub_1BA845284(v10, v9, v5);
  if (v1)
  {
    sub_1BA84724C(v14, v13);
    sub_1BA84724C(v10, v9);
  }

  else
  {
    v24 = v14;
    v25 = v13;
    v15 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    v16 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad + 8);
    if (v16 >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    }

    v18 = 0xC000000000000000;
    if (v16 >> 60 != 15)
    {
      v18 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad + 8);
    }

    v21 = v2;
    v22 = v17;
    v23 = v18;
    sub_1BA84BC34(v15, v16);
    sub_1BA849808();
    v0 = sub_1BAA39AFC();
    sub_1BA84724C(v10, v9);
    sub_1BA84724C(v22, v23);
    (*(v26 + 8))(v5, v21);
    sub_1BA84724C(v14, v13);
  }

  return v0;
}

uint64_t sub_1BA846208@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1BA849A50(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1BA8499EC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1BAA3967C();
    v15 = v14;
    result = sub_1BA84724C(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BA846350@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1BA849A50(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_1BA8499EC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_1BAA3967C();
    v17 = v16;
    result = sub_1BA84724C(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

id sub_1BA8464B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();
  v8 = v7;

  v9 = sub_1BAA3968C();
  sub_1BA84724C(v6, v8);

  return v9;
}

id sub_1BA846928(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = sub_1BAA3969C();
  sub_1BA84724C(v6, v7);

  sub_1BA8497B4();
  v8 = swift_allocError();
  *v9 = 2;
  swift_willThrow();
  if (a4)
  {
    v10 = sub_1BAA395FC();

    v11 = v10;
    *a4 = v10;
  }

  else
  {
  }

  return 0;
}

id _sSo20NEIKEv2CryptoKitHPKEC16NetworkExtensionEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1BA846B24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t, unint64_t))
{
  v9 = a3;
  v10 = a1;
  v11 = sub_1BAA3969C();
  v13 = v12;

  v14 = *a5;
  swift_beginAccess();
  v15 = a6(v11, v13);
  v17 = v16;
  swift_endAccess();

  sub_1BA84724C(v11, v13);
  v18 = sub_1BAA3968C();
  sub_1BA84724C(v15, v17);

  return v18;
}

uint64_t sub_1BA846C70(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t))
{
  v9 = sub_1BAA396FC();
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - v14;
  v16 = *a3;
  swift_beginAccess();
  a4(a1, a2);
  result = swift_endAccess();
  if (!v4)
  {
    v18 = v21;
    (*(v21 + 16))(v13, v15, v9);
    sub_1BA849918(&qword_1EBC0E9F0, MEMORY[0x1E6999670]);
    sub_1BAA395EC();
    v19 = *(v18 + 8);
    v19(v13, v9);
    v19(v15, v9);
    return v20[1];
  }

  return result;
}

id sub_1BA846EC0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = a3;
  v10 = a1;
  v11 = sub_1BAA3969C();
  v13 = v12;

  v14 = sub_1BA846C70(v11, v13, a5, a6);
  v16 = v15;

  sub_1BA84724C(v11, v13);
  v17 = sub_1BAA3968C();
  sub_1BA84724C(v14, v16);

  return v17;
}

void sub_1BA846FF4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  sub_1BAA3969C();

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id NEIKEv2KeyExchangeHandlerCryptoKit.init(method:keyExchangeData:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1BAA3968C();
  v8 = [v6 initWithMethod:a1 keyExchangeData:v7];

  sub_1BA84724C(a2, a3);
  return v8;
}

uint64_t sub_1BA84724C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *NEIKEv2KeyExchangeHandlerCryptoKit.init(method:keyExchangeData:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1BAA3968C();
  v8 = [(NEIKEv2KeyExchangeHandler *)v3 initWithMethod:a1 keyExchangeData:v7];
  sub_1BA84724C(a2, a3);

  return v8;
}

uint64_t sub_1BA8473B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA8474EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA847634(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t *, void, void), void *a7, void (*a8)(char *))
{
  v13 = a3;
  v14 = a1;
  v15 = sub_1BAA3969C();
  v17 = v16;

  sub_1BA84790C(v15, v17, a5, a6, a7, a8);
  sub_1BA84724C(v15, v17);
  return 1;
}

uint64_t sub_1BA84790C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, void, void), void *a5, void (*a6)(char *))
{
  v29 = a5;
  v30 = a6;
  v12 = sub_1BAA399DC();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v31 = a1;
  v32 = a2;
  sub_1BA8498C4(a1, a2);
  result = a4(&v31, MEMORY[0x1E6969080], MEMORY[0x1E6969078]);
  if (!v7)
  {
    v21 = v28;
    v22 = v6;
    v23 = v6 + *v29;
    v30(v19);
    sub_1BA849918(&qword_1EBC0E9E8, MEMORY[0x1E6966448]);
    sub_1BAA395EC();
    (*(v21 + 8))(v33, v12);
    v24 = v31;
    v25 = v32;
    v26 = sub_1BAA3968C();
    sub_1BA84724C(v24, v25);
    [(NEIKEv2KeyExchangeHandler *)v22 setSharedSecret:v26];

    return (*(v16 + 8))(v19, v15);
  }

  return result;
}

uint64_t sub_1BA847C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = *a3;
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1BA847CD8()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1BAA39CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9E0, &qword_1BAA4CA40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1BAA39C7C();
  if (v1)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v26 = v5;
  v27 = v4;
  v29 = ObjectType;
  v18 = sub_1BAA39C8C();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v15, 0, 1, v18);
  v20 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey;
  sub_1BA84BBCC(v15, v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  sub_1BA84985C(v2 + v20, v13, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  result = (*(v19 + 48))(v13, 1, v18);
  if (result != 1)
  {
    sub_1BAA39C5C();
    (*(v19 + 8))(v13, v18);
    v22 = sub_1BAA39CAC();
    v24 = v23;
    (*(v26 + 8))(v8, v27);
    v25 = sub_1BAA3968C();
    sub_1BA84724C(v22, v24);
    v28.receiver = v2;
    v28.super_class = v29;
    v2 = objc_msgSendSuper2(&v28, sel_initWithMethod_keyExchangeData_, 36, v25);

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_1BA847FF0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1BAA399FC();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAA39CCC();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39A4C();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey;
  v18 = sub_1BAA39C8C();
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  v43 = a1;
  v44 = a2;
  sub_1BA8498C4(a1, a2);
  sub_1BA849808();
  v19 = v41;
  sub_1BAA39CBC();
  if (v19)
  {
    sub_1BA84724C(a1, a2);
    sub_1BA84BC58(&v3[v17], &qword_1EBC0E9E0, &qword_1BAA4CA40);
    v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v9;
    v36 = v14;
    v41 = a1;
    v34 = v6;
    sub_1BAA39C9C();
    (*(v39 + 8))(v13, v10);
    v23 = sub_1BAA39A2C();
    v25 = v24;
    v26 = sub_1BAA3968C();
    sub_1BA84724C(v23, v25);
    v42.receiver = v3;
    v42.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v42, sel_initWithMethod_keyExchangeData_, 36, v26);

    v9 = v27;
    v28 = v35;
    sub_1BAA39A3C();
    sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458]);
    v29 = v34;
    sub_1BAA395EC();
    v30 = v41;
    (*(v38 + 8))(v28, v29);
    v31 = v43;
    v32 = v44;
    v33 = sub_1BAA3968C();
    sub_1BA84724C(v31, v32);
    [(NEIKEv2KeyExchangeHandler *)v9 setSharedSecret:v33];

    sub_1BA84724C(v30, a2);
    (*(v37 + 8))(v40, v36);
  }

  return v9;
}

uint64_t sub_1BA8484AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_1BAA399FC();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9E0, &qword_1BAA4CA40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_1BAA39C8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA84985C(v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey, v11, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA84BC58(v11, &qword_1EBC0E9E0, &qword_1BAA4CA40);
    sub_1BA8497B4();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = v25;
    v28 = v26;
    sub_1BA849808();
    v19 = v29;
    sub_1BAA39C6C();
    if (!v19)
    {
      sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458]);
      sub_1BAA395EC();
      (*(v24 + 8))(v7, v4);
      v20 = v27;
      v21 = v28;
      v22 = sub_1BAA3968C();
      sub_1BA84724C(v20, v21);
      [(NEIKEv2KeyExchangeHandler *)v3 setSharedSecret:v22];
    }

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1BA848838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_1BAA3969C();
  v11 = v10;

  a5(v9, v11);
  sub_1BA84724C(v9, v11);
  return 1;
}

void sub_1BA848994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1BA8496DC(319, a4, a5);
  if (v6 <= 0x3F)
  {
    v7 = *(v5 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA848A2C()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1BAA39D4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9C0, &qword_1BAA4CA38);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  sub_1BAA39CFC();
  if (v1)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v2;
  }

  v26 = v5;
  v27 = v4;
  v29 = ObjectType;
  v18 = sub_1BAA39D0C();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v15, 0, 1, v18);
  v20 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey;
  sub_1BA84BBCC(v15, v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  sub_1BA84985C(v2 + v20, v13, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  result = (*(v19 + 48))(v13, 1, v18);
  if (result != 1)
  {
    sub_1BAA39CDC();
    (*(v19 + 8))(v13, v18);
    v22 = sub_1BAA39D2C();
    v24 = v23;
    (*(v26 + 8))(v8, v27);
    v25 = sub_1BAA3968C();
    sub_1BA84724C(v22, v24);
    v28.receiver = v2;
    v28.super_class = v29;
    v2 = objc_msgSendSuper2(&v28, sel_initWithMethod_keyExchangeData_, 37, v25);

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_1BA848D44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1BAA399FC();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAA39D4C();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39A4C();
  v37 = *(v14 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey;
  v18 = sub_1BAA39D0C();
  (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
  v43 = a1;
  v44 = a2;
  sub_1BA8498C4(a1, a2);
  sub_1BA849808();
  v19 = v41;
  sub_1BAA39D3C();
  if (v19)
  {
    sub_1BA84724C(a1, a2);
    sub_1BA84BC58(&v3[v17], &qword_1EBC0E9C0, &qword_1BAA4CA38);
    v20 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v9;
    v36 = v14;
    v41 = a1;
    v34 = v6;
    sub_1BAA39D1C();
    (*(v39 + 8))(v13, v10);
    v23 = sub_1BAA39A2C();
    v25 = v24;
    v26 = sub_1BAA3968C();
    sub_1BA84724C(v23, v25);
    v42.receiver = v3;
    v42.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v42, sel_initWithMethod_keyExchangeData_, 37, v26);

    v9 = v27;
    v28 = v35;
    sub_1BAA39A3C();
    sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458]);
    v29 = v34;
    sub_1BAA395EC();
    v30 = v41;
    (*(v38 + 8))(v28, v29);
    v31 = v43;
    v32 = v44;
    v33 = sub_1BAA3968C();
    sub_1BA84724C(v31, v32);
    [(NEIKEv2KeyExchangeHandler *)v9 setSharedSecret:v33];

    sub_1BA84724C(v30, a2);
    (*(v37 + 8))(v40, v36);
  }

  return v9;
}

uint64_t sub_1BA849200(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_1BAA399FC();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9C0, &qword_1BAA4CA38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_1BAA39D0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA84985C(v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey, v11, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BA84BC58(v11, &qword_1EBC0E9C0, &qword_1BAA4CA38);
    sub_1BA8497B4();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = v25;
    v28 = v26;
    sub_1BA849808();
    v19 = v29;
    sub_1BAA39CEC();
    if (!v19)
    {
      sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458]);
      sub_1BAA395EC();
      (*(v24 + 8))(v7, v4);
      v20 = v27;
      v21 = v28;
      v22 = sub_1BAA3968C();
      sub_1BA84724C(v20, v21);
      [(NEIKEv2KeyExchangeHandler *)v3 setSharedSecret:v22];
    }

    return (*(v13 + 8))(v16, v12);
  }
}

void sub_1BA84959C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  sub_1BAA3969C();

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id sub_1BA8495F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA849684(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA8496DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BAA3A03C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BA8497B4()
{
  result = qword_1EBC0E9C8;
  if (!qword_1EBC0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0E9C8);
  }

  return result;
}

unint64_t sub_1BA849808()
{
  result = qword_1EBC0E9D0;
  if (!qword_1EBC0E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0E9D0);
  }

  return result;
}

uint64_t sub_1BA84985C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA8498C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BA849918(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA849960()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA8499A8()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA8499EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1BA849A50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

CFErrorRef sub_1BA849B04(__SecKey *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, v8);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BAA3969C();
  }

  else
  {
    v3 = v8[0];
    if (v8[0])
    {
      type metadata accessor for CFError(0);
      sub_1BA849918(&qword_1EBC0EA00, type metadata accessor for CFError);
      swift_allocError();
      *v4 = v3;
    }

    else
    {
      sub_1BA8497B4();
      swift_allocError();
      *v5 = 0;
    }

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1BA849C28(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = sub_1BAA3959C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1BAA3958C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BAA3966C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BA849CCC(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  v86 = a8;
  v80 = a4;
  v81 = a7;
  v83 = a6;
  v84 = a2;
  v85 = a3;
  LODWORD(v88) = a1;
  v92 = a11;
  v89 = a10;
  v82 = a9;
  v12 = sub_1BAA3976C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v70 - v17;
  v18 = sub_1BAA3970C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v70 - v23;
  v24 = sub_1BAA39DCC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BAA3973C();
  v73 = *(v29 - 8);
  v30 = *(v73 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v75 = &v70 - v34;
  v35 = (v25 + 8);
  v79 = a5;
  if (v88)
  {
    v71 = v33;
    v72 = v32;
    v88 = type metadata accessor for NEIKEv2CryptoKitSPAKE2PlusProver(0);
    v78 = objc_allocWithZone(v88);
    sub_1BAA39DBC();
    v77 = sub_1BAA39DAC();
    v37 = v36;
    result = (*v35)(v28, v24);
    v74 = v37;
    if (v37 >> 60 != 15)
    {
      v39 = v76;
      (*(v19 + 104))(v76, *MEMORY[0x1E6999678], v18);
      sub_1BA8498C4(v89, v92);
      sub_1BA8498C4(v83, v81);
      sub_1BA8498C4(v80, v79);
      sub_1BA8498C4(v84, v85);
      sub_1BA8498C4(v86, v82);
      v40 = v75;
      v41 = v87;
      sub_1BAA3971C();
      if (v41)
      {
        v52 = *((*MEMORY[0x1E69E7D40] & *v78) + 0x30);
        v53 = *((*MEMORY[0x1E69E7D40] & *v78) + 0x34);
LABEL_10:
        swift_deallocPartialClassInstance();
        return v39;
      }

      v46 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F32NEIKEv2CryptoKitSPAKE2PlusProver_prover;
      v47 = v73;
      v48 = v78;
      v49 = v72;
      (*(v73 + 32))(&v78[OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F32NEIKEv2CryptoKitSPAKE2PlusProver_prover], v40, v72);
      swift_beginAccess();
      v50 = v71;
      (*(v47 + 16))(v71, &v48[v46], v49);
      v51 = v48;
      v62 = sub_1BAA3972C();
      v64 = v63;

      (*(v47 + 8))(v50, v49);
      v65 = sub_1BAA3968C();
      sub_1BA84724C(v62, v64);
      v90.receiver = v51;
      v90.super_class = v88;
      v66 = objc_msgSendSuper2(&v90, sel_initWithKeyShare_, v65);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v71 = v13;
    v72 = v12;
    v88 = type metadata accessor for NEIKEv2CryptoKitSPAKE2PlusVerifier(0);
    v76 = objc_allocWithZone(v88);
    sub_1BAA39DBC();
    v75 = sub_1BAA39DAC();
    v43 = v42;
    result = (*v35)(v28, v24);
    v73 = v43;
    if (v43 >> 60 != 15)
    {
      v39 = v77;
      (*(v19 + 104))(v77, *MEMORY[0x1E6999678], v18);
      sub_1BA8498C4(v89, v92);
      sub_1BA8498C4(v83, v81);
      sub_1BA8498C4(v80, v79);
      sub_1BA8498C4(v84, v85);
      sub_1BA8498C4(v86, v82);
      v44 = v78;
      v45 = v87;
      sub_1BAA3974C();
      if (v45)
      {
        v60 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x30);
        v61 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x34);
        goto LABEL_10;
      }

      v54 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F34NEIKEv2CryptoKitSPAKE2PlusVerifier_verifier;
      v55 = v71;
      v56 = v76;
      v57 = v72;
      (*(v71 + 32))(&v76[OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F34NEIKEv2CryptoKitSPAKE2PlusVerifier_verifier], v44, v72);
      swift_beginAccess();
      v58 = v74;
      (*(v55 + 16))(v74, &v56[v54], v57);
      v59 = v56;
      v67 = sub_1BAA3975C();
      v69 = v68;

      (*(v55 + 8))(v58, v57);
      v65 = sub_1BAA3968C();
      sub_1BA84724C(v67, v69);
      v91.receiver = v59;
      v91.super_class = v88;
      v66 = objc_msgSendSuper2(&v91, sel_initWithKeyShare_, v65);
LABEL_12:
      v39 = v66;

      return v39;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BA84A53C()
{
  v0 = sub_1BAA39C1C();
  v104 = *(v0 - 8);
  v105 = v0;
  v1 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v103 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BAA39C4C();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BAA3998C();
  v98 = *(v100 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BAA399CC();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BAA39BCC();
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BAA39BFC();
  v90 = *(v107 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39B7C();
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAA39BAC();
  v88 = *(v18 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BAA39B2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BAA39B5C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v29 <= 30)
  {
    v104 = v23;
    v105 = v22;
    v46 = v106;
    v45 = v107;
    v103 = v14;
    switch(v29)
    {
      case 19:
        v58 = v30;
        v59 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP256(0);
        v60 = objc_allocWithZone(v59);
        v61 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        sub_1BAA39B4C();
        (*(v58 + 16))(v32, &v60[v61], v27);
        sub_1BAA39B3C();
        v62 = (*(v58 + 8))(v32, v27);
        v63 = MEMORY[0x1BFAF8810](v62);
        v65 = v64;
        (*(v104 + 8))(v26, v105);
        v43 = sub_1BAA3968C();
        sub_1BA84724C(v63, v65);
        v108.receiver = v60;
        v108.super_class = v59;
        v44 = objc_msgSendSuper2(&v108, sel_initWithMethod_keyExchangeData_, 19, v43);
        goto LABEL_20;
      case 20:
        v78 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP384(0);
        v79 = objc_allocWithZone(v78);
        v80 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey;
        sub_1BAA39B9C();
        v81 = v88;
        (*(v88 + 16))(v21, &v79[v80], v18);
        sub_1BAA39B8C();
        v82 = (*(v81 + 8))(v21, v18);
        v83 = MEMORY[0x1BFAF8860](v82);
        v85 = v84;
        (*(v89 + 8))(v17, v103);
        v43 = sub_1BAA3968C();
        sub_1BA84724C(v83, v85);
        v109.receiver = v79;
        v109.super_class = v78;
        v44 = objc_msgSendSuper2(&v109, sel_initWithMethod_keyExchangeData_, 20, v43);
        goto LABEL_20;
      case 21:
        v47 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP521(0);
        v48 = objc_allocWithZone(v47);
        v49 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey;
        sub_1BAA39BEC();
        v50 = v90;
        (*(v90 + 16))(v46, &v48[v49], v45);
        v51 = v91;
        sub_1BAA39BDC();
        v52 = (*(v50 + 8))(v46, v45);
        v53 = MEMORY[0x1BFAF88B0](v52);
        v55 = v54;
        (*(v93 + 8))(v51, v94);
        v43 = sub_1BAA3968C();
        sub_1BA84724C(v53, v55);
        v110.receiver = v48;
        v110.super_class = v47;
        v44 = objc_msgSendSuper2(&v110, sel_initWithMethod_keyExchangeData_, 21, v43);
        goto LABEL_20;
    }
  }

  else
  {
    if (v29 > 35)
    {
      if (v29 == 36)
      {
        v32 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768(0));
        v77 = v113;
        v57 = sub_1BA847CD8();
        if (v77)
        {
          return v32;
        }
      }

      else
      {
        if (v29 != 37)
        {
          goto LABEL_15;
        }

        v32 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024(0));
        v56 = v113;
        v57 = sub_1BA848A2C();
        if (v56)
        {
          return v32;
        }
      }

      return v57;
    }

    if (v29 == 31)
    {
      v67 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX25519(0);
      v68 = objc_allocWithZone(v67);
      v69 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
      sub_1BAA399BC();
      v70 = v95;
      v71 = v92;
      v72 = v96;
      (*(v95 + 16))(v92, &v68[v69], v96);
      v73 = v97;
      sub_1BAA3999C();
      (*(v70 + 8))(v71, v72);
      v74 = sub_1BAA3996C();
      v76 = v75;
      (*(v98 + 8))(v73, v100);
      v43 = sub_1BAA3968C();
      sub_1BA84724C(v74, v76);
      v111.receiver = v68;
      v111.super_class = v67;
      v44 = objc_msgSendSuper2(&v111, sel_initWithMethod_keyExchangeData_, 31, v43);
      goto LABEL_20;
    }

    if (v29 == 32)
    {
      v33 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX448(0);
      v34 = objc_allocWithZone(v33);
      v35 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
      sub_1BAA39C3C();
      v37 = v101;
      v36 = v102;
      v38 = v99;
      (*(v101 + 16))(v99, &v34[v35], v102);
      v39 = v103;
      sub_1BAA39C2C();
      (*(v37 + 8))(v38, v36);
      v40 = sub_1BAA39C0C();
      v42 = v41;
      (*(v104 + 8))(v39, v105);
      v43 = sub_1BAA3968C();
      sub_1BA84724C(v40, v42);
      v112.receiver = v34;
      v112.super_class = v33;
      v44 = objc_msgSendSuper2(&v112, sel_initWithMethod_keyExchangeData_, 32, v43);
LABEL_20:
      v32 = v44;

      return v32;
    }
  }

LABEL_15:
  sub_1BA8497B4();
  swift_allocError();
  *v66 = 2;
  swift_willThrow();
  return v32;
}

char *sub_1BA84AF88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v127 = a2;
  v128 = a3;
  v3 = sub_1BAA39C1C();
  v122 = *(v3 - 8);
  v123 = v3;
  v4 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v121 = (&v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1BAA39C4C();
  v119 = *(v6 - 8);
  v120 = v6;
  v7 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1BAA3998C();
  v116 = *(v118 - 8);
  v9 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v115 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BAA399CC();
  v113 = *(v114 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1BAA39BCC();
  v111 = *(v112 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v126 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1BAA39BFC();
  v109 = *(v125 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAA39B7C();
  v108 = *(v17 - 8);
  v18 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BAA39BAC();
  v107 = *(v21 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BAA39B2C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BAA39B5C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v32 <= 30)
  {
    v121 = v26;
    v122 = v25;
    v53 = v124;
    v52 = v125;
    v123 = v17;
    v54 = v126;
    switch(v32)
    {
      case 19:
        v69 = v33;
        v70 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP256(0);
        v71 = objc_allocWithZone(v70);
        v38 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        v72 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        sub_1BAA39B4C();
        (*(v69 + 16))(v35, &v71[v72], v30);
        sub_1BAA39B3C();
        v73 = (*(v69 + 8))(v35, v30);
        v74 = MEMORY[0x1BFAF8810](v73);
        v76 = v75;
        v121[1](v29, v122);
        v77 = sub_1BAA3968C();
        sub_1BA84724C(v74, v76);
        v129.receiver = v71;
        v129.super_class = v70;
        v35 = objc_msgSendSuper2(&v129, sel_initWithMethod_keyExchangeData_, 19, v77);

        v49 = MEMORY[0x1E6966548];
        v50 = MEMORY[0x1E6966538];
        v51 = MEMORY[0x1E6966550];
        goto LABEL_18;
      case 20:
        v95 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP384(0);
        v96 = objc_allocWithZone(v95);
        v97 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey;
        sub_1BAA39B9C();
        v98 = v107;
        (*(v107 + 16))(v24, &v96[v97], v21);
        sub_1BAA39B8C();
        v99 = (*(v98 + 8))(v24, v21);
        v100 = MEMORY[0x1BFAF8860](v99);
        v102 = v101;
        (*(v108 + 8))(v20, v123);
        v103 = sub_1BAA3968C();
        sub_1BA84724C(v100, v102);
        v130.receiver = v96;
        v130.super_class = v95;
        v35 = objc_msgSendSuper2(&v130, sel_initWithMethod_keyExchangeData_, 20, v103);

        v104 = v134;
        sub_1BA84790C(v127, v128, MEMORY[0x1E69665A0], MEMORY[0x1E6966588], &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey, MEMORY[0x1E69665A8]);
        if (v104)
        {
LABEL_23:

          return v35;
        }

        return v35;
      case 21:
        v55 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP521(0);
        v56 = objc_allocWithZone(v55);
        v57 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey;
        sub_1BAA39BEC();
        v58 = v109;
        (*(v109 + 16))(v53, &v56[v57], v52);
        sub_1BAA39BDC();
        v59 = (*(v58 + 8))(v53, v52);
        v60 = MEMORY[0x1BFAF88B0](v59);
        v62 = v61;
        (*(v111 + 8))(v54, v112);
        v63 = sub_1BAA3968C();
        sub_1BA84724C(v60, v62);
        v131.receiver = v56;
        v131.super_class = v55;
        v35 = objc_msgSendSuper2(&v131, sel_initWithMethod_keyExchangeData_, 21, v63);

        v64 = v134;
        sub_1BA84790C(v127, v128, MEMORY[0x1E69665F8], MEMORY[0x1E69665F0], &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey, MEMORY[0x1E6966600]);
        if (!v64)
        {
          return v35;
        }

        goto LABEL_23;
    }

LABEL_16:
    sub_1BA8497B4();
    swift_allocError();
    *v78 = 2;
    swift_willThrow();
    return v35;
  }

  if (v32 <= 35)
  {
    if (v32 != 31)
    {
      if (v32 == 32)
      {
        v36 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX448(0);
        v37 = objc_allocWithZone(v36);
        v38 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
        v39 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
        sub_1BAA39C3C();
        v41 = v119;
        v40 = v120;
        v42 = &v37[v39];
        v43 = v117;
        (*(v119 + 16))(v117, v42, v120);
        v44 = v121;
        sub_1BAA39C2C();
        (*(v41 + 8))(v43, v40);
        v45 = sub_1BAA39C0C();
        v47 = v46;
        (*(v122 + 8))(v44, v123);
        v48 = sub_1BAA3968C();
        sub_1BA84724C(v45, v47);
        v133.receiver = v37;
        v133.super_class = v36;
        v35 = objc_msgSendSuper2(&v133, sel_initWithMethod_keyExchangeData_, 32, v48);

        v49 = MEMORY[0x1E6966650];
        v50 = MEMORY[0x1E6966648];
        v51 = MEMORY[0x1E6966658];
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v79 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX25519(0);
    v80 = objc_allocWithZone(v79);
    v38 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
    v81 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
    sub_1BAA399BC();
    v82 = v113;
    v83 = &v80[v81];
    v84 = v110;
    v85 = v114;
    (*(v113 + 16))(v110, v83, v114);
    v86 = v115;
    sub_1BAA3999C();
    (*(v82 + 8))(v84, v85);
    v87 = sub_1BAA3996C();
    v89 = v88;
    (*(v116 + 8))(v86, v118);
    v90 = sub_1BAA3968C();
    sub_1BA84724C(v87, v89);
    v132.receiver = v80;
    v132.super_class = v79;
    v35 = objc_msgSendSuper2(&v132, sel_initWithMethod_keyExchangeData_, 31, v90);

    v49 = MEMORY[0x1E6966398];
    v50 = MEMORY[0x1E6966388];
    v51 = MEMORY[0x1E69663A0];
LABEL_18:
    v91 = v134;
    sub_1BA84790C(v127, v128, v49, v50, v38, v51);
    if (!v91)
    {
      return v35;
    }

    goto LABEL_23;
  }

  if (v32 == 36)
  {
    v35 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768(0));
    v93 = v127;
    v92 = v128;
    sub_1BA8498C4(v127, v128);
    v94 = v134;
    v68 = sub_1BA847FF0(v93, v92);
    if (v94)
    {
      return v35;
    }

    return v68;
  }

  if (v32 != 37)
  {
    goto LABEL_16;
  }

  v35 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024(0));
  v66 = v127;
  v65 = v128;
  sub_1BA8498C4(v127, v128);
  v67 = v134;
  v68 = sub_1BA848D44(v66, v65);
  if (!v67)
  {
    return v68;
  }

  return v35;
}

uint64_t sub_1BA84BBCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA84BC34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BA8498C4(a1, a2);
  }

  return a1;
}

id sub_1BA84BC48(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_1BA8498C4(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1BA84BC58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA84BCB8(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BA84724C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t sub_1BA84BCDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BA84724C(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for NEIKEv2CryptoKitErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEIKEv2CryptoKitErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BA84BEA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1BA84BEF4()
{
  result = qword_1EBC0EA30;
  if (!qword_1EBC0EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EA30);
  }

  return result;
}

void sub_1BA84C058()
{
  v1 = v0;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotEvaluationProviderHost - init", v5, 2u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  v6 = sub_1BAA39D8C();
  [v1 setExtensionPointName_];

  v7 = sub_1BAA39D8C();
  [v1 setExtensionBundleIdentifier_];

  [v1 setExtensionXPCProtocol_];
  [v1 setExtensionHostXPCProtocol_];
  v8 = [objc_allocWithZone(type metadata accessor for NEHotspotEvaluationProviderHostExportedObject()) init];
  [v1 setExportedObject_];

  v9 = [v1 exportedObject];
  if (v9)
  {
    v10 = v9;
    [v1 setExtensionExportedObject_];
    v11 = [v1 extensionExportedObject];

    if (v11)
    {
      v13 = *&v11[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate];
      *&v11[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate] = v1;
      v12 = v1;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA84C33C()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotEvaluationProviderHost - start", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA84C488;
  v6 = *(v0 + 16);

  return sub_1BA854E8C();
}

uint64_t sub_1BA84C488(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA84C588, 0, 0);
}

uint64_t sub_1BA84C588()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA84C674;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1BA84E7F0, v2, v5);
}

uint64_t sub_1BA84C674()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1BA84C820;
  }

  else
  {

    v6 = sub_1BA84C7BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BA84C7BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA84C820()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1BA84C884(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  if (!a2)
  {
    goto LABEL_4;
  }

  v24 = *(v5 + 16);
  v24(v8, a1, v4);
  v25 = a1;
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v8, v4);
  v30 = sub_1BA84E7F8;
  v31 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1BA871994;
  v29 = &block_descriptor_49;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_1BAA3A04C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAD8, &qword_1BAA4CD90);
  if (swift_dynamicCast())
  {
    v14 = aBlock;
    v24(v8, v25, v4);
    v15 = swift_allocObject();
    v11(v15 + v9, v8, v4);
    v30 = sub_1BA84E918;
    v31 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1BA8719FC;
    v29 = &block_descriptor_55;
    v16 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v14 startWithReply_];
    _Block_release(v16);
    return swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_4:
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v18 = sub_1BAA398CC();
    __swift_project_value_buffer(v18, qword_1EBC11B98);
    v19 = sub_1BAA398AC();
    v20 = sub_1BAA39F9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BA83C000, v19, v20, "NEHotspotEvaluationProviderHost - start - proxy not good", v21, 2u);
      MEMORY[0x1BFAFC150](v21, -1, -1);
    }

    sub_1BA84E364();
    v22 = swift_allocError();
    *v23 = 1;
    aBlock = v22;
    return sub_1BAA39E9C();
  }
}

uint64_t sub_1BA84CC80(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotEvaluationProviderHost - proxy.start - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA84CF20(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA84E9B0;

  return sub_1BA84C31C();
}

uint64_t sub_1BA84CFC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA84CFE8, 0, 0);
}

uint64_t sub_1BA84CFE8()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotEvaluationProviderHost - stop", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1BA84D134;
  v6 = *(v0 + 24);

  return sub_1BA854E8C();
}

uint64_t sub_1BA84D134(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA84D234, 0, 0);
}

uint64_t sub_1BA84D234()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1BA84D338;
  v7 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x74697728706F7473, 0xEB00000000293A68, sub_1BA84E358, v4, v7);
}

uint64_t sub_1BA84D338()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_1BA84D4E4;
  }

  else
  {

    v6 = sub_1BA84D480;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BA84D480()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA84D4E4()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1BA84D548(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  if (!a2)
  {
    goto LABEL_4;
  }

  v33 = a4;
  v34 = a3;
  v13 = *(v9 + 16);
  v13(&v32 - v11, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  v35 = a1;
  v17 = v16;
  v32 = *(v9 + 32);
  v32(v16 + v14, v12, v8);
  v40 = sub_1BA84E3B8;
  v41 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1BA871994;
  v39 = &block_descriptor;
  v18 = _Block_copy(&aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1BAA3A04C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAD8, &qword_1BAA4CD90);
  if (swift_dynamicCast())
  {
    v20 = aBlock;
    v13(v12, v35, v8);
    v21 = swift_allocObject();
    v32(v21 + v14, v12, v8);
    v22 = v33;
    *(v21 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v40 = sub_1BA84E3DC;
    v41 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BA8719FC;
    v39 = &block_descriptor_26;
    v23 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v24 = v22;

    [v20 stopWithStopReason:v34 reply:v23];
    _Block_release(v23);
    return swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_4:
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v26 = sub_1BAA398CC();
    __swift_project_value_buffer(v26, qword_1EBC11B98);
    v27 = sub_1BAA398AC();
    v28 = sub_1BAA39F9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BA83C000, v27, v28, "NEHotspotEvaluationProviderHost - stop - proxy not good", v29, 2u);
      MEMORY[0x1BFAFC150](v29, -1, -1);
    }

    sub_1BA84E364();
    v30 = swift_allocError();
    *v31 = 1;
    aBlock = v30;
    return sub_1BAA39E9C();
  }
}

uint64_t sub_1BA84D96C(void *a1, uint64_t a2, const char *a3)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAA398CC();
  __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BA83C000, v6, v7, a3, v8, 2u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39E9C();
}

id sub_1BA84DA8C(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotEvaluationProviderHost - proxy.stop - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  sub_1BAA39EAC();
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BA83C000, v6, v7, "NEHotspotEvaluationProviderHost - calling invalidateExtension", v8, 2u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  return sub_1BA85790C();
}

uint64_t sub_1BA84DDC4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BA84DE80;

  return sub_1BA84CFC8(a1);
}

uint64_t sub_1BA84DE80(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v5)
  {
    v8 = *(v3 + 24);
    v8[2](v8, a1 & 1);
    _Block_release(v8);
  }

  v9 = *(v7 + 8);

  return v9();
}

void __swiftcall NEHotspotEvaluationProviderHost.init()(NEHotspotEvaluationProviderHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NEHotspotEvaluationProviderHost.init()()
{
  *(v0 + OBJC_IVAR___NEHotspotEvaluationProviderHost_exportedObject) = 0;
  v2.super_class = NEHotspotEvaluationProviderHost;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for NEHotspotEvaluationProviderHost()
{
  result = qword_1EBC0EAB8;
  if (!qword_1EBC0EAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EAB8);
  }

  return result;
}

id sub_1BA84E148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NEHotspotEvaluationProviderHostExportedObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA84E1A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA84DDC4(v2, v3, v4);
}

uint64_t sub_1BA84E254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E9A0;

  return sub_1BA8736F0(a1, v4, v5, v7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BA84E364()
{
  result = qword_1EBC0EAD0;
  if (!qword_1EBC0EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EAD0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1BA84E3DC(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA84DA8C(a1);
}

uint64_t sub_1BA84E484()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA84CF20(v2, v3);
}

uint64_t sub_1BA84E530()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BA84E9A0;

  return sub_1BA873608(v2, v3, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA84E630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA8736F0(a1, v4, v5, v7);
}

uint64_t sub_1BA84E6FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA84E918(char a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80) - 8) + 80);

  return sub_1BA84CC80(a1);
}

uint64_t *NEHotspotEvaluationProvider.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NEHotspotEvaluationProviderConfiguration();
  (*(v5 + 16))(v8, v2, a1);
  return sub_1BA84EB3C(v8, v9, a1, a2);
}

uint64_t NEHotspotEvaluationProviderConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NEHotspotEvaluationProviderConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t *sub_1BA84EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  type metadata accessor for NEHotspotEvaluationProviderConfiguration();
  v13 = swift_allocObject();
  (*(v6 + 16))(v10, v12, a3);
  v14 = sub_1BA84F160(v10, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.start()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84EDFC;

  return v9(a1, a2);
}

uint64_t sub_1BA84EDFC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.stop(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BA84E6FC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.handleCommand(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BA84EDFC;

  return v11(a1, a2, a3);
}

uint64_t *sub_1BA84F160(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v7 + 32))(&v20 - v12);
  (*(v7 + 16))(v11, v13, a3);
  v14 = sub_1BA854D58(v11, a2, a3, *(a4 + 8));
  v15 = v14[8];
  v14[8] = &unk_1F38BC840;

  v16 = &unk_1F38BC840;

  v17 = v14[9];
  v14[9] = &unk_1F38BBC60;
  v18 = &unk_1F38BBC60;

  (*(v7 + 8))(v13, a3);
  return v14;
}

uint64_t sub_1BA84F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = sub_1BAA39EDC();
  v6[16] = sub_1BAA39ECC();
  v6[17] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[18] = v8;
  v6[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA84F380, v8, v7);
}

uint64_t sub_1BA84F380()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1BA84F4F8;

  return v7(v1, v2);
}

uint64_t sub_1BA84F4F8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA84F620, v5, v4);
}

uint64_t sub_1BA84F620()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA84F6AC, v5, v4);
}

uint64_t sub_1BA84F6AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  byte_1EBC0EAE1 = v1;
  v4(v1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BA84F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[35] = sub_1BAA39EDC();
  v7[36] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[37] = v9;
  v7[38] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA84F7D0, v9, v8);
}

uint64_t sub_1BA84F7D0()
{
  sub_1BA8517C0(v0[31] + 16, (v0 + 13));
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  v0[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = sub_1BA85133C(MEMORY[0x1E69E7CC0]);
  v2 = v0[11];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_1BAA39D9C();
    v10 = v9;
    v11 = v0[11];
    v12 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v11);
    (*(v12 + 16))(v11, v12);
    v13 = sub_1BAA39D8C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BA850CFC(v13, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  v0[41] = v1;
  v15 = v0[35];
  v0[42] = sub_1BAA39ECC();
  v17 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA84F9C4, v17, v16);
}

uint64_t sub_1BA84F9C4()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[31];

  v4 = objc_opt_self();
  sub_1BA8474EC(0, &qword_1EBC0EAF8, 0x1E69E58C0);
  v5 = sub_1BAA39D5C();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v6 = sub_1BAA39FCC();
  v0[6] = sub_1BA851A04;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA86FA64;
  v0[5] = &block_descriptor_0;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  LOBYTE(v3) = [v4 registerWithOptions:v5 queue:v6 handler:v7];
  *(v0 + 376) = v3;
  _Block_release(v7);

  byte_1EBC0EAE0 = v3;

  v9 = v0[37];
  v10 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1BA84FB6C, v9, v10);
}

uint64_t sub_1BA84FB6C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
    v3 = *(v0 + 280);
    *(v0 + 344) = sub_1BAA39ECC();
    v5 = sub_1BAA39E8C();
    *(v0 + 352) = v5;
    *(v0 + 360) = v4;

    return MEMORY[0x1EEE6DFA0](sub_1BA84FC6C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 288);

    v7 = *(v0 + 272);
    (*(v0 + 264))(0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1BA84FC6C()
{
  v1 = v0[39];
  v2 = v0[40];
  sub_1BA8517C0(v0[31] + 16, (v0 + 23));
  swift_dynamicCast();
  v3 = v0[21];
  v4 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v3);
  v5 = *(v4 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_1BA84FDBC;

  return v9(v3, v4);
}

uint64_t sub_1BA84FDBC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 377) = a1;

  v4 = *(v2 + 360);
  v5 = *(v2 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BA84FEE4, v5, v4);
}

uint64_t sub_1BA84FEE4()
{
  v1 = v0[43];

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[37];
  v3 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1BA84FF50, v2, v3);
}

uint64_t sub_1BA84FF50()
{
  v1 = *(v0 + 377);
  v2 = *(v0 + 288);

  byte_1EBC0EAE1 = v1;
  v3 = *(v0 + 272);
  (*(v0 + 264))(*(v0 + 377));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BA850038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  v7[16] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA8500D4, v9, v8);
}

uint64_t sub_1BA8500D4()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 32);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1BA850254;
  v6 = v0[13];

  return v8(v6, v1, v2);
}

uint64_t sub_1BA850254()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1BA850374, v4, v3);
}

uint64_t sub_1BA850374()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  byte_1EBC0EAE1 = 0;
  v3(1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BA85046C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v14 - v7;
  if (byte_1EBC0EAE1 == 1)
  {
    v9 = sub_1BAA39EFC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1BAA39EDC();

    v10 = a1;
    v11 = sub_1BAA39ECC();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a2;
    v12[5] = v10;
    sub_1BA86F78C(0, 0, v8, &unk_1BAA4CE98, v12);
  }

  return result;
}

uint64_t sub_1BA8505B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_1BAA39EDC();
  v5[14] = sub_1BAA39ECC();
  v7 = sub_1BAA39E8C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA850650, v7, v6);
}

uint64_t sub_1BA850650()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 40);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1BA8507D0;
  v6 = v0[13];

  return v8(v6, v1, v2);
}

uint64_t sub_1BA8507D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = a1;

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1BA8508F8, v5, v4);
}

uint64_t sub_1BA8508F8()
{
  v1 = v0[18];
  v2 = v0[14];

  [v1 deliverInternal];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

unint64_t sub_1BA850978(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BAA3A1DC();
  sub_1BAA39DEC();
  v6 = sub_1BAA3A1FC();

  return sub_1BA850E74(a1, a2, v6);
}

unint64_t sub_1BA8509F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](a1);
  v4 = sub_1BAA3A1FC();
  return sub_1BA850F2C(a1, v4);
}

uint64_t sub_1BA850A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
  v39 = a2;
  result = sub_1BAA3A12C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1BAA3A1DC();
      sub_1BAA39DEC();
      result = sub_1BAA3A1FC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1BA850CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BA850978(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1BA850A58(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1BA850978(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1BAA3A17C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1BA850F98();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_1BA850E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BAA3A15C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BA850F2C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_1BA850F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
  v2 = *v0;
  v3 = sub_1BAA3A11C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA851104(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = byte_1EBC0EAE1;
  _Block_copy(a2);
  if (v9 == 1)
  {
    a2[2](a2, 1);
  }

  v10 = swift_allocObject();
  v11 = byte_1EBC0EAE0;
  *(v10 + 16) = byte_1EBC0EAE0;
  v12 = sub_1BAA39EFC();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_1BAA39EDC();

  if (v11 == 1)
  {
    v13 = sub_1BAA39ECC();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a1;
    v14[5] = sub_1BA851AE8;
    v14[6] = v8;
    v16 = &unk_1BAA4CE88;
  }

  else
  {

    v17 = sub_1BAA39ECC();
    v14 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v14[2] = v17;
    v14[3] = v18;
    v14[4] = a1;
    v14[5] = v10;
    v14[6] = sub_1BA851AE8;
    v14[7] = v8;
    v16 = &unk_1BAA4CE78;
  }

  sub_1BA86F78C(0, 0, v7, v16, v14);
}

unint64_t sub_1BA85133C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
    v3 = sub_1BAA3A13C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BA850978(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BA851468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1BAA3A13C();
    for (i = (a1 + 40); ; i += 16)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1BA8509F0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BA851540(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = byte_1EBC0EAE1;
  _Block_copy(a3);
  if ((v11 & 1) == 0)
  {
    a3[2](a3, 1);
  }

  v12 = sub_1BAA39EFC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1BAA39EDC();

  v13 = sub_1BAA39ECC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = sub_1BA8516E4;
  v14[7] = v10;
  sub_1BA86F78C(0, 0, v9, &unk_1BAA4CE58, v14);
}

uint64_t sub_1BA8516EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA850038(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA8517C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BA851868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA84F730(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA85193C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA84F2D4(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA851A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA8505B8(a1, v4, v5, v7, v6);
}

uint64_t NENetworkRule.init(destinationNetworkEndpoint:prefix:protocol:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAA398DC();
  if (result)
  {
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDestinationNetworkEndpoint:result prefix:a2 protocol:a3];
    swift_unknownObjectRelease();
    v8 = sub_1BAA398EC();
    (*(*(v8 - 8) + 8))(a1, v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NENetworkRule.init(destinationHostEndpoint:protocol:)(uint64_t a1, uint64_t a2)
{
  result = sub_1BAA398DC();
  if (result)
  {
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDestinationHostEndpoint:result protocol:a2];
    swift_unknownObjectRelease();
    v6 = sub_1BAA398EC();
    (*(*(v6 - 8) + 8))(a1, v6);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NENetworkRule.init(remoteNetworkEndpoint:remotePrefix:localNetworkEndpoint:localPrefix:protocol:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v23 = a2;
  v24 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  sub_1BA851E60(a1, &v23 - v13);
  v15 = sub_1BAA398EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_1BA851ED0(v14);
    v18 = 0;
  }

  else
  {
    v18 = sub_1BAA398DC();
    (*(v16 + 8))(v14, v15);
  }

  sub_1BA851E60(a3, v12);
  if (v17(v12, 1, v15) == 1)
  {
    sub_1BA851ED0(v12);
    v19 = 0;
  }

  else
  {
    v19 = sub_1BAA398DC();
    (*(v16 + 8))(v12, v15);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = [v20 initWithRemoteNetworkEndpoint:v18 remotePrefix:v23 localNetworkEndpoint:v19 localPrefix:v24 protocol:v25 direction:v26];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1BA851ED0(a3);
  sub_1BA851ED0(a1);
  return v21;
}

uint64_t sub_1BA851E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA851ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NENetworkRule.matchRemoteHostOrNetworkEndpoint.getter()
{
  v1 = [v0 matchRemoteHostOrNetworkEndpoint];

  return sub_1BAA398FC();
}

uint64_t NENetworkRule.matchLocalNetworkEndpoint.getter()
{
  v1 = [v0 matchLocalNetworkEndpoint];

  return sub_1BAA398FC();
}

uint64_t NEHotspotHelperCommand.interface.getter()
{
  v1 = [v0 interface];

  return sub_1BAA3992C();
}

uint64_t (*NEFilterPacketProvider.handler.getter())(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  result = [v0 packetHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BA852280;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA852344;
    *(v5 + 24) = v4;
    return sub_1BA85234C;
  }

  return result;
}

void *sub_1BA8520E8@<X0>(id *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X0>, uint64_t *@<X2>, uint64_t *@<X3>, uint64_t *@<X8>)@<X8>)
{
  result = [*a1 packetHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_1BA852A94;
    result[3] = v5;
    v6 = sub_1BA852A98;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA852190(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA852A90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1BA8529C8(v3);
  sub_1BA852884(v6, v5);

  return sub_1BA852994(v6);
}

uint64_t NEFilterPacketProvider.handler.setter(void *a1, uint64_t a2)
{
  sub_1BA852884(a1, a2);

  return sub_1BA852994(a1);
}

uint64_t sub_1BA8522A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  result = sub_1BAA3990C();
  if (result)
  {
    if (v9)
    {
      v12 = v10 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = a4(v7, result, v8, v9, v12);
    result = swift_unknownObjectRelease();
    *a5 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA852350@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v26 = a7;
  v13 = sub_1BAA3991C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *a2;
  v20 = *a3;
  v21 = *a4;
  v22 = *a5;
  swift_unknownObjectRetain();
  sub_1BAA3992C();
  v23 = a6(v18, v17, v20, v21, v21 + v22);
  result = (*(v14 + 8))(v17, v13);
  *v26 = v23;
  return result;
}

uint64_t sub_1BA85248C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = a2;
  swift_unknownObjectRetain();
  v14 = v12(v13, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v14;
}

void (*NEFilterPacketProvider.handler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 packetHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BA852A94;
    *(v9 + 24) = v8;
    v6 = swift_allocObject();
    v6[2] = sub_1BA852A98;
    v6[3] = v9;
    v10 = sub_1BA852A90;
  }

  else
  {
    v10 = 0;
  }

  *(v5 + 48) = v10;
  *(v5 + 56) = v6;
  return sub_1BA85264C;
}

void sub_1BA85264C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1BA8529A4;
      *(v6 + 24) = v5;
      v2[4] = sub_1BA8529AC;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_1BA85248C;
      v2[3] = &block_descriptor_1;
      v7 = _Block_copy(v2);
      v8 = v2[5];
      swift_retain_n();
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setPacketHandler_];
    _Block_release(v7);
    sub_1BA852994(v3);
    v13 = v2[6];
    v14 = v2[7];
  }

  else
  {
    if (v3)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v4;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1BA852A88;
      *(v10 + 24) = v9;
      v2[4] = sub_1BA852A8C;
      v2[5] = v10;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_1BA85248C;
      v2[3] = &block_descriptor_23;
      v11 = _Block_copy(v2);
      v12 = v2[5];
    }

    else
    {
      v11 = 0;
    }

    [v2[8] setPacketHandler_];
    _Block_release(v11);
    v13 = v3;
  }

  sub_1BA852994(v13);

  free(v2);
}

void sub_1BA852884(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1BA852A88;
    *(v6 + 24) = v5;
    v7[4] = sub_1BA852A8C;
    v7[5] = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BA85248C;
    v7[3] = &block_descriptor_58;
    v3 = _Block_copy(v7);
  }

  [v2 setPacketHandler_];
  _Block_release(v3);
}

uint64_t sub_1BA852994(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA8529C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BA8529D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v12 = a1;
  v10[1] = a5;
  v11 = a3;
  v10[0] = a4;
  v6(&v9, &v12, a2, &v11, v10);
  return v9;
}

uint64_t sub_1BA852A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v14 = a1;
  v12 = a3;
  v13 = a2;
  v10 = a5;
  v11 = a4;
  v6(&v9, &v14, &v13, &v12, &v11, &v10);
  return v9;
}

uint64_t NEAppProxyTCPFlow.remoteFlowEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = [v2 remoteFlowEndpoint];
  sub_1BAA398FC();
  v9 = sub_1BAA398EC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  __break(1u);
  return result;
}

uint64_t NEFilterSocketFlow.remoteFlowEndpoint.getter()
{
  v1 = [v0 remoteFlowEndpoint];

  return sub_1BAA398FC();
}

uint64_t NEFilterSocketFlow.localFlowEndpoint.getter()
{
  v1 = [v0 localFlowEndpoint];

  return sub_1BAA398FC();
}

void NEAppProxyUDPFlow.readDatagrams(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1BA853070;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA853078;
  v7[3] = &block_descriptor_2;
  v6 = _Block_copy(v7);

  [v2 readDatagramsAndFlowEndpointsWithCompletionHandler_];
  _Block_release(v6);
}

size_t sub_1BA852D34(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, unint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v32 - v12;
  v14 = sub_1BAA398EC();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v36 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v31)
    {
      v20 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
LABEL_19:

        v28 = sub_1BA854050(v29, v20);

        goto LABEL_20;
      }

      v41 = result;
      v32[1] = a1;
      v33 = a3;
      v34 = a5;
      v35 = a4;
      v44 = MEMORY[0x1E69E7CC0];
      result = sub_1BA853C48(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      a4 = 0;
      v42 = a2 & 0xC000000000000001;
      v20 = v44;
      v39 = i;
      v40 = (v43 + 48);
      v37 = v13;
      v38 = v43 + 32;
      v21 = (v43 + 32);
      while (1)
      {
        a3 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v42)
        {
          MEMORY[0x1BFAF8D80](a4, a2);
        }

        else
        {
          if (a4 >= *(v36 + 16))
          {
            goto LABEL_22;
          }

          v22 = *(a2 + 8 * a4 + 32);
          swift_unknownObjectRetain();
        }

        a1 = a2;
        swift_unknownObjectRetain();
        sub_1BAA398FC();
        v23 = v41;
        result = (*v40)(v13, 1, v41);
        if (result == 1)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        v24 = *v21;
        (*v21)(v18, v13, v23);
        v44 = v20;
        v25 = v18;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        a5 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          sub_1BA853C48(v26 > 1, v27 + 1, 1);
          v20 = v44;
        }

        *(v20 + 16) = a5;
        result = (v24)(v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27, v25, v23);
        ++a4;
        a2 = a1;
        v18 = v25;
        v13 = v37;
        if (a3 == v39)
        {
          a4 = v35;
          a3 = v33;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v30 = result;
      v31 = sub_1BAA3A10C();
      result = v30;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v28 = 0;
LABEL_20:
    (a4)(v28, a3);
  }

  return result;
}

uint64_t sub_1BA853078(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_1BAA39E4C();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB88, &qword_1BAA4CEE8);
    v5 = sub_1BAA39E4C();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA853184()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1BA853314;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BA853484;
  *(v9 + 24) = v8;
  v1[14] = sub_1BA854620;
  v1[15] = v9;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BA853078;
  v1[13] = &block_descriptor_10;
  v10 = _Block_copy(v4);
  v11 = v1[15];

  [v6 readDatagramsAndFlowEndpointsWithCompletionHandler_];
  _Block_release(v10);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA853314()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1BA853418(uint64_t a1, void *a2, uint64_t a3)
{

  v6 = a2;
  v7 = *(*(a3 + 64) + 40);
  *v7 = a1;
  v7[1] = a2;

  return swift_continuation_resume();
}

void NEAppProxyUDPFlow.writeDatagrams(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v44 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v44 - v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v47 = v18;
    v48 = v17;
    v49 = a2;
    v45 = a3;
    v46 = v3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA853C68(0, v20, 0);
    v21 = aBlock[0];
    v22 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v55 = *(v8 + 72);
    v23 = v22;
    v24 = v20;
    v51 = v7;
    do
    {
      v25 = v52;
      sub_1BA853C88(v23, v52);
      v26 = v53;
      sub_1BA853C88(v25, v53);
      v27 = *(v7 + 48);
      *v14 = *v26;
      v28 = sub_1BAA398EC();
      v50 = *(v28 - 8);
      v29 = *(v50 + 32);
      v54 = v28;
      v29(v14 + v27, &v26[v27]);
      v30 = *v14;
      v31 = v14[1];
      sub_1BA8498C4(*v14, v31);
      sub_1BA853CF8(v14);
      sub_1BA853CF8(v25);
      aBlock[0] = v21;
      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1BA853C68((v32 > 1), v33 + 1, 1);
        v21 = aBlock[0];
      }

      *(v21 + 16) = v33 + 1;
      v34 = v21 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v31;
      v23 += v55;
      --v24;
      v7 = v51;
    }

    while (v24);
    v53 = v21;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BAA3A0CC();
    a2 = v49;
    v35 = (v50 + 8);
    v37 = v47;
    v36 = v48;
    while (1)
    {
      sub_1BA853C88(v22, v37);
      sub_1BA853C88(v37, v36);
      sub_1BA84724C(*v36, *(v36 + 8));
      v38 = *(v7 + 48);
      v39 = sub_1BAA398DC();
      (*v35)(v36 + v38, v54);
      if (!v39)
      {
        break;
      }

      sub_1BA853CF8(v37);
      sub_1BAA3A0AC();
      v40 = *(aBlock[0] + 16);
      sub_1BAA3A0DC();
      sub_1BAA3A0EC();
      sub_1BAA3A0BC();
      v22 += v55;
      if (!--v20)
      {
        a3 = v45;
        v3 = v46;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v41 = sub_1BAA39E3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB88, &qword_1BAA4CEE8);
    v42 = sub_1BAA39E3C();

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_13;
    v43 = _Block_copy(aBlock);

    [v3 writeDatagrams:v41 sentByFlowEndpoints:v42 completionHandler:v43];
    _Block_release(v43);
  }
}

void sub_1BA8538E4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t NEAppProxyUDPFlow.writeDatagrams(_:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA853970, 0, 0);
}

uint64_t sub_1BA853970()
{
  v1 = v0 + 2;
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1BA853A50;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  NEAppProxyUDPFlow.writeDatagrams(_:completionHandler:)(v3, sub_1BA853D60, v5);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BA853A50()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BA853B58(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t NEAppProxyUDPFlow.localFlowEndpoint.getter()
{
  v1 = [v0 localFlowEndpoint];

  return sub_1BAA398FC();
}

size_t sub_1BA853C48(size_t a1, int64_t a2, char a3)
{
  result = sub_1BA853D68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA853C68(char *a1, int64_t a2, char a3)
{
  result = sub_1BA853F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BA853C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA853CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_1BA853D68(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC0EBB0, qword_1BAA4CF10);
  v10 = *(sub_1BAA398EC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1BAA398EC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1BA853F40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB98, &qword_1BAA4CF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BA854050(uint64_t a1, uint64_t a2)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v78);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v68 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v68 - v12;
  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  v76 = a2;
  v77 = v15;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v74 = v11;
  v75 = v14;
  v72 = &v68 - v12;
  v73 = v4;
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA8, &qword_1BAA4CF08);
    v17 = *(v4 + 72);
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v71 = *(v4 + 80);
    v79 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v79);
    v80 = v17;
    if (!v17)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (result - v18 == 0x8000000000000000 && v80 == -1)
    {
      goto LABEL_56;
    }

    v21 = v79;
    v22 = (result - v18) / v80;
    *(v79 + 2) = v16;
    *(v21 + 3) = 2 * v22;
    v70 = v18;
    v23 = &v21[v18];
    v24 = v78;
    v25 = v22 & 0x7FFFFFFFFFFFFFFFLL;
    v68 = a1;
    v26 = (a1 + 32);
    v27 = sub_1BAA398EC();
    v28 = *(v27 - 8);
    v29 = *(v28 + 16);
    v30 = v76 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v31 = *(v28 + 72);
    v81 = v25 - v16;
    v69 = v16;
    v32 = v16;
    do
    {
      v33 = *(v24 + 48);
      v34 = *v26++;
      v82 = v34;
      *v8 = v34;
      v29(&v8[v33], v30, v27);
      sub_1BA8545A0(v8, v23);
      v23 += v80;
      result = sub_1BA8498C4(v82, *(&v82 + 1));
      v30 += v31;
      --v32;
    }

    while (v32);
    v4 = v73;
    v11 = v74;
    v13 = v72;
    v14 = v75;
    a1 = v68;
    v16 = v69;
  }

  else
  {
    v35 = *(v4 + 80);
    v36 = MEMORY[0x1E69E7CC0];
    v37 = *(MEMORY[0x1E69E7CC0] + 24);

    v70 = (v35 + 32) & ~v35;
    v71 = v35;
    v79 = v36;
    v23 = &v36[v70];
    v81 = v37 >> 1;
  }

  v38 = v77;
  if (v14 > v77)
  {
    v39 = (a1 + 16 * v16 + 40);
    while (v16 < v14)
    {
      v40 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_48;
      }

      if (v38 == v16)
      {
        goto LABEL_42;
      }

      if (v16 >= v38)
      {
        goto LABEL_49;
      }

      v42 = *(v39 - 1);
      v41 = *v39;
      v43 = sub_1BAA398EC();
      v44 = *(v43 - 8);
      v45 = *(v44 + 16);
      v46 = v76 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v16;
      v47 = *(v78 + 48);
      *v11 = v42;
      v11[1] = v41;
      v45(v11 + v47, v46, v43);
      result = sub_1BA8545A0(v11, v13);
      if (v81)
      {
        result = sub_1BA8498C4(v42, v41);
        v48 = v79;
      }

      else
      {
        v49 = *(v79 + 3);
        if (((v49 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v50 = v49 & 0xFFFFFFFFFFFFFFFELL;
        v51 = v4;
        if (v50 <= 1)
        {
          v52 = 1;
        }

        else
        {
          v52 = v50;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA8, &qword_1BAA4CF08);
        v53 = *(v51 + 72);
        v54 = v70;
        v48 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v48);
        if (!v53)
        {
          goto LABEL_52;
        }

        v55 = result - v54;
        if (result - v54 == 0x8000000000000000 && v53 == -1)
        {
          goto LABEL_53;
        }

        v57 = v55 / v53;
        *(v48 + 2) = v52;
        *(v48 + 3) = 2 * (v55 / v53);
        v58 = &v48[v54];
        v59 = *(v79 + 2);
        v60 = *(v79 + 3) >> 1;
        v61 = v60 * v53;
        v62 = v54;
        v23 = &v48[v54 + v60 * v53];
        v81 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v60;
        if (v59)
        {
          v63 = v79;
          if (v48 < v79 || v58 >= &v79[v62 + v61])
          {
            sub_1BA8498C4(v42, v41);
            swift_arrayInitWithTakeFrontToBack();
            v11 = v74;
          }

          else
          {
            v80 = &v79[v62];
            *&v82 = v58;
            sub_1BA8498C4(v42, v41);
            v11 = v74;
            if (v48 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          *(v63 + 2) = 0;

          v13 = v72;
          v4 = v73;
        }

        else
        {
          sub_1BA8498C4(v42, v41);

          v4 = v73;
          v11 = v74;
          v13 = v72;
        }
      }

      v14 = v75;
      v64 = __OFSUB__(v81--, 1);
      if (v64)
      {
        goto LABEL_50;
      }

      result = sub_1BA8545A0(v13, v23);
      v23 += *(v4 + 72);
      ++v16;
      v39 += 2;
      v79 = v48;
      v38 = v77;
      if (v40 == v14)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_42:
  v48 = v79;
LABEL_43:
  v65 = *(v48 + 3);
  if (v65 < 2)
  {
    return v48;
  }

  v66 = v65 >> 1;
  v64 = __OFSUB__(v66, v81);
  v67 = v66 - v81;
  if (!v64)
  {
    *(v48 + 2) = v67;
    return v48;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1BA8545A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA854638(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - v5;
  v7 = sub_1BAA398EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  sub_1BA8548F8();
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBD0, &qword_1BAA4CF68);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1BA854944(v19);
    return -1;
  }

  sub_1BA8549AC(v19, v22);
  v18[1] = &unk_1F38D4E50;
  swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  sub_1BAA398FC();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = (*(v15 + 8))(a1, v11, v14, v15);
    (*(v8 + 8))(v11, v7);
    v17 = v16 & 1;
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA8548F8()
{
  result = qword_1EBC0EBC8;
  if (!qword_1EBC0EBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EBC8);
  }

  return result;
}

uint64_t sub_1BA854944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBD8, &unk_1BAA4CF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA8549AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t NEAppExtensionConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

void sub_1BA8549FC(void *a1)
{
  [a1 setExportedObject_];
  v3 = v1[8];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol_];
    [a1 setExportedInterface_];

    if (v1[9])
    {
      v6 = [v4 interfaceWithProtocol_];
      [a1 setRemoteObjectInterface_];

      v15 = sub_1BA854E3C;
      v16 = v1;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1BA854C18;
      v14 = &block_descriptor_3;
      v7 = _Block_copy(&v11);

      [a1 setInvalidationHandler_];
      _Block_release(v7);
      v15 = sub_1BA854C74;
      v16 = v1;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1BA854C18;
      v14 = &block_descriptor_3;
      v8 = _Block_copy(&v11);

      [a1 setInterruptionHandler_];
      _Block_release(v8);
      v9 = v1[7];
      v1[7] = a1;
      v10 = a1;

      [v10 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}