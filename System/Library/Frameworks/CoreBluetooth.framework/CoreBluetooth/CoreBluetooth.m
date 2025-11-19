id CBXpcCreateNSDictionaryWithXpcDictionary(void *a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  count = xpc_dictionary_get_count(v1);
  v3 = 8 * count;
  MEMORY[0x1EEE9AC00]();
  v4 = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * count);
  MEMORY[0x1EEE9AC00]();
  bzero(v4, 8 * count);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __CBXpcCreateNSDictionaryWithXpcDictionary_block_invoke;
  applier[3] = &unk_1E81207E0;
  applier[4] = v11;
  applier[5] = v4;
  applier[6] = v4;
  xpc_dictionary_apply(v1, applier);
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v4 forKeys:v4 count:count];
  _Block_object_dispose(v11, 8);
  if (count)
  {
    v6 = 8 * count;
    do
    {

      v6 -= 8;
    }

    while (v6);
    v7 = v4 - 8;
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __CBXpcCreateNSDictionaryWithXpcDictionary_block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithUTF8String:a2];
  v8 = a1[5];
  v9 = *(*(a1[4] + 8) + 24);
  v10 = *(v8 + 8 * v9);
  *(v8 + 8 * v9) = v7;

  v11 = CBXpcCreateNSObjectWithXpcObject(v6);

  v12 = a1[6];
  v13 = *(*(a1[4] + 8) + 24);
  v14 = *(v12 + 8 * v13);
  *(v12 + 8 * v13) = v11;

  ++*(*(a1[4] + 8) + 24);
  return 1;
}

__CFString *CBXpcCreateNSObjectWithXpcObject(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1C68DFDD0]();
  if (v2 == MEMORY[0x1E69E9EB0])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v1)];
    goto LABEL_35;
  }

  if (v2 == MEMORY[0x1E69E9F18])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    goto LABEL_35;
  }

  if (v2 == MEMORY[0x1E69E9E58])
  {
    value = xpc_BOOL_get_value(v1);
    v6 = MEMORY[0x1E695E110];
    if (value)
    {
      v6 = MEMORY[0x1E695E118];
    }

    v4 = v6;
    goto LABEL_35;
  }

  if (v2 != MEMORY[0x1E69E9F10])
  {
    if (v2 == MEMORY[0x1E69E9E70])
    {
      v10 = objc_alloc(MEMORY[0x1E695DEF0]);
      bytes_ptr = xpc_data_get_bytes_ptr(v1);
      v4 = [v10 initWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9F20])
    {
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
    }

    else if (v2 == MEMORY[0x1E69E9E50])
    {
      v4 = CBXpcCreateNSArrayWithXpcArray(v1);
    }

    else if (v2 == MEMORY[0x1E69E9E80])
    {
      v4 = CBXpcCreateNSDictionaryWithXpcDictionary(v1);
    }

    else if (v2 == MEMORY[0x1E69E9EA0])
    {
      v12 = xpc_fd_dup(v1);
      if ((v12 & 0x80000000) != 0)
      {
        if (CBLogInitOnce != -1)
        {
          [CBClassicPeer dealloc];
        }

        v13 = CBLogComponent;
        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
          CBXpcCreateNSObjectWithXpcObject_cold_4(v13);
        }
      }

      v4 = [MEMORY[0x1E696AD98] numberWithInt:v12];
    }

    else
    {
      if (v2 != MEMORY[0x1E69E9E88])
      {
        if (CBLogInitOnce != -1)
        {
          [CBClassicPeer dealloc];
        }

        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
          CBXpcCreateNSObjectWithXpcObject_cold_2();
        }

        v3 = 0;
        goto LABEL_36;
      }

      v4 = [MEMORY[0x1E696AD98] numberWithDouble:xpc_double_get_value(v1)];
    }

LABEL_35:
    v3 = v4;
    goto LABEL_36;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v1)];
  v8 = v7;
  v9 = &stru_1F40009C8;
  if (v7)
  {
    v9 = v7;
  }

  v3 = v9;

LABEL_36:

  return v3;
}

void *CBDiscoveryTypesNeedsIdentify()
{
  if (qword_1ED7C1F58 != -1)
  {
    CBDiscoveryTypesNeedsIdentify_cold_1();
  }

  return &unk_1ED7C1F04;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return CUXPCDecodeSInt64RangedEx();
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return LogPrintF_safe();
}

unsigned int *OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  result = *(a1 + 152);
  v2 = *result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_1_8(uint64_t a1)
{
  result = *(a1 + 56);
  v2 = *result;
  return result;
}

void OUTLINED_FUNCTION_1_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

BOOL CBDiscoveryTypesContainTypes(_BYTE *a1, _BYTE *a2)
{
  if ((*a2 & *a1) != 0)
  {
    return 1;
  }

  if ((a2[1] & a1[1]) != 0)
  {
    return 1;
  }

  if ((a2[2] & a1[2]) != 0)
  {
    return 1;
  }

  if ((a2[3] & a1[3]) != 0)
  {
    return 1;
  }

  if ((a2[4] & a1[4]) != 0)
  {
    return 1;
  }

  return (a2[5] & a1[5]) != 0;
}

uint64_t CBDiscoveryTypesAppendString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 1;
  v5 = &off_1E811F518;
  do
  {
    v8 = *(v5 - 4);
    if (v8 - 45) >= 0xFFFFFFD4 && ((*(a3 + ((v8 - 1) >> 3)) >> (-v8 & 7)))
    {
      result = NSAppendPrintF_safe();
      v4 = 0;
    }

    v7 = *v5;
    v5 += 3;
  }

  while (v7);
  if ((v4 & 1) == 0)
  {

    return NSAppendPrintF_safe();
  }

  return result;
}

uint64_t CBXPCDecodeDiscoveryTypes(void *a1, const char *a2, void *a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    if (length == 6)
    {
      v5 = 6;
    }

    else
    {
      if (length >= 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = length;
      }

      length = v5;
    }

    memcpy(a3, data, v5);
  }

  return 1;
}

_BYTE *CBDiscoveryTypesAddTypes(_BYTE *result, _BYTE *a2)
{
  *result |= *a2;
  result[1] |= a2[1];
  result[2] |= a2[2];
  result[3] |= a2[3];
  result[4] |= a2[4];
  result[5] |= a2[5];
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return CUXPCDecodeUInt64RangedEx();
}

void OUTLINED_FUNCTION_3_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return _LogCategory_Initialize();
}

unsigned int *OUTLINED_FUNCTION_3_7(uint64_t a1)
{
  result = *(a1 + 56);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return CUXPCDecodeSInt64RangedEx();
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return CUXPCDecodeSInt64RangedEx();
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return CUXPCDecodeUInt64RangedEx();
}

unsigned int *OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{

  return [v0 init];
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return CUXPCDecodeNSDataOfLength();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return CUXPCDecodeSInt64RangedEx();
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

_BYTE *OUTLINED_FUNCTION_2_8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return CUXPCDecodeUInt64RangedEx();
}

int *OUTLINED_FUNCTION_16_0(int *result)
{
  v1 = *result;
  v2 = *(result + 2);
  return result;
}

void *CBDiscoveryTypesBuffer()
{
  if (qword_1ED7C1F30 != -1)
  {
    CBDiscoveryTypesBuffer_cold_1();
  }

  return &unk_1ED7C1EE6;
}

id CBDeviceTypeToNSLocalizedString(int a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
  v3 = v2;
  if ((a1 - 1) > 0x32)
  {
    v4 = @"bt_type_generic";
  }

  else
  {
    v4 = *(&off_1E811FA78 + (a1 - 1));
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F40009C8 table:@"CBLocalizable"];

  return v5;
}

_BYTE *CBDiscoveryTypesRemoveTypes(_BYTE *result, _BYTE *a2)
{
  *result &= ~*a2;
  result[1] &= ~a2[1];
  result[2] &= ~a2[2];
  result[3] &= ~a2[3];
  result[4] &= ~a2[4];
  result[5] &= ~a2[5];
  return result;
}

uint64_t CBXPCGetNextClientID()
{
  if (qword_1ED7C1F80 != -1)
  {
    CBXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&_MergedGlobals_0, 1u) + 1;
}

uint64_t __CBXpcCreateXPCArrayWithNSArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CBXpcCreateXPCObjectWithNSObject(a2);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

id CBXpcCreateNSArrayWithXpcArray(void *a1)
{
  applier[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  count = xpc_array_get_count(v1);
  v3 = 8 * count;
  MEMORY[0x1EEE9AC00]();
  bzero(applier - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __CBXpcCreateNSArrayWithXpcArray_block_invoke;
  applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
  applier[4] = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  xpc_array_apply(v1, applier);
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  if (count)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __CBXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  _MergedGlobals_0 = word_1ED7C1EDA << 16;
  return result;
}

unsigned int *OUTLINED_FUNCTION_6_1()
{
  result = *(v0 + 56);
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return _LogCategory_Initialize();
}

void OUTLINED_FUNCTION_0_3(dispatch_once_t *a1)
{

  dispatch_once_f(a1, 0, CBLogInit);
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return CUXPCDecodeUInt64RangedEx();
}

unsigned int *OUTLINED_FUNCTION_0_8(uint64_t a1)
{
  result = *(a1 + 64);
  v2 = *result;
  return result;
}

id CBXpcCreateXPCDictionaryWithNSDictionary(void *a1)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  v3 = 8 * v2;
  MEMORY[0x1EEE9AC00]();
  v4 = v9 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v2);
  MEMORY[0x1EEE9AC00]();
  v5 = v4;
  bzero(v4, 8 * v2);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CBXpcCreateXPCDictionaryWithNSDictionary_block_invoke;
  v9[3] = &unk_1E8120798;
  v9[4] = v10;
  v9[5] = v4;
  v9[6] = v4;
  [v1 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = xpc_dictionary_create(v4, v4, v2);
  _Block_object_dispose(v10, 8);
  if (v2)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __CBXpcCreateXPCDictionaryWithNSDictionary_block_invoke(void *a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  *(a1[5] + 8 * *(*(a1[4] + 8) + 24)) = [a2 UTF8String];
  v8 = CBXpcCreateXPCObjectWithNSObject(v7);

  v9 = a1[6];
  v10 = *(*(a1[4] + 8) + 24);
  v11 = *(v9 + 8 * v10);
  *(v9 + 8 * v10) = v8;

  ++*(*(a1[4] + 8) + 24);
}

id CBXpcCreateXPCObjectWithNSObject(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 isNSNumber])
  {
    if (CFNumberIsFloatType(v1))
    {
      [v1 doubleValue];
      v3 = xpc_double_create(v2);
      if (v3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v3 = xpc_int64_create([v1 longLongValue]);
      if (v3)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  if ([v1 isNSString])
  {
    v3 = xpc_string_create([v1 UTF8String]);
    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([v1 isNSData])
  {
    v3 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *uuid = 0;
    v8 = 0;
    [v1 getUUIDBytes:uuid];
    v3 = xpc_uuid_create(uuid);
    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([v1 isNSArray])
  {
    v3 = CBXpcCreateXPCArrayWithNSArray(v1);
    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([v1 isNSDictionary])
  {
    v3 = CBXpcCreateXPCDictionaryWithNSDictionary(v1);
    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v1 data];
    v3 = CBXpcCreateXPCObjectWithNSObject(v4);

    if (v3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v3 = xpc_null_create()) == 0)
  {
LABEL_27:
    [MEMORY[0x1E695DF30] raise:@"Invalid Object" format:{@"Object %@ is invalid", v1}];
    v3 = 0;
  }

LABEL_28:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

id CBXpcCreateXPCArrayWithNSArray(void *a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 count];
  v3 = v2;
  MEMORY[0x1EEE9AC00]();
  v5 = (v10 - v4);
  bzero(v10 - v4, 8 * v2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CBXpcCreateXPCArrayWithNSArray_block_invoke;
  v10[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
  v10[4] = v5;
  [v1 enumerateObjectsUsingBlock:v10];
  v6 = xpc_array_create(v5, v2);
  if (v2)
  {
    v7 = v5 - 1;
    do
    {
    }

    while (v3 * 8);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t CBLogInit()
{
  CBLogComponent = os_log_create("com.apple.bluetooth", "CoreBluetooth");

  return MEMORY[0x1EEE66BB8]();
}

unsigned __int8 *CBGenerateObfuscatedSHA256HashedString(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  *md = 0u;
  v53 = 0u;
  *v49 = 0u;
  v50 = 0u;
  v2 = strlen(v1);
  v3 = CC_SHA256(v1, v2, md);
  if (v3)
  {
    data[0] = bijectByteToBytePreSHA256[md[0]];
    data[1] = bijectByteToBytePreSHA256[md[1]];
    v4 = bijectByteToBytePreSHA256[md[3]];
    data[2] = bijectByteToBytePreSHA256[md[2]];
    data[3] = v4;
    data[4] = bijectByteToBytePreSHA256[md[4]];
    v5 = bijectByteToBytePreSHA256[md[6]];
    data[5] = bijectByteToBytePreSHA256[md[5]];
    data[6] = v5;
    data[7] = bijectByteToBytePreSHA256[md[7]];
    v6 = bijectByteToBytePreSHA256[md[9]];
    data[8] = bijectByteToBytePreSHA256[md[8]];
    data[9] = v6;
    data[10] = bijectByteToBytePreSHA256[md[10]];
    v7 = bijectByteToBytePreSHA256[md[12]];
    data[11] = bijectByteToBytePreSHA256[md[11]];
    data[12] = v7;
    data[13] = bijectByteToBytePreSHA256[md[13]];
    v8 = bijectByteToBytePreSHA256[md[15]];
    data[14] = bijectByteToBytePreSHA256[md[14]];
    data[15] = v8;
    data[16] = bijectByteToBytePreSHA256[v53];
    v9 = bijectByteToBytePreSHA256[BYTE2(v53)];
    data[17] = bijectByteToBytePreSHA256[BYTE1(v53)];
    data[18] = v9;
    data[19] = bijectByteToBytePreSHA256[BYTE3(v53)];
    v10 = bijectByteToBytePreSHA256[BYTE5(v53)];
    data[20] = bijectByteToBytePreSHA256[BYTE4(v53)];
    data[21] = v10;
    data[22] = bijectByteToBytePreSHA256[BYTE6(v53)];
    v11 = bijectByteToBytePreSHA256[BYTE8(v53)];
    data[23] = bijectByteToBytePreSHA256[BYTE7(v53)];
    data[24] = v11;
    data[25] = bijectByteToBytePreSHA256[BYTE9(v53)];
    v12 = bijectByteToBytePreSHA256[BYTE11(v53)];
    data[26] = bijectByteToBytePreSHA256[BYTE10(v53)];
    data[27] = v12;
    data[28] = bijectByteToBytePreSHA256[BYTE12(v53)];
    v13 = bijectByteToBytePreSHA256[BYTE14(v53)];
    data[29] = bijectByteToBytePreSHA256[BYTE13(v53)];
    data[30] = v13;
    data[31] = bijectByteToBytePreSHA256[HIBYTE(v53)];
    v3 = CC_SHA256(data, 0x20u, v49);
    if (v3)
    {
      v14 = BYTE1(v50);
      v15 = v49[0];
      v16 = v49[11];
      v17 = v49[2];
      v18 = BYTE5(v50);
      v19 = BYTE4(v50);
      v20 = v49[15];
      v21 = BYTE6(v50);
      v22 = BYTE9(v50);
      v26 = v49[8];
      v27 = BYTE3(v50);
      v28 = v49[10];
      v29 = BYTE13(v50);
      v30 = BYTE12(v50);
      v31 = BYTE7(v50);
      v32 = BYTE14(v50);
      v33 = v49[1];
      v34 = v50;
      v35 = BYTE11(v50);
      v36 = BYTE2(v50);
      v37 = v49[5];
      v38 = v49[4];
      v39 = HIBYTE(v50);
      v40 = v49[6];
      v41 = v49[9];
      v42 = BYTE8(v50);
      v43 = v49[3];
      v44 = BYTE10(v50);
      v45 = v49[13];
      v47 = v49[12];
      v46 = v49[7];
      v48 = v49[14];
      v23 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
      [v23 appendFormat:@"%02x", v14];
      [v23 appendFormat:@"%02x", v15];
      [v23 appendFormat:@"%02x", v16];
      [v23 appendFormat:@"%02x", v17];
      [v23 appendFormat:@"%02x", v18];
      [v23 appendFormat:@"%02x", v19];
      [v23 appendFormat:@"%02x", v20];
      [v23 appendFormat:@"%02x", v21];
      [v23 appendFormat:@"%02x", v22];
      [v23 appendFormat:@"%02x", v26];
      [v23 appendFormat:@"%02x", v27];
      [v23 appendFormat:@"%02x", v28];
      [v23 appendFormat:@"%02x", v29];
      [v23 appendFormat:@"%02x", v30];
      [v23 appendFormat:@"%02x", v31];
      [v23 appendFormat:@"%02x", v32];
      [v23 appendFormat:@"%02x", v33];
      [v23 appendFormat:@"%02x", v34];
      [v23 appendFormat:@"%02x", v35];
      [v23 appendFormat:@"%02x", v36];
      [v23 appendFormat:@"%02x", v37];
      [v23 appendFormat:@"%02x", v38];
      [v23 appendFormat:@"%02x", v39];
      [v23 appendFormat:@"%02x", v40];
      [v23 appendFormat:@"%02x", v41];
      [v23 appendFormat:@"%02x", v42];
      [v23 appendFormat:@"%02x", v43];
      [v23 appendFormat:@"%02x", v44];
      [v23 appendFormat:@"%02x", v45];
      [v23 appendFormat:@"%02x", v47];
      [v23 appendFormat:@"%02x", v46];
      [v23 appendFormat:@"%02x", v48];
      v3 = v23;
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return LogPrintF_safe();
}

void OUTLINED_FUNCTION_4_6(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void *CBDiscoveryTypesBLEScan()
{
  if (qword_1ED7C1F28 != -1)
  {
    CBDiscoveryTypesBLEScan_cold_1();
  }

  return &unk_1ED7C1EE0;
}

void *CBDiscoveryTypesNeedsAdvertisingAddress()
{
  if (qword_1ED7C1F50 != -1)
  {
    CBDiscoveryTypesNeedsAdvertisingAddress_cold_1();
  }

  return &unk_1ED7C1EFE;
}

void *CBDiscoveryTypesNeedsObjectLocator()
{
  if (qword_1ED7C1F68 != -1)
  {
    CBDiscoveryTypesNeedsObjectLocator_cold_1();
  }

  return &unk_1ED7C1F10;
}

void *CBDiscoveryTypesProximityService()
{
  if (qword_1ED7C1F70 != -1)
  {
    CBDiscoveryTypesProximityService_cold_1();
  }

  return &unk_1ED7C1F16;
}

void *CBDiscoveryTypesNearbyActionV1()
{
  if (qword_1ED7C1F38 != -1)
  {
    CBDiscoveryTypesNearbyActionV1_cold_1();
  }

  return &unk_1ED7C1EEC;
}

void *CBDiscoveryTypesNearbyActionV2()
{
  if (qword_1ED7C1F40 != -1)
  {
    CBDiscoveryTypesNearbyActionV2_cold_1();
  }

  return &unk_1ED7C1EF2;
}

void *CBDiscoveryTypesNearbyInfoV2()
{
  if (qword_1ED7C1F60 != -1)
  {
    CBDiscoveryTypesNearbyInfoV2_cold_1();
  }

  return &unk_1ED7C1F0A;
}

void *CBDiscoveryTypesSoftwareUpdate()
{
  if (qword_1ED7C1F78 != -1)
  {
    CBDiscoveryTypesSoftwareUpdate_cold_1();
  }

  return &unk_1ED7C1F1C;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C0AC79D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C0AC7F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AC7F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AC7F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AC7F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AC7F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return CUXPCDecodeUInt64RangedEx();
}

_BYTE *CBDiscoveryTypesAddChangedTypes(_BYTE *result, _BYTE *a2, _BYTE *a3)
{
  *result |= *a3 ^ *a2;
  result[1] |= a3[1] ^ a2[1];
  result[2] |= a3[2] ^ a2[2];
  result[3] |= a3[3] ^ a2[3];
  result[4] |= a3[4] ^ a2[4];
  result[5] |= a3[5] ^ a2[5];
  return result;
}

id CBErrorF(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = @"cuErrorMsg";
  v18[0] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [v12 initWithDomain:@"CBErrorDomain" code:a1 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t OUTLINED_FUNCTION_15()
{

  return CUXPCDecodeSInt64RangedEx();
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return [v0 isEqual:v1];
}

uint64_t OUTLINED_FUNCTION_8_2@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>, uint64_t a3, uint64_t a4)
{
  a4 = *(*(x8_0 + 8) + 40);

  return [a1 initWithXPCObject:v5 error:&a4];
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return CUXPCDecodeUInt64RangedEx();
}

uint64_t CBProductIDFromNSString(void *a1)
{
  result = [a1 UTF8String];
  if (result)
  {
    v2 = result;
    if (!strcmp(result, "AirPods1,1"))
    {
      return 8194;
    }

    else if (!strcmp(v2, "AirPods1,3"))
    {
      return 8207;
    }

    else if (!strcmp(v2, "AirPodsPro1,1"))
    {
      return 8206;
    }

    else if (!strcmp(v2, "AppleTV5,3"))
    {
      return 28420;
    }

    else if (!strcmp(v2, "AppleTV6,2"))
    {
      return 28936;
    }

    else if (!strcmp(v2, "AppleTV11,1"))
    {
      return 29455;
    }

    else if (!strcmp(v2, "ATVRemote1,1"))
    {
      return 614;
    }

    else if (!strcmp(v2, "ATVRemote1,2"))
    {
      return 621;
    }

    else if (!strcmp(v2, "AudioAccessory1,1"))
    {
      return 28943;
    }

    else if (!strcmp(v2, "AudioAccessory1,2"))
    {
      return 28944;
    }

    else if (!strcmp(v2, "AudioAccessory5,1"))
    {
      return 29715;
    }

    else if (!strcmp(v2, "BeatsSolo3,1"))
    {
      return 8198;
    }

    else if (!strcmp(v2, "BeatsSoloPro1,1"))
    {
      return 8204;
    }

    else if (!strcmp(v2, "BeatsStudio3,2"))
    {
      return 8201;
    }

    else if (!strcmp(v2, "BeatsStudioPro1,1"))
    {
      return 8215;
    }

    else if (!strcmp(v2, "Device1,8230"))
    {
      return 8230;
    }

    else if (!strcmp(v2, "Device1,8229"))
    {
      return 8229;
    }

    else if (!strcmp(v2, "Device1,8218"))
    {
      return 8218;
    }

    else if (!strcmp(v2, "BeatsX1,1"))
    {
      return 8197;
    }

    else if (!strcmp(v2, "PowerBeats3,1"))
    {
      return 8195;
    }

    else if (!strcmp(v2, "Powerbeats4,1"))
    {
      return 8205;
    }

    else if (!strcmp(v2, "PowerbeatsPro1,1"))
    {
      return 8203;
    }

    else if (!strcmp(v2, "BeatsStudioBuds1,1"))
    {
      return 8209;
    }

    else if (!strcmp(v2, "BeatsStudioBuds1,2"))
    {
      return 8214;
    }

    else if (!strcmp(v2, "AirPods3,4"))
    {
      return 8231;
    }

    else if (!strcmp(v2, "ApGn"))
    {
      return 65534;
    }

    else if (!strcmp(v2, "HeGn"))
    {
      return 65533;
    }

    else
    {
      v10 = 0;
      if (sscanf(v2, "Device1,%u", &v10) != 1 || (v8 = v10) == 0 || (v3 = CBProductIDToString(v10), *v3 == 63) && !v3[1])
      {
        v9 = 0;
        v4 = sscanf(v2, "BTHeadphones%u,%u", &v9, &v10) == 2 || sscanf(v2, "BTHeadset%u,%u", &v9, &v10) == 2 || sscanf(v2, "BTSpeaker%u,%u", &v9, &v10) == 2;
        v8 = 0;
        if (v4 && v9 == 76)
        {
          v5 = v10;
          if (v10)
          {
            v6 = CBProductIDToString(v10);
            v8 = v5;
            if (*v6 == 63)
            {
              if (v6[1])
              {
                return v5;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }

      return v8;
    }
  }

  return result;
}

uint64_t CBPowerSourceAccessoryCategoryFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_38;
  }

  v3 = v1;
  if (v3 != @"Audio Battery Case")
  {
    v4 = v3;
    v5 = [(__CFString *)v3 isEqual:@"Audio Battery Case"];

    if ((v5 & 1) == 0)
    {
      v7 = v4;
      if (v7 == @"Battery Case" || (v8 = v7, v9 = [(__CFString *)v7 isEqual:@"Battery Case"], v8, (v9 & 1) != 0))
      {
        v6 = 2;
        goto LABEL_39;
      }

      v10 = v8;
      if (v10 == @"Headphone" || (v11 = v10, v12 = [(__CFString *)v10 isEqual:@"Headphone"], v11, (v12 & 1) != 0))
      {
        v6 = 4;
        goto LABEL_39;
      }

      v13 = v11;
      if (v13 == @"Headset" || (v14 = v13, v15 = [(__CFString *)v13 isEqual:@"Headset"], v14, (v15 & 1) != 0))
      {
        v6 = 5;
        goto LABEL_39;
      }

      v16 = v14;
      if (v16 == @"Game Controller" || (v17 = v16, v18 = [(__CFString *)v16 isEqual:@"Game Controller"], v17, (v18 & 1) != 0))
      {
        v6 = 3;
        goto LABEL_39;
      }

      v19 = v17;
      if (v19 == @"HearingAid" || (v20 = v19, v21 = [(__CFString *)v19 isEqual:@"HearingAid"], v20, (v21 & 1) != 0))
      {
        v6 = 6;
        goto LABEL_39;
      }

      v22 = v20;
      if (v22 == @"Keyboard" || (v23 = v22, v24 = [(__CFString *)v22 isEqual:@"Keyboard"], v23, (v24 & 1) != 0))
      {
        v6 = 7;
        goto LABEL_39;
      }

      v25 = v23;
      if (v25 == @"Mouse" || (v26 = v25, v27 = [(__CFString *)v25 isEqual:@"Mouse"], v26, (v27 & 1) != 0))
      {
        v6 = 8;
        goto LABEL_39;
      }

      v28 = v26;
      if (v28 == @"Pencil" || (v29 = v28, v30 = [(__CFString *)v28 isEqual:@"Pencil"], v29, (v30 & 1) != 0))
      {
        v6 = 9;
        goto LABEL_39;
      }

      v31 = v29;
      if (v31 == @"Speaker" || (v32 = v31, v33 = [(__CFString *)v31 isEqual:@"Speaker"], v32, (v33 & 1) != 0))
      {
        v6 = 10;
        goto LABEL_39;
      }

      v34 = v32;
      if (v34 == @"Trackpad" || (v35 = v34, v36 = [(__CFString *)v34 isEqual:@"Trackpad"], v35, (v36 & 1) != 0))
      {
        v6 = 11;
        goto LABEL_39;
      }

      v37 = v35;
      if (v37 == @"Watch" || (v38 = v37, v39 = [(__CFString *)v37 isEqual:@"Watch"], v38, v39))
      {
        v6 = 12;
        goto LABEL_39;
      }

LABEL_38:
      v6 = 0;
      goto LABEL_39;
    }
  }

  v6 = 1;
LABEL_39:

  return v6;
}

const char *CBProductIDToString(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      return "AirPods1,1";
    case 8195:
      return "PowerBeats3,1";
    case 8196:
    case 8199:
    case 8200:
    case 8225:
    case 8226:
    case 8227:
    case 8234:
    case 8235:
    case 8236:
    case 8237:
    case 8238:
      return "?";
    case 8197:
      return "BeatsX1,1";
    case 8198:
      return "BeatsSolo3,1";
    case 8201:
      return "BeatsStudio3,2";
    case 8202:
      return "Device1,8202";
    case 8203:
      return "PowerbeatsPro1,1";
    case 8204:
      return "BeatsSoloPro1,1";
    case 8205:
      return "Powerbeats4,1";
    case 8206:
      return "AirPodsPro1,1";
    case 8207:
      return "AirPods1,3";
    case 8208:
      return "Device1,8208";
    case 8209:
      return "BeatsStudioBuds1,1";
    case 8210:
      return "Device1,8210";
    case 8211:
      return "Device1,8211";
    case 8212:
      return "Device1,8212";
    case 8213:
      return "Device1,8213";
    case 8214:
      return "BeatsStudioBuds1,2";
    case 8215:
      return "BeatsStudioPro1,1";
    case 8216:
      return "Device1,8216";
    case 8217:
      return "Device1,8217";
    case 8218:
      return "Device1,8218";
    case 8219:
      return "Device1,8219";
    case 8220:
      return "Device1,8220";
    case 8221:
      return "Powerb3,1";
    case 8222:
      return "Device1,8222";
    case 8223:
      return "Device1,8223";
    case 8224:
      return "Device1,8224";
    case 8228:
      return "Device1,8228";
    case 8229:
      return "Device1,8229";
    case 8230:
      return "Device1,8230";
    case 8231:
      return "AirPods3,4";
    case 8232:
      return "Device1,8232";
    case 8233:
      return "Device1,8233";
    case 8239:
      return "Device1,8239";
    default:
      if (a1 == 614)
      {
        result = "ATVRemote1,1";
      }

      else
      {
        if (a1 != 621)
        {
          return "?";
        }

        result = "ATVRemote1,2";
      }

      break;
  }

  return result;
}

const char *CBProductIDToString_0(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  if (a1 <= 8193)
  {
    switch(a1)
    {
      case 0:
        return "Invalid";
      case 614:
        return "ATVRemote1,1";
      case 621:
        return "ATVRemote1,2";
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      result = "AirPods1,1";
      break;
    case 8195:
      result = "PowerBeats3,1";
      break;
    case 8197:
      result = "BeatsX1,1";
      break;
    case 8198:
      result = "BeatsSolo3,1";
      break;
    case 8201:
      result = "BeatsStudio3,2";
      break;
    case 8202:
      result = "Device1,8202";
      break;
    case 8203:
      result = "PowerbeatsPro1,1";
      break;
    case 8204:
      result = "BeatsSoloPro1,1";
      break;
    case 8205:
      result = "Powerbeats4,1";
      break;
    case 8206:
      result = "AirPodsPro1,1";
      break;
    case 8207:
      result = "AirPods1,3";
      break;
    case 8208:
      result = "Device1,8208";
      break;
    case 8209:
      result = "BeatsStudioBuds1,1";
      break;
    case 8210:
      result = "Device1,8210";
      break;
    case 8211:
      result = "Device1,8211";
      break;
    case 8212:
      result = "Device1,8212";
      break;
    case 8213:
      result = "Device1,8213";
      break;
    case 8214:
      result = "BeatsStudioBuds1,2";
      break;
    case 8215:
      result = "BeatsStudioPro1,1";
      break;
    case 8216:
      result = "Device1,8216";
      break;
    case 8217:
      result = "Device1,8217";
      break;
    case 8218:
      result = "Device1,8218";
      break;
    case 8219:
      result = "Device1,8219";
      break;
    case 8220:
      result = "Device1,8220";
      break;
    case 8221:
      result = "Powerb3,1";
      break;
    case 8222:
      result = "Device1,8222";
      break;
    case 8223:
      result = "Device1,8223";
      break;
    case 8224:
      result = "Device1,8224";
      break;
    case 8228:
      result = "Device1,8228";
      break;
    case 8229:
      result = "Device1,8229";
      break;
    case 8230:
      result = "Device1,8230";
      break;
    case 8231:
      result = "AirPods3,4";
      break;
    case 8232:
      result = "Device1,8232";
      break;
    case 8233:
      result = "Device1,8233";
      break;
    case 8239:
      result = "Device1,8239";
      break;
    default:
      return "?";
  }

  return result;
}

const char *CBDeviceTypeToString(unsigned int a1)
{
  if (a1 > 0x33)
  {
    return "?";
  }

  else
  {
    return off_1E811F8D8[a1];
  }
}

id CBProductIDToNSLocalizedProductNameString(uint64_t a1)
{
  if (a1 > 555)
  {
    if (a1 <= 8212)
    {
      switch(a1)
      {
        case 556:
        case 557:
        case 558:
        case 569:
        case 570:
        case 571:
        case 597:
        case 598:
        case 599:
          goto LABEL_4;
        case 613:
        case 782:
        case 804:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_trackpad";
          goto LABEL_27;
        case 615:
        case 668:
        case 800:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_keyboard";
          goto LABEL_27;
        case 617:
        case 781:
        case 803:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_mouse";
          goto LABEL_27;
        case 620:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_keyboard_keypad";
          goto LABEL_27;
        case 666:
        case 801:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_keyboard_touch";
          goto LABEL_27;
        case 671:
        case 802:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_magic_keyboard_touch_keypad";
          goto LABEL_27;
        case 777:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_wireless_mouse";
          goto LABEL_27;
        case 780:
          v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v2 = v1;
          v3 = @"apple_mighty_mouse";
          goto LABEL_27;
        default:
          goto LABEL_34;
      }
    }

    if (a1 > 8219)
    {
      if (a1 != 8220)
      {
        v4 = 8233;
LABEL_20:
        if (a1 == v4)
        {
          goto LABEL_21;
        }

LABEL_34:
        v2 = [CBProductInfo productInfoWithProductID:a1];
        v5 = [v2 productName];
LABEL_28:
        v6 = v5;

        v7 = v6;

        return v7;
      }
    }

    else if (a1 != 8213)
    {
      v4 = 8216;
      goto LABEL_20;
    }

LABEL_21:
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = v1;
    v3 = @"apple_airpods_case";
    goto LABEL_27;
  }

  if (a1 > 520)
  {
    if (a1 != 521 && a1 != 522)
    {
      goto LABEL_34;
    }

    goto LABEL_4;
  }

  if (a1)
  {
    if (a1 != 520)
    {
      goto LABEL_34;
    }

LABEL_4:
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v2 = v1;
    v3 = @"apple_wireless_keyboard";
LABEL_27:
    v5 = [v1 localizedStringForKey:v3 value:&stru_1F40009C8 table:@"CBLocalizable"];
    goto LABEL_28;
  }

  v7 = 0;

  return v7;
}

char *CBDiscoveryTypesRemoveTypesAndReportChanges(char *result, char *a2, _BYTE *a3)
{
  v3 = *a2;
  v4 = *result;
  *result &= ~*a2;
  *a3 |= v4 & v3;
  v5 = a2[1];
  v6 = result[1];
  result[1] = v6 & ~v5;
  a3[1] |= v6 & v5;
  v7 = a2[2];
  v8 = result[2];
  result[2] = v8 & ~v7;
  a3[2] |= v8 & v7;
  v9 = a2[3];
  v10 = result[3];
  result[3] = v10 & ~v9;
  a3[3] |= v10 & v9;
  v11 = a2[4];
  v12 = result[4];
  result[4] = v12 & ~v11;
  a3[4] |= v12 & v11;
  v13 = a2[5];
  v14 = result[5];
  result[5] = v14 & ~v13;
  a3[5] |= v14 & v13;
  return result;
}

void sub_1C0AE1670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

void sub_1C0AE1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

void sub_1C0AE4D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE4D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE5D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE60E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE6D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE711C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE7138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE74C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE74D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE77FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE7814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE7C14(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE8040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE8058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE8450(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE8858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C0AE8C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

const char *CBUseCaseToString(int a1)
{
  if (a1 < 0x20000)
  {
    result = "Unspecified";
    switch("Unspecified")
    {
      case 0u:
        return result;
      case 1u:
        result = "HealthKit";
        break;
      case 2u:
        result = "HomeKit";
        break;
      case 3u:
        result = "FindMyObjectConnection";
        break;
      case 4u:
        result = "FindMyObjectConnectionTransient";
        break;
      case 5u:
        result = "MIDI";
        break;
      case 6u:
        result = "Continuity";
        break;
      case 7u:
        result = "InstantHotSpot";
        break;
      case 8u:
        result = "NearBy";
        break;
      case 9u:
        result = "Sharing";
        break;
      case 0xAu:
        result = "HearingSupport";
        break;
      case 0xBu:
        result = "Magnet";
        break;
      case 0xCu:
        result = "HID";
        break;
      case 0xDu:
        result = "LEA";
        break;
      case 0xEu:
        result = "External";
        break;
      case 0xFu:
        result = "ExternalMedical";
        break;
      case 0x10u:
        result = "ExternalLock";
        break;
      case 0x11u:
        result = "ExternalWatch";
        break;
      case 0x12u:
        result = "SmartRouting";
        break;
      case 0x13u:
        result = "DigitalID";
        break;
      case 0x14u:
        result = "DigitalKey";
        break;
      case 0x15u:
        result = "DigitalCarKey";
        break;
      case 0x16u:
        result = "HeySiri";
        break;
      case 0x17u:
        result = "ThirdPartyApp";
        break;
      case 0x18u:
        result = "CNJ";
        break;
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
      case 0xCBu:
      case 0xCCu:
      case 0xCDu:
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xDEu:
      case 0xDFu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE6u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFEu:
      case 0xFFu:
      case 0x105u:
      case 0x106u:
        return "?";
      case 0x100u:
        result = "DevicePresenceDetection";
        break;
      case 0x101u:
        result = "AudioBox";
        break;
      case 0x102u:
        result = "SIMTransfer";
        break;
      case 0x103u:
        result = "ProximityScreenOnLeechScan";
        break;
      case 0x104u:
        result = "MacMigrate";
        break;
      case 0x107u:
        result = "HIDUARTService";
        break;
      case 0x108u:
        result = "AccessibilitySwitchControlPairing";
        break;
      case 0x109u:
        result = "BaseBandFastConnect";
        break;
      case 0x10Au:
        result = "SafetyAlerts";
        break;
      case 0x10Bu:
        result = "LECarPlay";
        break;
      case 0x10Cu:
        result = "TCCBluetooth";
        break;
      case 0x10Du:
        result = "AOPBufferLeech";
        break;
      case 0x10Eu:
        result = "HighPriorityScanWiFi";
        break;
      default:
        switch("Unspecified")
        {
          case 0x10000u:
            result = "FindMyAction";
            break;
          case 0x10001u:
            result = "FindMyBackground";
            break;
          case 0x10002u:
            result = "FindMyActionHELE";
            break;
          case 0x10003u:
            result = "FindMyBackgroundHELE";
            break;
          case 0x10004u:
            result = "FindMyActionTransient";
            break;
          case 0x10005u:
            result = "FindMyBackgroundTransient";
            break;
          case 0x10006u:
            result = "FindMyActionHELETransient";
            break;
          case 0x10007u:
            result = "FindMyBackgroundHELETransient";
            break;
          case 0x10008u:
            result = "FindMyNotOptedIn";
            break;
          case 0x10009u:
            result = "FindMyOptedIn";
            break;
          case 0x1000Au:
            result = "FindMySepAlertsEnabled";
            break;
          case 0x1000Bu:
            result = "FindMyTemporaryAggressiveLegacy";
            break;
          case 0x1000Cu:
            result = "FindMyTemporaryLongAggressive";
            break;
          case 0x1000Du:
            result = "FindMyBTFindingUserInitiated";
            break;
          case 0x1000Eu:
            result = "FindMyHELE";
            break;
          case 0x1000Fu:
            result = "FindMyBeaconOnDemand";
            break;
          case 0x10010u:
            result = "FindMyWildTimedScan";
            break;
          case 0x10011u:
            result = "FindMyBackgroundLeechScan";
            break;
          case 0x10012u:
            result = "FindMySnifferMode";
            break;
          case 0x10013u:
            result = "FindMyUnpair";
            break;
          case 0x10014u:
            result = "FindMyUnpairHELE";
            break;
          case 0x10015u:
            result = "FindMyPlaySound";
            break;
          case 0x10016u:
            result = "FindMyPlaySoundHELE";
            break;
          case 0x10017u:
            result = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 0x10018u:
            result = "FindMyUTTransient";
            break;
          case 0x10019u:
            result = "FindMyUTHELETransient";
            break;
          case 0x1001Au:
            result = "FindMyActionExtendedRange";
            break;
          case 0x1001Bu:
            result = "FindMyActionExtendedRangeLE2M";
            break;
          case 0x1001Cu:
            result = "FindMyActionExtendedRangeTransient";
            break;
          case 0x1001Du:
            result = "FindMyPlaySoundExtendedRange";
            break;
          case 0x1001Eu:
            result = "FindMyPair";
            break;
          case 0x1001Fu:
            result = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            return "?";
        }

        break;
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

const char *CBNearbyActionTypeToString(unsigned int a1)
{
  if (a1 > 0x5F)
  {
    return "?";
  }

  else
  {
    return off_1E811DAD8[a1];
  }
}

void sub_1C0AF24E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CBDeviceTypeToAccessoryCategory(int a1)
{
  if (a1 <= 24)
  {
    if (a1 > 19)
    {
      if (a1 == 20)
      {
        return 4;
      }

      if (a1 == 24)
      {
        return 7;
      }
    }

    else
    {
      if (a1 == 16)
      {
        return 5;
      }

      if (a1 == 19)
      {
        return 10;
      }
    }
  }

  else if (a1 <= 41)
  {
    if (a1 == 25)
    {
      return 8;
    }

    if (a1 == 26)
    {
      return 3;
    }
  }

  else
  {
    switch(a1)
    {
      case '*':
        return 12;
      case '1':
        return 11;
      case '3':
        return 6;
    }
  }

  return 0;
}

uint64_t CBDeviceTypeFromAccessoryCategory(int a1)
{
  if ((a1 - 3) > 9)
  {
    return 0;
  }

  else
  {
    return byte_1C0B82D3A[(a1 - 3)];
  }
}

__CFString *CBPowerSourceAccessoryCategoryToString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E811DF98 + (a1 - 1));
  }
}

uint64_t CBPowerSourcePartIDFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"Combined")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
    goto LABEL_20;
  }

  v3 = [(__CFString *)v1 isEqual:@"Combined"];

  if (v3)
  {
LABEL_4:

    return 1;
  }

  v5 = v2;
  if (v5 == @"Left" || (v6 = v5, v7 = [(__CFString *)v5 isEqual:@"Left"], v6, (v7 & 1) != 0))
  {

    return 2;
  }

  v8 = v6;
  if (v8 == @"Right" || (v9 = v8, v10 = [(__CFString *)v8 isEqual:@"Right"], v9, (v10 & 1) != 0))
  {

    return 3;
  }

  v11 = v9;
  if (v11 == @"Case" || (v12 = v11, v13 = [(__CFString *)v11 isEqual:@"Case"], v12, (v13 & 1) != 0))
  {

    return 4;
  }

  v14 = v12;
  if (v14 == @"Other" || (v15 = v14, v16 = [(__CFString *)v14 isEqual:@"Other"], v15, (v16 & 1) != 0))
  {

    return 5;
  }

  v17 = v15;
  if (v17 == @"Single" || (v18 = v17, v19 = [(__CFString *)v17 isEqual:@"Single"], v18, v19))
  {

    return 6;
  }

  else
  {
LABEL_20:

    return 0;
  }
}

__CFString *CBPowerSourcePartIDToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_1E811E028[(a1 - 1)];
  }
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8 * v1);

  return [v3 changeFlags];
}

void sub_1C0AFD7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  (*(v26 + 16))(v26);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AFDAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0AFDB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return [v0 isEqual:v1];
}

uint64_t OUTLINED_FUNCTION_17(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *(result + 16);
  return result;
}

void sub_1C0B08FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

void sub_1C0B09270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  do
  {
    v11 = *--v9;
  }

  while (v9 != &a9);
  _Unwind_Resume(a1);
}

void sub_1C0B09508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  do
  {
    v11 = *--v9;
  }

  while (v9 != &a9);
  _Unwind_Resume(a1);
}

void sub_1C0B0973C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

void sub_1C0B098B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  do
  {
    v12 = *(v10 - 1);
    v10 -= 8;
  }

  while (v10 != &a10);
  _Unwind_Resume(a1);
}

uint64_t CBDiscoveryTypeFromCString(const char *a1)
{
  if (!strcmp(a1, "AirDrop"))
  {
    return 1;
  }

  if (!strcmp(a1, "FieldDiagnostics"))
  {
    return 2;
  }

  if (!strcmp(a1, "iBeacon"))
  {
    return 3;
  }

  if (!strcmp(a1, "NearbyInfoV2"))
  {
    return 4;
  }

  if (!strcmp(a1, "AUAction"))
  {
    return 6;
  }

  if (!strcmp(a1, "AirPrint"))
  {
    return 7;
  }

  if (!strcmp(a1, "MacSetup"))
  {
    return 8;
  }

  if (!strcmp(a1, "MacMigrate"))
  {
    return 9;
  }

  if (!strcmp(a1, "SIMTransfer2"))
  {
    return 5;
  }

  if (!strcmp(a1, "AcceptedInvitation"))
  {
    return 10;
  }

  if (!strcmp(a1, "ADPDBuffer"))
  {
    return 11;
  }

  if (!strcmp(a1, "DockKitAccessory"))
  {
    return 12;
  }

  if (!strcmp(a1, "AppleIDSignIn"))
  {
    return 13;
  }

  if (!strcmp(a1, "FindMyAccessory"))
  {
    return 14;
  }

  if (!strcmp(a1, "NearbyActionNoWake"))
  {
    return 15;
  }

  if (!strcmp(a1, "PrecisionFinding"))
  {
    return 16;
  }

  if (!strcmp(a1, "ADPD"))
  {
    return 18;
  }

  if (!strcmp(a1, "MiLo"))
  {
    return 19;
  }

  if (!strcmp(a1, "NearbyInfoV2Invitation"))
  {
    return 21;
  }

  if (!strcmp(a1, "OSUpdate"))
  {
    return 22;
  }

  if (!strcmp(a1, "WatchSetup"))
  {
    return 23;
  }

  if (!strcmp(a1, "OSRecoveryExtended"))
  {
    return 24;
  }

  if (!strcmp(a1, "AllBuffer"))
  {
    return 25;
  }

  if (!strcmp(a1, "SafetyAlerts"))
  {
    return 26;
  }

  if (!strcmp(a1, "Aliro"))
  {
    return 27;
  }

  if (!strcmp(a1, "SoftwareUpdate"))
  {
    return 28;
  }

  if (!strcmp(a1, "ProximityPairingBuffer"))
  {
    return 29;
  }

  if (!strcmp(a1, "AddUser"))
  {
    return 31;
  }

  if (!strcmp(a1, "PhotoSetup"))
  {
    return 32;
  }

  if (!strcmp(a1, "NoConsolidateScan"))
  {
    return 33;
  }

  if (!strcmp(a1, "NearbyActionBuffer"))
  {
    return 35;
  }

  if (!strcmp(a1, "NearbyInfoBuffer"))
  {
    return 36;
  }

  if (!strcmp(a1, "MiLoBuffer"))
  {
    return 37;
  }

  if (!strcmp(a1, "HomeRepair"))
  {
    return 38;
  }

  if (!strcmp(a1, "NearbyInfoV2NearbyFaceTime"))
  {
    return 39;
  }

  if (!strcmp(a1, "NearbyInfoV2NearbyFaceTimeData"))
  {
    return 40;
  }

  if (!strcmp(a1, "SIMTransfer3"))
  {
    return 41;
  }

  if (!strcmp(a1, "InviteHome"))
  {
    return 42;
  }

  if (!strcmp(a1, "AppleIDSignInFamily"))
  {
    return 43;
  }

  if (!strcmp(a1, "HomePodSetupV2"))
  {
    return 44;
  }

  if (!strcmp(a1, "GenericServiceUUIDs"))
  {
    return 27;
  }

  return 0;
}

void __CBDiscoveryTypesBLEScan_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if (v3)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 8) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesBuffer_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 0x40) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 14) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNearbyActionV1_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 2) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 20) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNearbyActionV2_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 4) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 26) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void *CBDiscoveryTypesNearbyActionNoWake()
{
  if (qword_1ED7C1F48 != -1)
  {
    CBDiscoveryTypesNearbyActionNoWake_cold_1();
  }

  return &unk_1ED7C1EF8;
}

void __CBDiscoveryTypesNearbyActionNoWake_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if (v3 < 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 32) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNeedsAdvertisingAddress_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 8) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 38) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNeedsIdentify_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 0x10) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 44) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNearbyInfoV2_block_invoke()
{
  v0 = &byte_1E811F50C;
  v1 = &byte_1E811F50C;
  do
  {
    v3 = *v1;
    v1 += 24;
    if ((v3 & 0x20) != 0)
    {
      v4 = *(v0 - 1);
      if ((v4 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v4 - 1) >> 3) + 50) |= 1 << (-v4 & 7);
      }
    }

    v2 = *(v0 + 12);
    v0 = v1;
  }

  while (v2);
}

void __CBDiscoveryTypesNeedsObjectLocator_block_invoke()
{
  v0 = &byte_1E811F50C;
  do
  {
    if (v0[1])
    {
      v2 = *(v0 - 1);
      if ((v2 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v2 - 1) >> 3) + 56) |= 1 << (-v2 & 7);
      }
    }

    v1 = *(v0 + 12);
    v0 += 24;
  }

  while (v1);
}

void __CBDiscoveryTypesProximityService_block_invoke()
{
  v0 = &byte_1E811F50C;
  do
  {
    if ((v0[1] & 2) != 0)
    {
      v2 = *(v0 - 1);
      if ((v2 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v2 - 1) >> 3) + 62) |= 1 << (-v2 & 7);
      }
    }

    v1 = *(v0 + 12);
    v0 += 24;
  }

  while (v1);
}

void __CBDiscoveryTypesSoftwareUpdate_block_invoke()
{
  v0 = &byte_1E811F50C;
  do
  {
    if ((v0[1] & 4) != 0)
    {
      v2 = *(v0 - 1);
      if ((v2 - 45) >= 0xFFFFFFD4)
      {
        *(&_MergedGlobals_0 + ((v2 - 1) >> 3) + 68) |= 1 << (-v2 & 7);
      }
    }

    v1 = *(v0 + 12);
    v0 += 24;
  }

  while (v1);
}

__CFString *CBDiscoveryTypesToString(uint64_t a1)
{
  CUAppendF();
  v2 = 0;
  v3 = &off_1E811F518;
  do
  {
    v5 = *(v3 - 4);
    if (v5 - 45) >= 0xFFFFFFD4 && ((*(a1 + ((v5 - 1) >> 3)) >> (-v5 & 7)))
    {
      CUAppendF();
      v6 = v2;

      v2 = v6;
    }

    v4 = *v3;
    v3 += 3;
  }

  while (v4);
  CUAppendF();
  v7 = v2;

  v8 = &stru_1F40009C8;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

__CFString *CBDiscoveryTypesEnumToString(uint64_t a1)
{
  CUAppendF();
  v2 = 0;
  v3 = &off_1E811F518;
  do
  {
    v5 = *(v3 - 4);
    if (v5 - 45) >= 0xFFFFFFD4 && ((*(a1 + ((v5 - 1) >> 3)) >> (-v5 & 7)))
    {
      v11 = *(v3 - 4);
      CUAppendF();
      v6 = v2;

      v2 = v6;
    }

    v4 = *v3;
    v3 += 3;
  }

  while (v4);
  CUAppendF();
  v7 = v2;

  v8 = &stru_1F40009C8;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

uint64_t CBUseCaseFromString(const char *a1)
{
  if (!strcasecmp(a1, "HealthKit"))
  {
    return 1;
  }

  if (!strcasecmp(a1, "HomeKit"))
  {
    return 2;
  }

  if (!strcasecmp(a1, "FindMyObjectConnection"))
  {
    return 3;
  }

  if (!strcasecmp(a1, "FindMyObjectConnectionTransient"))
  {
    return 4;
  }

  if (!strcasecmp(a1, "MIDI"))
  {
    return 5;
  }

  if (!strcasecmp(a1, "Continuity"))
  {
    return 6;
  }

  if (!strcasecmp(a1, "InstantHotSpot"))
  {
    return 7;
  }

  if (!strcasecmp(a1, "NearBy"))
  {
    return 8;
  }

  if (!strcasecmp(a1, "Sharing"))
  {
    return 9;
  }

  if (!strcasecmp(a1, "HearingSupport"))
  {
    return 10;
  }

  if (!strcasecmp(a1, "Magnet"))
  {
    return 11;
  }

  if (!strcasecmp(a1, "HID"))
  {
    return 12;
  }

  if (!strcasecmp(a1, "LEA"))
  {
    return 13;
  }

  if (!strcasecmp(a1, "External"))
  {
    return 14;
  }

  if (!strcasecmp(a1, "ExternalMedical"))
  {
    return 15;
  }

  if (!strcasecmp(a1, "ExternalLock"))
  {
    return 16;
  }

  if (!strcasecmp(a1, "ExternalWatch"))
  {
    return 17;
  }

  if (!strcasecmp(a1, "SmartRouting"))
  {
    return 18;
  }

  if (!strcasecmp(a1, "DigitalID"))
  {
    return 19;
  }

  if (!strcasecmp(a1, "DigitalKey"))
  {
    return 20;
  }

  if (!strcasecmp(a1, "DigitalCarKey"))
  {
    return 21;
  }

  if (!strcasecmp(a1, "DigitalCarKeyThirdParty"))
  {
    return 0x40000;
  }

  if (!strcasecmp(a1, "HeySiri"))
  {
    return 22;
  }

  if (!strcasecmp(a1, "ThirdPartyApp"))
  {
    return 23;
  }

  if (!strcasecmp(a1, "CNJ"))
  {
    return 24;
  }

  if (!strcasecmp(a1, "DevicePresenceDetection"))
  {
    return 256;
  }

  if (!strcasecmp(a1, "AudioBox"))
  {
    return 257;
  }

  if (!strcasecmp(a1, "SIMTransfer") || !strcasecmp(a1, "SIMTransfer2") || !strcasecmp(a1, "SIMTransfer3"))
  {
    return 258;
  }

  if (!strcasecmp(a1, "ProximityScreenOnLeechScan"))
  {
    return 259;
  }

  if (!strcasecmp(a1, "MacMigrate"))
  {
    return 260;
  }

  if (!strcasecmp(a1, "HIDUARTService"))
  {
    return 263;
  }

  if (!strcasecmp(a1, "AccessibilitySwitchControlPairing"))
  {
    return 264;
  }

  if (!strcasecmp(a1, "BaseBandFastConnect"))
  {
    return 265;
  }

  if (!strcasecmp(a1, "SafetyAlerts"))
  {
    return 266;
  }

  if (!strcasecmp(a1, "LECarPlay"))
  {
    return 267;
  }

  if (!strcasecmp(a1, "TCCBluetooth"))
  {
    return 268;
  }

  if (!strcasecmp(a1, "AOPBufferLeech"))
  {
    return 269;
  }

  if (!strcasecmp(a1, "FindMyAction"))
  {
    return 0x10000;
  }

  if (!strcasecmp(a1, "FindMyBackground"))
  {
    return 65537;
  }

  if (!strcasecmp(a1, "FindMyActionHELE"))
  {
    return 65538;
  }

  if (!strcasecmp(a1, "FindMyBackgroundHELE"))
  {
    return 65539;
  }

  if (!strcasecmp(a1, "FindMyActionTransient"))
  {
    return 65540;
  }

  if (!strcasecmp(a1, "FindMyBackgroundTransient"))
  {
    return 65541;
  }

  if (!strcasecmp(a1, "FindMyActionHELETransient"))
  {
    return 65542;
  }

  if (!strcasecmp(a1, "FindMyBackgroundHELETransient"))
  {
    return 65543;
  }

  if (!strcasecmp(a1, "FindMyActionExtendedRange"))
  {
    return 65562;
  }

  if (!strcasecmp(a1, "FindMyActionExtendedRangeLE2M"))
  {
    return 65563;
  }

  if (!strcasecmp(a1, "FindMyActionExtendedRangeTransient"))
  {
    return 65564;
  }

  if (!strcasecmp(a1, "FindMyPlaySoundExtendedRange"))
  {
    return 65565;
  }

  if (!strcasecmp(a1, "FindMyNotOptedIn"))
  {
    return 65544;
  }

  if (!strcasecmp(a1, "FindMyOptedIn"))
  {
    return 65545;
  }

  if (!strcasecmp(a1, "FindMySepAlertsEnabled"))
  {
    return 65546;
  }

  if (!strcasecmp(a1, "FindMyTemporaryAggressiveLegacy"))
  {
    return 65547;
  }

  if (!strcasecmp(a1, "FindMyTemporaryAggressiveLegacyExtendedRange"))
  {
    return 65567;
  }

  if (!strcasecmp(a1, "FindMyTemporaryLongAggressive"))
  {
    return 65548;
  }

  if (!strcasecmp(a1, "FindMyBTFindingUserInitiated"))
  {
    return 65549;
  }

  if (!strcasecmp(a1, "FindMyHELE"))
  {
    return 65550;
  }

  if (!strcasecmp(a1, "FindMyBeaconOnDemand"))
  {
    return 65551;
  }

  if (!strcasecmp(a1, "FindMyWildTimedScan"))
  {
    return 65552;
  }

  if (!strcasecmp(a1, "FindMyBackgroundLeechScan"))
  {
    return 65553;
  }

  if (!strcasecmp(a1, "FindMySnifferMode"))
  {
    return 65554;
  }

  if (!strcasecmp(a1, "FindMyPair"))
  {
    return 65566;
  }

  if (!strcasecmp(a1, "FindMyUnpair"))
  {
    return 65555;
  }

  if (!strcasecmp(a1, "FindMyUnpairHELE"))
  {
    return 65556;
  }

  if (!strcasecmp(a1, "FindMyPlaySound"))
  {
    return 65557;
  }

  if (!strcasecmp(a1, "FindMyPlaySoundHELE"))
  {
    return 65558;
  }

  if (!strcasecmp(a1, "FindMyNotOptedInBeepOnMoveWaking"))
  {
    return 65559;
  }

  if (!strcasecmp(a1, "FindMyUTTransient"))
  {
    return 65560;
  }

  if (!strcasecmp(a1, "FindMyUTHELETransient"))
  {
    return 65561;
  }

  if (!strcasecmp(a1, "SharingDefault"))
  {
    return 0x20000;
  }

  if (!strcasecmp(a1, "SharingPhoneAutoUnlock"))
  {
    return 131073;
  }

  if (!strcasecmp(a1, "SharingSiriWatchAuth"))
  {
    return 131074;
  }

  if (!strcasecmp(a1, "SharingMacAutoUnlock"))
  {
    return 131075;
  }

  if (!strcasecmp(a1, "SharingEDTScreenOn"))
  {
    return 131076;
  }

  if (!strcasecmp(a1, "SharingEDTWiFiDisabled"))
  {
    return 131077;
  }

  if (!strcasecmp(a1, "SharingEDTWombatEligibleAsDefaultCamera"))
  {
    return 131078;
  }

  if (!strcasecmp(a1, "SharingEDTWombatCameraPicker"))
  {
    return 131079;
  }

  if (!strcasecmp(a1, "SharingWombatBackground"))
  {
    return 131080;
  }

  if (!strcasecmp(a1, "SharingUniversalControl"))
  {
    return 131081;
  }

  if (!strcasecmp(a1, "SharingPeopleProximity"))
  {
    return 131082;
  }

  if (!strcasecmp(a1, "SharingEDTEnsembleOpenDisplayPrefs"))
  {
    return 131083;
  }

  if (!strcasecmp(a1, "SharingEDTNearbydMotionStopped"))
  {
    return 131084;
  }

  if (!strcasecmp(a1, "SharingDoubleBoostGenericScan"))
  {
    return 131085;
  }

  if (!strcasecmp(a1, "SharingEDTIncomingAdvertisement"))
  {
    return 131086;
  }

  if (!strcasecmp(a1, "SharingEDTWombatStreamStart"))
  {
    return 131087;
  }

  if (!strcasecmp(a1, "SharingOYAutoUnlock"))
  {
    return 131088;
  }

  if (!strcasecmp(a1, "SharingAirDrop"))
  {
    return 131090;
  }

  if (!strcasecmp(a1, "SharingNearbyInvitationHost"))
  {
    return 131091;
  }

  if (!strcasecmp(a1, "SharingNearbyInvitationParticipant"))
  {
    return 131092;
  }

  if (!strcasecmp(a1, "SharingAirDropAskToAirDrop"))
  {
    return 131093;
  }

  if (!strcasecmp(a1, "SharingAirDropTempIdentity"))
  {
    return 131094;
  }

  if (!strcasecmp(a1, "SharingAirDropNeedsCLink"))
  {
    return 131095;
  }

  if (!strcasecmp(a1, "SharingRemoteWidgetUpdate"))
  {
    return 131096;
  }

  if (!strcasecmp(a1, "SharingCountryCodeUpdate"))
  {
    return 131097;
  }

  if (!strcasecmp(a1, "SharingMacPhoneAutoUnlock"))
  {
    return 131098;
  }

  if (!strcasecmp(a1, "SharingVisionProDiscovery"))
  {
    return 131099;
  }

  if (!strcasecmp(a1, "SharingVisionProStateChange"))
  {
    return 131100;
  }

  if (!strcasecmp(a1, "SoftwareUpdateBTWake"))
  {
    return 720896;
  }

  if (!strcasecmp(a1, "SoftwareUpdateOutboxControllerAuth"))
  {
    return 720897;
  }

  if (!strcasecmp(a1, "SharingContinuityScreen"))
  {
    return 131101;
  }

  if (!strcasecmp(a1, "SharingEDTRemoteDisplay"))
  {
    return 131102;
  }

  if (!strcasecmp(a1, "SharingHomePodSetup"))
  {
    return 131103;
  }

  if (!strcasecmp(a1, "DigitalIDTSA"))
  {
    return 196608;
  }

  if (!strcasecmp(a1, "RapportThirdParty"))
  {
    return 327680;
  }

  if (!strcasecmp(a1, "CaptiveNetworkJoin"))
  {
    return 393216;
  }

  if (!strcasecmp(a1, "UseCaseSIMTransfer"))
  {
    return 393217;
  }

  if (!strcasecmp(a1, "MacSetup"))
  {
    return 393218;
  }

  if (!strcasecmp(a1, "AppleIDSignIn"))
  {
    return 393219;
  }

  if (!strcasecmp(a1, "AppleIDSignInSettings"))
  {
    return 393220;
  }

  if (!strcasecmp(a1, "PrecisionFindingFinder"))
  {
    return 458752;
  }

  if (!strcasecmp(a1, "PrecisionFindingFindee"))
  {
    return 458753;
  }

  if (!strcasecmp(a1, "ADPD"))
  {
    return 0x80000;
  }

  if (!strcasecmp(a1, "ADPDBuffer"))
  {
    return 524289;
  }

  if (!strcasecmp(a1, "MicroLocation"))
  {
    return 524290;
  }

  if (!strcasecmp(a1, "MicroLocationLeech"))
  {
    return 524291;
  }

  if (!strcasecmp(a1, "FindNearbyRemote"))
  {
    return 589824;
  }

  if (!strcasecmp(a1, "FindNearbyPencil"))
  {
    return 589825;
  }

  if (!strcasecmp(a1, "AccessDigitalHomeKey"))
  {
    return 655360;
  }

  if (!strcasecmp(a1, "ProxControlDeviceClose"))
  {
    return 786432;
  }

  if (!strcasecmp(a1, "DCTProtocolTelephony"))
  {
    return 851968;
  }

  if (!strcasecmp(a1, "DCTProtocolDataAndTelephony"))
  {
    return 851969;
  }

  if (!strcasecmp(a1, "NearbyFaceTime"))
  {
    return 917504;
  }

  if (!strcasecmp(a1, "NearbyFaceTimeData"))
  {
    return 917505;
  }

  if (!strcasecmp(a1, "SOSBeaconPartA"))
  {
    return 983040;
  }

  if (!strcasecmp(a1, "SOSBeaconPartB"))
  {
    return 983041;
  }

  if (!strcasecmp(a1, "SOSBeaconPrecisionFindResponse"))
  {
    return 983042;
  }

  if (!strcasecmp(a1, "SOSBeaconPrecisionFindRequest"))
  {
    return 983043;
  }

  if (!strcasecmp(a1, "SOSBeaconScan"))
  {
    return 983044;
  }

  if (!strcasecmp(a1, "SOSBeaconActivateScan"))
  {
    return 983045;
  }

  if (!strcasecmp(a1, "SOSBeaconActivateAdvA"))
  {
    return 983046;
  }

  if (!strcasecmp(a1, "SOSBeaconActivateAdvB"))
  {
    return 983047;
  }

  if (!strcasecmp(a1, "InternalTestNoLockScan"))
  {
    return 2147418112;
  }

  if (!strcasecmp(a1, "InternalTestNoScreenOffScan"))
  {
    return 2147418113;
  }

  if (!strcasecmp(a1, "InternalTestScanWithNoDups"))
  {
    return 2147418114;
  }

  if (!strcasecmp(a1, "InternalTestScanWithDups"))
  {
    return 2147418115;
  }

  if (!strcasecmp(a1, "InternalTestScanFor20Seconds"))
  {
    return 2147418116;
  }

  if (!strcasecmp(a1, "InternalTestActiveScan"))
  {
    return 2147418117;
  }

  if (!strcasecmp(a1, "InternalTestUUIDScan"))
  {
    return 2147418118;
  }

  if (!strcasecmp(a1, "InternalTestScanFor10ClockSeconds"))
  {
    return 2147418119;
  }

  if (!strcasecmp(a1, "InternalTestScanBoost"))
  {
    return 2147418120;
  }

  if (!strcasecmp(a1, "InternalTestDiscoveryScanWithMRC"))
  {
    return 2147418121;
  }

  if (!strcasecmp(a1, "InternalTestAdvWithHigherPower"))
  {
    return 2147418122;
  }

  if (!strcasecmp(a1, "InternalTestScanLowDutyCycleMCOnly"))
  {
    return 2147418123;
  }

  if (!strcasecmp(a1, "InternalTestUUIDScanWithMinRSSI"))
  {
    return 2147418124;
  }

  if (!strcasecmp(a1, "InternalTestUUIDScanWithMinRSSIMediumLow"))
  {
    return 2147418125;
  }

  if (!strcasecmp(a1, "InternalTestAdvWithHigherPowerServiceDataConnectable"))
  {
    return 2147418126;
  }

  if (!strcasecmp(a1, "InternalTestAdvWithHigherPowerServiceDataNonConnectable"))
  {
    return 2147418127;
  }

  if (!strcasecmp(a1, "InternalTestAdvWithHigherPowerServiceDataS2"))
  {
    return 2147418128;
  }

  if (!strcasecmp(a1, "InternalTestAdvWithHigherPowerServiceDataS8"))
  {
    return 2147418129;
  }

  if (!strcasecmp(a1, "InternalTestDiscoveryScanCodedPHY"))
  {
    return 2147418130;
  }

  return 0;
}

unint64_t CBUTF8Truncate(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    return a2;
  }

  v3 = (a1 + a3);
  if (a2 - a3 < 2)
  {
    v4 = -80;
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    v4 = v3[1];
    if (!a3)
    {
      return 0;
    }
  }

  v5 = *v3;
  v6 = a1 - 1;
  while ((v5 & 0xC0) == 0x80 || v5 == 237 && (v4 & 0xF0) == 0xB0)
  {
    v4 = v5;
    v5 = *(v6 + a3--);
    if (!a3)
    {
      return 0;
    }
  }

  while (*(v6 + a3) <= 0x20u)
  {
    if (!--a3)
    {
      return 0;
    }
  }

  return a3;
}

void CBMockAddOrUpdateAdvertiser(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&stru_1ED7C1EDC);
  v5 = [qword_1ED7C1FA8 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v6 = qword_1ED7C1FA8;
    if (!qword_1ED7C1FA8)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = qword_1ED7C1FA8;
      qword_1ED7C1FA8 = v7;

      v6 = qword_1ED7C1FA8;
    }

    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  [v5 addObject:v4];
  v9 = [v4 mockDevice];
  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [qword_1ED7C1FB0 objectForKeyedSubscript:{v3, 0}];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14++) reportMockDeviceFound:v9];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(&stru_1ED7C1EDC);

  v15 = *MEMORY[0x1E69E9840];
}

void CBMockRemoveAdvertiser(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&stru_1ED7C1EDC);
  v5 = [qword_1ED7C1FA8 objectForKeyedSubscript:v3];
  if ([v5 containsObject:v4])
  {
    [v5 removeObject:v4];
    if (![v5 count])
    {
      [qword_1ED7C1FA8 setObject:0 forKeyedSubscript:v3];
    }

    v6 = [v4 mockDevice];
    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [qword_1ED7C1FB0 objectForKeyedSubscript:{v3, 0}];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v13 + 1) + 8 * v11++) reportMockDeviceLost:v6];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    os_unfair_lock_unlock(&stru_1ED7C1EDC);
  }

  else
  {
    os_unfair_lock_unlock(&stru_1ED7C1EDC);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void CBMockAddOrUpdateDiscovery(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  os_unfair_lock_lock(&stru_1ED7C1EDC);
  v5 = [qword_1ED7C1FB0 objectForKeyedSubscript:v3];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    v6 = qword_1ED7C1FB0;
    if (!qword_1ED7C1FB0)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = qword_1ED7C1FB0;
      qword_1ED7C1FB0 = v7;

      v6 = qword_1ED7C1FB0;
    }

    [v6 setObject:v5 forKeyedSubscript:v3];
  }

  [v5 addObject:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [qword_1ED7C1FA8 objectForKeyedSubscript:{v3, 0}];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) mockDevice];
        if (v14)
        {
          [v4 reportMockDeviceFound:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&stru_1ED7C1EDC);
  v15 = *MEMORY[0x1E69E9840];
}

void CBMockRemoveDiscovery(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  os_unfair_lock_lock(&stru_1ED7C1EDC);
  v4 = [qword_1ED7C1FB0 objectForKeyedSubscript:v5];
  [v4 removeObject:v3];

  if (![v4 count])
  {
    [qword_1ED7C1FB0 setObject:0 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&stru_1ED7C1EDC);
}

id CBUserControllerXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4026E70];
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v15 initWithObjects:{v14, v13, v12, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_appleAudioAccessoryLimitedLoggingWithCompletion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_setAppleAudioAccessoryLimitedLogging_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getDistributedLoggingStatusWithCompletion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_setDistributedLoggingStatus_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getCurrentUserGivenNameWithCompletion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getControllerInfoForDevice_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getCloudPairedDevicesWithCompletionHandler_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_getControllerInfoForDevice_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_storeControllerInfo_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_readPrefKeys_source_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_writePrefKey_value_source_completion_ argumentIndex:0 ofReply:1];
  [v0 setClasses:v10 forSelector:sel_userNotificationEvent_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id CBGetHexString(unsigned __int8 *a1, unsigned int a2)
{
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * a2];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *a1++;
      [v4 appendFormat:@"%02x", v6];
      --v5;
    }

    while (v5);
  }

  return v4;
}

id CBGenerateSHA256HashedString(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  *md = 0u;
  v7 = 0u;
  v2 = strlen(v1);
  if (CC_SHA256(v1, v2, md))
  {
    v3 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
    [v3 appendFormat:@"%02x", md[0]];
    [v3 appendFormat:@"%02x", md[1]];
    [v3 appendFormat:@"%02x", md[2]];
    [v3 appendFormat:@"%02x", md[3]];
    [v3 appendFormat:@"%02x", md[4]];
    [v3 appendFormat:@"%02x", md[5]];
    [v3 appendFormat:@"%02x", md[6]];
    [v3 appendFormat:@"%02x", md[7]];
    [v3 appendFormat:@"%02x", md[8]];
    [v3 appendFormat:@"%02x", md[9]];
    [v3 appendFormat:@"%02x", md[10]];
    [v3 appendFormat:@"%02x", md[11]];
    [v3 appendFormat:@"%02x", md[12]];
    [v3 appendFormat:@"%02x", md[13]];
    [v3 appendFormat:@"%02x", md[14]];
    [v3 appendFormat:@"%02x", md[15]];
    [v3 appendFormat:@"%02x", v7];
    [v3 appendFormat:@"%02x", BYTE1(v7)];
    [v3 appendFormat:@"%02x", BYTE2(v7)];
    [v3 appendFormat:@"%02x", BYTE3(v7)];
    [v3 appendFormat:@"%02x", BYTE4(v7)];
    [v3 appendFormat:@"%02x", BYTE5(v7)];
    [v3 appendFormat:@"%02x", BYTE6(v7)];
    [v3 appendFormat:@"%02x", BYTE7(v7)];
    [v3 appendFormat:@"%02x", BYTE8(v7)];
    [v3 appendFormat:@"%02x", BYTE9(v7)];
    [v3 appendFormat:@"%02x", BYTE10(v7)];
    [v3 appendFormat:@"%02x", BYTE11(v7)];
    [v3 appendFormat:@"%02x", BYTE12(v7)];
    [v3 appendFormat:@"%02x", BYTE13(v7)];
    [v3 appendFormat:@"%02x", BYTE14(v7)];
    [v3 appendFormat:@"%02x", HIBYTE(v7)];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1C0B1713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B17154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *CBCentralManagerConnectionLatencyToString(uint64_t a1)
{
  v1 = a1 + 99;
  result = "Invalid";
  switch(v1)
  {
    case 0:
      return result;
    case 87:
      result = "MidiV2";
      break;
    case 88:
      result = "MagnetSubrating";
      break;
    case 89:
      result = "VeryHigh";
      break;
    case 90:
      result = "Mid-Fixed";
      break;
    case 91:
      result = "Low-Fixed";
      break;
    case 92:
      result = "VeryLow";
      break;
    case 93:
      result = "PowerOptimize";
      break;
    case 94:
      result = "HomeKit";
      break;
    case 95:
      result = "Continuity";
      break;
    case 96:
      result = "MagnetUpgraded";
      break;
    case 97:
      result = "Magnet";
      break;
    case 98:
      result = "Midi";
      break;
    case 99:
      result = "Low";
      break;
    case 100:
      result = "Medium";
      break;
    case 101:
      result = "High";
      break;
    default:
      result = "?";
      break;
  }

  return result;
}

void sub_1C0B1CCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B1D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B1E2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B20130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B20694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B20D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B21658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B239A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B239FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1C0B25E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __msgConversionMap_block_invoke()
{
  v4[35] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F40209F0;
  v3[1] = &unk_1F4020A08;
  v4[0] = &unk_1F40209F0;
  v4[1] = &unk_1F4020A08;
  v3[2] = &unk_1F4020A20;
  v3[3] = &unk_1F4020A38;
  v4[2] = &unk_1F4020A20;
  v4[3] = &unk_1F4020A38;
  v3[4] = &unk_1F4020A50;
  v3[5] = &unk_1F4020A68;
  v4[4] = &unk_1F4020A50;
  v4[5] = &unk_1F4020A68;
  v3[6] = &unk_1F4020A80;
  v3[7] = &unk_1F4020AB0;
  v4[6] = &unk_1F4020A98;
  v4[7] = &unk_1F4020A80;
  v3[8] = &unk_1F4020AC8;
  v3[9] = &unk_1F4020AF8;
  v4[8] = &unk_1F4020AE0;
  v4[9] = &unk_1F4020B10;
  v3[10] = &unk_1F4020B28;
  v3[11] = &unk_1F4020B58;
  v4[10] = &unk_1F4020B40;
  v4[11] = &unk_1F4020B70;
  v3[12] = &unk_1F4020B88;
  v3[13] = &unk_1F4020BB8;
  v4[12] = &unk_1F4020BA0;
  v4[13] = &unk_1F4020BD0;
  v3[14] = &unk_1F4020BE8;
  v3[15] = &unk_1F4020C00;
  v4[14] = &unk_1F4020BE8;
  v4[15] = &unk_1F4020C18;
  v3[16] = &unk_1F4020C30;
  v3[17] = &unk_1F4020C60;
  v4[16] = &unk_1F4020C48;
  v4[17] = &unk_1F4020C78;
  v3[18] = &unk_1F4020C90;
  v3[19] = &unk_1F4020CC0;
  v4[18] = &unk_1F4020CA8;
  v4[19] = &unk_1F4020CD8;
  v3[20] = &unk_1F4020CF0;
  v3[21] = &unk_1F4020D20;
  v4[20] = &unk_1F4020D08;
  v4[21] = &unk_1F4020BB8;
  v3[22] = &unk_1F4020D38;
  v3[23] = &unk_1F4020D68;
  v4[22] = &unk_1F4020D50;
  v4[23] = &unk_1F4020D80;
  v3[24] = &unk_1F4020D98;
  v3[25] = &unk_1F4020DC8;
  v4[24] = &unk_1F4020DB0;
  v4[25] = &unk_1F4020DE0;
  v3[26] = &unk_1F4020DF8;
  v3[27] = &unk_1F4020E28;
  v4[26] = &unk_1F4020E10;
  v4[27] = &unk_1F4020E40;
  v3[28] = &unk_1F4020E58;
  v3[29] = &unk_1F4020E88;
  v4[28] = &unk_1F4020E70;
  v4[29] = &unk_1F4020EA0;
  v3[30] = &unk_1F4020EB8;
  v3[31] = &unk_1F4020EE8;
  v4[30] = &unk_1F4020ED0;
  v4[31] = &unk_1F4020F00;
  v3[32] = &unk_1F4020F18;
  v3[33] = &unk_1F4020F48;
  v4[32] = &unk_1F4020F30;
  v4[33] = &unk_1F4020F60;
  v3[34] = &unk_1F4020F78;
  v4[34] = &unk_1F4020F90;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:35];
  v1 = qword_1ED7C1FD0;
  qword_1ED7C1FD0 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __convertToCBMsgId_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 unsignedShortValue] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 unsignedShortValue];
    *a4 = 1;
  }
}

uint64_t __CBXpcCreateNSArrayWithXpcArray_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CBXpcCreateNSObjectWithXpcObject(a3);
  v6 = *(a1 + 32);
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = v5;

  return 1;
}

const char *CBUseCaseToString_0(int a1)
{
  if (a1 < 0x20000)
  {
    result = "Unspecified";
    switch("Unspecified")
    {
      case 0u:
        return result;
      case 1u:
        result = "HealthKit";
        break;
      case 2u:
        result = "HomeKit";
        break;
      case 3u:
        result = "FindMyObjectConnection";
        break;
      case 4u:
        result = "FindMyObjectConnectionTransient";
        break;
      case 5u:
        result = "MIDI";
        break;
      case 6u:
        result = "Continuity";
        break;
      case 7u:
        result = "InstantHotSpot";
        break;
      case 8u:
        result = "NearBy";
        break;
      case 9u:
        result = "Sharing";
        break;
      case 0xAu:
        result = "HearingSupport";
        break;
      case 0xBu:
        result = "Magnet";
        break;
      case 0xCu:
        result = "HID";
        break;
      case 0xDu:
        result = "LEA";
        break;
      case 0xEu:
        result = "External";
        break;
      case 0xFu:
        result = "ExternalMedical";
        break;
      case 0x10u:
        result = "ExternalLock";
        break;
      case 0x11u:
        result = "ExternalWatch";
        break;
      case 0x12u:
        result = "SmartRouting";
        break;
      case 0x13u:
        result = "DigitalID";
        break;
      case 0x14u:
        result = "DigitalKey";
        break;
      case 0x15u:
        result = "DigitalCarKey";
        break;
      case 0x16u:
        result = "HeySiri";
        break;
      case 0x17u:
        result = "ThirdPartyApp";
        break;
      case 0x18u:
        result = "CNJ";
        break;
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
      case 0xCBu:
      case 0xCCu:
      case 0xCDu:
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xDEu:
      case 0xDFu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE6u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFEu:
      case 0xFFu:
      case 0x105u:
      case 0x106u:
        return "?";
      case 0x100u:
        result = "DevicePresenceDetection";
        break;
      case 0x101u:
        result = "AudioBox";
        break;
      case 0x102u:
        result = "SIMTransfer";
        break;
      case 0x103u:
        result = "ProximityScreenOnLeechScan";
        break;
      case 0x104u:
        result = "MacMigrate";
        break;
      case 0x107u:
        result = "HIDUARTService";
        break;
      case 0x108u:
        result = "AccessibilitySwitchControlPairing";
        break;
      case 0x109u:
        result = "BaseBandFastConnect";
        break;
      case 0x10Au:
        result = "SafetyAlerts";
        break;
      case 0x10Bu:
        result = "LECarPlay";
        break;
      case 0x10Cu:
        result = "TCCBluetooth";
        break;
      case 0x10Du:
        result = "AOPBufferLeech";
        break;
      case 0x10Eu:
        result = "HighPriorityScanWiFi";
        break;
      default:
        switch("Unspecified")
        {
          case 0x10000u:
            result = "FindMyAction";
            break;
          case 0x10001u:
            result = "FindMyBackground";
            break;
          case 0x10002u:
            result = "FindMyActionHELE";
            break;
          case 0x10003u:
            result = "FindMyBackgroundHELE";
            break;
          case 0x10004u:
            result = "FindMyActionTransient";
            break;
          case 0x10005u:
            result = "FindMyBackgroundTransient";
            break;
          case 0x10006u:
            result = "FindMyActionHELETransient";
            break;
          case 0x10007u:
            result = "FindMyBackgroundHELETransient";
            break;
          case 0x10008u:
            result = "FindMyNotOptedIn";
            break;
          case 0x10009u:
            result = "FindMyOptedIn";
            break;
          case 0x1000Au:
            result = "FindMySepAlertsEnabled";
            break;
          case 0x1000Bu:
            result = "FindMyTemporaryAggressiveLegacy";
            break;
          case 0x1000Cu:
            result = "FindMyTemporaryLongAggressive";
            break;
          case 0x1000Du:
            result = "FindMyBTFindingUserInitiated";
            break;
          case 0x1000Eu:
            result = "FindMyHELE";
            break;
          case 0x1000Fu:
            result = "FindMyBeaconOnDemand";
            break;
          case 0x10010u:
            result = "FindMyWildTimedScan";
            break;
          case 0x10011u:
            result = "FindMyBackgroundLeechScan";
            break;
          case 0x10012u:
            result = "FindMySnifferMode";
            break;
          case 0x10013u:
            result = "FindMyUnpair";
            break;
          case 0x10014u:
            result = "FindMyUnpairHELE";
            break;
          case 0x10015u:
            result = "FindMyPlaySound";
            break;
          case 0x10016u:
            result = "FindMyPlaySoundHELE";
            break;
          case 0x10017u:
            result = "FindMyNotOptedInBeepOnMoveWaking";
            break;
          case 0x10018u:
            result = "FindMyUTTransient";
            break;
          case 0x10019u:
            result = "FindMyUTHELETransient";
            break;
          case 0x1001Au:
            result = "FindMyActionExtendedRange";
            break;
          case 0x1001Bu:
            result = "FindMyActionExtendedRangeLE2M";
            break;
          case 0x1001Cu:
            result = "FindMyActionExtendedRangeTransient";
            break;
          case 0x1001Du:
            result = "FindMyPlaySoundExtendedRange";
            break;
          case 0x1001Eu:
            result = "FindMyPair";
            break;
          case 0x1001Fu:
            result = "FindMyTemporaryAggressiveLegacyExtendedRange";
            break;
          default:
            return "?";
        }

        break;
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

void sub_1C0B2B968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B2D06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B2D084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B2D728(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C0B2FA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xEu);
}

void OUTLINED_FUNCTION_10_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

const char *CBDevicePlacementToString(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "?";
  }

  else
  {
    return off_1E8121B70[a1 - 1];
  }
}

const char *CBHeySiriDeviceClassToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1E8121BA8[a1];
  }
}

const char *CBNearbyActionTypeToString_0(unsigned int a1)
{
  if (a1 > 0x5F)
  {
    return "?";
  }

  else
  {
    return off_1E8121C00[a1];
  }
}

const char *CBNearbyStatusTypeToString(unsigned int a1)
{
  if (a1 > 0xD)
  {
    return "?";
  }

  else
  {
    return off_1E8121F00[a1];
  }
}

const char *CBNearbyInfoV2InvitationRouteTypeToString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E8121F70[a1];
  }
}

const char *CBVendorIDToString(int a1)
{
  if (a1 > 300)
  {
    if (a1 <= 1451)
    {
      if (a1 == 301 || a1 == 1356)
      {
        return "Sony";
      }

      return "?";
    }

    if (a1 != 1452)
    {
      if (a1 == 2956)
      {
        return "SmartTech";
      }

      return "?";
    }

    return "Apple";
  }

  if (a1 > 75)
  {
    if (a1 != 76)
    {
      if (a1 == 196)
      {
        return "LG";
      }

      return "?";
    }

    return "Apple";
  }

  if (!a1)
  {
    return "Invalid";
  }

  if (a1 == 6)
  {
    return "MS";
  }

  return "?";
}

const char *CBProximityPairingSubTypeToString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "?";
  }

  else
  {
    return off_1E8121FD0[a1];
  }
}

void sub_1C0B45824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(a4 + 16))();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B458A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1C0B49014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B4902C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B49044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B4905C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B49078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B49090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B490A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B490C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B555EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5564C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B556AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B556C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B556DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B556F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5570C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5576C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5579C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B557B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B557CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B557E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B557FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5582C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5585C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5588C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B558A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B558BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B558D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B558EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5594C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5597C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B559AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B559C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B559DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B559F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B55FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B56024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B56054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5606C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B56084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B560B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B560CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B560E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B560FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B56114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5612C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B56144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return CUXPCDecodeSInt64RangedEx();
}

void OUTLINED_FUNCTION_17_0()
{
}

void sub_1C0B58EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B58EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B59820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B59BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5C1C8(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C0B5D724(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1C0B61B10(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1C0B62990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t CBLTV8GetNext(unint64_t a1, unsigned __int8 *a2, _BYTE *a3, void *a4, void *a5, void *a6)
{
  if (a1 == a2)
  {
    return 4294960531;
  }

  if (&a2[-a1] < 1)
  {
    return 4294960591;
  }

  v6 = *a1;
  if (&a2[~a1] < v6)
  {
    return 4294960546;
  }

  if (!*a1)
  {
    return 4294960554;
  }

  v7 = (a1 + 2);
  *a3 = *(a1 + 1);
  *a4 = a1 + 2;
  v8 = (v6 - 1);
  *a5 = v8;
  result = 0;
  if (a6)
  {
    *a6 = &v7[v8];
  }

  return result;
}

uint64_t CBLTV8GetWithType(unint64_t a1, unsigned __int8 *a2, int a3, unsigned __int8 **a4, void *a5)
{
  if (a1 == a2)
  {
    return 4294960531;
  }

  do
  {
    if (a1 == a2)
    {
      return 4294960569;
    }

    if (&a2[-a1] < 1)
    {
      return 4294960591;
    }

    v5 = *a1;
    if (&a2[~a1] < v5)
    {
      return 4294960546;
    }

    if (!*a1)
    {
      return 4294960554;
    }

    v6 = (a1 + 2);
    v7 = *(a1 + 1);
    v8 = v5 - 1;
    a1 += 2 + v8;
  }

  while (v7 != a3);
  if (a4)
  {
    *a4 = v6;
  }

  result = 0;
  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

unint64_t CBLTV8GetSInt64(unint64_t a1, unsigned __int8 *a2, int a3, int *a4)
{
  if (a1 == a2)
  {
    result = 0;
    v8 = -6765;
  }

  else
  {
    do
    {
      if (a1 == a2)
      {
        result = 0;
        v8 = -6727;
        goto LABEL_19;
      }

      v4 = a1;
      if (&a2[-a1] < 1)
      {
        result = 0;
        v8 = -6705;
        goto LABEL_19;
      }

      v5 = *a1;
      if (&a2[~a1] < v5)
      {
        result = 0;
        v8 = -6750;
        goto LABEL_19;
      }

      if (!*a1)
      {
        result = 0;
        v8 = -6742;
        goto LABEL_19;
      }

      v6 = (a1 + 2);
      v7 = *(a1 + 1);
      a1 += 2 + (v5 - 1);
    }

    while (v7 != a3);
    switch(v5)
    {
      case 2:
        v8 = 0;
        result = *v6;
        break;
      case 3:
        v8 = 0;
        result = (*(v4 + 3) << 8) | *(v4 + 2);
        break;
      case 4:
        v8 = 0;
        v11 = *(v4 + 4) << 16;
        goto LABEL_18;
      case 5:
        v8 = 0;
        result = *v6;
        break;
      case 6:
        v8 = 0;
        v10 = *(v4 + 6) << 32;
        goto LABEL_17;
      case 7:
        v8 = 0;
        v12 = *(v4 + 7) << 40;
        goto LABEL_16;
      case 8:
        v8 = 0;
        v12 = (*(v4 + 8) << 48) | (*(v4 + 7) << 40);
LABEL_16:
        v10 = v12 | (*(v4 + 6) << 32);
LABEL_17:
        v11 = v10 | (*(v4 + 5) << 24) | (*(v4 + 4) << 16);
LABEL_18:
        result = v11 | (*(v4 + 3) << 8) | *(v4 + 2);
        break;
      case 9:
        v8 = 0;
        result = *v6;
        break;
      default:
        result = 0;
        v8 = -6743;
        break;
    }
  }

LABEL_19:
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

unint64_t CBLTV8GetUInt64(unint64_t a1, unsigned __int8 *a2, int a3, int *a4)
{
  if (a1 == a2)
  {
    result = 0;
    v8 = -6765;
  }

  else
  {
    do
    {
      if (a1 == a2)
      {
        result = 0;
        v8 = -6727;
        goto LABEL_17;
      }

      v4 = a1;
      if (&a2[-a1] < 1)
      {
        result = 0;
        v8 = -6705;
        goto LABEL_17;
      }

      v5 = *a1;
      if (&a2[~a1] < v5)
      {
        result = 0;
        v8 = -6750;
        goto LABEL_17;
      }

      if (!*a1)
      {
        result = 0;
        v8 = -6742;
        goto LABEL_17;
      }

      v6 = (a1 + 2);
      v7 = *(a1 + 1);
      a1 += 2 + (v5 - 1);
    }

    while (v7 != a3);
    switch(v5)
    {
      case 2:
        v8 = 0;
        result = *v6;
        break;
      case 3:
        v8 = 0;
        result = *(v4 + 2);
        break;
      case 4:
        v8 = 0;
        result = *(v4 + 2) | (*(v4 + 4) << 16);
        break;
      case 5:
        v8 = 0;
        result = *v6;
        break;
      case 6:
        v8 = 0;
        result = *(v4 + 2) | (*(v4 + 6) << 32);
        break;
      case 7:
        v8 = 0;
        result = *(v4 + 2) | (*(v4 + 6) << 32) | (*(v4 + 7) << 40);
        break;
      case 8:
        v8 = 0;
        result = *(v4 + 2) | (*(v4 + 6) << 32) | (*(v4 + 7) << 40) | (*(v4 + 8) << 48);
        break;
      case 9:
        v8 = 0;
        result = *v6;
        break;
      default:
        result = 0;
        v8 = -6743;
        break;
    }
  }

LABEL_17:
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

void CBXpcCreateNSObjectWithXpcObject_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void CBXpcCreateNSObjectWithXpcObject_cold_4(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_ERROR, "xpc_fd_dup failed: errno %d", v4, 8u);

  v3 = *MEMORY[0x1E69E9840];
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