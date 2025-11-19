@interface AUPasscodeEncoder
+ (AudioComponentDescription)getAUDesc;
+ (void)registerAU;
- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3;
- (id).cxx_construct;
- (id)internalRenderBlock;
- (void)dealloc;
- (void)deallocateRenderResources;
- (void)handleEOFReachedForAsset;
- (void)reset;
@end

@implementation AUPasscodeEncoder

+ (AudioComponentDescription)getAUDesc
{
  *&retstr->componentType = xmmword_2415B17F0;
  retstr->componentFlagsMask = 0;
  return result;
}

+ (void)registerAU
{
  if (+[AUPasscodeEncoder registerAU]::gOnce != -1)
  {
    +[AUPasscodeEncoder registerAU];
  }
}

uint64_t __31__AUPasscodeEncoder_registerAU__block_invoke()
{
  v0 = MEMORY[0x277CEFD18];
  v1 = objc_opt_class();
  +[AUPasscodeEncoder getAUDesc];
  return [v0 registerSubclass:v1 asComponentDescription:v3 name:@"AUPasscodeEncoder" version:1];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v2 dealloc];
}

- (void)handleEOFReachedForAsset
{
  if (self->_assetEndedAndSilencedHandler)
  {
    v3 = [(AUPasscodeEncoder *)self dispatchQueue];
    if (v3)
    {
      [(AUPasscodeEncoder *)self dispatchQueue];
    }

    else
    {
      dispatch_get_global_queue(0, 0);
    }
    v4 = ;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__AUPasscodeEncoder_handleEOFReachedForAsset__block_invoke;
    block[3] = &unk_278CE1D58;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (BOOL)allocateRenderResourcesAndReturnError:(id *)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = [(AUPasscodeEncoder *)self codecConfig];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [(AUPasscodeEncoder *)self payload];
  if (!v6)
  {

    goto LABEL_12;
  }

  v7 = [(AUPasscodeEncoder *)self assetLength];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [(AUPasscodeEncoder *)self codecConfig];
  v9 = [v8 numChannels];

  if (v9 > 1)
  {
    goto LABEL_12;
  }

  v10 = [(AUAudioUnitBus *)self->_inputBus.bus format];
  v11 = [v10 isInterleaved];
  if (v11)
  {
    v66 = [(AUAudioUnitBus *)self->_inputBus.bus format];
    if ([v66 channelCount] > 1)
    {
      goto LABEL_15;
    }
  }

  v12 = [(AUAudioUnitBus *)self->_inputBus.bus format];
  if (![v12 isStandard])
  {

    if (!v11)
    {
LABEL_16:

      goto LABEL_24;
    }

LABEL_15:

    goto LABEL_16;
  }

  v13 = [(AUAudioUnitBus *)self->_outputBus format];
  v14 = [v13 isInterleaved];
  v15 = v14;
  if (v14)
  {
    v63 = [(AUAudioUnitBus *)self->_outputBus format];
    if ([v63 channelCount] > 1)
    {
      v16 = 1;
LABEL_19:

      goto LABEL_21;
    }
  }

  obj = v13;
  v19 = [(AUAudioUnitBus *)self->_outputBus format];
  v16 = [v19 isStandard] ^ 1;

  if (v15)
  {
    v13 = obj;
    goto LABEL_19;
  }

LABEL_21:
  if (v11)
  {
  }

  if ((v16 & 1) == 0)
  {
    v21 = [(AUAudioUnitBus *)self->_outputBus format];
    v22 = [v21 channelCount];
    v23 = [(AUPasscodeEncoder *)self codecConfig];
    v24 = [v23 numChannels];

    if (v24 <= v22)
    {
      v72.receiver = self;
      v72.super_class = AUPasscodeEncoder;
      LODWORD(v17) = [(AUAudioUnit *)&v72 allocateRenderResourcesAndReturnError:a3];
      if (!v17)
      {
        goto LABEL_13;
      }

      BufferedAudioBus::allocateRenderResources(&self->_inputBus, [(AUAudioUnit *)self maximumFramesToRender]);
      v25 = [(AUPasscodeEncoder *)self inputBusses];
      v26 = [v25 objectAtIndexedSubscript:0];
      v27 = [v26 format];
      [v27 sampleRate];
      v29 = v28;
      v71 = 0;
      v76 = &v71;
      v30 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &v71);
      v31 = (v30 + 5);
      HIDWORD(v75) = 0;
      LODWORD(v75) = (v29 + 0.5);
      v74 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      if (&v74 != (v30 + 5))
      {
        v32 = *v31;
        if (*v31)
        {
          v76 = 0;
          v77 = 0;
          v32(2, v31, &v76, 0, 0);
          v74(2, &v74, v31, 0, 0);
          (v76)(2, &v76, &v74, 0, 0);
          std::any::reset[abi:ne200100](&v76);
        }

        else
        {
          *(v30 + 12) = (v29 + 0.5);
          v30[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
          v74 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v74);

      v33 = [(AUPasscodeEncoder *)self inputBusses];
      v34 = [v33 objectAtIndexedSubscript:0];
      v35 = [v34 format];
      v36 = [v35 channelCount];
      v71 = 1;
      v76 = &v71;
      v37 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &v71);
      v38 = (v37 + 5);
      v75 = v36;
      v74 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
      if (&v74 != (v37 + 5))
      {
        v39 = *v38;
        if (*v38)
        {
          v76 = 0;
          v77 = 0;
          v39(2, v38, &v76, 0, 0);
          v74(2, &v74, v38, 0, 0);
          (v76)(2, &v76, &v74, 0, 0);
          std::any::reset[abi:ne200100](&v76);
        }

        else
        {
          *(v37 + 12) = v36;
          v37[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
          v74 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v74);

      v40 = [(AUPasscodeEncoder *)self inputBusses];
      v41 = [v40 objectAtIndexedSubscript:0];
      v42 = [v41 format];
      v43 = [v42 isInterleaved];
      v71 = 2;
      v76 = &v71;
      v44 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &v71);
      v45 = (v44 + 5);
      v75 = v43;
      v74 = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
      if (&v74 != (v44 + 5))
      {
        v46 = *v45;
        if (*v45)
        {
          v76 = 0;
          v77 = 0;
          v46(2, v45, &v76, 0, 0);
          v74(2, &v74, v45, 0, 0);
          (v76)(2, &v76, &v74, 0, 0);
          std::any::reset[abi:ne200100](&v76);
        }

        else
        {
          *(v44 + 48) = v43;
          v44[5] = std::__any_imp::_SmallHandler<BOOL>::__handle[abi:ne200100];
          v74 = 0;
        }
      }

      std::any::reset[abi:ne200100](&v74);

      passcodeEmbedInfo = self->_passcodeEmbedInfo;
      if (passcodeEmbedInfo)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        obja = [(NSMutableDictionary *)passcodeEmbedInfo allKeys];
        v48 = [obja countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v48)
        {
          v49 = *v68;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v68 != v49)
              {
                objc_enumerationMutation(obja);
              }

              v51 = *(*(&v67 + 1) + 8 * i);
              v52 = [(NSMutableDictionary *)self->_passcodeEmbedInfo objectForKeyedSubscript:v51];
              v53 = [v52 unsignedLongValue];
              v71 = [v51 integerValue];
              v76 = &v71;
              v54 = std::__tree<std::__value_type<unsigned int,std::any>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::any>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::any>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_apcEncoderConfig, &v71);
              v55 = (v54 + 5);
              v75 = v53;
              v74 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
              if (&v74 != (v54 + 5))
              {
                v56 = *v55;
                if (*v55)
                {
                  v76 = 0;
                  v77 = 0;
                  v56(2, v55, &v76, 0, 0);
                  v74(2, &v74, v55, 0, 0);
                  (v76)(2, &v76, &v74, 0, 0);
                  std::any::reset[abi:ne200100](&v76);
                }

                else
                {
                  *(v54 + 12) = v53;
                  v54[5] = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
                  v74 = 0;
                }
              }

              std::any::reset[abi:ne200100](&v74);
            }

            v48 = [obja countByEnumeratingWithState:&v67 objects:v73 count:16];
          }

          while (v48);
        }
      }

      v57 = [(AUPasscodeEncoder *)self codecConfig];
      v58 = [(AUPasscodeEncoder *)self payload];
      [APCCodecFactory createEncoderWithConfig:v57 apcConfig:&self->_apcEncoderConfig payloadData:v58];
      v59 = v76;
      v76 = 0;
      ptr = self->_kernel.__ptr_;
      self->_kernel.__ptr_ = v59;
      if (ptr)
      {
        (*(*ptr + 8))(ptr);
        v61 = v76;
        v76 = 0;
        if (v61)
        {
          (*(*v61 + 8))(v61);
        }
      }

      if (self->_kernel.__ptr_)
      {
        self->_assetSampleCount = 0;
        self->_silenceOutputOnNextAssetEnding = 0;
        self->_fadeOutNumSamples = 0;
        self->_triggerFadeOut = 0;
        LOBYTE(v17) = 1;
        self->_embedPasscode = 1;
        self->_loopNumber = 1;
        self->_beginningTime = 0;
        goto LABEL_13;
      }

      [(AUAudioUnit *)self setRenderResourcesAllocated:0];
    }

    else if (a3)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

LABEL_24:
  if (a3)
  {
LABEL_25:
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-10875 userInfo:0];
    v17 = v20;
    LOBYTE(v17) = 0;
    *a3 = v20;
    goto LABEL_13;
  }

LABEL_12:
  LOBYTE(v17) = 0;
LABEL_13:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)deallocateRenderResources
{
  p_inputBus = &self->_inputBus;
  pcmBuffer = self->_inputBus.pcmBuffer;
  self->_inputBus.pcmBuffer = 0;

  p_inputBus->originalAudioBufferList = 0;
  p_inputBus->mutableAudioBufferList = 0;
  v5.receiver = self;
  v5.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v5 deallocateRenderResources];
}

- (void)reset
{
  self->_outputIsSilenced = 0;
  self->_silenceOutputOnNextAssetEnding = 0;
  self->_assetSampleCount = 0;
  self->_fadeOutNumSamples = 0;
  self->_triggerFadeOut = 0;
  self->_embedPasscode = 1;
  self->_loopNumber = 1;
  self->_beginningTime = 0;
  v2.receiver = self;
  v2.super_class = AUPasscodeEncoder;
  [(AUAudioUnit *)&v2 reset];
}

- (id)internalRenderBlock
{
  p_inputBus = &self->_inputBus;
  v4 = [(AUAudioUnitBus *)self->_inputBus.bus format];
  [v4 sampleRate];
  v6 = v5;

  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = &self->_passcodeEmbedInfo;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__AUPasscodeEncoder_internalRenderBlock__block_invoke;
  v9[3] = &unk_278CE1EB0;
  v9[6] = &self->_assetSampleCount;
  v9[7] = &self->_beginningTime;
  v9[8] = &self->_assetLength;
  v9[9] = &self->_outputIsSilenced;
  v9[10] = &self->_embedPasscode;
  v9[11] = &self->_kernel;
  v9[4] = v10;
  v9[5] = p_inputBus;
  v9[12] = &self->_triggerFadeOut;
  v9[13] = &self->_fadeOutNumSamples;
  v9[14] = &self->_fadeOutTimeSeconds;
  v9[15] = v6;
  v9[16] = &self->_fadeOutSampleIndex;
  v9[17] = &self->_numLoopsToStopAfter;
  v9[18] = &self->_loopNumber;
  v9[19] = &self->_silenceOutputOnNextAssetEnding;
  v9[20] = &self->_rtMessenger;
  v9[21] = &self->_eofMessage;
  v7 = MEMORY[0x245CEABB0](v9);
  _Block_object_dispose(v10, 8);

  return v7;
}

uint64_t __40__AUPasscodeEncoder_internalRenderBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v56 = 0;
  v13 = BufferedInputBus::pullInput(*(a1 + 40), &v56, a3, a4, 0, v12);
  if (!v13)
  {
    v51 = v12;
    v55 = *(*(a1 + 40) + 32);
    if (!*(a6 + 2))
    {
      v14 = *a6;
      if (v14)
      {
        v15 = (v55 + 16);
        v16 = a6 + 4;
        do
        {
          v17 = *v15;
          v15 += 2;
          *v16 = v17;
          v16 += 2;
          --v14;
        }

        while (v14);
      }
    }

    if (a4)
    {
      v18 = 0;
      v19 = 0x277CCA000uLL;
      v20 = a4;
      v52 = a4;
      v53 = a4;
      v54 = a6;
      do
      {
        v21 = **(a1 + 48);
        if (!v21)
        {
          v22 = mach_absolute_time();
          v23 = *(a1 + 48);
          **(a1 + 56) = v22;
          v21 = *v23;
        }

        v24 = **(a1 + 64) - v21;
        if (v20 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v20;
        }

        v26 = (*(a6 + 2) + 4 * v18);
        if (**(a1 + 72) == 1)
        {
          LODWORD(v25) = a4 - v18;
          vDSP_vclr((*(a6 + 2) + 4 * v18), 1, a4 - v18);
        }

        else
        {
          v27 = (*(v55 + 16) + 4 * v18);
          if (**(a1 + 80) == 1)
          {
            (*(***(a1 + 88) + 16))(**(a1 + 88), v27, *(a6 + 2) + 4 * v18, v25);
            if (!(*(***(a1 + 88) + 32))(**(a1 + 88)) && **(a1 + 56))
            {
              v28 = mach_absolute_time();
              v29 = **(*(*(a1 + 32) + 8) + 24);
              v30 = [*(v19 + 2992) numberWithUnsignedInteger:v28 - **(a1 + 56)];
              v31 = v19;
              v32 = v30;
              v33 = [*(v31 + 2992) numberWithInt:1001];
              [v29 setObject:v32 forKey:v33];

              **(a1 + 56) = 0;
            }
          }

          else if (v25)
          {
            memmove((*(a6 + 2) + 4 * v18), v27, 4 * v25);
          }

          v34 = *(a1 + 96);
          if (*v34 == 1)
          {
            v35 = llround(*(a1 + 120) * **(a1 + 112));
            if (v35 <= 1)
            {
              LODWORD(v35) = 1;
            }

            **(a1 + 104) = v35;
            **(a1 + 128) = 0;
            *v34 = 0;
          }

          v36 = **(a1 + 136);
          if (v36 && v36 <= **(a1 + 144))
          {
            **(a1 + 152) = 1;
          }

          if (**(a1 + 104))
          {
            v37 = v25 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = v25;
            do
            {
              v39 = *(a1 + 72);
              if (*v39)
              {
                *v26 = 0.0;
              }

              else
              {
                v40 = *(a1 + 128);
                v41 = *v40;
                v42 = *(a1 + 104);
                v43 = *v40 / *v42;
                v44 = *v26;
                *v26 = (1.0 - v43) * (v44 * expf(v43 * -2.0));
                *v40 = v41 + 1;
                if (v41 + 1 >= *v42)
                {
                  *v39 = 1;
                  caulk::concurrent::messenger::enqueue(**(a1 + 160), **(a1 + 168));
                }
              }

              ++v26;
              --v38;
            }

            while (v38);
          }

          if (**(a1 + 64) - **(a1 + 48) <= v52)
          {
            (*(***(a1 + 88) + 24))(**(a1 + 88));
            LODWORD(a4) = v53;
            a6 = v54;
            v19 = 0x277CCA000;
            if (**(a1 + 152) == 1)
            {
              **(a1 + 72) = 1;
              caulk::concurrent::messenger::enqueue(**(a1 + 160), **(a1 + 168));
            }

            ++**(a1 + 144);
          }

          else
          {
            LODWORD(a4) = v53;
            a6 = v54;
            v19 = 0x277CCA000;
          }
        }

        v18 += v25;
        v20 -= v25;
        v45 = *(a1 + 48);
        v46 = *v45 + v25;
        *v45 = v46;
        if (v46 >= **(a1 + 64))
        {
          v46 = 0;
        }

        *v45 = v46;
      }

      while (v18 < a4);
    }

    if (*a6 >= 2)
    {
      v47 = 4 * a4;
      v48 = 1;
      v49 = 8;
      do
      {
        memcpy(*&a6[v49], *(a6 + 2), v47);
        ++v48;
        v49 += 4;
      }

      while (v48 < *a6);
    }

    v13 = 0;
    v12 = v51;
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 72) = 0;
  *(self + 73) = 0;
  *(self + 148) = 0;
  *(self + 76) = 0;
  *(self + 77) = 0;
  *(self + 75) = 0;
  *(self + 82) = 0;
  *(self + 83) = 0;
  *(self + 81) = self + 656;
  *(self + 86) = 0;
  *(self + 87) = 0;
  return self;
}

@end