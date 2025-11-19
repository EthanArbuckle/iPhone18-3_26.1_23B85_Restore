@interface AUPasscodeDecoder
+ (AudioComponentDescription)getAUDesc;
+ (void)registerAU;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3;
- (id).cxx_construct;
- (id)internalRenderBlock;
- (void)deallocateRenderResources;
- (void)handleDecodedData:(void *)a3 ofLength:(int)a4;
- (void)setRenderingOffline:(BOOL)a3;
- (void)startAudioLogCapture;
- (void)stopAudioLogCapture;
@end

@implementation AUPasscodeDecoder

+ (AudioComponentDescription)getAUDesc
{
  *&retstr->componentType = xmmword_2415B1790;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (void)registerAU
{
  if (+[AUPasscodeDecoder registerAU]::gOnce != -1)
  {
    +[AUPasscodeDecoder registerAU];
  }
}

uint64_t __31__AUPasscodeDecoder_registerAU__block_invoke()
{
  v0 = MEMORY[0x277CEFD18];
  v1 = objc_opt_class();
  +[AUPasscodeDecoder getAUDesc];
  return [v0 registerSubclass:v1 asComponentDescription:v3 name:@"AUPasscodeDecoder" version:1];
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = [(AUPasscodeDecoder *)self codecConfig];

  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = [(AUPasscodeDecoder *)self codecConfig];
  v8 = [v7 numChannels];

  if (v8 > 1)
  {
    goto LABEL_40;
  }

  v9 = [*(self + 79) format];
  v10 = [*(self + 74) format];
  if (![v9 isEqual:v10])
  {
    goto LABEL_7;
  }

  v11 = [*(self + 79) format];
  v12 = [v11 isInterleaved];
  if (v12)
  {
    v3 = [*(self + 79) format];
    if ([v3 channelCount] > 1)
    {

LABEL_7:
      goto LABEL_14;
    }
  }

  v13 = [*(self + 79) format];
  v14 = [v13 isStandard];

  if (v12)
  {
  }

  if ((v14 & 1) == 0)
  {
LABEL_14:
    if (a3)
    {
LABEL_15:
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10875 userInfo:0];
      v20 = v19;
      LOBYTE(v20) = 0;
      *a3 = v19;
      goto LABEL_41;
    }

LABEL_40:
    LOBYTE(v20) = 0;
    goto LABEL_41;
  }

  v15 = [*(self + 74) format];
  v16 = [v15 channelCount];
  v17 = [(AUPasscodeDecoder *)self codecConfig];
  v18 = [v17 numChannels];

  if (v18 > v16)
  {
    if (a3)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

  BufferedAudioBus::allocateRenderResources((self + 592), [(AUAudioUnit *)self maximumFramesToRender]);
  *(self + 196) = [*(self + 112) numChannels];
  v21 = [*(self + 80) objectAtIndexedSubscript:0];
  v22 = [v21 format];
  *(self + 197) = [v22 channelCount];

  v23 = [*(self + 80) objectAtIndexedSubscript:0];
  v24 = [v23 format];
  [v24 sampleRate];
  v26 = v25;
  v52 = 0;
  v53.__r_.__value_.__r.__words[0] = &v52;
  v27 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(self + 760, &v52);
  v28 = (v27 + 5);
  HIDWORD(v60.__r_.__value_.__r.__words[1]) = 0;
  LODWORD(v60.__r_.__value_.__r.__words[1]) = (v26 + 0.5);
  v60.__r_.__value_.__r.__words[0] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
  if (&v60 != (v27 + 5))
  {
    v29 = *v28;
    if (*v28)
    {
      *&v53.__r_.__value_.__l.__data_ = 0uLL;
      v29(2, v28, &v53, 0, 0);
      (v60.__r_.__value_.__l.__data_)(2, &v60, v28, 0, 0);
      (v53.__r_.__value_.__l.__data_)(2, &v53, &v60, 0, 0);
      std::any::reset[abi:ne200100](&v53);
    }

    else
    {
      *(v27 + 12) = (v26 + 0.5);
      v27[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      v60.__r_.__value_.__r.__words[0] = 0;
    }
  }

  std::any::reset[abi:ne200100](&v60);

  v52 = 1;
  v53.__r_.__value_.__r.__words[0] = &v52;
  v30 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(self + 760, &v52);
  v31 = (v30 + 5);
  v32 = *(self + 196);
  v60.__r_.__value_.__l.__size_ = v32;
  v60.__r_.__value_.__r.__words[0] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
  if (&v60 != (v30 + 5))
  {
    v33 = *v31;
    if (*v31)
    {
      *&v53.__r_.__value_.__l.__data_ = 0uLL;
      v33(2, v31, &v53, 0, 0);
      (v60.__r_.__value_.__l.__data_)(2, &v60, v31, 0, 0);
      (v53.__r_.__value_.__l.__data_)(2, &v53, &v60, 0, 0);
      std::any::reset[abi:ne200100](&v53);
    }

    else
    {
      *(v30 + 12) = v32;
      v30[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      v60.__r_.__value_.__r.__words[0] = 0;
    }
  }

  std::any::reset[abi:ne200100](&v60);
  v34 = [*(self + 80) objectAtIndexedSubscript:0];
  v35 = [v34 format];
  v36 = [v35 isInterleaved];
  v52 = 2;
  v53.__r_.__value_.__r.__words[0] = &v52;
  v37 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(self + 760, &v52);
  v38 = (v37 + 5);
  v60.__r_.__value_.__l.__size_ = v36;
  v60.__r_.__value_.__r.__words[0] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
  if (&v60 != (v37 + 5))
  {
    v39 = *v38;
    if (*v38)
    {
      *&v53.__r_.__value_.__l.__data_ = 0uLL;
      v39(2, v38, &v53, 0, 0);
      (v60.__r_.__value_.__l.__data_)(2, &v60, v38, 0, 0);
      (v53.__r_.__value_.__l.__data_)(2, &v53, &v60, 0, 0);
      std::any::reset[abi:ne200100](&v53);
    }

    else
    {
      *(v37 + 48) = v36;
      v37[5] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      v60.__r_.__value_.__r.__words[0] = 0;
    }
  }

  std::any::reset[abi:ne200100](&v60);

  v40 = [(AUPasscodeDecoder *)self codecConfig];
  [APCCodecFactory createDecoderWithConfig:v40 apcConfig:self + 760 error:a3];
  v41 = v53.__r_.__value_.__r.__words[0];
  v53.__r_.__value_.__r.__words[0] = 0;
  v42 = *(self + 73);
  *(self + 73) = v41;
  if (v42)
  {
    (*(*v42 + 8))(v42);
    v43 = v53.__r_.__value_.__r.__words[0];
    v53.__r_.__value_.__r.__words[0] = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }
  }

  if (!*(self + 73))
  {
    if (a3 && [*a3 code] == -7)
    {
      *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10868 userInfo:0];
    }

    [(AUAudioUnit *)self setRenderResourcesAllocated:0];
    goto LABEL_40;
  }

  v51.receiver = self;
  v51.super_class = AUPasscodeDecoder;
  LODWORD(v20) = [(AUAudioUnit *)&v51 allocateRenderResourcesAndReturnError:a3];
  if (v20)
  {
    std::string::__init(&v60, "AUPasscodeDecoder messenger", 0x1BuLL);
    v45 = caulk::concurrent::messenger::shared_logging_priority(v44);
    v46 = v45;
    if (*(v45 + 52))
    {
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v53, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        v54 = 1;
        v49 = *(v46 + 48);
        v55 = *(v46 + 32);
        v56 = v49;
        v57 = 1;
        v58 = 0;
        v59 = 0;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v53 = v60;
        v54 = 1;
        v47 = *(v45 + 48);
        v55 = *(v45 + 32);
        v56 = v47;
        v57 = 1;
        v58 = 0;
        v59 = 0;
      }

      v52 = 1;
      std::make_unique[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes const&,0>();
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

LABEL_41:
  v48 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)setRenderingOffline:(BOOL)a3
{
  *(self + 800) = a3;
  v3.receiver = self;
  v3.super_class = AUPasscodeDecoder;
  [(AUAudioUnit *)&v3 setRenderingOffline:?];
}

- (void)deallocateRenderResources
{
  v3 = self + 592;
  v4 = *(self + 76);
  *(self + 76) = 0;

  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  v5.receiver = self;
  v5.super_class = AUPasscodeDecoder;
  [(AUAudioUnit *)&v5 deallocateRenderResources];
}

- (id)internalRenderBlock
{
  v3 = self + 584;
  v4 = self + 592;
  v5 = self + 800;
  v6 = self + 808;
  v7 = self + 656;
  v8 = self + 680;
  v9 = self + 576;
  v10 = [(AUPasscodeDecoder *)self dataHandler];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__AUPasscodeDecoder_internalRenderBlock__block_invoke;
  v13[3] = &unk_278CE1DC8;
  v13[6] = v6;
  v13[7] = v3;
  v13[8] = v7;
  v13[9] = v5;
  v13[10] = v8;
  v13[11] = v9;
  v13[4] = v10;
  v13[5] = v4;
  v13[12] = self + 904;
  v13[13] = self + 816;
  v11 = MEMORY[0x245CEABB0](v13);

  return v11;
}

uint64_t __40__AUPasscodeDecoder_internalRenderBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v29 = 0;
  v13 = BufferedInputBus::pullInput(*(a1 + 40), &v29, a3, a4, 0, v12);
  if (!v13)
  {
    v14 = *(*(a1 + 40) + 32);
    if (!*(a6 + 2))
    {
      v15 = *a6;
      if (v15)
      {
        v16 = (v14 + 16);
        v17 = a6 + 4;
        do
        {
          v18 = *v16;
          v16 += 2;
          *v17 = v18;
          v17 += 2;
          --v15;
        }

        while (v15);
      }
    }

    v19 = *(v14 + 16);
    v28 = 256;
    v20 = **(a1 + 48);
    if (v20)
    {
      (*(*v20 + 16))(v20, v19);
    }

    (*(***(a1 + 56) + 16))(**(a1 + 56), v19, a4, **(a1 + 64), &v28);
    v21 = v28;
    if (v28)
    {
      if (**(a1 + 72))
      {
        v22 = [MEMORY[0x277CBEA90] dataWithBytes:**(a1 + 64) length:v28];
        v23 = *(a1 + 32);
        if (v23)
        {
          (*(v23 + 16))(v23, v22);
        }
      }

      else
      {
        v24 = 0;
        do
        {
          v25 = *(*(a1 + 80) + v24);
          v24 += 8;
        }

        while ((*(v25 + 60) & 1) != 0);
        memcpy(*(v25 + 32), **(a1 + 64), v28);
        *(v25 + 56) = v21;
        *(v25 + 60) = 1;
        caulk::concurrent::messenger::enqueue(**(a1 + 88), v25);
      }

      if (**(a1 + 96))
      {
        v26 = *(a1 + 104);
        std::mutex::lock(v26);
        [**(a1 + 96) setCompletionTime:*(**(a1 + 64) + v28)];
        std::mutex::unlock(v26);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (void)handleDecodedData:(void *)a3 ofLength:(int)a4
{
  [*(self + 99) appendBytes:a3 length:a4];
  v5 = [*(self + 99) length];
  if (v5 >= [*(self + 112) payloadLengthBytes])
  {
    v6 = [MEMORY[0x277CBEA90] dataWithData:*(self + 99)];
    [*(self + 99) setLength:0];
    v7 = [(AUPasscodeDecoder *)self dataHandler];

    if (v7)
    {
      v8 = [(AUPasscodeDecoder *)self dispatchQueue];
      v9 = v8;
      if (!v8)
      {
        v9 = MEMORY[0x277D85CD0];
        v10 = MEMORY[0x277D85CD0];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __48__AUPasscodeDecoder_handleDecodedData_ofLength___block_invoke;
      v11[3] = &unk_278CE1DF0;
      v11[4] = self;
      v11[5] = v6;
      dispatch_async(v9, v11);
      if (!v8)
      {
      }
    }
  }
}

void __48__AUPasscodeDecoder_handleDecodedData_ofLength___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataHandler];
  v2[2](v2, *(a1 + 40));
}

- (void)startAudioLogCapture
{
  v11 = 0;
  v3 = [*(self + 80) objectAtIndexedSubscript:0];
  v4 = [v3 format];
  [v4 sampleRate];
  v8 = v5;
  v9 = xmmword_2415B17A0;
  v10 = 0x100000004;
  LODWORD(v11) = 32;

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    [AUPasscodeDecoder startAudioLogCapture];
  }

  v6 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction;
  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v6 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(69906, "/tmp/APCCaptures", "apc_capture", 1667327590, 0, &v8);
  }

  v7 = *(self + 101);
  *(self + 101) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

- (void)stopAudioLogCapture
{
  v3 = *(self + 101);
  *(self + 101) = 0;
  if (v3)
  {
    (*(*v3 + 8))();
  }
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 73) = 0;
  *(self + 74) = 0;
  *(self + 150) = 0;
  *(self + 77) = 0;
  *(self + 78) = 0;
  *(self + 76) = 0;
  *(self + 83) = 0;
  *(self + 84) = 0;
  *(self + 82) = 0;
  *(self + 680) = 0u;
  *(self + 696) = 0u;
  *(self + 712) = 0u;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 97) = 0;
  *(self + 96) = 0;
  *(self + 95) = self + 768;
  *(self + 101) = 0;
  *(self + 102) = 850045863;
  *(self + 824) = 0u;
  *(self + 840) = 0u;
  *(self + 856) = 0u;
  *(self + 109) = 0;
  return self;
}

@end