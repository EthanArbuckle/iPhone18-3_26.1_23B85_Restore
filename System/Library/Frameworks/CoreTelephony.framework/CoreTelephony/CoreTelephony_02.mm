void MMSExpiryHeader::~MMSExpiryHeader(MMSExpiryHeader *this)
{
  MMSBinaryHeader::~MMSBinaryHeader(this);
  MEMORY[0x1865E04F0](v1 + 24);
}

{
  MMSBinaryHeader::~MMSBinaryHeader(this);
  MEMORY[0x1865E04F0](v1 + 24);

  JUMPOUT(0x1865E0880);
}

uint64_t MMSIndexedDateHeader::MMSIndexedDateHeader(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *result = &unk_1EF0130C0;
  *(result + 20) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t MMSIndexedDateHeader::decodeValue(MMSIndexedDateHeader *this, MMSPduDecoder *a2)
{
  v5 = 0;
  result = MMSPduDecoder::decodeWspValueLength(a2, &v5);
  if (result)
  {
    result = MMSPduDecoder::decodeWspIntegerValue(a2, this + 6);
    if (result)
    {
      return MMSPduDecoder::decodeWspLongInteger(a2, this + 5);
    }
  }

  return result;
}

uint64_t MMSIndexedDateHeader::encodeValue(MMSIndexedDateHeader *this, MMSPduEncoder *a2)
{
  v8 = 0;
  *__p = 0u;
  v7 = 0u;
  MMSPduEncoder::MMSPduEncoder(__p, *a2);
  MMSPduEncoder::encodeWspIntegerValue(__p, *(this + 6));
  MMSPduEncoder::encodeWspLongInteger(__p, *(this + 5));
  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = v7;
  }

  MMSPduEncoder::encodeWspValueLength(a2, v4);
  MMSPduEncoder::append(a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

uint64_t MMSIndexedDateHeader::valueAsString(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  *__src = 0u;
  *__p = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v10);
  MEMORY[0x1865E0770](&v10, *(a1 + 20));
  if ((BYTE8(v16) & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < __src[1])
    {
      *&v16 = __src[1];
      v5 = __src[1];
    }

    v6 = __src[0];
  }

  else
  {
    if ((BYTE8(v16) & 8) == 0)
    {
      v4 = 0;
      HIBYTE(v9) = 0;
      goto LABEL_14;
    }

    v6 = *(&v11 + 1);
    v5 = *(&v12 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v5 - v6;
  if (v4)
  {
    memmove(&__dst, v6, v4);
  }

LABEL_14:
  *(&__dst + v4) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = __dst;
  *(a2 + 16) = v9;
  *&v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v10 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v10 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v11);
  std::ostream::~ostream();
  MEMORY[0x1865E0820](v17);
  return 1;
}

void MMSIndexedDateHeader::~MMSIndexedDateHeader(MMSIndexedDateHeader *this)
{
  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

const char *CTStewieStatusAsString(unint64_t a1)
{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_1E6A46738[a1];
  }
}

const char *CTStewieStatusReasonAsString(unint64_t a1)
{
  if (a1 > 8)
  {
    return "???";
  }

  else
  {
    return off_1E6A46770[a1];
  }
}

const char *CTStewieServiceStatusReasonAsString(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return "???";
  }

  else
  {
    return off_1E6A467B8[a1];
  }
}

const char *CTStewieTransportTypeAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1E6A46818[a1];
  }
}

__CFString *kCTDataConnectionServiceTypeFromIndex(unsigned int a1)
{
  if (a1 <= 0x23)
  {
    return kDataConnectionTypeMap[a1];
  }

  else
  {
    return @"Err";
  }
}

uint64_t kCTDataConnectionTypeFromString(CFStringRef theString1)
{
  if (!theString1)
  {
    return 36;
  }

  for (i = 0; i != 36; ++i)
  {
    if (CFStringCompare(theString1, kDataConnectionTypeMap[i], 1uLL) == kCFCompareEqualTo)
    {
      break;
    }
  }

  return i;
}

const void *VMCopyDictionaryForNotificationString(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  NetworkNotification::NetworkNotification(v4, a1);
  v1 = NetworkNotification::parsedNotification(v4);
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  NetworkNotification::~NetworkNotification(v4);
  return v2;
}

uint64_t MMSStringHeader::MMSStringHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *v5 = &unk_1EF013150;
  v6 = v5 + 3;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 47) = v8;
  if (v8)
  {
    memmove(v6, v7, v8);
  }

  *(v6 + v9) = 0;
  return a1;
}

uint64_t MMSStringHeader::parseValue(std::string *this, const char *a2)
{
  if (a2)
  {
    std::string::__assign_external(this + 1, a2);
  }

  return 1;
}

BOOL MMSStringHeader::convertString(uint64_t a1, int a2, MMSCharsetHeader *this, MMSCharsetHeader *a4)
{
  v6 = MMSCharsetHeader::cfEncodingForMibEnum(this);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = MMSCharsetHeader::cfEncodingForMibEnum(a4);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a1 + 23);
  v11 = v10 >= 0 ? a1 : *a1;
  v12 = v10 >= 0 ? *(a1 + 23) : *(a1 + 8);
  v13 = CFStringCreateWithBytes(0, v11, v12, v7, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  Length = CFStringGetLength(v13);
  maxBufLen = 0;
  v19.location = 0;
  v19.length = Length;
  CFStringGetBytes(v14, v19, v9, 0x3Fu, 0, 0, 0, &maxBufLen);
  v16 = maxBufLen != 0;
  if (maxBufLen)
  {
    operator new[]();
  }

  CFRelease(v14);
  return v16;
}

void *MMSTextStringHeader::MMSTextStringHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  result = MMSStringHeader::MMSStringHeader(a1, a2, a3);
  *result = &unk_1EF0131C8;
  return result;
}

uint64_t MMSTextStringHeader::encodeValue(MMSTextStringHeader *this, MMSPduEncoder *a2)
{
  v3 = this + 24;
  if (*(this + 47) < 0)
  {
    v3 = *v3;
  }

  MMSPduEncoder::encodeWspTextString(a2, v3);
  return 1;
}

void *MMSQuotedStringHeader::MMSQuotedStringHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  result = MMSStringHeader::MMSStringHeader(a1, a2, a3);
  *result = &unk_1EF013240;
  return result;
}

uint64_t MMSQuotedStringHeader::decodeValue(std::string *this, MMSPduDecoder *a2)
{
  MMSPduDecoder::skipByte(a2);

  return MMSPduDecoder::decodeString(a2, this + 1, 0xFFFFFFFF);
}

uint64_t MMSQuotedStringHeader::encodeValue(MMSQuotedStringHeader *this, MMSPduEncoder *a2)
{
  MMSPduEncoder::encodeByte(a2, 34);
  v4 = this + 24;
  if (*(this + 47) < 0)
  {
    v4 = *v4;
  }

  MMSPduEncoder::encodeString(a2, v4);
  return 1;
}

uint64_t MMSEncodedStringHeader::MMSEncodedStringHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  result = MMSStringHeader::MMSStringHeader(a1, a2, a3);
  *result = &unk_1EF0132B8;
  *(result + 48) = 3;
  if (a3)
  {
    LOBYTE(v5) = *a3;
    if (*a3)
    {
      v6 = 1;
      while ((v5 & 0x80) == 0)
      {
        v5 = a3[v6++];
        if (!v5)
        {
          return result;
        }
      }

      *(result + 48) = 106;
    }
  }

  return result;
}

uint64_t MMSEncodedStringHeader::parseValue(MMSEncodedStringHeader *this, const char *a2)
{
  *(this + 12) = 3;
  LOBYTE(v2) = *a2;
  if (*a2)
  {
    v3 = 1;
    while ((v2 & 0x80) == 0)
    {
      v2 = a2[v3++];
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *(this + 12) = 106;
  }

LABEL_7:
  std::string::__assign_external(this + 1, a2);
  return 1;
}

void *MMSSensitiveEncodedStringHeader::MMSSensitiveEncodedStringHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  result = MMSEncodedStringHeader::MMSEncodedStringHeader(a1, a2, a3);
  *result = &unk_1EF013330;
  return result;
}

void *MMSSubjectHeader::MMSSubjectHeader(uint64_t a1, uint64_t a2, const char *a3)
{
  result = MMSEncodedStringHeader::MMSEncodedStringHeader(a1, a2, a3);
  *result = &unk_1EF0133A8;
  return result;
}

uint64_t MMSSubjectHeader::encodeValue(MMSSubjectHeader *this, MMSPduEncoder *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 3), *(this + 4));
  }

  else
  {
    __p = *(this + 1);
  }

  MMSPduEncoder::encodeEncodedString(a2, &__p, *(this + 12));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

uint64_t MMSIndexedEncodedStringHeader::MMSIndexedEncodedStringHeader(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  result = MMSEncodedStringHeader::MMSEncodedStringHeader(a1, a2, a4);
  *result = &unk_1EF013420;
  *(result + 52) = a3;
  return result;
}

uint64_t MMSIndexedEncodedStringHeader::decodeValue(MMSIndexedEncodedStringHeader *this, MMSPduDecoder *a2)
{
  v5 = 0;
  result = MMSPduDecoder::decodeWspValueLength(a2, &v5);
  if (result)
  {
    result = MMSPduDecoder::decodeWspIntegerValue(a2, this + 13);
    if (result)
    {
      v6 = 0;
      return MMSPduDecoder::decodeEncodedString(a2, this + 1, this + 12, &v6);
    }
  }

  return result;
}

uint64_t MMSIndexedEncodedStringHeader::encodeValue(MMSIndexedEncodedStringHeader *this, MMSPduEncoder *a2)
{
  v8 = 0;
  *__p = 0u;
  v7 = 0u;
  MMSPduEncoder::MMSPduEncoder(__p, *a2);
  MMSPduEncoder::encodeWspIntegerValue(__p, *(this + 13));
  MMSPduEncoder::encodeEncodedString(__p, this + 24, *(this + 12));
  if (v7 >= 0)
  {
    v4 = HIBYTE(v7);
  }

  else
  {
    v4 = v7;
  }

  MMSPduEncoder::encodeWspValueLength(a2, v4);
  MMSPduEncoder::append(a2, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

void MMSTextStringHeader::~MMSTextStringHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSQuotedStringHeader::~MMSQuotedStringHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSEncodedStringHeader::~MMSEncodedStringHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSSensitiveEncodedStringHeader::~MMSSensitiveEncodedStringHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSSubjectHeader::~MMSSubjectHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void MMSIndexedEncodedStringHeader::~MMSIndexedEncodedStringHeader(void **this)
{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF013150;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void sub_182F33A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void handleUnsupportedRequestForCurrentBundle(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_11;
  }

  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    v5 = CTLogCoreAnalytics();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v8 = 136315138;
    v9 = a1;
    v6 = "No bundle found for unsupported request '%s'";
LABEL_10:
    _os_log_impl(&dword_182E9B000, v5, OS_LOG_TYPE_DEFAULT, v6, &v8, 0xCu);
    goto LABEL_11;
  }

  Identifier = CFBundleGetIdentifier(MainBundle);
  v4 = CTLogCoreAnalytics();
  v5 = v4;
  if (!Identifier)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v8 = 136315138;
    v9 = a1;
    v6 = "No bundle ID found for unsupported request '%s'";
    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    handleUnsupportedRequestForCurrentBundle(a1, Identifier, v5);
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_182F3515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F35444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F355C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F357AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F35A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F35C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F35CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F35EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F3610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F36288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F36450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F365A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F36784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F36984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F36D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CTTelephonyNetworkInfo;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_182F37874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13)
{
  if (v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F37D64(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::isSlotOne(_anonymous_namespace_ *this, CTServiceDescriptor *a2)
{
  v2 = [(_anonymous_namespace_ *)this instance];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v4 = [v2 isEqualToNumber:v3];

  return v4;
}

void sub_182F382DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_182F384D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_182F38704(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void __copy_helper_atomic_property_(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __assign_helper_atomic_property_(NSObject **a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {

    dispatch_release(v4);
  }
}

const char *CTCellularHealthStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return "CTCellularHealthUnknown";
  }

  else
  {
    return off_1E6A470E8[a1 - 1];
  }
}

const char *CTStewieNotifyOptionAsString(unint64_t a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_1E6A471A8[a1];
  }
}

void sub_182F3A5FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F3B818(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F3BA80(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::sIsPhoneNumberValid(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = a2;
  v3 = this;
  v4 = v3;
  if (v2 && [(_anonymous_namespace_ *)v3 hasPrefix:@"+"])
  {
    v5 = [v4 substringFromIndex:1];

    v4 = v5;
  }

  if (v4 && [v4 length] && objc_msgSend(v4, "length") <= 0xF)
  {
    v6 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v4];
    v8 = [v6 isSupersetOfSet:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_182F3C50C(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F3CA5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F3D37C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_182F3DA78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL anonymous namespace::sIsShortHandleValid(_anonymous_namespace_ *this, NSNumber *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    [(_anonymous_namespace_ *)v2 unsignedLongLongValue];
    v4 = [(_anonymous_namespace_ *)v3 unsignedLongLongValue]>> 57 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_182F3E61C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_182F3F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  if (v18 != v19)
  {
  }

  if (v15 != v16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F40100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a16 != v23)
  {
  }

  if (v21 != v22)
  {
  }

  if (v17 != v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F40E28(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F40F94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F41BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F42D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  if (a13 != a16)
  {
  }

  if (a21 != a20)
  {
  }

  if (v26 != v27)
  {
  }

  if (v22 != v23)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F436E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F43940(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F439D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F43AD0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F43D04(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F44178(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_182F446B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t CTCellularDataPlanSetIsEnabled(unsigned int a1)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionSetCellularDataIsEnabled(Default, a1);
}

uint64_t CTCellularDataPlanSetWebsheetVisibility(unsigned int a1)
{
  Default = CTTelephonyCenterGetDefault();

  return _CTServerConnectionSetDataPlanWebsheetVisibility(Default, a1);
}

const char *CTNetworkSelectionStateAsString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return "CTNetworkSelectionStateUnknown";
  }

  else
  {
    return off_1E6A471F8[a1 - 1];
  }
}

const char *CTNetworkSelectionModeAsString(uint64_t a1)
{
  v1 = "CTNetworkSelectionModeDisabled";
  if (a1 == 2)
  {
    v1 = "CTNetworkSelectionModeManual";
  }

  if (a1 == 1)
  {
    return "CTNetworkSelectionModeAutomatic";
  }

  else
  {
    return v1;
  }
}

id CTNetworkSelectionModeToNetworkSelectionModeString(uint64_t a1)
{
  v1 = kCTRegistrationNetworkSelectionModeAutomatic;
  v2 = kCTRegistrationNetworkSelectionModeManual;
  if (a1 != 2)
  {
    v2 = kCTRegistrationNetworkSelectionModeDisabled;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  return *v1;
}

const char *CTConnectionPairStateAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_1E6A47278[a1];
  }
}

const char *CTConnectionPairConnectionIDAsString(uint64_t a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kCTConnectionPairConnectionIDTwo";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kCTConnectionPairConnectionIDOne";
  }
}

void sub_182F45984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 40));

  objc_destroyWeak((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_182F45E9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_182F461A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CTConnectionPair;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id **_ZNSt3__110unique_ptrIZZ32__CTConnectionPair_receiveData__EUb_E3__0NS_14default_deleteIS1_EEED1B8nn200100Ev(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0x10C0C40FA4D3208);
  }

  return a1;
}

id **_ZZN8dispatch5asyncIZZ32__CTConnectionPair_receiveData__EUb_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(uint64_t a1)
{
  v6 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 3);
    [v4 receivedData:*(a1 + 8) fromConnectionId:*(a1 + 16)];

    if (v3[5])
    {
      if (v3[9] && v3[4] == 1)
      {
        [v3 receiveData:*(a1 + 16)];
      }
    }
  }

  return _ZNSt3__110unique_ptrIZZ32__CTConnectionPair_receiveData__EUb_E3__0NS_14default_deleteIS1_EEED1B8nn200100Ev(&v6);
}

void sub_182F46338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  _ZNSt3__110unique_ptrIZZ32__CTConnectionPair_receiveData__EUb_E3__0NS_14default_deleteIS1_EEED1B8nn200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_182F46420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F465EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F46760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F46970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F46B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_182F46C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F46E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F47098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v10 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F471C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F473D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F47570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F47654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182F47840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F48BB0(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_182F48CFC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_182F48E34(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t std::pair<objc_object * const,anonymous namespace::DelegateContext>::~pair(uint64_t a1)
{
  objc_destroyWeak((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void anonymous namespace::DelegateContext::~DelegateContext(id *this)
{
  objc_destroyWeak(this + 1);
  if (*this)
  {
    dispatch_release(*this);
  }
}

void anonymous namespace::sCTAssertionDestroy(id *this, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = CTLogClient();
  v4 = v3;
  if (this)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = this;
      _os_log_impl(&dword_182E9B000, v4, OS_LOG_TYPE_DEFAULT, "enter sCTAssertionDestroy for assertion %@", &v12, 0xCu);
    }

    v5 = this[2];
    if (v5)
    {
      [v5 setAssertionForConnectionType:*(this + 8) enable:0 completion:&__block_literal_global_1016];
    }

    else
    {
      v6 = CTLogClient();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
      }
    }

    WeakRetained = objc_loadWeakRetained(this + 3);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeAssertionForInvalidationNotification:this];
    }

    else
    {
      v9 = CTLogClient();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
      }
    }

    v10 = this[2];
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

CFStringRef anonymous namespace::sCTAssertionCopyDescription(CFStringRef this, const void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetAllocator(this);
    return CFStringCreateWithFormat(v3, 0, @"<CTClientAssertion %p [%p]>", v2, v3);
  }

  return this;
}

void ___ZN12_GLOBAL__N_119sCTAssertionDestroyEPKv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = CTLogClient();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN12_GLOBAL__N_119sCTAssertionDestroyEPKv_block_invoke_cold_1();
    }
  }

  else
  {
    v4 = CTLogClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_182E9B000, v4, OS_LOG_TYPE_DEFAULT, "sCTAssertionDestroy succeeded", v5, 2u);
    }
  }
}

void sub_182F4AA70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_182F4B004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, id *a15, dispatch_object_t object, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v27 - 120) = &a22;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100]((v27 - 120));

  a22 = &a19;
  std::vector<Protocol * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a22);

  objc_destroyWeak(&a17);
  if (object)
  {
    dispatch_release(object);
  }

  std::unique_ptr<-[CoreTelephonyClientMux addDelegate:queue:]::$_1>::~unique_ptr[abi:nn200100](&a15);
  _Unwind_Resume(a1);
}

void ___ZZ44__CoreTelephonyClientMux_addDelegate_queue__ENK3__1clEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (isFrameworkLoggingSupported())
    {
      v3 = CTLogClient();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ___ZZ44__CoreTelephonyClientMux_addDelegate_queue__ENK3__1clEv_block_invoke_cold_1();
      }
    }
  }
}

void sub_182F4B248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientMux removeDelegate:]::$_2>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ___ZZ41__CoreTelephonyClientMux_removeDelegate__ENK3__2clEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (isFrameworkLoggingSupported())
    {
      v3 = CTLogClient();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ___ZZ41__CoreTelephonyClientMux_removeDelegate__ENK3__2clEv_block_invoke_cold_1();
      }
    }
  }
}

void sub_182F4B35C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ___ZN8dispatch9sync_implIZ54__CoreTelephonyClientMux_proxyWithQueue_errorHandler__E3__4EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [**v1 _setReconnectError_sync:0];
  [**v1 _ensureConnectionSetup_sync];
  v2 = [CoreTelephonyClientRemoteAsyncProxy alloc];
  v3 = *(**v1 + 80);
  v4 = **(v1 + 16);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = [(CoreTelephonyClientRemoteAsyncProxy *)v2 initWithXPCObject:v3 userQueue:&object errorHandler:**(v1 + 24)];
  v6 = *(v1 + 8);
  v7 = *v6;
  *v6 = v5;

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_182F4B420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8dispatch9sync_implIZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__E3__5EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*v1 _setReconnectError_sync:0];
  [*v1 _ensureConnectionSetup_sync];
  v2 = objc_autoreleasePoolPush();
  v3 = *(*v1 + 80);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__ENK3__5clEv_block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v8 = *(v1 + 16);
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v5 = *(v1 + 8);
  v6 = *v5;
  *v5 = v4;

  objc_autoreleasePoolPop(v2);
}

void ___ZZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__ENK3__5clEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (isFrameworkLoggingSupported())
  {
    v4 = CTLogClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___ZZ59__CoreTelephonyClientMux_synchronousProxyWithErrorHandler__ENK3__5clEv_block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_182F4B634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientMux sink:handleNotification:]::$_3>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ___ZN8dispatch9sync_implIZ69__CoreTelephonyClientMux_removeAssertionForInvalidationNotification__E3__7EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__erase_unique<__CTAssertionType *>((**(a1 + 32) + 40), (*(a1 + 32) + 8));
  v2 = CTLogClient();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (!v3)
    {
      return;
    }

    v6 = 0;
    v4 = "removed assertion from InvalidationNotification list";
    v5 = &v6;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    *buf = 0;
    v4 = "assertion not found from InvalidationNotification list";
    v5 = buf;
  }

  _os_log_impl(&dword_182E9B000, v2, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
}

uint64_t std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__erase_unique<__CTAssertionType *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__remove_node_pointer(a1, v4);
  std::__destroy_at[abi:nn200100]<std::pair<__CTAssertionType * const,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

void std::__destroy_at[abi:nn200100]<std::pair<__CTAssertionType * const,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    dispatch_release(v2);
  }
}

uint64_t std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>::~pair(uint64_t a1)
{
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void ___ZN8dispatch9sync_implIZ90__CoreTelephonyClientMux_registerBlockForInvalidationNotification_callbackQueue_callback__E3__9EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = v1[3];
  if (v3)
  {
    dispatch_retain(v1[3]);
  }

  *&object = v3;
  *(&object + 1) = _Block_copy(v1[2]);
  std::map<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>::insert_or_assign[abi:nn200100]<std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>((v2 + 40), v1 + 1, &object);

  if (object)
  {
    dispatch_release(object);
  }

  if (isFrameworkLoggingSupported())
  {
    v4 = CTLogClient();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v1[1];
      LODWORD(object) = 138412290;
      *(&object + 4) = v5;
      _os_log_impl(&dword_182E9B000, v4, OS_LOG_TYPE_DEFAULT, "assertion %@ added to the invalidation notice list", &object, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t std::map<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>::insert_or_assign[abi:nn200100]<std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>(void *a1, unint64_t *a2, uint64_t *a3)
{
  v5 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v7 = *a2;
    v8 = a1 + 1;
    do
    {
      v9 = v6[4];
      v10 = v9 >= v7;
      v11 = v9 < v7;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 != v5 && v7 >= v8[4])
    {
      std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>::operator=[abi:nn200100]((v8 + 5), a3);
      return v8;
    }

    v5 = v8;
  }

  return std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__emplace_hint_unique_key_args<__CTAssertionType *,__CTAssertionType * const&,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>(a1, v5, a2);
}

uint64_t std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>::operator=[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  return a1;
}

uint64_t std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__emplace_hint_unique_key_args<__CTAssertionType *,__CTAssertionType * const&,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<objc_selector *,objc_selector *>,std::__map_value_compare<objc_selector *,std::__value_type<objc_selector *,objc_selector *>,std::less<objc_selector *>,true>,std::allocator<std::__value_type<objc_selector *,objc_selector *>>>::__find_equal<objc_selector *>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<__CTAssertionType * const,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t ___ZN8dispatch9sync_implIU13block_pointerFU13block_pointerFvP6CTCallEvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS7_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIU13block_pointerFP5NSSetvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch9sync_implIU13block_pointerFP8NSStringvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_182F4CE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4D0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4D358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4D5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4E150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4E3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_182F4E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MMSConstrainedHeader::MMSConstrainedHeader(uint64_t a1, uint64_t a2)
{
  result = MMSBinaryHeader::MMSBinaryHeader(a1, a2);
  *result = &unk_1EF0136A0;
  *(result + 20) = 0;
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) = 0;
  return result;
}

uint64_t MMSConstrainedHeader::parseValue(MMSConstrainedHeader *this, MMSContentType *a2)
{
  v4 = MMSContentType::encodedContentTypeForName(a2, a2);
  if (v4)
  {
    *(this + 5) = v4;
  }

  else if (a2)
  {
    std::string::__assign_external(this + 1, a2);
  }

  return 1;
}

uint64_t MMSConstrainedHeader::valueAsString(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 20);
  if ((v3 & 0x80) != 0)
  {

    return MMSContentType::nameForEncodedContentType(v3, this);
  }

  else
  {
    std::string::operator=(this, (a1 + 24));
    return 1;
  }
}

uint64_t MMSConstrainedHeader::decodeValue(MMSConstrainedHeader *this, MMSPduDecoder *a2)
{
  v6 = 0;
  v4 = MMSPduDecoder::peekByte(a2, &v6);
  result = 0;
  if (v4)
  {
    if (v6 < 0)
    {
      return MMSPduDecoder::decodeWspShortInteger(a2, this + 5);
    }

    else
    {
      return MMSPduDecoder::decodeWspExtensionMedia(a2, this + 1);
    }
  }

  return result;
}

uint64_t MMSConstrainedHeader::encodeValue(MMSConstrainedHeader *this, MMSPduEncoder *a2)
{
  v3 = *(this + 5);
  if ((v3 & 0x80) != 0)
  {
    MMSPduEncoder::encodeWspShortInteger(a2, v3);
  }

  else
  {
    v4 = this + 24;
    if (*(this + 47) < 0)
    {
      v4 = *v4;
    }

    MMSPduEncoder::encodeHttpToken(a2, v4);
  }

  return 1;
}

void MMSConstrainedHeader::~MMSConstrainedHeader(void **this)
{
  *this = &unk_1EF0136A0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);
}

{
  *this = &unk_1EF0136A0;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  MMSBinaryHeader::~MMSBinaryHeader(this);

  JUMPOUT(0x1865E0880);
}

void sub_182F5392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182F53B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F53DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);

  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F54120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F54308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_182F544F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_182F54688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_182F54898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v23 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F54BD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t MMSPduDecoder::MMSPduDecoder(ctu::OsLogLogger *a1, uint64_t a2, int a3, int a4)
{
  result = ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony", "msg.mms.pdu");
  *(result + 24) = 106;
  *(result + 28) = 106;
  *(result + 32) = 1;
  *(result + 34) = 1;
  *(result + 36) = a4;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 20) = 0;
  return result;
}

void MMSPduDecoder::MMSPduDecoder(MMSPduDecoder *this, MMSPduDecoder *a2, unint64_t a3)
{
  v5 = ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony", "msg.mms.pdu");
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = *(a2 + 3);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 33) = *(a2 + 33);
  *(v5 + 34) = *(a2 + 34);
  *(v5 + 36) = *(a2 + 9);
  v6 = *(a2 + 5);
  v7 = (*(a2 + 4) - v6);
  if (v7 >= a3)
  {
    LODWORD(v7) = a3;
  }

  *(v5 + 8) = *(a2 + 1) + v6;
  *(v5 + 16) = v7;
  *(v5 + 20) = 0;
}

BOOL MMSPduDecoder::peekByte(MMSPduDecoder *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2 < v3)
  {
    *a2 = *(*(this + 1) + v2);
  }

  return v2 < v3;
}

BOOL MMSPduDecoder::decodeByte(MMSPduDecoder *this, unsigned __int8 *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2 < v3)
  {
    v4 = *(this + 1);
    *(this + 5) = v2 + 1;
    *a2 = *(v4 + v2);
  }

  return v2 < v3;
}

uint64_t MMSPduDecoder::skipByte(uint64_t this)
{
  v1 = *(this + 20);
  if (v1 < *(this + 16))
  {
    *(this + 20) = v1 + 1;
  }

  return this;
}

uint64_t MMSPduDecoder::decodeHttpToken(uint64_t a1, std::string *a2)
{
  result = MMSPduDecoder::decodeString(a1, a2, 0xFFFFFFFF);
  if (result)
  {
    if (*(a1 + 33) == 1 && ((v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]), v5 >= 0) ? (size = HIBYTE(a2->__r_.__value_.__r.__words[2])) : (size = a2->__r_.__value_.__l.__size_), size))
    {
      v7 = 0;
      if (v5 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = a2->__r_.__value_.__r.__words[0];
      }

      v9 = 1;
      while (1)
      {
        v10 = v8->__r_.__value_.__s.__data_[v7];
        if (v10 < 0 || memchr("()<>@,;:\\/[]?={} \t", v10, 0x14uLL))
        {
          break;
        }

        v7 = v9;
        if (size <= v9++)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t MMSPduDecoder::decodeString(uint64_t a1, std::string *this, unsigned int a3)
{
  if (a3 == -1)
  {
    v5 = *(a1 + 20);
    v6 = (*(a1 + 16) - v5);
    if (v6)
    {
      v7 = 0;
      while (*(*(a1 + 8) + v5 + v7))
      {
        if (v6 == ++v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v7 == v6 || *(*(a1 + 8) + v5 + v7))
    {
      goto LABEL_18;
    }

    v4 = v7 + 1;
  }

  else
  {
    v4 = a3;
    if (!a3)
    {
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        *this->__r_.__value_.__l.__data_ = 0;
        this->__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        this->__r_.__value_.__s.__data_[0] = 0;
        *(&this->__r_.__value_.__s + 23) = 0;
      }

      return 1;
    }

    LODWORD(v5) = *(a1 + 20);
    LODWORD(v6) = *(a1 + 16) - v5;
  }

  if (v4 <= v6)
  {
    std::string::__assign_external(this, (*(a1 + 8) + v5), v4 - 1);
    *(a1 + 20) += v4;
    return 1;
  }

LABEL_18:
  result = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  return result;
}

uint64_t MMSPduDecoder::decodeWspTextString(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 20);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*(a1 + 8) + v2);
  if (*(a1 + 33) == 1 && v3 < 0)
  {
    return 0;
  }

  if (v3 == 127)
  {
    *(a1 + 20) = v2 + 1;
  }

  return MMSPduDecoder::decodeString(a1, a2, 0xFFFFFFFF);
}

uint64_t MMSPduDecoder::decodeWspValueLength(MMSPduDecoder *this, unsigned int *a2)
{
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
    return 0;
  }

  v3 = *(this + 1);
  *(this + 5) = v2 + 1;
  v4 = *(v3 + v2);
  if (v4 > 0x1F)
  {
    return 0;
  }

  if (v4 == 31)
  {
    return MMSPduDecoder::decodeWspUintvarInteger(this, a2);
  }

  *a2 = v4;
  return 1;
}

uint64_t MMSPduDecoder::decodeWspUintvarInteger(MMSPduDecoder *this, unsigned int *a2)
{
  v2 = 0;
  *a2 = 0;
  v3 = 5;
  while (1)
  {
    v5 = *(this + 4);
    v4 = *(this + 5);
    if (v5 == v4)
    {
      return 0;
    }

    if (v4 >= v5)
    {
      break;
    }

    v6 = *(this + 1);
    *(this + 5) = v4 + 1;
    v7 = *(v6 + v4);
    v2 = v7 & 0x7F | (*a2 << 7);
    *a2 = v2;
    if ((v7 & 0x80) == 0)
    {
      return 1;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  *a2 = v2 << 7;
  return 1;
}

uint64_t MMSPduDecoder::decodeWspLongInteger(MMSPduDecoder *this, unsigned int *a2)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2 >= v3)
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v2 + 1;
  *(this + 5) = v2 + 1;
  v6 = *(v4 + v2);
  if (v6 > 0x1E || v3 - v5 < v6)
  {
    return 0;
  }

  *a2 = 0;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(this + 5);
      if (v10 < *(this + 4))
      {
        *(this + 5) = v10 + 1;
        v9 = *(v4 + v10);
        v8 = *a2;
      }

      v8 = v9 | (v8 << 8);
      *a2 = v8;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t MMSPduDecoder::decodeWspShortInteger(MMSPduDecoder *this, unsigned int *a2)
{
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
    return 0;
  }

  v3 = *(this + 1);
  *(this + 5) = v2 + 1;
  v4 = *(v3 + v2);
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  *a2 = v4 & 0x7F;
  return 1;
}

uint64_t MMSPduDecoder::decodeWspIntegerValue(MMSPduDecoder *this, unsigned int *a2)
{
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
    return 0;
  }

  v3 = *(this + 1);
  if ((*(v3 + v2) & 0x80000000) == 0)
  {
    return MMSPduDecoder::decodeWspLongInteger(this, a2);
  }

  *(this + 5) = v2 + 1;
  v5 = *(v3 + v2);
  if ((v5 & 0x80000000) == 0)
  {
    return 0;
  }

  *a2 = v5 & 0x7F;
  return 1;
}

BOOL MMSPduDecoder::convertStringToTargetCharset(uint64_t a1, int a2, MMSCharsetHeader *a3, MMSCharsetHeader *a4)
{
  v4 = 0;
  if (a3 != a4 && a4)
  {
    if (a4 != 106 || a3 != 3)
    {
      return MMSStringHeader::convertString(a1, a2, a3, a4);
    }

    return 1;
  }

  return v4;
}

uint64_t MMSPduDecoder::decodeEncodedString(MMSPduDecoder *this, std::string *a2, unsigned int *a3, _DWORD *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5);
  if (v4 >= *(this + 4))
  {
    goto LABEL_20;
  }

  if (*(*(this + 1) + v4) == 127)
  {
    *(this + 5) = v4 + 1;
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    v13 = MMSPduDecoder::decodeString(this, a2, 0xFFFFFFFF);
    v17 = 4;
    *a3 = 4;
    if (a4)
    {
      *a4 = 4;
      v17 = *a3;
    }

    v14 = (this + 24);
    if (MMSPduDecoder::convertStringToTargetCharset(a2, a2, v17, *(this + 6)))
    {
      goto LABEL_38;
    }

    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::decodeEncodedString(a3, v14);
    }
  }

  else
  {
    if (!*(*(this + 1) + v4))
    {
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        *a2->__r_.__value_.__l.__data_ = 0;
        a2->__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        a2->__r_.__value_.__s.__data_[0] = 0;
        *(&a2->__r_.__value_.__s + 23) = 0;
      }

      v15 = *(this + 6);
      if (!v15)
      {
        v15 = 106;
      }

      *a3 = v15;
      if (a4)
      {
        *a4 = v15;
      }

      v16 = *(this + 5);
      if (v16 < *(this + 4))
      {
        *(this + 5) = v16 + 1;
      }

      goto LABEL_33;
    }

    v25 = 0;
    if (MMSPduDecoder::decodeWspValueLength(this, &v25))
    {
      v9 = v25;
      if (v25 >= 2)
      {
        v10 = *(this + 4) - *(this + 5);
        if (v10 >= v25)
        {
          if (MMSPduDecoder::decodeWspIntegerValue(this, a3))
          {
            if (a4)
            {
              *a4 = *a3;
            }

            v11 = *(this + 4);
            v12 = *(this + 5);
            if (v12 < v11 && *(*(this + 1) + v12) == 127)
            {
              *(this + 5) = ++v12;
            }

            v13 = MMSPduDecoder::decodeString(this, a2, v9 + v11 - (v10 + v12));
            v14 = (this + 24);
            if (!MMSPduDecoder::convertStringToTargetCharset(a2, a2, *a3, *(this + 6)))
            {
              if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
              {
                MMSPduDecoder::decodeEncodedString(a3, v14);
              }

              goto LABEL_43;
            }

LABEL_38:
            *a3 = *v14;
            goto LABEL_43;
          }
        }
      }

LABEL_20:
      v13 = 0;
      goto LABEL_43;
    }

    *(this + 5) = v4;
    *a3 = 106;
    if (a4)
    {
      *a4 = 106;
    }

    v13 = MMSPduDecoder::decodeWspTextString(this, a2);
    if (v13 && MMSPduDecoder::convertStringToTargetCharset(a2, a2, *a3, *(this + 6)))
    {
      *a3 = *(this + 6);
LABEL_33:
      v13 = 1;
      goto LABEL_43;
    }

    v18 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      v21 = MMSCharsetHeader::charsetNameForMibEnum(*a3);
      v22 = *a3;
      v23 = MMSCharsetHeader::charsetNameForMibEnum(*(this + 6));
      v24 = *(this + 6);
      *buf = 136316162;
      v27 = v21;
      v28 = 1024;
      v29 = v22;
      v30 = 2080;
      v31 = v23;
      v32 = 1024;
      v33 = v24;
      v34 = 1024;
      v35 = v13;
      _os_log_error_impl(&dword_182E9B000, v18, OS_LOG_TYPE_ERROR, "unable to convert from charset %s (%d) to %s (%d) decodeWspSuccess = (%d)", buf, 0x28u);
    }
  }

LABEL_43:
  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t MMSPduDecoder::skip(uint64_t this, unsigned int a2)
{
  v2 = *(this + 20);
  v3 = *(this + 16) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(this + 20) = v3 + v2;
  return this;
}

std::string *MMSPduDecoder::printableBytes(std::string *result, unsigned int a2, unsigned int a3, std::string *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3 - a2;
  if (a3 > a2)
  {
    v6 = result;
    v12 = 0;
    *__str = 0;
    v7 = a3 - 1;
    v8 = a2;
    do
    {
      snprintf(__str, 0xAuLL, "%.2hhx", *(v6->__r_.__value_.__l.__size_ + v8));
      v9 = strlen(__str);
      result = std::string::append(a4, __str, v9);
      if (v7 != v8)
      {
        result = std::string::append(a4, " ", 1uLL);
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void MMSPduDecoder::decodeSimpleHeader(MMSPduDecoder *this, const MMSHeaderEncodingMap *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(&v3, 0, sizeof(v3));
  v2 = *(this + 5);
  operator new();
}

uint64_t MMSPduDecoder::decodeEncodedHeader(MMSPduDecoder *this, const MMSHeaderEncodingMap *a2)
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  memset(&v23, 0, sizeof(v23));
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v4 = *(this + 1);
  *(this + 5) = v2 + 1;
  v5 = *(v4 + v2) & 0x7F;
  v6 = MMSHeaderEncodingMap::encodingForNumber(a2, v5);
  if (!v6)
  {
    v14 = *(this + 5);
    if ((*(this + 4) - v14) >= 0x1E)
    {
      v15 = 30;
    }

    else
    {
      v15 = *(this + 4) - v14;
    }

    MMSPduDecoder::printableBytes(this, v14 - 1, v15 + v14, &v23);
    v16 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      v19 = *(this + 5);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v23;
      }

      else
      {
        v20 = v23.__r_.__value_.__r.__words[0];
      }

      *buf = 67109890;
      *v25 = v5;
      *&v25[4] = 1024;
      *&v25[6] = v19;
      *v26 = 1024;
      *&v26[2] = v15;
      LOWORD(v27[0]) = 2080;
      *(v27 + 2) = v20;
      _os_log_error_impl(&dword_182E9B000, v16, OS_LOG_TYPE_ERROR, "unknown header encoding 0x%.2x at byte %u: next %d bytes %s", buf, 0x1Eu);
    }

    goto LABEL_15;
  }

  v7 = v6;
  MMSPduDecoder::printableBytes(this, v2, *(this + 5), &v23);
  v8 = *(this + 5);
  v9 = (*(**(v7 + 32) + 96))(*(v7 + 32));
  v10 = v9;
  if (v9)
  {
    v11 = *(this + 5);
    if (((*(*v9 + 24))(v9, this) & 1) == 0)
    {
      if ((*(this + 4) - *(this + 5)) >= 0x1E)
      {
        v12 = 30;
      }

      else
      {
        v12 = *(this + 4) - *(this + 5);
      }

      std::string::append(&v23, " ", 1uLL);
      MMSPduDecoder::printableBytes(this, *(this + 5) - 1, *(this + 5) + v12, &v23);
      v13 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        v21 = (*(*v10 + 64))(v10);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = &v23;
        }

        else
        {
          v22 = v23.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *v25 = v21;
        *&v25[8] = 1024;
        *v26 = v12;
        *&v26[4] = 2080;
        *v27 = v22;
        _os_log_error_impl(&dword_182E9B000, v13, OS_LOG_TYPE_ERROR, "unable to decode encoded header '%s': next %d bytes: %s", buf, 0x1Cu);
      }

      (*(*v10 + 8))(v10);
      v10 = 0;
      *(this + 5) = v11;
    }

    std::string::append(&v23, ": ", 2uLL);
    MMSPduDecoder::printableBytes(this, v8, *(this + 5), &v23);
  }

LABEL_16:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t MMSPduDecoder::decodeHeader(MMSPduDecoder *this, const MMSHeaderEncodingMap *a2)
{
  v2 = *(this + 5);
  if (v2 >= *(this + 4))
  {
    return 0;
  }

  if ((*(*(this + 1) + v2) & 0x80000000) == 0)
  {
    if (*(this + 34) == 1)
    {
      MMSPduDecoder::decodeSimpleHeader(this, a2);
    }

    return 0;
  }

  return MMSPduDecoder::decodeEncodedHeader(this, a2);
}

uint64_t MMSPduDecoder::decodeSpecificHeader(MMSPduDecoder *this, const MMSHeaderEncodingMap *a2, const char *a3, int a4)
{
  v4 = *(this + 5);
  if (v4 >= *(this + 4))
  {
    return 0;
  }

  v9 = MMSHeaderEncodingMap::encodingForNumber(a2, *(*(this + 1) + v4) & 0x7F);
  if (!v9 || std::string::compare((v9 + 8), a3))
  {
    if (a4)
    {
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        MMSPduDecoder::decodeSpecificHeader();
      }
    }

    return 0;
  }

  return MMSPduDecoder::decodeHeader(this, a2);
}

uint64_t MMSPduDecoder::decodeMessageHeaders(MMSPduDecoder *this, MMSMessageWrapper *a2)
{
  if (_MergedGlobals_3[0] == 1)
  {
    if (qword_1ED5164B0)
    {
LABEL_3:
      v4 = &qword_1ED5164B0;
      v5 = 1;
      do
      {
        v6 = (*(*a2 + 16))(a2);
        v7 = MMSPduDecoder::decodeSpecificHeader(this, v6, *v4, *(v4 + 8));
        if (v7)
        {
          MMSHeaderContainer::addHeader(a2, v7, 0);
        }

        else if (v4[1])
        {
          return 0;
        }

        v8 = &_MergedGlobals_3[16 * v5];
        v9 = *(v8 + 1);
        v4 = (v8 + 8);
        ++v5;
      }

      while (v9);
    }
  }

  else
  {
    MMSPduDecoder::decodeMessageHeaders(&v11);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  return MMSPduDecoder::decodeHeaders(this, a2);
}

uint64_t MMSPduDecoder::decodeHeaders(MMSPduDecoder *this, MMSHeaderContainer *a2)
{
  while (1)
  {
    if (*(this + 4) == *(this + 5))
    {
      return 1;
    }

    v4 = (*(*a2 + 16))(a2);
    v5 = MMSPduDecoder::decodeHeader(this, v4);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = 1;
    MMSHeaderContainer::addHeader(a2, v5, 1);
    v8 = (*(*v6 + 64))(v6);
    if (!strcmp(v8, "Content-Type"))
    {
      return v7;
    }
  }

  return 0;
}

uint64_t MMSPduDecoder::convertMimePartBody(MMSPduDecoder *this, const std::string::value_type **a2)
{
  v4 = MMSHeaderContainer::contentType(a2);
  v5 = MMSParameterContainer::charset((v4 + 1));
  if (!v5)
  {
    v5 = *(this + 7);
    MMSParameterContainer::setCharset((v4 + 1), *(this + 7));
  }

  v6 = (this + 24);
  if (v5 == *(this + 6))
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  std::string::__assign_external(&v12, a2[9], *(a2 + 24));
  if (MMSPduDecoder::convertStringToTargetCharset(&v12, &v12, v5, *v6) || MMSStringHeader::convertString(&v12, &v12, *v6, *v6) || MMSStringHeader::convertString(&v12, &v12, 3, *v6))
  {
    v8 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v12.__r_.__value_.__r.__words[1];
    }

    MMSMimePart::setBody(a2, v9, v8);
    MMSParameterContainer::setCharset((v4 + 1), *v6);
    v10 = MMSHeaderContainer::headerWithName(a2, "Content-Disposition");
    if (v10)
    {
      MMSParameterContainer::setCharset((v10 + 32), *v6);
    }

    v7 = 1;
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::convertMimePartBody(v5, this + 6);
    }

    v7 = 0;
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

MMSHeaderContainer *MMSPduDecoder::decodeMultipartAlternativePart(os_log_t *this)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  if (MMSPduDecoder::decodeMultipartBody(this, &__p))
  {
    v2 = __p;
    if (v9 != __p)
    {
      v3 = 0;
      v4 = 0;
      v5 = 1;
      while (1)
      {
        if (v4)
        {
          if (compareParts(v4, v2[v3]) < 1)
          {
            v2 = __p;
            v6 = *(__p + v3);
            if (v6)
            {
              (*(*v6 + 8))(v6);
              v2 = __p;
            }

            goto LABEL_8;
          }

          (*(*v4 + 8))(v4);
          v2 = __p;
        }

        v4 = v2[v3];
LABEL_8:
        v3 = v5++;
        if (v3 >= (v9 - v2) >> 3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
  {
    MMSPduDecoder::decodeMultipartAlternativePart();
  }

  v4 = 0;
LABEL_15:
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v4;
}

BOOL MMSPduDecoder::decodeMultipartBody(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v4 = *(a1 + 20);
  if (MMSPduDecoder::decodeWspUintvarInteger(a1, &v16))
  {
    memset(&__p, 0, sizeof(__p));
    MMSPduDecoder::printableBytes(a1, v4, *(a1 + 20), &__p);
    v5 = v16;
    if (v16)
    {
      *buf = MMSPduDecoder::decodeMimePart(a1);
      if (!*buf)
      {
        v7 = 0;
LABEL_19:
        v10 = *a2;
        v11 = a2[1];
        if (*a2 != v11)
        {
          do
          {
            if (*v10)
            {
              (*(**v10 + 8))(*v10);
            }

            ++v10;
          }

          while (v10 != v11);
          v10 = *a2;
        }

        a2[1] = v10;
        goto LABEL_25;
      }

      v6 = 1;
      while (1)
      {
        std::vector<MMSMimePart *>::push_back[abi:nn200100](a2, buf);
        if (v5 == v6)
        {
          break;
        }

        *buf = MMSPduDecoder::decodeMimePart(a1);
        ++v6;
        if (!*buf)
        {
          v7 = v6 - 1 >= v5;
          goto LABEL_19;
        }
      }
    }

    v8 = *(a1 + 20);
    if (*(a1 + 16) != v8)
    {
      *buf = MMSPduDecoder::decodeMimePart(a1);
      if (*buf)
      {
        v9 = -1;
        while (1)
        {
          std::vector<MMSMimePart *>::push_back[abi:nn200100](a2, buf);
          v8 = *(a1 + 20);
          if (*(a1 + 16) == v8)
          {
            break;
          }

          *buf = MMSPduDecoder::decodeMimePart(a1);
          --v9;
          if (!*buf)
          {
            goto LABEL_16;
          }
        }

        if (v9)
        {
          v14 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v5 - v9;
            v18 = 1024;
            v19 = v5;
            _os_log_impl(&dword_182E9B000, v14, OS_LOG_TYPE_DEFAULT, "#I found %u actual entries with nEntries = %u", buf, 0xEu);
          }
        }
      }

      else
      {
LABEL_16:
        *(a1 + 20) = v8;
      }
    }

    v7 = 1;
LABEL_25:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    MMSPduDecoder::decodeMultipartBody();
  }

  v7 = 0;
LABEL_27:
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t compareParts(MMSHeaderContainer *a1, MMSHeaderContainer *a2)
{
  v3 = MMSHeaderContainer::contentType(a1);
  if (v3)
  {
    v4 = !MMSContentType::compare(v3, "text", "plain");
  }

  else
  {
    v4 = 100;
  }

  v5 = MMSHeaderContainer::contentType(a2);
  if (v5)
  {
    v6 = MMSContentType::compare(v5, "text", "plain") - 1;
  }

  else
  {
    v6 = -100;
  }

  return (v6 + v4);
}

uint64_t MMSPduDecoder::decodeMimePart(MMSPduDecoder *this)
{
  v2 = *(this + 5);
  if (*(this + 4) != v2)
  {
    v16 = 0;
    if (MMSPduDecoder::decodeWspUintvarInteger(this, &v16))
    {
      memset(&v15, 0, sizeof(v15));
      MMSPduDecoder::printableBytes(this, v2, *(this + 5), &v15);
      v14 = 0;
      v3 = *(this + 5);
      if (*(this + 4) == v3 || (MMSPduDecoder::decodeWspUintvarInteger(this, &v14) & 1) == 0)
      {
        if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
        {
          MMSPduDecoder::decodeMimePart();
        }

        goto LABEL_12;
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        *v15.__r_.__value_.__l.__data_ = 0;
        v15.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v15.__r_.__value_.__s.__data_[0] = 0;
        *(&v15.__r_.__value_.__s + 23) = 0;
      }

      v5 = MMSPduDecoder::printableBytes(this, v3, *(this + 5), &v15);
      v6 = *(this + 5);
      if (*(this + 4) == v6)
      {
        if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
        {
          MMSPduDecoder::decodeMimePart();
        }
      }

      else
      {
        v7 = MMSHeaderContainer::contentTypeEncoding(v5);
        v8 = (*(**(v7 + 32) + 96))(*(v7 + 32));
        if ((*(*v8 + 24))(v8, this))
        {
          if (v6 - *(this + 5) + v16 <= *(this + 4) - *(this + 5))
          {
            operator new();
          }

          if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
          {
            MMSPduDecoder::decodeMimePart();
          }

          std::string::basic_string[abi:nn200100]<0>(v10, "");
          MMSPduDecoder::dump(this, "bad_part_headersfLen", v10);
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          v9 = v10[0];
        }

        else
        {
          if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
          {
            MMSPduDecoder::decodeMimePart();
          }

          std::string::basic_string[abi:nn200100]<0>(__p, "");
          MMSPduDecoder::dump(this, "bad_part_content_type", __p);
          if ((v13 & 0x80000000) == 0)
          {
            goto LABEL_12;
          }

          v9 = __p[0];
        }

        operator delete(v9);
      }

LABEL_12:
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      return 0;
    }
  }

  if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
  {
    MMSPduDecoder::decodeMimePart();
  }

  return 0;
}

void MMSPduDecoder::dump(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  MMSPduDecoder::dumpMMSData(a2, v4, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

BOOL MMSPduDecoder::decodeBody(MMSPduDecoder *this, MMSMessageWrapper *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 4) == *(this + 5))
  {
LABEL_2:
    v2 = 1;
    goto LABEL_40;
  }

  v5 = MMSHeaderContainer::headerWithName(a2, "Content-Type");
  if (v5)
  {
    v6 = v5;
    if (!MMSContentType::isMultipart(v5[3]))
    {
      __p = 0;
      v20 = 0;
      v21 = 0;
      (*(*v6 + 9))(v6, &__p);
      v13 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
      {
        if (v21 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&dword_182E9B000, v13, OS_LOG_TYPE_DEFAULT, "#I contentType is %s, not multipart", buf, 0xCu);
      }

      if (*(this + 4) != *(this + 5))
      {
        operator new();
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_2;
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    v2 = MMSPduDecoder::decodeMultipartBody(this, &__p);
    if (!v2)
    {
      goto LABEL_37;
    }

    isMultipartAlternative = MMSContentType::isMultipartAlternative(v6[3]);
    v8 = __p;
    if (isMultipartAlternative)
    {
      if (v20 == __p)
      {
        goto LABEL_35;
      }

      v9 = 0;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        if (v10)
        {
          if (compareParts(v10, v8[v9]) < 1)
          {
            v8 = __p;
            v12 = *(__p + v9);
            if (v12)
            {
              (*(*v12 + 8))(*(__p + v9));
              v8 = __p;
            }

            goto LABEL_13;
          }

          (*(*v10 + 8))(v10);
          v8 = __p;
        }

        v10 = v8[v9];
LABEL_13:
        v9 = v11++;
        if (v9 >= v20 - v8)
        {
          if (v10)
          {
            MMSMessageWrapper::addPart(a2, v10);
            goto LABEL_37;
          }

LABEL_35:
          if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
          {
            MMSPduDecoder::decodeBody();
          }

LABEL_37:
          v8 = __p;
          goto LABEL_38;
        }
      }
    }

    if (v20 != __p)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        MMSMessageWrapper::addPart(a2, v8[v15]);
        v15 = v16;
        v8 = __p;
        ++v16;
      }

      while (v15 < (v20 - __p) >> 3);
      goto LABEL_37;
    }

LABEL_38:
    if (v8)
    {
      v20 = v8;
      operator delete(v8);
    }
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::decodeBody();
    }

    v2 = 0;
  }

LABEL_40:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

void std::vector<MMSMimePart *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<MMSMimePart *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t MMSPduDecoder::decodeContentType(MMSPduDecoder *this)
{
  v1 = *(this + 5);
  if (v1 >= *(this + 4))
  {
    return 0;
  }

  if (*(*(this + 1) + v1) < 0)
  {
    *(this + 5) = v1 + 1;
    operator new();
  }

  v17 = 0;
  if (MMSPduDecoder::decodeWspValueLength(this, &v17))
  {
    v3 = *(this + 5);
    v16 = 0;
    if (MMSPduDecoder::decodeWspIntegerValue(this, &v16))
    {
      operator new();
    }

    *(this + 5) = v3;
    __p[0] = 0;
    __p[1] = 0;
    *&v14 = 0;
    v8 = MMSPduDecoder::decodeString(this, __p, 0xFFFFFFFF);
    if (v8)
    {
      if ((SBYTE7(v14) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v6 = MMSGeneralContentType::fromString(v9, v7);
      if (v6)
      {
LABEL_20:
        if (SBYTE7(v14) < 0)
        {
          operator delete(__p[0]);
        }

        if (v8)
        {
          v10 = *(this + 5);
          v11 = v3 - v10 + v17;
          v17 = v11;
          if (v6)
          {
            v15 = 0;
            *__p = 0u;
            v14 = 0u;
            MMSPduDecoder::MMSPduDecoder(__p, this, v11);
            if ((MMSParameterContainer::decode((v6 + 8), __p) & 1) == 0)
            {
              (*(*v6 + 8))(v6);
              v6 = 0;
            }

            MEMORY[0x1865E04F0](__p);
            v11 = v17;
            v10 = *(this + 5);
          }

          if (*(this + 4) - v10 < v11)
          {
            v11 = *(this + 4) - v10;
          }

          *(this + 5) = v11 + v10;
          return v6;
        }

        return 0;
      }

      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        MMSPduDecoder::decodeContentType(&v14 + 7, __p);
      }
    }

    v6 = 0;
    goto LABEL_20;
  }

  *(this + 5) = v1;
  __p[0] = 0;
  __p[1] = 0;
  *&v14 = 0;
  if (MMSPduDecoder::decodeString(this, __p, 0xFFFFFFFF))
  {
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = MMSGeneralContentType::fromString(v5, v4);
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::decodeContentType();
    }

    v6 = 0;
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void MMSPduDecoder::printDebugInfo(MMSPduDecoder *this, std::string *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 4) != *(this + 5))
  {
    memset(&v14, 0, sizeof(v14));
    v4 = 16;
    *__str = 0;
    do
    {
      v6 = *(this + 4);
      v5 = *(this + 5);
      if (v6 == v5)
      {
        break;
      }

      if (v5 >= v6)
      {
        v8 = 0;
      }

      else
      {
        v7 = *(this + 1);
        *(this + 5) = v5 + 1;
        v8 = *(v7 + v5);
      }

      snprintf(__str, 4uLL, "%.2x ", v8);
      v9 = strlen(__str);
      std::string::append(&v14, __str, v9);
      --v4;
    }

    while (v4);
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::printDebugInfo(&v14);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }

  if (a2)
  {
    v10 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_182E9B000, v10, OS_LOG_TYPE_ERROR, "Message so far:", &v14, 2u);
      v10 = *this;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MMSMessageWrapper::prettyMessage(a2, 0, 0, &v14);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v14;
      }

      else
      {
        v12 = v14.__r_.__value_.__r.__words[0];
      }

      *__str = 136315138;
      v16 = v12;
      _os_log_error_impl(&dword_182E9B000, v10, OS_LOG_TYPE_ERROR, "%s", __str, 0xCu);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v10 = *this;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MMSMessageWrapper::prettyMessage(a2, 1, 0, &v14);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v14;
      }

      else
      {
        v13 = v14.__r_.__value_.__r.__words[0];
      }

      *__str = 136642819;
      v16 = v13;
      _os_log_error_impl(&dword_182E9B000, v10, OS_LOG_TYPE_ERROR, "%{sensitive}s", __str, 0xCu);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v10 = *this;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      MMSPduDecoder::printDebugInfo(a2, v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t MMSPduDecoder::decodeSms(MMSPduDecoder *a1, void *a2, std::string *a3, std::string *a4, std::string *a5, std::string *a6)
{
  v13 = 0;
  result = MMSPduDecoder::decodeWspIntegerValue(a1, &v13);
  if (result)
  {
    result = MMSPduDecoder::decodeString(a1, a3, 0xFFFFFFFF);
    if (result)
    {
      result = MMSPduDecoder::decodeString(a1, a4, 0xFFFFFFFF);
      if (result)
      {
        result = MMSPduDecoder::decodeString(a1, a5, 0xFFFFFFFF);
        if (result)
        {
          result = MMSPduDecoder::decodeString(a1, a6, 0xFFFFFFFF);
        }
      }
    }
  }

  *a2 = v13;
  return result;
}

uint64_t MMSPduDecoder::dumpMMSData(const char *a1, const void *a2, size_t a3, uint64_t a4)
{
  v38 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  *v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  *__src = 0u;
  v30 = 0u;
  v31 = 0u;
  std::ostringstream::basic_ostringstream[abi:nn200100](&v30);
  v29 = 0x500000000000000;
  HIWORD(v28[0]) = 0;
  v28[1] = 0;
  strcpy(v28, "/tmp/");
  if (*(a4 + 23) < 0)
  {
    if (*(a4 + 8))
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, v28, 5);
    v15 = strlen(a1);
    v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, a1, v15);
    v12 = "_error_";
    v13 = 7;
    goto LABEL_11;
  }

  if (!*(a4 + 23))
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v30, v28, 5);
  v9 = strlen(a1);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, a1, v9);
  v11 = *(a4 + 23);
  if (v11 >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 23);
  }

  else
  {
    v13 = *(a4 + 8);
  }

LABEL_11:
  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v12, v13);
  v17 = time(0);
  v18 = MEMORY[0x1865E0780](v16, v17);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, ".mms", 4);
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  if ((BYTE8(v36) & 0x10) != 0)
  {
    v20 = v36;
    if (v36 < __src[1])
    {
      *&v36 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
  }

  else
  {
    if ((BYTE8(v36) & 8) == 0)
    {
      v19 = 0;
      goto LABEL_24;
    }

    v21 = *(&v31 + 1);
    v20 = *(&v32 + 1);
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v27) = v20 - v21;
  if (v19)
  {
    memmove(__p, v21, v19);
  }

LABEL_24:
  *(__p + v19) = 0;
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  v23 = fopen(v22, "w");
  if (v23)
  {
    v24 = v23;
    fwrite(a2, 1uLL, a3, v23);
    fclose(v24);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  *&v30 = *MEMORY[0x1E69E54E8];
  *(&v30 + *(v30 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v30 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[1]);
  }

  *(&v30 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v31);
  std::ostream::~ostream();
  return MEMORY[0x1865E0820](v37);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<MMSMimePart *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *OUTLINED_FUNCTION_6@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

void sub_182F58004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F58A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F58C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5916C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F593DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F597B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F599CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F59D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F59FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5A380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5AA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5B940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5BBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5C220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5CA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5CDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5D0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5D400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F5D6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5DCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5DF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5E498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F5ECCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5F050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5F34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F5F620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F5FC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F5FEC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F60168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F60394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F60A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F60C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F61034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F6133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_182F617D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F61B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F61DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F6232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F62884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F62F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F63514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F63BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F640DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F64590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F64C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F64E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F6542C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F65784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F65B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_182F65F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_182F66264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

const char *CTServerConnectionDualSimCapabilityAsString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_1E6A47B30[a1];
  }
}

void *operator<<(void *a1, _DWORD *a2)
{
  v3 = *a2 - 1;
  if (v3 > 2)
  {
    v4 = "kSendErrorTypeNone";
  }

  else
  {
    v4 = off_1E6A47C08[v3];
  }

  v5 = strlen(v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a1, v4, v5);
  return a1;
}

const char *CTNRDisableReasonAsString(uint64_t a1)
{
  if (a1 < 0x10000)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return "CTNRDisableReasonDDSSwitch";
      }

      if (a1 == 8)
      {
        return "CTNRDisableReasonSimFile";
      }
    }

    else
    {
      if (a1 == 1)
      {
        return "CTNRDisableReasonRoaming";
      }

      if (a1 == 2)
      {
        return "CTNRDisableReasonMSIMRestriction";
      }
    }
  }

  else if (a1 < 0x40000)
  {
    if (a1 == 0x10000)
    {
      return "CTNRDisableReasonInLPM";
    }

    if (a1 == 0x20000)
    {
      return "CTNRDisableReasonVoLTEOff";
    }
  }

  else
  {
    switch(a1)
    {
      case 0x40000:
        return "CTNRDisableReasonNoSUCISupport";
      case 0x40000000:
        return "CTNRDisableReasonNotProvisioned";
      case 0x80000000:
        return "CTNRDisableReasonNoCarrierSupport";
    }
  }

  return "CTNRDisableReasonNone";
}

void sub_182F68A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F68EDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F6A004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26)
{
  if (a21 != a16)
  {
  }

  if (a24 != a19)
  {
  }

  if (*(v33 - 120) != v29)
  {
  }

  if (a20 != *(v33 - 128))
  {
  }

  if (v31 != v32)
  {
  }

  if (v27 != v28)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F6A7EC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F6AF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (v24 != v23)
  {
  }

  if (a16 != a14)
  {
  }

  if (v17 != v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F6B848(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F6BEB8(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F6C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F6CC44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F6D18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

const char *CTBootstrapServiceTypeAsString(uint64_t a1)
{
  if ((a1 - 2) > 2)
  {
    return "CTBootstrapServiceTypePlanPurchase";
  }

  else
  {
    return off_1E6A48030[a1 - 2];
  }
}

void *__copy_helper_block_ea8_48c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 48));
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_ea8_48c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 48);
}

void sub_182F6F394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, ...)
{
  va_start(va, a7);

  std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>::~pair(va);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_ea8_32c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_ea8_32c88_ZTSN8dispatch5blockIU8__strongU13block_pointerFvP18CTStewieMessageAckP12NSDictionaryEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void sub_182F6F86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_182F708B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15)
{
  objc_destroyWeak((v16 + 56));

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = _Block_copy(*(a2 + 3));
  return this;
}

uint64_t std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZN8dispatch9sync_implIZ27__CTStewieDataClient_start_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = **v1;
  if (*(v2 + 8) == 1)
  {
    v3 = CTLogStewieDataClient();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN8dispatch9sync_implIZ27__CTStewieDataClient_start_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke_cold_2();
    }

    *v1[1] = 1;
  }

  else if ([*(v2 + 80) start])
  {
    v4 = *v1;
    v5 = v1[1];
    *(**v1 + 8) = 1;
    *v5 = 1;
    v6 = *v4;
    v8 = [*(*v4 + 80) getState];
    [v6 stateChanged:?];
  }

  else
  {
    v7 = CTLogStewieDataClient();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZN8dispatch9sync_implIZ27__CTStewieDataClient_start_E3__0EEvPU28objcproto17OS_dispatch_queue8NSObjectOT_NSt3__117integral_constantIbLb1EEE_block_invoke_cold_1();
    }
  }
}

void sub_182F71374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<-[CTStewieDataClient dispatchOnDelegateQueue:]::$_1>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void *>>>::destroy[abi:nn200100]<std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

void sub_182F71670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<-[CTStewieDataClient sendMessage:completion:]::$_2>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::find<std::string>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::__map_value_compare<__CTAssertionType *,std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>,std::less<__CTAssertionType *>,true>,std::allocator<std::__value_type<__CTAssertionType *,std::pair<dispatch::queue,void({block_pointer} {__strong})(NSError *)>>>>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void *>>>::destroy[abi:nn200100]<std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void *>>>::destroy[abi:nn200100]<std::pair<std::string const,dispatch::block<void({block_pointer} {__strong})(CTStewieMessageAck *,NSDictionary *)>>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

id **_ZNSt3__110unique_ptrIZZZ52__CTStewieDataClient_receivedData_fromConnectionId__EUb_EUb0_E3__3NS_14default_deleteIS1_EEED1B8nn200100Ev(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    objc_destroyWeak(v2);
    MEMORY[0x1865E0880](v2, 0xC0C40C9143A96);
  }

  return a1;
}

id **_ZZN8dispatch5asyncIZZZ52__CTStewieDataClient_receivedData_fromConnectionId__EUb_EUb0_E3__3EEvPU28objcproto17OS_dispatch_queue8NSObjectNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(uint64_t a1)
{
  v10 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[7] && WeakRetained[8] == 1)
  {
    v4 = objc_alloc_init(CTStewieMessageAck);
    [(CTStewieMessageAck *)v4 setSuccess:1];
    v12 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (!v6)
    {
      v7 = [[CTStewieTransportMessage alloc] initWithMsgId:*(a1 + 8)];
      [(CTStewieTransportMessage *)v7 setData:v5];
      [(CTStewieTransportMessage *)v7 setMetadata:*(a1 + 16)];
      v11 = 0;
      v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v11];
      v6 = v11;
      if (!v6)
      {
        [v3[7] sendData:v8 usingConnection:1 completion:*MEMORY[0x1E6977E80]];
      }
    }
  }

  return _ZNSt3__110unique_ptrIZZZ52__CTStewieDataClient_receivedData_fromConnectionId__EUb_EUb0_E3__3NS_14default_deleteIS1_EEED1B8nn200100Ev(&v10);
}

void sub_182F7195C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = v5;

  _ZNSt3__110unique_ptrIZZZ52__CTStewieDataClient_receivedData_fromConnectionId__EUb_EUb0_E3__3NS_14default_deleteIS1_EEED1B8nn200100Ev(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_182F72584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23)
{
  if (a21 != a16)
  {
  }

  if (a17 != a20)
  {
  }

  if (v30 != v29)
  {
  }

  if (v27 != v28)
  {
  }

  if (v24 != v25)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_182F7378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *_CTServerConnectionSIMStatusToSIMStatusString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    v1 = &kCTSIMSupportSIMStatusReady;
  }

  else
  {
    v1 = off_1E6A48298[a1];
  }

  return v1->isa;
}

void *_CTServerConnectionSIMTrayStatusToSIMTrayStatusString(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = &kCTSIMSupportSIMTrayStatusUnknown;
  }

  else
  {
    v1 = off_1E6A48300[a1];
  }

  return v1->isa;
}

uint64_t getClientKeyForEntitlementType(int a1)
{
  result = 0;
  switch(a1)
  {
    case 2:
      v3 = &kCTCarrierEntitlementKeyFaceTime;
      goto LABEL_20;
    case 3:
      v3 = &kCTCarrierEntitlementKeyTethering;
      goto LABEL_20;
    case 6:
      v3 = &kCTCarrierEntitlementKeyVoLTE;
      goto LABEL_20;
    case 7:
      v3 = &kCTCarrierEntitlementKeyVoWiFi;
      goto LABEL_20;
    case 8:
      v3 = &kCTCarrierEntitlementKeyThumper;
      goto LABEL_20;
    case 10:
      v3 = &kCTCarrierEntitlementKeyMultiSIM;
      goto LABEL_20;
    case 11:
      v3 = &kCTCarrierEntitlementKeySAWatch;
      goto LABEL_20;
    case 12:
      v3 = &kCTCarrierEntitlementKeyMultiSIMTransfer;
      goto LABEL_20;
    case 13:
      v3 = &kCTCarrierEntitlementKeyiPhonePlanTransfer;
      goto LABEL_20;
    case 14:
      v3 = &kCTCarrierEntitlementKeySAWatchTransfer;
      goto LABEL_20;
    case 15:
      v3 = &kCTCarrierEntitlementKey5GService;
      goto LABEL_20;
    case 16:
      v3 = &kCTCarrierEntitlementKeyiPadSignup;
      goto LABEL_20;
    case 17:
      v3 = &kCTCarrierEntitlementKeyCustomQoS;
      goto LABEL_20;
    case 18:
      v3 = &kCTCarrierEntitlementKeyPrivateNetProvisioning;
      goto LABEL_20;
    case 19:
      v3 = &kCTCarrierEntitlementKeyNtCarrierService;
      goto LABEL_20;
    case 20:
      v3 = &kCTCarrierEntitlementKeyHeraService;
      goto LABEL_20;
    case 21:
      v3 = &kCTCarrierEntitlementKeyEnhancedThroughput;
      goto LABEL_20;
    case 22:
      v3 = &kCTCarrierEntitlementKeyRCS;
LABEL_20:
      result = *v3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t std::stringbuf::view[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t _CTServerConnectionCarrierSettingsCopyValue(uint64_t a1, const __CFString *cf, uint64_t *a3)
{
  v3 = 0x1600000000;
  v4 = 1;
  if (!a1 || !cf || !a3)
  {
    return v4 | v3;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFStringGetTypeID() || CFStringGetLength(cf) < 1)
  {
    v3 = 0x1600000000;
    v4 = 1;
    return v4 | v3;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x1E69E9E80];
  if (v9)
  {
    v11 = v9;
    v22 = v9;
  }

  else
  {
    v11 = xpc_null_create();
    v22 = v11;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  if (MEMORY[0x1865E16C0](v11) == v10)
  {
    xpc_retain(v11);
    v12 = v11;
    goto LABEL_13;
  }

LABEL_11:
  v12 = xpc_null_create();
  v22 = v12;
LABEL_13:
  xpc_release(v11);
  v13 = xpc_string_create("kCarrierSettingsGetProperty");
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v12, "kRequest", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v12, "kCarrierSettingsKey", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v21 = xpc_null_create();
  v17 = SendXpcMessage(a1, &v22, &v21);
  if (MEMORY[0x1865E16C0](v21) == v10)
  {
    *a3 = 0;
    v19[1] = "kCarrierSettingsKey";
    object = 0;
    v19[0] = &v21;
    xpc::dict::object_proxy::operator xpc::object(v19, &object);
    if (MEMORY[0x1865E16C0](object) != MEMORY[0x1E69E9ED0])
    {
      *a3 = _CFXPCCreateCFObjectFromXPCObject();
    }

    xpc_release(object);
  }

  else
  {
    syslog(3, "Error copying carrier settings: %d/%d", v17, HIDWORD(v17));
  }

  xpc_release(v21);
  xpc_release(v22);
  v3 = v17 & 0xFFFFFFFF00000000;
  v4 = v17;
  return v4 | v3;
}

uint64_t _CTServerConnectionIsPhoneNumberCredentialValid(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCarrierSettingsIsPhoneNumberCredentialValid", object, "kRequest", &v8);
    xpc_release(object[0]);
    v9 = v8;
    v8 = xpc_null_create();
    xpc_release(v8);
    v8 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v9, &v8);
    if (MEMORY[0x1865E16C0](v8) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v8;
      object[1] = "kCarrierSettingsIsPhoneNumberCredentialValid";
      xpc::dict::object_proxy::operator xpc::object(object, &v7);
      *a2 = xpc::dyn_cast_or_default(&v7, 0);
      xpc_release(v7);
    }

    else
    {
      *a2 = 0;
    }

    xpc_release(v8);
    xpc_release(v9);
  }

  return v2;
}

unint64_t _CTServerConnectionCopyCarrierBundleInfoArray(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCarrierSettingsGetBundleInfo", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    v9 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v10, &v9);
    *a2 = 0;
    if (!HIDWORD(v2) && MEMORY[0x1865E16C0](v9) == MEMORY[0x1E69E9E80])
    {
      object[0] = &v9;
      object[1] = "kCarrierSettingsBundleInfo";
      v8 = 0;
      xpc::dict::object_proxy::operator xpc::object(object, &v8);
      if (MEMORY[0x1865E16C0](v8) != MEMORY[0x1E69E9ED0])
      {
        object[0] = 0;
        v6 = _CFXPCCreateCFObjectFromXPCObject();
        ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(object, &v6);
        *a2 = object[0];
      }

      xpc_release(v8);
    }

    xpc_release(v9);
    xpc_release(v10);
  }

  return v2;
}

void sub_182F755F4(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F75CE8(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7606C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F76910(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F77810(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F78440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (v24 != v23)
  {
  }

  if (a16 != a14)
  {
  }

  if (v17 != v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F79258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  if (a15 != v23)
  {
  }

  if (a18 != a14)
  {
  }

  if (a20 != v25)
  {
  }

  if (v21 != v22)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7A064(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7AF58(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7B6E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F7BAC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_182F7C9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Lazuli::SuggestedActionShowLocation::~SuggestedActionShowLocation(void **this)
{
  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 56) == 1 && *(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

void Lazuli::SuggestedActionDialVideoCall::~SuggestedActionDialVideoCall(void **this)
{
  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Lazuli::SuggestedActionDialEnrichedCall::~SuggestedActionDialEnrichedCall(void **this)
{
  if (*(this + 80) == 1 && *(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 48) == 1 && *(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Lazuli::SuggestedActionCalendar::~SuggestedActionCalendar(void **this)
{
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 96) == 1 && *(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_182F7E4E0(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F7F39C(_Unwind_Exception *a1)
{
  if (v2 != v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F807EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void sub_182F81028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12)
{
  if (v17 != v18)
  {
  }

  if (v13 != v14)
  {
  }

  _Unwind_Resume(a1);
}

void Lazuli::SuggestedActionOpenUrlInWebView::~SuggestedActionOpenUrlInWebView(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void Lazuli::SuggestedActionComposeText::~SuggestedActionComposeText(void **this)
{
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

Lazuli::SuggestedActionShowLocation *Lazuli::SuggestedActionShowLocation::SuggestedActionShowLocation(Lazuli::SuggestedActionShowLocation *this, const Lazuli::SuggestedActionShowLocation *a2)
{
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  std::__optional_copy_base<Lazuli::SuggestedActionShowQuery,false>::__optional_copy_base[abi:nn200100](this + 1, a2 + 24);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((this + 64), a2 + 4);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](this + 4, a2 + 6);
  return this;
}

void sub_182F81EF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<Lazuli::SuggestedActionShowQuery,false>::__optional_copy_base[abi:nn200100](std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 32) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](a1, a2);
    a1[1].__r_.__value_.__s.__data_[8] = 1;
  }

  return a1;
}

void sub_182F81F94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    std::__optional_copy_base<Lazuli::SuggestedActionShowQuery,false>::__optional_copy_base[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_182F81FE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

std::string *Lazuli::SuggestedActionDialVideoCall::SuggestedActionDialVideoCall(std::string *this, const Lazuli::SuggestedActionDialVideoCall *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](this + 1, (a2 + 24));
  return this;
}

void sub_182F820C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Lazuli::SuggestedActionDialEnrichedCall::SuggestedActionDialEnrichedCall(std::string *this, const Lazuli::SuggestedActionDialEnrichedCall *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](this + 1, (a2 + 24));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((this + 56), (a2 + 56));
  return this;
}

void sub_182F82148(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Lazuli::SuggestedActionDialPhoneNumber::SuggestedActionDialPhoneNumber(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](this + 1, (a2 + 24));
  return this;
}

void sub_182F821E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Lazuli::ChatBotCreateCalendarEvent::ChatBotCreateCalendarEvent(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](this + 3, (a2 + 72));
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((this + 104), (a2 + 104));
  return this;
}

void sub_182F822B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:nn200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_182F82358(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 136) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_182F823B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 136);
  if (v15 != -1)
  {
    (off_1EF0137C8[v15])(&a13, v13);
  }

  *(v13 + 136) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 136);
  if (v4 != -1)
  {
    result = (off_1EF0137C8[v4])(&v7, result);
  }

  *(v3 + 136) = -1;
  v5 = *(a2 + 136);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1EF013830[v5])(&v6, a2);
    *(v3 + 136) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 56) == 1 && *(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v3 = *(a2 + 24);

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 96) == 1 && *(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSN_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSP_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 8), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v7 = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(v3 + 2) = v7;
  }
}

void sub_182F82878(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v3 + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&v3[1].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_182F82934(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  std::__optional_copy_base<Lazuli::SuggestedActionShowQuery,false>::__optional_copy_base[abi:nn200100]((v3 + 24), a2 + 24);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((v3 + 64), a2 + 4);
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((v3 + 96), a2 + 6);
}

void sub_182F82A00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](v3 + 1, (a2 + 24));
}

void sub_182F82AC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](v3 + 1, (a2 + 24));
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100]((v3 + 56), (a2 + 56));
}

void sub_182F82B48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli31SuggestedActionOpenUrlInWebViewENS8_35SuggestedActionOpenUrlInApplicationENS8_26SuggestedActionComposeTextENS8_36SuggestedActionComposeAudioRecordingENS8_36SuggestedActionComposeVideoRecordingENS8_27SuggestedActionShowLocationENS8_34SuggestedActionRequestLocationPushENS8_23SuggestedActionCalendarENS8_28SuggestedActionDialVideoCallENS8_31SuggestedActionDialEnrichedCallENS8_30SuggestedActionDialPhoneNumberENS8_21SuggestedActionDeviceENS8_23SuggestedActionSettingsEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISM_LNS0_6_TraitE1EEEEEvRSN_OT_EUlSW_E_JRKNS0_6__baseILSQ_1EJS9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_EEEEEEDcSV_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:nn200100](v3 + 1, (a2 + 24));
}

void sub_182F82BE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Lazuli::ChatBotSuggestedAction::~ChatBotSuggestedAction(Lazuli::ChatBotSuggestedAction *this)
{
  v2 = *(this + 52);
  if (v2 != -1)
  {
    (off_1EF0137C8[v2])(&v3, this + 72);
  }

  *(this + 52) = -1;
  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_182F82CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 216);
  if (v15 != -1)
  {
    (off_1EF013898[v15])(&a13, v13);
  }

  *(v13 + 216) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 216);
  if (v4 != -1)
  {
    result = (off_1EF013898[v4])(&v7, result);
  }

  *(v3 + 216) = -1;
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1EF0138A8[v5])(&v6, a2);
    *(v3 + 216) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli22ChatBotSuggestedActionENS8_21ChatBotSuggestedReplyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 208);
  if (v3 != -1)
  {
    (off_1EF0137C8[v3])(&v4, a2 + 72);
  }

  *(a2 + 208) = -1;
  if (*(a2 + 56) == 1 && *(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli22ChatBotSuggestedActionENS8_21ChatBotSuggestedReplyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli22ChatBotSuggestedActionENS8_21ChatBotSuggestedReplyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1;
  *v4 = *a2;
  v5 = (v4 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    v5->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100]((v3 + 8), (a2 + 32));
  return std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::SuggestedActionOpenUrlInWebView,Lazuli::SuggestedActionOpenUrlInApplication,Lazuli::SuggestedActionComposeText,Lazuli::SuggestedActionComposeAudioRecording,Lazuli::SuggestedActionComposeVideoRecording,Lazuli::SuggestedActionShowLocation,Lazuli::SuggestedActionRequestLocationPush,Lazuli::SuggestedActionCalendar,Lazuli::SuggestedActionDialVideoCall,Lazuli::SuggestedActionDialEnrichedCall,Lazuli::SuggestedActionDialPhoneNumber,Lazuli::SuggestedActionDevice,Lazuli::SuggestedActionSettings>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v3 + 18), a2 + 72);
}

std::string *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli22ChatBotSuggestedActionENS8_21ChatBotSuggestedReplyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return std::__optional_copy_base<Lazuli::ChatBotPostbackData,false>::__optional_copy_base[abi:nn200100](v3 + 1, (a2 + 24));
}

void sub_182F82F80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Lazuli::ChatBotMenuL2Content>::__init_with_size[abi:nn200100]<Lazuli::ChatBotMenuL2Content*,Lazuli::ChatBotMenuL2Content*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Lazuli::ChatBotMenuL2Content>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<Lazuli::ChatBotMenuL2Content>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Lazuli::ChatBotMenuL2Content>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<Lazuli::ChatBotMenuL2Content>::__construct_at_end<Lazuli::ChatBotMenuL2Content*,Lazuli::ChatBotMenuL2Content*>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = result;
  v4 = *(result + 8);
  if (a2 == a3)
  {
    v7 = *(result + 8);
  }

  else
  {
    v6 = a2;
    v7 = *(result + 8);
    do
    {
      *v7 = *v6;
      result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v7 + 2), (v6 + 2));
      v6 += 58;
      v7 += 58;
    }

    while (v6 != a3);
  }

  *(v3 + 8) = v7;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Lazuli::ChatBotMenuL2Content>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void Lazuli::ChatBotMenuL2::~ChatBotMenuL2(void **this)
{
  v2 = this + 3;
  std::vector<Lazuli::ChatBotMenuL2Content>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<Lazuli::ChatBotMenuL2Content>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Lazuli::ChatBotMenuL2Content>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<Lazuli::ChatBotMenuL2Content>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        result = (off_1EF013898[v4])(&v5, v3 - 224);
      }

      *(v3 - 8) = -1;
      v3 -= 232;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

uint64_t std::vector<Lazuli::ChatBotMenuL1Content>::__init_with_size[abi:nn200100]<Lazuli::ChatBotMenuL1Content*,Lazuli::ChatBotMenuL1Content*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Lazuli::ChatBotMenuL1Content>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<Lazuli::ChatBotMenuL1Content>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Lazuli::ChatBotMenuL1Content>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<Lazuli::ChatBotMenuL1Content>::__construct_at_end<Lazuli::ChatBotMenuL1Content*,Lazuli::ChatBotMenuL1Content*>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = result;
  v4 = *(result + 8);
  if (a2 == a3)
  {
    v7 = *(result + 8);
  }

  else
  {
    v6 = a2;
    v7 = *(result + 8);
    do
    {
      *v7 = *v6;
      result = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v7 + 2), (v6 + 2));
      v6 += 62;
      v7 += 62;
    }

    while (v6 != a3);
  }

  *(v3 + 8) = v7;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Lazuli::ChatBotMenuL1Content>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_182F8341C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 232);
  if (v15 != -1)
  {
    (off_1EF0138B8[v15])(&a13, v13);
  }

  *(v13 + 232) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedChip,Lazuli::ChatBotMenuL2>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 232);
  if (v4 != -1)
  {
    result = (off_1EF0138B8[v4])(&v7, result);
  }

  *(v3 + 232) = -1;
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1EF0138C8[v5])(&v6, a2);
    *(v3 + 232) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli20ChatBotSuggestedChipENS8_13ChatBotMenuL2EEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 224);
  if (v3 != -1)
  {
    result = (off_1EF013898[v3])(&v5, a2 + 8);
  }

  *(a2 + 224) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN6Lazuli20ChatBotSuggestedChipENS8_13ChatBotMenuL2EEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSC_1EJS9_SA_EEEEEEDcSE_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  std::vector<Lazuli::ChatBotMenuL2Content>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli20ChatBotSuggestedChipENS8_13ChatBotMenuL2EEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<Lazuli::ChatBotSuggestedAction,Lazuli::ChatBotSuggestedReply>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100]((v2 + 2), (a2 + 2));
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN6Lazuli20ChatBotSuggestedChipENS8_13ChatBotMenuL2EEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISB_LNS0_6_TraitE1EEEEEvRSC_OT_EUlSL_E_JRKNS0_6__baseILSF_1EJS9_SA_EEEEEEDcSK_DpT0_(std::string **a1, __int128 *a2)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  v3[1].__r_.__value_.__r.__words[0] = 0;
  v3[1].__r_.__value_.__l.__size_ = 0;
  v3[1].__r_.__value_.__r.__words[2] = 0;
  return std::vector<Lazuli::ChatBotMenuL2Content>::__init_with_size[abi:nn200100]<Lazuli::ChatBotMenuL2Content*,Lazuli::ChatBotMenuL2Content*>(&v3[1], *(a2 + 3), *(a2 + 4), 0x34F72C234F72C235 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
}

void sub_182F83608(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Lazuli::ChatBotMenuL1::~ChatBotMenuL1(void **this)
{
  v2 = this + 3;
  std::vector<Lazuli::ChatBotMenuL1Content>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<Lazuli::ChatBotMenuL1Content>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Lazuli::ChatBotMenuL1Content>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<Lazuli::ChatBotMenuL1Content>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 8);
      if (v4 != -1)
      {
        result = (off_1EF0138B8[v4])(&v5, v3 - 240);
      }

      *(v3 - 8) = -1;
      v3 -= 248;
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

const char *CTEmergencyModeTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return "CTEmergencyModeUnknown";
  }

  else
  {
    return off_1E6A48320[a1 - 1];
  }
}

const char *CTEmergencyModeStateAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return "CTEmergencyModeStateInCall";
  }

  else
  {
    return off_1E6A48348[a1 - 1];
  }
}

uint64_t _CTServerConnectionPerformInternalVinylOperation(uint64_t a1, ctu *a2, void *a3)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kVinylOperationSync", &object, "kRequest", &v15);
  xpc_release(object);
  v6 = v15;
  v16 = v15;
  v15 = xpc_null_create();
  xpc_release(v15);
  if (a2)
  {
    ctu::cf_to_xpc(&value, a2, v7);
    xpc_dictionary_set_value(v6, "kVinylOperation", value);
    v8 = value;
    value = xpc_null_create();
    xpc_release(v8);
    xpc_release(value);
    value = 0;
  }

  object = xpc_null_create();
  v9 = SendXpcMessage(a1, &v16, &object);
  if (a3)
  {
    *a3 = 0;
    if (MEMORY[0x1865E16C0](object) == MEMORY[0x1E69E9E80])
    {
      v15 = 0;
      v12 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v12 = xpc_null_create();
      }

      xpc::bridge(&cf, &v12, v10);
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v15, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v12);
      *a3 = v15;
    }
  }

  xpc_release(object);
  xpc_release(v16);
  return v9;
}

void sub_182F84228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, CFTypeRef cf, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14)
{
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  xpc_release(a14);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t _CTServerConnectionDoModuleOperation(uint64_t a1, char *a2, void *a3, void *a4, void *a5)
{
  v5 = 0x1600000001;
  if (a1 && a3 && a4)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kModuleOperation", &object, "kRequest", &v16);
    xpc_release(object);
    xpc::dict_creator::operator()<char const*>(a2, &v16, "kModuleOperation", &v17);
    v15 = a3;
    xpc_retain(a3);
    xpc::dict_creator::operator()<xpc::object>(&v17, "kModuleResourcePath", &v15, &v18);
    v14 = a4;
    xpc_retain(a4);
    xpc::dict_creator::operator()<xpc::object>(&v18, "kModuleValue", &v14, &object);
    v19 = object;
    object = xpc_null_create();
    xpc_release(object);
    object = 0;
    xpc_release(v14);
    v14 = 0;
    xpc_release(v18);
    v18 = 0;
    xpc_release(v15);
    v15 = 0;
    xpc_release(v17);
    v17 = 0;
    xpc_release(v16);
    object = xpc_null_create();
    v5 = SendXpcMessage(a1, &v19, &object);
    v11 = object;
    if (a5)
    {
      *a5 = 0;
      if (MEMORY[0x1865E16C0](v11) == MEMORY[0x1E69E9E80])
      {
        v11 = xpc_null_create();
        v12 = object;
        object = v11;
        *a5 = v12;
      }

      else
      {
        v11 = object;
      }
    }

    xpc_release(v11);
    xpc_release(v19);
  }

  return v5;
}

void sub_182F84414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a15);
  _Unwind_Resume(a1);
}

void xpc::dict_creator::operator()<xpc::object>(xpc_object_t *a1@<X0>, const char *a2@<X1>, xpc_object_t *a3@<X2>, xpc_object_t *a4@<X8>)
{
  v7 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
LABEL_4:
    xpc_retain(v7);
    v8 = v7;
    goto LABEL_5;
  }

  v7 = xpc_null_create();
  if (v7)
  {
    goto LABEL_4;
  }

  v8 = xpc_null_create();
LABEL_5:
  xpc_dictionary_set_value(*a1, a2, v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = *a1;
  *a4 = *a1;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v7);
}

uint64_t _CTServerConnectionDoCSIPropertyOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x1600000001;
  if (a1)
  {
    v6 = *(a2 + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 8);
    }

    if (v6)
    {
      v20 = 0;
      v10 = xpc::dict_creator::dict_creator(v21);
      xpc::dict_creator::operator()<char const*>("kCSIPropertyOperation", v10, "kRequest", &v18);
      xpc_release(v21[0]);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
      }

      else
      {
        v17 = *a2;
      }

      xpc::dict_creator::operator()<std::string>(&v17, &v18, "kCSIPropertyOperation", &v19);
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
      }

      else
      {
        v16 = *a3;
      }

      xpc::dict_creator::operator()<std::string>(&v16, &v19, "kCSIPropertyName", object);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, *a4, *(a4 + 8));
      }

      else
      {
        v15 = *a4;
      }

      xpc::dict_creator::operator()<std::string>(&v15, object, "kCSIPropertyValue", &v13);
      v20 = v13;
      *&v13 = xpc_null_create();
      xpc_release(v13);
      *&v13 = 0;
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      xpc_release(object[0]);
      object[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      xpc_release(v19);
      v19 = 0;
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      xpc_release(v18);
      v19 = xpc_null_create();
      v4 = SendXpcMessage(a1, &v20, &v19);
      if (MEMORY[0x1865E16C0](v19) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(v19, "kCSIPropertyValue"))
      {
        object[0] = &v19;
        object[1] = "kCSIPropertyValue";
        xpc::dict::object_proxy::operator xpc::object(object, &v18);
        v21[0] = 0;
        v21[1] = 0;
        v22 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = v13;
        *(a4 + 16) = v14;
        HIBYTE(v14) = 0;
        LOBYTE(v13) = 0;
        xpc_release(v18);
      }

      xpc_release(v19);
      xpc_release(v20);
    }
  }

  return v4;
}

void sub_182F84784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 49) < 0)
  {
    operator delete(*(v31 - 72));
  }

  xpc_release(*(v31 - 96));
  xpc_release(*(v31 - 88));
  xpc_release(*(v31 - 80));
  _Unwind_Resume(a1);
}

void xpc::dict_creator::operator()<std::string>(char *string@<X2>, xpc_object_t *a2@<X0>, const char *a3@<X1>, xpc_object_t *a4@<X8>)
{
  if (string[23] < 0)
  {
    string = *string;
  }

  v7 = xpc_string_create(string);
  if (v7)
  {
    v8 = v7;
LABEL_6:
    xpc_retain(v8);
    v9 = v8;
    goto LABEL_7;
  }

  v8 = xpc_null_create();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = xpc_null_create();
LABEL_7:
  xpc_dictionary_set_value(*a2, a3, v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = *a2;
  *a4 = *a2;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v8);
}

uint64_t sMmsPduLog(void)
{
  if (sMmsPduLog(void)::once != -1)
  {
    sMmsPduLog();
  }

  return sMmsPduLog(void)::logger;
}

os_log_t ___Z10sMmsPduLogv_block_invoke()
{
  result = os_log_create("com.apple.CoreTelephony", "msg.mms.pdu");
  sMmsPduLog(void)::logger = result;
  return result;
}

uint64_t _CTServerConnectionCellMonitorStart(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCellMonitorStart", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionCellMonitorStop(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCellMonitorStop", &object, "kRequest", &v5);
  xpc_release(object);
  object = v5;
  v5 = xpc_null_create();
  xpc_release(v5);
  v3 = SendXpcMessage(a1, &object, 0, v2);
  xpc_release(object);
  return v3;
}

uint64_t _CTServerConnectionCellMonitorGetCellCount(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCellMonitorGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kCellMonitorCellCount";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kCellMonitorCellCount";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionCellMonitorGetCellInfo(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v4 = 0x1600000001;
  if (a1 && a3 && a4)
  {
    *a3 = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCellMonitorGetCellInfo", &object, "kRequest", &v19);
    xpc_release(object);
    v9 = v19;
    v20 = v19;
    v19 = xpc_null_create();
    xpc_release(v19);
    v10 = xpc_int64_create(a2);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kCellMonitorCell", v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    v19 = xpc_null_create();
    v4 = SendXpcMessage(a1, &v20, &v19);
    v12 = MEMORY[0x1865E16C0](v19);
    v13 = MEMORY[0x1E69E9E80];
    if (v12 == MEMORY[0x1E69E9E80])
    {
      object = &v19;
      v17 = "kCellMonitorCellInfo";
      v18 = 0;
      xpc::dict::object_proxy::operator xpc::dict(&object, &v18);
      if (MEMORY[0x1865E16C0](v18) == v13)
      {
        *a3 = 1;
        object = &v18;
        v17 = "kCellMonitorCellInfoMcc";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *a4 = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoMnc";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 4) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoLac";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 8) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoCi";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 12) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoBsic";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 16) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoFreq";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 20) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoRxLev";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 24) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoC1";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 28) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoC2";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 32) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoTa";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 36) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoTaTimestamp";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 40) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
      }

      xpc_release(v18);
    }

    xpc_release(v19);
    xpc_release(v20);
  }

  return v4;
}

uint64_t _CTServerConnectionCellMonitorGetUmtsCellCount(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCellMonitorGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kCellMonitorUmtsCellCount";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessage(a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kCellMonitorUmtsCellCount";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionCellMonitorGetUmtsCellInfo(uint64_t a1, unsigned int a2, _BYTE *a3, uint64_t a4)
{
  v4 = 0x1600000001;
  if (a1 && a3 && a4)
  {
    *a3 = 0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCellMonitorGetCellInfo", &object, "kRequest", &v19);
    xpc_release(object);
    v9 = v19;
    v20 = v19;
    v19 = xpc_null_create();
    xpc_release(v19);
    v10 = xpc_int64_create(a2);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kCellMonitorUmtsCell", v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    v19 = xpc_null_create();
    v4 = SendXpcMessage(a1, &v20, &v19);
    v12 = MEMORY[0x1865E16C0](v19);
    v13 = MEMORY[0x1E69E9E80];
    if (v12 == MEMORY[0x1E69E9E80])
    {
      object = &v19;
      v17 = "kCellMonitorCellInfo";
      v18 = 0;
      xpc::dict::object_proxy::operator xpc::dict(&object, &v18);
      if (MEMORY[0x1865E16C0](v18) == v13)
      {
        *a3 = 1;
        object = &v18;
        v17 = "kCellMonitorCellInfoMcc";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *a4 = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoMnc";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 4) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoLac";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 8) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoCi";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 12) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoUarfcn";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 48) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoPsc";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 52) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoRscp";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 56) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
        object = &v18;
        v17 = "kCellMonitorCellInfoEcn0";
        xpc::dict::object_proxy::operator xpc::object(&object, &v15);
        *(a4 + 60) = xpc::dyn_cast_or_default(&v15, 0);
        xpc_release(v15);
      }

      xpc_release(v18);
    }

    xpc_release(v19);
    xpc_release(v20);
  }

  return v4;
}

void sub_182F8557C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_182F85EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MEMORY[0x1865E04F0](&a11);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_182F8633C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_182F86FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  _Unwind_Resume(a1);
}

NSString *_mimeEncodeWithEncodingHint(NSString *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && _mimeBundleLoadFailed != 1 && ((_mimeBundleLoaded & 1) != 0 || (_loadMimeBundle() & 1) != 0))
  {
    v5 = [(NSString *)v3 mf_encodedHeaderDataWithEncodingHint:a2];
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:1];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void sub_182F87D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  MEMORY[0x1865E04F0](va);
  _Unwind_Resume(a1);
}

void addRecipientsFromMMSWithHeader(const char *a1, MMSMessageWrapper *a2, CTMessage *a3)
{
  v5 = a3;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  MMSHeaderContainer::allHeadersWithName(a2, a1, &v13);
  v6 = v13;
  if (v14 != v13)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      if ((*(**&v6[8 * v7] + 72))(*&v6[8 * v7], __p))
      {
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = stripAddressType(v9);
        [(CTMessage *)v5 addRecipient:v10];
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v8;
      v6 = v13;
      ++v8;
    }

    while (v7 < (v14 - v13) >> 3);
  }

  if (v6)
  {
    v14 = v6;
    operator delete(v6);
  }
}

void sub_182F8804C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

NSString *_mimeDecode(NSString *a1)
{
  v1 = a1;
  if (v1 && (_mimeBundleLoadFailed & 1) == 0 && ((_mimeBundleLoaded & 1) != 0 || (_loadMimeBundle() & 1) != 0))
  {
    v2 = [(NSString *)v1 mf_decodeMimeHeaderValueWithCharsetHint:0];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

id stripAddressType(char *a1)
{
  v2 = strchr(a1, 47);
  if (strchr(a1, 64) || !v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:v2 - a1 encoding:4];
  }

  return v3;
}

uint64_t _loadMimeBundle(void)
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MIME.framework"];
  v1 = v0;
  v2 = &_mimeBundleLoadFailed;
  if (v0 && [v0 load])
  {
    v2 = &_mimeBundleLoaded;
  }

  *v2 = 1;
  v3 = _mimeBundleLoaded;

  return v3;
}

uint64_t createUuidBytes(xpc_object_t *a1)
{
  if (MEMORY[0x1865E16C0](*a1) == MEMORY[0x1E69E9E70] && xpc_data_get_length(*a1) == 16)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(*a1);
LABEL_8:
    v5 = *bytes_ptr;
    v6 = bytes_ptr[1];
    return v5;
  }

  v3 = MEMORY[0x1865E16C0](*a1);
  v4 = *a1;
  if (v3 == MEMORY[0x1E69E9F20])
  {
    bytes_ptr = xpc_uuid_get_bytes(v4);
    goto LABEL_8;
  }

  if (MEMORY[0x1865E16C0](v4) != MEMORY[0x1E69E9F10])
  {
    return 0;
  }

  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  xpc::dyn_cast_or_default();
  v8 = *MEMORY[0x1E695E480];
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v11, 0x8000100u);
  v10 = CFUUIDCreateFromString(v8, v9);
  v5 = *&CFUUIDGetUUIDBytes(v10);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v5;
}

uint64_t _CTServerConnectionCopyNextCall(const void *a1, int *a2, uint64_t *a3)
{
  v3 = 0x1600000001;
  if (a2 && a1 && a3)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetNextCallInfo", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v7 = xdict;
    v16 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    v8 = xpc_int64_create(3);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kCallTypes", v8);
    v9 = xpc_null_create();
    xpc_release(v8);
    xpc_release(v9);
    v10 = xpc_int64_create(*a2);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kCallCookie", v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
    xdict = xpc_null_create();
    v3 = SendXpcMessageIf(1, a1, &v16, &xdict);
    *a3 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kCallCookie"))
    {
      object[0] = &xdict;
      object[1] = "kCallCookie";
      xpc::dict::object_proxy::operator xpc::object(object, &v14);
      *a2 = xpc::dyn_cast_or_default(&v14, 0);
      xpc_release(v14);
    }

    xpc_release(xdict);
    xpc_release(v16);
  }

  return v3;
}

uint64_t anonymous namespace::_CTCallCreateFromXpcDictionary(const void *a1, xpc_object_t object)
{
  v3 = MEMORY[0x1E69E9E80];
  if (object)
  {
    v4 = object;
    xpc_retain(object);
    v36 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    v36 = v4;
    if (!v4)
    {
LABEL_5:
      v5 = xpc_null_create();
      v36 = v5;
      goto LABEL_7;
    }
  }

  if (MEMORY[0x1865E16C0](v4) != v3)
  {
    goto LABEL_5;
  }

  xpc_retain(v4);
  v5 = v4;
LABEL_7:
  xpc_release(v4);
  if (MEMORY[0x1865E16C0](v5) == v3)
  {
    v37 = &v36;
    v38 = "kUuid";
    xpc::dict::object_proxy::operator xpc::object(&v37, objecta);
    UuidBytes = createUuidBytes(objecta);
    v9 = v8;
    xpc_release(objecta[0]);
    objecta[0] = 0;
    objecta[1] = 0;
    v35 = 0;
    v31 = &v36;
    v32 = "kPhoneNumber";
    xpc::dict::object_proxy::operator xpc::object(&v31, &v28);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }

    xpc_release(v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v28 = &v36;
    v29 = "kCallName";
    xpc::dict::object_proxy::operator xpc::object(&v28, &__p);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }

    xpc_release(__p);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    __p = &v36;
    v26 = "kSource";
    xpc::dict::object_proxy::operator xpc::object(&__p, v23);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }

    xpc_release(v23[0]);
    v37 = &v36;
    v38 = "kCallStartTime";
    xpc::dict::object_proxy::operator xpc::object(&v37, &__p);
    v10 = xpc::dyn_cast_or_default(&__p, 0);
    xpc_release(__p);
    v37 = &v36;
    v38 = "kCallDuration";
    xpc::dict::object_proxy::operator xpc::object(&v37, &__p);
    v11 = xpc::dyn_cast_or_default(&__p, 0);
    xpc_release(__p);
    v37 = &v36;
    v38 = "kCallFlags";
    xpc::dict::object_proxy::operator xpc::object(&v37, &__p);
    v12 = xpc::dyn_cast_or_default(&__p, 0);
    xpc_release(__p);
    v37 = &v36;
    v38 = "kCallSessionStart";
    xpc::dict::object_proxy::operator xpc::object(&v37, &__p);
    v13 = xpc::dyn_cast_or_default(&__p, 0);
    xpc_release(__p);
    v37 = &v36;
    v38 = "kMobileCountryCode";
    xpc::dict::object_proxy::operator xpc::object(&v37, &__p);
    v14 = xpc::dyn_cast_or_default(&__p, 0);
    xpc_release(__p);
    __p = 0;
    v26 = 0;
    v27 = 0;
    v23[0] = &v36;
    v23[1] = "kISOCountryCode";
    xpc::dict::object_proxy::operator xpc::object(v23, &v24);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }

    xpc_release(v24);
    if (v35 >= 0)
    {
      v15 = objecta;
    }

    else
    {
      v15 = objecta[0];
    }

    if (v33 >= 0)
    {
      v16 = &v31;
    }

    else
    {
      v16 = v31;
    }

    if (v30 >= 0)
    {
      v17 = &v28;
    }

    else
    {
      v17 = v28;
    }

    if (v27 >= 0)
    {
      cStr = &__p;
    }

    else
    {
      cStr = __p;
    }

    v6 = _CTCallCreateFromCallInfo(a1, UuidBytes, v9, v15, v16, v17, v10, v11, v12, v13, v14, cStr, 1u);
    if (xpc_dictionary_get_value(v36, "kAudioToneRelayFlag"))
    {
      v37 = &v36;
      v38 = "kAudioToneRelayFlag";
      xpc::dict::object_proxy::operator xpc::object(&v37, v23);
      v19 = xpc::dyn_cast_or_default(v23, 0);
      xpc_release(v23[0]);
      CTCallSetAudioToneRelayFlag(v6, v19);
    }

    if (xpc_dictionary_get_value(v36, "kMobileOriginatedCallEndFlag"))
    {
      v37 = &v36;
      v38 = "kMobileOriginatedCallEndFlag";
      xpc::dict::object_proxy::operator xpc::object(&v37, v23);
      v20 = xpc::dyn_cast_or_default(v23, 0);
      xpc_release(v23[0]);
      CTCallSetDeviceOriginatedEndFlag(v6, v20);
    }

    if (xpc_dictionary_get_value(v36, "kClientNeedsToSetupAudioInterruptions"))
    {
      v37 = &v36;
      v38 = "kClientNeedsToSetupAudioInterruptions";
      xpc::dict::object_proxy::operator xpc::object(&v37, v23);
      v21 = xpc::dyn_cast_or_default(v23, 0);
      xpc_release(v23[0]);
      CTCallSetSetupAudioInterruptionFlag(v6, v21);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(objecta[0]);
    }

    v5 = v36;
  }

  else
  {
    v6 = 0;
  }

  xpc_release(v5);
  return v6;
}

uint64_t _CTServerConnectionIsAnyCallActiveOrHeld(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", &object, "kRequest", &xdict);
    xpc_release(object);
    v11 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    object = &v11;
    v8 = "kIsAnyCallActiveOrHeld";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    xdict = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v11, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kIsAnyCallActiveOrHeld"))
    {
      object = &xdict;
      v8 = "kIsAnyCallActiveOrHeld";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(xdict);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionCopyUSSDString(uint64_t a1, xpc_object_t *a2, _BYTE *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", &object, "kRequest", &v13);
    xpc_release(object);
    v14 = v13;
    v13 = xpc_null_create();
    xpc_release(v13);
    object = &v14;
    v11 = "kUssdString";
    xpc::dict::object_proxy::operator=(&object, &v12);
    xpc_release(v12);
    v12 = 0;
    v13 = xpc_null_create();
    v3 = SendXpcMessageIf(1, a1, &v14, &v13);
    *a2 = 0;
    *a3 = 0;
    if (MEMORY[0x1865E16C0](v13) == MEMORY[0x1E69E9E80])
    {
      object = &v13;
      v11 = "kUssdResponseRequested";
      xpc::dict::object_proxy::operator xpc::object(&object, &v9);
      *a3 = xpc::dyn_cast_or_default(&v9, 0);
      xpc_release(v9);
      v9 = 0;
      object = &v13;
      v11 = "kUssdString";
      xpc::dict::object_proxy::operator xpc::object(&object, &v9);
      if (MEMORY[0x1865E16C0](v9) != MEMORY[0x1E69E9ED0])
      {
        object = 0;
        v8 = _CFXPCCreateCFObjectFromXPCObject();
        ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&object, &v8);
        *a2 = object;
      }

      xpc_release(v9);
    }

    xpc_release(v13);
    xpc_release(v14);
  }

  return v3;
}

uint64_t _CTServerConnectionSetDTMFType(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCallSetDtmfToneProperty", &object, "kRequest", &v9);
  xpc_release(object);
  v4 = v9;
  object = v9;
  v9 = xpc_null_create();
  xpc_release(v9);
  v5 = xpc_int64_create(a2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kCallDtmfType", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = SendXpcMessageIf(1, a1, &object, 0, 1);
  xpc_release(object);
  return v7;
}

uint64_t _CTServerConnectionGetDTMFType(uint64_t a1, _DWORD *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallGetDtmfToneProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kCallDtmfType";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v11, &v10);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kCallDtmfType";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetMultiPartyCallCountMaximum(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kMultiPartyMaxCallCount";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v11, &v10);
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kMultiPartyMaxCallCount";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0x63);
      xpc_release(v6);
    }

    else
    {
      *a2 = 99;
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionGetEmergencyCallStatus(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kEmergencyCallStatus";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v11, &v10);
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kEmergencyCallStatus";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    else
    {
      *a2 = 0;
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionEnableVoicePrivacy(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCallModelSetProperty", &object, "kRequest", &v9);
  xpc_release(object);
  v4 = v9;
  object = v9;
  v9 = xpc_null_create();
  xpc_release(v9);
  v5 = xpc_int64_create(a2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kCallVoicePrivacy", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = SendXpcMessageIf(1, a1, &object, 0, 1);
  xpc_release(object);
  return v7;
}

uint64_t _CTServerConnectionGetVoicePrivacy(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", &object, "kRequest", &v10);
    xpc_release(object);
    v11 = v10;
    v10 = xpc_null_create();
    xpc_release(v10);
    object = &v11;
    v8 = "kCallVoicePrivacy";
    xpc::dict::object_proxy::operator=(&object, &v9);
    xpc_release(v9);
    v9 = 0;
    v10 = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v11, &v10);
    if (MEMORY[0x1865E16C0](v10) == MEMORY[0x1E69E9E80])
    {
      object = &v10;
      v8 = "kCallVoicePrivacy";
      xpc::dict::object_proxy::operator xpc::object(&object, &v6);
      *a2 = xpc::dyn_cast_or_default(&v6, 0);
      xpc_release(v6);
    }

    else
    {
      *a2 = 0;
    }

    xpc_release(v10);
    xpc_release(v11);
  }

  return v2;
}

uint64_t _CTServerConnectionSendToVoicemail(void *a1, uint64_t a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelSendToVoicemail", object, "kRequest", &v11);
    xpc_release(object[0]);
    v5 = v11;
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    object[0] = _CTCallGetIdentifier(a2);
    object[1] = v6;
    v7 = xpc_data_create(object, 0x10uLL);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "kUuid", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v2 = SendXpcMessageIf(1, a1, &v12, 0, 1);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionCreatePrivateConversation(void *a1, uint64_t a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelCreatePrivateConversation", object, "kRequest", &v11);
    xpc_release(object[0]);
    v5 = v11;
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    object[0] = _CTCallGetIdentifier(a2);
    object[1] = v6;
    v7 = xpc_data_create(object, 0x10uLL);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "kUuid", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v2 = SendXpcMessageIf(1, a1, &v12, 0, 1);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionAnswerCall(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelAnswer", object, "kRequest", &v20);
    xpc_release(object[0]);
    v9 = v20;
    v21 = v20;
    v20 = xpc_null_create();
    xpc_release(v20);
    object[0] = _CTCallGetIdentifier(a2);
    object[1] = v10;
    v11 = xpc_data_create(object, 0x10uLL);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kUuid", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v13 = xpc_int64_create(a4);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, "kCallSourceMode", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    if (a3)
    {
      v15 = _CFXPCCreateXPCObjectFromCFObject();
      if (v15)
      {
LABEL_10:
        v16 = v15;
        xpc_dictionary_set_value(v9, "kSource", v15);
        v17 = xpc_null_create();
        xpc_release(v16);
        xpc_release(v17);
        v4 = SendXpcMessageIf(1, a1, &v21, 0, 1);
        xpc_release(v21);
        return v4;
      }
    }

    else
    {
      v15 = xpc_string_create("");
      if (v15)
      {
        goto LABEL_10;
      }
    }

    v15 = xpc_null_create();
    goto LABEL_10;
  }

  return v4;
}

uint64_t _CTServerConnectionEndThisCall(void *a1, uint64_t a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelEnd", object, "kRequest", &v11);
    xpc_release(object[0]);
    v5 = v11;
    v12 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    object[0] = _CTCallGetIdentifier(a2);
    object[1] = v6;
    v7 = xpc_data_create(object, 0x10uLL);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(v5, "kUuid", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v2 = SendXpcMessageIf(1, a1, &v12, 0, 1);
    xpc_release(v12);
  }

  return v2;
}

uint64_t _CTServerConnectionEndCall(void *a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCallModelEnd", &object, "kRequest", &v14);
  xpc_release(object);
  v6 = v14;
  object = v14;
  v14 = xpc_null_create();
  xpc_release(v14);
  if (!a2)
  {
    v7 = xpc_string_create("");
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = _CFXPCCreateXPCObjectFromCFObject();
  if (!v7)
  {
LABEL_4:
    v7 = xpc_null_create();
  }

LABEL_5:
  v8 = v7;
  xpc_dictionary_set_value(v6, "kSource", v7);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_int64_create(a3);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kCallSourceMode", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = SendXpcMessageIf(1, a1, &object, 0, 1);
  xpc_release(object);
  return v12;
}

uint64_t _CTServerConnectionCreateCall(const void *a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = 0x1600000001;
  if (!a1 || !a6)
  {
    goto LABEL_49;
  }

  v13 = xpc::dict_creator::dict_creator(&v47);
  xpc::dict_creator::operator()<char const*>("kCallModelDial", v13, "kRequest", &__p);
  xpc_release(v47);
  v14 = __p;
  v46 = __p;
  __p = xpc_null_create();
  xpc_release(__p);
  __p = 0;
  v45 = 0uLL;
  v42 = 0;
  v43 = 0uLL;
  if (!a2)
  {
    goto LABEL_14;
  }

  v47 = 0;
  v48 = 0uLL;
  ctu::cf::assign();
  v15 = v47;
  *&v49 = v48;
  *(&v49 + 7) = *(&v48 + 7);
  v16 = SHIBYTE(v48);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  __p = v15;
  *&v45 = v49;
  *(&v45 + 7) = *(&v49 + 7);
  HIBYTE(v45) = v16;
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v15;
  }

  v18 = xpc_string_create(p_p);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, "kPhoneNumber", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  if (!CFEqual(a2, @"kLocalEmergencyNumber"))
  {
LABEL_14:
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    LOBYTE(__p) = 0;
    HIBYTE(v45) = 0;
    goto LABEL_14;
  }

  *__p = 0;
  *&v45 = 0;
  if (a3)
  {
LABEL_15:
    ctu::cf::assign();
    memset(&v41[1], 0, 24);
    if (!a4)
    {
      goto LABEL_27;
    }

LABEL_19:
    v47 = 0;
    v48 = 0uLL;
    ctu::cf::assign();
    v20 = v47;
    *&v49 = v48;
    *(&v49 + 7) = *(&v48 + 7);
    v21 = SHIBYTE(v48);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    v42 = v20;
    *&v43 = v49;
    *(&v43 + 7) = *(&v49 + 7);
    HIBYTE(v43) = v21;
    if (v21 >= 0)
    {
      v22 = &v42;
    }

    else
    {
      v22 = v20;
    }

    v23 = xpc_string_create(v22);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v14, "kSource", v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    goto LABEL_27;
  }

LABEL_18:
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_27:
  v25 = xpc_int64_create(a5);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, "kCallSourceMode", v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v41[0] = xpc_null_create();
  v6 = SendXpcMessageIf(1, a1, &v46, v41);
  *a6 = 0;
  if (MEMORY[0x1865E16C0](v41[0]) == MEMORY[0x1E69E9E80])
  {
    v47 = v41;
    *&v48 = "kValid";
    xpc::dict::object_proxy::operator xpc::object(&v47, &v49);
    v27 = xpc::dyn_cast_or_default(&v49, 0);
    xpc_release(v49);
    if (v27)
    {
      v47 = v41;
      *&v48 = "kUuid";
      xpc::dict::object_proxy::operator xpc::object(&v47, &v49);
      UuidBytes = createUuidBytes(&v49);
      v29 = v28;
      xpc_release(v49);
      v47 = v41;
      *&v48 = "kCallStartTime";
      xpc::dict::object_proxy::operator xpc::object(&v47, &v49);
      v30 = xpc::dyn_cast_or_default(&v49, 0);
      xpc_release(v49);
      v47 = v41;
      *&v48 = "kCallFlags";
      xpc::dict::object_proxy::operator xpc::object(&v47, &v49);
      v31 = xpc::dyn_cast_or_default(&v49, 0);
      xpc_release(v49);
      v47 = v41;
      *&v48 = "kMobileCountryCode";
      xpc::dict::object_proxy::operator xpc::object(&v47, &v49);
      v32 = xpc::dyn_cast_or_default(&v49, 0);
      xpc_release(v49);
      v49 = 0uLL;
      v50 = 0;
      v39[0] = v41;
      v39[1] = "kISOCountryCode";
      xpc::dict::object_proxy::operator xpc::object(v39, &object);
      v47 = 0;
      v48 = 0uLL;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47);
      }

      xpc_release(object);
      if (v45 >= 0)
      {
        v33 = &__p;
      }

      else
      {
        v33 = __p;
      }

      if (v43 >= 0)
      {
        v34 = &v42;
      }

      else
      {
        v34 = v42;
      }

      if (v50 >= 0)
      {
        cStr = &v49;
      }

      else
      {
        cStr = v49;
      }

      *a6 = _CTCallCreateFromCallInfo(a1, UuidBytes, v29, v33, "", v34, v30, 0, v31, 0, v32, cStr, 1u);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }
    }
  }

  xpc_release(v41[0]);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v46);
LABEL_49:
  v36 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _CTServerConnectionCopyAllCallsWithTypes(const void *a1, unsigned int a2, CFArrayRef *a3)
{
  v3 = 0x1600000001;
  if (a1 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetAllCallInfo", &object, "kRequest", &v45);
    xpc_release(object);
    xdict = v45;
    v45 = xpc_null_create();
    xpc_release(v45);
    v7 = xpc_int64_create(a2);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, "kCallTypes", v7);
    v8 = xpc_null_create();
    xpc_release(v7);
    xpc_release(v8);
    v49 = xpc_null_create();
    v3 = SendXpcMessageIf(1, a1, &xdict, &v49);
    *a3 = 0;
    v9 = MEMORY[0x1865E16C0](v49);
    v10 = MEMORY[0x1E69E9E80];
    if (v9 != MEMORY[0x1E69E9E80])
    {
      goto LABEL_57;
    }

    xarray = 0;
    object = &v49;
    v52 = "kCallArray";
    xpc::dict::object_proxy::operator xpc::array(&object, &xarray);
    v11 = MEMORY[0x1865E16C0](xarray);
    v12 = MEMORY[0x1E69E9E50];
    if (v11 != MEMORY[0x1E69E9E50])
    {
LABEL_56:
      xpc_release(xarray);
LABEL_57:
      xpc_release(v49);
      xpc_release(xdict);
      return v3;
    }

    v45 = 0;
    v46 = 0;
    v47 = 0;
    __p = 0;
    v43 = 0;
    v44 = 0;
    v13 = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
      v40 = v13;
    }

    else
    {
      v13 = xpc_null_create();
      v40 = v13;
      if (!v13)
      {
        v40 = xpc_null_create();
LABEL_11:
        v41 = 0;
        xpc_release(v13);
        v14 = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
        }

        else
        {
          v14 = xpc_null_create();
        }

        if (MEMORY[0x1865E16C0](xarray) == v12)
        {
          count = xpc_array_get_count(xarray);
          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
          count = 0;
          if (v14)
          {
LABEL_16:
            xpc_retain(v14);
            v16 = v14;
            goto LABEL_19;
          }
        }

        v16 = xpc_null_create();
LABEL_19:
        xpc_release(v14);
        for (i = v41; i != count || v40 != v16; v41 = i)
        {
          v39 = 0;
          object = &v40;
          v52 = i;
          xpc::array::object_proxy::operator xpc::dict(&object, &v39);
          if (MEMORY[0x1865E16C0](v39) == v10)
          {
            if (v18)
            {
              v19 = v18;
              CFRetain(v18);
              v20 = v46;
              if (v46 >= v47)
              {
                v22 = (v46 - v45) >> 3;
                if ((v22 + 1) >> 61)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v23 = (v47 - v45) >> 2;
                if (v23 <= v22 + 1)
                {
                  v23 = v22 + 1;
                }

                if (v47 - v45 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v24 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v24 = v23;
                }

                v55 = &v45;
                if (v24)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ctu::cf::CFSharedRef<void const>>>(&v45, v24);
                }

                v25 = (8 * v22);
                *v25 = v19;
                v21 = (8 * v22 + 8);
                CFRetain(v19);
                v26 = (v25 + v45 - v46);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ctu::cf::CFSharedRef<void const>>,ctu::cf::CFSharedRef<void const>*>(&v45, v45, v46, v26);
                v27 = v45;
                v28 = v47;
                v45 = v26;
                v46 = v21;
                v47 = 0;
                v53 = v27;
                v54 = v28;
                object = v27;
                v52 = v27;
                std::__split_buffer<ctu::cf::CFSharedRef<void const>>::~__split_buffer(&object);
                v10 = MEMORY[0x1E69E9E80];
              }

              else
              {
                *v46 = v19;
                v21 = v20 + 1;
                CFRetain(v19);
              }

              v46 = v21;
              v29 = v43;
              if (v43 >= v44)
              {
                v31 = (v43 - __p) >> 3;
                if ((v31 + 1) >> 61)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v32 = (v44 - __p) >> 2;
                if (v32 <= v31 + 1)
                {
                  v32 = v31 + 1;
                }

                if (v44 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v33 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v32;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ctu::cf::CFSharedRef<void const>>>(&__p, v33);
                }

                *(8 * v31) = v19;
                v30 = 8 * v31 + 8;
                v34 = (8 * v31 - (v43 - __p));
                memcpy(v34, __p, v43 - __p);
                v35 = __p;
                __p = v34;
                v43 = v30;
                v44 = 0;
                if (v35)
                {
                  operator delete(v35);
                }

                v10 = MEMORY[0x1E69E9E80];
              }

              else
              {
                *v43 = v19;
                v30 = (v29 + 8);
              }

              v43 = v30;
              CFRelease(v19);
            }
          }

          xpc_release(v39);
          i = v41 + 1;
        }

        xpc_release(v16);
        xpc_release(v40);
        v37 = CFGetAllocator(a1);
        *a3 = CFArrayCreate(v37, __p, (v43 - __p) >> 3, MEMORY[0x1E695E9C0]);
        if (__p)
        {
          v43 = __p;
          operator delete(__p);
        }

        object = &v45;
        std::vector<ctu::cf::CFSharedRef<void const>>::__destroy_vector::operator()[abi:nn200100](&object);
        goto LABEL_56;
      }
    }

    xpc_retain(v13);
    goto LABEL_11;
  }

  return v3;
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
LABEL_5:
      *a2 = xpc_null_create();
      goto LABEL_7;
    }
  }

  if (MEMORY[0x1865E16C0](v4) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_5;
  }

  xpc_retain(v4);
LABEL_7:

  xpc_release(v4);
}

uint64_t _CTServerConnectionStartDTMFTone(void *a1, int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kCallSetDtmfToneProperty", &object, "kRequest", &v9);
  xpc_release(object);
  v4 = v9;
  object = v9;
  v9 = xpc_null_create();
  xpc_release(v9);
  v5 = xpc_int64_create(a2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kCallDtmfStart", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = SendXpcMessageIf(1, a1, &object, 0, 1);
  xpc_release(object);
  return v7;
}

uint64_t _CTServerConnectionStopDTMFTone(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kCallSetDtmfToneProperty", object, "kRequest", &v6);
  xpc_release(object[0]);
  v7 = v6;
  v6 = xpc_null_create();
  xpc_release(v6);
  object[0] = &v7;
  object[1] = "kCallDtmfStop";
  xpc::dict::object_proxy::operator=(object, &v5);
  xpc_release(v5);
  v5 = 0;
  v2 = SendXpcMessageIf(1, a1, &v7, 0, 1);
  xpc_release(v7);
  return v2;
}

uint64_t _CTServerConnectionSendDTMFDigitsNow(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kCallSetDtmfToneProperty", object, "kRequest", &v6);
  xpc_release(object[0]);
  v7 = v6;
  v6 = xpc_null_create();
  xpc_release(v6);
  object[0] = &v7;
  object[1] = "kCallDtmfSendNow";
  xpc::dict::object_proxy::operator=(object, &v5);
  xpc_release(v5);
  v5 = 0;
  v2 = SendXpcMessageIf(1, a1, &v7, 0, 1);
  xpc_release(v7);
  return v2;
}

uint64_t _CTServerConnectionCancelHardPause(void *a1)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kCallSetDtmfToneProperty", object, "kRequest", &v6);
  xpc_release(object[0]);
  v7 = v6;
  v6 = xpc_null_create();
  xpc_release(v6);
  object[0] = &v7;
  object[1] = "kCallDtmfCancelHardPause";
  xpc::dict::object_proxy::operator=(object, &v5);
  xpc_release(v5);
  v5 = 0;
  v2 = SendXpcMessageIf(1, a1, &v7, 0, 1);
  xpc_release(v7);
  return v2;
}

uint64_t _CTServerConnectionCopyHardPauseDigits(uint64_t a1, xpc_object_t *a2, _BYTE *a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && a3)
  {
    xpc::dict_creator::dict_creator(&object);
    xpc::dict_creator::operator()<char const*>("kCallGetDtmfToneProperty", &object, "kRequest", &v13);
    xpc_release(object);
    v14 = v13;
    v13 = xpc_null_create();
    xpc_release(v13);
    object = &v14;
    v11 = "kCallDtmfPauseDigits";
    xpc::dict::object_proxy::operator=(&object, &v12);
    xpc_release(v12);
    v12 = 0;
    v13 = xpc_null_create();
    v3 = SendXpcMessageIf(1, a1, &v14, &v13);
    *a2 = 0;
    *a3 = 0;
    if (MEMORY[0x1865E16C0](v13) == MEMORY[0x1E69E9E80])
    {
      v9 = 0;
      object = &v13;
      v11 = "kCallDtmfPauseDigits";
      xpc::dict::object_proxy::operator xpc::object(&object, &v9);
      if (MEMORY[0x1865E16C0](v9) != MEMORY[0x1E69E9ED0])
      {
        object = 0;
        v8 = _CFXPCCreateCFObjectFromXPCObject();
        ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(&object, &v8);
        if (object)
        {
          if (CFStringGetLength(object))
          {
            *a2 = object;
          }

          else if (object)
          {
            CFRelease(object);
          }
        }
      }

      object = &v13;
      v11 = "kCallDtmfPauseReadyToSend";
      xpc::dict::object_proxy::operator xpc::object(&object, &v8);
      *a3 = xpc::dyn_cast_or_default(&v8, 0);
      xpc_release(v8);
      xpc_release(v9);
    }

    xpc_release(v13);
    xpc_release(v14);
  }

  return v3;
}

unint64_t _CTServerConnectionAddHeldToMultiPartyCall(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallAddHeldToMultiPartyCall", object, "kRequest", &v8);
    xpc_release(object[0]);
    v9 = v8;
    v8 = xpc_null_create();
    xpc_release(v8);
    v8 = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v9, &v8);
    if (MEMORY[0x1865E16C0](v8) == MEMORY[0x1E69E9E80] && !HIDWORD(v2))
    {
      object[0] = &v8;
      object[1] = "kCallAddHeldToMultiPartyCall";
      xpc::dict::object_proxy::operator xpc::object(object, &v7);
      *a2 = xpc::dyn_cast_or_default(&v7, 1);
      xpc_release(v7);
    }

    xpc_release(v8);
    xpc_release(v9);
  }

  return v2;
}

uint64_t _CTServerConnectionHoldActiveCall(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kCallHoldActive", object, "kRequest", &v11);
  xpc_release(object[0]);
  v4 = v11;
  v12 = v11;
  v11 = xpc_null_create();
  xpc_release(v11);
  object[0] = _CTCallGetIdentifier(a2);
  object[1] = v5;
  v6 = xpc_data_create(object, 0x10uLL);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kUuid", v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = SendXpcMessageIf(1, a1, &v12, 0, 1);
  xpc_release(v12);
  return v8;
}

unint64_t _CTServerConnectionResumeHeldCall(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallResumeHeld", object, "kRequest", v12);
    xpc_release(object[0]);
    v7 = v12[0];
    v16 = v12[0];
    v12[0] = xpc_null_create();
    xpc_release(v12[0]);
    object[0] = _CTCallGetIdentifier(a3);
    object[1] = v8;
    v9 = xpc_data_create(object, 0x10uLL);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kUuid", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v14 = xpc_null_create();
    v3 = SendXpcMessageIf(1, a1, &v16, &v14);
    if (MEMORY[0x1865E16C0](v14) == MEMORY[0x1E69E9E80] && !HIDWORD(v3))
    {
      v12[0] = &v14;
      v12[1] = "kCallResumeHeld";
      xpc::dict::object_proxy::operator xpc::object(v12, &v13);
      *a2 = xpc::dyn_cast_or_default(&v13, 1);
      xpc_release(v13);
    }

    xpc_release(v14);
    xpc_release(v16);
  }

  return v3;
}

unint64_t _CTServerConnectionCopyCallManagementState(uint64_t a1, void *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelGetProperty", object, "kRequest", &v9);
    xpc_release(object[0]);
    v10 = v9;
    v9 = xpc_null_create();
    xpc_release(v9);
    object[0] = &v10;
    object[1] = "kCallManagementState";
    xpc::dict::object_proxy::operator=(object, &v8);
    xpc_release(v8);
    v8 = 0;
    object[0] = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v10, object);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](object[0]) == MEMORY[0x1E69E9E80] && !HIDWORD(v2))
    {
      v9 = 0;
      v6 = _CFXPCCreateCFObjectFromXPCObject();
      ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v9, &v6);
      *a2 = v9;
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  return v2;
}

uint64_t _CTServerConnectionStartOTASP(void *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0x1600000001;
  }

  xpc::dict_creator::dict_creator(&object);
  xpc::dict_creator::operator()<char const*>("kStartOtasp", &object, "kRequest", &v10);
  xpc_release(object);
  v4 = v10;
  object = v10;
  v10 = xpc_null_create();
  xpc_release(v10);
  v5 = xpc_int64_create(a2);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kStartOtaspShowUI", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = SendXpcMessage(a1, &object, 0, v7);
  xpc_release(object);
  return v8;
}

uint64_t _CTServerConnectionPullCallIsPossible(uint64_t a1, _BYTE *a2)
{
  v2 = 0x1600000001;
  if (a1 && a2)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kPullCallIsPossible", object, "kRequest", &xdict);
    xpc_release(object[0]);
    v9 = xdict;
    xdict = xpc_null_create();
    xpc_release(xdict);
    xdict = xpc_null_create();
    v2 = SendXpcMessageIf(1, a1, &v9, &xdict);
    *a2 = 0;
    if (MEMORY[0x1865E16C0](xdict) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_value(xdict, "kPullCallIsPossible"))
    {
      object[0] = &xdict;
      object[1] = "kPullCallIsPossible";
      xpc::dict::object_proxy::operator xpc::object(object, &v7);
      *a2 = xpc::dyn_cast_or_default(&v7, 0);
      xpc_release(v7);
    }

    xpc_release(xdict);
    xpc_release(v9);
  }

  return v2;
}

uint64_t _CTServerConnectionEndCallWithCauseCode(void *a1, uint64_t a2, unsigned int a3)
{
  v3 = 0x1600000001;
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    xpc::dict_creator::dict_creator(object);
    xpc::dict_creator::operator()<char const*>("kCallModelEnd", object, "kRequest", &v15);
    xpc_release(object[0]);
    v7 = v15;
    v16 = v15;
    v15 = xpc_null_create();
    xpc_release(v15);
    object[0] = _CTCallGetIdentifier(a2);
    object[1] = v8;
    v9 = xpc_data_create(object, 0x10uLL);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kUuid", v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_int64_create(a3);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, "kDisconnectCauseCode", v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v3 = SendXpcMessageIf(1, a1, &v16, 0, 1);
    xpc_release(v16);
  }

  return v3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ctu::cf::CFSharedRef<void const>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ctu::cf::CFSharedRef<void const>>,ctu::cf::CFSharedRef<void const>*>(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*v5)
      {
        CFRelease(*v5);
      }

      ++v5;
    }
  }
}

void **std::__split_buffer<ctu::cf::CFSharedRef<void const>>::~__split_buffer(void **a1)
{
  std::__split_buffer<ctu::cf::CFSharedRef<void const>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ctu::cf::CFSharedRef<void const>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    v5 = *(v1 - 8);
    v1 -= 8;
    v4 = v5;
    *(a1 + 16) = v1;
    if (v5)
    {
      CFRelease(v4);
      v1 = *(a1 + 16);
    }
  }
}

void std::vector<ctu::cf::CFSharedRef<void const>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ctu::cf::CFSharedRef<void const>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ctu::cf::CFSharedRef<void const>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 8)
  {
    v5 = *(i - 8);
    v4 = v5;
    if (v5)
    {
      CFRelease(v4);
    }
  }

  a1[1] = v2;
}

const char *CTActivationPolicyCarrierLockAsString(uint64_t a1)
{
  v1 = "CTActivationPolicyCarrierLockUnknown";
  if (a1 == 1)
  {
    v1 = "CTActivationPolicyCarrierUnlocked";
  }

  if (a1 == 2)
  {
    return "CTActivationPolicyCarrierLocked";
  }

  else
  {
    return v1;
  }
}