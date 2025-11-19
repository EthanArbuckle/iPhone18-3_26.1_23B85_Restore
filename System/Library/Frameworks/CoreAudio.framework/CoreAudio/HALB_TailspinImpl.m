@interface HALB_TailspinImpl
+ (BOOL)enableTailspinSync;
+ (id)initOptionsDictionary;
+ (optional<std::string>)dumpTailspinSync:(optional<std::string> *__return_ptr)retstr forReason:;
+ (void)prepareDumpOptions:(unint64_t)a3 outDict:(id *)a4;
@end

@implementation HALB_TailspinImpl

+ (optional<std::string>)dumpTailspinSync:(optional<std::string> *__return_ptr)retstr forReason:
{
  v4 = v2;
  v5 = v1;
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = v3;
  if (Symbol<tailspin_config * (*)(void)>::operator BOOL() && (Symbol<BOOL (*)(tailspin_config *)>::initialize(&weak_tailspin_enabled_get), weak_tailspin_enabled_get) && Symbol<void (*)(tailspin_config *)>::operator BOOL() && (Symbol<BOOL (*)(int,NSDictionary *)>::initialize(), weak_tailspin_dump_output_with_options_sync))
  {
    v8 = NSTemporaryDirectory();
    v33 = *MEMORY[0x1E696A370];
    v34[0] = &unk_1F5998868;
    v28 = [MEMORY[0x1E695DF18] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v32 = 0;
    [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:v28 error:&v32];
    v26 = v32;

    v27 = [MEMORY[0x1E695DF08] date];
    v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v10 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v10 stringFromDate:v27];
    v13 = [v11 stringWithFormat:@"AudioHAL_%@.tailspin", v12];

    v14 = [v8 stringByAppendingPathComponent:v13];
    v15 = v14;
    v16 = open([v14 UTF8String], 514, 438);
    if (v16 == -1)
    {
      NSLog(&cfstr_FailedToCreate.isa);
    }

    v31 = [v5 initOptionsDictionary];
    [v5 prepareDumpOptions:v4 outDict:&v31];
    v17 = v31;
    v18 = get_TSPDumpOptions_ReasonString();
    [v17 setValue:v7 forKey:v18];

    NSLog(&cfstr_DroppingTailsp.isa, v14);
    Symbol<BOOL (*)(int,NSDictionary *)>::initialize();
    if (weak_tailspin_dump_output_with_options_sync)
    {
      v19 = (weak_tailspin_dump_output_with_options_sync)(v16, v31);
    }

    else
    {
      v19 = 0;
    }

    close(v16);
    if (v19)
    {
      v22 = v14;
      v23 = [v14 UTF8String];
      v24 = strlen(v23);
      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v25 = v24;
      if (v24 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v30) = v24;
      if (v24)
      {
        memmove(&__dst, v23, v24);
      }

      *(&__dst + v25) = 0;
      *&retstr->var0.var0 = __dst;
      *(&retstr->var0.var1.var0.var1 + 2) = v30;
      retstr[1].var0.var0 = 1;
    }

    else
    {
      NSLog(&cfstr_FailedToDropTa.isa);
      retstr->var0.var0 = 0;
      retstr[1].var0.var0 = 0;
    }
  }

  else
  {
    retstr->var0.var0 = 0;
    retstr[1].var0.var0 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

+ (BOOL)enableTailspinSync
{
  v14 = *MEMORY[0x1E69E9840];
  Symbol<void (*)(tailspin_config *,BOOL)>::initialize();
  if (weak_tailspin_enabled_set && Symbol<void (*)(tailspin_config *)>::operator BOOL() && Symbol<tailspin_config * (*)(void)>::operator BOOL())
  {
    Symbol<tailspin_config * (*)(void)>::initialize();
    if (weak_tailspin_config_create_with_current_state)
    {
      v2 = weak_tailspin_config_create_with_current_state();
    }

    else
    {
      v2 = 0;
    }

    v8 = v2;
    Symbol<void (*)(tailspin_config *,BOOL)>::initialize();
    if (weak_tailspin_enabled_set)
    {
      (weak_tailspin_enabled_set)(v2, 1);
    }

    *buf = 1000000;
    Symbol<void (*)(tailspin_config *,unsigned long long)>::operator()<tailspin_config *&,unsigned long long>(weak_tailspin_oncore_sampling_period_set, &v8, buf);
    *buf = 0;
    Symbol<void (*)(tailspin_config *,unsigned long long)>::operator()<tailspin_config *&,unsigned long long>(weak_tailspin_full_sampling_period_set, &v8, buf);
    v9 = &weak_tailspin_buffer_size_set;
    if (atomic_load_explicit(&qword_1ECDAA9B8, memory_order_acquire) != -1)
    {
      v10 = buf;
      *buf = &v9;
      std::__call_once(&qword_1ECDAA9B8, &v10, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,unsigned long)>::initialize(void)::{lambda(void)#1} &&>>);
    }

    if (weak_tailspin_buffer_size_set)
    {
      weak_tailspin_buffer_size_set(v8, 1024);
    }

    buf[0] = 1;
    LOBYTE(v10) = 64;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    v9 = &weak_tailspin_sampling_option_set;
    if (atomic_load_explicit(&qword_1ECDAA9E8, memory_order_acquire) != -1)
    {
      v10 = buf;
      *buf = &v9;
      std::__call_once(&qword_1ECDAA9E8, &v10, std::__call_once_proxy[abi:ne200100]<std::tuple<Symbol<void (*)(tailspin_config *,int,BOOL)>::initialize(void)::{lambda(void)#1} &&>>);
    }

    if (weak_tailspin_sampling_option_set)
    {
      weak_tailspin_sampling_option_set(v8, 2, 1);
    }

    Symbol<void (*)(tailspin_config *)>::operator()<tailspin_config *&>(weak_tailspin_kdbg_filter_clear, &v8);
    buf[0] = 1;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 1;
    LOBYTE(v10) = 3;
    LOBYTE(v9) = 0;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 1;
    LOBYTE(v10) = -87;
    LOBYTE(v9) = 0;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 3;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 4;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 5;
    LOBYTE(v10) = 7;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 5;
    LOBYTE(v10) = 36;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 5;
    LOBYTE(v10) = 42;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 6;
    LOBYTE(v10) = 11;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 6;
    LOBYTE(v10) = 21;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 6;
    LOBYTE(v10) = 42;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 7;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 8;
    LOBYTE(v10) = 16;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 9;
    LOBYTE(v10) = 2;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 10;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 12;
    LOBYTE(v10) = 1;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 31;
    LOBYTE(v10) = 5;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 31;
    LOBYTE(v10) = 7;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 31;
    LOBYTE(v10) = 8;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 32;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 33;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 36;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 37;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 39;
    LOBYTE(v10) = -16;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 41;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 43;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 46;
    LOBYTE(v10) = 2;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = 49;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 50;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = 0x80;
    LOBYTE(v10) = 1;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -126;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -126;
    LOBYTE(v10) = 5;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -126;
    LOBYTE(v10) = 6;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -126;
    LOBYTE(v10) = 40;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -123;
    LOBYTE(v10) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,BOOL>(&v8, buf, &v10);
    buf[0] = -122;
    LOBYTE(v10) = -113;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    buf[0] = -121;
    LOBYTE(v10) = 0;
    LOBYTE(v9) = 1;
    Symbol<void (*)(tailspin_config *,unsigned char,unsigned char,BOOL)>::operator()<tailspin_config *&,unsigned char,unsigned char,BOOL>(&v8, buf, &v10, &v9);
    Symbol<BOOL (*)(tailspin_config *)>::initialize(&weak_tailspin_config_apply_sync);
    if (weak_tailspin_config_apply_sync)
    {
      v6 = weak_tailspin_config_apply_sync(v8);
      v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v7)
        {
          *buf = 136315394;
          *&buf[4] = "HALB_Tailspin.mm";
          v12 = 1024;
          v13 = 297;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_TailspinImpl::enableTailspin: Enabled tailspin.", buf, 0x12u);
        }

        v3 = 1;
        goto LABEL_27;
      }

      if (!v7)
      {
LABEL_26:
        v3 = 0;
LABEL_27:
        Symbol<void (*)(tailspin_config *)>::operator()<tailspin_config *&>(&weak_tailspin_config_free, &v8);
        goto LABEL_7;
      }
    }

    else if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 136315394;
    *&buf[4] = "HALB_Tailspin.mm";
    v12 = 1024;
    v13 = 300;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_TailspinImpl::enableTailspin: Failed to enable tailspin.", buf, 0x12u);
    goto LABEL_26;
  }

  v3 = 1;
LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)prepareDumpOptions:(unint64_t)a3 outDict:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = get_TSPDumpOptions_MaxTimestamp();
  if (v6)
  {
    v7 = get_TSPDumpOptions_MinTimestamp();

    if (v7)
    {
      v8 = dword_1ECDAB1BC;
      if (!dword_1ECDAB1BC)
      {
        mach_timebase_info(&+[HALB_TailspinImpl prepareDumpOptions:outDict:]::s_timebase_info);
        v8 = dword_1ECDAB1BC;
      }

      v9 = 5000000000 * v8;
      v10 = +[HALB_TailspinImpl prepareDumpOptions:outDict:]::s_timebase_info;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = "HALB_Tailspin.mm";
        v25 = 1024;
        v26 = 191;
        v27 = 2048;
        v28 = a3;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_TailspinImpl::dumpTailspin: Current mach time is %llu", &v23, 0x1Cu);
      }

      endMachTimeOfLastDump = a3;
      v11 = v9 / v10;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v12 = a3 - v11;
        v24 = "HALB_Tailspin.mm";
        v25 = 1024;
        v26 = 195;
        v27 = 2048;
        v28 = 5000;
        v29 = 2048;
        v30 = v12;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_TailspinImpl::dumpTailspin: Looking back %lld ms to time %llu", &v23, 0x26u);
      }

      else
      {
        v12 = a3 - v11;
      }

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v12];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = "HALB_Tailspin.mm";
        v25 = 1024;
        v26 = 198;
        v27 = 2048;
        v28 = 0;
        v29 = 2048;
        v30 = a3;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_TailspinImpl::dumpTailspin: Looking forward %lld ms to time %llu", &v23, 0x26u);
      }

      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:endMachTimeOfLastDump];
      v15 = *a4;
      v16 = get_TSPDumpOptions_MaxTimestamp();
      [v15 setValue:v14 forKey:v16];

      v17 = *a4;
      v18 = get_TSPDumpOptions_MinTimestamp();
      [v17 setValue:v13 forKey:v18];

      v19 = *a4;
      v20 = [MEMORY[0x1E696AD98] numberWithInt:0];
      v21 = get_TSPDumpOptions_MinTraceBufferDurationSec();
      [v19 setValue:v20 forKey:v21];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

+ (id)initOptionsDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = get_TSPDumpOptions_MinTimestamp();
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = get_TSPDumpOptions_MaxTimestamp();
  if (!v3)
  {
LABEL_7:

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v4 = get_TSPDumpOptions_ReasonString();
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = get_TSPDumpOptions_MinTraceBufferDurationSec();

  if (v5)
  {
    v6 = MEMORY[0x1E695DF98];
    v7 = MEMORY[0x1E695DF18];
    v8 = get_TSPDumpOptions_MinTimestamp();
    v16[0] = v8;
    v9 = get_TSPDumpOptions_MaxTimestamp();
    v16[1] = v9;
    v10 = get_TSPDumpOptions_MinTraceBufferDurationSec();
    v16[2] = v10;
    v11 = get_TSPDumpOptions_ReasonString();
    v16[3] = v11;
    v12 = [MEMORY[0x1E695DEC0] arrayWithObjects:v16 count:4];
    v13 = [v7 sharedKeySetForKeys:v12];
    v5 = [v6 dictionaryWithSharedKeySet:v13];
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

@end