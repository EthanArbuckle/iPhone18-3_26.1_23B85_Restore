_OWORD *__NEIPSecDBAddSA_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(v2 + 72);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(v2 + 72) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  if (v3)
  {
    NEAddValueToIntKeyedDictionary(*(v2 + 80), *(*(a1[4] + 8) + 24), v3);
    v2 = a1[6];
  }

  result = NEIPSecDBCreateQueuedRequest(v2, 3, *(*(a1[4] + 8) + 24));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBUpdateSA(uint64_t a1, int a2, CFTypeRef cf)
{
  v78[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v50 = ne_log_obj();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
LABEL_98:
      v43 = 0;
      goto LABEL_93;
    }

    LODWORD(v75) = 136315138;
    *(&v75 + 4) = "NEIPSecDBUpdateSA";
    v51 = "%s called with null session";
LABEL_108:
    _os_log_fault_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_FAULT, v51, &v75, 0xCu);
    goto LABEL_98;
  }

  if (!*(a1 + 80))
  {
    v50 = ne_log_obj();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_98;
    }

    LODWORD(v75) = 136315138;
    *(&v75 + 4) = "NEIPSecDBUpdateSA";
    v51 = "%s called with null session->sas";
    goto LABEL_108;
  }

  v67 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  memset(v78, 0, 24);
  v64 = 1;
  v63 = 0;
  v62 = 0;
  v60 = 0;
  valuePtr = 0;
  *&v75 = 0;
  *(&v75 + 1) = &v75;
  v76 = 0x2000000000;
  v77 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 0, 0))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v70 = a1;
    v15 = "%@ update SA dictionary validation failed";
    goto LABEL_80;
  }

  v6 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBUpdateSA_block_invoke;
  block[3] = &unk_1E7F08EE0;
  block[4] = &v75;
  block[5] = a1;
  v55 = a2;
  dispatch_sync(v6, block);
  v7 = *(*(&v75 + 1) + 24);
  if (!v7)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v70 = a1;
    v15 = "%@ update SA, failed to find existing SA";
    goto LABEL_80;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(v7, &v65 + 1, &v65, &v66, &v68, &v67, v78))
  {
    goto LABEL_83;
  }

  Value = CFDictionaryGetValue(cf, @"UniqueID");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v9 = CFDictionaryGetValue(cf, @"ReplayWindowSize");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberCharType, &v64);
  }

  v10 = CFDictionaryGetValue(cf, @"EncryptionAlgorithm");
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  if (CFEqual(v10, @"DES"))
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"3DES"))
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128") || CFEqual(v11, @"AES-256"))
  {
    v12 = 0;
    v13 = 12;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128-GCM") || CFEqual(v11, @"AES-256-GCM"))
  {
    v12 = 0;
    v13 = 13;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"ChaCha20-Poly1305"))
  {
    v12 = 0;
    v13 = 14;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"ChaCha20-Poly1305-IIV"))
  {
    v13 = 14;
LABEL_106:
    v12 = 1024;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128-GCM-IIV") || CFEqual(v11, @"AES-256-GCM-IIV"))
  {
    v13 = 13;
    goto LABEL_106;
  }

  if (CFEqual(v11, @"NULL-With-AES-128-GMAC") || CFEqual(v11, @"NULL-With-AES-256-GMAC"))
  {
    v12 = 0;
    v13 = 15;
  }

  else
  {
    v12 = 0;
    if (CFEqual(v11, @"NULL"))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_23:
  v16 = CFDictionaryGetValue(cf, @"AuthAlgorithm");
  if (v16)
  {
    v17 = v16;
    if (CFEqual(v16, @"MD5-96"))
    {
      v18 = 1;
    }

    else if (CFEqual(v17, @"SHA1-96"))
    {
      v18 = 2;
    }

    else if (CFEqual(v17, @"SHA2-256"))
    {
      v18 = 6;
    }

    else if (CFEqual(v17, @"SHA2-384"))
    {
      v18 = 7;
    }

    else
    {
      v18 = 8 * (CFEqual(v17, @"SHA2-512") != 0);
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(cf, @"EncryptionKey");
  BytePtr = v19;
  if (v19)
  {
    Length = CFDataGetLength(v19);
    v22 = Length;
    if (Length < 1)
    {
      BytePtr = 0;
    }

    else
    {
      BytePtr = CFDataGetBytePtr(BytePtr);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = CFDictionaryGetValue(cf, @"AuthKey");
  v24 = v23;
  if (v23)
  {
    v25 = CFDataGetLength(v23);
    v26 = v25;
    if (v25 < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = CFDataGetBytePtr(v24);
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = CFDictionaryGetValue(cf, @"NATTraversal");
  if (v27 && CFBooleanGetValue(v27))
  {
    v12 |= 2u;
  }

  v28 = CFDictionaryGetValue(cf, @"NATTKeepAlive");
  if (v28 && CFBooleanGetValue(v28))
  {
    v12 |= 4u;
  }

  v29 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffload");
  if (v29 && CFBooleanGetValue(v29))
  {
    v12 |= 0x8000u;
  }

  v30 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffloadInterval");
  if (v30)
  {
    CFNumberGetValue(v30, kCFNumberShortType, &v60);
  }

  v31 = CFDictionaryGetValue(cf, @"NATTKeepAliveInterval");
  if (v31)
  {
    CFNumberGetValue(v31, kCFNumberShortType, &v60 + 2);
  }

  v32 = CFDictionaryGetValue(cf, @"NATTDetectedPeer");
  if (v32 && CFBooleanGetValue(v32))
  {
    v12 |= 0x1000u;
  }

  v33 = CFDictionaryGetValue(cf, @"LifeTimeinSeconds");
  if (v33)
  {
    CFNumberGetValue(v33, kCFNumberLongLongType, &v63);
  }

  v34 = CFDictionaryGetValue(cf, @"NATTPort");
  if (v34)
  {
    CFNumberGetValue(v34, kCFNumberShortType, &v62);
  }

  v35 = CFDictionaryGetValue(cf, @"NATTSourcePort");
  if (v35)
  {
    CFNumberGetValue(v35, kCFNumberShortType, &v62 + 2);
  }

  v36 = CFDictionaryGetValue(cf, @"sequencePerTrafficClass");
  if (v36)
  {
    v37 = 2 * (CFBooleanGetValue(v36) != 0);
  }

  else
  {
    v37 = 0;
  }

  v38 = _NEIPSecDBGetQueue();
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 0x40000000;
  v52[2] = __NEIPSecDBUpdateSA_block_invoke_117;
  v52[3] = &unk_1E7F08F08;
  v52[4] = &v56;
  v52[5] = a1;
  v53 = a2;
  dispatch_sync(v38, v52);
  v39 = v78;
  if (!LOBYTE(v78[0]))
  {
    v39 = 0;
  }

  if (!NEPFKeySendUpdate(*(a1 + 64), HIBYTE(v65), v65, v67, v68, v66, valuePtr, v64, BytePtr, v13, v22, v24, v18, v26, v12, v37, 0, 0, v63, 0, 0, HIWORD(v62), v62, HIWORD(v60), v60, 1, v39))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v70 = a1;
    v15 = "%@ pfkey send update SA failed";
LABEL_80:
    v44 = v14;
LABEL_81:
    _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_83;
  }

  v40 = NEIPSecDBCopyResponseForQueuedRequest(v57[3], 0);
  v41 = ne_log_obj();
  v42 = v41;
  if (v40)
  {
    v43 = 1;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v70 = a1;
      v71 = 1024;
      v72 = a2;
      v73 = 1024;
      v74 = bswap32(v66);
      _os_log_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_INFO, "%@ updated SAID %u SPI %08X", buf, 0x18u);
    }

    goto LABEL_84;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v70 = a1;
    v15 = "%@ failed to receive response for pfkey update SA";
    v44 = v42;
    goto LABEL_81;
  }

LABEL_83:
  v43 = 0;
LABEL_84:
  v45 = *(&v75 + 1);
  v46 = *(*(&v75 + 1) + 24);
  if (v46)
  {
    CFRelease(v46);
    *(v45 + 24) = 0;
  }

  if (v68)
  {
    free(v68);
  }

  if (v67)
  {
    free(v67);
  }

  v47 = v57[3];
  if (v47)
  {
    NEIPSecDBRemoveQueuedRequest(v47);
    free(v57[3]);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v75, 8);
LABEL_93:
  v48 = *MEMORY[0x1E69E9840];
  return v43;
}

const void *__NEIPSecDBUpdateSA_block_invoke(uint64_t a1)
{
  result = NEGetValueFromIntKeyedDictionary(*(*(a1 + 40) + 80), *(a1 + 48));
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *__NEIPSecDBUpdateSA_block_invoke_117(uint64_t a1)
{
  result = NEIPSecDBCreateQueuedRequest(*(a1 + 40), 2, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBMigrateSA(uint64_t a1, int a2, CFTypeRef cf)
{
  v73[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v41 = ne_log_obj();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
LABEL_87:
      v35 = 0;
      goto LABEL_81;
    }

    LODWORD(v66) = 136315138;
    *(&v66 + 4) = "NEIPSecDBMigrateSA";
    v42 = "%s called with null session";
LABEL_89:
    _os_log_fault_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_FAULT, v42, &v66, 0xCu);
    goto LABEL_87;
  }

  if (!*(a1 + 80))
  {
    v41 = ne_log_obj();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_87;
    }

    LODWORD(v66) = 136315138;
    *(&v66 + 4) = "NEIPSecDBMigrateSA";
    v42 = "%s called with null session->sas";
    goto LABEL_89;
  }

  v59 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v55 = 0;
  valuePtr = 0;
  v52 = 0;
  memset(v73, 0, 24);
  memset(v72, 0, sizeof(v72));
  *buffer = 0;
  v70 = 0;
  v71 = 0;
  *&v66 = 0;
  *(&v66 + 1) = &v66;
  v67 = 0x2000000000;
  v68 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 0, 1))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v61 = a1;
    v11 = "%@ migrate SA dictionary validation failed";
    goto LABEL_11;
  }

  v6 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBMigrateSA_block_invoke;
  block[3] = &unk_1E7F08F30;
  block[4] = &v66;
  block[5] = a1;
  v47 = a2;
  dispatch_sync(v6, block);
  v7 = *(*(&v66 + 1) + 24);
  if (!v7)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v61 = a1;
    v11 = "%@ migrate SA, failed to find existing SA";
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, @"Direction");
  if (Value)
  {
    v9 = CFEqual(Value, @"In") == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(*(*(&v66 + 1) + 24), &v52, 0, &v55, &v59, &v58, v73) || !NEIPSecDBFilloutBasicSAInfo(cf, 0, 0, 0, &v57, &v56, v72))
  {
    goto LABEL_67;
  }

  if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
  {
    v13 = CFDictionaryGetValue(cf, @"OutgoingInterface");
    CFStringGetCString(v13, buffer, 24, 0x600u);
  }

  v14 = CFDictionaryGetValue(cf, @"EncryptionAlgorithm");
  v15 = v14;
  if (v14)
  {
    if (CFEqual(v14, @"ChaCha20-Poly1305-IIV") || CFEqual(v15, @"AES-128-GCM-IIV") || CFEqual(v15, @"AES-256-GCM-IIV"))
    {
      LODWORD(v15) = 1024;
    }

    else
    {
      LODWORD(v15) = 0;
    }
  }

  v16 = CFDictionaryGetValue(cf, @"NATTraversal");
  if (v16 && CFBooleanGetValue(v16))
  {
    LODWORD(v15) = v15 | 2;
  }

  v17 = CFDictionaryGetValue(cf, @"NATTKeepAlive");
  if (v17 && CFBooleanGetValue(v17))
  {
    LODWORD(v15) = v15 | 4;
  }

  v18 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffload");
  if (v18 && CFBooleanGetValue(v18))
  {
    LODWORD(v15) = v15 | 0x8000;
  }

  v19 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffloadInterval");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberShortType, &valuePtr);
  }

  v20 = CFDictionaryGetValue(cf, @"NATTKeepAliveInterval");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberShortType, &valuePtr + 2);
  }

  v21 = CFDictionaryGetValue(cf, @"NATTDetectedPeer");
  if (v21 && CFBooleanGetValue(v21))
  {
    LODWORD(v15) = v15 | 0x1000;
  }

  v22 = CFDictionaryGetValue(cf, @"NATTPort");
  if (v22)
  {
    CFNumberGetValue(v22, kCFNumberShortType, &v54);
  }

  v23 = CFDictionaryGetValue(cf, @"NATTSourcePort");
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberShortType, &v54 + 2);
  }

  v24 = _NEIPSecDBGetQueue();
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 0x40000000;
  v44[2] = __NEIPSecDBMigrateSA_block_invoke_123;
  v44[3] = &unk_1E7F08F58;
  v44[4] = &v48;
  v44[5] = a1;
  v45 = a2;
  dispatch_sync(v24, v44);
  if (!v49[3])
  {
    goto LABEL_67;
  }

  v25 = v58;
  v26 = v73;
  if (!LOBYTE(v73[0]))
  {
    v26 = 0;
  }

  if (v9)
  {
    v27 = v59;
  }

  else
  {
    v27 = v58;
  }

  if (!v9)
  {
    v25 = v59;
  }

  v28 = v56;
  if (v9)
  {
    v29 = v57;
  }

  else
  {
    v29 = v56;
  }

  if (!v9)
  {
    v28 = v57;
  }

  v30 = v72;
  if (!LOBYTE(v72[0]))
  {
    v30 = 0;
  }

  v31 = buffer;
  if (!buffer[0])
  {
    v31 = 0;
  }

  *&v43 = v30;
  *(&v43 + 1) = v31;
  if (!NEPFKeySendMigrate(*(a1 + 64), v52, v55, v15, HIWORD(v54), v54, SHIWORD(valuePtr), valuePtr, v27, v25, v26, v29, v28, v43))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v61 = a1;
    v11 = "%@ pfkey send migrate SA failed";
LABEL_11:
    v12 = v10;
LABEL_12:
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    goto LABEL_67;
  }

  v32 = NEIPSecDBCopyResponseForQueuedRequest(v49[3], 0);
  v33 = ne_log_obj();
  v34 = v33;
  if (v32)
  {
    v35 = 1;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v61 = a1;
      v62 = 1024;
      v63 = a2;
      v64 = 1024;
      v65 = bswap32(v55);
      _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@ migrated SAID %u SPI %08X", buf, 0x18u);
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v61 = a1;
    v11 = "%@ failed to receive response for pfkey migrate SA";
    v12 = v34;
    goto LABEL_12;
  }

LABEL_67:
  v35 = 0;
LABEL_68:
  v36 = *(&v66 + 1);
  v37 = *(*(&v66 + 1) + 24);
  if (v37)
  {
    CFRelease(v37);
    *(v36 + 24) = 0;
  }

  if (v59)
  {
    free(v59);
  }

  if (v58)
  {
    free(v58);
  }

  if (v57)
  {
    free(v57);
  }

  if (v56)
  {
    free(v56);
  }

  v38 = v49[3];
  if (v38)
  {
    NEIPSecDBRemoveQueuedRequest(v38);
    free(v49[3]);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v66, 8);
LABEL_81:
  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

const void *__NEIPSecDBMigrateSA_block_invoke(uint64_t a1)
{
  result = NEGetValueFromIntKeyedDictionary(*(*(a1 + 40) + 80), *(a1 + 48));
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *__NEIPSecDBMigrateSA_block_invoke_123(uint64_t a1)
{
  result = NEIPSecDBCreateQueuedRequest(*(a1 + 40), 26, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBDeleteSA(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  v5 = v4;
  if (a1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@ deleting SAID %u", buf, 0x12u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v6 = _NEIPSecDBGetQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = __NEIPSecDBDeleteSA_block_invoke;
    v17[3] = &unk_1E7F08F80;
    v17[5] = &v19;
    v17[6] = a1;
    v18 = a2;
    v17[4] = buf;
    dispatch_sync(v6, v17);
    v7 = *(*&buf[8] + 24);
    if (v7)
    {
      if (!_NEIPSecDBDeleteSA(a1, v7) || (NEIPSecDBCopyResponseForQueuedRequest(v20[3], 0) & 1) == 0)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v23 = 138412546;
          v24 = a1;
          v25 = 1024;
          v26 = a2;
          _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ failed to receive response for pfkey delete SAID %u", v23, 0x12u);
        }

        v9 = 0;
        goto LABEL_15;
      }

      v8 = ne_log_obj();
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v23 = 138412546;
        v24 = a1;
        v25 = 1024;
        v26 = a2;
        v10 = "%@ deleted SAID %u";
LABEL_14:
        _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, v10, v23, 0x12u);
      }
    }

    else
    {
      v8 = ne_log_obj();
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v23 = 138412546;
        v24 = a1;
        v25 = 1024;
        v26 = a2;
        v10 = "%@ delete SA, saData is NULL for SAID %u, may already be removed";
        goto LABEL_14;
      }
    }

LABEL_15:
    v12 = *&buf[8];
    v13 = *(*&buf[8] + 24);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 24) = 0;
    }

    v14 = v20[3];
    if (v14)
    {
      NEIPSecDBRemoveQueuedRequest(v14);
      free(v20[3]);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(buf, 8);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEIPSecDBDeleteSA";
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
  }

  v9 = 0;
LABEL_20:
  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

void __NEIPSecDBDeleteSA_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 80))
  {
    v3 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), *(a1 + 56));
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    v2 = *(a1 + 48);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = NEIPSecDBCreateQueuedRequest(v2, 4, *(a1 + 56));
      v2 = *(a1 + 48);
    }
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    v5 = *(a1 + 56);
    do
    {
      v6 = *v4;
      v7 = *(v4 + 4);
      if (v7)
      {
        v8 = v7 == v5;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        *(v4 + 4) = 0;
        if (!*(v4 + 5))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *(v4 + 5);
        if (v9)
        {
          v10 = v9 == v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v9 = 0;
          *(v4 + 5) = 0;
        }

        if (!v7 && !v9)
        {
LABEL_24:
          v11 = *(v4 + 3);
          if (v11)
          {
            if (!dispatch_source_testcancel(*(v4 + 3)))
            {
              dispatch_source_cancel(v11);
              v6 = *v4;
            }

            *(v4 + 3) = 0;
          }

          v12 = *(v4 + 1);
          if (v6)
          {
            v6[1] = v12;
          }

          *v12 = v6;

          free(v4);
          return;
        }
      }

      v4 = v6;
    }

    while (v6);
  }
}

uint64_t _NEIPSecDBDeleteSA(uint64_t a1, CFDictionaryRef theDict)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v16 = 0;
  memset(v24, 0, 24);
  Value = CFDictionaryGetValue(theDict, @"Direction");
  if (Value)
  {
    v5 = CFEqual(Value, @"In") == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(theDict, &v16, 0, &v17, &v19, &v18, v24))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v12 = 0;
      goto LABEL_21;
    }

    *buf = 138412546;
    v21 = a1;
    v22 = 1024;
    v23 = bswap32(v17);
    v13 = "%@ NEIPSecDBFilloutBasicSAInfo error for SPI %08X";
LABEL_27:
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    goto LABEL_20;
  }

  if (v5)
  {
    v6 = v19;
  }

  else
  {
    v6 = v18;
  }

  if (v5)
  {
    v7 = v18;
  }

  else
  {
    v7 = v19;
  }

  if (LOBYTE(v24[0]))
  {
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  v9 = NEPFKeySendDelete(*(a1 + 64), v16, v6, v7, v17, v8);
  v10 = ne_log_obj();
  v11 = v10;
  if (!v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    v21 = a1;
    v22 = 1024;
    v23 = bswap32(v17);
    v13 = "%@ pfkey send delete failed for SPI %08X";
    goto LABEL_27;
  }

  v12 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = a1;
    v22 = 1024;
    v23 = bswap32(v17);
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "%@ deleted SA SPI %08X", buf, 0x12u);
  }

LABEL_21:
  if (v19)
  {
    free(v19);
  }

  if (v18)
  {
    free(v18);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t NEIPSecDBCopySA(uint64_t a1, int a2)
{
  v44[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v31 = 0;
    memset(v44, 0, 24);
    *&v41 = 0;
    *(&v41 + 1) = &v41;
    v42 = 0x2000000000;
    v43 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v26 = 0;
    v4 = _NEIPSecDBGetQueue();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = __NEIPSecDBCopySA_block_invoke;
    v24[3] = &unk_1E7F08FA8;
    v24[5] = &v27;
    v24[6] = a1;
    v25 = a2;
    v24[4] = &v41;
    dispatch_sync(v4, v24);
    v5 = *(*(&v41 + 1) + 24);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"Direction");
      if (Value)
      {
        v7 = CFEqual(Value, @"In") == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!NEIPSecDBFilloutBasicSAInfo(*(*(&v41 + 1) + 24), &v31, 0, &v32, &v34, &v33, v44))
      {
        goto LABEL_27;
      }

      if (v7)
      {
        v10 = v34;
      }

      else
      {
        v10 = v33;
      }

      if (v7)
      {
        v11 = v33;
      }

      else
      {
        v11 = v34;
      }

      if (LOBYTE(v44[0]))
      {
        v12 = v44;
      }

      else
      {
        v12 = 0;
      }

      if (NEPFKeySendGet(*(a1 + 64), v31, v10, v11, v32, v12))
      {
        v13 = NEIPSecDBCopyResponseForQueuedRequest(v28[3], &v26);
        v14 = ne_log_obj();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v36 = a1;
            v37 = 1024;
            v38 = a2;
            v39 = 1024;
            v40 = bswap32(v32);
            _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_INFO, "%@ copied SAID %u cSPI %08X", buf, 0x18u);
          }

          goto LABEL_27;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_27:
          v17 = *(&v41 + 1);
          v18 = *(*(&v41 + 1) + 24);
          if (v18)
          {
            CFRelease(v18);
            *(v17 + 24) = 0;
          }

          if (v34)
          {
            free(v34);
          }

          if (v33)
          {
            free(v33);
          }

          v19 = v28[3];
          if (v19)
          {
            NEIPSecDBRemoveQueuedRequest(v19);
            free(v28[3]);
          }

          v20 = v26;
          _Block_object_dispose(&v27, 8);
          _Block_object_dispose(&v41, 8);
          goto LABEL_36;
        }

        *buf = 138412290;
        v36 = a1;
        v9 = "%@ failed to receive response for pfkey get SA";
        v16 = v15;
LABEL_25:
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
        goto LABEL_27;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v36 = a1;
      v9 = "%@ pfkey send get SA failed";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v36 = a1;
      v9 = "%@ copy SA, saData is NULL";
    }

    v16 = v8;
    goto LABEL_25;
  }

  v23 = ne_log_obj();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v41) = 136315138;
    *(&v41 + 4) = "NEIPSecDBCopySA";
    _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "%s called with null session", &v41, 0xCu);
  }

  v20 = 0;
LABEL_36:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

CFArrayRef NEIPSecDBCopySAIDs(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2000000000;
    v16 = 0;
    v2 = _NEIPSecDBGetQueue();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __NEIPSecDBCopySAIDs_block_invoke;
    v13[3] = &unk_1E7F08FD0;
    v13[4] = &buf;
    v13[5] = a1;
    dispatch_sync(v2, v13);
    v3 = *(*(&buf + 1) + 24);
    if (v3 && (Count = CFDictionaryGetCount(v3), Count >= 1))
    {
      v5 = Count;
      v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(*(*(&buf + 1) + 24), v6, 0);
      v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, v5, MEMORY[0x1E695E9C0]);
      free(v6);
    }

    else
    {
      v7 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    }

    v8 = *(&buf + 1);
    v9 = *(*(&buf + 1) + 24);
    if (v9)
    {
      CFRelease(v9);
      *(v8 + 24) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBCopySAIDs";
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

CFDictionaryRef __NEIPSecDBCopySAIDs_block_invoke(CFDictionaryRef result)
{
  v1 = *(*(result + 5) + 80);
  if (v1)
  {
    v2 = result;
    result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBFlushSAs(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@ flush all SAs", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2000000000;
    v20 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBFlushSAs_block_invoke;
    block[3] = &unk_1E7F08FF8;
    block[5] = &v14;
    block[6] = a1;
    block[4] = &buf;
    dispatch_sync(v4, block);
    if (CFDictionaryGetCount(*(*(&buf + 1) + 24)) < 1 || (CFDictionaryApplyFunction(*(*(&buf + 1) + 24), NEIPSecDBFlushSAHelper, a1), (NEIPSecDBCopyResponseForQueuedRequest(v15[3], 0) & 1) != 0))
    {
      v5 = 1;
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "failed to receive response for pfkey flush SA", v12, 2u);
      }

      v5 = 0;
    }

    v7 = *(&buf + 1);
    v8 = *(*(&buf + 1) + 24);
    if (v8)
    {
      CFRelease(v8);
      *(v7 + 24) = 0;
    }

    v9 = v15[3];
    if (v9)
    {
      NEIPSecDBRemoveQueuedRequest(v9);
      free(v15[3]);
    }

    _Block_object_dispose(&v14, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBFlushSAs";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

_OWORD *__NEIPSecDBFlushSAs_block_invoke(_OWORD *result)
{
  v1 = *(*(result + 6) + 80);
  if (v1)
  {
    v2 = result;
    *(*(*(result + 4) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    result = NEIPSecDBCreateQueuedRequest(*(v2 + 6), 9, 0);
    *(*(*(v2 + 5) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBAddPolicy(uint64_t a1, CFTypeRef cf)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_83:
      v16 = 0;
      goto LABEL_101;
    }

    *buf = 136315138;
    v89 = "NEIPSecDBAddPolicy";
    v15 = "%s called with null session";
LABEL_191:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v15, buf, 0xCu);
    goto LABEL_83;
  }

  if (!*(a1 + 88))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_83;
    }

    *buf = 136315138;
    v89 = "NEIPSecDBAddPolicy";
    v15 = "%s called with null session->policies";
    goto LABEL_191;
  }

  v78 = 0;
  valuePtr = -1;
  *buffer = 0;
  v86 = 0;
  v87 = 0;
  *v82 = 0;
  v83 = 0;
  v84 = 0;
  *v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2000000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  if (NEInitCFTypes_onceToken == -1)
  {
    if (!cf)
    {
      goto LABEL_97;
    }
  }

  else
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
    if (!cf)
    {
      goto LABEL_97;
    }
  }

  v4 = CFDICTIONARY_TYPE;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_97;
  }

  if (!NEGetValueWithType(cf, @"Mode", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3756;
    v92 = 2112;
    v93 = @"Mode";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"IPSecProtocol", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3757;
    v92 = 2112;
    v93 = @"IPSecProtocol";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"LocalAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3758;
    v92 = 2112;
    v93 = @"LocalAddress";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"RemoteAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3759;
    v92 = 2112;
    v93 = @"RemoteAddress";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPrefix") && !NEGetValueWithType(cf, @"LocalPrefix", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3760;
    v92 = 2112;
    v93 = @"LocalPrefix";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePrefix") && !NEGetValueWithType(cf, @"RemotePrefix", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3761;
    v92 = 2112;
    v93 = @"RemotePrefix";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPort") && !NEGetValueWithType(cf, @"LocalPort", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3762;
    v92 = 2112;
    v93 = @"LocalPort";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePort") && !NEGetValueWithType(cf, @"RemotePort", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3763;
    v92 = 2112;
    v93 = @"RemotePort";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"UpperLayerProtocol") && !NEGetValueWithType(cf, @"UpperLayerProtocol", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3765;
    v92 = 2112;
    v93 = @"UpperLayerProtocol";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"UniqueID") && !NEGetValueWithType(cf, @"UniqueID", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3766;
    v92 = 2112;
    v93 = @"UniqueID";
    v94 = 2048;
    v95 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"Direction") && !NEGetValueWithType(cf, @"Direction", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3767;
    v92 = 2112;
    v93 = @"Direction";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"Level") && !NEGetValueWithType(cf, @"Level", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3769;
    v92 = 2112;
    v93 = @"Level";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OuterLocalAddress") && !NEGetValueWithType(cf, @"OuterLocalAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3771;
    v92 = 2112;
    v93 = @"OuterLocalAddress";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OuterRemoteAddress") && !NEGetValueWithType(cf, @"OuterRemoteAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3772;
    v92 = 2112;
    v93 = @"OuterRemoteAddress";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"IPSecInterface") && !NEGetValueWithType(cf, @"IPSecInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3774;
    v92 = 2112;
    v93 = @"IPSecInterface";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"InternalInterface") && !NEGetValueWithType(cf, @"InternalInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3775;
    v92 = 2112;
    v93 = @"InternalInterface";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OutgoingInterface") && !NEGetValueWithType(cf, @"OutgoingInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3776;
    v92 = 2112;
    v93 = @"OutgoingInterface";
    v94 = 2048;
    v95 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (!CFDictionaryContainsKey(cf, @"IntializeDisabled") || NEGetValueWithType(cf, @"IntializeDisabled", CFBOOLEAN_TYPE))
  {
    if (CFDictionaryContainsKey(cf, @"Mode") && (Value = CFDictionaryGetValue(cf, @"Mode")) != 0)
    {
      v6 = CFEqual(Value, @"Transport");
      v7 = v6 == 0;
      if (v6)
      {
        v8 = 1;
        goto LABEL_74;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = 2;
LABEL_74:
    if (CFDictionaryContainsKey(cf, @"Direction"))
    {
      v11 = CFDictionaryGetValue(cf, @"Direction");
      if (v11)
      {
        v12 = v11;
        if (CFEqual(v11, @"In"))
        {
          v13 = 0;
LABEL_89:
          v17 = 1;
          goto LABEL_90;
        }

        if (CFEqual(v12, @"Out"))
        {
          v17 = 0;
          v13 = 1;
LABEL_90:
          if (!CFDictionaryContainsKey(cf, @"IPSecProtocol"))
          {
            v65 = 0;
            goto LABEL_112;
          }

          v18 = CFDictionaryGetValue(cf, @"IPSecProtocol");
          if (v18)
          {
            v19 = v18;
            if (CFEqual(v18, @"ESP"))
            {
              v20 = 50;
LABEL_111:
              v65 = v20;
LABEL_112:
              if (CFDictionaryContainsKey(cf, @"UpperLayerProtocol"))
              {
                v26 = CFDictionaryGetValue(cf, @"UpperLayerProtocol");
                CFNumberGetValue(v26, kCFNumberCharType, &valuePtr);
              }

              v66 = v8;
              v63 = v17;
              if (v7)
              {
                if (CFDictionaryContainsKey(cf, @"OuterLocalAddress"))
                {
                  v27 = CFDictionaryGetValue(cf, @"OuterLocalAddress");
                  v28 = NECreateAddressStructFromString(v27, 0, 0);
                }

                else
                {
                  v28 = 0;
                }

                if (CFDictionaryContainsKey(cf, @"OuterRemoteAddress"))
                {
                  v29 = CFDictionaryGetValue(cf, @"OuterRemoteAddress");
                  v30 = NECreateAddressStructFromString(v29, 0, 0);
LABEL_124:
                  v31 = CFDictionaryGetValue(cf, @"Level");
                  if (!v31 || (v32 = v31, CFEqual(v31, @"None")))
                  {
                    LOBYTE(v64) = 0;
                    v33 = 1;
LABEL_127:
                    WORD2(v64) = v33;
                    goto LABEL_128;
                  }

                  if (CFEqual(v32, @"Unique"))
                  {
                    if (CFDictionaryContainsKey(cf, @"UniqueID"))
                    {
                      v61 = CFDictionaryGetValue(cf, @"UniqueID");
                      CFNumberGetValue(v61, kCFNumberShortType, &v76);
                    }

                    v64 = 0x200000003;
                  }

                  else
                  {
                    if (CFEqual(v32, @"Require"))
                    {
                      v33 = 2;
                      LOBYTE(v64) = 2;
                      goto LABEL_127;
                    }

                    if (!CFEqual(v32, @"Discard"))
                    {
                      v62 = ne_log_obj();
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_ERROR, "add policy, invalid policy level", buf, 2u);
                      }

                      v47 = 0;
                      v44 = 0;
                      v39 = 0;
                      v36 = 0;
                      if (!v28)
                      {
                        goto LABEL_178;
                      }

                      goto LABEL_177;
                    }

                    v64 = 0;
                  }

LABEL_128:
                  v34 = CFDictionaryGetValue(cf, @"LocalAddress");
                  v35 = CFDictionaryGetValue(cf, @"LocalPort");
                  v36 = NECreateAddressStructFromString(v34, v35, 0);
                  if (CFDictionaryContainsKey(cf, @"LocalRangeEndAddress"))
                  {
                    v37 = CFDictionaryGetValue(cf, @"LocalRangeEndAddress");
                    v38 = CFDictionaryGetValue(cf, @"LocalRangeEndPort");
                    v39 = NECreateAddressStructFromString(v37, v38, 0);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (CFDictionaryContainsKey(cf, @"LocalPrefix"))
                  {
                    v40 = CFDictionaryGetValue(cf, @"LocalPrefix");
                    CFNumberGetValue(v40, kCFNumberCharType, &v78 + 1);
                  }

                  else
                  {
                    if (v7)
                    {
                      v41 = 24;
                    }

                    else
                    {
                      v41 = 32;
                    }

                    HIBYTE(v78) = v41;
                  }

                  v42 = CFDictionaryGetValue(cf, @"RemoteAddress");
                  v43 = CFDictionaryGetValue(cf, @"RemotePort");
                  v44 = NECreateAddressStructFromString(v42, v43, 0);
                  if (CFDictionaryContainsKey(cf, @"RemoteRangeEndAddress"))
                  {
                    v45 = CFDictionaryGetValue(cf, @"RemoteRangeEndAddress");
                    v46 = CFDictionaryGetValue(cf, @"RemoteRangeEndPort");
                    v47 = NECreateAddressStructFromString(v45, v46, 0);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  if (CFDictionaryContainsKey(cf, @"RemotePrefix"))
                  {
                    v48 = CFDictionaryGetValue(cf, @"RemotePrefix");
                    CFNumberGetValue(v48, kCFNumberCharType, &v78);
                  }

                  else
                  {
                    if (v7)
                    {
                      v49 = 24;
                    }

                    else
                    {
                      v49 = 32;
                    }

                    LOBYTE(v78) = v49;
                  }

                  if (CFDictionaryContainsKey(cf, @"IPSecInterface"))
                  {
                    v50 = CFDictionaryGetValue(cf, @"IPSecInterface");
                    CFStringGetCString(v50, buffer, 24, 0x600u);
                  }

                  if (CFDictionaryContainsKey(cf, @"InternalInterface"))
                  {
                    v51 = CFDictionaryGetValue(cf, @"InternalInterface");
                    CFStringGetCString(v51, v82, 24, 0x600u);
                  }

                  if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
                  {
                    v52 = CFDictionaryGetValue(cf, @"OutgoingInterface");
                    CFStringGetCString(v52, v79, 24, 0x600u);
                  }

                  v53 = CFDictionaryGetValue(cf, @"IntializeDisabled");
                  if (v53)
                  {
                    v54 = CFBooleanGetValue(v53) != 0;
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v55 = _NEIPSecDBGetQueue();
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 0x40000000;
                  block[2] = __NEIPSecDBAddPolicy_block_invoke;
                  block[3] = &unk_1E7F09020;
                  block[6] = a1;
                  block[7] = cf;
                  block[4] = &v72;
                  block[5] = &v68;
                  dispatch_sync(v55, block);
                  if (!v13)
                  {
                    goto LABEL_164;
                  }

                  v56 = buffer;
                  if (!buffer[0])
                  {
                    v56 = 0;
                  }

                  v57 = v82;
                  if (!v82[0])
                  {
                    v57 = 0;
                  }

                  v58 = v79;
                  if (!v79[0])
                  {
                    v58 = 0;
                  }

                  if (!NEPFKeySendSPDAdd(*(a1 + 64), v36, v39, HIBYTE(v78), v44, v47, v78, valuePtr, WORD2(v64), 2, v65, v66, v64, v76, v28, v30, 0, v56, v57, v58, v54))
                  {
                    v59 = ne_log_obj();
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v60 = "pfkey send add policy failed";
                      goto LABEL_199;
                    }
                  }

                  else
                  {
LABEL_164:
                    if (v63 && !NEPFKeySendSPDAdd(*(a1 + 64), v44, v47, v78, v36, v39, HIBYTE(v78), valuePtr, WORD2(v64), 1, v65, v66, v64, v76, v30, v28, 0, 0, 0, 0, v54))
                    {
                      v59 = ne_log_obj();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v60 = "pfkey send add policy failed";
                        goto LABEL_199;
                      }
                    }

                    else
                    {
                      if (NEIPSecDBCopyResponseForQueuedRequest(v69[3], 0))
                      {
                        goto LABEL_176;
                      }

                      v59 = ne_log_obj();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v60 = "failed to receive response for pfkey add policy";
LABEL_199:
                        _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, v60, buf, 2u);
                      }
                    }
                  }

                  NEIPSecDBRemovePolicyIDFromSAs(a1, *(v73 + 6));
                  *(v73 + 6) = 0;
LABEL_176:
                  if (!v28)
                  {
LABEL_178:
                    if (v30)
                    {
                      free(v30);
                    }

                    if (v44)
                    {
                      free(v44);
                    }

                    if (v36)
                    {
                      free(v36);
                    }

                    if (v47)
                    {
                      free(v47);
                    }

                    if (v39)
                    {
                      free(v39);
                    }

                    goto LABEL_98;
                  }

LABEL_177:
                  free(v28);
                  goto LABEL_178;
                }
              }

              else
              {
                v28 = 0;
              }

              v30 = 0;
              goto LABEL_124;
            }

            if (CFEqual(v19, @"AH"))
            {
              v20 = 51;
              goto LABEL_111;
            }
          }

          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v25 = "add policy, invalid ipsec protocol";
            goto LABEL_103;
          }

          goto LABEL_98;
        }
      }

      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_98;
      }

      *buf = 0;
      v25 = "add policy, invalid direction";
      goto LABEL_103;
    }

    v13 = 1;
    goto LABEL_89;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v89 = "NEIPSecDBValidatePolicyDictionary";
    v90 = 1024;
    v91 = 3778;
    v92 = 2112;
    v93 = @"IntializeDisabled";
    v94 = 2048;
    v95 = CFBOOLEAN_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
LABEL_96:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
  }

LABEL_97:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v25 = "add policy dictionary validation failed";
LABEL_103:
    _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, v25, buf, 2u);
  }

LABEL_98:
  v22 = v69[3];
  if (v22)
  {
    NEIPSecDBRemoveQueuedRequest(v22);
    free(v69[3]);
  }

  v16 = *(v73 + 6);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
LABEL_101:
  v23 = *MEMORY[0x1E69E9840];
  return v16;
}

_OWORD *__NEIPSecDBAddPolicy_block_invoke(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = *(v3 + 76);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + 76) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    NEAddValueToIntKeyedDictionary(*(a1[6] + 88), *(*(a1[4] + 8) + 24), MutableCopy);
    CFRelease(v7);
  }

  result = NEIPSecDBCreateQueuedRequest(a1[6], 14, *(*(a1[4] + 8) + 24));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void NEIPSecDBRemovePolicyIDFromSAs(uint64_t a1, int a2)
{
  v4 = _NEIPSecDBGetQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEIPSecDBRemovePolicyIDFromSAs_block_invoke;
  v5[3] = &__block_descriptor_tmp_229;
  v5[4] = a1;
  v6 = a2;
  dispatch_sync(v4, v5);
}

uint64_t NEIPSecDBDeletePolicy(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x2000000000;
    v26 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBDeletePolicy_block_invoke;
    block[3] = &unk_1E7F09048;
    block[5] = &v20;
    block[6] = a1;
    v19 = a2;
    block[4] = &buf;
    dispatch_sync(v4, block);
    v5 = *(*(&buf + 1) + 24);
    if (v5)
    {
      v6 = *(a1 + 64);
      v7 = NEGetIntFromDictionary(v5, @"PolicyID", 0);
      if (pfkey_send_x5(v6, 22, v7))
      {
        if (NEIPSecDBCopyResponseForQueuedRequest(v21[3], 0))
        {
          v8 = 1;
LABEL_14:
          v11 = *(&buf + 1);
          v12 = *(*(&buf + 1) + 24);
          if (v12)
          {
            CFRelease(v12);
            *(v11 + 24) = 0;
          }

          v13 = v21[3];
          if (v13)
          {
            NEIPSecDBRemoveQueuedRequest(v13);
            free(v21[3]);
          }

          _Block_object_dispose(&v20, 8);
          _Block_object_dispose(&buf, 8);
          goto LABEL_19;
        }

        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          v10 = "failed to receive response for pfkey delete policy";
          goto LABEL_12;
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }

      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v17 = 0;
      v10 = "pfkey send delete policy failed";
    }

    else
    {
      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v17 = 0;
      v10 = "delete policy, policy data is NULL";
    }

LABEL_12:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, v17, 2u);
    goto LABEL_13;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBDeletePolicy";
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
  }

  v8 = 0;
LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t NEIPSecDBCopyPolicy(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2000000000;
    v27 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v20 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBCopyPolicy_block_invoke;
    block[3] = &unk_1E7F09070;
    block[5] = &v21;
    block[6] = a1;
    v19 = a2;
    block[4] = &buf;
    dispatch_sync(v4, block);
    v5 = *(*(&buf + 1) + 24);
    if (v5)
    {
      v6 = *(a1 + 64);
      v7 = NEGetIntFromDictionary(v5, @"PolicyID", 0);
      if (pfkey_send_x5(v6, 16, v7))
      {
        if (NEIPSecDBCopyResponseForQueuedRequest(v22[3], &v20))
        {
          goto LABEL_10;
        }

        v8 = ne_log_obj();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *v17 = 0;
        v9 = "failed to receive response for pfkey spd get";
        goto LABEL_17;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v10 = *(&buf + 1);
        v11 = *(*(&buf + 1) + 24);
        if (v11)
        {
          CFRelease(v11);
          *(v10 + 24) = 0;
        }

        v12 = v22[3];
        if (v12)
        {
          NEIPSecDBRemoveQueuedRequest(v12);
          free(v22[3]);
        }

        v13 = v20;
        _Block_object_dispose(&v21, 8);
        _Block_object_dispose(&buf, 8);
        goto LABEL_15;
      }

      *v17 = 0;
      v9 = "pfkey send spd get failed";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *v17 = 0;
      v9 = "copy policy, policy data is NULL";
    }

LABEL_17:
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v9, v17, 2u);
    goto LABEL_10;
  }

  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicy";
    _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
  }

  v13 = 0;
LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

CFArrayRef NEIPSecDBCopyPolicyIDs(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_13:
      v6 = 0;
      goto LABEL_9;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicyIDs";
    v12 = "%s called with null session";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, v12, &buf, 0xCu);
    goto LABEL_13;
  }

  if (!*(a1 + 88))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicyIDs";
    v12 = "%s called with null session->policies";
    goto LABEL_15;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x2000000000;
  v16 = 0;
  v2 = _NEIPSecDBGetQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __NEIPSecDBCopyPolicyIDs_block_invoke;
  v13[3] = &unk_1E7F09098;
  v13[4] = &buf;
  v13[5] = a1;
  dispatch_sync(v2, v13);
  Count = CFDictionaryGetCount(*(*(&buf + 1) + 24));
  if (Count < 1)
  {
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  }

  else
  {
    v4 = Count;
    v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(*(&buf + 1) + 24), v5, 0);
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], v5, v4, MEMORY[0x1E695E9C0]);
    free(v5);
  }

  v7 = *(&buf + 1);
  v8 = *(*(&buf + 1) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(v7 + 24) = 0;
  }

  _Block_object_dispose(&buf, 8);
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

CFDictionaryRef __NEIPSecDBCopyPolicyIDs_block_invoke(CFDictionaryRef result)
{
  v1 = *(*(result + 5) + 88);
  if (v1)
  {
    v2 = result;
    result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBFlushPolicies(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2000000000;
    v19 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v2 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBFlushPolicies_block_invoke;
    block[3] = &unk_1E7F090C0;
    block[5] = &v13;
    block[6] = a1;
    block[4] = &buf;
    dispatch_sync(v2, block);
    if (CFDictionaryGetCount(*(*(&buf + 1) + 24)) < 1 || (CFDictionaryApplyFunction(*(*(&buf + 1) + 24), NEIPSecDBFlushPoliciesHelper, *(a1 + 64)), (NEIPSecDBCopyResponseForQueuedRequest(v14[3], 0) & 1) != 0))
    {
      v3 = 1;
    }

    else
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "failed to receive response for pfkey flush policies", v11, 2u);
      }

      v3 = 0;
    }

    v5 = *(&buf + 1);
    v6 = *(*(&buf + 1) + 24);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 24) = 0;
    }

    v7 = v14[3];
    if (v7)
    {
      NEIPSecDBRemoveQueuedRequest(v7);
      free(v14[3]);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBFlushPolicies";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    v3 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

_OWORD *__NEIPSecDBFlushPolicies_block_invoke(_OWORD *result)
{
  v1 = *(*(result + 6) + 88);
  if (v1)
  {
    v2 = result;
    *(*(*(result + 4) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    result = NEIPSecDBCreateQueuedRequest(*(v2 + 6), 19, 0);
    *(*(*(v2 + 5) + 8) + 24) = result;
  }

  return result;
}

BOOL NEIPSecDBFlushPoliciesHelper(uint64_t a1, const __CFDictionary *a2, NSObject *a3)
{
  v4 = NEGetIntFromDictionary(a2, @"PolicyID", 0);

  return pfkey_send_x5(a3, 22, v4);
}

uint64_t NEIPSecDBFlushAll(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = NEIPSecDBFlushSAs(a1);
    if (result)
    {
      result = NEIPSecDBFlushPolicies(a1) != 0;
    }
  }

  else
  {
    v4 = ne_log_obj();
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v5 = 136315138;
      v6 = "NEIPSecDBFlushAll";
      _os_log_fault_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_FAULT, "%s called with null session", &v5, 0xCu);
      result = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL NEIPSecDBInvalidateSession(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = a1;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidating", buf, 0xCu);
    }

    result = 1;
    *(a1 + 56) = 1;
    if (*(a1 + 64))
    {
      v5 = _NEIPSecDBGetQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __NEIPSecDBInvalidateSession_block_invoke;
      block[3] = &__block_descriptor_tmp_215;
      block[4] = a1;
      dispatch_sync(v5, block);
      *(a1 + 64) = 0;
      result = 1;
    }
  }

  else
  {
    result = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315138;
      v9 = "NEIPSecDBInvalidateSession";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
      result = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __NEIPSecDBInvalidateSession_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 3);
      v6 = *v3;
      if (v5)
      {
        v7 = dispatch_source_testcancel(*(v3 + 3));
        v6 = v4;
        if (!v7)
        {
          dispatch_source_cancel(v5);
          v6 = *v3;
        }
      }

      v8 = *(v3 + 1);
      if (v6)
      {
        v6[1] = v8;
      }

      *v8 = v6;
      free(v3);
      v3 = v4;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    dispatch_source_cancel(*(v2 + 64));
    dispatch_release(v9);
  }

  v10 = g_IPSecDBSessions;
  v15.length = CFArrayGetCount(g_IPSecDBSessions);
  v15.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v15, *(a1 + 32));
  if (FirstIndexOfValue != -1)
  {
    v12 = FirstIndexOfValue;
    v13 = g_IPSecDBSessions;

    CFArrayRemoveValueAtIndex(v13, v12);
  }
}

uint64_t NEIPSecDBCreateStatsTimer(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x2000000000;
    v22 = 0;
    if (a3 && a4 && a5)
    {
      v11 = _NEIPSecDBGetQueue();
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __NEIPSecDBCreateStatsTimer_block_invoke;
      v15[3] = &unk_1E7F091A8;
      v16 = a4;
      v17 = a5;
      v18 = a3;
      v19 = a2;
      v15[4] = &buf;
      v15[5] = a1;
      dispatch_sync(v11, v15);
      v6 = *(*(&buf + 1) + 24);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBCreateStatsTimer";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

void __NEIPSecDBCreateStatsTimer_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 104);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 52);
    while (1)
    {
      v5 = *v2;
      if (v3)
      {
        if (*(v2 + 4) == v3)
        {
          break;
        }
      }

      if (v4 && *(v2 + 5) == v4)
      {
        break;
      }

      v2 = *v2;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v8 = 0;
    v7 = v2;
  }

  else
  {
LABEL_8:
    v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040BC06665BuLL);
    if (!v6)
    {
      goto LABEL_36;
    }

    v7 = v6;
    v2 = 0;
    v6[4] = *(a1 + 48);
    v6[5] = *(a1 + 52);
    v8 = 1;
  }

  v9 = *(a1 + 56) / 0x14u;
  if (v9 <= 2)
  {
    v9 = 2;
  }

  v10 = v7[10];
  v11 = v10 - 1;
  if (v10 - 1 >= v9)
  {
    v7[10] = v9;
    v10 = v9;
  }

  v12 = *(a1 + 60);
  if (v12 == 1)
  {
    if (*(a1 + 56) > v10)
    {
      v10 = *(a1 + 56);
    }

    v7[9] = v10;
  }

  else if (!v12)
  {
    if (*(a1 + 56) > v10)
    {
      v10 = *(a1 + 56);
    }

    v7[8] = v10;
  }

  if (v11 < v9)
  {
    goto LABEL_35;
  }

  v13 = *(v7 + 3);
  if (v13)
  {
    if (!dispatch_source_testcancel(*(v7 + 3)))
    {
      dispatch_source_cancel(v13);
    }

    *(v7 + 3) = 0;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 52);
    v17 = v7[10];
    *buf = 136315906;
    v28 = "NEIPSecDBCreateStatsTimer_block_invoke";
    v29 = 1024;
    v30 = v15;
    v31 = 1024;
    v32 = v16;
    v33 = 1024;
    v34 = v17;
    _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "%s: Starting stat timeout (SAs in:%d out:%d) Polling: every %d", buf, 0x1Eu);
  }

  v18 = _NEIPSecDBGetQueue();
  v19 = 1000 * v7[10];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 0x40000000;
  v26[2] = __NEIPSecDBCreateStatsTimer_block_invoke_232;
  v26[3] = &__block_descriptor_tmp_233;
  v20 = *(a1 + 40);
  v26[4] = v7;
  v26[5] = v20;
  v26[6] = *(a1 + 48);
  v21 = NERepeatingEventCreate(v18, 0, 0, v19, 0, 0, v26, 0);
  *(v7 + 3) = v21;
  if (v21)
  {
    if (v8)
    {
      v22 = *(*(a1 + 40) + 104);
      *v7 = v22;
      if (v22)
      {
        *(*(*(a1 + 40) + 104) + 8) = v7;
      }

      *(*(a1 + 40) + 104) = v7;
      *(v7 + 1) = *(a1 + 40) + 104;
    }

LABEL_35:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_36;
  }

  if ((v8 & 1) == 0)
  {
    v24 = *v2;
    v25 = v2[1];
    if (*v2)
    {
      *(v24 + 8) = v25;
    }

    *v25 = v24;
  }

  free(v7);
LABEL_36:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t NEIPSecDBScheduleWithRunLoop(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "NEIPSecDBScheduleWithRunLoop";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", &v4, 0xCu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t NEIPSecDBUnScheduleWithRunLoop(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = 136315138;
      v5 = "NEIPSecDBUnScheduleWithRunLoop";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", &v4, 0xCu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return 0;
}

__CFString *NEIPSecNotifyCodeCopyString(int a1)
{
  if (a1 <= 39)
  {
    if (a1 > 23)
    {
      switch(a1)
      {
        case 24:
          return @"ServerRejectedAuth";
        case 36:
          return @"ServerInternalAddressFailure";
        case 38:
          return @"ServerRejectedTS";
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          return @"ServerRejectedSPI";
        case 7:
          return @"ServerRejectedSyntax";
        case 14:
          return @"ServerRejectedProposal";
      }
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    switch(a1)
    {
      case 70000:
        return @"Unknown";
      case 70001:
        return @"InternalError";
      case 70002:
        return @"CouldNotSend";
      case 70003:
        return @"InvalidArgs";
      case 70004:
        return @"UserRequested";
      case 70005:
        return @"PeerRequested";
      case 70006:
        return @"ServerDidNotRespond";
      case 70007:
        return @"ServerStoppedResponding";
      case 70008:
        return @"ReceivedInvalidSyntax";
      case 70009:
        return @"ReceivedInvalidProposal";
      case 70010:
        return @"ReceivedInvalidSPI";
      case 70011:
        return @"ReceivedInvalidTS";
      case 70012:
        return @"IKESocketFailure";
      case 70013:
        return @"IKELocalAddressMissing";
      case 70014:
        return @"IKERemoteAddressMissing";
      case 70015:
        return @"IKERemotePortMissing";
      case 70016:
        return @"PacketCreateFailed";
      case 70017:
        return @"PacketProcessingFailed";
      case 70018:
        return @"SAMigrationFailed";
      case 70019:
        return @"InvalidConfiguration";
      case 70020:
        return @"FailedToGenerateSPI";
      case 70021:
        return @"CryptoFailed";
      case 70022:
        return @"ConfigurationEstablishmentFailed";
      case 70023:
        return @"ChildInstallSAFailed";
      case 70024:
        return @"NoIKESA";
      case 70025:
        return @"NoChildSA";
      case 70026:
        return @"ChildUninstallSAFailed";
      case 70027:
        return @"AuthFailed";
      case 70028:
        return @"ReceivedInvalidVendorID";
      case 70029:
        return @"EAPIdentityDecryptionFailure";
      case 70030:
        return @"ClientCertNotYetValid";
      case 70031:
        return @"ClientCertExpired";
      case 70032:
        return @"ClientCertMissing";
      case 70033:
        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      case 70034:
        return @"ClientCertInvalid";
      case 70035:
        return @"ServerCertNotYetValid";
      case 70036:
        return @"ServerCertExpired";
      case 70037:
        return @"ServerCertMissing";
      case 70038:
        return @"ServerCertInvalid";
      case 70039:
        return @"ReceivedPrivateError";
      case 70040:
        return @"IKESADelete";
      default:
        if (a1 == 40)
        {
          result = @"ServerRejectedAddress";
        }

        else
        {
          if (a1 != 16407)
          {
            return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
          }

          result = @"IKEStatusServerRedirect";
        }

        break;
    }
  }

  return result;
}

__CFString *NEIPSecNotifyReasonCopyString(int a1)
{
  if (a1 <= 2099)
  {
    if (a1 <= 2000)
    {
      if (a1 <= 2)
      {
        switch(a1)
        {
          case 0:
            return @"Unknown";
          case 1:
            return @"InternalError";
          case 2:
            return @"CouldNotSend";
        }
      }

      else if (a1 > 1000)
      {
        if (a1 == 1001)
        {
          return @"PeerRequested";
        }

        if (a1 == 2000)
        {
          return @"ServerDidNotRespond";
        }
      }

      else
      {
        if (a1 == 3)
        {
          return @"InvalidArgs";
        }

        if (a1 == 1000)
        {
          return @"UserRequested";
        }
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 > 2012)
    {
      if (a1 > 2014)
      {
        if (a1 == 2015)
        {
          return @"ServerRejectedAddress";
        }

        if (a1 == 2016)
        {
          return @"ServerRedirect";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 2013)
      {
        return @"ServerRejectedTS";
      }

      else
      {
        return @"ServerRejectedAuth";
      }
    }

    else
    {
      if (a1 <= 2010)
      {
        if (a1 == 2001)
        {
          return @"ServerStoppedResponding";
        }

        if (a1 == 2010)
        {
          return @"ServerRejectedSyntax";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 2011)
      {
        return @"ServerRejectedProposal";
      }

      else
      {
        return @"ServerRejectedSPI";
      }
    }
  }

  else if (a1 > 2999)
  {
    if (a1 > 3003)
    {
      if (a1 > 3005)
      {
        if (a1 == 3006)
        {
          return @"InternalPacketProcessingFailed";
        }

        if (a1 == 3007)
        {
          return @"InternalSAMigrationFailed";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 3004)
      {
        return @"InternalIKERemotePortMissing";
      }

      else
      {
        return @"InternalPacketCreateFailed";
      }
    }

    else if (a1 > 3001)
    {
      if (a1 == 3002)
      {
        return @"InternalIKELocalAddressMissing";
      }

      else
      {
        return @"InternalIKERemoteAddressMissing";
      }
    }

    else if (a1 == 3000)
    {
      return @"InternalIKESessionMissing";
    }

    else
    {
      return @"InternalIKESocketFailure";
    }
  }

  else
  {
    if (a1 <= 2109)
    {
      if (a1 <= 2101)
      {
        if (a1 == 2100)
        {
          return @"ReceivedInvalidSyntax";
        }

        else
        {
          return @"ReceivedInvalidProposal";
        }
      }

      if (a1 == 2102)
      {
        return @"ReceivedInvalidSPI";
      }

      if (a1 == 2103)
      {
        return @"ReceivedInvalidTS";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 > 2111)
    {
      if (a1 == 2112)
      {
        return @"AuthFailedEAP";
      }

      if (a1 == 2113)
      {
        return @"ReceivedInvalidVendorID";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 == 2110)
    {
      return @"AuthFailedPSK";
    }

    else
    {
      return @"AuthFailedCert";
    }
  }
}

uint64_t NEIPSecIKENotificationTypeCopyString(unsigned int a1)
{
  v2 = a1 & 0xF000;
  if (v2 == 4096)
  {
    v3 = @"IKE";
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%d)", v2];
  }

  if (a1 & 0xF00) < 0x900 && ((0x1BFu >> (BYTE1(a1) & 0xF)))
  {
    v4 = off_1E7F094B0[(a1 >> 8) & 0xF];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1 & 0xF00];
  }

  if (a1 >= 6u)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    v5 = off_1E7F094F8[a1 & 7];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mode=%@, type=%@, status=%@", v3, v4, v5];

  return v6;
}

CFStringRef NEIPSecIKECreateSessionWithInterfaceAndSASession(const __CFAllocator *a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t), void *a9)
{
  v178 = *MEMORY[0x1E69E9840];
  v13 = a9;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"IKEVersion");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (valuePtr == 1)
    {
      v15 = CFStringCreateWithCString(a1, "DummyIPSecObject", 0x8000100u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__14949;
      *&buf[32] = __Block_byref_object_dispose__14950;
      v169 = 0;
      if (xpc_client_queue_once != -1)
      {
        dispatch_once(&xpc_client_queue_once, &__block_literal_global_14951);
      }

      v16 = xpc_client_queue_q;
      mach_service = xpc_connection_create_mach_service("com.apple.SecureNetworking.IPSec", v16, 2uLL);
      v18 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = mach_service;

      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __create_xpc_connection_block_invoke;
        handler[3] = &unk_1E7F09490;
        handler[4] = buf;
        xpc_connection_set_event_handler(v19, handler);
        xpc_connection_resume(*(*&buf[8] + 40));
        v20 = *(*&buf[8] + 40);
      }

      else
      {
        v85 = ne_log_obj();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          LOWORD(handler[0]) = 0;
          _os_log_error_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_ERROR, "NEIPSec:create_xpc_connection, xpc_connection_create_mach_service fails\n", handler, 2u);
        }

        v20 = 0;
      }

      _Block_object_dispose(buf, 8);
      if (!v20)
      {
        goto LABEL_189;
      }

      v86 = xpc_dictionary_create(0, 0, 0);
      v87 = _CFXPCCreateXPCObjectFromCFObject();
      if (a3)
      {
        a3 = _CFXPCCreateXPCObjectFromCFObject();
      }

      v88 = 0;
      if (!v86 || !v87)
      {
LABEL_186:
        v111 = ne_log_obj();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v88;
          _os_log_debug_impl(&dword_1BA83C000, v111, OS_LOG_TYPE_DEBUG, "send_xpc_ike_create result %d\n", buf, 8u);
        }

        if (v88)
        {
          goto LABEL_145;
        }

LABEL_189:
        if (v15)
        {
          CFRelease(v15);
          v15 = 0;
        }

        goto LABEL_145;
      }

      xpc_dictionary_set_int64(v86, "ipsecobjectref", v15);
      xpc_dictionary_set_int64(v86, "ipsecopcode", 1);
      xpc_dictionary_set_value(v86, "ipsecikedict", v87);
      if (a3)
      {
        xpc_dictionary_set_value(v86, "ipsecchilddict", a3);
      }

      v89 = xpc_connection_send_message_with_reply_sync(v20, v86);
      if (!v89)
      {
        v88 = 0;
        goto LABEL_186;
      }

      v90 = v20;
      v91 = v89;
      v92 = MEMORY[0x1BFAFC5E0]();
      if (v92 != MEMORY[0x1E69E9E80])
      {
        if (v92 == MEMORY[0x1E69E9E98])
        {
          handle_connection_error(v90, v91);
        }

        else
        {
          v93 = ne_log_obj();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, "NEIPSec: connection returns unknown type\n", buf, 2u);
          }
        }

        v88 = 0;
        goto LABEL_185;
      }

      xdicta = v91;
      int64 = xpc_dictionary_get_int64(xdicta, "ipsecopcode");
      v135 = xpc_dictionary_get_int64(xdicta, "ipsecobjectref");
      v137 = int64 - 4096;
      v101 = int64 <= 4096;
      v102 = ne_log_obj();
      v103 = os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG);
      if (v101)
      {
        if (v103)
        {
          *buf = 134217984;
          *&buf[4] = v137;
          _os_log_debug_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_DEBUG, "process_response invalid reply, opcode = 0x%llx\n", buf, 0xCu);
        }
      }

      else
      {
        if (v103)
        {
          *buf = 134217984;
          *&buf[4] = v137;
          _os_log_debug_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_DEBUG, "process_response: op 0x%llx\n", buf, 0xCu);
        }

        if (v137 == 1)
        {
          v106 = xpc_dictionary_get_BOOL(xdicta, "reply");
          v88 = v15 == v135 && v106;
          v107 = ne_log_obj();
          v102 = v107;
          if (v88)
          {
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *&buf[4] = v135;
              _os_log_debug_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_DEBUG, "get_response_BOOLean response: ref %p", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v15;
            *&buf[12] = 2048;
            *&buf[14] = v135;
            _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "get_response_BOOLean response ERROR: requestref %p, returned ref %p", buf, 0x16u);
          }

          goto LABEL_184;
        }

        v102 = ne_log_obj();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v137;
          _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "process_response unknown reply, opcode = 0x%llx\n", buf, 0xCu);
        }
      }

      v88 = 0;
LABEL_184:

LABEL_185:
      goto LABEL_186;
    }
  }

  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v133 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  if (!a2 || (v21 = CFDICTIONARY_TYPE, CFGetTypeID(a2) != v21))
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1306;
      _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%s:%d: IKE configuration is not a dictionary", buf, 0x12u);
    }

    goto LABEL_116;
  }

  if (!NEGetValueWithType(a2, @"IKEVersion", CFNUMBER_TYPE))
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1310;
      *&buf[18] = 2112;
      *&buf[20] = @"IKEVersion";
      *&buf[28] = 2048;
      *&buf[30] = CFNUMBER_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
    }

LABEL_116:

    v79 = 0;
    goto LABEL_117;
  }

  v165 = 0;
  v22 = NEGetValueWithType(a2, @"IKEVersion", CFNUMBER_TYPE);
  CFNumberGetValue(v22, kCFNumberIntType, &v165);
  if (v165 != 2)
  {
    v99 = ne_log_obj();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1315;
      _os_log_error_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_ERROR, "%s:%d: IKE version is not 2", buf, 0x12u);
    }

    v79 = 0;
    goto LABEL_210;
  }

  theDict = a2;
  if (CFDictionaryContainsKey(theDict, @"OutgoingInterface") && !NEGetValueWithType(theDict, @"OutgoingInterface", CFSTRING_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1321;
    *&buf[18] = 2112;
    *&buf[20] = @"OutgoingInterface";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
LABEL_206:
    v114 = v104;
    v115 = 38;
LABEL_207:
    _os_log_error_impl(&dword_1BA83C000, v114, OS_LOG_TYPE_ERROR, v105, buf, v115);
    goto LABEL_208;
  }

  if (CFDictionaryContainsKey(theDict, @"OutgoingInterface"))
  {
    v23 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"OutgoingInterface"];
    [(NEIKEv2IKESAConfiguration *)v133 setOutgoingInterfaceName:v23];
  }

  if (CFDictionaryContainsKey(theDict, @"LocalAddress") && !NEGetValueWithType(theDict, @"LocalAddress", CFSTRING_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1326;
    *&buf[18] = 2112;
    *&buf[20] = @"LocalAddress";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"LocalPort") && !NEGetValueWithType(theDict, @"LocalPort", CFNUMBER_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1327;
    *&buf[18] = 2112;
    *&buf[20] = @"LocalPort";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"LocalAddress"))
  {
    v24 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalAddress"];
    v25 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalPort"];
    v26 = NECreateAddressStructFromString(v24, v25, 0);

    if (!v26)
    {
      v108 = ne_log_obj();
      v104 = v108;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalAddress"];
        v110 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalPort"];
        *buf = 136315906;
        *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
        *&buf[12] = 1024;
        *&buf[14] = 1334;
        *&buf[18] = 2112;
        *&buf[20] = v109;
        *&buf[28] = 2112;
        *&buf[30] = v110;
        _os_log_error_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse local address %@:%@", buf, 0x26u);

        goto LABEL_193;
      }

      goto LABEL_208;
    }

    v27 = [MEMORY[0x1E6977E08] endpointWithAddress:v26];
    [(NEIKEv2IKESAConfiguration *)v133 setLocalEndpoint:v27];

    free(v26);
  }

  if (!NEGetValueWithType(theDict, @"RemoteAddress", CFSTRING_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1341;
    *&buf[18] = 2112;
    *&buf[20] = @"RemoteAddress";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v105 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"RemotePort") && !NEGetValueWithType(theDict, @"RemotePort", CFNUMBER_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1342;
    *&buf[18] = 2112;
    *&buf[20] = @"RemotePort";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  v28 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemoteAddress"];
  v29 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemotePort"];
  v30 = NECreateAddressStructFromString(v28, v29, 0);

  if (!v30)
  {
    v108 = ne_log_obj();
    v104 = v108;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      v112 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemoteAddress"];
      v113 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemotePort"];
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1348;
      *&buf[18] = 2112;
      *&buf[20] = v112;
      *&buf[28] = 2112;
      *&buf[30] = v113;
      _os_log_error_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse remote address %@:%@", buf, 0x26u);

      goto LABEL_193;
    }

    goto LABEL_208;
  }

  v31 = [MEMORY[0x1E6977E08] endpointWithAddress:v30];
  [(NEIKEv2IKESAConfiguration *)v133 setRemoteEndpoint:v31];

  free(v30);
  if (CFDictionaryContainsKey(theDict, @"ServerMode") && !NEGetValueWithType(theDict, @"ServerMode", CFBOOLEAN_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1354;
    *&buf[18] = 2112;
    *&buf[20] = @"ServerMode";
    *&buf[28] = 2048;
    *&buf[30] = CFBOOLEAN_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"ServerMode"))
  {
    v32 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"ServerMode"];
    -[NEIKEv2IKESAConfiguration setServerMode:](v133, "setServerMode:", [v32 BOOLValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"NonceSize") && !NEGetValueWithType(theDict, @"NonceSize", CFNUMBER_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1359;
    *&buf[18] = 2112;
    *&buf[20] = @"NonceSize";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"NonceSize"))
  {
    v33 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"NonceSize"];
    -[NEIKEv2IKESAConfiguration setNonceSize:](v133, "setNonceSize:", [v33 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectSupported") && !NEGetValueWithType(theDict, @"RedirectSupported", CFBOOLEAN_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1364;
    *&buf[18] = 2112;
    *&buf[20] = @"RedirectSupported";
    *&buf[28] = 2048;
    *&buf[30] = CFBOOLEAN_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectSupported"))
  {
    v34 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectSupported"];
    -[NEIKEv2IKESAConfiguration setAllowRedirect:](v133, "setAllowRedirect:", [v34 BOOLValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectedFromServer") && !NEGetValueWithType(theDict, @"RedirectedFromServer", CFSTRING_TYPE))
  {
    v104 = ne_log_obj();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1369;
      *&buf[18] = 2112;
      *&buf[20] = @"RedirectedFromServer";
      *&buf[28] = 2048;
      *&buf[30] = CFSTRING_TYPE;
      v105 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_206;
    }

LABEL_208:
    v79 = 0;
    goto LABEL_209;
  }

  if (!CFDictionaryContainsKey(theDict, @"RedirectedFromServer"))
  {
    goto LABEL_45;
  }

  v35 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectedFromServer"];
  v36 = NECreateAddressStructFromString(v35, 0, 0);

  if (!v36)
  {
    v108 = ne_log_obj();
    v104 = v108;
    if (!os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    v116 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectedFromServer"];
    *buf = 136315650;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1375;
    *&buf[18] = 2112;
    *&buf[20] = v116;
    _os_log_error_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse redirect address %@", buf, 0x1Cu);

LABEL_193:
    v79 = 0;
    v104 = v108;
    goto LABEL_209;
  }

  v37 = [MEMORY[0x1E6977E08] endpointWithAddress:v36];
  [(NEIKEv2IKESAConfiguration *)v133 setRedirectedFromServer:v37];

  free(v36);
LABEL_45:
  v38 = NEGetValueWithType(theDict, @"Proposals", CFARRAY_TYPE);
  if (!v38)
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315394;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1384;
    v105 = "%s:%d: IKE configuration does not contain proposals array";
    goto LABEL_217;
  }

  theArray = v38;
  Count = CFArrayGetCount(v38);
  if (!Count)
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315394;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1389;
    v105 = "%s:%d: IKE configuration proposals array is empty";
LABEL_217:
    v114 = v104;
    v115 = 18;
    goto LABEL_207;
  }

  if (CFDictionaryContainsKey(theDict, @"EAPProperties") && !NEGetValueWithType(theDict, @"EAPProperties", CFDICTIONARY_TYPE))
  {
    v104 = ne_log_obj();
    if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1393;
    *&buf[18] = 2112;
    *&buf[20] = @"EAPProperties";
    *&buf[28] = 2048;
    *&buf[30] = CFDICTIONARY_TYPE;
    v105 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  v123 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count < 1)
  {
LABEL_113:
    v78 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v123];
    [(NEIKEv2IKESAConfiguration *)v133 setProposals:v78];

    v79 = v133;
    goto LABEL_252;
  }

  v39 = 0;
  while (1)
  {
    v126 = v39;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
    v41 = ValueAtIndex;
    if (!ValueAtIndex || (v42 = CFDICTIONARY_TYPE, CFGetTypeID(ValueAtIndex) != v42))
    {
      v118 = ne_log_obj();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136315394;
        v171 = "NEIPSecIKEValidateIKEDictionary";
        v172 = 1024;
        v173 = 1399;
        _os_log_error_impl(&dword_1BA83C000, v118, OS_LOG_TYPE_ERROR, "%s:%d: IKE configuration proposals array is invalid", v170, 0x12u);
      }

      goto LABEL_251;
    }

    v128 = v41;
    v43 = objc_alloc_init(NEIKEv2IKESAProposal);
    v129 = v43;
    if (v43)
    {
      v43->_proposalNumber = v126 + 1;
    }

    if (!CFDictionaryContainsKey(theDict, @"AuthenticationMethod"))
    {
      if (!NEGetValueWithType(v128, @"AuthenticationMethod", CFSTRING_TYPE))
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136315906;
          v171 = "NEIPSecIKEValidateIKEDictionary";
          v172 = 1024;
          v173 = 1410;
          v174 = 2112;
          v175 = @"AuthenticationMethod";
          v176 = 2048;
          v177 = CFSTRING_TYPE;
          goto LABEL_254;
        }

LABEL_245:

        goto LABEL_251;
      }

      v44 = [(__CFDictionary *)v128 objectForKeyedSubscript:@"AuthenticationMethod"];
      v45 = NEIPsecIKEGetAuthProcotol(v44);
      if (!v45)
      {
        v122 = ne_log_obj();
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          *v170 = 136315650;
          v171 = "NEIPSecIKEValidateIKEDictionary";
          v172 = 1024;
          v173 = 1414;
          v174 = 2112;
          v175 = v44;
          _os_log_error_impl(&dword_1BA83C000, v122, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized authentication method", v170, 0x1Cu);
        }

        goto LABEL_245;
      }

      [(NEIKEv2IKESAProposal *)v129 setAuthenticationProtocol:v45];
    }

    if (!NEGetValueWithType(v128, @"Lifetime", CFNUMBER_TYPE))
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136315906;
        v171 = "NEIPSecIKEValidateIKEDictionary";
        v172 = 1024;
        v173 = 1420;
        v174 = 2112;
        v175 = @"Lifetime";
        v176 = 2048;
        v177 = CFNUMBER_TYPE;
LABEL_254:
        _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", v170, 0x26u);
        goto LABEL_245;
      }

      goto LABEL_245;
    }

    v46 = [(__CFDictionary *)v128 objectForKeyedSubscript:@"Lifetime"];
    -[NEIKEv2IKESAProposal setLifetimeSeconds:](v129, "setLifetimeSeconds:", [v46 unsignedLongValue]);

    v164 = 0;
    v47 = NEIPsecIKECopyEncryptionProtocolsFromDictionary(v128, 0, &v164);
    [(NEIKEv2IKESAProposal *)v129 setEncryptionProtocols:v47];

    if (v164)
    {
      goto LABEL_250;
    }

    v48 = [(NEIKEv2IKESAProposal *)v129 encryptionProtocols];
    v49 = v48 == 0;

    if (v49)
    {
      oslog = ne_log_obj();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136315394;
        v171 = "NEIPSecIKEValidateIKEDictionary";
        v172 = 1024;
        v173 = 1428;
        v119 = "%s:%d: failed to get encryption protocol(s)";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v50 = [(NEIKEv2IKESAProposal *)v129 encryptionProtocols];
    v51 = [v50 countByEnumeratingWithState:&v160 objects:buf count:16];
    if (v51)
    {
      v52 = 0;
      v53 = 0;
      v54 = *v161;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v161 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v160 + 1) + 8 * i);
          if (v56)
          {
            v56 = *(v56 + 16);
            if (v56 > 0x1F)
            {
              LODWORD(v56) = 0;
            }

            else
            {
              LODWORD(v56) = 0xD0100000 >> v56;
            }
          }

          v52 |= v56 ^ 1;
          v53 |= v56;
        }

        v51 = [v50 countByEnumeratingWithState:&v160 objects:buf count:16];
      }

      while (v51);

      if (v53 & v52)
      {
        oslog = ne_log_obj();
        if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_249;
        }

        *v170 = 136315394;
        v171 = "NEIPSecIKEValidateIKEDictionary";
        v172 = 1024;
        v173 = 1443;
        v119 = "%s:%d: can't mix authenticated and unauthenticated encryption protocols in the same proposal";
        goto LABEL_248;
      }

      if (v52)
      {
        v57 = NEIPsecIKECopyIntegrityProtocolsFromDictionary(v128, &v164);
        [(NEIKEv2IKESAProposal *)v129 setIntegrityProtocols:v57];

        if (v164)
        {
          goto LABEL_250;
        }

        v58 = [(NEIKEv2IKESAProposal *)v129 integrityProtocols];
        v59 = v58 == 0;

        if (v59)
        {
          oslog = ne_log_obj();
          if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_249;
          }

          *v170 = 136315394;
          v171 = "NEIPSecIKEValidateIKEDictionary";
          v172 = 1024;
          v173 = 1452;
          v119 = "%s:%d: failed to get integrity protocol(s)";
          goto LABEL_248;
        }
      }
    }

    else
    {
    }

    v60 = NEIPsecIKECopyPRFProtocolsFromDictionary(v128, &v164);
    [(NEIKEv2IKESAProposal *)v129 setPrfProtocols:v60];

    if (v164)
    {
      goto LABEL_250;
    }

    v61 = [(NEIKEv2IKESAProposal *)v129 prfProtocols];
    v62 = v61 == 0;

    if (v62)
    {
      break;
    }

    v63 = NEIPsecIKECopyKEMProtocolsFromDictionary(v128);
    [(NEIKEv2IKESAProposal *)v129 setKemProtocols:v63];

    v64 = [(NEIKEv2IKESAProposal *)v129 kemProtocols];
    v65 = v64 == 0;

    if (v65)
    {
      oslog = ne_log_obj();
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_249;
      }

      *v170 = 136315394;
      v171 = "NEIPSecIKEValidateIKEDictionary";
      v172 = 1024;
      v173 = 1467;
      v119 = "%s:%d: failed to get DH protocol(s)";
LABEL_248:
      _os_log_error_impl(&dword_1BA83C000, oslog, OS_LOG_TYPE_ERROR, v119, v170, 0x12u);
      goto LABEL_249;
    }

    v66 = NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(v128, &v164);
    [(NEIKEv2IKESAProposal *)v129 setAdditionalKEMProtocols:v66];

    if (v164)
    {
      goto LABEL_250;
    }

    if (CFDictionaryContainsKey(v128, @"EAPMethod"))
    {
      oslog = objc_alloc_init(MEMORY[0x1E695DF70]);
      v125 = [(__CFDictionary *)v128 objectForKeyedSubscript:@"EAPMethod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = NEIPsecIKEGetEAPProtocol(v125);
        if (!v67)
        {
          v67 = ne_log_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *v170 = 136315650;
            v171 = "NEIPSecIKEValidateIKEDictionary";
            v172 = 1024;
            v173 = 1483;
            v174 = 2112;
            v175 = v125;
            _os_log_error_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized EAP method", v170, 0x1Cu);
          }

LABEL_243:

          goto LABEL_249;
        }

        [oslog addObject:v67];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_100;
        }

        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        v67 = v125;
        v68 = [v67 countByEnumeratingWithState:&v156 objects:handler count:16];
        if (v68)
        {
          v69 = *v157;
          while (2)
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v157 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v156 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v72 = NEIPsecIKEGetEAPProtocol(v71);
                if (!v72)
                {
                  v120 = ne_log_obj();
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                  {
                    *v170 = 136315650;
                    v171 = "NEIPSecIKEValidateIKEDictionary";
                    v172 = 1024;
                    v173 = 1492;
                    v174 = 2112;
                    v175 = v71;
                    _os_log_error_impl(&dword_1BA83C000, v120, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized EAP method", v170, 0x1Cu);
                  }

                  v125 = v67;
                  goto LABEL_243;
                }

                [oslog addObject:v72];
              }
            }

            v68 = [v67 countByEnumeratingWithState:&v156 objects:handler count:16];
            if (v68)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_100:
      if (CFDictionaryContainsKey(theDict, @"EAPProperties"))
      {
        v73 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"EAPProperties"];
        if (v73)
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v74 = oslog;
          v75 = [v74 countByEnumeratingWithState:&v152 objects:v166 count:16];
          if (v75)
          {
            v76 = *v153;
            do
            {
              for (k = 0; k != v75; ++k)
              {
                if (*v153 != v76)
                {
                  objc_enumerationMutation(v74);
                }

                [*(*(&v152 + 1) + 8 * k) setProperties:v73];
              }

              v75 = [v74 countByEnumeratingWithState:&v152 objects:v166 count:16];
            }

            while (v75);
          }
        }
      }

      [(NEIKEv2IKESAProposal *)v129 setEapProtocols:oslog];
    }

    [v123 addObject:v129];

    v39 = v126 + 1;
    if (v126 + 1 == Count)
    {
      goto LABEL_113;
    }
  }

  oslog = ne_log_obj();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v170 = 136315394;
    v171 = "NEIPSecIKEValidateIKEDictionary";
    v172 = 1024;
    v173 = 1461;
    v119 = "%s:%d: failed to get PRF protocol(s)";
    goto LABEL_248;
  }

LABEL_249:

LABEL_250:
LABEL_251:
  v79 = 0;
LABEL_252:
  v104 = v123;
LABEL_209:

  v99 = theDict;
LABEL_210:

LABEL_117:
  v81 = NEIPSecIKEValidateIKEChildDictionary(a3);
  v82 = NEIPSecIKEValidateSessionDictionary(a2);
  v83 = v82;
  if (!v79)
  {
    v117 = ne_log_obj();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "%s called with null ikeConfig", buf, 0xCu);
    }

    goto LABEL_226;
  }

  if (!v81)
  {
    v117 = ne_log_obj();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "%s called with null childConfig", buf, 0xCu);
    }

    goto LABEL_226;
  }

  if (!v82)
  {
    v117 = ne_log_obj();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_FAULT, "%s called with null sessionConfig", buf, 0xCu);
    }

LABEL_226:

LABEL_149:
    v15 = 0;
    goto LABEL_144;
  }

  if (!v13)
  {
    v84 = a8 ? a8(a6) : 0xFFFFFFFFLL;
    v13 = [[NEIPSecSAKernelSession alloc] initWithName:@"IKEv2 Session Database" delegate:0 pfkeySocket:v84];
    if (!v13)
    {
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v84;
        _os_log_fault_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_FAULT, "[NEIPSecSAKernelSession init pfkeySocket=%d] failed", buf, 8u);
      }

      v13 = 0;
      goto LABEL_149;
    }
  }

  if (a7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke;
    aBlock[3] = &__block_descriptor_40_e57_i40__0_v8r__sockaddr_CC_14c__16r__sockaddr_CC_14c__24r_32l;
    aBlock[4] = a7;
    a7 = _Block_copy(aBlock);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__14949;
  *&buf[32] = __Block_byref_object_dispose__14950;
  v169 = 0;
  v94 = NEIPSecIKECopyDefaultSessionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke_339;
  block[3] = &unk_1E7F09468;
  v146 = buf;
  v141 = v79;
  v142 = v81;
  v147 = a4;
  v143 = v83;
  v145 = a7;
  v13 = v13;
  v144 = v13;
  v148 = a5;
  v149 = a6;
  v95 = a7;
  dispatch_sync(v94, block);

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_144:
LABEL_145:

  v96 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __Block_byref_object_copy__14949(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __create_xpc_connection_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E98])
  {
    handle_connection_error(*(*(*(a1 + 32) + 8) + 40), v3);
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "NEIPSec: connection returns unknown type\n", v5, 2u);
    }
  }
}

void handle_connection_error(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E69E9E18];
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (a2 == v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEIPSec: connection interrupted\n", buf, 2u);
    }

    xpc_connection_cancel(v3);
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEIPSec: connection error\n", v7, 2u);
    }
  }
}

uint64_t NEIPsecIKEGetAuthProcotol(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SharedSecret"])
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 2;
  }

  else if ([v1 isEqualToString:@"Certificate"])
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 1;
  }

  else if ([v1 isEqualToString:@"ECDSA256"])
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 9;
  }

  else if ([v1 isEqualToString:@"ECDSA384"])
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 10;
  }

  else if ([v1 isEqualToString:@"ECDSA521"])
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 11;
  }

  else
  {
    if (![v1 isEqualToString:@"None"])
    {
      if ([v1 isEqualToString:@"Ed25519"])
      {
        v7 = [NEIKEv2AuthenticationProtocol alloc];
        v8 = 3;
      }

      else
      {
        if (![v1 isEqualToString:@"Ed448"])
        {
          if (![v1 isEqualToString:@"RSA-PSS"])
          {
            v5 = 0;
            goto LABEL_15;
          }

          v2 = [NEIKEv2AuthenticationProtocol alloc];
          v3 = 245;
          goto LABEL_13;
        }

        v7 = [NEIKEv2AuthenticationProtocol alloc];
        v8 = 4;
      }

      v4 = [(NEIKEv2AuthenticationProtocol *)v7 initWithDigitalSignature:v8];
      goto LABEL_14;
    }

    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 0;
  }

LABEL_13:
  v4 = [(NEIKEv2AuthenticationProtocol *)v2 initWithMethod:v3];
LABEL_14:
  v5 = v4;
LABEL_15:

  return v5;
}

uint64_t NEIPsecIKECopyEncryptionProtocolsFromDictionary(void *a1, int a2, _BYTE *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a1;
  *a3 = 0;
  if (CFDictionaryContainsKey(v5, @"EncryptionAlgorithm"))
  {
    v6 = [v5 objectForKeyedSubscript:@"EncryptionAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = NEIPsecIKEGetEncryptionProtocol(v6, a2);
      if (v7)
      {
        v8 = v7;
        v29 = v7;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      }

      else
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v31 = "NEIPsecIKECopyEncryptionProtocolsFromDictionary";
          v32 = 1024;
          v33 = 1052;
          v34 = 2112;
          v35 = v6;
          _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized encryption method", buf, 0x1Cu);
        }

        v8 = 0;
        v9 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_22;
      }

      v23 = v6;
      v10 = v6;
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = v10;
      v12 = [(NEIKEv2EncryptionProtocol *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v8);
            }

            v16 = *(*(&v24 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = NEIPsecIKEGetEncryptionProtocol(v16, a2);
              if (!v17)
              {
                v21 = ne_log_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v31 = "NEIPsecIKECopyEncryptionProtocolsFromDictionary";
                  v32 = 1024;
                  v33 = 1066;
                  v34 = 2112;
                  v35 = v16;
                  _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized encryption method", buf, 0x1Cu);
                }

                v9 = 0;
                goto LABEL_19;
              }

              v18 = v17;
              [v11 addObject:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(NEIKEv2EncryptionProtocol *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      if ([v11 count])
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v11];
LABEL_19:
        v6 = v23;
      }

      else
      {

        v9 = 0;
        v6 = v23;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t NEIPsecIKECopyIntegrityProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"IntegrityAlgorithm"))
  {
    v4 = [v3 objectForKeyedSubscript:@"IntegrityAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = NEIPsecIKEGetIntegrityProtocol(v4);
      if (v5)
      {
        v6 = v5;
        v27 = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      }

      else
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "NEIPsecIKECopyIntegrityProtocolsFromDictionary";
          v30 = 1024;
          v31 = 1113;
          v32 = 2112;
          v33 = v4;
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized integrity method", buf, 0x1Cu);
        }

        v6 = 0;
        v7 = 0;
        *a2 = 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_22;
      }

      v21 = a2;
      v8 = v4;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v8;
      v10 = [(NEIKEv2IntegrityProtocol *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = NEIPsecIKEGetIntegrityProtocol(v14);
              if (!v15)
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v29 = "NEIPsecIKECopyIntegrityProtocolsFromDictionary";
                  v30 = 1024;
                  v31 = 1128;
                  v32 = 2112;
                  v33 = v14;
                  _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized integrity method", buf, 0x1Cu);
                }

                *v21 = 1;
                v7 = 0;
                goto LABEL_19;
              }

              v16 = v15;
              [v9 addObject:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NEIKEv2IntegrityProtocol *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if ([v9 count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9];
LABEL_19:
      }

      else
      {

        v7 = 0;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v7 = 0;
LABEL_23:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t NEIPsecIKECopyPRFProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"PRFAlgorithm"))
  {
    v4 = [v3 objectForKeyedSubscript:@"PRFAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = NEIPsecIKEGetPRFProtocol(v4);
      if (v5)
      {
        v6 = v5;
        v27 = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      }

      else
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v29 = "NEIPsecIKECopyPRFProtocolsFromDictionary";
          v30 = 1024;
          v31 = 1172;
          v32 = 2112;
          v33 = v4;
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized PRF protocol", buf, 0x1Cu);
        }

        v6 = 0;
        v7 = 0;
        *a2 = 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_22;
      }

      v21 = a2;
      v8 = v4;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = v8;
      v10 = [(NEIKEv2PRFProtocol *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = NEIPsecIKEGetPRFProtocol(v14);
              if (!v15)
              {
                v19 = ne_log_obj();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v29 = "NEIPsecIKECopyPRFProtocolsFromDictionary";
                  v30 = 1024;
                  v31 = 1187;
                  v32 = 2112;
                  v33 = v14;
                  _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized PRF protocol", buf, 0x1Cu);
                }

                *v21 = 1;
                v7 = 0;
                goto LABEL_19;
              }

              v16 = v15;
              [v9 addObject:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NEIKEv2PRFProtocol *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if ([v9 count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9];
LABEL_19:
      }

      else
      {

        v7 = 0;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v7 = 0;
LABEL_23:

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t NEIPsecIKECopyKEMProtocolsFromDictionary(void *a1)
{
  v1 = a1;
  if (CFDictionaryContainsKey(v1, @"DHGroup"))
  {
    v2 = [v1 objectForKeyedSubscript:@"DHGroup"];
    v3 = NEIPsecIKECopyKEMProtocolsFromObject(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"AdditionalKEMethods") && !NEGetValueWithType(v3, @"AdditionalKEMethods", CFARRAY_TYPE))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary";
      v28 = 1024;
      v29 = 1240;
      v30 = 2112;
      v31 = @"AdditionalKEMethods";
      v32 = 2048;
      v33 = CFARRAY_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%s:%d: type of value for key %@ != %lu", buf, 0x26u);
    }

    v6 = 0;
    goto LABEL_24;
  }

  if (CFDictionaryContainsKey(v3, @"AdditionalKEMethods"))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"AdditionalKEMethods"];
    v5 = [v4 count];
    v6 = v5;
    if (v5 >= 8)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v27 = "NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary";
        v28 = 1024;
        v29 = 1249;
        v30 = 2112;
        v31 = @"AdditionalKEMethods";
        v32 = 2048;
        v33 = v6;
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s:%d: array for key %@ is too long (%zu > 7)", buf, 0x26u);
      }

      v6 = 0;
      *a2 = 1;
    }

    else if (v5)
    {
      v20 = v3;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v4 = v4;
      v8 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        v11 = 6;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v13 = NEIPsecIKECopyKEMProtocolsFromObject(*(*(&v21 + 1) + 8 * i));
            if ([v13 count] > 1 || (objc_msgSend(v13, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "method"), v14, v15))
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
              [v7 setObject:v13 forKeyedSubscript:v16];
            }

            ++v11;
          }

          v9 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      if ([v7 count])
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7];
      }

      else
      {
        v6 = 0;
      }

      v3 = v20;
    }

LABEL_24:

    goto LABEL_25;
  }

  v6 = 0;
LABEL_25:

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

NEIKEv2EAPProtocol *NEIPsecIKEGetEAPProtocol(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EAP-SIM"])
  {
    v2 = 2;
LABEL_16:
    v3 = [[NEIKEv2EAPProtocol alloc] initWithMethod:v2];
    goto LABEL_17;
  }

  if ([v1 isEqualToString:@"EAP-AKA"])
  {
    v2 = 3;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"EAP-MSCHAPv2"])
  {
    v2 = 4;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"EAP-GTC"])
  {
    v2 = 5;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"EAP-TLS"])
  {
    v2 = 6;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"EAP-PEAP"])
  {
    v2 = 7;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"Any"])
  {
    v2 = 1;
    goto LABEL_16;
  }

  v2 = 0;
  v3 = 0;
  if ([v1 isEqualToString:@"None"])
  {
    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

NEIKEv2ChildSAConfiguration *NEIPSecIKEValidateIKEChildDictionary(void *a1)
{
  v124 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      _os_log_fault_impl(&dword_1BA83C000, &v2->super, OS_LOG_TYPE_FAULT, "%s called with null ikeChildDict", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v2 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
  v3 = CFDICTIONARY_TYPE;
  if (CFGetTypeID(a1) != v3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      v118 = 1024;
      v119 = 2295;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child configuration is not a dictionary", buf, 0x12u);
    }

LABEL_11:
    v8 = 0;
    goto LABEL_167;
  }

  v4 = a1;
  if (!NEGetValueWithType(v4, @"Mode", CFSTRING_TYPE))
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      v118 = 1024;
      v119 = 2301;
      v120 = 2112;
      v121 = @"Mode";
      v122 = 2048;
      v123 = CFSTRING_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
    }

    v8 = 0;
    goto LABEL_166;
  }

  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"Mode"];
  if (([v5 isEqualToString:@"Transport"]& 1) != 0)
  {
    v6 = 1;
LABEL_17:
    [(NEIKEv2ChildSAConfiguration *)v2 setMode:v6];
    goto LABEL_18;
  }

  if ([v5 isEqualToString:@"Tunnel"])
  {
    v6 = 2;
    goto LABEL_17;
  }

LABEL_18:
  if (CFDictionaryContainsKey(v4, @"ReplayWindowSize") && !NEGetValueWithType(v4, @"ReplayWindowSize", CFNUMBER_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2309;
    v120 = 2112;
    v121 = @"ReplayWindowSize";
    v122 = 2048;
    v123 = CFNUMBER_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
LABEL_103:
    v82 = v14;
    v83 = 38;
LABEL_113:
    _os_log_error_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_ERROR, v81, buf, v83);
    goto LABEL_164;
  }

  if (CFDictionaryContainsKey(v4, @"ReplayWindowSize"))
  {
    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"ReplayWindowSize"];
    -[NEIKEv2ChildSAConfiguration setReplayWindowSize:](v2, "setReplayWindowSize:", [v9 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(v4, @"TrafficSelectorsLocal") && !NEGetValueWithType(v4, @"TrafficSelectorsLocal", CFARRAY_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2314;
    v120 = 2112;
    v121 = @"TrafficSelectorsLocal";
    v122 = 2048;
    v123 = CFARRAY_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_103;
  }

  if (CFDictionaryContainsKey(v4, @"TrafficSelectorsRemote") && !NEGetValueWithType(v4, @"TrafficSelectorsRemote", CFARRAY_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2315;
    v120 = 2112;
    v121 = @"TrafficSelectorsRemote";
    v122 = 2048;
    v123 = CFARRAY_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_103;
  }

  v10 = NEGetValueWithType(v4, @"TrafficSelectorsLocal", CFARRAY_TYPE);
  if (v10)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (!Count)
    {
      v14 = ne_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_164;
      }

      *buf = 136315394;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      v118 = 1024;
      v119 = 2322;
      v81 = "%s:%d: IKE Child local traffic selector array is empty";
LABEL_112:
      v82 = v14;
      v83 = 18;
      goto LABEL_113;
    }

    v13 = Count;
    theArray = v11;
    v103 = v5;
    v106 = v2;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = @"TSStartAddress";
      v97 = v13;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v18 = ValueAtIndex;
        v19 = CFDICTIONARY_TYPE;
        if (CFGetTypeID(ValueAtIndex) != v19)
        {
          break;
        }

        v20 = v18;
        v21 = objc_alloc_init(NEIKEv2TrafficSelector);
        if (!NEGetValueWithType(v20, @"TSType", CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          v5 = v103;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2337;
            v120 = 2112;
            v121 = @"TSType";
            v122 = 2048;
            v123 = CFSTRING_TYPE;
            _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
          }

          v2 = v106;
          goto LABEL_140;
        }

        if (!NEGetValueWithType(v20, v16, CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2338;
            v120 = 2112;
            v121 = v16;
            v122 = 2048;
            v123 = CFSTRING_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v22 = v14;
        v23 = v16;
        v24 = [(__CFDictionary *)v20 objectForKeyedSubscript:v16];
        v25 = NECreateAddressStructFromString(v24, 0, 0);

        v26 = [MEMORY[0x1E6977E08] endpointWithAddress:v25];
        [(NEIKEv2TrafficSelector *)v21 setStartAddress:v26];

        free(v25);
        if (!NEGetValueWithType(v20, @"TSEndAddress", CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          v14 = v22;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2344;
            v120 = 2112;
            v121 = @"TSEndAddress";
            v122 = 2048;
            v123 = CFSTRING_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v27 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndAddress"];
        v28 = NECreateAddressStructFromString(v27, 0, 0);

        v29 = [MEMORY[0x1E6977E08] endpointWithAddress:v28];
        [(NEIKEv2TrafficSelector *)v21 setEndAddress:v29];

        free(v28);
        if (!NEGetValueWithType(v20, @"TSStartPort", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          v14 = v22;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2350;
            v120 = 2112;
            v121 = @"TSStartPort";
            v122 = 2048;
            v123 = CFNUMBER_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartPort"];
        -[NEIKEv2TrafficSelector setStartPort:](v21, "setStartPort:", [v30 unsignedShortValue]);

        v14 = v22;
        if (!NEGetValueWithType(v20, @"TSEndPort", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2353;
            v120 = 2112;
            v121 = @"TSEndPort";
            v122 = 2048;
            v123 = CFNUMBER_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

LABEL_139:
          v5 = v103;
          v2 = v106;
LABEL_140:

          goto LABEL_163;
        }

        v31 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndPort"];
        -[NEIKEv2TrafficSelector setEndPort:](v21, "setEndPort:", [v31 unsignedShortValue]);

        if (CFDictionaryContainsKey(v20, @"TSProtocol") && !NEGetValueWithType(v20, @"TSProtocol", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2356;
            v120 = 2112;
            v121 = @"TSProtocol";
            v122 = 2048;
            v123 = CFNUMBER_TYPE;
            v85 = "%s:%d: type of value for key %@ != %lu";
LABEL_138:
            _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, v85, buf, 0x26u);
          }

          goto LABEL_139;
        }

        if (CFDictionaryContainsKey(v4, @"TSProtocol"))
        {
          v32 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSProtocol"];
          -[NEIKEv2TrafficSelector setIpProtocol:](v21, "setIpProtocol:", [v32 unsignedCharValue]);
        }

        [v22 addObject:v21];

        ++v15;
        v16 = v23;
        if (v97 == v15)
        {
          goto LABEL_42;
        }
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v117 = "NEIPSecIKEValidateIKEChildDictionary";
        v118 = 1024;
        v119 = 2330;
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child local traffic selector array is invalid", buf, 0x12u);
      }

      v5 = v103;
      v2 = v106;
      goto LABEL_163;
    }

LABEL_42:
    v2 = v106;
    [(NEIKEv2ChildSAConfiguration *)v106 setLocalTrafficSelectors:v14];

    v5 = v103;
  }

  v33 = NEGetValueWithType(v4, @"TrafficSelectorsRemote", CFARRAY_TYPE);
  if (!v33)
  {
    goto LABEL_60;
  }

  v34 = v33;
  v35 = CFArrayGetCount(v33);
  if (!v35)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315394;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2371;
    v81 = "%s:%d: IKE Child remote traffic selector array is empty";
    goto LABEL_112;
  }

  v36 = v35;
  theArraya = v34;
  v104 = v5;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v36 >= 1)
  {
    v37 = 0;
    v98 = v36;
    while (1)
    {
      v38 = CFArrayGetValueAtIndex(theArraya, v37);
      if (!v38 || (v39 = v38, v40 = CFDICTIONARY_TYPE, CFGetTypeID(v38) != v40))
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2379;
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child remote traffic selector array is invalid", buf, 0x12u);
        }

        v5 = v104;
        goto LABEL_163;
      }

      v20 = v39;
      theDict = objc_alloc_init(NEIKEv2TrafficSelector);
      if (!NEGetValueWithType(v20, @"TSType", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        v5 = v104;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2386;
          v120 = 2112;
          v121 = @"TSType";
          v122 = 2048;
          v123 = CFSTRING_TYPE;
          _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
        }

        goto LABEL_162;
      }

      if (!NEGetValueWithType(v20, @"TSStartAddress", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2387;
          v120 = 2112;
          v121 = @"TSStartAddress";
          v122 = 2048;
          v123 = CFSTRING_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v41 = v14;
      v42 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartAddress"];
      v43 = NECreateAddressStructFromString(v42, 0, 0);

      v44 = [MEMORY[0x1E6977E08] endpointWithAddress:v43];
      [(NEIKEv2TrafficSelector *)theDict setStartAddress:v44];

      free(v43);
      if (!NEGetValueWithType(v20, @"TSEndAddress", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        v14 = v41;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2393;
          v120 = 2112;
          v121 = @"TSEndAddress";
          v122 = 2048;
          v123 = CFSTRING_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v45 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndAddress"];
      v46 = NECreateAddressStructFromString(v45, 0, 0);

      v47 = [MEMORY[0x1E6977E08] endpointWithAddress:v46];
      [(NEIKEv2TrafficSelector *)theDict setEndAddress:v47];

      free(v46);
      if (!NEGetValueWithType(v20, @"TSStartPort", CFNUMBER_TYPE))
      {
        v86 = ne_log_obj();
        v14 = v41;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2399;
          v120 = 2112;
          v121 = @"TSStartPort";
          v122 = 2048;
          v123 = CFNUMBER_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v48 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartPort"];
      -[NEIKEv2TrafficSelector setStartPort:](theDict, "setStartPort:", [v48 unsignedShortValue]);

      v14 = v41;
      if (!NEGetValueWithType(v20, @"TSEndPort", CFNUMBER_TYPE))
      {
        break;
      }

      v49 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndPort"];
      -[NEIKEv2TrafficSelector setEndPort:](theDict, "setEndPort:", [v49 unsignedShortValue]);

      if (CFDictionaryContainsKey(v20, @"TSProtocol") && !NEGetValueWithType(v20, @"TSProtocol", CFNUMBER_TYPE))
      {
        v86 = ne_log_obj();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2405;
          v120 = 2112;
          v121 = @"TSProtocol";
          v122 = 2048;
          v123 = CFNUMBER_TYPE;
          v87 = "%s:%d: type of value for key %@ != %lu";
LABEL_160:
          _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, v87, buf, 0x26u);
        }

        goto LABEL_161;
      }

      if (CFDictionaryContainsKey(v4, @"TSProtocol"))
      {
        v50 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSProtocol"];
        -[NEIKEv2TrafficSelector setIpProtocol:](theDict, "setIpProtocol:", [v50 unsignedCharValue]);
      }

      [v41 addObject:theDict];

      if (v98 == ++v37)
      {
        goto LABEL_59;
      }
    }

    v86 = ne_log_obj();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      v118 = 1024;
      v119 = 2402;
      v120 = 2112;
      v121 = @"TSEndPort";
      v122 = 2048;
      v123 = CFNUMBER_TYPE;
      v87 = "%s:%d: value for key %@ is missing or type != %lu";
      goto LABEL_160;
    }

LABEL_161:
    v5 = v104;
LABEL_162:

LABEL_163:
    goto LABEL_164;
  }

LABEL_59:
  [(NEIKEv2ChildSAConfiguration *)v2 setRemoteTrafficSelectors:v14];

  v5 = v104;
LABEL_60:
  v51 = NEGetValueWithType(v4, @"ChildProposals", CFARRAY_TYPE);
  if (!v51)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315394;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2417;
    v81 = "%s:%d: IKE Child configuration proposals array is missing";
    goto LABEL_112;
  }

  v52 = v51;
  v53 = CFArrayGetCount(v51);
  if (!v53)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v117 = "NEIPSecIKEValidateIKEChildDictionary";
      v118 = 1024;
      v119 = 2422;
      v81 = "%s:%d: IKE Child configuration proposals array is empty";
      goto LABEL_112;
    }

LABEL_164:
    v8 = 0;
    goto LABEL_165;
  }

  v54 = v53;
  v105 = v5;
  v107 = v2;
  theDicta = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v53];
  p_info = NETunnelProvider.info;
  if (v54 < 1)
  {
LABEL_96:
    v14 = theDicta;
    v80 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:theDicta];
    v2 = v107;
    [(NEIKEv2ChildSAConfiguration *)v107 setProposals:v80];

    v8 = v107;
    v5 = v105;
    goto LABEL_165;
  }

  v56 = 0;
  v95 = v54;
  v96 = v52;
  while (1)
  {
    v57 = CFArrayGetValueAtIndex(v52, v56);
    if (!v57 || (v58 = v57, v59 = p_info[273], CFGetTypeID(v57) != v59))
    {
      v60 = ne_log_obj();
      v5 = v105;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v117 = "NEIPSecIKEValidateIKEChildDictionary";
        v118 = 1024;
        v119 = 2430;
        _os_log_error_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child configuration proposals array is invalid", buf, 0x12u);
      }

      goto LABEL_155;
    }

    v60 = v58;
    v61 = objc_alloc_init(NEIKEv2ChildSAProposal);
    v62 = v61;
    if (v61)
    {
      v61->_proposalNumber = v56 + 1;
    }

    if (!NEGetValueWithType(v60, @"ChildProtocol", CFSTRING_TYPE))
    {
      v88 = ne_log_obj();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v117 = "NEIPSecIKEValidateIKEChildDictionary";
        v118 = 1024;
        v119 = 2439;
        v120 = 2112;
        v121 = @"ChildProtocol";
        v122 = 2048;
        v123 = CFSTRING_TYPE;
        _os_log_error_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
      }

      goto LABEL_175;
    }

    v63 = [v60 objectForKeyedSubscript:@"ChildProtocol"];
    if ([v63 isEqualToString:@"ESP"])
    {
      v64 = 3;
    }

    else
    {
      if (![v63 isEqualToString:@"AH"])
      {
        goto LABEL_74;
      }

      v64 = 2;
    }

    [(NEIKEv2ChildSAProposal *)v62 setProtocol:v64];
LABEL_74:
    if (!NEGetValueWithType(v60, @"Lifetime", CFNUMBER_TYPE))
    {
      v89 = ne_log_obj();
      v5 = v105;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v117 = "NEIPSecIKEValidateIKEChildDictionary";
        v118 = 1024;
        v119 = 2447;
        v120 = 2112;
        v121 = @"Lifetime";
        v122 = 2048;
        v123 = CFNUMBER_TYPE;
        _os_log_error_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
      }

LABEL_155:
      v8 = 0;
      v2 = v107;
      v14 = theDicta;
      goto LABEL_165;
    }

    v65 = [v60 objectForKeyedSubscript:@"Lifetime"];
    -[NEIKEv2ChildSAProposal setLifetimeSeconds:](v62, "setLifetimeSeconds:", [v65 unsignedLongValue]);

    v114 = 0;
    v66 = NEIPsecIKECopyEncryptionProtocolsFromDictionary(v60, 1, &v114);
    [(NEIKEv2ChildSAProposal *)v62 setEncryptionProtocols:v66];

    if (v114)
    {
      goto LABEL_174;
    }

    v67 = [(NEIKEv2ChildSAProposal *)v62 encryptionProtocols];

    if (!v67)
    {
      break;
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v68 = [(NEIKEv2ChildSAProposal *)v62 encryptionProtocols];
    v69 = [v68 countByEnumeratingWithState:&v110 objects:v115 count:16];
    if (v69)
    {
      v70 = v69;
      v99 = v63;
      theArrayb = v60;
      v71 = 0;
      v72 = 0;
      v73 = *v111;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v111 != v73)
          {
            objc_enumerationMutation(v68);
          }

          v75 = *(*(&v110 + 1) + 8 * i);
          if (v75)
          {
            v75 = *(v75 + 16);
            if (v75 > 0x1F)
            {
              LODWORD(v75) = 0;
            }

            else
            {
              LODWORD(v75) = 0xD0100000 >> v75;
            }
          }

          v71 |= v75;
          v72 |= v75 ^ 1;
        }

        v70 = [v68 countByEnumeratingWithState:&v110 objects:v115 count:16];
      }

      while (v70);

      v60 = theArrayb;
      if (v71 & v72)
      {
        v93 = ne_log_obj();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v117 = "NEIPSecIKEValidateIKEChildDictionary";
          v118 = 1024;
          v119 = 2470;
          _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, "%s:%d: can't mix authenticated and unauthenticated encryption protocols in the same proposal", buf, 0x12u);
        }

        v63 = v99;
        v60 = theArrayb;
        goto LABEL_173;
      }

      p_info = (NETunnelProvider + 32);
      v52 = v96;
      v63 = v99;
      if (v72)
      {
        v76 = NEIPsecIKECopyIntegrityProtocolsFromDictionary(theArrayb, &v114);
        [(NEIKEv2ChildSAProposal *)v62 setIntegrityProtocols:v76];

        if (v114)
        {
          goto LABEL_174;
        }

        v77 = [(NEIKEv2ChildSAProposal *)v62 integrityProtocols];

        if (!v77)
        {
          v93 = ne_log_obj();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v117 = "NEIPSecIKEValidateIKEChildDictionary";
            v118 = 1024;
            v119 = 2479;
            v90 = "%s:%d: failed to get integrity protocol(s)";
LABEL_172:
            _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, v90, buf, 0x12u);
          }

          goto LABEL_173;
        }
      }
    }

    else
    {

      v52 = v96;
    }

    v78 = NEIPsecIKECopyKEMProtocolsFromDictionary(v60);
    [(NEIKEv2ChildSAProposal *)v62 setKemProtocols:v78];

    v79 = NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(v60, &v114);
    [(NEIKEv2ChildSAProposal *)v62 setAdditionalKEMProtocols:v79];

    if (v114)
    {
      goto LABEL_174;
    }

    [(__CFDictionary *)theDicta addObject:v62];

    if (++v56 == v95)
    {
      goto LABEL_96;
    }
  }

  v93 = ne_log_obj();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v117 = "NEIPSecIKEValidateIKEChildDictionary";
    v118 = 1024;
    v119 = 2455;
    v90 = "%s:%d: failed to get encryption protocol(s)";
    goto LABEL_172;
  }

LABEL_173:

LABEL_174:
LABEL_175:

  v8 = 0;
  v5 = v105;
  v2 = v107;
  v14 = theDicta;
LABEL_165:

LABEL_166:
LABEL_167:

  v91 = *MEMORY[0x1E69E9840];
  return v8;
}

NEIKEv2SessionConfiguration *NEIPSecIKEValidateSessionDictionary(void *a1)
{
  v260 = *MEMORY[0x1E69E9840];
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v2 = objc_alloc_init(NEIKEv2SessionConfiguration);
  if (!a1 || (v3 = CFDICTIONARY_TYPE, CFGetTypeID(a1) != v3))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1526;
      v15 = "%s:%d: Session configuration is not a dictionary";
      v16 = v11;
      v17 = 18;
      goto LABEL_22;
    }

LABEL_14:

    v12 = 0;
    goto LABEL_15;
  }

  if (!NEGetValueWithType(a1, @"IKEVersion", CFNUMBER_TYPE))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1530;
      v256 = 2112;
      v257 = @"IKEVersion";
      v258 = 2048;
      v259 = CFNUMBER_TYPE;
      v15 = "%s:%d: value for key %@ is missing or type != %lu";
      v16 = v11;
      v17 = 38;
LABEL_22:
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  valuePtr = 0;
  v4 = NEGetValueWithType(a1, @"IKEVersion", CFNUMBER_TYPE);
  CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
  if (valuePtr != 2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1535;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s:%d: Session IKE version is not 2", buf, 0x12u);
    }

    v12 = 0;
    goto LABEL_575;
  }

  v5 = a1;
  if (CFDictionaryContainsKey(v5, @"LocalIdentifier") && !NEGetValueWithType(v5, @"LocalIdentifier", CFSTRING_TYPE))
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1542;
    v256 = 2112;
    v257 = @"LocalIdentifier";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v19 = "%s:%d: type of value for key %@ != %lu";
LABEL_52:
    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x26u);
    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v5, @"LocalIdentifier"))
  {
    goto LABEL_44;
  }

  if (!NEGetValueWithType(v5, @"LocalIdentifierType", CFSTRING_TYPE))
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1544;
    v256 = 2112;
    v257 = @"LocalIdentifierType";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v19 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_52;
  }

  v6 = [v5 objectForKeyedSubscript:@"LocalIdentifier"];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
  v9 = [v8 isEqualToString:@"IDFQDN"];

  if ((v9 & 1) == 0)
  {
    v20 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v21 = [v20 isEqualToString:@"IDUserFQDN"];

    if (v21)
    {
      v10 = 3;
      goto LABEL_43;
    }

    v22 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v23 = [v22 isEqualToString:@"ADASN1DN"];

    if (v23)
    {
      v10 = 9;
      goto LABEL_43;
    }

    v24 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v25 = [v24 isEqualToString:@"KeyID"];

    if (v25)
    {
      v10 = 11;
      goto LABEL_43;
    }

    v26 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v27 = [v26 isEqualToString:@"IDAddress"];

    if (!v27 || ([v5 objectForKeyedSubscript:@"LocalIdentifier"], v28 = objc_claimAutoreleasedReturnValue(), v29 = NECreateAddressStructFromString(v28, 0, 0), v28, !v29))
    {
      v10 = 0;
      goto LABEL_43;
    }

    v30 = v29[1];
    if (v30 == 2)
    {
      v10 = 1;
      v32 = 4;
      v31 = 4;
    }

    else
    {
      if (v30 != 30)
      {
        v10 = 0;
        goto LABEL_42;
      }

      v10 = 5;
      v31 = 16;
      v32 = 8;
    }

    v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v29[v32] length:v31];

    v7 = v33;
LABEL_42:
    free(v29);
    goto LABEL_43;
  }

  v10 = 2;
LABEL_43:
  v34 = [NEIKEv2Identifier createIdentifierWithType:v10 data:v7];
  [(NEIKEv2SessionConfiguration *)v2 setLocalIdentifier:v34];

LABEL_44:
  if (!NEGetValueWithType(v5, @"RemoteIdentifier", CFSTRING_TYPE))
  {
    v18 = ne_log_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1576;
    v256 = 2112;
    v257 = @"RemoteIdentifier";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v19 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_52;
  }

  if (!NEGetValueWithType(v5, @"RemoteIdentifierType", CFSTRING_TYPE))
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1577;
      v256 = 2112;
      v257 = @"RemoteIdentifierType";
      v258 = 2048;
      v259 = CFSTRING_TYPE;
      v19 = "%s:%d: value for key %@ is missing or type != %lu";
      goto LABEL_52;
    }

LABEL_573:
    v12 = 0;
    goto LABEL_574;
  }

  v35 = [v5 objectForKeyedSubscript:@"RemoteIdentifier"];
  v18 = [v35 dataUsingEncoding:4];

  v36 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
  v37 = [v36 isEqualToString:@"IDFQDN"];

  if ((v37 & 1) == 0)
  {
    v39 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v40 = [v39 isEqualToString:@"IDUserFQDN"];

    if (v40)
    {
      v38 = 3;
      goto LABEL_69;
    }

    v41 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v42 = [v41 isEqualToString:@"ADASN1DN"];

    if (v42)
    {
      v38 = 9;
      goto LABEL_69;
    }

    v43 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v44 = [v43 isEqualToString:@"KeyID"];

    if (v44)
    {
      v38 = 11;
      goto LABEL_69;
    }

    v45 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v46 = [v45 isEqualToString:@"IDAddress"];

    if (!v46 || ([v5 objectForKeyedSubscript:@"RemoteIdentifier"], v47 = objc_claimAutoreleasedReturnValue(), v48 = NECreateAddressStructFromString(v47, 0, 0), v47, !v48))
    {
      v38 = 0;
      goto LABEL_69;
    }

    v49 = v48[1];
    if (v49 == 2)
    {
      v38 = 1;
      v51 = 4;
      v50 = 4;
    }

    else
    {
      if (v49 != 30)
      {
        v38 = 0;
        goto LABEL_68;
      }

      v38 = 5;
      v50 = 16;
      v51 = 8;
    }

    v52 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v48[v51] length:v50];

    v18 = v52;
LABEL_68:
    free(v48);
    goto LABEL_69;
  }

  v38 = 2;
LABEL_69:
  v53 = [NEIKEv2Identifier createIdentifierWithType:v38 data:v18];
  [(NEIKEv2SessionConfiguration *)v2 setRemoteIdentifier:v53];

  if (CFDictionaryContainsKey(v5, @"LocalPrivateEAPIdentity") && !NEGetValueWithType(v5, @"LocalPrivateEAPIdentity", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1608;
    v256 = 2112;
    v257 = @"LocalPrivateEAPIdentity";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
LABEL_571:
    _os_log_error_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_ERROR, v100, buf, 0x26u);
    goto LABEL_572;
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateEAPIdentity"))
  {
    v54 = [v5 objectForKeyedSubscript:@"LocalPrivateEAPIdentity"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalPrivateEAPIdentity:v54];
  }

  if (CFDictionaryContainsKey(v5, @"LocalEncryptedEAPIdentity") && !NEGetValueWithType(v5, @"LocalEncryptedEAPIdentity", CFDATA_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1613;
    v256 = 2112;
    v257 = @"LocalEncryptedEAPIdentity";
    v258 = 2048;
    v259 = CFDATA_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalEncryptedEAPIdentity"))
  {
    v55 = [v5 objectForKeyedSubscript:@"LocalEncryptedEAPIdentity"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalEncryptedEAPIdentity:v55];
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretKey") && !NEGetValueWithType(v5, @"SharedSecretKey", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1618;
    v256 = 2112;
    v257 = @"SharedSecretKey";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretKey"))
  {
    v56 = [v5 objectForKeyedSubscript:@"SharedSecretKey"];
    [(NEIKEv2SessionConfiguration *)v2 setSharedSecret:v56];
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretReference") && !NEGetValueWithType(v5, @"SharedSecretReference", CFDATA_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1623;
    v256 = 2112;
    v257 = @"SharedSecretReference";
    v258 = 2048;
    v259 = CFDATA_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretReference"))
  {
    v57 = [v5 objectForKeyedSubscript:@"SharedSecretReference"];
    [(NEIKEv2SessionConfiguration *)v2 setSharedSecretReference:v57];
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificate") && !NEGetValueWithType(v5, @"LocalCertificate", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1628;
    v256 = 2112;
    v257 = @"LocalCertificate";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificate"))
  {
    v58 = [v5 objectForKeyedSubscript:@"LocalCertificate"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalCertificateName:v58];
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificateReference") && !NEGetValueWithType(v5, @"LocalCertificateReference", CFDATA_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1633;
    v256 = 2112;
    v257 = @"LocalCertificateReference";
    v258 = 2048;
    v259 = CFDATA_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificateReference"))
  {
    v59 = [v5 objectForKeyedSubscript:@"LocalCertificateReference"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalCertificateReference:v59];
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveEnabled") && !NEGetValueWithType(v5, @"NATTKeepAliveEnabled", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1638;
    v256 = 2112;
    v257 = @"NATTKeepAliveEnabled";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveEnabled"))
  {
    v60 = [v5 objectForKeyedSubscript:@"NATTKeepAliveEnabled"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveDisabled:](v2, "setNatTraversalKeepaliveDisabled:", [v60 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveInterval") && !NEGetValueWithType(v5, @"NATTKeepAliveInterval", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1643;
    v256 = 2112;
    v257 = @"NATTKeepAliveInterval";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveInterval"))
  {
    v61 = [v5 objectForKeyedSubscript:@"NATTKeepAliveInterval"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveInterval:](v2, "setNatTraversalKeepaliveInterval:", [v61 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffload") && !NEGetValueWithType(v5, @"NATTKeepAliveOffload", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1648;
    v256 = 2112;
    v257 = @"NATTKeepAliveOffload";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffload"))
  {
    v62 = [v5 objectForKeyedSubscript:@"NATTKeepAliveOffload"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveOffloadEnabled:](v2, "setNatTraversalKeepaliveOffloadEnabled:", [v62 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffloadInterval") && !NEGetValueWithType(v5, @"NATTKeepAliveOffloadInterval", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1653;
    v256 = 2112;
    v257 = @"NATTKeepAliveOffloadInterval";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffloadInterval"))
  {
    v63 = [v5 objectForKeyedSubscript:@"NATTKeepAliveOffloadInterval"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveOffloadInterval:](v2, "setNatTraversalKeepaliveOffloadInterval:", [v63 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityHash") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityHash", CFDATA_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1658;
    v256 = 2112;
    v257 = @"RemoteCertificateAuthorityHash";
    v258 = 2048;
    v259 = CFDATA_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityHash"))
  {
    v64 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityHash"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityHash:v64];
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateKeyRef"))
  {
    TypeID = SecKeyGetTypeID();
    if (!NEGetValueWithType(v5, @"LocalPrivateKeyRef", TypeID))
    {
      v95 = ne_log_obj();
      if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_572;
      }

      v101 = SecKeyGetTypeID();
      *buf = 136315906;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1663;
      v256 = 2112;
      v257 = @"LocalPrivateKeyRef";
      v258 = 2048;
      v259 = v101;
      v100 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateKeyRef"))
  {
    v66 = [v5 objectForKeyedSubscript:@"LocalPrivateKeyRef"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalPrivateKeyRef:v66];
  }

  if (CFDictionaryContainsKey(v5, @"RemotePublicKeyRef"))
  {
    v67 = SecKeyGetTypeID();
    if (!NEGetValueWithType(v5, @"RemotePublicKeyRef", v67))
    {
      v95 = ne_log_obj();
      if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_572;
      }

      v102 = SecKeyGetTypeID();
      *buf = 136315906;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1668;
      v256 = 2112;
      v257 = @"RemotePublicKeyRef";
      v258 = 2048;
      v259 = v102;
      v100 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }
  }

  if (CFDictionaryContainsKey(v5, @"RemotePublicKeyRef"))
  {
    v68 = [v5 objectForKeyedSubscript:@"RemotePublicKeyRef"];
    [(NEIKEv2SessionConfiguration *)v2 setRemotePublicKeyRef:v68];
  }

  if (CFDictionaryContainsKey(v5, @"TLSMinimumVersion") && !NEGetValueWithType(v5, @"TLSMinimumVersion", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1673;
    v256 = 2112;
    v257 = @"TLSMinimumVersion";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"TLSMinimumVersion"))
  {
    v69 = [v5 objectForKeyedSubscript:@"TLSMinimumVersion"];
    [(NEIKEv2SessionConfiguration *)v2 setTlsMinimumVersion:v69];
  }

  if (CFDictionaryContainsKey(v5, @"TLSMaximumVersion") && !NEGetValueWithType(v5, @"TLSMaximumVersion", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1678;
    v256 = 2112;
    v257 = @"TLSMaximumVersion";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"TLSMaximumVersion"))
  {
    v70 = [v5 objectForKeyedSubscript:@"TLSMaximumVersion"];
    [(NEIKEv2SessionConfiguration *)v2 setTlsMaximumVersion:v70];
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionEnabled") && !NEGetValueWithType(v5, @"DeadPeerDetectionEnabled", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1683;
    v256 = 2112;
    v257 = @"DeadPeerDetectionEnabled";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (!CFDictionaryContainsKey(v5, @"DeadPeerDetectionEnabled"))
  {
    goto LABEL_146;
  }

  v71 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionEnabled"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionEnabled:](v2, "setDeadPeerDetectionEnabled:", [v71 BOOLValue]);

  if (!NEGetValueWithType(v5, @"DeadPeerDetectionInterval", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1687;
    v256 = 2112;
    v257 = @"DeadPeerDetectionInterval";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  v72 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionInterval"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionInterval:](v2, "setDeadPeerDetectionInterval:", [v72 unsignedLongValue]);

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryInterval") && !NEGetValueWithType(v5, @"DeadPeerDetectionRetryInterval", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1690;
    v256 = 2112;
    v257 = @"DeadPeerDetectionRetryInterval";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryInterval"))
  {
    v73 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionRetryInterval"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionRetryIntervalMilliseconds:](v2, "setDeadPeerDetectionRetryIntervalMilliseconds:", 1000 * [v73 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryIntervalMilliseconds") && !NEGetValueWithType(v5, @"DeadPeerDetectionRetryIntervalMilliseconds", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1695;
    v256 = 2112;
    v257 = @"DeadPeerDetectionRetryIntervalMilliseconds";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryIntervalMilliseconds"))
  {
    v74 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionRetryIntervalMilliseconds"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionRetryIntervalMilliseconds:](v2, "setDeadPeerDetectionRetryIntervalMilliseconds:", [v74 unsignedLongValue]);
  }

  if (!NEGetValueWithType(v5, @"DeadPeerDetectionMaxRetries", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1700;
    v256 = 2112;
    v257 = @"DeadPeerDetectionMaxRetries";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  v75 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionMaxRetries"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionMaxRetryCount:](v2, "setDeadPeerDetectionMaxRetryCount:", [v75 unsignedIntValue]);

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1703;
    v256 = 2112;
    v257 = @"DeadPeerDetectionMaxRetriesBeforeReporting";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting"))
  {
    v76 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionMaxRetriesBeforeReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionMaxRetryCountBeforeReporting:](v2, "setDeadPeerDetectionMaxRetryCountBeforeReporting:", [v76 unsignedIntValue]);
  }

LABEL_146:
  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1709;
    v256 = 2112;
    v257 = @"DeadPeerDetectionReceiveIntervalTriggerReporting";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting"))
  {
    v77 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionReceiveIntervalTriggerReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionReceiveIntervalTriggerReporting:](v2, "setDeadPeerDetectionReceiveIntervalTriggerReporting:", [v77 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1714;
    v256 = 2112;
    v257 = @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting"))
  {
    v78 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionReceiveMaxShortDPDBeforeReporting:](v2, "setDeadPeerDetectionReceiveMaxShortDPDBeforeReporting:", [v78 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(v5, @"IdleTimeoutEnabled") && !NEGetValueWithType(v5, @"IdleTimeoutEnabled", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1719;
    v256 = 2112;
    v257 = @"IdleTimeoutEnabled";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (!CFDictionaryContainsKey(v5, @"IdleTimeoutEnabled"))
  {
    goto LABEL_160;
  }

  v79 = [v5 objectForKeyedSubscript:@"IdleTimeoutEnabled"];
  -[NEIKEv2SessionConfiguration setIdleTimeoutEnabled:](v2, "setIdleTimeoutEnabled:", [v79 BOOLValue]);

  if (!NEGetValueWithType(v5, @"IdleTimeoutSeconds", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1722;
    v256 = 2112;
    v257 = @"IdleTimeoutSeconds";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IdleTimeoutSeconds"))
  {
    v80 = [v5 objectForKeyedSubscript:@"IdleTimeoutSeconds"];
    -[NEIKEv2SessionConfiguration setIdleTimeoutSeconds:](v2, "setIdleTimeoutSeconds:", [v80 unsignedLongValue]);
  }

LABEL_160:
  if (CFDictionaryContainsKey(v5, @"InitialContact") && !NEGetValueWithType(v5, @"InitialContact", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1728;
    v256 = 2112;
    v257 = @"InitialContact";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"InitialContact"))
  {
    v81 = [v5 objectForKeyedSubscript:@"InitialContact"];
    -[NEIKEv2SessionConfiguration setInitialContactDisabled:](v2, "setInitialContactDisabled:", [v81 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"MOBIKESupported") && !NEGetValueWithType(v5, @"MOBIKESupported", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1733;
    v256 = 2112;
    v257 = @"MOBIKESupported";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"MOBIKESupported"))
  {
    v82 = [v5 objectForKeyedSubscript:@"MOBIKESupported"];
    -[NEIKEv2SessionConfiguration setNegotiateMOBIKE:](v2, "setNegotiateMOBIKE:", [v82 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"CertificateRevocationCheckEnable") && !NEGetValueWithType(v5, @"CertificateRevocationCheckEnable", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1738;
    v256 = 2112;
    v257 = @"CertificateRevocationCheckEnable";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"CertificateRevocationCheckEnable"))
  {
    v83 = [v5 objectForKeyedSubscript:@"CertificateRevocationCheckEnable"];
    -[NEIKEv2SessionConfiguration setEnableCertificateRevocationCheck:](v2, "setEnableCertificateRevocationCheck:", [v83 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"CertificateStrictRevocationCheck") && !NEGetValueWithType(v5, @"CertificateStrictRevocationCheck", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1743;
    v256 = 2112;
    v257 = @"CertificateStrictRevocationCheck";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"CertificateStrictRevocationCheck"))
  {
    v84 = [v5 objectForKeyedSubscript:@"CertificateStrictRevocationCheck"];
    -[NEIKEv2SessionConfiguration setStrictCertificateRevocationCheck:](v2, "setStrictCertificateRevocationCheck:", [v84 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"ValidateRemoteCertificate") && !NEGetValueWithType(v5, @"ValidateRemoteCertificate", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1748;
    v256 = 2112;
    v257 = @"ValidateRemoteCertificate";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"ValidateRemoteCertificate"))
  {
    v85 = [v5 objectForKeyedSubscript:@"ValidateRemoteCertificate"];
    -[NEIKEv2SessionConfiguration setDisableRemoteCertificateValidation:](v2, "setDisableRemoteCertificateValidation:", [v85 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"BlackHoleDetectionEnabled") && !NEGetValueWithType(v5, @"BlackHoleDetectionEnabled", CFBOOLEAN_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1753;
    v256 = 2112;
    v257 = @"BlackHoleDetectionEnabled";
    v258 = 2048;
    v259 = CFBOOLEAN_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"BlackHoleDetectionEnabled"))
  {
    v86 = [v5 objectForKeyedSubscript:@"BlackHoleDetectionEnabled"];
    -[NEIKEv2SessionConfiguration setBlackholeDetectionEnabled:](v2, "setBlackholeDetectionEnabled:", [v86 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"Username") && !NEGetValueWithType(v5, @"Username", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1758;
    v256 = 2112;
    v257 = @"Username";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"Username"))
  {
    v87 = [v5 objectForKeyedSubscript:@"Username"];
    [(NEIKEv2SessionConfiguration *)v2 setUsername:v87];
  }

  if (CFDictionaryContainsKey(v5, @"Password") && !NEGetValueWithType(v5, @"Password", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1763;
    v256 = 2112;
    v257 = @"Password";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"Password"))
  {
    v88 = [v5 objectForKeyedSubscript:@"Password"];
    [(NEIKEv2SessionConfiguration *)v2 setPassword:v88];
  }

  if (CFDictionaryContainsKey(v5, @"PasswordReference") && !NEGetValueWithType(v5, @"PasswordReference", CFDATA_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1768;
    v256 = 2112;
    v257 = @"PasswordReference";
    v258 = 2048;
    v259 = CFDATA_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"PasswordReference"))
  {
    v89 = [v5 objectForKeyedSubscript:@"PasswordReference"];
    [(NEIKEv2SessionConfiguration *)v2 setPasswordReference:v89];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateHostname") && !NEGetValueWithType(v5, @"RemoteCertificateHostname", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1773;
    v256 = 2112;
    v257 = @"RemoteCertificateHostname";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateHostname"))
  {
    v90 = [v5 objectForKeyedSubscript:@"RemoteCertificateHostname"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateHostname:v90];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityName") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityName", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1778;
    v256 = 2112;
    v257 = @"RemoteCertificateAuthorityName";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityName"))
  {
    v91 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityName"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityName:v91];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityReferences") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityReferences", CFARRAY_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1783;
    v256 = 2112;
    v257 = @"RemoteCertificateAuthorityReferences";
    v258 = 2048;
    v259 = CFARRAY_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityReferences"))
  {
    v92 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityReferences"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityReferences:v92];
  }

  if (CFDictionaryContainsKey(v5, @"IMEI") && !NEGetValueWithType(v5, @"IMEI", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1788;
    v256 = 2112;
    v257 = @"IMEI";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IMEI"))
  {
    v93 = [v5 objectForKeyedSubscript:@"IMEI"];
    [(NEIKEv2SessionConfiguration *)v2 setIMEI:v93];
  }

  if (CFDictionaryContainsKey(v5, @"IMEISV") && !NEGetValueWithType(v5, @"IMEISV", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1793;
    v256 = 2112;
    v257 = @"IMEISV";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IMEISV"))
  {
    v94 = [v5 objectForKeyedSubscript:@"IMEISV"];
    [(NEIKEv2SessionConfiguration *)v2 setIMEISV:v94];
  }

  if (CFDictionaryContainsKey(v5, @"AuthenticationMethod") && !NEGetValueWithType(v5, @"AuthenticationMethod", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1798;
    v256 = 2112;
    v257 = @"AuthenticationMethod";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"AuthenticationMethod"))
  {
    v95 = [v5 objectForKeyedSubscript:@"AuthenticationMethod"];
    v96 = NEIPsecIKEGetAuthProcotol(v95);
    if (!v96)
    {
      v99 = ne_log_obj();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v253 = "NEIPSecIKEValidateSessionDictionary";
        v254 = 1024;
        v255 = 1803;
        v256 = 2112;
        v257 = v95;
        goto LABEL_662;
      }

LABEL_660:

      goto LABEL_572;
    }

    v97 = v96;
    [(NEIKEv2SessionConfiguration *)v2 setAuthenticationProtocol:v96];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteAuthenticationMethod") && !NEGetValueWithType(v5, @"RemoteAuthenticationMethod", CFSTRING_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1809;
    v256 = 2112;
    v257 = @"RemoteAuthenticationMethod";
    v258 = 2048;
    v259 = CFSTRING_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteAuthenticationMethod"))
  {
    v95 = [v5 objectForKeyedSubscript:@"RemoteAuthenticationMethod"];
    v98 = NEIPsecIKEGetAuthProcotol(v95);
    if (!v98)
    {
      v99 = ne_log_obj();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v253 = "NEIPSecIKEValidateSessionDictionary";
        v254 = 1024;
        v255 = 1814;
        v256 = 2112;
        v257 = v95;
LABEL_662:
        _os_log_error_impl(&dword_1BA83C000, v99, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized authentication method", buf, 0x1Cu);
        goto LABEL_660;
      }

      goto LABEL_660;
    }

    goto LABEL_309;
  }

  v103 = [(NEIKEv2SessionConfiguration *)v2 authenticationProtocol];

  if (v103)
  {
    v95 = [(NEIKEv2SessionConfiguration *)v2 authenticationProtocol];
    v98 = [v95 copy];
LABEL_309:
    v104 = v98;
    [(NEIKEv2SessionConfiguration *)v2 setRemoteAuthentication:v98];
  }

  if (CFDictionaryContainsKey(v5, @"PDUSessionID") && !NEGetValueWithType(v5, @"PDUSessionID", CFNUMBER_TYPE))
  {
    v95 = ne_log_obj();
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v253 = "NEIPSecIKEValidateSessionDictionary";
    v254 = 1024;
    v255 = 1822;
    v256 = 2112;
    v257 = @"PDUSessionID";
    v258 = 2048;
    v259 = CFNUMBER_TYPE;
    v100 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"PDUSessionID"))
  {
    v105 = [v5 objectForKeyedSubscript:@"PDUSessionID"];
    [(NEIKEv2SessionConfiguration *)v2 setPduSessionID:v105];
  }

  if (!CFDictionaryContainsKey(v5, @"ConfigurationRequest"))
  {
    goto LABEL_431;
  }

  v106 = [v5 objectForKeyedSubscript:@"ConfigurationRequest"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_431;
  }

  newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
  v108 = [v5 objectForKeyedSubscript:@"ConfigurationRequest"];
  objc_opt_class();
  obj = v108;
  if (objc_opt_isKindOfClass())
  {
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v109 = v108;
    v110 = [v109 countByEnumeratingWithState:&v242 objects:v251 count:16];
    if (!v110)
    {
      goto LABEL_427;
    }

    v111 = v110;
    v112 = *v243;
    while (1)
    {
      v113 = 0;
      do
      {
        if (*v243 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v114 = *(*(&v242 + 1) + 8 * v113);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v115 = [v114 isEqualToString:@"AssignedIPv4Address"];
          v116 = off_1E7F04A40;
          if (v115)
          {
            goto LABEL_336;
          }

          v117 = [v114 isEqualToString:@"AssignedIPv4DNS"];
          v116 = off_1E7F04A50;
          if (v117)
          {
            goto LABEL_336;
          }

          v118 = [v114 isEqualToString:@"AssignedIPv4DHCP"];
          v116 = off_1E7F04A48;
          if (v118)
          {
            goto LABEL_336;
          }

          v119 = [v114 isEqualToString:@"AssignedIPv4NetMask"];
          v116 = off_1E7F04A58;
          if (v119)
          {
            goto LABEL_336;
          }

          v120 = [v114 isEqualToString:@"AssignedIPv4Subnet"];
          v116 = off_1E7F04A68;
          if (v120)
          {
            goto LABEL_336;
          }

          v121 = [v114 isEqualToString:@"AssignedIPv6Address"];
          v116 = off_1E7F04A70;
          if (v121)
          {
            goto LABEL_336;
          }

          v122 = [v114 isEqualToString:@"AssignedIPv6DNS"];
          v116 = off_1E7F04A80;
          if (v122)
          {
            goto LABEL_336;
          }

          v123 = [v114 isEqualToString:@"AssignedIPv6DHCP"];
          v116 = off_1E7F04A78;
          if (v123)
          {
            goto LABEL_336;
          }

          v124 = [v114 isEqualToString:@"AssignedIPv6Subnet"];
          v116 = off_1E7F04A90;
          if (v124)
          {
            goto LABEL_336;
          }

          v125 = [v114 isEqualToString:@"AssignedAppVersion"];
          v116 = off_1E7F048F0;
          if (v125)
          {
            goto LABEL_336;
          }

          if ([v114 isEqualToString:@"AssignedIPv6PCSCF"] & 1) != 0 || (objc_msgSend(v114, "isEqualToString:", @"AssignedIPv6PCSCF_STD"))
          {
            v116 = off_1E7F04A88;
LABEL_336:
            v126 = [objc_alloc(*v116) initEmptyRequest];
            [newValue addObject:v126];

            goto LABEL_337;
          }

          v127 = [v114 isEqualToString:@"AssignedIPv4PCSCF_STD"];
          v116 = off_1E7F04A60;
          if (v127)
          {
            goto LABEL_336;
          }

          v128 = [v114 isEqualToString:@"AssignedDNSDomain"];
          v116 = off_1E7F04978;
          if (v128)
          {
            goto LABEL_336;
          }

          v129 = [v114 isEqualToString:@"AssignedAttributes"];
          v116 = off_1E7F04BF8;
          if (v129)
          {
            goto LABEL_336;
          }
        }

LABEL_337:
        ++v113;
      }

      while (v111 != v113);
      v130 = [v109 countByEnumeratingWithState:&v242 objects:v251 count:16];
      v111 = v130;
      if (!v130)
      {
        goto LABEL_427;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_428;
  }

  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v131 = v108;
  v132 = [v131 countByEnumeratingWithState:&v238 objects:v250 count:16];
  if (!v132)
  {
    goto LABEL_427;
  }

  v133 = v132;
  v220 = *v239;
  do
  {
    v134 = 0;
    do
    {
      if (*v239 != v220)
      {
        objc_enumerationMutation(v131);
      }

      v135 = *(*(&v238 + 1) + 8 * v134);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v136 = [v131 objectForKeyedSubscript:v135];
        if ([v135 isEqualToString:@"AssignedIPv4Address"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v136 length])
          {
            v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
            v138 = NEIKEv2IPv4AddressAttribute;
            goto LABEL_374;
          }

          v139 = NEIKEv2IPv4AddressAttribute;
LABEL_393:
          v141 = [[v139 alloc] initEmptyRequest];
LABEL_394:
          v137 = v141;
          [newValue addObject:v141];
LABEL_395:

LABEL_396:
          goto LABEL_397;
        }

        if ([v135 isEqualToString:@"AssignedIPv4DNS"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
          {
            v139 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_393;
          }

          v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
          v138 = NEIKEv2IPv4DNSAttribute;
        }

        else if ([v135 isEqualToString:@"AssignedIPv4DHCP"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
          {
            v139 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_393;
          }

          v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
          v138 = NEIKEv2IPv4DHCPAttribute;
        }

        else if ([v135 isEqualToString:@"AssignedIPv4NetMask"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
          {
            v139 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_393;
          }

          v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
          v138 = NEIKEv2IPv4NetmaskAttribute;
        }

        else
        {
          if ([v135 isEqualToString:@"AssignedIPv4Subnet"])
          {
            v139 = NEIKEv2IPv4SubnetAttribute;
            goto LABEL_393;
          }

          if ([v135 isEqualToString:@"AssignedIPv6Address"])
          {
            v139 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_393;
          }

          if ([v135 isEqualToString:@"AssignedIPv6DNS"])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
            {
              v139 = NEIKEv2IPv6DNSAttribute;
              goto LABEL_393;
            }

            v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
            v138 = NEIKEv2IPv6DNSAttribute;
          }

          else
          {
            if (![v135 isEqualToString:@"AssignedIPv6DHCP"])
            {
              if ([v135 isEqualToString:@"AssignedIPv6Subnet"])
              {
                v139 = NEIKEv2IPv6SubnetAttribute;
                goto LABEL_393;
              }

              if ([v135 isEqualToString:@"AssignedAppVersion"])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
                {
                  v139 = NEIKEv2AppVersionAttribute;
                  goto LABEL_393;
                }

                v142 = NEIKEv2AppVersionAttribute;
              }

              else
              {
                if (([v135 isEqualToString:@"AssignedIPv6PCSCF"] & 1) != 0 || objc_msgSend(v135, "isEqualToString:", @"AssignedIPv6PCSCF_STD"))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
                  {
                    v139 = NEIKEv2IPv6PCSCFAttribute;
                    goto LABEL_393;
                  }

                  v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
                  v138 = NEIKEv2IPv6PCSCFAttribute;
                  goto LABEL_374;
                }

                if ([v135 isEqualToString:@"AssignedIPv4PCSCF_STD"])
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
                  {
                    v139 = NEIKEv2IPv4PCSCFAttribute;
                    goto LABEL_393;
                  }

                  v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
                  v138 = NEIKEv2IPv4PCSCFAttribute;
                  goto LABEL_374;
                }

                if ([v135 isEqualToString:@"AssignedDNSDomain"])
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
                  {
                    v139 = NEIKEv2DNSDomainAttribute;
                    goto LABEL_393;
                  }

                  v142 = NEIKEv2DNSDomainAttribute;
                }

                else
                {
                  if (![v135 isEqualToString:@"AssignedAttributes"])
                  {
                    goto LABEL_396;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
                  {
                    v139 = NEIKEv2SupportedAttribute;
                    goto LABEL_393;
                  }

                  v142 = NEIKEv2SupportedAttribute;
                }
              }

              v141 = [[v142 alloc] initWithStringValue:v136];
              goto LABEL_394;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v136 length])
            {
              v139 = NEIKEv2IPv6DHCPAttribute;
              goto LABEL_393;
            }

            v137 = [MEMORY[0x1E6977E08] endpointWithHostname:v136 port:@"0"];
            v138 = NEIKEv2IPv6DHCPAttribute;
          }
        }

LABEL_374:
        v140 = [[v138 alloc] initWithAddress:v137];
        [newValue addObject:v140];

        goto LABEL_395;
      }

LABEL_397:
      ++v134;
    }

    while (v133 != v134);
    v143 = [v131 countByEnumeratingWithState:&v238 objects:v250 count:16];
    v133 = v143;
  }

  while (v143);
LABEL_427:

LABEL_428:
  v144 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v146 = v144;
  if (v144)
  {
    v144->_configurationType = 1;
    objc_setProperty_atomic(v144, v145, newValue, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationRequest:v146];

LABEL_431:
  if (CFDictionaryContainsKey(v5, @"ConfigurationAttributeRequest") && !NEGetValueWithType(v5, @"ConfigurationAttributeRequest", CFARRAY_TYPE))
  {
    v95 = ne_log_obj();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v253 = "NEIPSecIKEValidateSessionDictionary";
      v254 = 1024;
      v255 = 1963;
      v256 = 2112;
      v257 = @"ConfigurationAttributeRequest";
      v258 = 2048;
      v259 = CFARRAY_TYPE;
      v100 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }

LABEL_572:

    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v5, @"ConfigurationAttributeRequest"))
  {
    goto LABEL_538;
  }

  v217 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v5 objectForKeyedSubscript:@"ConfigurationAttributeRequest"];
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  obja = v237 = 0u;
  newValuea = [obja countByEnumeratingWithState:&v234 objects:v249 count:16];
  if (!newValuea)
  {
    goto LABEL_535;
  }

  v221 = *v235;
  while (2)
  {
    v147 = 0;
    while (2)
    {
      if (*v235 != v221)
      {
        objc_enumerationMutation(obja);
      }

      v148 = *(*(&v234 + 1) + 8 * v147);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_483;
      }

      v149 = [v148 objectForKeyedSubscript:@"Name"];
      v150 = [v148 objectForKeyedSubscript:@"Identifier"];
      v151 = [v148 objectForKeyedSubscript:@"Type"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if ([v149 isEqualToString:@"AssignedIPv4Address"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv4AddressAttribute;
LABEL_461:
            v157 = [[v155 alloc] initWithAddress:v154];
            goto LABEL_462;
          }

          v156 = NEIKEv2IPv4AddressAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv4DNS"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv4DNSAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv4DHCP"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv4DHCPAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv4NetMask"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv4NetmaskAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv4Subnet"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          v154 = [v148 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v158 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
              v214 = [NEIKEv2IPv4SubnetAttribute alloc];
              v159 = NEGetPrefixForIPv4NetmaskString(v154);
LABEL_490:
              v216 = [(NEIKEv2SubnetAttribute *)v214 initWithAddress:v158 prefix:v159];
              [v217 addObject:v216];

              goto LABEL_463;
            }
          }

          v162 = NEIKEv2IPv4SubnetAttribute;
LABEL_501:
          v157 = [[v162 alloc] initEmptyRequest];
          goto LABEL_462;
        }

        if ([v149 isEqualToString:@"AssignedIPv6Address"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          v154 = [v148 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v162 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_501;
          }

          v158 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
          v161 = NEIKEv2IPv6AddressAttribute;
LABEL_489:
          v214 = [v161 alloc];
          v159 = NEGetPrefixForIPv6NetmaskString(v154);
          goto LABEL_490;
        }

        if ([v149 isEqualToString:@"AssignedIPv6DNS"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv6DNSAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv6DNSAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv6DHCP"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv6DHCPAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv6DHCPAttribute;
          goto LABEL_478;
        }

        if ([v149 isEqualToString:@"AssignedIPv6Subnet"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          v154 = [v148 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v162 = NEIKEv2IPv6SubnetAttribute;
            goto LABEL_501;
          }

          v158 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
          v161 = NEIKEv2IPv6SubnetAttribute;
          goto LABEL_489;
        }

        if ([v149 isEqualToString:@"AssignedAppVersion"])
        {
          v152 = [v148 objectForKeyedSubscript:@"String"];
          objc_opt_class();
          v166 = objc_opt_isKindOfClass();
          v167 = NEIKEv2AppVersionAttribute;
          goto LABEL_518;
        }

        if (([v149 isEqualToString:@"AssignedIPv6PCSCF"] & 1) != 0 || objc_msgSend(v149, "isEqualToString:", @"AssignedIPv6PCSCF_STD"))
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv6PCSCFAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv6PCSCFAttribute;
        }

        else
        {
          if (![v149 isEqualToString:@"AssignedIPv4PCSCF_STD"])
          {
            if ([v149 isEqualToString:@"AssignedDNSDomain"])
            {
              v152 = [v148 objectForKeyedSubscript:@"String"];
              objc_opt_class();
              v166 = objc_opt_isKindOfClass();
              v167 = NEIKEv2DNSDomainAttribute;
            }

            else
            {
              if (![v149 isEqualToString:@"AssignedAttributes"])
              {
                goto LABEL_482;
              }

              v152 = [v148 objectForKeyedSubscript:@"String"];
              objc_opt_class();
              v166 = objc_opt_isKindOfClass();
              v167 = NEIKEv2SupportedAttribute;
            }

LABEL_518:
            v160 = [v167 alloc];
            if (v166)
            {
              v153 = [v160 initWithStringValue:v152];
              goto LABEL_480;
            }

LABEL_479:
            v153 = [v160 initEmptyRequest];
LABEL_480:
            v154 = v153;
            [v217 addObject:v153];
            goto LABEL_481;
          }

          v152 = [v148 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
            v155 = NEIKEv2IPv4PCSCFAttribute;
            goto LABEL_461;
          }

          v156 = NEIKEv2IPv4PCSCFAttribute;
        }

LABEL_478:
        v160 = [v156 alloc];
        goto LABEL_479;
      }

      if ([v151 isEqualToString:@"String"])
      {
        v152 = [v148 objectForKeyedSubscript:@"String"];
        v153 = -[NEIKEv2StringAttribute initCustomWithAttributeType:attributeName:stringValue:]([NEIKEv2StringAttribute alloc], "initCustomWithAttributeType:attributeName:stringValue:", [v150 integerValue], v149, v152);
        goto LABEL_480;
      }

      if ([v151 isEqualToString:@"IPv4Address"])
      {
        v152 = [v148 objectForKeyedSubscript:@"Address"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
        }

        else
        {
          v154 = 0;
        }

        v157 = -[NEIKEv2AddressAttribute initCustomWithAttributeType:attributeName:addressValue:]([NEIKEv2IPv4AddressAttribute alloc], "initCustomWithAttributeType:attributeName:addressValue:", [v150 integerValue], v149, v154);
        goto LABEL_462;
      }

      if (![v151 isEqualToString:@"IPv6Address"])
      {
        if ([v151 isEqualToString:@"IPv4Subnet"])
        {
          v152 = [v148 objectForKeyedSubscript:@"Address"];
          v154 = [v148 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v215 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
          }

          else
          {
            v215 = 0;
          }

          v213 = [NEIKEv2IPv4SubnetAttribute alloc];
          v163 = [v150 integerValue];
          v164 = NEGetPrefixForIPv4NetmaskString(v154);
        }

        else
        {
          if (![v151 isEqualToString:@"IPv6Subnet"])
          {
            goto LABEL_482;
          }

          v152 = [v148 objectForKeyedSubscript:@"Address"];
          v154 = [v148 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v215 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
          }

          else
          {
            v215 = 0;
          }

          v213 = [NEIKEv2IPv6SubnetAttribute alloc];
          v163 = [v150 integerValue];
          v164 = NEGetPrefixForIPv6NetmaskString(v154);
        }

        v165 = [(NEIKEv2SubnetAttribute *)v213 initCustomWithAttributeType:v163 attributeName:v149 addressValue:v215 prefix:v164];
        [v217 addObject:v165];

        goto LABEL_481;
      }

      v152 = [v148 objectForKeyedSubscript:@"Address"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v154 = [MEMORY[0x1E6977E08] endpointWithHostname:v152 port:@"0"];
      }

      else
      {
        v154 = 0;
      }

      v157 = -[NEIKEv2SubnetAttribute initCustomWithAttributeType:attributeName:addressValue:prefix:]([NEIKEv2IPv6AddressAttribute alloc], "initCustomWithAttributeType:attributeName:addressValue:prefix:", [v150 integerValue], v149, v154, 0);
LABEL_462:
      v158 = v157;
      [v217 addObject:v157];
LABEL_463:

LABEL_481:
LABEL_482:

LABEL_483:
      if (newValuea != ++v147)
      {
        continue;
      }

      break;
    }

    v168 = [obja countByEnumeratingWithState:&v234 objects:v249 count:16];
    newValuea = v168;
    if (v168)
    {
      continue;
    }

    break;
  }

LABEL_535:

  v169 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v171 = v169;
  if (v169)
  {
    v169->_configurationType = 1;
    objc_setProperty_atomic(v169, v170, v217, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationRequest:v171];

LABEL_538:
  if (!CFDictionaryContainsKey(v5, @"ConfigurationReply"))
  {
    goto LABEL_658;
  }

  v172 = [v5 objectForKeyedSubscript:@"ConfigurationReply"];
  objc_opt_class();
  v173 = objc_opt_isKindOfClass();

  if ((v173 & 1) == 0)
  {
    goto LABEL_658;
  }

  newValueb = objc_alloc_init(MEMORY[0x1E695DF70]);
  v174 = [v5 objectForKeyedSubscript:@"ConfigurationReply"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v175 = v174;
    v176 = [v175 countByEnumeratingWithState:&v230 objects:v248 count:16];
    if (!v176)
    {
      goto LABEL_654;
    }

    v177 = v176;
    v178 = *v231;
    while (1)
    {
      v179 = 0;
      do
      {
        if (*v231 != v178)
        {
          objc_enumerationMutation(v175);
        }

        v180 = *(*(&v230 + 1) + 8 * v179);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v181 = [v180 isEqualToString:@"AssignedIPv4Address"];
          v182 = off_1E7F04A40;
          if (v181)
          {
            goto LABEL_560;
          }

          v183 = [v180 isEqualToString:@"AssignedIPv4DNS"];
          v182 = off_1E7F04A50;
          if (v183)
          {
            goto LABEL_560;
          }

          v184 = [v180 isEqualToString:@"AssignedIPv4DHCP"];
          v182 = off_1E7F04A48;
          if (v184)
          {
            goto LABEL_560;
          }

          v185 = [v180 isEqualToString:@"AssignedIPv4NetMask"];
          v182 = off_1E7F04A58;
          if (v185)
          {
            goto LABEL_560;
          }

          v186 = [v180 isEqualToString:@"AssignedIPv4Subnet"];
          v182 = off_1E7F04A68;
          if (v186)
          {
            goto LABEL_560;
          }

          v187 = [v180 isEqualToString:@"AssignedIPv6Address"];
          v182 = off_1E7F04A70;
          if (v187)
          {
            goto LABEL_560;
          }

          v188 = [v180 isEqualToString:@"AssignedIPv6DNS"];
          v182 = off_1E7F04A80;
          if (v188)
          {
            goto LABEL_560;
          }

          v189 = [v180 isEqualToString:@"AssignedIPv6DHCP"];
          v182 = off_1E7F04A78;
          if (v189)
          {
            goto LABEL_560;
          }

          v190 = [v180 isEqualToString:@"AssignedIPv6Subnet"];
          v182 = off_1E7F04A90;
          if (v190)
          {
            goto LABEL_560;
          }

          v191 = [v180 isEqualToString:@"AssignedAppVersion"];
          v182 = off_1E7F048F0;
          if (v191)
          {
            goto LABEL_560;
          }

          if ([v180 isEqualToString:@"AssignedIPv6PCSCF"] & 1) != 0 || (objc_msgSend(v180, "isEqualToString:", @"AssignedIPv6PCSCF_STD"))
          {
            v182 = off_1E7F04A88;
LABEL_560:
            v192 = [objc_alloc(*v182) initEmptyRequest];
            [newValueb addObject:v192];

            goto LABEL_561;
          }

          v193 = [v180 isEqualToString:@"AssignedIPv4PCSCF_STD"];
          v182 = off_1E7F04A60;
          if (v193)
          {
            goto LABEL_560;
          }

          v194 = [v180 isEqualToString:@"AssignedDNSDomain"];
          v182 = off_1E7F04978;
          if (v194)
          {
            goto LABEL_560;
          }

          v195 = [v180 isEqualToString:@"AssignedAttributes"];
          v182 = off_1E7F04BF8;
          if (v195)
          {
            goto LABEL_560;
          }
        }

LABEL_561:
        ++v179;
      }

      while (v177 != v179);
      v196 = [v175 countByEnumeratingWithState:&v230 objects:v248 count:16];
      v177 = v196;
      if (!v196)
      {
        goto LABEL_654;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_655;
  }

  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v197 = v174;
  v198 = [v197 countByEnumeratingWithState:&v226 objects:v247 count:16];
  if (!v198)
  {
    goto LABEL_654;
  }

  v199 = v198;
  v222 = *v227;
  while (2)
  {
    v200 = 0;
    while (2)
    {
      if (*v227 != v222)
      {
        objc_enumerationMutation(v197);
      }

      v201 = *(*(&v226 + 1) + 8 * v200);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_636;
      }

      v202 = [v197 objectForKeyedSubscript:v201];
      if (![v201 isEqualToString:@"AssignedIPv4Address"])
      {
        if ([v201 isEqualToString:@"AssignedIPv4DNS"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
          {
            v205 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_632;
          }

          v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
          v204 = NEIKEv2IPv4DNSAttribute;
        }

        else if ([v201 isEqualToString:@"AssignedIPv4DHCP"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
          {
            v205 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_632;
          }

          v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
          v204 = NEIKEv2IPv4DHCPAttribute;
        }

        else if ([v201 isEqualToString:@"AssignedIPv4NetMask"])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
          {
            v205 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_632;
          }

          v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
          v204 = NEIKEv2IPv4NetmaskAttribute;
        }

        else
        {
          if ([v201 isEqualToString:@"AssignedIPv4Subnet"])
          {
            v205 = NEIKEv2IPv4SubnetAttribute;
            goto LABEL_632;
          }

          if ([v201 isEqualToString:@"AssignedIPv6Address"])
          {
            v205 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_632;
          }

          if ([v201 isEqualToString:@"AssignedIPv6DNS"])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
            {
              v205 = NEIKEv2IPv6DNSAttribute;
              goto LABEL_632;
            }

            v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
            v204 = NEIKEv2IPv6DNSAttribute;
          }

          else
          {
            if (![v201 isEqualToString:@"AssignedIPv6DHCP"])
            {
              if ([v201 isEqualToString:@"AssignedIPv6Subnet"])
              {
                v205 = NEIKEv2IPv6SubnetAttribute;
                goto LABEL_632;
              }

              if ([v201 isEqualToString:@"AssignedAppVersion"])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
                {
                  v205 = NEIKEv2AppVersionAttribute;
                  goto LABEL_632;
                }

                v207 = NEIKEv2AppVersionAttribute;
              }

              else
              {
                if (([v201 isEqualToString:@"AssignedIPv6PCSCF"] & 1) != 0 || objc_msgSend(v201, "isEqualToString:", @"AssignedIPv6PCSCF_STD"))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
                  {
                    v205 = NEIKEv2IPv6PCSCFAttribute;
                    goto LABEL_632;
                  }

                  v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
                  v204 = NEIKEv2IPv6PCSCFAttribute;
                  goto LABEL_601;
                }

                if ([v201 isEqualToString:@"AssignedIPv4PCSCF_STD"])
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
                  {
                    v205 = NEIKEv2IPv4PCSCFAttribute;
                    goto LABEL_632;
                  }

                  v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
                  v204 = NEIKEv2IPv4PCSCFAttribute;
                  goto LABEL_601;
                }

                if ([v201 isEqualToString:@"AssignedDNSDomain"])
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
                  {
                    v205 = NEIKEv2DNSDomainAttribute;
                    goto LABEL_632;
                  }

                  v207 = NEIKEv2DNSDomainAttribute;
                }

                else
                {
                  if (![v201 isEqualToString:@"AssignedAttributes"])
                  {
                    goto LABEL_635;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
                  {
                    v205 = NEIKEv2SupportedAttribute;
                    goto LABEL_632;
                  }

                  v207 = NEIKEv2SupportedAttribute;
                }
              }

              v208 = [[v207 alloc] initWithStringValue:v202];
              goto LABEL_633;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v202 length])
            {
              v205 = NEIKEv2IPv6DHCPAttribute;
              goto LABEL_632;
            }

            v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
            v204 = NEIKEv2IPv6DHCPAttribute;
          }
        }

LABEL_601:
        v206 = [[v204 alloc] initWithAddress:v203];
        [newValueb addObject:v206];

        goto LABEL_634;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v202 length])
      {
        v203 = [MEMORY[0x1E6977E08] endpointWithHostname:v202 port:@"0"];
        v204 = NEIKEv2IPv4AddressAttribute;
        goto LABEL_601;
      }

      v205 = NEIKEv2IPv4AddressAttribute;
LABEL_632:
      v208 = [[v205 alloc] initEmptyRequest];
LABEL_633:
      v203 = v208;
      [newValueb addObject:v208];
LABEL_634:

LABEL_635:
LABEL_636:
      if (v199 != ++v200)
      {
        continue;
      }

      break;
    }

    v209 = [v197 countByEnumeratingWithState:&v226 objects:v247 count:16];
    v199 = v209;
    if (v209)
    {
      continue;
    }

    break;
  }

LABEL_654:

LABEL_655:
  v210 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v212 = v210;
  if (v210)
  {
    v210->_configurationType = 2;
    objc_setProperty_atomic(v210, v211, newValueb, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationReply:v212];

LABEL_658:
  v12 = v2;
LABEL_574:

LABEL_575:
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

id NEIPSecIKECopyDefaultSessionQueue()
{
  if (NEIPSecIKECopyDefaultSessionQueue_onceToken != -1)
  {
    dispatch_once(&NEIPSecIKECopyDefaultSessionQueue_onceToken, &__block_literal_global_746);
  }

  v1 = NEIPSecIKECopyDefaultSessionQueue_queue;

  return v1;
}

uint64_t __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke_339(void *a1)
{
  v2 = [NEIKEv2Session alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = NEIPSecIKECopyDefaultSessionQueue();
  v7 = [(NEIKEv2Session *)v2 initWithIKEConfig:v3 firstChildConfig:v4 sessionConfig:v5 queue:v6 ipsecInterface:a1[10] ikeSocketHandler:a1[8] saSession:a1[7] packetDelegate:0];
  v8 = *(a1[9] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(a1[9] + 8) + 40) setClientCallback:a1[11]];
  v10 = a1[12];
  v11 = *(*(a1[9] + 8) + 40);

  return [v11 setClientCallbackInfo:v10];
}

void __NEIPSecIKECopyDefaultSessionQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("IKEv2 Session Queue", v2);
  v1 = NEIPSecIKECopyDefaultSessionQueue_queue;
  NEIPSecIKECopyDefaultSessionQueue_queue = v0;
}

uint64_t NEIPsecIKECopyKEMProtocolsFromObject(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v1 unsignedIntValue]);
    v19[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_17;
    }

    v4 = v1;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = v4;
    v6 = [(NEIKEv2KEMProtocol *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v10 unsignedIntValue]);
            [v5 addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NEIKEv2KEMProtocol *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    else
    {

      v3 = 0;
    }
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

NEIKEv2PRFProtocol *NEIPsecIKEGetPRFProtocol(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MD5-128"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SHA1-160"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SHA2-256"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"SHA2-384"])
  {
    v2 = 6;
  }

  else
  {
    if (![v1 isEqualToString:@"SHA2-512"])
    {
      v3 = 0;
      goto LABEL_12;
    }

    v2 = 7;
  }

  v3 = [[NEIKEv2PRFProtocol alloc] initWithType:v2];
LABEL_12:

  return v3;
}

NEIKEv2IntegrityProtocol *NEIPsecIKEGetIntegrityProtocol(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MD5-96"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"MD5-128"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SHA1-96"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SHA1-160"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"SHA2-256"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"SHA2-384"])
  {
    v2 = 13;
  }

  else
  {
    if (![v1 isEqualToString:@"SHA2-512"])
    {
      v3 = 0;
      goto LABEL_16;
    }

    v2 = 14;
  }

  v3 = [[NEIKEv2IntegrityProtocol alloc] initWithType:v2];
LABEL_16:

  return v3;
}

NEIKEv2EncryptionProtocol *NEIPsecIKEGetEncryptionProtocol(void *a1, int a2)
{
  v3 = a1;
  if (![v3 isEqualToString:@"DES"])
  {
    if ([v3 isEqualToString:@"3DES"])
    {
      v4 = [NEIKEv2EncryptionProtocol alloc];
      v5 = 3;
      goto LABEL_5;
    }

    if ([v3 isEqualToString:@"AES-128"])
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 2;
    }

    else if ([v3 isEqualToString:@"AES-256"])
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 3;
    }

    else if ([v3 isEqualToString:@"AES-128-GCM"])
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 4;
    }

    else if ([v3 isEqualToString:@"AES-256-GCM"])
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 5;
    }

    else
    {
      if (![v3 isEqualToString:@"ChaCha20-Poly1305"])
      {
        if (a2)
        {
          if ([v3 isEqualToString:@"ChaCha20-Poly1305-IIV"])
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 7;
            goto LABEL_16;
          }

          if ([v3 isEqualToString:@"AES-128-GCM-IIV"])
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 8;
            goto LABEL_16;
          }

          if ([v3 isEqualToString:@"AES-256-GCM-IIV"])
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 9;
            goto LABEL_16;
          }
        }

        v9 = 0;
        goto LABEL_18;
      }

      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 6;
    }

LABEL_16:
    v6 = [(NEIKEv2EncryptionProtocol *)v7 initWithEncryptionType:v8];
    goto LABEL_17;
  }

  v4 = [NEIKEv2EncryptionProtocol alloc];
  v5 = 2;
LABEL_5:
  v6 = [(NEIKEv2EncryptionProtocol *)v4 initWithEncryptionWireType:v5 keyLength:0];
LABEL_17:
  v9 = v6;
LABEL_18:

  return v9;
}

void __xpc_client_queue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SecureNetworking.IPSec.xpc", v2);
  v1 = xpc_client_queue_q;
  xpc_client_queue_q = v0;
}

uint64_t NEIPSecIKESetDispatchQueue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 setClientQueue:v3];
  objc_initWeak(&location, v4);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __NEIPSecIKESetDispatchQueue_block_invoke;
  v18[3] = &unk_1E7F09330;
  objc_copyWeak(&v19, &location);
  [v4 setStateUpdateBlock:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __NEIPSecIKESetDispatchQueue_block_invoke_196;
  v16[3] = &unk_1E7F09358;
  objc_copyWeak(&v17, &location);
  [v4 setChildStateUpdateBlock:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __NEIPSecIKESetDispatchQueue_block_invoke_198;
  v14[3] = &unk_1E7F09380;
  objc_copyWeak(&v15, &location);
  [v4 setConfigurationUpdateBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __NEIPSecIKESetDispatchQueue_block_invoke_223;
  v12[3] = &unk_1E7F093A8;
  objc_copyWeak(&v13, &location);
  [v4 setTrafficSelectorUpdateBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __NEIPSecIKESetDispatchQueue_block_invoke_255;
  v10[3] = &unk_1E7F0AA58;
  objc_copyWeak(&v11, &location);
  [v4 setShortDPDEventBlock:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __NEIPSecIKESetDispatchQueue_block_invoke_257;
  v8[3] = &unk_1E7F093D0;
  objc_copyWeak(&v9, &location);
  [v4 setRedirectEventBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NEIPSecIKESetDispatchQueue_block_invoke_276;
  v6[3] = &unk_1E7F0ABE0;
  objc_copyWeak(&v7, &location);
  [v4 setPrivateNotifyStatusEvent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return 1;
}