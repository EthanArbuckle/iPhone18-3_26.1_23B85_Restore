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

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void emitEndTracepoint(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = mach_continuous_time();
  v12 = os_signpost_id_generate(gLogger_1);
  if (kdebug_is_enabled())
  {
    v13 = a4 | (a2 << 32);
    [v9 string_id];
    kdebug_trace();
    v14 = gLogger_1;
    v15 = v14;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v16 = gLogger_1;
    }

    else
    {
      if (os_signpost_enabled(v14))
      {
        v18 = 134218752;
        v19 = v10;
        v20 = 2048;
        v21 = v13;
        v22 = 2048;
        v23 = [v9 string_id];
        v24 = 1024;
        v25 = a5;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v15, OS_SIGNPOST_EVENT, v12, "_ANEF_MODEL_EVAL", "request:%p packedQOSandQID:%llu model.string_id:%llu ok:%u", &v18, 0x26u);
      }

      v16 = gLogger_1;
      if (os_signpost_enabled(v16))
      {
        v18 = 134349056;
        v19 = v11;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v12, "_ANEF_MODEL_EVAL", "%{public, signpost.description:begin_time}llu ", &v18, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1AD24A618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _ANEProgramIOSurfacesMapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1AD24A6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _ANEProgramForEvaluation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void sub_1AD24B5E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t ANEGetValidateNetworkSupportedVersion()
{
  v0 = +[_ANEVirtualClient sharedConnection];

  if (v0)
  {
    v1 = +[_ANEVirtualClient sharedConnection];
    v2 = [v1 getValidateNetworkVersion];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v3 = +[_ANELog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ANEGetValidateNetworkSupportedVersion_cold_1();
    }

    v2 = 0;
  }

  else
  {
    v2 = ANECGetValidateNetworkSupportedVersion();
  }

  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    ANEGetValidateNetworkSupportedVersion_cold_2();
  }

  return v2;
}

CFMutableDictionaryRef ANEValidateNetworkCreateGenerateFailedGlobalIdentifier(void *a1)
{
  v1 = a1;
  v2 = ANEGetValidateNetworkSupportedVersion();
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  [(__CFDictionary *)Mutable setValue:v4 forKey:@"resultsVersion"];

  v5 = objc_opt_new();
  [v5 setValue:MEMORY[0x1E695E110] forKey:@"support"];
  [v5 setValue:v1 forKey:@"errorMsg"];
  [(__CFDictionary *)Mutable setValue:v5 forKey:@"-1"];

  return Mutable;
}

uint64_t ANEValidateMILNetworkOnHost(uint64_t a1, CFDictionaryRef theDict)
{
  *buffer = 0;
  Value = CFDictionaryGetValue(theDict, @"MIL");
  v53.length = CFDataGetLength(Value);
  v53.location = 0;
  CFDataGetBytes(Value, v53, buffer);
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  v7 = MEMORY[0x1E696AEC0];
  v8 = +[_ANEStrings vm_tmpBaseDirectory];
  v9 = [v7 stringWithFormat:@"%@%@", v8, v6];

  v10 = MEMORY[0x1E696AEC0];
  v11 = +[_ANEStrings defaultMILFileName];
  v12 = [v10 stringWithFormat:@"%@/%@", v9, v11];

  v13 = MEMORY[0x1E696AEC0];
  v14 = +[_ANEStrings defaultWeightFileName];
  v15 = [v13 stringWithFormat:@"%@/%@", v9, v14];

  v51 = 0;
  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 fileExistsAtPath:v9 isDirectory:&v51];
  if (v17)
  {
    goto LABEL_4;
  }

  v50 = 0;
  v18 = [v16 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v50];
  v19 = v50;
  v20 = v19;
  if (v18)
  {

LABEL_4:
    v40 = v6;
    MIL::Text::SerializerOptions::Make(&v49, v17);
    v21 = v49;
    std::string::basic_string[abi:ne200100]<0>(__p, [v12 cStringUsingEncoding:4]);
    (*(*v21 + 24))(v21, __p);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = v49;
    std::string::basic_string[abi:ne200100]<0>(v45, [v15 cStringUsingEncoding:4]);
    (*(*v22 + 128))(v22, v45);
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    (*(*v49 + 112))(v49, 4);
    (*(*v49 + 88))(v49, 1);
    v23 = v49;
    std::string::basic_string[abi:ne200100]<0>(v43, [v9 cStringUsingEncoding:4]);
    (*(*v23 + 56))(v23, v43);
    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    v24 = +[_ANEVirtualClient sharedConnection];
    v25 = [v24 negotiatedDataInterfaceVersion];

    if (v25 > 0x20400)
    {
      MIL::Text::Serialize();
      if ((v42 & 0x80u) == 0)
      {
        v27 = v41;
      }

      else
      {
        v27 = v41[0];
      }

      if ((v42 & 0x80u) == 0)
      {
        v28 = v42;
      }

      else
      {
        v28 = v41[1];
      }

      v26 = [MEMORY[0x1E695DEF0] dataWithBytes:v27 length:v28];
      if (v42 < 0)
      {
        operator delete(v41[0]);
      }
    }

    else
    {
      MIL::Text::SerializeToFile();
      v26 = 0;
    }

    v29 = CFDictionaryGetValue(theDict, @"function");
    v30 = CFDictionaryGetValue(theDict, @"parameters");
    v31 = CFDictionaryGetValue(v30, @"scratchPadPath");
    v32 = +[_ANEVirtualClient sharedConnection];
    v33 = [v32 validateNetworkCreate:a1 uuid:v40 function:v29 directoryPath:v9 scratchPadPath:v31 milTextData:v26];

    v34 = [MEMORY[0x1E696AC08] defaultManager];
    v35 = [v34 fileExistsAtPath:v9];

    if (v35)
    {
      v36 = [MEMORY[0x1E696AC08] defaultManager];
      [v36 removeItemAtPath:v9 error:0];
    }

    v37 = v49;
    v49 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v6 = v40;
    goto LABEL_28;
  }

  v38 = +[_ANELog framework];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    ANEValidateMILNetworkOnHost_cold_1();
  }

  v33 = 0;
LABEL_28:

  return v33;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t ANEValidateMLIRNetworkOnHost(uint64_t a1, uint64_t a2)
{
  v4 = +[_ANEVirtualClient sharedConnection];
  v5 = [v4 validateNetworkCreateMLIR:a1 validation_params:a2];

  return v5;
}

void *ANEValidateNetworkCreate(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = +[_ANELog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [a2 debugDescription];
    objc_claimAutoreleasedReturnValue();
    ANEValidateNetworkCreate_cold_1();
  }

  v5 = +[_ANEStrings vm_forceValidationOnGuestBootArg];
  v6 = [_ANEDeviceInfo isBoolBootArgSetTrue:v5];

  if (v6)
  {
    v7 = +[_ANELog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEStrings vm_forceValidationOnGuestBootArg];
      objc_claimAutoreleasedReturnValue();
      ANEValidateNetworkCreate_cold_2();
    }
  }

  v8 = +[_ANEVirtualClient sharedConnection];
  v9 = v8 == 0;

  if (v9 || v6)
  {
    if (ANECGetValidateNetworkSupportedVersion() != a1)
    {
      v10 = +[_ANELog framework];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ANEValidateNetworkCreate_cold_5();
      }
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = +[_ANEDeviceInfo aneSubType];
    v13 = +[_ANEDeviceInfo aneSubTypeVariant];
    v14 = +[_ANEDeviceInfo aneSubTypeProductVariant];
    v15 = [v11 stringWithFormat:@"%@%@%@", v12, v13, v14];

    Value = CFDictionaryGetValue(a2, @"architecture");
    v17 = Value;
    if (Value && CFStringCompare(Value, v15, 0))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
      CFDictionaryReplaceValue(MutableCopy, @"architecture", v15);
      v19 = MutableCopy;
      v20 = +[_ANELog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v28 = [(__CFDictionary *)v19 debugDescription];
        *buf = 136315906;
        v30 = "ANEValidateNetworkCreate";
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        v34 = v15;
        v35 = 2112;
        v36 = v28;
        _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "%s: updating architecture from %@ to %@, inValidationParams: %@", buf, 0x2Au);
      }
    }

    else
    {
      v19 = 0;
    }

    CFRelease(@"architecture");
    FailedGlobalIdentifier = ANECValidateNetworkCreate();
    if (v19)
    {
      CFRelease(v19);
    }

    if (!FailedGlobalIdentifier)
    {
      FailedGlobalIdentifier = ANEValidateNetworkCreateGenerateFailedGlobalIdentifier(@"Unable to get validationResult");
    }
  }

  else
  {
    if (CFDictionaryContainsKey(a2, @"MIL"))
    {
      v21 = ANEValidateMILNetworkOnHost(a1, a2);
    }

    else if (CFDictionaryContainsKey(a2, @"MLIR"))
    {
      v21 = ANEValidateMLIRNetworkOnHost(a1, a2);
    }

    else
    {
      v23 = +[_ANELog framework];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        ANEValidateNetworkCreate_cold_3();
      }

      v21 = ANEValidateNetworkCreateGenerateFailedGlobalIdentifier(@"No valid model key found");
    }

    FailedGlobalIdentifier = v21;
    if (!v21)
    {
      v24 = +[_ANELog framework];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        ANEValidateNetworkCreate_cold_4();
      }

      FailedGlobalIdentifier = ANEValidateNetworkCreateGenerateFailedGlobalIdentifier(@"Unable to get validationResult (host might be too old)");
    }
  }

  v25 = +[_ANELog framework];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [FailedGlobalIdentifier debugDescription];
    objc_claimAutoreleasedReturnValue();
    ANEValidateNetworkCreate_cold_6();
  }

  v26 = *MEMORY[0x1E69E9840];
  return FailedGlobalIdentifier;
}

void *ANEValidateNetworkCreateVMHost(uint64_t a1, const void *a2, void *a3, const void *a4, const __CFData *a5)
{
  v9 = a3;
  v10 = MIL::Opsets::Common::CreateMILContext(&v38, v9);
  MIL::ParserOptions::Make(&v37, v10);
  v11 = v37;
  std::string::basic_string[abi:ne200100]<0>(__p, -[MIL::Opsets::Common cStringUsingEncoding:](v9, "cStringUsingEncoding:", 4));
  (*(*v11 + 32))(v11, __p, 1);
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v37 + 64))(v37, 1);
  (*(*v37 + 96))(v37, 4);
  if (a5)
  {
    BytePtr = CFDataGetBytePtr(a5);
    Length = CFDataGetLength(a5);
    v14 = Length;
    if (Length >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (Length >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = Length;
    if (Length)
    {
      memmove(&__dst, BytePtr, Length);
    }

    __dst.__r_.__value_.__s.__data_[v14] = 0;
    v31 = v38;
    if (v38)
    {
      operator new();
    }

    v32 = 0;
    v38 = 0;
    v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = __dst;
    }

    MIL::Text::ParseProgram();
    v16 = v33;
    v33 = 0;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    if (v15 < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (v38)
    {
      operator new();
    }

    v38 = 0;
    MIL::Text::ParseProgramFromFile();
    v16 = __dst.__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = 0;
  }

  if (v16)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = MEMORY[0x1E696AEC0];
    v19 = +[_ANEDeviceInfo aneSubType];
    v20 = +[_ANEDeviceInfo aneSubTypeVariant];
    v21 = +[_ANEDeviceInfo aneSubTypeProductVariant];
    v22 = [v18 stringWithFormat:@"%@%@%@", v19, v20, v21];

    CFDictionarySetValue(Mutable, @"architecture", v22);
    CFDictionarySetValue(Mutable, @"function", a2);
    __dst.__r_.__value_.__r.__words[0] = v16;
    v23 = [MEMORY[0x1E695DEF0] dataWithBytes:&__dst length:8];
    CFDictionarySetValue(Mutable, @"MIL", v23);
    v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v24, @"scratchPadPath", a4);
    CFDictionarySetValue(Mutable, @"parameters", v24);
    v25 = ANEValidateNetworkCreate(a1, Mutable);
    CFRelease(Mutable);
    CFRelease(v24);

    (*(*v16 + 8))(v16);
  }

  else
  {
    v26 = +[_ANELog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      ANEValidateNetworkCreateVMHost_cold_1();
    }

    v25 = 0;
  }

  v27 = v37;
  v37 = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = v38;
  v38 = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return v25;
}

void sub_1AD24CEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  v40 = *(v38 - 104);
  *(v38 - 104) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(v38 - 96);
  *(v38 - 96) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E79BA0B8, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B26F3360);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void OUTLINED_FUNCTION_2_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void sub_1AD24F0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  _Block_object_dispose(&STACK[0x1150], 8);

  _Block_object_dispose(&STACK[0x1170], 8);
  _Block_object_dispose(&STACK[0x1190], 8);

  _Unwind_Resume(a1);
}

void ANEProgramRequestSharedEventsStruct::~ANEProgramRequestSharedEventsStruct(ANEProgramRequestSharedEventsStruct *this)
{
  for (i = 4072; i != 2024; i -= 32)
  {
  }

  do
  {

    i -= 32;
  }

  while (i != -24);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x12u);
}

void sub_1AD2531C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1AD2584E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1AD258A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_debug_impl(a1, a2, a3, a4, v4, 0xCu);
}

float *OUTLINED_FUNCTION_11@<X0>(float *result@<X0>, _DWORD *a2@<X3>, int a3@<W8>, float a4@<S0>)
{
  *result = a4;
  *a2 = a3;
  return result;
}

void sub_1AD261844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);

  _Unwind_Resume(a1);
}

void sub_1AD263F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__47(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_1AD2663E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v17 - 208), 8);

  _Unwind_Resume(a1);
}

void sub_1AD268078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19)
{
  _Block_object_dispose(&STACK[0x280], 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__91(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__120(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1AD26B290(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1AD26C8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__129(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void sub_1AD272B10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1B26F3360](v1, 0x1000C4077774924);
  }

  _Unwind_Resume(exception_object);
}

void aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer::_ANEModelParamsSerializerDeserializer(aneserializers::anemodelparams_v1::_ANEModelParamsSerializerDeserializer *this, _IOSurfaceWrapper *a2)
{
  *this = a2;
  _IOSurfaceWrapper::alloc(a2);
  operator new();
}

void sub_1AD274AC4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

IOSurfaceRef _IOSurfaceWrapper::alloc(_IOSurfaceWrapper *this)
{
  v1 = this;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _IOSurfaceWrapper::setIntValue(Mutable, *MEMORY[0x1E696CE60], 0);
  _IOSurfaceWrapper::setInt64Value(Mutable, *MEMORY[0x1E696CE30], v1);
  v3 = IOSurfaceCreate(Mutable);
  CFRelease(Mutable);
  return v3;
}

void std::__shared_ptr_emplace<_IOSurfaceWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F224D640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B26F3360);
}

void _IOSurfaceWrapper::~_IOSurfaceWrapper(_IOSurfaceWrapper *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*this == 1)
    {
      IOSurfaceUnlock(v2, 0, 0);
      *this = 0;
      v2 = *(this + 1);
    }

    CFRelease(v2);
    *(this + 1) = 0;
  }
}

void _IOSurfaceWrapper::setIntValue(_IOSurfaceWrapper *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void _IOSurfaceWrapper::setInt64Value(_IOSurfaceWrapper *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::_ANEModelInstanceParametersSerializerDeserializer(aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer *this, const char *a2, int a3, int a4)
{
  *this = a4;
  *(this + 1) = a3 + 1;
  _IOSurfaceWrapper::alloc((a3 + 1 + 12 * a4));
  operator new();
}

void sub_1AD274DCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::_ANEProcedureDataSerializerDeserializer(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  *a1 = a4;
  a1[1] = a3 + 1;
  _IOSurfaceWrapper::alloc((a3 + 113));
  operator new();
}

void sub_1AD274EA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer::_ANEWeightSerializerDeserializer(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, int a11, void *a12)
{
  v16 = *MEMORY[0x1E69E9840];
  a12;
  *a1 = a3 + 1;
  a1[1] = a5 + 1;
  a1[2] = a9;
  a1[3] = a11 + 1;
  a1[5] = a7;
  _IOSurfaceWrapper::alloc((a5 + 1 + a3 + 1 + a9 + a11 + 1));
  operator new();
}

void sub_1AD2751B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *(v10 + 56);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v10 + 40);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

uint64_t aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer::getSHACode(aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer *this)
{
  BaseAddress = *(*(this + 4) + 8);
  if (BaseAddress)
  {
    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
  }

  if (*(this + 2))
  {
    return BaseAddress + (*(this + 1) + *this);
  }

  else
  {
    return 0;
  }
}

uint64_t aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer::getsandboxExtension(aneserializers::anemodelnewinstanceparams_v1::_ANEWeightSerializerDeserializer *this)
{
  BaseAddress = *(*(this + 4) + 8);
  if (BaseAddress)
  {
    BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
  }

  if (*(this + 3))
  {
    return BaseAddress + (*(this + 1) + *this + *(this + 2));
  }

  else
  {
    return 0;
  }
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer::~_ANEModelInstanceParametersSerializerDeserializer(aneserializers::anemodelnewinstanceparams_v1::_ANEModelInstanceParametersSerializerDeserializer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = this + 40;
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::~_ANEProcedureDataSerializerDeserializer(v5);
        MEMORY[0x1B26F3360]();
        *&v4[8 * v3] = 0;
        v2 = *(this + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer::~_ANEProcedureDataSerializerDeserializer(aneserializers::anemodelnewinstanceparams_v1::_ANEProcedureDataSerializerDeserializer *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = 0;
    v4 = this + 40;
    do
    {
      v5 = *&v4[8 * v3];
      if (v5)
      {
        v6 = *(v5 + 56);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = *(v5 + 40);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        MEMORY[0x1B26F3360](v5, 0x1020C4076FB8CD1);
        *&v4[8 * v3] = 0;
        v2 = *(this + 8);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  *(a2 + 22) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 2048;
  *(a2 + 14) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2048;
  *(a4 + 14) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  return result;
}

void OUTLINED_FUNCTION_11_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_13(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_17(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 14) = v4;
  *(a2 + 18) = v3;
  *(a2 + 20) = a3;
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result, float a2)
{
  *v2 = a2;
  *(v2 + 4) = result;
  return result;
}

id OUTLINED_FUNCTION_25(id a1)
{

  return a1;
}

id OUTLINED_FUNCTION_30(id a1)
{

  return a1;
}

id _ANEDaemonInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2258A20];
  commonInitialization(v0);

  return v0;
}

void commonInitialization(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DFD8];
  v2 = a1;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:11];
  v4 = [v1 setWithArray:{v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];

  [v2 setClasses:v4 forSelector:sel_compileModel_sandboxExtension_options_qos_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_compileModel_sandboxExtension_options_qos_withReply_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v4 forSelector:sel_loadModel_sandboxExtension_options_qos_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_loadModel_sandboxExtension_options_qos_withReply_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v4 forSelector:sel_loadModelNewInstance_options_modelInstParams_qos_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_loadModelNewInstance_options_modelInstParams_qos_withReply_ argumentIndex:1 ofReply:1];
  [v2 setClasses:v4 forSelector:sel_unloadModel_options_qos_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_reportTelemetryToPPS_playload_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_reportTelemetryToPPS_playload_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_compiledModelExistsFor_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_purgeCompiledModel_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_compiledModelExistsMatchingHash_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_purgeCompiledModelMatchingHash_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_prepareChainingWithModel_options_chainingReq_qos_withReply_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_prepareChainingWithModel_options_chainingReq_qos_withReply_ argumentIndex:2 ofReply:0];

  v5 = *MEMORY[0x1E69E9840];
}

id _ANEDaemonInterfacePrivate()
{
  v5[12] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F225C158];
  commonInitialization(v0);
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v5[6] = objc_opt_class();
  v5[7] = objc_opt_class();
  v5[8] = objc_opt_class();
  v5[9] = objc_opt_class();
  v5[10] = objc_opt_class();
  v5[11] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:12];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
  [v0 setClasses:v2 forSelector:sel_beginRealTimeTaskWithReply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_endRealTimeTaskWithReply_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v2 forSelector:sel_echo_withReply_ argumentIndex:0 ofReply:0];

  v3 = *MEMORY[0x1E69E9840];

  return v0;
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

uint64_t fDeviceCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = *a4;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: statusType=%d : pRefCon=%p : device=%p : programInstance=%p", "fDeviceCallback", *a4, a1, a2, a3];
  if ((v9 & 0xFFFFFFFE) == 0x16)
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1AD246000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }

  else if (v9 == 21 || v9 == 18)
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      fDeviceCallback(v10, v11);
    }
  }

  else
  {
    v11 = +[_ANELog common];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      fDeviceCallback(v10, v11);
    }
  }

  v14 = *a4;
  if (*a4 == 21)
  {
    [_ANEDataReporter addValue:1 forScalarKey:@"ANEReset"];
    v14 = *a4;
  }

  if (v14 <= 0x15 && ((1 << v14) & 0x260000) != 0)
  {
    v15 = a4[1];
    [_ANEDataReporter reportErrorMsg:"reportErrorMsg:status:" status:?];
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void sub_1AD2781D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD2783F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD278A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1AD279464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AD279B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27A0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27A6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27AC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27B7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27BA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27C06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AD27D778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1AD27F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_17_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

id OUTLINED_FUNCTION_18(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void ANEGetValidateNetworkSupportedVersion_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEGetValidateNetworkSupportedVersion_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_1AD246000, v0, OS_LOG_TYPE_DEBUG, "%s: validateNetworkSupportedVersion=%llu", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void ANEValidateMILNetworkOnHost_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEValidateNetworkCreate_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 136315650;
  *(v1 + 4) = "CFDictionaryRef ANEValidateNetworkCreate(uint64_t, CFDictionaryRef _Nonnull)";
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  *(v1 + 22) = 2112;
  *(v1 + 24) = v3;
  _os_log_debug_impl(&dword_1AD246000, v5, OS_LOG_TYPE_DEBUG, "%s: api_version=%llu validation_params=%@", v4, 0x20u);
}

void ANEValidateNetworkCreate_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 136315394;
  OUTLINED_FUNCTION_5(v2, v1, "CFDictionaryRef ANEValidateNetworkCreate(uint64_t, CFDictionaryRef _Nonnull)");
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%s: boot-arg %@ set, performing validation on guest", v4, 0x16u);
}

void ANEValidateNetworkCreate_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEValidateNetworkCreate_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEValidateNetworkCreate_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_6();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1AD246000, v2, OS_LOG_TYPE_ERROR, "%s: device_api_version=%llu mismatch with api_version=%llu", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void ANEValidateNetworkCreate_cold_6()
{
  OUTLINED_FUNCTION_0_0();
  *v1 = 136315394;
  OUTLINED_FUNCTION_5(v2, v1, "CFDictionaryRef ANEValidateNetworkCreate(uint64_t, CFDictionaryRef _Nonnull)");
  _os_log_debug_impl(&dword_1AD246000, v3, OS_LOG_TYPE_DEBUG, "%s: outValidationParams=%@", v4, 0x16u);
}

void ANEValidateNetworkCreateVMHost_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void fDeviceCallback(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AD246000, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AD246000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}