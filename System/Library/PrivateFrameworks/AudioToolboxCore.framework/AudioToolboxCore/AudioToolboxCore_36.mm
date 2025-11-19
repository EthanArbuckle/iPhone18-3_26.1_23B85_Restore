void sub_18F85D024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CASerializer *operator<<(CASerializer *a1, uint64_t a2)
{
  CASerializer::Write(a1, a2);
  CASerializer::Write(a1, (a2 + 4));
  CASerializer::Write(a1, (a2 + 8));
  CASerializer::Write(a1, (a2 + 12));
  return a1;
}

{
  CASerializer::Write(a1, a2);
  CASerializer::Write(a1, (a2 + 4));
  CASerializer::Write(a1, (a2 + 8));
  CASerializer::Write(a1, (a2 + 12));
  CASerializer::Write(a1, (a2 + 16));
  return a1;
}

CADeserializer *operator>>(CADeserializer *a1, uint64_t a2)
{
  CADeserializer::Read(a1, a2);
  CADeserializer::Read(a1, (a2 + 4));
  CADeserializer::Read(a1, (a2 + 8));
  CADeserializer::Read(a1, (a2 + 12));
  return a1;
}

uint64_t getBufferPtrFromDeserializer<void const>(CADeserializer *a1, void *a2, int a3)
{
  if (*a2)
  {

    return CADeserializer::GetAndAdvanceReadPtr(a1);
  }

  else
  {
    if (a3)
    {
      result = CADeserializer::GetAndAdvanceReadPtr(a1);
    }

    else
    {
      result = 0;
    }

    *a2 = result;
  }

  return result;
}

CASerializer *operator<<(CASerializer *a1, const void **a2)
{
  CASerializer::Write(a1, a2);
  if (*a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    do
    {
      CASerializer::Write(a1, v5);
      CASerializer::Write(a1, v5 + 4);
      v6 = *(v5 + 1);
      CASerializer::Write(a1, v5[1]);
      ++v4;
      v5 += 2;
    }

    while (v4 < *a2);
  }

  return a1;
}

CADeserializer *operator>>(CADeserializer *a1, _DWORD *a2)
{
  CADeserializer::Read(a1, a2);
  if (*a2)
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      CADeserializer::Read(a1, v5);
      CADeserializer::Read(a1, v5 + 4);
      v6 = *(v5 + 1);
      if (v6)
      {
        v7 = v5[1];
        v8 = *(v5 + 1);
        Ptr = CADeserializer::GetAndAdvanceReadPtr(a1);
        if (v7)
        {
          memcpy(v7, Ptr, v6);
        }

        else
        {
          v5[1] = Ptr;
        }
      }

      else
      {
        v5[1] = 0;
      }

      ++v4;
      v5 += 2;
    }

    while (v4 < *a2);
  }

  return a1;
}

uint64_t FigCPECryptorMarshaller::Deserialize(FigCPECryptorMarshaller *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  if (*a4 - 1 < 7)
  {
    return 0;
  }

  Marshaller::CheckDest(this, a3, a4, 8uLL);
  cf = 0;
  operator>>();
  v9[0] = 0;
  v9[1] = &cf;
  if (!MediaToolboxLibraryCore() || !getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc())
  {
    goto LABEL_7;
  }

  CryptorFromSerializedRecipeSymbolLoc = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc();
  if (CryptorFromSerializedRecipeSymbolLoc)
  {
    if (!CryptorFromSerializedRecipeSymbolLoc(*MEMORY[0x1E695E480], 0, v9))
    {
      Marshaller::AddCreatedCFObject(this, v9[0]);
      **a3 = v9[0];
      v4 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
LABEL_8:
    CFRelease(cf);
    return v4;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_18F85D48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::raii::v1::detail::ScopeGuard<FigCPECryptorMarshaller::Deserialize(CADeserializer &,void *&,unsigned int &)::{lambda(void)#1},applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t MediaToolboxLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MediaToolboxLibraryCore(char **)::frameworkLibrary)
  {
    MediaToolboxLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = MediaToolboxLibraryCore(char **)::frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr;
  v6 = getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr;
  if (!getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke_11409;
    v2[3] = &unk_1E72C1F38;
    v2[4] = &v3;
    ___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke_11409(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18F85D628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL58getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLocv_block_invoke_11409(uint64_t a1)
{
  v2 = MediaToolboxLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "FigCPECryptorCreateCryptorFromSerializedRecipe");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigCPECryptorCreateCryptorFromSerializedRecipeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23MediaToolboxLibraryCorePPc_block_invoke_11413(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaToolboxLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FigCPECryptorMarshaller::Serialize(FigCPECryptorMarshaller *this, CASerializer *a2, CFTypeRef *a3, int a4)
{
  if (a4 != 8)
  {
    return 0;
  }

  v11 = 0;
  v6 = *a3;
  CoreMediaLibraryCore(0);
  getCMBaseObjectGetVTableSymbolLoc();
  VTableSymbolLoc = getCMBaseObjectGetVTableSymbolLoc();
  if (VTableSymbolLoc)
  {
    v8 = (*(VTableSymbolLoc(v6) + 16) + 264);
    if (!*v8 || (*v8)(v6, &v11))
    {
      return 0;
    }

    if (*a3)
    {
      if (*(this + 32) == 1)
      {
        CFRelease(*a3);
      }
    }

    Marshaller::AddCreatedCFObject(this, v11);
    operator<<();
    return 1;
  }

  else
  {
    dlerror();
    v10 = abort_report_np();
    return CoreMediaLibraryCore(v10);
  }
}

uint64_t CoreMediaLibraryCore(char **a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!CoreMediaLibraryCore(char **)::frameworkLibrary)
  {
    CoreMediaLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = CoreMediaLibraryCore(char **)::frameworkLibrary;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getCMBaseObjectGetVTableSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v0 = getCMBaseObjectGetVTableSymbolLoc(void)::ptr;
  v6 = getCMBaseObjectGetVTableSymbolLoc(void)::ptr;
  if (!getCMBaseObjectGetVTableSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = ___ZL33getCMBaseObjectGetVTableSymbolLocv_block_invoke;
    v2[3] = &unk_1E72C1ED8;
    v2[4] = &v3;
    ___ZL33getCMBaseObjectGetVTableSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_18F85DA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL33getCMBaseObjectGetVTableSymbolLocv_block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = CoreMediaLibraryCore(&v5);
  v3 = v5;
  if (!v2)
  {
    v3 = abort_report_np();
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    free(v3);
  }

  result = dlsym(v2, "CMBaseObjectGetVTable");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMBaseObjectGetVTableSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20CoreMediaLibraryCorePPc_block_invoke_11417(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMediaLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void FigCPECryptorMarshaller::~FigCPECryptorMarshaller(FigCPECryptorMarshaller *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<OriginInfo>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, (v7 & 0xFFFFFFFE) - ((v7 & 0xFFFFFFFE) % 0x12));
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<OriginInfo>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t ImmersiveRendererDataMarshaller::Deserialize(ImmersiveRendererDataMarshaller *this, CADeserializer *a2, void **a3, unsigned int *a4)
{
  v4 = a2->var3 - a2->var2;
  v5 = *a4;
  if (v5)
  {
    v6 = v4 > v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  if (v7 == 1)
  {
    Marshaller::CheckDest(this, a3, a4, v4);
    v17 = 0;
    CADeserializer::Read(a2, &v17);
    v10 = v17;
    v11 = *a3;
    CADeserializer::Read(a2, *a3 + 4);
    if (v10 == 2)
    {
      CADeserializer::Read(a2, v11 + 8);
      v12 = *(v11 + 2);
      Ptr = CADeserializer::GetAndAdvanceReadPtr(a2);
      memcpy(v11 + 12, Ptr, *(v11 + 2));
    }

    else if (*(v11 + 1))
    {
      v14 = 0;
      v15 = v11 + 24;
      do
      {
        CADeserializer::Read(a2, v15 - 16);
        CADeserializer::Read(a2, v15 - 12);
        CADeserializer::Read(a2, v15 - 8);
        CADeserializer::Read(a2, v15 - 4);
        CADeserializer::Read(a2, v15);
        ++v14;
        v15 += 20;
      }

      while (v14 < *(v11 + 1));
    }

    *v11 = v17;
  }

  return v7;
}

uint64_t ImmersiveRendererDataMarshaller::Serialize(ImmersiveRendererDataMarshaller *this, CASerializer *a2, char *a3)
{
  v5 = a3 + 4;
  v6 = *a3;
  CASerializer::Write(a2, a3);
  CASerializer::Write(a2, v5);
  if (v6 == 2)
  {
    CASerializer::Write(a2, a3 + 8);
    v7 = *(a3 + 2);
    CASerializer::Write(a2, a3 + 12);
  }

  else if (*v5)
  {
    v8 = 0;
    v9 = a3 + 24;
    do
    {
      CASerializer::Write(a2, v9 - 16);
      CASerializer::Write(a2, v9 - 12);
      v11 = *(v9 - 2);
      CASerializer::Write(a2, &v11);
      CASerializer::Write(a2, v9 - 4);
      CASerializer::Write(a2, v9);
      ++v8;
      v9 += 20;
    }

    while (v8 < *v5);
  }

  return 1;
}

void ImmersiveRendererDataMarshaller::~ImmersiveRendererDataMarshaller(ImmersiveRendererDataMarshaller *this)
{
  Marshaller::~Marshaller(this);

  JUMPOUT(0x193ADF220);
}

void *TSimpleMarshaller<DRCTypeFromPacket>::DeserializeT(int a1, CADeserializer *this, void *a3)
{
  if (*(a3 + 2))
  {
    CADeserializer::GetAndAdvanceReadPtr(this);
  }

  else
  {
    CADeserializer::Read(this, a3 + 1);
  }

  v5 = *a3;
  operator>>();
  CADeserializer::Read(this, v5 + 5);
  v6 = *(v5 + 10);
  if (v6)
  {
    v7 = v5[6];
    v8 = *(v5 + 10);
    Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
    if (v7)
    {
      memcpy(v7, Ptr, v6);
    }

    else
    {
      v5[6] = Ptr;
    }
  }

  else
  {
    v5[6] = 0;
  }

  result = CADeserializer::Read(this, v5 + 7);
  v11 = *(v5 + 14);
  if (v11)
  {
    v12 = v5[8];
    v13 = *(v5 + 14);
    result = CADeserializer::GetAndAdvanceReadPtr(this);
    if (v12)
    {

      return memcpy(v12, result, v11);
    }

    else
    {
      v5[8] = result;
    }
  }

  else
  {
    v5[8] = 0;
  }

  return result;
}

uint64_t TSimpleMarshaller<DRCTypeFromPacket>::SerializeT(int a1, CASerializer *this, uint64_t *a3)
{
  CASerializer::Write(this, a3 + 1);
  v5 = *a3;
  operator<<();
  CASerializer::Write(this, (v5 + 40));
  v6 = *(v5 + 40);
  CASerializer::Write(this, *(v5 + 48));
  CASerializer::Write(this, (v5 + 56));
  v7 = *(v5 + 64);
  v8 = *(v5 + 56);

  return CASerializer::Write(this, v7);
}

uint64_t TMarshaller<DRCTypeFromPacket>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x10) == 0x10)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x10uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<DRCTypeFromPacket>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 16;
}

void TSimpleMarshaller<DRCTypeFromPacket>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

CADeserializer *TSimpleMarshaller<PrePostDataForGapless>::DeserializeT(uint64_t a1, CADeserializer *a2, uint64_t a3)
{
  v4 = operator>>(a2, *a3);
  v5 = *(a3 + 8);

  return operator>>(v4, v5);
}

CASerializer *TSimpleMarshaller<PrePostDataForGapless>::SerializeT(uint64_t a1, CASerializer *a2, const void ***a3)
{
  v4 = operator<<(a2, *a3);
  v5 = a3[1];

  return operator<<(v4, v5);
}

uint64_t TMarshaller<PrePostDataForGapless>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x10) == 0x10)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x10uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<PrePostDataForGapless>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 16;
}

void TSimpleMarshaller<PrePostDataForGapless>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<AudioFormatInfo>::DeserializeT(uint64_t a1, CADeserializer *a2, uint64_t a3)
{
  operator>>();
  CADeserializer::Read(a2, (a3 + 48));
  v5 = *(a3 + 48);

  return getBufferPtrFromDeserializer<void const>(a2, (a3 + 40), v5);
}

uint64_t TSimpleMarshaller<AudioFormatInfo>::SerializeT(uint64_t a1, CASerializer *a2, uint64_t a3)
{
  operator<<();
  CASerializer::Write(a2, (a3 + 48));
  v5 = *(a3 + 40);
  v6 = *(a3 + 48);

  return CASerializer::Write(a2, v5);
}

uint64_t TMarshaller<AudioFormatInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 56 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x38uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TMarshaller<AudioFormatInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 56)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 56;
}

void TSimpleMarshaller<AudioFormatInfo>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<VorbisCodecModeInfo>::DeserializeT(int a1, CADeserializer *this, void *a3)
{
  CADeserializer::Read(this, a3 + 1);
  getBufferPtrFromDeserializer<void const>(this, a3, *(a3 + 2));
  CADeserializer::Read(this, a3 + 12);
  CADeserializer::Read(this, a3 + 2);
  CADeserializer::Read(this, a3 + 20);

  return CADeserializer::Read(this, a3 + 3);
}

uint64_t TSimpleMarshaller<VorbisCodecModeInfo>::SerializeT(int a1, CASerializer *this, const void **a3)
{
  CASerializer::Write(this, a3 + 1);
  v5 = *(a3 + 2);
  CASerializer::Write(this, *a3);
  CASerializer::Write(this, a3 + 12);
  CASerializer::Write(this, a3 + 2);
  CASerializer::Write(this, a3 + 20);

  return CASerializer::Write(this, a3 + 3);
}

uint64_t TMarshaller<VorbisCodecModeInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x20) == 0x20)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x20uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<VorbisCodecModeInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 32)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 32;
}

void TSimpleMarshaller<VorbisCodecModeInfo>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<AudioCodecMagicCookieInfo>::DeserializeT(int a1, CADeserializer *this, int *a3)
{
  CADeserializer::Read(this, a3);
  v5 = *a3;

  return getBufferPtrFromDeserializer<void const>(this, a3 + 1, v5);
}

uint64_t TSimpleMarshaller<AudioCodecMagicCookieInfo>::SerializeT(int a1, CASerializer *this, unsigned int *a3)
{
  CASerializer::Write(this, a3);
  v5 = *(a3 + 1);
  v6 = *a3;

  return CASerializer::Write(this, v5);
}

uint64_t TMarshaller<AudioCodecMagicCookieInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x10) == 0x10)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x10uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<AudioCodecMagicCookieInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 16;
}

void TSimpleMarshaller<AudioCodecMagicCookieInfo>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<ProfileLevelInfo>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF8);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<ProfileLevelInfo>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void *TSimpleMarshaller<ESDSFromADTSPacket>::DeserializeT(int a1, CADeserializer *this, char *a3)
{
  CADeserializer::Read(this, a3);
  v5 = *a3;
  if (v5)
  {
    v6 = *(a3 + 1);
    v7 = *a3;
    Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
    if (v6)
    {
      memcpy(v6, Ptr, v5);
    }

    else
    {
      *(a3 + 1) = Ptr;
    }
  }

  else
  {
    *(a3 + 1) = 0;
  }

  result = CADeserializer::Read(this, a3 + 16);
  v10 = *(a3 + 4);
  if (v10)
  {
    v11 = *(a3 + 3);
    v12 = *(a3 + 4);
    result = CADeserializer::GetAndAdvanceReadPtr(this);
    if (v11)
    {

      return memcpy(v11, result, v10);
    }

    else
    {
      *(a3 + 3) = result;
    }
  }

  else
  {
    *(a3 + 3) = 0;
  }

  return result;
}

uint64_t TSimpleMarshaller<ESDSFromADTSPacket>::SerializeT(int a1, CASerializer *this, const void **a3)
{
  CASerializer::Write(this, a3);
  v5 = *a3;
  CASerializer::Write(this, a3[1]);
  CASerializer::Write(this, a3 + 2);
  v6 = a3[3];
  v7 = *(a3 + 4);

  return CASerializer::Write(this, v6);
}

uint64_t TMarshaller<ESDSFromADTSPacket>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x20) == 0x20)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x20uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<ESDSFromADTSPacket>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 32)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 32;
}

void TSimpleMarshaller<ESDSFromADTSPacket>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<AudibleAAXCodecAuthorizationInfo>::DeserializeT(uint64_t a1, CADeserializer *a2, void *a3)
{
  operator>>();
  CADeserializer::Read(a2, a3 + 6);
  getBufferPtrFromDeserializer<void const>(a2, a3 + 5, *(a3 + 12));
  CADeserializer::Read(a2, a3 + 52);

  return CADeserializer::Read(a2, a3 + 7);
}

uint64_t TSimpleMarshaller<AudibleAAXCodecAuthorizationInfo>::SerializeT(uint64_t a1, CASerializer *a2, const void **a3)
{
  operator<<();
  CASerializer::Write(a2, a3 + 6);
  v5 = *(a3 + 12);
  CASerializer::Write(a2, a3[5]);
  CASerializer::Write(a2, a3 + 52);

  return CASerializer::Write(a2, a3 + 7);
}

uint64_t TMarshaller<AudibleAAXCodecAuthorizationInfo>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x40) == 0x40)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x40uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<AudibleAAXCodecAuthorizationInfo>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 64)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 64;
}

void TSimpleMarshaller<AudibleAAXCodecAuthorizationInfo>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AudioStreamPacketDependencyInfo>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF0);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioStreamPacketDependencyInfo>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<SpeechCodecBundleData>::DeserializeT(int a1, CADeserializer *this, void **a3)
{
  CADeserializer::Read(this, a3 + 1);
  v5 = *(a3 + 2);
  v6 = *a3;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    *a3 = 3735928559;
  }

  else if (v5)
  {
    v8 = *(a3 + 2);
    Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
    if (v6)
    {
      memcpy(v6, Ptr, v5);
    }

    else
    {
      *a3 = Ptr;
    }
  }

  else
  {
    *a3 = 0;
  }

  CADeserializer::Read(this, a3 + 12);
  v10 = operator>>(this, (a3 + 2));
  CADeserializer::Read(v10, a3 + 4);
  v11 = a3 + 52;
  v12 = 15;
  do
  {
    CADeserializer::Read(this, v11 - 16);
    CADeserializer::Read(this, v11 - 12);
    CADeserializer::Read(this, v11 - 8);
    CADeserializer::Read(this, v11 - 4);
    result = CADeserializer::Read(this, v11);
    v11 += 20;
    --v12;
  }

  while (v12);
  return result;
}

CASerializer *TSimpleMarshaller<SpeechCodecBundleData>::SerializeT(int a1, CASerializer *this, const void **a3)
{
  CASerializer::Write(this, a3 + 1);
  v5 = *(a3 + 2);
  CASerializer::Write(this, *a3);
  CASerializer::Write(this, a3 + 12);
  v6 = operator<<(this, (a3 + 2));
  CASerializer::Write(v6, a3 + 4);
  v7 = 0;
  v8 = (a3 + 36);
  do
  {
    if (v7 >= *(a3 + 8))
    {
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
      v10 = v12;
      v9 = this;
    }

    else
    {
      v9 = this;
      v10 = v8;
    }

    result = operator<<(v9, v10);
    ++v7;
    v8 = (v8 + 20);
  }

  while (v7 != 15);
  return result;
}

uint64_t TMarshaller<SpeechCodecBundleData>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 == 336 || *a4 == 0)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x150uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v8 = *(a2 + 32) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL TMarshaller<SpeechCodecBundleData>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 336)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 336;
}

void TSimpleMarshaller<SpeechCodecBundleData>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<EVSRFParams>::DeserializeT(int a1, CADeserializer *this, char *a3)
{
  CADeserializer::Read(this, a3);

  return CADeserializer::Read(this, a3 + 4);
}

uint64_t TSimpleMarshaller<EVSRFParams>::SerializeT(int a1, CASerializer *this, char *a3)
{
  CASerializer::Write(this, a3);

  return CASerializer::Write(this, a3 + 4);
}

uint64_t TMarshaller<EVSRFParams>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<EVSRFParams>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TSimpleMarshaller<EVSRFParams>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<CMRData>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 0x10) == 0x10)
  {
    Marshaller::CheckDest(a1, a3, a4, 0x10uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<CMRData>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 16;
}

void TSimpleMarshaller<CMRData>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TSimpleMarshaller<EVSRFDecodeData>::DeserializeT(int a1, CADeserializer *this, char *a3)
{
  CADeserializer::Read(this, a3);

  return CADeserializer::Read(this, a3 + 4);
}

uint64_t TSimpleMarshaller<EVSRFDecodeData>::SerializeT(int a1, CASerializer *this, char *a3)
{
  v4 = a3 + 4;
  v6 = *a3;
  CASerializer::Write(this, &v6);
  return CASerializer::Write(this, v4);
}

uint64_t TMarshaller<EVSRFDecodeData>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<EVSRFDecodeData>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TSimpleMarshaller<EVSRFDecodeData>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AudioStreamBasicDescription>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, (v7 & 0xFFFFFFF8) - ((v7 & 0xFFFFFFF8) % 0x28));
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioStreamBasicDescription>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AudioFormatListItem>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, (v7 & 0xFFFFFFF0) - ((v7 & 0xFFFFFFF0) % 0x30));
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioFormatListItem>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<AudioValueRange>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF0);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<AudioValueRange>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<unsigned long long>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFF8);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<unsigned long long>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TArrayMarshaller<int>::Deserialize(Marshaller *a1, CADeserializer *this, void **a3, unsigned int *a4)
{
  v7 = this->var3 - this->var2;
  Ptr = CADeserializer::GetAndAdvanceReadPtr(this);
  Marshaller::CheckDest(a1, a3, a4, v7 & 0xFFFFFFFC);
  memcpy(*a3, Ptr, *a4);
  return 1;
}

void TArrayMarshaller<int>::~TArrayMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<unsigned char>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if (*a4 > 1)
  {
    v7 = 0;
  }

  else
  {
    Marshaller::CheckDest(a1, a3, a4, 1uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  return v7 & 1;
}

BOOL TMarshaller<unsigned char>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 1;
}

void TSimpleMarshaller<unsigned char>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t TMarshaller<int>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 4) == 4)
  {
    Marshaller::CheckDest(a1, a3, a4, 4uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<int>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 4)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 4;
}

void TSimpleMarshaller<int>::~TSimpleMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void TCFMarshaller<__CFData const*>::DeserializeT(Marshaller *a1, uint64_t a2, const void **a3)
{
  operator>>();
  v5 = *a3;

  Marshaller::AddCreatedCFObject(a1, v5);
}

void TCFMarshaller<__CFData const*>::SerializeT(uint64_t a1, uint64_t a2, const void **a3)
{
  operator<<();
  v5 = *a3;
  if (*a3 && *(a1 + 32) == 1)
  {

    CFRelease(v5);
  }
}

uint64_t TMarshaller<__CFData const*>::Deserialize(Marshaller *a1, uint64_t a2, void **a3, unsigned int *a4)
{
  if ((*a4 | 8) == 8)
  {
    Marshaller::CheckDest(a1, a3, a4, 8uLL);
    (*(*a1 + 40))(a1, a2, *a3);
    v7 = *(a2 + 32) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL TMarshaller<__CFData const*>::Serialize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 8)
  {
    (*(*a1 + 32))(a1);
  }

  return a4 == 8;
}

void TCFMarshaller<__CFData const*>::~TCFMarshaller(Marshaller *a1)
{
  Marshaller::~Marshaller(a1);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::Analyzer::getFormatFromUnit(DSPGraph::Analyzer *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v7, "getFormatFromUnit");
  std::string::basic_string[abi:ne200100]<0>(&v5, "Analyzer::getFormatFromUnit ");
  v2 = (*(*this + 16))(this);
  v3 = strlen(v2);
  v4 = std::string::append(&v5, v2, v3);
  v6 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  DSPGraph::ThrowException(1869640255, &v8, 115, &v7, &v6);
}

void sub_18F86015C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Analyzer::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    DSPGraph::printi(a2, v4 + 4, "analysis %p\n");
  }

  return result;
}

uint64_t DSPGraph::AUAnalyzer::getFormatFromUnit@<X0>(AudioUnit *this@<X0>, AudioUnitScope inScope@<W1>, AudioUnitElement inElement@<W2>, void *a4@<X8>)
{
  a4[4] = 0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  ioDataSize = 40;
  result = AudioUnitGetProperty(this[13], 8u, inScope, inElement, a4, &ioDataSize);
  if (result)
  {
    v8 = result;
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "getFormatFromUnit");
    std::string::basic_string[abi:ne200100]<0>(&v9, "AUAnalyzer::getFormatFromUnit ");
    v6 = (*(*this + 2))(this);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &v9, v6);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, &v10, " ");
    v7 = (this + 7);
    if (*(this + 79) < 0)
    {
      v7 = *v7;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12, &v11, v7);
    DSPGraph::ThrowException(v8, &v14, 315, &v13, &v12);
  }

  return result;
}

void sub_18F8603A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUAnalyzer::setFormatOnUnit(AudioUnit *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  v23 = *MEMORY[0x1E69E9840];
  result = AudioUnitSetProperty(this[13], 8u, a3, a4, inData, 0x28u);
  if (result)
  {
    v13 = result;
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_11439);
    }

    v8 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v9 = *&inData->mBytesPerPacket;
      *buf = *&inData->mSampleRate;
      v21 = v9;
      v22 = *&inData->mBitsPerChannel;
      CA::StreamDescription::AsString(__p, buf, *buf, *&v9);
      v10 = v19 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_debug_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_DEBUG, "AudioStreamBasicDescription: %s", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(__p, "setFormatOnUnit");
    std::string::basic_string[abi:ne200100]<0>(&v14, "AUAnalyzer::setFormatOnUnit ");
    v11 = (*(*this + 2))(this);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15, &v14, v11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v16, &v15, " ");
    v12 = (this + 7);
    if (*(this + 79) < 0)
    {
      v12 = *v12;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17, &v16, v12);
    DSPGraph::ThrowException(v13, buf, 305, __p, &v17);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 57) < 0)
  {
    operator delete(*(v39 - 80));
  }

  _Unwind_Resume(exception_object);
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_11446()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

void DSPGraph::AUAnalyzer::open(DSPGraph::AUAnalyzer *this)
{
  v1 = (this + 104);
  if (*(this + 13))
  {
    return;
  }

  Next = AudioComponentFindNext(0, (this + 32));
  if (!Next)
  {
    std::string::basic_string[abi:ne200100]<0>(&inData, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "open");
    std::string::basic_string[abi:ne200100]<0>(&v18, "AudioComponentFindNext");
    DSPGraph::ThrowException(1633906209, &inData, 264, &v19, &v18);
  }

  v4 = AudioComponentInstanceNew(Next, v1);
  if (v4)
  {
    v13 = v4;
    std::string::basic_string[abi:ne200100]<0>(&inData, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "open");
    std::string::basic_string[abi:ne200100]<0>(&v18, "AudioComponentInstanceNew");
    DSPGraph::ThrowException(v13, &inData, 269, &v19, &v18);
  }

  if (!*v1)
  {
    std::string::basic_string[abi:ne200100]<0>(&inData, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v19, "open");
    std::string::basic_string[abi:ne200100]<0>(&v18, "AudioComponentInstanceNew");
    DSPGraph::ThrowException(1633906209, &inData, 272, &v19, &v18);
  }

  v5 = (this + 56);
  if ((*(this + 79) & 0x80000000) == 0)
  {
    v6 = strlen(this + 56);
    v7 = this + 56;
    goto LABEL_9;
  }

  v7 = *v5;
  v8 = strlen(*v5);
  if (*v5)
  {
    v6 = v8;
LABEL_9:
    v9 = CFStringCreateWithBytes(0, v7, v6, 0x8000100u, 0);
    cf = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_10;
  }

  v9 = 0;
  cf = 0;
LABEL_10:
  v16 = v9;
  (*(*this + 112))(this, 54, 0, 0, 8, &v16);
  if (*v1)
  {
    (*(*this + 136))(this, *(*(this + 1) + 120), 2, 0);
    (*(*this + 136))(this, *(*(this + 1) + 120), 1, 0);
    v10 = *(this + 2);
    if (!v10)
    {
      std::string::basic_string[abi:ne200100]<0>(&inData, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v19, "open");
      std::string::basic_string[abi:ne200100]<0>(&v18, "DSPGraph::AUAnalyzer Box is null");
      DSPGraph::ThrowException(0, &inData, 289, &v19, &v18);
    }

    v11 = *(v10 + 16);
    v12 = *(v11 + 268);
    if (v12 == 1)
    {
      v12 = *(v11 + 272);
    }

    LODWORD(inData) = v12;
    AudioUnitSetProperty(*v1, 0xEu, 0, 0, &inData, 4u);
    if (AudioUnitInitialize(*v1))
    {
      std::string::basic_string[abi:ne200100]<0>(&inData, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v19, "open");
      if (*(this + 79) < 0)
      {
        v5 = *v5;
      }

      DSPGraph::strprintf("AudioUnitInitialize %s", v15, v5);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_18F860A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  applesauce::CF::StringRef::~StringRef(&a11);
  _Unwind_Resume(a1);
}

double DSPGraph::AUAnalyzer::getParameterList@<D0>(DSPGraph::AUAnalyzer *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*this + 104))(this, 3, a2, 0);
  if ((v8 & 1) != 0 && (v9 = v6, v6 > 3))
  {
    std::vector<unsigned int>::vector[abi:ne200100](__p, v6 >> 2);
    v10 = v9 & 0xFFFFFFFC;
    if ((*(*this + 96))(this, 3, a2, 0, &v10, __p[0]))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      result = *__p;
      *a3 = *__p;
      a3[2] = v12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_18F860C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::AUAnalyzer::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[13], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

uint64_t DSPGraph::AUAnalyzer::getProperty(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, void *outData)
{
  ioDataSize = *a5;
  result = AudioUnitGetProperty(this[13], a2, a3, a4, outData, &ioDataSize);
  *a5 = ioDataSize;
  return result;
}

uint64_t DSPGraph::AUAnalyzer::setParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4, AudioUnitParameterValue a5, UInt32 a6)
{
  result = AudioUnitSetParameter(this[13], a2, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v13, "AudioUnitSetParameter");
    DSPGraph::ThrowException(v11, &v12, 144, &v14, &v13);
  }

  if (*(*(*(*(this[1] + 1) + 8) + 8) + 767) == 1)
  {
    v12.mEventType = kAudioUnitEvent_ParameterValueChange;
    v12.mArgument.mParameter.mAudioUnit = this[13];
    *&v12.mArgument.mProperty.mPropertyID = __PAIR64__(a3, a2);
    v12.mArgument.mParameter.mElement = a4;
    return AUEventListenerNotify(0, 0, &v12);
  }

  return result;
}

void sub_18F860E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUAnalyzer::getParameterInfo@<X0>(DSPGraph::AUAnalyzer *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 104;
  result = (*(*this + 96))(this, 4, a2, a3, &v11, &v12);
  if (result)
  {
    v6 = 0;
    *a4 = result;
  }

  else
  {
    v7 = v17;
    *(a4 + 64) = v16;
    *(a4 + 80) = v7;
    *(a4 + 96) = v18;
    v8 = v13;
    *a4 = v12;
    *(a4 + 16) = v8;
    v9 = v15;
    v6 = 1;
    *(a4 + 32) = v14;
    *(a4 + 48) = v9;
  }

  *(a4 + 104) = v6;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F860F68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AudioUnitParameterValue DSPGraph::AUAnalyzer::getParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[13], a2, a3, a4, &outValue);
  if (Parameter)
  {
    v6 = Parameter;
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "AudioUnitGetParameter");
    DSPGraph::ThrowException(v6, &v9, 163, &v8, &v7);
  }

  return outValue;
}

void sub_18F861000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUAnalyzer::processBuffer(DSPGraph::AUAnalyzer *this, DSPGraph::Buffer *a2, UInt32 inNumberFrames)
{
  *(a2 + 1) = *(*(*(*(*(*(this + 1) + 32) + 16) + 8) + 16) + 256);
  result = AudioUnitProcess(*(this + 13), a2 + 18, (a2 + 8), inNumberFrames, *(a2 + 10));
  if (result)
  {
    v4 = result;
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "processBuffer");
    std::string::basic_string[abi:ne200100]<0>(&v5, "AudioUnitProcess");
    DSPGraph::ThrowException(v4, &v7, 245, &v6, &v5);
  }

  return result;
}

void sub_18F8610F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUAnalyzer::resetAnalysis(AudioUnit *this)
{
  result = AudioUnitReset(this[13], 0, 0);
  if (result)
  {
    v2 = result;
    std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Analyzers.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v4, "resetAnalysis");
    std::string::basic_string[abi:ne200100]<0>(&v3, "AudioUnitReset");
    DSPGraph::ThrowException(v2, &v5, 253, &v4, &v3);
  }

  return result;
}

void sub_18F8611CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::AUAnalyzer::~AUAnalyzer(void **this)
{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

double DSPGraph::TestAnalyzer::getFormatFromUnit@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void DSPGraph::TestAnalyzer::getParameterList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double DSPGraph::TestAnalyzer::getParameterInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 1;
  return result;
}

void DSPGraph::TestAnalyzer::~TestAnalyzer(void **this)
{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

uint64_t DSPGraph::AnalyzerBuilder::print(uint64_t result, void *a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  if (v4)
  {
    v7 = *(MEMORY[0x1E69E54D8] + 64);
    v11 = *MEMORY[0x1E69E54D8];
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v14);
    DSPGraph::print4cc(v15, *(v4 + 52));
    if ((v18 & 0x10) != 0)
    {
      v9 = v17;
      if (v17 < v16)
      {
        v17 = v16;
        v9 = v16;
      }

      v10 = v15[6];
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v8 = 0;
        v13 = 0;
        goto LABEL_15;
      }

      v10 = v15[3];
      v9 = v15[5];
    }

    v8 = v9 - v10;
    if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v13 = v9 - v10;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

LABEL_15:
    *(&__dst + v8) = 0;
    DSPGraph::printi(a2, a4 + 4, "%s\n");
  }

  return result;
}

void sub_18F861710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  MEMORY[0x193ADF120](va);
  _Unwind_Resume(a1);
}

void DSPGraph::AnalyzerBuilder::~AnalyzerBuilder(DSPGraph::AnalyzerBuilder *this)
{
  *this = &unk_1F033EA98;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 8);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033EA98;
  std::__hash_table<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,DSPGraph::AnalyzerBuilder::Info>>>::~__hash_table(this + 8);
}

uint64_t DSPGraph::Analyzer::Analyzer(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F0337C90;
  *(a1 + 24) = a2;
  *(a1 + 28) = 0;
  v5 = *a3;
  *(a1 + 48) = *(a3 + 4);
  *(a1 + 32) = v5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v6 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void DSPGraph::Analyzer::~Analyzer(void **this)
{
  *this = &unk_1F0337C90;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

void DSPGraph::Analyzer::initialize(DSPGraph::Analyzer *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_11439);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Analyzer::initialize %s", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void DSPGraph::Analyzer::uninitialize(DSPGraph::Analyzer *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (DSPGraph::getLog(void)::onceToken != -1)
  {
    dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_11439);
  }

  v2 = DSPGraph::getLog(void)::gLog;
  if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = (this + 56);
    if (*(this + 79) < 0)
    {
      v4 = *v4;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_debug_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_DEBUG, "Analyzer::uninitialize %s", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t DSPGraph::Analyzer::analyze(uint64_t this, uint64_t a2)
{
  if (*(this + 28) == 1)
  {
    return (*(*this + 64))(this, *(*(this + 8) + 56), a2);
  }

  return this;
}

uint64_t DSPGraph::AUAnalyzer::AUAnalyzer(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  result = DSPGraph::Analyzer::Analyzer(a1, a2, a3, a4);
  *result = &unk_1F0337D38;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

{
  result = DSPGraph::Analyzer::Analyzer(a1, a2, a3, a4);
  *result = &unk_1F0337D38;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

void *DSPGraph::TestAnalyzer::TestAnalyzer(uint64_t a1, int a2, __int128 *a3)
{
  v4 = xmmword_18F9019C0;
  v5 = 0;
  result = DSPGraph::Analyzer::Analyzer(a1, a2, &v4, a3);
  *result = &unk_1F0337DE0;
  return result;
}

{
  v4 = xmmword_18F9019C0;
  v5 = 0;
  result = DSPGraph::Analyzer::Analyzer(a1, a2, &v4, a3);
  *result = &unk_1F0337DE0;
  return result;
}

uint64_t DSPGraph::AnalyzerBuilder::decompileAnalysis(uint64_t result, const char *a2)
{
  if (*(result + 24))
  {
    DSPGraph::strprintf("analysisDefine ", a2);
  }

  return result;
}

void sub_18F861DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_SampleToGroupRunLength::GetSampleToGroupTable(uint64_t a1, void **a2)
{
  v2 = a2;
  v57 = *MEMORY[0x1E69E9840];
  if (*(a1 + 60) != 1)
  {
    goto LABEL_37;
  }

  v4 = *(a1 + 96);
  v5 = *(a1 + 80);
  if (v5 == (*(a1 + 104) - v4) >> 3)
  {
    goto LABEL_37;
  }

  memset(v52, 0, sizeof(v52));
  if (v5 >= 0x1000)
  {
    v6 = 4096;
  }

  else
  {
    v6 = v5;
  }

  v47 = v6;
  v7 = *(a1 + 88);
  if (v5 > (*(a1 + 112) - v4) >> 3)
  {
    std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v5);
  }

  buf[0] = 0;
  if (v5)
  {
    std::vector<unsigned char>::__append(v52, (8 * v6), buf);
    v8 = v52[0];
    v45 = v52[0] + 4;
    __p = v52[0];
    while (1)
    {
      v9 = v47 >= v5 ? v5 : v47;
      v10 = (*(*a1 + 24))(a1);
      DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(a1 + 8), v7 + v10, 8 * v9, v8);
      if (DataSourceBytes)
      {
        break;
      }

      v48 = 8 * v9;
      v50 = v7;
      v51 = v5;
      v49 = v9;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v45;
      do
      {
        v15 = *(v13 - 1);
        v14 = *v13;
        v16 = bswap32(v14);
        if (v16)
        {
          if ((v16 & 0x10000) != 0)
          {
            *(a1 + 77) = 1;
          }

          else
          {
            *(a1 + 76) = 1;
          }
        }

        v18 = *(a1 + 104);
        v17 = *(a1 + 112);
        if (v18 >= v17)
        {
          v20 = *(a1 + 96);
          v21 = (v18 - v20) >> 3;
          if ((v21 + 1) >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v22 = v17 - v20;
          v23 = v22 >> 2;
          if (v22 >> 2 <= (v21 + 1))
          {
            v23 = v21 + 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v24);
          }

          v25 = (8 * v21);
          *v25 = bswap64(v14 | (v15 << 32));
          v19 = 8 * v21 + 8;
          v26 = *(a1 + 96);
          v27 = *(a1 + 104) - v26;
          v28 = v25 - v27;
          memcpy(v25 - v27, v26, v27);
          v29 = *(a1 + 96);
          *(a1 + 96) = v28;
          *(a1 + 104) = v19;
          *(a1 + 112) = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v18 = bswap64(v14 | (v15 << 32));
          v19 = (v18 + 1);
        }

        v13 += 8;
        *(a1 + 104) = v19;
        --v12;
      }

      while (v12);
      v7 = v50 + v48;
      LODWORD(v5) = v51 - v49;
      v8 = __p;
      if (v51 == v49)
      {
        operator delete(__p);
        v2 = a2;
        goto LABEL_37;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "MP4_BoxParser_SampleToGroupRunLength.cpp";
      v55 = 1024;
      v56 = 69;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Couldn't read sample to group entries starting", buf, 0x12u);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
LABEL_37:
    if ((a1 + 96) == v2)
    {
      DataSourceBytes = 0;
    }

    else
    {
      v31 = *(a1 + 96);
      v30 = *(a1 + 104);
      v32 = v30 - v31;
      v33 = v2[2];
      v34 = *v2;
      if (v33 - *v2 < (v30 - v31))
      {
        v35 = v32 >> 3;
        if (v34)
        {
          v2[1] = v34;
          operator delete(v34);
          v33 = 0;
          *v2 = 0;
          v2[1] = 0;
          v2[2] = 0;
        }

        if (!(v35 >> 61))
        {
          v36 = v33 >> 2;
          if (v33 >> 2 <= v35)
          {
            v36 = v32 >> 3;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          if (!(v37 >> 61))
          {
            std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v37);
          }

          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v38 = v2[1];
      v39 = v38 - v34;
      if (v38 - v34 >= v32)
      {
        if (v30 != v31)
        {
          memmove(v34, v31, v30 - v31);
        }

        DataSourceBytes = 0;
        v41 = &v34[v32];
      }

      else
      {
        if (v38 != v34)
        {
          memmove(*v2, v31, v38 - v34);
          v38 = v2[1];
        }

        v40 = v30 - &v31[v39];
        if (v30 != &v31[v39])
        {
          memmove(v38, &v31[v39], v30 - &v31[v39]);
        }

        DataSourceBytes = 0;
        v41 = &v38[v40];
      }

      v2[1] = v41;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return DataSourceBytes;
}

void sub_18F8621F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_SampleToGroupRunLength::Init(MP4BoxParser **this)
{
  *&v27[4] = *MEMORY[0x1E69E9840];
  v2 = MP4BoxParser_Full::Initialize(this);
  if (v2)
  {
    goto LABEL_32;
  }

  if (*(this + 5) != 1935828848)
  {
    v2 = 4294967294;
    goto LABEL_32;
  }

  v3 = (*(*this + 3))(this);
  if (*(this + 56))
  {
    v4 = 12;
  }

  else
  {
    v4 = 8;
  }

  v5 = this[3];
  v6 = (*(*this + 3))(this);
  v7 = this[3];
  if (v5 <= v6 || v7 < v4)
  {
    if (v7 > (*(*this + 3))(this) && this[3] >= 4)
    {
      v10 = MP4BoxParser::ReadDataSourceBytes(this[1], v3, 4uLL, &v25);
      if (v10)
      {
        v2 = v10;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = 136315394;
          v22 = "MP4_BoxParser_SampleToGroupRunLength.cpp";
          v23 = 1024;
          v24 = 116;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "%25s:%-5d  couldn't read grouping type";
LABEL_19:
          _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, &v21, 0x12u);
          goto LABEL_32;
        }

        goto LABEL_32;
      }

      v9 = v25;
    }

    *(this + 16) = bswap32(v9);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v2 = 0;
      *(this + 60) = 0;
      goto LABEL_32;
    }

    v21 = 136315394;
    v22 = "MP4_BoxParser_SampleToGroupRunLength.cpp";
    v23 = 1024;
    v24 = 120;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  'sbgp' box is too small for its basic contents";
LABEL_30:
    _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, v18, &v21, 0x12u);
    goto LABEL_31;
  }

  v13 = MP4BoxParser::ReadDataSourceBytes(this[1], v3, v4, &v25);
  if (!v13)
  {
    *(this + 16) = bswap32(v25);
    if (*(this + 56))
    {
      v14 = v27;
      *(this + 68) = 1;
      *(this + 18) = bswap32(v26);
    }

    else
    {
      v14 = &v26;
    }

    v15 = bswap32(*v14);
    *(this + 20) = v15;
    this[11] = v4;
    v16 = this[3];
    if (v16 > (*(*this + 3))(this) && this[3] >= v4 + 8 * v15)
    {
      v2 = 0;
      *(this + 60) = 1;
      goto LABEL_32;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v21 = 136315394;
    v22 = "MP4_BoxParser_SampleToGroupRunLength.cpp";
    v23 = 1024;
    v24 = 141;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  'sbgp' box is too small for its sample to group entries";
    goto LABEL_30;
  }

  v2 = v13;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = 136315394;
    v22 = "MP4_BoxParser_SampleToGroupRunLength.cpp";
    v23 = 1024;
    v24 = 124;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "%25s:%-5d  Couldn't read box fields";
    goto LABEL_19;
  }

LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return v2;
}

void MP4BoxParser_SampleToGroupRunLength::~MP4BoxParser_SampleToGroupRunLength(MP4BoxParser_SampleToGroupRunLength *this)
{
  MP4BoxParser_SampleToGroupRunLength::~MP4BoxParser_SampleToGroupRunLength(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = off_1F0337EA8;
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t NextAudioStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 236);
  if (v4 > 58)
  {
    if (v4 == 92)
    {
      v16 = *(a1 + 8);
      v21 = *(v16 + 96);
      goto LABEL_27;
    }

    if (v4 == 59)
    {
      v7 = *(a1 + 256);
      v8 = *(a1 + 264);
      goto LABEL_11;
    }

LABEL_23:
    result = 0;
    goto LABEL_53;
  }

  if (v4 == -1)
  {
    return 0;
  }

  if (v4)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 8);
  v33[0] = 1;
  if ((*(v5 + 104) & 1) == 0)
  {
    *(v5 + 104) = 1;
    v6 = *(v5 + 24);
    if (v6)
    {
      v6(*(v5 + 40), *(v5 + 8), 1717988724, v33);
    }
  }

  v7 = 28;
  *(a1 + 256) = 28;
  v8 = (a1 + 332);
  *(a1 + 264) = a1 + 332;
LABEL_11:
  v33[0] = v7;
  StreamBuffer::Copy((*(a1 + 8) + 72), v33, v8);
  v9 = v33[0];
  v10 = *(a1 + 256);
  *(a1 + 264) += v33[0];
  v11 = v10 - v9;
  *(a1 + 256) = v11;
  if (v11)
  {
    result = 0;
    v20 = 59;
LABEL_54:
    *(a1 + 236) = v20;
    return result;
  }

  v12 = vrev32q_s8(*(a1 + 332));
  *(a1 + 332) = v12;
  v13 = vrev32_s8(*(a1 + 348));
  *(a1 + 348) = v13;
  if (v13.i32[0] >= 0xFFFF0000)
  {
    *(a1 + 348) = v13.u16[0];
  }

  *(a1 + 104) = v12.u32[1];
  result = ASBDfromSNDSoundStruct((a1 + 332), v33);
  if (result == 1685348671)
  {
    goto LABEL_52;
  }

  if (result)
  {
LABEL_53:
    v20 = -1;
    goto LABEL_54;
  }

  if (!AudioFileObject::IsDataFormatValid(v33, v15))
  {
LABEL_52:
    *(a1 + 177) = 1;
    result = 1685348671;
    goto LABEL_53;
  }

  *(a1 + 16) = 1315264596;
  (*(*a1 + 56))(a1, v33);
  (*(*a1 + 96))(a1, *(a1 + 340));
  (*(*a1 + 80))(a1, *(a1 + 340) / v34);
  *(a1 + 112) = v34;
  v16 = *(a1 + 8);
  v35 = 1;
  if ((*(v16 + 105) & 1) == 0)
  {
    *(v16 + 105) = 1;
    v17 = *(v16 + 24);
    if (v17)
    {
      v17(*(v16 + 40), *(v16 + 8), 1684434292, &v35);
      v16 = *(a1 + 8);
    }
  }

  v35 = 1;
  v18 = *(v16 + 24);
  if (v18)
  {
    v18(*(v16 + 40), *(v16 + 8), 1650683508, &v35);
    v16 = *(a1 + 8);
    v19 = *(v16 + 24);
    v35 = 1;
    if (v19)
    {
      v19(*(v16 + 40), *(v16 + 8), 1685022310, &v35);
      v16 = *(a1 + 8);
    }
  }

  else
  {
    v35 = 1;
  }

  v21 = *(a1 + 336);
  *(v16 + 96) = v21;
LABEL_27:
  v22 = *(v16 + 88);
  v23 = v22 + *(v16 + 80);
  if (v21 < v22 || v23 <= v21 || v23 - v21 == 0)
  {
    result = 0;
    v20 = 92;
    goto LABEL_54;
  }

  v33[0] = 1;
  if (!*(v16 + 112))
  {
    *(v16 + 112) = 1;
    v26 = *(v16 + 24);
    if (v26)
    {
      v26(*(v16 + 40), *(v16 + 8), 1919247481, v33);
      v16 = *(a1 + 8);
      v22 = *(v16 + 88);
      v23 = v22 + *(v16 + 80);
    }
  }

  v27 = 0;
  *a2 = a1;
  *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
  *(a2 + 16) = 0;
  v28 = *(v16 + 96);
  v29 = v28 < v22 || v23 <= v28;
  v30 = v29;
  v31 = v23 - v28;
  if (!v29 && v31)
  {
    v27 = *(v16 + 72) + (v28 - v22);
  }

  result = 0;
  *(a2 + 32) = v27;
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  *(a2 + 24) = v32;
  return result;
}

void NextAudioStream::~NextAudioStream(NextAudioStream *this)
{
  AudioFileStreamObject::~AudioFileStreamObject(this);

  JUMPOUT(0x193ADF220);
}

unint64_t acv2::RamstadSRCWrapper::ProduceOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v57 = *(a1 + 80);
  v8 = *(a1 + 8);
  v9 = 1;
  while (*a2 < *(a2 + 4))
  {
    ACBaseAudioSpan::setAfter(v8 + 168, a2);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((v8 + 168), a2);
    v10 = *(v8 + 172);
    v11 = (*(*a1 + 80))(a1, v10);
    acv2::AudioConverterChain::ObtainInput(v63, *(*(a1 + 8) + 8), *(a1 + 8), v11, a3);
    if ((v64 & 1) == 0)
    {
      LODWORD(Packets) = v63[0];
      goto LABEL_77;
    }

    v58 = v3;
    v59 = v7;
    v13 = a3;
    v14 = v63[0];
    v60 = v63[1];
    v15 = *v63[0];
    if (*v63[0] >= v11)
    {
      v16 = v10;
    }

    else
    {
      v16 = (*(*a1 + 88))(a1, *v63[0]);
    }

    if (v15 | v16)
    {
      v18 = *(a1 + 88);
      if (v18)
      {
        acv2::AudioConverterBase::writeCapture(v18, v14, v12);
      }

      if (v10 >= v16)
      {
        v10 = v16;
      }

      if (v57 == 1)
      {
        if (v15)
        {
          v19 = *(*(v14 + 2) + 16);
        }

        else
        {
          v19 = 0;
        }

        if (v15 >= v11)
        {
          v27 = v11;
        }

        else
        {
          v27 = v15;
        }

        RamstadSRC::processMono(&v61, *(a1 + 24), v19, *(*(v8 + 184) + 16), v27, v10, 1, 1);
        goto LABEL_54;
      }

      v21 = *(v8 + 28);
      if (v57 == 2)
      {
        if ((v21 & 0x20) != 0)
        {
          if (v15)
          {
            v28 = *(v14 + 2);
            v22 = *(v28 + 16);
            v23 = *(v28 + 32);
          }

          else
          {
            v22 = 0;
            v23 = 0;
          }

          v32 = 1;
        }

        else
        {
          if (v15)
          {
            v22 = *(*(v14 + 2) + 16);
            v23 = v22 + 1;
          }

          else
          {
            v22 = 0;
            v23 = 0;
          }

          v32 = 2;
        }

        v34 = *(v8 + 184);
        v35 = *(v34 + 16);
        if ((*(v8 + 68) & 0x20) != 0)
        {
          v36 = *(v34 + 32);
          v37 = 1;
        }

        else
        {
          v36 = v35 + 1;
          v37 = 2;
        }

        if (v15 >= v11)
        {
          v38 = v11;
        }

        else
        {
          v38 = v15;
        }

        RamstadSRC::processStereo(&v61, *(a1 + 24), v22, v23, v35, v36, v38, v10, v32, v37);
LABEL_54:
        v20 = v61;
        LODWORD(Packets) = v61;
        a3 = v13;
        if ((v62 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_73;
      }

      if ((v21 & 0x20) != 0)
      {
        v29 = *(a1 + 80);
        if (v15)
        {
          if (v29 >= 1)
          {
            v30 = 0;
            v31 = 16;
            do
            {
              *(*(a1 + 32) + v30) = *(*(v14 + 2) + v31);
              v30 += 8;
              v31 += 16;
            }

            while (8 * v29 != v30);
          }
        }

        else if (v29 >= 1)
        {
          v39 = 0;
          do
          {
            *(*(a1 + 32) + v39) = 0;
            v39 += 8;
          }

          while (8 * v29 != v39);
        }

        LODWORD(v24) = 1;
      }

      else
      {
        v24 = *(a1 + 80);
        if (v15)
        {
          if (v24 >= 1)
          {
            v25 = 0;
            v26 = *(*(v14 + 2) + 16);
            do
            {
              *(*(a1 + 32) + v25) = v26;
              v25 += 8;
              v26 += 4;
            }

            while (8 * v24 != v25);
          }
        }

        else if (v24 >= 1)
        {
          v33 = 0;
          do
          {
            *(*(a1 + 32) + v33) = 0;
            v33 += 8;
          }

          while (8 * v24 != v33);
        }

        LODWORD(v29) = v24;
      }

      if ((*(v8 + 68) & 0x20) != 0)
      {
        if (v29 >= 1)
        {
          v42 = 0;
          v43 = 16;
          do
          {
            *(*(a1 + 56) + v42) = *(*(v8 + 184) + v43);
            v42 += 8;
            v43 += 16;
          }

          while (8 * v29 != v42);
        }

        LODWORD(v29) = 1;
      }

      else if (v29 >= 1)
      {
        v40 = 0;
        v41 = *(*(v8 + 184) + 16);
        do
        {
          *(*(a1 + 56) + v40) = v41;
          v40 += 8;
          v41 += 4;
        }

        while (8 * v29 != v40);
      }

      if (v15 >= v11)
      {
        v44 = v11;
      }

      else
      {
        v44 = v15;
      }

      RamstadSRC::processMulti(&v61, *(a1 + 24), *(a1 + 32), *(a1 + 56), v44, v10, v24, v29);
      v20 = v61;
      LODWORD(Packets) = v61;
      a3 = v13;
      if (v62 != 1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v10 = 0;
      v20 = 0;
      a3 = v13;
    }

LABEL_73:
    v45 = *(*(a1 + 8) + 72);
    *(v8 + 168) = v10;
    Packets = ACBaseAudioSpan::sizeOfFirstPackets((v8 + 168), v10, v45);
    if (HIDWORD(Packets))
    {
      *(v8 + 176) = Packets;
      v47 = *(a1 + 96);
      if (v47)
      {
        acv2::AudioConverterBase::writeCapture(v47, (v8 + 168), v46);
      }

      Packets = acv2::AudioConverterChain::ConsumedInput(*(*(a1 + 8) + 8), *v14, v60, v20);
      if (HIDWORD(Packets))
      {
        v48 = v20 > 0;
        v3 = v58;
        v7 = (v20 > 0) | v59 & 1;
        if ((v9 & 1) == 0)
        {
          v9 = 1;
        }

        goto LABEL_80;
      }
    }

LABEL_77:
    v48 = 0;
    v3 = Packets >> 8;
    if (v9)
    {
      v9 = 0;
    }

    v7 = Packets;
LABEL_80:
    v49 = *(v8 + 168);
    if (v49 || v48)
    {
      v50 = *(v8 + 176);
      v51 = *a2;
      v52 = *(a2 + 8);
      if (v49)
      {
        v53 = *(a2 + 32);
        if (v53)
        {
          v54 = *a2;
          v55 = *(v8 + 168);
          do
          {
            *(v53 + 16 * v54++) += v52;
            --v55;
          }

          while (v55);
        }
      }

      *a2 = v51 + v49;
      *(a2 + 8) = v52 + v50;
      ACBaseAudioSpan::copyFilledMetadataEventsFrom(a2, v8 + 168, 0);
      if (v9)
      {
        continue;
      }
    }

    break;
  }

  ACBaseAudioSpan::completeMetadataFrame(a2);
  return v7 | ((v3 & 0xFFFFFF) << 8) | (v9 << 32);
}

void acv2::RamstadSRCWrapper::~RamstadSRCWrapper(acv2::RamstadSRCWrapper *this)
{
  acv2::RamstadSRCWrapper::~RamstadSRCWrapper(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0337FD0;
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 12);
  std::unique_ptr<AudioConverterCapturer>::~unique_ptr[abi:ne200100](this + 11);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](this + 3);
}

RamstadSRC **std::unique_ptr<RamstadSRC>::~unique_ptr[abi:ne200100](RamstadSRC **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    RamstadSRC::~RamstadSRC(v2);
    MEMORY[0x193ADF220]();
  }

  return a1;
}

void *std::vector<float *>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::unique_ptr<void,applesauce::raii::v1::detail::opaque_deletion_functor<void *,&(VPTimeFreqConverter_Dispose)>>>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_18F8631C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(unint64_t a1, int a2)
{
  caulk::concurrent::details::node_allocator<ListenerMap::MapKey,ListenerMap::MapNode,10ul,(caulk::concurrent::skiplist_options)0>::begin_traversal();
  v17 = a2;
  v4 = -1;
  v5 = 40;
  do
  {
    v6 = atomic_load((a1 + v5));
    ++v4;
    v5 += 16;
  }

  while (*((v6 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v7 = a1;
  if (v4)
  {
    v7 = a1;
    do
    {
      v7 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, v4--, v7, &v17);
    }

    while (v4);
  }

  v8 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(a1, 0, v7, &v17);
  v10 = *(v9 + 8);
  if (v10 == a2)
  {
    v11 = v9;
    v12 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, 0, v8, v9);
    v14 = v13;
    if (!v13)
    {
      caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, 0, v12, v11);
    }

    if ((v14 & 0x100000000) != 0 && v11)
    {
      v16 = a2;
      caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(a1, &v16, 0);
    }
  }

  return caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::end_traversal(a1 + 224, v10);
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_to_level<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le>(unint64_t a1, _DWORD *a2, unint64_t a3)
{
  v6 = -1;
  v7 = 40;
  do
  {
    do
    {
      ++v6;
      v8 = atomic_load((a1 + v7));
      v7 += 16;
    }

    while (v6 < a3);
  }

  while (*((v8 & 0xFFFFFFFFFFFFFFFCLL) + 14) != 2);
  v9 = a1;
  if (v6 > a3)
  {
    v9 = a1;
    do
    {
      v9 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, v6--, v9, a2);
    }

    while (v6 > a3);
  }

  return caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(a1, a3, v9, a2);
}

unint64_t caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::free_node_chain_now(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = atomic_load((v2 + 16));
      v5 = *(v3 + 32);
      if (*(v5 + 32) == 1 && !*(v2 + 14))
      {
        (*v5)(v3 + 40, v2);
      }

      result = caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(*(v3 + 16), v2, *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * *(v2 + 12) - 8]);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

unint64_t caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::deallocate(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  _X4 = a2;
  v4 = 0;
  while (*&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v4] < a3)
  {
    if (++v4 == 10)
    {
      __break(1u);
      break;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v7 = a1 + 32 * v4 + 48;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  atomic_store(_X2, a2);
  _X1 = 0;
  __asm { CASPAL          X0, X1, X4, X5, [X8] }

  if (result != _X2)
  {
    do
    {
      atomic_store(result, _X4);
      _X3 = 0;
      __asm { CASPAL          X2, X3, X4, X5, [X8] }

      v17 = _X2 ^ result;
      result = _X2;
    }

    while (v17);
  }

  atomic_fetch_add((v7 + 16), 1uLL);
  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_le &>(unint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 >= *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 >= *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = a4 | 2;
  do
  {
    v9 = (a3 + 16 * a2 + 24);
    v10 = atomic_load(v9);
    if (v10 == v8)
    {
      break;
    }

    v11 = a4;
    atomic_compare_exchange_strong(v9, &v11, v8);
    if (v11 == a4 || v11 == v8)
    {
      break;
    }

    v12 = atomic_load(v9);
    if (v12)
    {
      do
      {
        a3 = atomic_load((a3 + 16 * a2 + 32));
        v13 = atomic_load((a3 + 16 * a2 + 24));
      }

      while ((v13 & 1) != 0);
    }

    v14 = *(a4 + 8);
    while (1)
    {
      v15 = atomic_load((a3 + 16 * a2 + 24));
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 <= *((v15 & 0xFFFFFFFFFFFFFFFCLL) + 8))
      {
        break;
      }

      v17 = atomic_load((v16 + 24));
      if (v17)
      {
        a3 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, a3, v16);
        if (!v18)
        {
          caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, a3, v16);
        }
      }

      else
      {
        a3 = v16;
      }
    }
  }

  while (v16 == a4);
  return a3;
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _X20 = a4;
  v7 = result;
  v8 = a4 + 16 * a2;
  v9 = (v8 + 24);
  atomic_store(a3, (v8 + 32));
  while (1)
  {
    v10 = atomic_load(v9);
    if (v10)
    {
      break;
    }

    v11 = atomic_load(v9);
    v12 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(v9, &v12, v12 | 1);
    if ((v12 & 2) != 0)
    {
      result = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(v7, a2, _X20, v12 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  v13 = atomic_load(v9);
  v14 = _X20 | 2;
  atomic_compare_exchange_strong((a3 + 16 * a2 + 24), &v14, v13 & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 == (_X20 | 2) && atomic_fetch_add((_X20 + 15), 0xFFu) == 1)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    atomic_store(_X2, (_X20 + 16));
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X8] }

    if (result != _X2)
    {
      do
      {
        atomic_store(result, (_X20 + 16));
        _X3 = 0;
        __asm { CASPAL          X2, X3, X20, X21, [X8] }

        v25 = _X2 ^ result;
        result = _X2;
      }

      while (v25);
    }
  }

  return result;
}

unint64_t caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::search_right<caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::key_lt &>(unint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v4 = a3;
  v5 = atomic_load((a3 + 16 * a2 + 24));
  v6 = v5 & 0xFFFFFFFFFFFFFFFCLL;
  if (*a4 > *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 8))
  {
    do
    {
      v10 = atomic_load((v6 + 24));
      if (v10)
      {
        v4 = caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::try_flag_node(a1, a2, v4, v6);
        if (!v11)
        {
          caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::help_flagged(a1, a2, v4, v6);
        }
      }

      else
      {
        v4 = v6;
      }

      v12 = atomic_load((v4 + 16 * a2 + 24));
      v6 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (*a4 > *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  return v4;
}

uint64_t DSPGraph::Box::decompileAnalyzers(uint64_t result, const char *a2, char a3)
{
  v3 = *(result + 312);
  if (v3 != *(result + 320))
  {
    if ((a3 & 1) == 0)
    {
      DSPGraph::strprintf("analysis ", a2);
    }

    DSPGraph::strprintf("analysis %qu", a2, *(*v3 + 88));
  }

  return result;
}

void sub_18F863BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::decompileAntecedents(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    v2 = result;
    v3 = (result + 32);
    v4 = *(v1 + 16);
    v5 = (v4 + 32);
    if (*(v4 + 55) < 0)
    {
      v5 = *v5;
    }

    std::string::basic_string[abi:ne200100]<0>(v12, v5);
    DSPGraph::asDecompileString(v12, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    v7 = v3;
    if (*(v2 + 55) < 0)
    {
      v7 = *v3;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v7);
    DSPGraph::asDecompileString(v10, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    DSPGraph::strprintf("order %s %s\n", v8, v6, p_p);
  }

  return result;
}

void sub_18F863DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::decompilePropertyTaps(uint64_t result)
{
  v1 = *(result + 176);
  if (v1 != *(result + 184))
  {
    v2 = result;
    v3 = (result + 32);
    v4 = (*v1 + 32);
    if (*(*v1 + 55) < 0)
    {
      v4 = *v4;
    }

    std::string::basic_string[abi:ne200100]<0>(v15, v4);
    DSPGraph::asDecompileString(v15, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v16;
    }

    else
    {
      v5 = v16.__r_.__value_.__r.__words[0];
    }

    v6 = v3;
    if (*(v2 + 55) < 0)
    {
      v6 = *v3;
    }

    v7 = *(v1 + 8);
    v8 = *(v1 + 12);
    v9 = *(v1 + 16);
    std::string::basic_string[abi:ne200100]<0>(v13, v6);
    DSPGraph::asDecompileString(v13, &__p);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = "";
    if (*(v1 + 36))
    {
      v12 = "true";
    }

    DSPGraph::strprintf("wireProperty (%s %u %u %u) (%s %u %u %u) %s\n", v10, v5, v7, v8, v9, p_p, *(v1 + 24), *(v1 + 28), *(v1 + 32), v12);
  }

  return result;
}

void sub_18F863FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::decompileParameterTaps(uint64_t result)
{
  v1 = *(result + 152);
  if (v1 != *(result + 160))
  {
    v2 = result;
    v3 = (result + 32);
    v4 = (*v1 + 32);
    if (*(*v1 + 55) < 0)
    {
      v4 = *v4;
    }

    std::string::basic_string[abi:ne200100]<0>(v15, v4);
    DSPGraph::asDecompileString(v15, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v16;
    }

    else
    {
      v5 = v16.__r_.__value_.__r.__words[0];
    }

    v6 = v3;
    if (*(v2 + 55) < 0)
    {
      v6 = *v3;
    }

    v7 = *(v1 + 8);
    v8 = *(v1 + 12);
    v9 = *(v1 + 16);
    std::string::basic_string[abi:ne200100]<0>(v13, v6);
    DSPGraph::asDecompileString(v13, &__p);
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = "";
    if (*(v1 + 36))
    {
      v12 = "true";
    }

    DSPGraph::strprintf("wireParam (%s %u %u %u) (%s %u %u %u) %s\n", v10, v5, v7, v8, v9, p_p, *(v1 + 24), *(v1 + 28), *(v1 + 32), v12);
  }

  return result;
}

void sub_18F864208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Box::decompileWires(void *result)
{
  v1 = result[11];
  for (i = result[12]; v1 != i; v1 += 32)
  {
    result = (*(*v1 + 40))(v1);
    v3 = result[4];
    if (v3)
    {
      v4 = *(*(v3 + 16) + 8);
      DSPGraph::strprintf("wire ", v2);
    }
  }

  return result;
}

void sub_18F864610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::decompileBox(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    std::string::basic_string[abi:ne200100]<0>(v10, v3);
    DSPGraph::asDecompileString(v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v11;
    }

    else
    {
      v5 = v11.__r_.__value_.__r.__words[0];
    }

    DSPGraph::strprintf("box %s ", v4, v5);
  }

  v6 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v6 = *(a1 + 32);
  }

  v7 = *(a1 + 56);
  std::string::basic_string[abi:ne200100]<0>(v10, v6);
  DSPGraph::asDecompileString(v10, &v11);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v11.__r_.__value_.__r.__words[0];
  }

  DSPGraph::strprintf("box %qu %s ", v8, v7, v9);
}

void sub_18F864A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 == 1 && a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::Box::writeDotEdges(void *result)
{
  v1 = result[11];
  v6 = result[12];
  if (v1 != v6)
  {
    v2 = result;
    do
    {
      result = (*(*v1 + 40))(v1);
      v4 = result[4];
      if (v4)
      {
        v5 = v2[7];
        DSPGraph::strprintf("B%qu -> B%qu", v3, v5, *(*(*(v4 + 16) + 8) + 56));
      }

      v1 += 32;
    }

    while (v1 != v6);
  }

  return result;
}

void sub_18F864D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::writeDotAttributes(uint64_t a1, const char *a2)
{
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  DSPGraph::strprintf("B%qu [shape=box, label=%s\\n", a2, *(a1 + 56), v2);
}

void sub_18F864F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::getFormatFromUnit(DSPGraph::Box *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v7, "getFormatFromUnit");
  std::string::basic_string[abi:ne200100]<0>(&v5, "Box::getFormatFromUnit ");
  v2 = (*(*this + 16))(this);
  v3 = strlen(v2);
  v4 = std::string::append(&v5, v2, v3);
  v6 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  DSPGraph::ThrowException(1869640255, &v8, 853, &v7, &v6);
}

void sub_18F86502C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::calculateLatencyDelays(DSPGraph::Box *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFC0) != 0)
  {
    v2 = DSPGraph::Box::upstreamLatencyInTicks(this);
    v3 = *(this + 8);
    v4 = *(this + 9);
    if (v3 != v4)
    {
      v5 = v2;
      for (i = *(this + 8); i != v4; i = (i + 32))
      {
        *(i + 7) = 0;
        v7 = **(*((*(*i + 40))(i) + 8) + 8);
        if (((*(v7 + 392))() & 1) == 0)
        {
          v8 = DSPGraph::InputPort::upstreamLatencyInTicks(i);
          if (v5 <= v8)
          {
            if (*(i + 7))
            {
LABEL_9:
              if (*(*((*(*i + 40))(i) + 120) + 8) == 1718773105)
              {
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_11618);
                }

                v10 = DSPGraph::getLog(void)::gLog;
                if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_DEBUG))
                {
                  v11 = *(i + 7);
                  v12 = *(*((*(*i + 40))(i) + 8) + 8);
                  v13 = (v12 + 32);
                  if (*(v12 + 55) < 0)
                  {
                    v13 = *v13;
                  }

                  v14 = this + 32;
                  if (*(this + 55) < 0)
                  {
                    v14 = *(this + 4);
                  }

                  *buf = 67109634;
                  v17 = v11;
                  v18 = 2080;
                  v19 = v13;
                  v20 = 2080;
                  v21 = v14;
                  _os_log_debug_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "Latency compensation of %u samples required at frequency-domain wire : %s -> %s", buf, 0x1Cu);
                }
              }
            }
          }

          else
          {
            v9 = (v5 - v8) * **((*(*i + 40))(i) + 120) / *(*(this + 1) + 696);
            *(i + 7) = v9;
            if (v9)
            {
              goto LABEL_9;
            }
          }
        }

        v3 = (v3 + 32);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

os_log_t ___ZN8DSPGraph6getLogEv_block_invoke_11624()
{
  result = os_log_create("com.apple.coreaudio", "DSPGraph");
  DSPGraph::getLog(void)::gLog = result;
  return result;
}

uint64_t DSPGraph::Box::insertLatencyDelayBoxes(uint64_t this)
{
  v2 = *(this + 64);
  v1 = *(this + 72);
  if (((v1 - v2) & 0x1FFFFFFFC0) != 0 && v2 != v1)
  {
    v4 = *(this + 64);
    do
    {
      v5 = *(*((*(*v4 + 40))(v4) + 8) + 8);
      this = (*(*v5 + 392))(v5);
      v6 = *(v4 + 7);
      if (this)
      {
        DSPGraph::DelayBox::setDelayFrames(v5, v6);
        this = (*(*v5 + 576))(v5);
      }

      else if (v6)
      {
        if (*(*((*(*v4 + 40))(v4) + 120) + 8) != 1718773105)
        {
          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v8, "insertLatencyDelayBoxes");
        std::string::basic_string[abi:ne200100]<0>(&v7, "Latency Boxes cannot be inserted at frequency-domain wires");
        DSPGraph::ThrowException(1869640255, &v9, 771, &v8, &v7);
      }

      v4 += 32;
      v2 += 32;
    }

    while (v4 != v1);
  }

  return this;
}

void sub_18F8659FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::DelayBox::setDelayFrames(uint64_t this, unsigned int a2)
{
  if (*(*(this + 8) + 762))
  {
    if (*(this + 792) < a2)
    {
      std::string::basic_string[abi:ne200100]<0>(&v5, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v4, "setDelayFrames");
      std::string::basic_string[abi:ne200100]<0>(&v3, "delay value exceeds current maximum");
      DSPGraph::ThrowException(1919837985, &v5, 3200, &v4, &v3);
    }
  }

  else
  {
    v2 = *(this + 792);
    if (v2 <= a2)
    {
      v2 = a2;
    }

    *(this + 792) = v2;
  }

  *(this + 796) = a2;
  return this;
}

void sub_18F865C3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::DelayBox::DelayBox(DSPGraph::DelayBox *this)
{
  DSPGraph::Box::Box(this, 1u, 1u);
}

{
  DSPGraph::Box::Box(this, 1u, 1u);
}

void DSPGraph::DelayBox::reset(DSPGraph::DelayBox *this)
{
  v2 = *(this + 97);
  if (v2 && *v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      bzero(*&v2[v3 + 4], v2[v3 + 3]);
      ++v4;
      v2 = *(this + 97);
      v3 += 4;
    }

    while (v4 < *v2);
  }

  v5 = *(this + 199);
  *(this + 200) = v5;
  *(this + 101) = v5;
}

void DSPGraph::DelayBox::uninitialize(DSPGraph::DelayBox *this)
{
  DSPGraph::Box::uninitialize(this);

  DSPGraph::SimpleABL::free((this + 776));
}

void DSPGraph::DelayBox::initialize(DSPGraph::DelayBox *this)
{
  DSPGraph::Box::initialize(this);
  if (*(this + 198))
  {
    v2 = *(this + 11);
    if (*(this + 12) == v2)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v13, "out");
      v12 = (this + 32);
      if (*(this + 55) < 0)
      {
        v12 = *v12;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v3 = *((*(*v2 + 40))(v2) + 120);
    v4 = *(this + 198) + 2 * *(*(this + 2) + 272);
    *(this + 201) = v4;
    v5 = (*(v3 + 12) & 0x20) == 0;
    v8 = v3 + 24;
    v6 = *(v3 + 24);
    v7 = *(v8 + 4);
    if (v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    DSPGraph::SimpleABL::alloc((this + 776), v9, v6 * v4, 0);
  }

  else
  {
    *(this + 201) = 0;
  }

  v10 = *(this + 199);
  *(this + 200) = v10;
  *(this + 101) = v10;
}

void sub_18F865EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::DelayBox::process(DSPGraph::DelayBox *this, int a2)
{
  v3 = *(this + 199);
  v6 = this + 88;
  v4 = *(this + 11);
  v5 = *(v6 + 1);
  if (v3)
  {
    if (v5 == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "out");
      v51 = (this + 32);
      if (*(this + 55) < 0)
      {
        v51 = *v51;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v50, v51, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v8 = (*(*v4 + 40))(v4);
    v9 = *(this + 8);
    if (*(this + 9) == v9)
    {
      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "in");
      v53 = (this + 32);
      if (*(this + 55) < 0)
      {
        v53 = *v53;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v52, v53, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v10 = *(v8 + 120);
    v11 = (*(*v9 + 40))(v9);
    v12 = *(this + 11);
    if (*(this + 12) == v12)
    {
      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "out");
      v55 = (this + 32);
      if (*(this + 55) < 0)
      {
        v55 = *v55;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v54, v55, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v13 = *(v11 + 56);
    v14 = *((*(*v12 + 40))(v12) + 56);
    v16 = *(v10 + 24);
    v15 = *(v10 + 28);
    v17 = v16 * a2;
    v18 = *(this + 202);
    if (v3 != *(this + 200))
    {
      if (v18 >= v3)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(this + 201);
      }

      *(this + 203) = v18 - v3 + v19;
    }

    DSPGraph::SimpleABL::dstWrapCopy((v13 + 80), this + 97, 0, v18 * v16, (v16 * a2));
    DSPGraph::SimpleABL::srcWrapCopy(this + 97, (v14 + 80), (*(this + 203) * v16), 0, (v16 * a2), 0);
    if (v15)
    {
      v24 = (v15 + 3) & 0x1FFFFFFFCLL;
      v25 = vdupq_n_s64(v15 - 1);
      v26 = xmmword_18F9016B0;
      v27 = xmmword_18F9016C0;
      v28 = (*(v14 + 80) + 44);
      v29 = vdupq_n_s64(4uLL);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v25, v27));
        if (vuzp1_s16(v30, *v25.i8).u8[0])
        {
          *(v28 - 8) = v17;
        }

        if (vuzp1_s16(v30, *&v25).i8[2])
        {
          *(v28 - 4) = v17;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, *&v26))).i32[1])
        {
          *v28 = v17;
          v28[4] = v17;
        }

        v26 = vaddq_s64(v26, v29);
        v27 = vaddq_s64(v27, v29);
        v28 += 16;
        v24 -= 4;
      }

      while (v24);
    }

    v31 = *(this + 202) + a2;
    *(this + 202) = v31;
    v32 = *(this + 203) + a2;
    *(this + 203) = v32;
    v33 = *(this + 201);
    v34 = v31 >= v33;
    v35 = v31 - v33;
    if (v34)
    {
      *(this + 202) = v35;
    }

    v34 = v32 >= v33;
    v36 = v32 - v33;
    if (v34)
    {
      *(this + 203) = v36;
    }
  }

  else
  {
    if (v5 == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "out");
      v57 = (this + 32);
      if (*(this + 55) < 0)
      {
        v57 = *v57;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v20 = (*(*v4 + 40))(v4);
    v21 = *(this + 8);
    if (*(this + 9) == v21)
    {
      std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v60, "in");
      v59 = (this + 32);
      if (*(this + 55) < 0)
      {
        v59 = *v59;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v58, v59, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v22 = *(v20 + 56);
    v23 = (*(*v21 + 40))(v21);
    DSPGraph::Buffer::copyFrom(v22, *(v23 + 56));
  }

  v37 = *(this + 8);
  if (*(this + 9) == v37)
  {
    std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v60, "in");
    v49 = (this + 32);
    if (*(this + 55) < 0)
    {
      v49 = *v49;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v48, v49, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v37 + 40))(v37);
  v39 = *(this + 11);
  v40 = *(this + 12);
  if (v39 != v40)
  {
    v41 = result[7];
    result = *(this + 11);
    v42 = result;
    do
    {
      v43 = *v42;
      v42 += 4;
      v44 = *((*(v43 + 40))(result) + 56);
      v45 = *(v41 + 56);
      v46 = *(v41 + 40);
      v47 = *(v41 + 24);
      *(v44 + 8) = *(v41 + 8);
      *(v44 + 24) = v47;
      *(v44 + 40) = v46;
      *(v44 + 56) = v45;
      *(v44 + 72) = 0;
      v39 += 4;
      result = v42;
    }

    while (v42 != v40);
  }

  *(this + 200) = v3;
  return result;
}

void sub_18F866504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::getPreset(DSPGraph::Box *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = 0;
  v38 = Mutable;
  do
  {
    v6 = _ZGRN8DSPGraphL22kPresetParameterScopesE_[v5];
    v7 = (*(*this + 320))(this, v6);
    if (!v7)
    {
      goto LABEL_13;
    }

    (*(*this + 96))(&v39, this, v6);
    v8 = v39;
    v9 = v40;
    if (v39 == v40)
    {
      v12 = v39;
      if (v39)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      v11 = bswap32(v6);
      do
      {
        *bytes = v11;
        *&bytes[4] = bswap32(v10);
        LODWORD(v36) = bswap32((v9 - v8) >> 2);
        CFDataAppendBytes(Mutable, bytes, 12);
        v12 = v39;
        v8 = v40;
        if (v40 == v39)
        {
          v9 = v40;
        }

        else
        {
          v13 = 0;
          do
          {
            *&v14 = (*(*this + 88))(this, *(v12 + v13), v6, v10);
            *v32 = 0;
            *v32 = bswap32(*(v39 + v13));
            *&v32[4] = bswap32(v14);
            CFDataAppendBytes(Mutable, v32, 8);
            ++v13;
            v12 = v39;
            v9 = v40;
          }

          while (v13 < (v40 - v39) >> 2);
          v8 = v39;
        }

        v10 = (v10 + 1);
      }

      while (v10 != v7);
      if (v12)
      {
LABEL_12:
        v40 = v12;
        operator delete(v12);
      }
    }

LABEL_13:
    ++v5;
  }

  while (v5 != 3);
  *bytes = 0;
  v36 = 0;
  v37 = 0;
  (*(*this + 208))(bytes, this);
  applesauce::CF::StringRef::from_get(&cf, @"version");
  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v39 = v15;
  LODWORD(valuePtr) = 0;
  v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v40)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  applesauce::CF::StringRef::from_get(&valuePtr, @"type");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v41, valuePtr, bytes);
  applesauce::CF::StringRef::from_get(&v29, @"subtype");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v42, v29, &bytes[4]);
  applesauce::CF::StringRef::from_get(&v28, @"manufacturer");
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&v43, v28, &v36);
  applesauce::CF::StringRef::from_get(&v27, @"classname");
  v26 = (*(*this + 16))(this);
  applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(v44, v27, &v26);
  *v32 = &v39;
  v33 = 5;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v32);
  v17 = 0;
  v34 = CFDictionaryRef;
  do
  {
    v18 = v44[v17 + 1];
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = v44[v17];
    if (v19)
    {
      CFRelease(v19);
    }

    v17 -= 2;
  }

  while (v17 != -10);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (CFDataGetLength(Mutable) < 1)
  {
    CFRetain(CFDictionaryRef);
    *a2 = CFDictionaryRef;
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, CFDictionaryRef);
    CFDictionaryAddValue(MutableCopy, @"data", Mutable);
    *a2 = MutableCopy;
    if (MutableCopy)
    {
      v21 = CFGetTypeID(MutableCopy);
      if (v21 != CFDictionaryGetTypeID())
      {
        v22 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v22, "Could not construct");
      }
    }
  }

  CFRelease(CFDictionaryRef);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_18F866A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const void **a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, void *__p, uint64_t a36)
{
  __cxa_free_exception(v36);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a30);
  applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(&a34);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(void *a1, CFTypeRef cf, int *a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  valuePtr = *a3;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_18F866CD0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v2);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void *applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,char const*>(void *a1, CFTypeRef cf, char **a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  std::string::basic_string[abi:ne200100]<0>(__p, *a3);
  if ((v12 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  a1[1] = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_18F866DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15 + 1);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::TypeRef::~TypeRef(v15);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFData *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::DataRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t DSPGraph::Box::getElementCount(DSPGraph::Box *this, int a2)
{
  switch(a2)
  {
    case 0:
      return 1;
    case 2:
      return (*(this + 12) - *(this + 11)) >> 5;
    case 1:
      return (*(this + 9) - *(this + 8)) >> 5;
  }

  return 0;
}

uint64_t DSPGraph::DelayBox::setProperty(DSPGraph::DelayBox *this, int a2, int a3, unsigned int a4, int a5, unsigned int *a6)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  if (*(*(this + 1) + 762))
  {
    return 4294956447;
  }

  if (a5 != 4)
  {
    return 4294956445;
  }

  if (!a6)
  {
    return 4294967246;
  }

  result = 0;
  v9 = *a6;
  *(this + 198) = *a6;
  if (v9 >= *(this + 199))
  {
    v9 = *(this + 199);
  }

  *(this + 199) = v9;
  return result;
}

uint64_t DSPGraph::Box::setProperty(DSPGraph::Box *this, int a2, int a3, unsigned int a4, int a5, _DWORD *a6)
{
  if (a2)
  {
    if (a2 == 21)
    {
      if (a5 == 4)
      {
        if (!a3)
        {
          (*(*this + 56))(this, *a6 != 0);
          return 0;
        }

        return 4294956430;
      }

      return 561211770;
    }

    return 4294956417;
  }

  else
  {
    if (a5 != 8)
    {
      return 561211770;
    }

    if (a3)
    {
      return 4294956430;
    }

    v8 = *a6;
    v9 = *(*this + 352);

    return v9();
  }
}

uint64_t DSPGraph::DelayBox::getProperty(DSPGraph::DelayBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return DSPGraph::Box::getProperty(this, a2, a3, a4, a5, a6);
  }

  if (*a5 != 4)
  {
    return 561211770;
  }

  if (!a6)
  {
    return 4294967246;
  }

  result = 0;
  *a6 = *(this + 198);
  return result;
}

uint64_t DSPGraph::Box::getProperty(DSPGraph::Box *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, CFStringRef *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  result = 4294956417;
  if (a2 <= 10)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 2)
        {
          goto LABEL_64;
        }

        if (*a5 != 8)
        {
          goto LABEL_63;
        }

        if (a6)
        {
          if (a3 == 2)
          {
            v17 = a4;
            v18 = *(this + 11);
            if (a4 >= ((*(this + 12) - v18) >> 5))
            {
              std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v44, "out");
              v41 = (this + 32);
              if (*(this + 55) < 0)
              {
                v41 = *v41;
              }

              DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v40, v41, (*(this + 12) - *(this + 11)) >> 5, a4);
            }
          }

          else
          {
            if (a3 != 1)
            {
              goto LABEL_62;
            }

            v17 = a4;
            v18 = *(this + 8);
            if (a4 >= ((*(this + 9) - v18) >> 5))
            {
              std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
              std::string::basic_string[abi:ne200100]<0>(v44, "in");
              v20 = (this + 32);
              if (*(this + 55) < 0)
              {
                v20 = *v20;
              }

              DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(this + 9) - *(this + 8)) >> 5, a4);
            }
          }

          v35 = (*(*(v18 + 32 * v17) + 40))(v18 + 32 * v17);
          result = 0;
          v26 = **(v35 + 120);
          goto LABEL_78;
        }

LABEL_65:
        result = 4294967246;
        goto LABEL_64;
      }

      if (*a5 != 8)
      {
        goto LABEL_63;
      }

      if (a3)
      {
        goto LABEL_62;
      }

      (*(*this + 360))(v45, this);
      v21 = *&v45[0];
      *&v45[0] = 0;
      *a6 = v21;
      applesauce::CF::DictionaryRef::~DictionaryRef(v45);
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          if (*a5 != 104)
          {
            goto LABEL_63;
          }

          if (a6)
          {
            (*(*this + 104))(v45, this, a3, a4);
            if (v47 == 1)
            {
              result = 0;
              a6[12] = v46;
              v22 = v45[5];
              *(a6 + 4) = v45[4];
              *(a6 + 5) = v22;
              v23 = v45[1];
              *a6 = v45[0];
              *(a6 + 1) = v23;
              v24 = v45[3];
              *(a6 + 2) = v45[2];
              *(a6 + 3) = v24;
            }

            else
            {
              result = LODWORD(v45[0]);
            }

            goto LABEL_64;
          }
        }

        else
        {
          if (a2 != 8)
          {
            goto LABEL_64;
          }

          if (*a5 != 40)
          {
            goto LABEL_63;
          }

          if (a6)
          {
            if (a3 == 2)
            {
              v11 = a4;
              v12 = *(this + 11);
              if (a4 >= ((*(this + 12) - v12) >> 5))
              {
                std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v44, "out");
                v43 = (this + 32);
                if (*(this + 55) < 0)
                {
                  v43 = *v43;
                }

                DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v42, v43, (*(this + 12) - *(this + 11)) >> 5, a4);
              }
            }

            else
            {
              if (a3 != 1)
              {
                goto LABEL_62;
              }

              v11 = a4;
              v12 = *(this + 8);
              if (a4 >= ((*(this + 9) - v12) >> 5))
              {
                std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
                std::string::basic_string[abi:ne200100]<0>(v44, "in");
                v14 = (this + 32);
                if (*(this + 55) < 0)
                {
                  v14 = *v14;
                }

                DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v13, v14, (*(this + 9) - *(this + 8)) >> 5, a4);
              }
            }

            v36 = (*(*(v12 + 32 * v11) + 40))(v12 + 32 * v11);
            result = 0;
            v37 = *(v36 + 120);
            v38 = *v37;
            v39 = v37[1];
            a6[4] = *(v37 + 4);
            *a6 = v38;
            *(a6 + 1) = v39;
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }

      (*(*this + 96))(v45, this, a3);
      v28 = *&v45[0];
      v29 = DWORD2(v45[0]) - LODWORD(v45[0]);
      v30 = (DWORD2(v45[0]) - LODWORD(v45[0])) & 0xFFFFFFFC;
      if (*a5 < v30)
      {
        if (*&v45[0])
        {
          *(&v45[0] + 1) = *&v45[0];
          operator delete(*&v45[0]);
        }

        goto LABEL_63;
      }

      *a5 = v30;
      memcpy(a6, v28, v29 & 0xFFFFFFFC);
      if (v28)
      {
        *(&v45[0] + 1) = v28;
        operator delete(v28);
      }
    }

    result = 0;
    goto LABEL_64;
  }

  if (a2 > 20)
  {
    switch(a2)
    {
      case 21:
        if (*a5 != 4)
        {
          goto LABEL_63;
        }

        if (a3)
        {
          goto LABEL_62;
        }

        v27 = (*(*this + 48))(this);
        break;
      case 29:
        if (*a5 != 4)
        {
          goto LABEL_63;
        }

        if (a3)
        {
          goto LABEL_62;
        }

        v27 = (*(*this + 64))(this);
        break;
      case 54:
        if (*a5 != 8)
        {
          goto LABEL_63;
        }

        if (a3)
        {
          goto LABEL_62;
        }

        v15 = this + 32;
        if (*(this + 55) < 0)
        {
          v15 = *v15;
        }

        v16 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v15, 0x8000100u);
        result = 0;
        *a6 = v16;
        goto LABEL_64;
      default:
        goto LABEL_64;
    }

    v34 = v27;
    result = 0;
LABEL_75:
    *a6 = v34;
    goto LABEL_64;
  }

  switch(a2)
  {
    case 11:
      if (*a5 != 4)
      {
        goto LABEL_63;
      }

      if (a3)
      {
        if (a3 == 2)
        {
          result = 0;
          v32 = *(this + 11);
          v31 = *(this + 12);
        }

        else
        {
          if (a3 != 1)
          {
            goto LABEL_62;
          }

          result = 0;
          v32 = *(this + 8);
          v31 = *(this + 9);
        }

        *a6 = (v31 - v32) >> 5;
        break;
      }

      result = 0;
      v34 = 1;
      goto LABEL_75;
    case 12:
      if (*a5 != 8)
      {
        goto LABEL_63;
      }

      if (a3)
      {
        goto LABEL_62;
      }

      v25 = (*(*this + 72))(this);
      result = 0;
      v26 = v25 / *(*(this + 1) + 696);
LABEL_78:
      *a6 = v26;
      break;
    case 20:
      if (*a5 == 8)
      {
        if (!a3)
        {
          result = 0;
          *a6 = 0;
          break;
        }

LABEL_62:
        result = 4294956430;
        break;
      }

LABEL_63:
      result = 561211770;
      break;
  }

LABEL_64:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DSPGraph::DelayBox::getPropertyInfo(DSPGraph::DelayBox *this, int a2, int a3, int a4)
{
  if (a2 != 64000 || (a4 | a3) != 0)
  {
    return DSPGraph::Box::getPropertyInfo(this, a2, a3);
  }

  if (*(*(this + 1) + 762))
  {
    return 4;
  }

  return 0x100000004;
}

uint64_t DSPGraph::Box::getPropertyInfo(DSPGraph::Box *this, int a2, int a3)
{
  if (a2 > 10)
  {
    if (a2 > 20)
    {
      if (a2 != 21)
      {
        if (a2 == 29)
        {
          v3 = 0;
          v5 = a3 == 0;
          v6 = 4;
LABEL_21:
          if (v5)
          {
            v4 = v6;
          }

          else
          {
            v4 = -10866;
          }

          return v3 | v4;
        }

        if (a2 != 54)
        {
LABEL_18:
          v3 = 0;
          v4 = -10879;
          return v3 | v4;
        }

LABEL_15:
        v3 = 0;
        v5 = a3 == 0;
        v6 = 8;
        goto LABEL_21;
      }

      if (a3)
      {
        v3 = 0;
        v4 = -10866;
        return v3 | v4;
      }

      v8 = (*(*this + 40))(this);
      v3 = 0x100000000;
      if (!v8)
      {
        v3 = 0;
      }
    }

    else
    {
      if (a2 != 11)
      {
        if (a2 != 12 && a2 != 20)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v3 = 0;
    }

    v4 = 4;
    return v3 | v4;
  }

  if (a2 <= 2)
  {
    v3 = 0;
    v4 = 8;
    if (a2 && a2 != 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        (*(*this + 96))(&v10);
        v7 = v11 - v10;
        if (v10)
        {
          v11 = v10;
          operator delete(v10);
        }

        v3 = 0;
        v4 = v7 & 0xFFFFFFFC;
        break;
      case 4:
        v3 = 0;
        v4 = 104;
        return v3 | v4;
      case 8:
        v3 = 0;
        v4 = 40;
        break;
      default:
        goto LABEL_18;
    }
  }

  return v3 | v4;
}

double DSPGraph::DelayBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23899122e175;
  *a1 = xmmword_18F901B20;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::Box::getAnalyzer(DSPGraph::Box *this, uint64_t a2, int a3)
{
  v3 = *(this + 11);
  v4 = *(this + 12) - v3;
  if ((v4 & 0x1FFFFFFFE0) == 0)
  {
    return 0;
  }

  if (a2 >= (v4 >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v13, "out");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, a2);
  }

  result = (*(*(v3 + 32 * a2) + 40))(v3 + 32 * a2);
  if (result)
  {
    v9 = *(this + 39);
    v10 = *(this + 40);
    if (v9 != v10)
    {
      while (*(*v9 + 8) != result || *(*v9 + 24) != a3)
      {
        v9 += 8;
        if (v9 == v10)
        {
          return 0;
        }
      }
    }

    if (v9 != v10)
    {
      return *v9;
    }

    return 0;
  }

  return result;
}

void sub_18F867BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::getAnalysisList(DSPGraph::Box *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  if ((v5 & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_20;
  }

  if (a2 >= (v5 >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v23, "out");
    v22 = (this + 32);
    if (*(this + 55) < 0)
    {
      v22 = *v22;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v21, v22, (*(this + 12) - *(this + 11)) >> 5, a2);
  }

  v8 = (*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2);
  if (v8)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v9 = *(this + 39);
    v10 = *(this + 40);
    if (v9 != v10)
    {
      v11 = v8;
      v12 = 0;
      v13 = 0;
      do
      {
        if (*(*v9 + 8) == v11)
        {
          v14 = v12 - v13;
          v15 = (v12 - v13) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            a3[1] = v12;
            a3[2] = 0;
            *a3 = v13;
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          if (-v13 >> 1 > v16)
          {
            v16 = -v13 >> 1;
          }

          if (-v13 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v17 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v17);
          }

          v18 = (v12 - v13) >> 2;
          v19 = (4 * v15);
          v20 = (4 * v15 - 4 * v18);
          *v19 = *(*v9 + 24);
          v12 = v19 + 1;
          memcpy(v20, v13, v14);
          if (v13)
          {
            operator delete(v13);
          }

          v13 = v20;
        }

        v9 += 8;
      }

      while (v9 != v10);
      a3[1] = v12;
      a3[2] = 0;
      *a3 = v13;
    }
  }

  else
  {
LABEL_20:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_18F867DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v29[1] = v31;
  v29[2] = v32;
  *v29 = v30;
  if (v30)
  {
    v29[1] = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::analyzeEnable(uint64_t this, uint64_t a2, char a3)
{
  v3 = *(this + 88);
  v4 = *(this + 96) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v6 = this;
    if (a2 >= (v4 >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v12, "out");
      v11 = (v6 + 32);
      if (*(v6 + 55) < 0)
      {
        v11 = *v11;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, v11, (*(v6 + 96) - *(v6 + 88)) >> 5, a2);
    }

    this = (*(*(v3 + 32 * a2) + 40))(v3 + 32 * a2);
    if (this)
    {
      v8 = *(v6 + 312);
      v9 = *(v6 + 320);
      if (v8 != v9)
      {
        while (*(*v8 + 8) != this)
        {
          v8 += 8;
          if (v8 == v9)
          {
            return this;
          }
        }
      }

      if (v8 != v9)
      {
        *(*v8 + 28) = a3;
      }
    }
  }

  return this;
}

void sub_18F867F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::stopAnalyzing(DSPGraph::Box *this, uint64_t a2)
{
  std::mutex::lock((this + 248));
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    if (a2 >= (v5 >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v18, "out");
      v17 = (this + 32);
      if (*(this + 55) < 0)
      {
        v17 = *v17;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v16, v17, (*(this + 12) - *(this + 11)) >> 5, a2);
    }

    v6 = (*(*(v4 + 32 * a2) + 40))(v4 + 32 * a2);
    if (v6)
    {
      v7 = *(this + 39);
      v8 = *(this + 40);
      if (v7 == v8)
      {
LABEL_8:
        v7 = *(this + 40);
      }

      else
      {
        v9 = v6;
        while (*(*v7 + 8) != v6)
        {
          if (++v7 == v8)
          {
            goto LABEL_8;
          }
        }

        caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 336, *(*v7 + 24));
        atomic_fetch_add(this + 192, 0xFFFFFFFF);
        if (v7 != v8)
        {
          for (i = v7 + 1; i != v8; ++i)
          {
            v14 = *i;
            if (*(*i + 8) == v9)
            {
              caulk::concurrent::skiplist<unsigned int,DSPGraph::Analyzer *,10,(caulk::concurrent::skiplist_options)0>::remove(this + 336, *(v14 + 24));
              atomic_fetch_add(this + 192, 0xFFFFFFFF);
            }

            else
            {
              *i = 0;
              v15 = *v7;
              *v7 = v14;
              if (v15)
              {
                (*(*v15 + 8))(v15);
              }

              ++v7;
            }
          }
        }
      }

      v10 = *(this + 40);
      if (v7 != v10)
      {
        while (v10 != v7)
        {
          v12 = *--v10;
          v11 = v12;
          *v10 = 0;
          if (v12)
          {
            (*(*v11 + 8))(v11);
          }
        }

        *(this + 40) = v7;
      }
    }
  }

  std::mutex::unlock((this + 248));
}

void sub_18F868268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::mutex::unlock((v29 + 248));
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Box::recordEnable(DSPGraph::Box *this, uint64_t a2, char a3)
{
  v6 = *(this + 11);
  v7 = *(this + 12) - v6;
  if ((v7 & 0x1FFFFFFFE0) != 0)
  {
    if (a2 >= (v7 >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v17, "out");
      v14 = (this + 32);
      if (*(this + 55) < 0)
      {
        v14 = *v14;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v13, v14, (*(this + 12) - *(this + 11)) >> 5, a2);
    }

    v8 = v6 + 32 * a2;
  }

  else
  {
    v9 = *(this + 8);
    if (a2 >= ((*(this + 9) - v9) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v17, "in");
      v16 = (this + 32);
      if (*(this + 55) < 0)
      {
        v16 = *v16;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v15, v16, (*(this + 9) - *(this + 8)) >> 5, a2);
    }

    v8 = v9 + 32 * a2;
  }

  result = (*(*v8 + 40))(v8);
  v11 = *(this + 25);
  v12 = *(this + 26);
  if (v11 != v12)
  {
    while (*(*v11 + 8) != result)
    {
      v11 += 8;
      if (v11 == v12)
      {
        return result;
      }
    }
  }

  if (v11 != v12)
  {
    *(*v11 + 88) = a3;
  }

  return result;
}

void sub_18F868480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::stopRecording(DSPGraph::Box *this, uint64_t a2)
{
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    if (a2 >= (v5 >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "out");
      v18 = (this + 32);
      if (*(this + 55) < 0)
      {
        v18 = *v18;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v17, v18, (*(this + 12) - *(this + 11)) >> 5, a2);
    }

    v6 = v4 + 32 * a2;
  }

  else
  {
    v7 = *(this + 8);
    if (a2 >= ((*(this + 9) - v7) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "in");
      v20 = (this + 32);
      if (*(this + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(this + 9) - *(this + 8)) >> 5, a2);
    }

    v6 = v7 + 32 * a2;
  }

  result = (*(*v6 + 40))(v6);
  v9 = result;
  v10 = *(this + 25);
  v11 = *(this + 26);
  if (v10 != v11)
  {
    while (*(*v10 + 8) != result)
    {
      if (++v10 == v11)
      {
        v12 = *(this + 26);
        goto LABEL_22;
      }
    }

    atomic_fetch_add(this + 192, 0xFFFFFFFF);
  }

  v12 = v11;
  if (v10 != v11)
  {
    v13 = v10 + 1;
    if (v10 + 1 == v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10;
      do
      {
        v14 = *v13;
        if (*(*v13 + 8) == v9)
        {
          atomic_fetch_add(this + 192, 0xFFFFFFFF);
        }

        else
        {
          *v13 = 0;
          result = *v12;
          *v12 = v14;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          ++v12;
        }

        ++v13;
      }

      while (v13 != v11);
    }
  }

LABEL_22:
  v15 = *(this + 26);
  if (v12 != v15)
  {
    while (v15 != v12)
    {
      v16 = *--v15;
      result = v16;
      *v15 = 0;
      if (v16)
      {
        result = (*(*result + 8))(result);
      }
    }

    *(this + 26) = v12;
  }

  return result;
}

void sub_18F8687C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::record(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 88);
  v6 = *(a1 + 96) - v5;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    if (a3 < (v6 >> 5))
    {
      (*(*(v5 + 32 * a3) + 40))(v5 + 32 * a3);
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v16, "out");
    v13 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(a1 + 96) - *(a1 + 88)) >> 5, a3);
  }

  v7 = *(a1 + 64);
  if (a3 >= ((*(a1 + 72) - v7) >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v16, "in");
    v15 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v14, v15, (*(a1 + 72) - *(a1 + 64)) >> 5, a3);
  }

  v8 = *((*(*(v7 + 32 * a3) + 40))(v7 + 32 * a3) + 8);
  v9 = *(v8 + 24);
  v10 = *(**(v8 + 8) + 152);

  return v10();
}

void sub_18F868B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  v32 = *(v29 + 16);
  *(v29 + 16) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  MEMORY[0x193ADF220](v29, v30);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Box::stopInjecting(DSPGraph::Box *this, uint64_t a2)
{
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
  if ((v5 & 0x1FFFFFFFE0) != 0)
  {
    if (a2 >= (v5 >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "out");
      v18 = (this + 32);
      if (*(this + 55) < 0)
      {
        v18 = *v18;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v17, v18, (*(this + 12) - *(this + 11)) >> 5, a2);
    }

    v6 = v4 + 32 * a2;
  }

  else
  {
    v7 = *(this + 8);
    if (a2 >= ((*(this + 9) - v7) >> 5))
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "in");
      v20 = (this + 32);
      if (*(this + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(this + 9) - *(this + 8)) >> 5, a2);
    }

    v6 = v7 + 32 * a2;
  }

  result = (*(*v6 + 40))(v6);
  v9 = result;
  v10 = *(this + 28);
  v11 = *(this + 29);
  if (v10 != v11)
  {
    while (*(*v10 + 8) != result)
    {
      if (++v10 == v11)
      {
        v12 = *(this + 29);
        goto LABEL_22;
      }
    }

    atomic_fetch_add(this + 192, 0xFFFFFFFF);
  }

  v12 = v11;
  if (v10 != v11)
  {
    v13 = v10 + 1;
    if (v10 + 1 == v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10;
      do
      {
        v14 = *v13;
        if (*(*v13 + 8) == v9)
        {
          atomic_fetch_add(this + 192, 0xFFFFFFFF);
        }

        else
        {
          *v13 = 0;
          result = *v12;
          *v12 = v14;
          if (result)
          {
            result = (*(*result + 8))(result);
          }

          ++v12;
        }

        ++v13;
      }

      while (v13 != v11);
    }
  }

LABEL_22:
  v15 = *(this + 29);
  if (v12 != v15)
  {
    while (v15 != v12)
    {
      v16 = *--v15;
      result = v16;
      *v15 = 0;
      if (v16)
      {
        result = (*(*result + 8))(result);
      }
    }

    *(this + 29) = v12;
  }

  return result;
}

void sub_18F868F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::Box::inject(DSPGraph::Box *this, const char *a2, uint64_t a3)
{
  v5 = *(this + 11);
  v6 = *(this + 12) - v5;
  if ((v6 & 0x1FFFFFFFE0) != 0)
  {
    if (a3 < (v6 >> 5))
    {
      (*(*(v5 + 32 * a3) + 40))(v5 + 32 * a3);
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v16, "out");
    v13 = (this + 32);
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(this + 12) - *(this + 11)) >> 5, a3);
  }

  v7 = *(this + 8);
  if (a3 >= ((*(this + 9) - v7) >> 5))
  {
    std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v16, "in");
    v15 = (this + 32);
    if (*(this + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v14, v15, (*(this + 9) - *(this + 8)) >> 5, a3);
  }

  v8 = *((*(*(v7 + 32 * a3) + 40))(v7 + 32 * a3) + 8);
  v9 = *(v8 + 24);
  v10 = *(**(v8 + 8) + 136);

  return v10();
}

void sub_18F8692DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  DSPGraph::SimpleABL::free(v31);
  MEMORY[0x193ADF220](v29, v30);
  _Unwind_Resume(a1);
}

size_t DSPGraph::DelayBox::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = -10866;
  }

  else
  {
    if (!a2)
    {
      v17 = 0;
      v15 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *&v16 = 5;
      *(&v16 + 1) = 0x3F80000049742400;
      result = strlcpy(&v11, "delay samples", 0x34uLL);
      *(&v15 + 1) = @"delay samples";
      LODWORD(v17) = v17 | 0xC8000000;
      v8 = v12;
      *a3 = v11;
      *(a3 + 16) = v8;
      v9 = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v9;
      v10 = v16;
      *(a3 + 64) = v15;
      *(a3 + 80) = v10;
      *(a3 + 96) = v17;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v5 = -10878;
  }

  *a3 = v5;
  *(a3 + 104) = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F869474(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::DelayBox::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v7[0] = v3;
    v7[1] = v4;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v6, v7, 1uLL);
  }

  return result;
}

float DSPGraph::DelayBox::getParameter(DSPGraph::DelayBox *this, int a2, int a3)
{
  if (a3 | a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v4, "");
    DSPGraph::ThrowException(-10878, &v6, 3273, &v5, &v4);
  }

  return *(this + 199);
}

void sub_18F869550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::DelayBox::setParameter(DSPGraph::DelayBox *this, int a2, int a3, float a4)
{
  if (a3 | a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "");
    DSPGraph::ThrowException(-10878, &v9, 3261, &v8, &v7);
  }

  v4 = llroundf(a4);
  if (HIDWORD(v4))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "numerical cast overflow: could not retain value in conversion type");
  }

  return DSPGraph::DelayBox::setDelayFrames(this, v4);
}

void sub_18F869668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::DelayBox::selfLatencyInTicks(DSPGraph::DelayBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v9, "out");
    v8 = (this + 32);
    if (*(this + 55) < 0)
    {
      v8 = *v8;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v7, v8, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v4 = *(*(this + 1) + 696);
  v5 = *(this + 199);
  return v4 / **((*(*v2 + 40))(v2) + 120) * v5;
}

void sub_18F8697B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::printShort(uint64_t a1, void *a2, unsigned int a3)
{
  (*(*a1 + 16))(a1);
  if (*(a1 + 55) < 0)
  {
    v6 = *(a1 + 32);
  }

  v7 = *(a1 + 56);
  DSPGraph::printi(a2, a3, "%s '%s' %qu %p ");
}

uint64_t DSPGraph::Box::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    DSPGraph::printi(a2, v4 + 4, "graph %p\n");
  }

  return result;
}

void DSPGraph::DelayBox::~DelayBox(DSPGraph::DelayBox *this)
{
  *this = &unk_1F0338800;
  DSPGraph::SimpleABL::free((this + 776));
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0338800;
  DSPGraph::SimpleABL::free((this + 776));

  DSPGraph::Box::~Box(this);
}

uint64_t std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 80;
  do
  {
    for (i = *&caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>::Sizes[8 * v2]; ; caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::deallocate(a1 + 32, v5, i))
    {
      v5 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
      if (!v5)
      {
        break;
      }

      atomic_fetch_add((v3 + 32 * v2 + 16), 0xFFFFFFFFFFFFFFFFLL);
    }

    ++v2;
  }

  while (v2 != 10);

  return caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>::self_deallocate_all(a1 + 32);
}

void std::__shared_ptr_emplace<caulk::alloc::multi_free_list<caulk::alloc::cascading_allocator<caulk::alloc::chunk_allocator<caulk::alloc::global_page_cache,caulk::alloc::serial_allocator,caulk::alloc::embed_block_memory,16384ul>>,caulk::concurrent::details::node_allocator<unsigned int,DSPGraph::Analyzer *,10ul,(caulk::concurrent::skiplist_options)0>::size_generator,8ul,1ul,-1l>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F033ACF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void DSPGraph::Box::getParameterList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void DSPGraph::Box::getParameter(DSPGraph::Box *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v2, "getParameter");
  std::string::basic_string[abi:ne200100]<0>(&v1, "Box::getParameter");
  DSPGraph::ThrowException(1869640255, &v3, 783, &v2, &v1);
}

void sub_18F869CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::Box::setParameter(DSPGraph::Box *this, float a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v3, "setParameter");
  std::string::basic_string[abi:ne200100]<0>(&v2, "Box::setParameter");
  DSPGraph::ThrowException(1869640255, &v4, 793, &v3, &v2);
}

void sub_18F869D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::AUBox::decompileBox(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (a1 + 32);
  if ((a3 & 1) == 0)
  {
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    std::string::basic_string[abi:ne200100]<0>(v9, v3);
    DSPGraph::asDecompileString(v9, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    DSPGraph::strprintf("box %s ", v4, p_p);
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *v3;
  }

  v6 = *(a1 + 56);
  std::string::basic_string[abi:ne200100]<0>(v9, v3);
  DSPGraph::asDecompileString(v9, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  DSPGraph::strprintf("box %qu %s ", v7, v6, v8);
}

void sub_18F869F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::getFormatFromUnit@<X0>(AudioUnit *this@<X0>, AudioUnitScope inScope@<W1>, AudioUnitElement inElement@<W2>, void *a4@<X8>)
{
  a4[4] = 0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  ioDataSize = 40;
  result = AudioUnitGetProperty(this[106], 8u, inScope, inElement, a4, &ioDataSize);
  if (result)
  {
    v8 = result;
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "getFormatFromUnit");
    std::string::basic_string[abi:ne200100]<0>(&v9, "AUBox::getFormatFromUnit ");
    v6 = (*(*this + 2))(this);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &v9, v6);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, &v10, " ");
    v7 = (this + 4);
    if (*(this + 55) < 0)
    {
      v7 = *v7;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12, &v11, v7);
    DSPGraph::ThrowException(v8, &v14, 2045, &v13, &v12);
  }

  return result;
}

void sub_18F86A108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  if (*(v33 - 25) < 0)
  {
    operator delete(*(v33 - 48));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::AUBox::getComponentName(AudioComponentInstance *this@<X0>, uint64_t a2@<X8>)
{
  Component = AudioComponentInstanceGetComponent(this[106]);
  if (Component && (v11 = 0, !Impl_AudioGetComponentInfo(Component, 0, &v11)))
  {
    v10 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }

    v4 = CFGetTypeID(v11);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (!v10)
    {
LABEL_10:
      v6 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v6, "Could not construct");
    }

    applesauce::CF::convert_to<std::string,0>(&v8, v10);
    *a2 = v8;
    v5 = v10;
    *(a2 + 16) = v9;
    *(a2 + 24) = 1;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }
}

void sub_18F86A2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

const void *DSPGraph::AUBox::getPreset@<X0>(DSPGraph::AUBox *this@<X0>, void *a2@<X8>)
{
  v12 = 0;
  v11 = 8;
  v3 = (*(*this + 304))(this, 0, 0, 0, &v11, &v12);
  if (v3)
  {
    v6 = v3;
    std::string::basic_string[abi:ne200100]<0>(&v10, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getPreset");
    std::string::basic_string[abi:ne200100]<0>(&v8, "AudioUnitGetProperty ClassInfo");
    DSPGraph::ThrowException(v6, &v10, 1802, &v9, &v8);
  }

  result = v12;
  *a2 = v12;
  if (result)
  {
    v5 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v5 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_18F86A430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::AUBox::usesFixedBlockSize(DSPGraph::AUBox *this)
{
  v8 = 4;
  v9 = 0;
  (*(*this + 304))(this, 3700, 0, 0, &v8, &v9);
  v2 = (*(*this + 304))(this, 3700, 0, 0, &v8, &v9);
  if (v2)
  {
    v4 = v2;
    std::string::basic_string[abi:ne200100]<0>(&v7, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v6, "usesFixedBlockSize");
    std::string::basic_string[abi:ne200100]<0>(&v5, "getProperty failed");
    DSPGraph::ThrowException(v4, &v7, 2025, &v6, &v5);
  }

  return v9 != 0;
}

void sub_18F86A5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::AUBox::getParameterInfo@<X0>(DSPGraph::AUBox *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 104;
  result = (*(*this + 304))();
  if (result)
  {
    v4 = 0;
    *a2 = result;
  }

  else
  {
    v5 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v5;
    *(a2 + 96) = v16;
    v6 = v11;
    *a2 = v10;
    *(a2 + 16) = v6;
    v7 = v13;
    v4 = 1;
    *(a2 + 32) = v12;
    *(a2 + 48) = v7;
  }

  *(a2 + 104) = v4;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86A700(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double DSPGraph::AUBox::getParameterList@<D0>(DSPGraph::AUBox *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*this + 296))(this, 3, a2, 0);
  if ((v8 & 1) != 0 && (v9 = v6, v6 > 3))
  {
    std::vector<unsigned int>::vector[abi:ne200100](__p, v6 >> 2);
    v10 = v9 & 0xFFFFFFFC;
    if ((*(*this + 304))(this, 3, a2, 0, &v10, __p[0]))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      result = *__p;
      *a3 = *__p;
      a3[2] = v12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_18F86A82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::AUBox::isBypassed(DSPGraph::AUBox *this)
{
  v4 = 0;
  v3 = 4;
  if ((*(*this + 304))(this, 21, 0, 0, &v3, &v4))
  {
    v1 = 1;
  }

  else
  {
    v1 = v4 == 0;
  }

  return !v1;
}

uint64_t DSPGraph::AUBox::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4;
    v6 = result;
    DSPGraph::Box::print(result, a2, a3, a4);
    v7 = *(v6 + 744);
    DSPGraph::printi(a2, v4 + 4, "enabled %d\n");
  }

  return result;
}

char *DSPGraph::TestBox::process(DSPGraph::TestBox *this)
{
  v4 = this + 64;
  result = *(this + 8);
  v3 = *(v4 + 1);
  if (((v3 - result) & 0x1FFFFFFFE0) != 0)
  {
    if (v3 == result)
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "in");
      v18 = (this + 32);
      if (*(this + 55) < 0)
      {
        v18 = *v18;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v17, v18, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v5 = (*(*result + 40))(result);
    v6 = *(this + 8);
    if (*(this + 9) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v21, "in");
      v20 = (this + 32);
      if (*(this + 55) < 0)
      {
        v20 = *v20;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v19, v20, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = *(*(v5 + 56) + 72);
    result = (*(*v6 + 40))(v6);
    v9 = *(this + 11);
    v8 = *(this + 12);
    if (v9 != v8)
    {
      v10 = *(result + 7);
      result = v9;
      v11 = v9;
      do
      {
        v12 = *v11;
        v11 += 32;
        v13 = *((*(v12 + 40))(result) + 56);
        v14 = *(v10 + 56);
        v15 = *(v10 + 40);
        v16 = *(v10 + 24);
        *(v13 + 8) = *(v10 + 8);
        *(v13 + 24) = v16;
        *(v13 + 40) = v15;
        *(v13 + 56) = v14;
        *(v13 + 72) = v7;
        v9 += 32;
        result = v11;
      }

      while (v11 != v8);
    }
  }

  return result;
}

void sub_18F86AD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::TestBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.91466378e252;
  *a1 = xmmword_18F901AB0;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::TestBox::~TestBox(DSPGraph::TestBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::CopyBox::initialize(DSPGraph::CopyBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v13, "in");
    v9 = (this + 32);
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, v9, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v13, "out");
    v11 = (this + 32);
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, v11, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  v6 = (*(*v4 + 40))(v4);
  result = memcmp(v5, *(v6 + 120), 0x28uLL);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v13, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v12, "CopyBox input and output format mismatch");
    DSPGraph::ThrowException(1718444833, &v14, 2139, &v13, &v12);
  }

  return result;
}

void sub_18F86B030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::CopyBox::process(DSPGraph::CopyBox *this, int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v37, "in");
    v28 = (this + 32);
    if (*(this + 55) < 0)
    {
      v28 = *v28;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v37, "out");
    v30 = (this + 32);
    if (*(this + 55) < 0)
    {
      v30 = *v30;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, v30, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(v6 + 56);
  v9 = (*(*v7 + 40))(v7);
  v10 = *(this + 8);
  if (*(this + 9) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v37, "in");
    v32 = (this + 32);
    if (*(this + 55) < 0)
    {
      v32 = *v32;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v31, v32, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v11 = *(v9 + 56);
  v12 = (*(*v10 + 40))(v10);
  DSPGraph::SimpleABL::copy((v8 + 80), (v11 + 80), 0, 0, (*(*(v12 + 120) + 24) * a2), 1);
  v13 = *(this + 8);
  if (*(this + 9) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v37, "in");
    v34 = (this + 32);
    if (*(this + 55) < 0)
    {
      v34 = *v34;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v33, v34, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v14 = (*(*v13 + 40))(v13);
  v15 = *(this + 8);
  if (*(this + 9) == v15)
  {
    std::string::basic_string[abi:ne200100]<0>(v38, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v37, "in");
    v36 = (this + 32);
    if (*(this + 55) < 0)
    {
      v36 = *v36;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v35, v36, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v16 = *(*(v14 + 56) + 72);
  result = (*(*v15 + 40))(v15);
  v19 = *(this + 11);
  v18 = *(this + 12);
  if (v19 != v18)
  {
    v20 = result[7];
    result = v19;
    v21 = v19;
    do
    {
      v22 = *v21;
      v21 += 4;
      v23 = *((*(v22 + 40))(result) + 56);
      v24 = *(v20 + 56);
      v25 = *(v20 + 40);
      v26 = *(v20 + 24);
      *(v23 + 8) = *(v20 + 8);
      *(v23 + 24) = v26;
      *(v23 + 40) = v25;
      *(v23 + 56) = v24;
      *(v23 + 72) = v16;
      v19 += 32;
      result = v21;
    }

    while (v21 != v18);
  }

  return result;
}

void sub_18F86B4B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::CopyBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.49207469e170;
  *a1 = xmmword_18F901A70;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::CopyBox::~CopyBox(DSPGraph::CopyBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t DSPGraph::ArithmeticAbsBox::initialize(DSPGraph::ArithmeticAbsBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0x20 || ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v31, "initialize");
    DSPGraph::strprintf("There must be one input and one output, instead of %u and %u.", v16, (*(this + 9) - *(this + 8)) >> 5, (*(this + 12) - *(this + 11)) >> 5);
  }

  if (v3 == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v31, "in");
    v11 = (this + 32);
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v10, v11, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v4 = (*(*v2 + 40))(v2);
  v5 = *(this + 11);
  if (*(this + 12) == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v31, "out");
    v13 = (this + 32);
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *(*(v4 + 120) + 28);
  if (v6 != *(*((*(*v5 + 40))(v5) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v29, "initialize");
    v17 = *(this + 8);
    if (*(this + 9) != v17)
    {
      v18 = (*(*v17 + 40))(v17);
      v19 = *(this + 11);
      if (*(this + 12) != v19)
      {
        v20 = *(*(v18 + 120) + 28);
        v21 = (*(*v19 + 40))(v19);
        DSPGraph::strprintf("The input and output must have the same channel count, but have %u and %u.", v22, v20, *(*(v21 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v31, "out");
      v28 = (this + 32);
      if (*(this + 55) < 0)
      {
        v28 = *v28;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v27, v28, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v31, "in");
    v26 = (this + 32);
    if (*(this + 55) < 0)
    {
      v26 = *v26;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v25, v26, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v31, "out");
    v15 = (this + 32);
    if (*(this + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, v15, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v7 + 40))(v7);
  v9 = *(*(result + 120) + 8);
  if (v9 != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v31, "initialize");
    caulk::string_from_4cc(&v30, v9);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v30;
    }

    else
    {
      v24 = v30.__r_.__value_.__r.__words[0];
    }

    DSPGraph::strprintf("The output must have 'lpcm' format, but has %s instead.", v23, v24);
  }

  return result;
}

void sub_18F86BA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (*(v29 - 17) < 0)
  {
    operator delete(*(v29 - 40));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

std::string *caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = bswap32(__val);
  v6 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    result = std::to_string(retstr, __val);
  }

  else
  {
    v7 = 39;
    v5 = 39;
    result = std::string::basic_string[abi:ne200100]<0>(retstr, &v5);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86BC70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *DSPGraph::ArithmeticAbsBox::process(DSPGraph::ArithmeticAbsBox *this, unsigned int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v39 = (this + 32);
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v38, v39, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "out");
    v41 = (this + 32);
    if (*(this + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v40, v41, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(*((*(*v7 + 40))(v7) + 56) + 80);
  if (*v8 != *v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v61, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v60, "process");
    v48 = *(this + 8);
    if (*(this + 9) != v48)
    {
      v49 = (*(*v48 + 40))(v48);
      v50 = *(this + 11);
      if (*(this + 12) != v50)
      {
        v51 = *(*(v49 + 120) + 28);
        v52 = (*(*v50 + 40))(v50);
        DSPGraph::strprintf("The input and output must have the same channel count, but have %u and %u.", v53, v51, *(*(v52 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v62, "out");
      v59 = (this + 32);
      if (*(this + 55) < 0)
      {
        v59 = *v59;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v58, v59, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v57 = (this + 32);
    if (*(this + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v56, v57, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v10 = *(this + 8);
  if (*(this + 9) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v43 = (this + 32);
    if (*(this + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, v43, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v11 = *(*((*(*v10 + 40))(v10) + 120) + 8);
  v12 = 2;
  if (v11 == 1718773105)
  {
    v12 = 3;
  }

  v13 = a2 << v12;
  if (v13 > v8[3])
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v62, "process");
    DSPGraph::strprintf("The buffer passed for input 0 should be at least %u bytes, but is %u.", v54, v13, v8[3]);
  }

  v14 = 4 * a2;
  if (4 * a2 > v9[3])
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v62, "process");
    DSPGraph::strprintf("The buffer passed for output 0 should be at least %u bytes, but is %u.", v55, 4 * a2, v9[3]);
  }

  v15 = *v9;
  if (v11 == 1718773105)
  {
    if (v15)
    {
      v16 = 0;
      v17 = (v9 + 4);
      v18 = (v8 + 4);
      do
      {
        __A.realp = 0;
        __A.imagp = 0;
        v19 = *v18;
        v18 += 2;
        __A.realp = v19;
        __A.imagp = &v19[a2];
        vDSP_zvabs(&__A, 1, *v17, 1, a2);
        *(v17 - 1) = v14;
        ++v16;
        v17 += 2;
      }

      while (v16 < *v9);
    }
  }

  else if (v15)
  {
    v20 = 0;
    v21 = (v9 + 4);
    v22 = (v8 + 4);
    do
    {
      v23 = *v22;
      v22 += 2;
      vDSP_vabs(v23, 1, *v21, 1, a2);
      *(v21 - 1) = v14;
      ++v20;
      v21 += 2;
    }

    while (v20 < *v9);
  }

  v24 = *(this + 8);
  if (*(this + 9) == v24)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v45 = (this + 32);
    if (*(this + 55) < 0)
    {
      v45 = *v45;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, v45, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v25 = (*(*v24 + 40))(v24);
  v26 = *(this + 8);
  if (*(this + 9) == v26)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v47 = (this + 32);
    if (*(this + 55) < 0)
    {
      v47 = *v47;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v46, v47, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v27 = *(*(v25 + 56) + 72);
  result = (*(*v26 + 40))(v26);
  v30 = *(this + 11);
  v29 = *(this + 12);
  if (v30 != v29)
  {
    v31 = result[7];
    result = v30;
    v32 = v30;
    do
    {
      v33 = *v32;
      v32 += 4;
      v34 = *((*(v33 + 40))(result) + 56);
      v35 = *(v31 + 56);
      v36 = *(v31 + 40);
      v37 = *(v31 + 24);
      *(v34 + 8) = *(v31 + 8);
      *(v34 + 24) = v37;
      *(v34 + 40) = v36;
      *(v34 + 56) = v35;
      *(v34 + 72) = v27;
      v30 += 32;
      result = v32;
    }

    while (v32 != v29);
  }

  return result;
}

void sub_18F86C3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 65) < 0)
  {
    operator delete(*(v35 - 88));
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ArithmeticAbsBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.22205774e161;
  *a1 = xmmword_18F901A40;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ArithmeticAbsBox::~ArithmeticAbsBox(DSPGraph::ArithmeticAbsBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

uint64_t *DSPGraph::VectorGainBox::initialize(DSPGraph::VectorGainBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0x20 || ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&__p, "initialize");
    DSPGraph::strprintf("There must be one input and output, instead of %u and %u.", v37, (*(this + 9) - *(this + 8)) >> 5, (*(this + 12) - *(this + 11)) >> 5);
  }

  if (v3 == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "in");
    v28 = (this + 32);
    if (*(this + 55) < 0)
    {
      v28 = *v28;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v27, v28, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v4 = (*(*v2 + 40))(v2);
  v5 = *(this + 11);
  if (*(this + 12) == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "out");
    v30 = (this + 32);
    if (*(this + 55) < 0)
    {
      v30 = *v30;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, v30, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *(*(v4 + 120) + 28);
  if (v6 != *(*((*(*v5 + 40))(v5) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
    v44 = *(this + 8);
    if (*(this + 9) != v44)
    {
      v45 = (*(*v44 + 40))(v44);
      v46 = *(this + 11);
      if (*(this + 12) != v46)
      {
        v47 = *(*(v45 + 120) + 28);
        v48 = (*(*v46 + 40))(v46);
        DSPGraph::strprintf("The input and output ports must have the same number of channels, but have %u and %u.", v49, v47, *(*(v48 + 120) + 28));
      }

      std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&__p, "out");
      v57 = (this + 32);
      if (*(this + 55) < 0)
      {
        v57 = *v57;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "in");
    v55 = (this + 32);
    if (*(this + 55) < 0)
    {
      v55 = *v55;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v7 = *(this + 8);
  if (*(this + 9) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "in");
    v32 = (this + 32);
    if (*(this + 55) < 0)
    {
      v32 = *v32;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v31, v32, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v7 + 40))(v7) + 120) + 8) != 1718773105)
  {
    goto LABEL_48;
  }

  v8 = *(this + 11);
  if (*(this + 12) == v8)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "out");
    v34 = (this + 32);
    if (*(this + 55) < 0)
    {
      v34 = *v34;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, v34, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  if (*(*((*(*v8 + 40))(v8) + 120) + 8) != 1718773105)
  {
LABEL_48:
    std::string::basic_string[abi:ne200100]<0>(v59, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(v58, "initialize");
    v38 = *(this + 8);
    if (*(this + 9) != v38)
    {
      v39 = (*(*v38 + 40))(v38);
      v40 = *(this + 11);
      if (*(this + 12) != v40)
      {
        if (*(*(v39 + 120) + 8) == 1718773105)
        {
          v41 = "freq";
        }

        else
        {
          v41 = "time";
        }

        if (*(*((*(*v40 + 40))(v40) + 120) + 8) == 1718773105)
        {
          v43 = "freq";
        }

        else
        {
          v43 = "time";
        }

        DSPGraph::strprintf("The input and output must both be frequency-domain, but are '%s' and '%s'", v42, v41, v43);
      }

      std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&__p, "out");
      v53 = (this + 32);
      if (*(this + 55) < 0)
      {
        v53 = *v53;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v52, v53, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "in");
    v51 = (this + 32);
    if (*(this + 55) < 0)
    {
      v51 = *v51;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v50, v51, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v9 = *(this + 8);
  if (*(this + 9) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__p, "in");
    v36 = (this + 32);
    if (*(this + 55) < 0)
    {
      v36 = *v36;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v35, v36, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v10 = *(*((*(*v9 + 40))(v9) + 120) + 40);
  *(this + 193) = v10;
  v11 = *(this + 194);
  v60 = 1065353216;
  std::vector<float>::vector[abi:ne200100](&__p, v10);
  v13 = *(this + 102);
  v14 = *(this + 101);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
  v16 = v11 - v15;
  if (v11 <= v15)
  {
    if (v11 >= v15)
    {
      goto LABEL_29;
    }

    v20 = (v14 + 24 * v11);
    if (v13 != v20)
    {
      v21 = *(this + 102);
      do
      {
        v23 = *(v21 - 3);
        v21 -= 3;
        v22 = v23;
        if (v23)
        {
          *(v13 - 2) = v22;
          operator delete(v22);
        }

        v13 = v21;
      }

      while (v21 != v20);
    }
  }

  else
  {
    v17 = *(this + 103);
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
    {
      v63[4] = this + 808;
      v18 = 0x5555555555555556 * ((v17 - v14) >> 3);
      if (v18 <= v11)
      {
        v18 = v11;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v17 - v14) >> 3) >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v18;
      }

      std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v19);
    }

    v20 = &v13[3 * v16];
    v24 = 24 * v11 - 8 * ((v13 - v14) >> 3);
    do
    {
      *v13 = 0;
      v13[1] = 0;
      v13[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v13, __p, v62, (v62 - __p) >> 2);
      v13 += 3;
      v24 -= 24;
    }

    while (v24);
  }

  *(this + 102) = v20;
LABEL_29:
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v25 = *(this + 193);
  LODWORD(v63[0]) = 1065353216;
  return std::vector<float>::resize(this + 98, v25, v63, v12);
}

void sub_18F86CEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v37 - 65) < 0)
  {
    operator delete(*(v37 - 88));
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::VectorGainBox::process(DSPGraph::VectorGainBox *this, int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "in");
    v33 = (this + 32);
    if (*(this + 55) < 0)
    {
      v33 = *v33;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v32, v33, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "out");
    v35 = (this + 32);
    if (*(this + 55) < 0)
    {
      v35 = *v35;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v34, v35, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = *(*((*(*v7 + 40))(v7) + 56) + 80);
  v10 = *v8;
  LODWORD(__A.realp) = 1065353216;
  vDSP_vfill(&__A, *(this + 98), 1, (*(this + 99) - *(this + 98)) >> 2);
  v11 = *(this + 101);
  v12 = *(this + 102);
  while (v11 != v12)
  {
    v13 = *v11;
    v11 += 3;
    vDSP_vmin(*(this + 98), 1, v13, 1, *(this + 98), 1, (*(this + 99) - *(this + 98)) >> 2);
  }

  if (v10)
  {
    v14 = (v9 + 16);
    v15 = (v8 + 4);
    do
    {
      v16 = *v15;
      v15 += 2;
      v17 = *v14;
      __A.realp = v16;
      __A.imagp = &v16[a2];
      __C.realp = v17;
      __C.imagp = &v17[a2];
      v18 = *__A.imagp;
      vDSP_zrvmul(&__A, 1, *(this + 98), 1, &__C, 1, (*(this + 99) - *(this + 98)) >> 2);
      *__C.imagp = v18;
      *(v14 - 1) = 8 * a2;
      v14 += 2;
      --v10;
    }

    while (v10);
  }

  v19 = *(this + 8);
  if (*(this + 9) == v19)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "in");
    v37 = (this + 32);
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v36, v37, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v20 = (*(*v19 + 40))(v19);
  v21 = *(this + 11);
  if (*(this + 12) == v21)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "out");
    v39 = (this + 32);
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v38, v39, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v22 = *(v20 + 56);
  v23 = *((*(*v21 + 40))(v21) + 56);
  v24 = *(v22 + 8);
  v25 = *(v22 + 24);
  v26 = *(v22 + 40);
  *(v23 + 56) = *(v22 + 56);
  *(v23 + 40) = v26;
  *(v23 + 24) = v25;
  *(v23 + 8) = v24;
  v27 = *(this + 8);
  if (*(this + 9) == v27)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "in");
    v41 = (this + 32);
    if (*(this + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v28 = (*(*v27 + 40))(v27);
  v29 = *(this + 11);
  if (*(this + 12) == v29)
  {
    std::string::basic_string[abi:ne200100]<0>(&__A, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&__C, "out");
    v43 = (this + 32);
    if (*(this + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v42, v43, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v30 = *(*(v28 + 56) + 72);
  result = (*(*v29 + 40))(v29);
  *(*(result + 56) + 72) = v30;
  return result;
}

void sub_18F86D5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::VectorGainBox::setProperty(DSPGraph::VectorGainBox *this, int a2, int a3, unsigned int a4, unsigned int a5, _DWORD *a6)
{
  if (!(a4 | a3 | (a2 - 100)))
  {
    if (*(*(this + 1) + 762))
    {
      return 4294956447;
    }

    if (a5 == 4)
    {
      result = 0;
      *(this + 194) = *a6;
      return result;
    }

    return 4294956445;
  }

  if (a2 == 100 || a4 | a3 || (a2 - 100) > *(this + 194))
  {

    return DSPGraph::Box::setProperty(this, a2, a3, a4, a5, a6);
  }

  v9 = a5 >> 2;
  if (v9 != *(this + 193))
  {
    return 4294956445;
  }

  v10 = *(this + 101) + 24 * (a2 - 101);
  v11 = 4 * (a5 >> 2);
  v12 = *(v10 + 16);
  v13 = *v10;
  if (v9 > (v12 - *v10) >> 2)
  {
    if (v13)
    {
      *(v10 + 8) = v13;
      operator delete(v13);
      v12 = 0;
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
    }

    v14 = v12 >> 1;
    if (v12 >> 1 <= v9)
    {
      v14 = v9;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    std::vector<float>::__vallocate[abi:ne200100](v10, v15);
  }

  v16 = *(v10 + 8);
  v17 = v16 - v13;
  if (v9 <= (v16 - v13) >> 2)
  {
    if (a5 >= 4)
    {
      memmove(*v10, a6, 4 * (a5 >> 2));
    }

    result = 0;
    v18 = &v13[v11];
  }

  else
  {
    if (v16 != v13)
    {
      memmove(*v10, a6, v16 - v13);
    }

    v19 = *(v10 + 8);
    if (v17 != v11)
    {
      v20 = (a6 + v17);
      v21 = (&v13[v11] - v16);
      v19 = *(v10 + 8);
      do
      {
        v22 = *v20++;
        *v19 = v22;
        v19 += 4;
        v21 -= 4;
      }

      while (v21);
    }

    result = 0;
    v18 = v19;
  }

  *(v10 + 8) = v18;
  return result;
}

uint64_t DSPGraph::VectorGainBox::getProperty(DSPGraph::VectorGainBox *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, _DWORD *__dst)
{
  if (!(a4 | a3 | (a2 - 100)))
  {
    if (*a5 == 4)
    {
      if (!__dst)
      {
        return 4294967246;
      }

      v8 = 0;
      *__dst = *(this + 194);
      return v8;
    }

    return 561211770;
  }

  if (a2 != 100 && !(a4 | a3) && (a2 - 100) <= *(this + 194))
  {
    if (*a5 == 4 * *(this + 193))
    {
      if (__dst)
      {
        v9 = *(this + 101) + 24 * (a2 - 101);
        v10 = *v9;
        v11 = *(v9 + 8);
        if (v11 != v10)
        {
          memmove(__dst, v10, v11 - v10);
        }

        return 0;
      }

      return 4294967246;
    }

    return 561211770;
  }

  return DSPGraph::Box::getProperty(this, a2, a3, a4, a5, __dst);
}

uint64_t DSPGraph::VectorGainBox::getPropertyInfo(DSPGraph::VectorGainBox *this, int a2, int a3, int a4)
{
  if (a4 | a3 | (a2 - 100))
  {
    if (a2 == 100 || a4 | a3 || (a2 - 100) > *(this + 194))
    {
      return DSPGraph::Box::getPropertyInfo(this, a2, a3);
    }

    else
    {
      return (4 * *(this + 193)) | 0x100000000;
    }
  }

  else if (*(*(this + 1) + 762))
  {
    return 4;
  }

  else
  {
    return 0x100000004;
  }
}

double DSPGraph::VectorGainBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.90940534e262;
  *a1 = xmmword_18F901A50;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::VectorGainBox::~VectorGainBox(DSPGraph::VectorGainBox *this)
{
  *this = &unk_1F0339240;
  v3 = (this + 808);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0339240;
  v3 = (this + 808);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  DSPGraph::Box::~Box(this);
}

double DSPGraph::SumBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.49819016e248;
  *a1 = xmmword_18F901A80;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::MixBox::initialize(DSPGraph::MixBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "MixBox has no inputs");
    DSPGraph::ThrowException(1970168609, &v15, 3007, &v14, &v13);
  }

  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v14, "out");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  if (v4[2] != 1819304813 || (v4[3] & 1) == 0 || (v4[8] == 32 ? (v5 = (v4[3] & 0x20) == 0) : (v5 = 1), v5))
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "MixBox output format must be non-interleaved float");
    DSPGraph::ThrowException(1718449215, &v15, 3016, &v14, &v13);
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (v6 != v7)
  {
    v8 = *(this + 8);
    do
    {
      result = (*(*v8 + 40))(v8);
      v9 = *(result + 120);
      if (v9[2] != 1819304813 || (v9[3] & 1) == 0 || (v9[8] == 32 ? (v10 = (v9[3] & 0x20) == 0) : (v10 = 1), v10))
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v13, "MixBox input format must be non-interleaved float");
        DSPGraph::ThrowException(1718449215, &v15, 3022, &v14, &v13);
      }

      if (v9[7] != v4[7])
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v13, "MixBox channel mismatch");
        DSPGraph::ThrowException(1718449215, &v15, 3026, &v14, &v13);
      }

      v8 += 32;
      v6 += 32;
    }

    while (v8 != v7);
  }

  return result;
}

void sub_18F86DDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::MixBox::process(DSPGraph::MixBox *this, unsigned int a2)
{
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(__Step, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "out");
    v57 = (this + 32);
    if (*(this + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *(*((*(*v3 + 40))(v3) + 56) + 80);
  v7 = *v6;
  v8 = 4 * a2;
  v9 = *(this + 8);
  v10 = *(this + 9);
  if (((v10 - v9) & 0x1FFFFFFFE0) == 0)
  {
    goto LABEL_29;
  }

  v11 = 0;
  v12 = (v10 - v9) >> 5;
  v13 = a2;
  v14 = 1;
  do
  {
    if (v12 <= v11)
    {
      std::string::basic_string[abi:ne200100]<0>(__Step, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v62, "in");
      v53 = (this + 32);
      if (*(this + 55) < 0)
      {
        v53 = *v53;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v52, v53, (*(this + 9) - *(this + 8)) >> 5, v11);
    }

    v15 = *((*(*(v9 + 32 * v11) + 40))(v9 + 32 * v11) + 56);
    v61 = *(*(this + 97) + 4 * v11);
    v16 = *(v15 + 80);
    __Start = *(*(this + 100) + 4 * v11);
    v17 = *(this + 8);
    if (v11 >= (*(this + 9) - v17) >> 5)
    {
      std::string::basic_string[abi:ne200100]<0>(__Step, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v62, "in");
      v55 = (this + 32);
      if (*(this + 55) < 0)
      {
        v55 = *v55;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(this + 9) - *(this + 8)) >> 5, v11);
    }

    if ((*(*((*(*(v17 + 32 * v11) + 40))(v17 + 32 * v11) + 56) + 72) & 0x10) == 0)
    {
      v18.n128_f32[0] = v61;
      if (v61 != 0.0)
      {
        if (v14)
        {
          if (v61 == __Start)
          {
            if (v7)
            {
              v19 = (v16 + 16);
              v20 = v6 + 4;
              v21 = v7;
              do
              {
                v22 = *v19;
                v19 += 2;
                v23 = *v20;
                *(v20 - 1) = v8;
                MEMORY[0x193AE08B0](v22, 1, &v61, v23, 1, a2, v18);
                v20 += 2;
                --v21;
              }

              while (v21);
            }
          }

          else
          {
            __Step[0] = (v61 - __Start) / v13;
            if (v7)
            {
              v29 = (v16 + 16);
              v30 = (v6 + 4);
              v31 = v7;
              do
              {
                v32 = *v29;
                v29 += 2;
                v33 = *v30;
                *(v30 - 1) = v8;
                vDSP_vrampmul(v32, 1, &__Start, __Step, v33, 1, a2);
                v30 += 2;
                --v31;
              }

              while (v31);
            }
          }
        }

        else if (v61 == __Start)
        {
          if (v7)
          {
            v24 = (v16 + 16);
            v25 = v6 + 4;
            v26 = v7;
            do
            {
              v27 = *v24;
              v24 += 2;
              v28 = *v25;
              *(v25 - 1) = v8;
              MEMORY[0x193AE0890](v27, 1, &v61, v28, 1, v28, 1, a2, v18);
              v25 += 2;
              --v26;
            }

            while (v26);
          }
        }

        else
        {
          __Step[0] = (v61 - __Start) / v13;
          if (v7)
          {
            v34 = (v16 + 16);
            v35 = (v6 + 4);
            v36 = v7;
            do
            {
              v37 = *v34;
              v34 += 2;
              v38 = *v35;
              *(v35 - 1) = v8;
              vDSP_vrampmuladd(v37, 1, &__Start, __Step, v38, 1, a2);
              v35 += 2;
              --v36;
            }

            while (v36);
          }
        }

        v14 = 0;
      }
    }

    *(*(this + 100) + 4 * v11++) = v61;
    v9 = *(this + 8);
    v10 = *(this + 9);
    v12 = (v10 - v9) >> 5;
  }

  while (v11 < v12);
  if ((v14 & 1) == 0)
  {
    v41 = 0;
  }

  else
  {
LABEL_29:
    if (v7)
    {
      v39 = (v6 + 4);
      do
      {
        v40 = *v39;
        *(v39 - 1) = v8;
        bzero(v40, v8);
        v39 += 2;
        --v7;
      }

      while (v7);
      v9 = *(this + 8);
      v10 = *(this + 9);
    }

    v41 = 16;
  }

  if (v10 == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__Step, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v62, "in");
    v59 = (this + 32);
    if (*(this + 55) < 0)
    {
      v59 = *v59;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v58, v59, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  result = (*(*v9 + 40))(v9);
  v44 = *(this + 11);
  v43 = *(this + 12);
  if (v44 != v43)
  {
    v45 = result[7];
    result = v44;
    v46 = v44;
    do
    {
      v47 = *v46;
      v46 += 4;
      v48 = *((*(v47 + 40))(result) + 56);
      v49 = *(v45 + 56);
      v50 = *(v45 + 40);
      v51 = *(v45 + 24);
      *(v48 + 8) = *(v45 + 8);
      *(v48 + 24) = v51;
      *(v48 + 40) = v50;
      *(v48 + 56) = v49;
      *(v48 + 72) = v41;
      v44 += 32;
      result = v46;
    }

    while (v46 != v43);
  }

  return result;
}

void sub_18F86E390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::MixBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.1238952e219;
  *a1 = xmmword_18F901A90;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::MixBox::getParameterInfo@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    if (!a2)
    {
      v17 = 0;
      v15 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      LODWORD(v16) = 14;
      *(&v16 + 4) = --2.00000143;
      HIDWORD(v16) = 1065353216;
      result = strlcpy(&v11, "gain", 0x34uLL);
      *(&v15 + 1) = @"gain";
      LODWORD(v17) = v17 | 0xC8000000;
      v8 = v12;
      *a3 = v11;
      *(a3 + 16) = v8;
      v9 = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v9;
      v10 = v16;
      *(a3 + 64) = v15;
      *(a3 + 80) = v10;
      *(a3 + 96) = v17;
      *(a3 + 104) = 1;
      goto LABEL_6;
    }

    v5 = -10878;
  }

  else
  {
    v5 = -10866;
  }

  *a3 = v5;
  *(a3 + 104) = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86E514(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::MixBox::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 == 1)
  {
    v7[0] = v3;
    v7[1] = v4;
    v6 = 0;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v6, v7, 1uLL);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

float DSPGraph::MixBox::getParameter(DSPGraph::MixBox *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 97);
  if (a4 >= ((*(this + 98) - v4) >> 2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "MixBox::getParameter");
    DSPGraph::ThrowException(1919837985, &v8, 3055, &v7, &v6);
  }

  return *(v4 + 4 * a4);
}

void sub_18F86E604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::MixBox::setParameter(void *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v5 = this[97];
  if (a4 >= ((this[98] - v5) >> 2))
  {
    std::string::basic_string[abi:ne200100]<0>(&v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v7, "setParameter");
    std::string::basic_string[abi:ne200100]<0>(&v6, "MixBox::setParameter");
    DSPGraph::ThrowException(1919837985, &v8, 3039, &v7, &v6);
  }

  *(v5 + 4 * a4) = a5;
  if ((*(this[1] + 762) & 1) == 0)
  {
    *(this[100] + 4 * a4) = a5;
  }

  return this;
}

void sub_18F86E6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::MixBox::~MixBox(DSPGraph::MixBox *this)
{
  *this = &unk_1F0339760;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0339760;
  v2 = *(this + 100);
  if (v2)
  {
    *(this + 101) = v2;
    operator delete(v2);
  }

  v3 = *(this + 97);
  if (v3)
  {
    *(this + 98) = v3;
    operator delete(v3);
  }

  DSPGraph::Box::~Box(this);
}

double DSPGraph::ChannelJoinerBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.37152887e170;
  *a1 = xmmword_18F901AF0;
  *(a1 + 16) = 0;
  return result;
}

double DSPGraph::ChannelSplitterBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.38215236e170;
  *a1 = xmmword_18F901B00;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DSPGraph::ChannelCopierBox::initialize(DSPGraph::ChannelCopierBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v18, "in");
    v12 = (this + 32);
    if (*(this + 55) < 0)
    {
      v12 = *v12;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v11, v12, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = *((*(*v2 + 40))(v2) + 120);
  v4 = v3[2];
  if (v4 == 1819304813)
  {
    v5 = v3[3];
    if ((v5 & 1) == 0 || v3[8] != 32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v4 != 1718773105 || v3[8] != 64)
    {
LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v17, "ChannelCopierBox input format must be mono, non-interleaved float");
      DSPGraph::ThrowException(1718449215, &v19, 3531, &v18, &v17);
    }

    v5 = v3[3];
  }

  if ((v5 & 0x20) == 0 || v3[7] != 1)
  {
    goto LABEL_27;
  }

  v6 = *(this + 11);
  if (*(this + 12) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v18, "out");
    v14 = (this + 32);
    if (*(this + 55) < 0)
    {
      v14 = *v14;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v13, v14, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v6 + 40))(v6);
  v8 = *(result + 120);
  v9 = v8[2];
  if (v9 == 1819304813)
  {
    v10 = v8[3];
    if ((v10 & 1) == 0 || v8[8] != 32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v9 != 1718773105 || v8[8] != 64)
    {
      goto LABEL_28;
    }

    v10 = v8[3];
  }

  if ((v10 & 0x20) == 0)
  {
LABEL_28:
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
    v15 = this + 32;
    if (*(this + 55) < 0)
    {
      v15 = *v15;
    }

    std::string::basic_string[abi:ne200100]<0>(&v16, v15);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17, "ChannelCopierBox output format must be non-interleaved float ", &v16);
    DSPGraph::ThrowException(1718449215, &v19, 3536, &v18, &v17);
  }

  return result;
}

void sub_18F86EB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (*(v24 - 17) < 0)
  {
    operator delete(*(v24 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::ChannelCopierBox::process(DSPGraph::ChannelCopierBox *this, int a2)
{
  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "in");
    v31 = (this + 32);
    if (*(this + 55) < 0)
    {
      v31 = *v31;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v30, v31, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "out");
    v33 = (this + 32);
    if (*(this + 55) < 0)
    {
      v33 = *v33;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, v33, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  v10 = *(this + 8);
  if (*(this + 9) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "in");
    v35 = (this + 32);
    if (*(this + 55) < 0)
    {
      v35 = *v35;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v34, v35, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = *v11;
  v13 = *(*((*(*v10 + 40))(v10) + 120) + 8) == 1718773105;
  if (v12)
  {
    v14 = ((4 * a2) << v13);
    v15 = (v11 + 4);
    do
    {
      *(v15 - 1) = v14;
      v16 = *(v8 + 16);
      if (v16 != *v15)
      {
        memcpy(*v15, v16, v14);
      }

      v15 += 2;
      --v12;
    }

    while (v12);
  }

  v17 = *(this + 8);
  if (*(this + 9) == v17)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "in");
    v37 = (this + 32);
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v36, v37, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v18 = (*(*v17 + 40))(v17);
  v19 = *(this + 11);
  if (*(this + 12) == v19)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "out");
    v39 = (this + 32);
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v38, v39, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v20 = *(v18 + 56);
  v21 = *((*(*v19 + 40))(v19) + 56);
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 40);
  *(v21 + 56) = *(v20 + 56);
  *(v21 + 40) = v24;
  *(v21 + 24) = v23;
  *(v21 + 8) = v22;
  v25 = *(this + 8);
  if (*(this + 9) == v25)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "in");
    v41 = (this + 32);
    if (*(this + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v26 = (*(*v25 + 40))(v25);
  v27 = *(this + 11);
  if (*(this + 12) == v27)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v44, "out");
    v43 = (this + 32);
    if (*(this + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v42, v43, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v28 = *(*(v26 + 56) + 72);
  result = (*(*v27 + 40))(v27);
  *(*(result + 56) + 72) = v28;
  return result;
}

void sub_18F86F174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ChannelCopierBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 7.36328254e170;
  *a1 = xmmword_18F901B10;
  *(a1 + 16) = 0;
  return result;
}

void DSPGraph::ChannelCopierBox::~ChannelCopierBox(DSPGraph::ChannelCopierBox *this)
{
  DSPGraph::Box::~Box(this);

  JUMPOUT(0x193ADF220);
}

double DSPGraph::DeadEndBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 4.23042584e175;
  *a1 = xmmword_18F901B30;
  *(a1 + 16) = 0;
  return result;
}

double DSPGraph::ConstantSourceBox::initialize(DSPGraph::ConstantSourceBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  v3 = *(this + 12) - v2;
  if ((v3 & 0x1FFFFFFFE0) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 5;
    do
    {
      if (v6 <= v5)
      {
        std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(&v14, "out");
        v12 = (this + 32);
        if (*(this + 55) < 0)
        {
          v12 = *v12;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v11, v12, (*(this + 12) - *(this + 11)) >> 5, v5);
      }

      v7 = *((*(*(v2 + v4) + 40))() + 120);
      v8 = v7[2];
      if (v8 == 1819304813)
      {
        v9 = v7[3];
        if ((v9 & 1) == 0 || v7[8] != 32)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 != 1718773105 || v7[8] != 64)
        {
LABEL_17:
          std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v13, "ConstantSourceBox output format must be non-interleaved float or 'freq'");
          DSPGraph::ThrowException(1718449215, &v15, 3586, &v14, &v13);
        }

        v9 = v7[3];
      }

      if ((v9 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      ++v5;
      v2 = *(this + 11);
      v6 = (*(this + 12) - v2) >> 5;
      v4 += 32;
    }

    while (v5 < v6);
  }

  *(this + 49) = 0u;
  *(this + 100) = 0x3FF0000000000000;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *&result = 1;
  *(this + 105) = 1;
  return result;
}

void sub_18F86F484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ConstantSourceBox::process(DSPGraph::ConstantSourceBox *this, unsigned int a2)
{
  v3 = *(this + 11);
  v4 = *(this + 12) - v3;
  if ((v4 & 0x1FFFFFFFE0) != 0)
  {
    v5 = 0;
    v6 = v4 >> 5;
    v7 = 4 * a2;
    v8 = a2 + 1;
    v9 = a2 - 1;
    v10 = 8 * a2;
    do
    {
      if (v6 <= v5)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v35, "out");
        v29 = (this + 32);
        if (*(this + 55) < 0)
        {
          v29 = *v29;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v28, v29, (*(this + 12) - *(this + 11)) >> 5, v5);
      }

      v11 = *(*((*(*(v3 + 32 * v5) + 40))(v3 + 32 * v5) + 56) + 80);
      v12 = *v11;
      if (v12)
      {
        v13 = (v11 + 4);
        do
        {
          v14 = *(this + 11);
          if (v5 >= (*(this + 12) - v14) >> 5)
          {
            std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
            std::string::basic_string[abi:ne200100]<0>(v35, "out");
            v27 = (this + 32);
            if (*(this + 55) < 0)
            {
              v27 = *v27;
            }

            DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v26, v27, (*(this + 12) - *(this + 11)) >> 5, v5);
          }

          v15 = *(*((*(*(v14 + 32 * v5) + 40))(v14 + 32 * v5) + 120) + 8);
          v16 = *v13;
          v17 = (this + 772);
          if (v15 == 1718773105)
          {
            vDSP_vfill(v17, v16, 1, v8);
            vDSP_vfill(this + 194, &(*v13)[a2 + 1], 1, v9);
            v18 = v10;
          }

          else
          {
            vDSP_vfill(v17, v16, 1, a2);
            v18 = v7;
          }

          *(v13 - 1) = v18;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      v19 = *(this + 11);
      if (v5 >= (*(this + 12) - v19) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v35, "out");
        v31 = (this + 32);
        if (*(this + 55) < 0)
        {
          v31 = *v31;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v30, v31, (*(this + 12) - *(this + 11)) >> 5, v5);
      }

      *(*((*(*(v19 + 32 * v5) + 40))(v19 + 32 * v5) + 56) + 72) = 512;
      v20 = *(this + 11);
      if (v5 >= (*(this + 12) - v20) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v35, "out");
        v33 = (this + 32);
        if (*(this + 55) < 0)
        {
          v33 = *v33;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v32, v33, (*(this + 12) - *(this + 11)) >> 5, v5);
      }

      v21 = *((*(*(v20 + 32 * v5) + 40))(v20 + 32 * v5) + 56);
      v22 = *(this + 49);
      v23 = *(this + 50);
      v24 = *(this + 51);
      *(v21 + 56) = *(this + 52);
      *(v21 + 40) = v24;
      *(v21 + 24) = v23;
      *(v21 + 8) = v22;
      ++v5;
      v3 = *(this + 11);
      v6 = (*(this + 12) - v3) >> 5;
    }

    while (v5 < v6);
  }

  result = *(this + 98) + a2;
  *(this + 98) = result;
  return result;
}

void sub_18F86F8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

double DSPGraph::ConstantSourceBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 9.19367275e170;
  *a1 = xmmword_18F901B40;
  *(a1 + 16) = 0;
  return result;
}

size_t DSPGraph::ConstantSourceBox::getParameterInfo@<X0>(DSPGraph::ConstantSourceBox *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = -10866;
LABEL_7:
    *a4 = v5;
    *(a4 + 104) = 0;
    goto LABEL_8;
  }

  if (a3 > 1)
  {
    v5 = -10878;
    goto LABEL_7;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  __asm { FMOV            V0.2S, #-20.0 }

  *(&v22 + 4) = -_D0;
  if (a3)
  {
    result = strlcpy(&v17, "imag value (freq domain only)", 0x34uLL);
    v12 = @"imag value (freq domain only)";
  }

  else
  {
    result = strlcpy(&v17, "real value", 0x34uLL);
    v12 = @"real value";
  }

  *(&v21 + 1) = v12;
  LODWORD(v23) = v23 | 0xC8000000;
  v14 = v18;
  *a4 = v17;
  *(a4 + 16) = v14;
  v15 = v20;
  *(a4 + 32) = v19;
  *(a4 + 48) = v15;
  v16 = v22;
  *(a4 + 64) = v21;
  *(a4 + 80) = v16;
  *(a4 + 96) = v23;
  *(a4 + 104) = 1;
LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F86FA6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t DSPGraph::ConstantSourceBox::getParameterList@<X0>(int a1@<W1>, void *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = 0x100000000;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(a2, &v5, &v6, 2uLL);
    v4 = *MEMORY[0x1E69E9840];
  }

  return result;
}