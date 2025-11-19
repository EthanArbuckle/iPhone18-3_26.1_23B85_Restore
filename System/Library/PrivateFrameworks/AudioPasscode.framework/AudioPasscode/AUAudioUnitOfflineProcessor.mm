@interface AUAudioUnitOfflineProcessor
- (AUAudioUnitOfflineProcessor)initWithAudioUnit:(id)a3 inputFileURL:(id)a4 outputFileURL:(id)a5 ioSampleRate:(int64_t)a6;
- (BOOL)run;
- (_DWORD)initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:;
- (id).cxx_construct;
@end

@implementation AUAudioUnitOfflineProcessor

- (AUAudioUnitOfflineProcessor)initWithAudioUnit:(id)a3 inputFileURL:(id)a4 outputFileURL:(id)a5 ioSampleRate:(int64_t)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v51.receiver = self;
  v51.super_class = AUAudioUnitOfflineProcessor;
  v14 = [(AUAudioUnitOfflineProcessor *)&v51 init];
  if (!v14)
  {
    goto LABEL_20;
  }

  if (!v11)
  {
    goto LABEL_6;
  }

  v15 = [v11 renderResourcesAllocated] ^ 1;
  if (!v12)
  {
    LOBYTE(v15) = 0;
  }

  if ((v15 & 1) == 0)
  {
LABEL_6:
    v16 = APCLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "Bad input argument to AUAudioUnitOfflineProcessor", buf, 2u);
    }

LABEL_18:

LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v17 = [v11 inputBusses];
  if ([v17 count] != 1)
  {

LABEL_16:
    v16 = APCLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_24158E000, v16, OS_LOG_TYPE_ERROR, "AUAudioUnitOfflineProcessor only supports single bus IO audio units", buf, 2u);
    }

    goto LABEL_18;
  }

  v18 = [v11 outputBusses];
  v19 = [v18 count] == 1;

  if (!v19)
  {
    goto LABEL_16;
  }

  objc_storeStrong(v14 + 3, a3);
  outExtAudioFile = 0;
  v20 = ExtAudioFileOpenURL(v12, &outExtAudioFile);
  if (v20)
  {
    v21 = APCLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "open input file";
      *&buf[12] = 1024;
      *&buf[14] = v20;
      _os_log_impl(&dword_24158E000, v21, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", buf, 0x12u);
    }

    goto LABEL_19;
  }

  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](v14 + 1, outExtAudioFile);
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(*(v14 + 1), 0x2366726Du, &ioPropertyDataSize, v14 + 144);
  if (Property)
  {
    v25 = APCLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "query input file length";
      *&buf[12] = 1024;
      *&buf[14] = Property;
      _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", buf, 0x12u);
    }

LABEL_34:

    goto LABEL_19;
  }

  v55 = 0;
  memset(buf, 0, sizeof(buf));
  ioPropertyDataSize = 40;
  v26 = ExtAudioFileGetProperty(*(v14 + 1), 0x66666D74u, &ioPropertyDataSize, buf);
  if (v26)
  {
    v25 = APCLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(inPropertyData.mSampleRate) = 136315394;
      *(&inPropertyData.mSampleRate + 4) = "query input file format";
      LOWORD(inPropertyData.mFormatFlags) = 1024;
      *(&inPropertyData.mFormatFlags + 2) = v26;
      _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", &inPropertyData, 0x12u);
    }

    goto LABEL_34;
  }

  v27 = *buf;
  if (a6 >= 0)
  {
    v27 = a6;
  }

  inPropertyData.mSampleRate = v27;
  *&inPropertyData.mFormatID = xmmword_2415B1840;
  *&inPropertyData.mBytesPerFrame = xmmword_2415B1850;
  v28 = ExtAudioFileSetProperty(*(v14 + 1), 0x63666D74u, 0x28u, &inPropertyData);
  if (v28)
  {
    v25 = APCLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      *&v52[4] = "set input file client data format";
      *&v52[12] = 1024;
      *&v52[14] = v28;
      _os_log_impl(&dword_24158E000, v25, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", v52, 0x12u);
    }

    goto LABEL_34;
  }

  v29 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&inPropertyData];
  v30 = [v11 inputBusses];
  v31 = [v30 objectAtIndexedSubscript:0];
  v48 = 0;
  [v31 setFormat:v29 error:&v48];
  v32 = v48;

  if (v32)
  {
    v33 = APCLogObject();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v52 = 138412290;
      *&v52[4] = v32;
      _os_log_impl(&dword_24158E000, v33, OS_LOG_TYPE_ERROR, "Error setting the AU input bus format: %@", v52, 0xCu);
    }

LABEL_43:
    v37 = v14;
LABEL_44:

    goto LABEL_19;
  }

  v34 = [v11 outputBusses];
  v35 = [v34 objectAtIndexedSubscript:0];
  v47 = 0;
  [v35 setFormat:v29 error:&v47];
  v32 = v47;

  if (v32)
  {
    v36 = APCLogObject();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *v52 = 138412290;
      *&v52[4] = v32;
      _os_log_impl(&dword_24158E000, v36, OS_LOG_TYPE_ERROR, "Error setting the AU output bus format: %@", v52, 0xCu);
    }

    goto LABEL_43;
  }

  if (v13)
  {
    v38 = ExtAudioFileCreateWithURL(v13, 0x57415645u, &inPropertyData, 0, 1u, &outExtAudioFile);
    if (v38)
    {
      v37 = APCLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v52 = 136315394;
        *&v52[4] = "create output file";
        *&v52[12] = 1024;
        *&v52[14] = v38;
        _os_log_impl(&dword_24158E000, v37, OS_LOG_TYPE_ERROR, "Error creating offline processor: failed to %s (error %d)", v52, 0x12u);
      }

      v32 = v14;
      goto LABEL_44;
    }

    std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](v14 + 2, outExtAudioFile);
  }

  objc_initWeak(&location, v14);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke;
  v44[3] = &unk_278CE1ED8;
  objc_copyWeak(&v45, &location);
  v39 = MEMORY[0x245CEABB0](v44);
  v40 = *(v14 + 17);
  *(v14 + 17) = v39;

  [AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]::$_0::operator()<CA::StreamDescription,std::vector<float>>(&inPropertyData, v14 + 11, v52);
  v41 = *(v14 + 5);
  if (v41)
  {
    *(v14 + 6) = v41;
    operator delete(v41);
    *(v14 + 5) = 0;
    *(v14 + 6) = 0;
    *(v14 + 7) = 0;
  }

  *(v14 + 40) = *v52;
  *(v14 + 7) = *&v52[16];
  [AUAudioUnitOfflineProcessor initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:]::$_0::operator()<CA::StreamDescription,std::vector<float>>(&inPropertyData, v14 + 14, v52);
  v42 = *(v14 + 8);
  if (v42)
  {
    *(v14 + 9) = v42;
    operator delete(v42);
    *(v14 + 8) = 0;
    *(v14 + 9) = 0;
    *(v14 + 10) = 0;
  }

  *(v14 + 4) = *v52;
  *(v14 + 10) = *&v52[16];
  v43 = APCLogObject();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *v52 = 0;
    _os_log_impl(&dword_24158E000, v43, OS_LOG_TYPE_INFO, "Finished offline processor init", v52, 2u);
  }

  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, UInt32 a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  ioNumberFrames = a4;
  v9 = ExtAudioFileRead(*(WeakRetained + 1), &ioNumberFrames, *(WeakRetained + 5));
  if (v9)
  {
    v10 = APCLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v9;
      _os_log_impl(&dword_24158E000, v10, OS_LOG_TYPE_ERROR, "Read of source file error: %d", buf, 8u);
    }
  }

  else
  {
    if (ioNumberFrames != a4)
    {
      v11 = APCLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_24158E000, v11, OS_LOG_TYPE_ERROR, "Read of source file returned an unexpected number of frames", buf, 2u);
      }
    }

    *a6 = 1;
    *(a6 + 8) = 1;
    v12 = *(WeakRetained + 5);
    v13 = *v12;
    if (v13 != (*(WeakRetained + 6) - v12 - 8) >> 4)
    {
      __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke_cold_1();
    }

    if (!v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "accessing a CA::BufferList with an out-of-range index");
      exception->__vftable = (MEMORY[0x277D828E8] + 16);
      __cxa_throw(exception, off_278CE1CD0, MEMORY[0x277D825F8]);
    }

    *(a6 + 16) = *(v12 + 2);
    *(a6 + 12) = v12[3];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (_DWORD)initWithAudioUnit:inputFileURL:outputFileURL:ioSampleRate:
{
  if ((*(a1 + 12) & 0x20) != 0)
  {
    v6 = *(a1 + 28);
  }

  else
  {
    v6 = 1;
  }

  LOBYTE(v17) = 0;
  std::vector<char>::vector[abi:ne200100](&v18, (16 * v6) | 8);
  *v18 = v6;
  if ((*(a1 + 12) & 0x20) != 0)
  {
    v8 = (*(a1 + 28) << 11);
  }

  else
  {
    v8 = 2048;
  }

  v17 = 0;
  result = std::vector<float>::assign(a2, v8, &v17, v7);
  v10 = v18;
  v11 = v19;
  v12 = *v18;
  if (v12 != (v19 - v18 - 8) >> 4)
  {
    __89__AUAudioUnitOfflineProcessor_initWithAudioUnit_inputFileURL_outputFileURL_ioSampleRate___block_invoke_cold_1();
  }

  if (v12)
  {
    v13 = 0;
    v14 = *a2;
    v15 = v12 << 11;
    v16 = v18 + 4;
    do
    {
      *v16 = v14 + 4 * (v13 & 0xFFFFF800);
      *(v16 - 1) = 0x200000000001;
      v13 += 2048;
      v16 += 2;
    }

    while (v15 != v13);
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v20;
  return result;
}

- (BOOL)run
{
  v32 = *MEMORY[0x277D85DE8];
  audioUnit = self->_audioUnit;
  v25 = 0;
  v4 = [(AUAudioUnit *)audioUnit allocateRenderResourcesAndReturnError:&v25];
  v5 = v25;
  if (v5 != 0 || !v4)
  {
    v19 = APCLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_24158E000, v19, OS_LOG_TYPE_ERROR, "Allocate resources failed on AU: %@", buf, 0xCu);
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v6 = [(AUAudioUnit *)self->_audioUnit renderBlock];
  renderBlock = self->_renderBlock;
  self->_renderBlock = v6;

  v30 = 0u;
  v31 = 0u;
  *buf = 0u;
  v29 = 0u;
  ExtAudioFileSeek(self->_srcFile.__ptr_, 0);
  outFrameOffset = 0;
  assetLength = self->_assetLength;
  if (assetLength >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = assetLength - v9;
      v11 = v10 >= 0x800 ? 2048 : v10;
      begin = self->_destBufferList.mStorage.__begin_;
      pullInputBlock = self->_pullInputBlock;
      (*(self->_renderBlock + 2))();
      ptr = self->_destFile.__ptr_;
      if (ptr)
      {
        v15 = ExtAudioFileWrite(ptr, v11, self->_destBufferList.mStorage.__begin_);
        v16 = v15;
        if ((v15 + 66560) >= 2 && v15 != 0)
        {
          break;
        }
      }

      *buf = *buf + v11;
      ExtAudioFileTell(self->_srcFile.__ptr_, &outFrameOffset);
      v9 = outFrameOffset;
      assetLength = self->_assetLength;
      if (outFrameOffset >= assetLength)
      {
        goto LABEL_14;
      }
    }

    v22 = APCLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v26 = 67109120;
      v27 = v16;
      _os_log_impl(&dword_24158E000, v22, OS_LOG_TYPE_ERROR, "AUAudioUnitOfflineProcessor write to output file failed (error %d)", v26, 8u);
    }

    goto LABEL_18;
  }

LABEL_14:
  std::unique_ptr<OpaqueExtAudioFile,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueExtAudioFile*,&(ExtAudioFileDispose)>>::reset[abi:ne200100](&self->_destFile.__ptr_, 0);
  v18 = 1;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id).cxx_construct
{
  self->_srcFile.__ptr_ = 0;
  self->_destFile.__ptr_ = 0;
  std::vector<char>::vector[abi:ne200100](&self->_srcBufferList.mStorage.__begin_, 8);
  *self->_srcBufferList.mStorage.__begin_ = 0;
  std::vector<char>::vector[abi:ne200100](&self->_destBufferList.mStorage.__begin_, 8);
  *self->_destBufferList.mStorage.__begin_ = 0;
  *&self->_srcAudioStorage.__begin_ = 0u;
  *&self->_srcAudioStorage.__cap_ = 0u;
  *&self->_destAudioStorage.__end_ = 0u;
  return self;
}

@end