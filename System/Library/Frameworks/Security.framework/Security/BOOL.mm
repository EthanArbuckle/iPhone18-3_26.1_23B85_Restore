@interface BOOL
@end

@implementation BOOL

BOOL __info_array_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = CreateXPCObjectWithArrayOfPeerInfo(*(a1 + 32), a3);
  if (v6)
  {
    xpc_dictionary_set_value(v5, "peer-infos", v6);
  }

  return v6 != 0;
}

BOOL __keybag_and_BOOL_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (v5)
  {
    xpc_dictionary_set_value(v3, "keybag", v5);
  }

  xpc_dictionary_set_BOOL(v3, "includeV0", *(a1 + 40));

  return v5 != 0;
}

BOOL __recovery_and_BOOL_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    bytes = 0;
    v5 = CFDataCreate(*MEMORY[0x1E695E480], &bytes, 1);
    v4 = _CFXPCCreateXPCObjectFromCFObject();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if (v4)
  {
    xpc_dictionary_set_value(v3, "RecoveryPublicKey", v4);
  }

  return v4 != 0;
}

uint64_t __label_and_password_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __label_and_password_to_BOOL_error_request_block_invoke_2;
  v9[3] = &unk_1E70DDBF8;
  v10 = v3;
  v5 = v3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __CFStringPerformWithCString_block_invoke;
  v11[3] = &unk_1E70E4418;
  v11[4] = v9;
  CFStringPerformWithCStringAndLength(v4, v11);
  BytePtr = CFDataGetBytePtr(*(a1 + 40));
  Length = CFDataGetLength(*(a1 + 40));
  xpc_dictionary_set_data(v5, "password", BytePtr, Length);

  return 1;
}

uint64_t __label_and_password_and_dsid_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __label_and_password_and_dsid_to_BOOL_error_request_block_invoke_2;
  v13[3] = &unk_1E70DDBF8;
  v5 = v3;
  v14 = v5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 0x40000000;
  v17 = __CFStringPerformWithCString_block_invoke;
  v18 = &unk_1E70E4418;
  v19 = v13;
  CFStringPerformWithCStringAndLength(v4, &v15);
  v6 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __label_and_password_and_dsid_to_BOOL_error_request_block_invoke_3;
  v11[3] = &unk_1E70DDBF8;
  v12 = v5;
  v7 = v5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 0x40000000;
  v17 = __CFStringPerformWithCString_block_invoke;
  v18 = &unk_1E70E4418;
  v19 = v11;
  CFStringPerformWithCStringAndLength(v6, &v15);
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  xpc_dictionary_set_data(v7, "password", BytePtr, Length);

  return 1;
}

BOOL __cfdata_and_int_error_request_returns_BOOL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (v5)
  {
    xpc_dictionary_set_value(v3, "data", v5);
    xpc_dictionary_set_uint64(v3, "version", *(a1 + 40));
  }

  return v5 != 0;
}

BOOL __peer_info_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v5 = a2;
  v12 = SOSPeerInfoCopyEncodedData(*(a1 + 32), v6, a3, v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = SecXPCDictionarySetData(v5, "peer-info", v12, a3);
    CFRelease(v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __data_data_array_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  SecXPCDictionarySetData(v6, "normIssuer", v5, a3);
  SecXPCDictionarySetData(v6, "serialNum", *(a1 + 40), a3);
  SecXPCDictionarySetPListWithRepair(v6, "accessGroups", *(a1 + 48), a3, v7, v8, v9, v10);

  return 1;
}

BOOL __client_data_data_BOOL_to_data_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = SecXPCDictionarySetData(a2, "keybag", v6, a3)))
  {
    v8 = *(a1 + 40);
    if (!v8 || (result = SecXPCDictionarySetData(a2, "password", v8, a3)))
    {
      xpc_dictionary_set_BOOL(a2, "emcsbackup", *(a1 + 48));
      return 1;
    }
  }

  return result;
}

BOOL __client_data_data_BOOL_to_data_error_request_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyData(a2, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

BOOL __string_data_data_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "backup", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);
    if (!v7 || (result = SecXPCDictionarySetData(a2, "keybag", v7, a3), result))
    {
      v8 = *(a1 + 48);
      if (v8)
      {

        return SecXPCDictionarySetData(a2, "data", v8, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL __string_string_data_data_data_to_BOOL_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  if (!SecXPCDictionarySetString(a2, "backup", *(a1 + 32), a3))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (!SecXPCDictionarySetString(a2, "digest", v6, a3))
    {
      return 0;
    }
  }

  if (!SecXPCDictionarySetData(a2, "keybag", *(a1 + 48), a3) || !SecXPCDictionarySetData(a2, "password", *(a1 + 56), a3))
  {
    return 0;
  }

  v7 = *(a1 + 64);

  return SecXPCDictionarySetData(a2, "data", v7, a3);
}

BOOL __data_data_to_data_data_BOOL_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = SecXPCDictionarySetData(a2, "otrsess", v6, a3), result))
  {
    v8 = *(a1 + 40);
    if (v8)
    {

      return SecXPCDictionarySetData(a2, "data", v8, a3);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL __data_data_to_data_data_BOOL_error_request_block_invoke_2(void *a1, xpc_object_t xdict, __CFString **a3)
{
  v6 = xpc_dictionary_get_BOOL(xdict, "status");
  if (v6)
  {
    *(*(a1[4] + 8) + 24) = SecXPCDictionaryCopyData(xdict, "otrsess", a3);
    *(*(a1[5] + 8) + 24) = SecXPCDictionaryCopyData(xdict, "data", a3);
    *(*(a1[6] + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "otrrdy");
  }

  return v6;
}

uint64_t __to_BOOL_error_request_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

BOOL __string_cert_to_BOOL_BOOL_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);

    return SecXPCDictionarySetCertificate(a2, v7, a3);
  }

  return result;
}

uint64_t __string_cert_to_BOOL_BOOL_error_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 32))
  {
    **(a1 + 32) = xpc_dictionary_get_BOOL(xdict, "status");
  }

  return 1;
}

BOOL __string_cert_to_BOOL_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);

    return SecXPCDictionarySetCertificate(a2, v7, a3);
  }

  return result;
}

@end