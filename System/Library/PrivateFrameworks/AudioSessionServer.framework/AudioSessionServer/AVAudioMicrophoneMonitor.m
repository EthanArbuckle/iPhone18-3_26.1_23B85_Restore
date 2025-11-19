@interface AVAudioMicrophoneMonitor
+ (id)sharedInstance;
- (AVAudioMicrophoneMonitor)init;
- (BOOL)setState:(BOOL)a3 clientType:(int64_t)a4 clientID:(unint64_t)a5 clientDescription:(const char *)a6;
- (id).cxx_construct;
@end

@implementation AVAudioMicrophoneMonitor

+ (id)sharedInstance
{
  {
    +[AVAudioMicrophoneMonitor sharedInstance]::gShared = objc_alloc_init(AVAudioMicrophoneMonitor);
  }

  v2 = +[AVAudioMicrophoneMonitor sharedInstance]::gShared;

  return v2;
}

- (AVAudioMicrophoneMonitor)init
{
  if (MediaSafetyNetLibraryCore(0))
  {
    v4.receiver = self;
    v4.super_class = AVAudioMicrophoneMonitor;
    return [(AVAudioMicrophoneMonitor *)&v4 init];
  }

  else
  {

    return 0;
  }
}

- (BOOL)setState:(BOOL)a3 clientType:(int64_t)a4 clientID:(unint64_t)a5 clientDescription:(const char *)a6
{
  v9 = a3;
  if (MediaSafetyNetLibraryCore(0))
  {
    std::mutex::lock((self + 32));
    if (!v9)
    {
      __dst = a4;
      v24 = a5;
      v15 = std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::find<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(self + 8, &__dst);
      if ((self + 16) == v15 || (std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__remove_node_pointer(self + 1, v15), operator delete(v15), *(self + 3)))
      {
        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      goto LABEL_27;
    }

    __dst = a4;
    v24 = a5;
    std::__tree<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>::__emplace_unique_key_args<std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>,std::pair<AVAudioMicrophoneMonitorClientType,unsigned long long>>(self + 8, &__dst);
    v12 = v11;
    if (a6)
    {
      v13 = strlen(a6);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_30;
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = v13;
      if (v13)
      {
        memcpy(&__dst, a6, v13);
      }

      *(&__dst + v14) = 0;
      if (SHIBYTE(v25) >= 0)
      {
        v16 = HIBYTE(v25);
      }

      else
      {
        v16 = v24;
      }

      if ((HIBYTE(v25) & 0x80) != 0)
      {
        operator delete(__dst);
      }

      if (!v16)
      {
        a6 = 0;
      }
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v17 = getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr;
    v31 = getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr;
    if (!getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr)
    {
      __dst = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = ___ZL45getMSNMonitorSetLastMicrophoneClientSymbolLocv_block_invoke;
      v26 = &unk_278CEAD30;
      v27 = &v28;
      v18 = MediaSafetyNetLibrary();
      v19 = dlsym(v18, "MSNMonitorSetLastMicrophoneClient");
      *(v27[1] + 24) = v19;
      getMSNMonitorSetLastMicrophoneClientSymbolLoc(void)::ptr = *(v27[1] + 24);
      v17 = v29[3];
    }

    _Block_object_dispose(&v28, 8);
    if (v17)
    {
      v17(a6);
      if (v12)
      {
        v12 = 1;
      }

LABEL_27:
      std::mutex::unlock((self + 32));
      return v12 & 1;
    }

    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ATMSNMonitorSetLastMicrophoneClient(const char *)"];
    [v21 handleFailureInFunction:v22 file:@"MSNSoftLink.h" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
LABEL_30:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = 0;
  return v12 & 1;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 3) = 0;
  *(self + 4) = 850045863;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 11) = 0;
  return self;
}

@end