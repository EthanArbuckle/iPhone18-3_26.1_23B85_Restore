@interface AudioDSPUplinkSpeechMixer
@end

@implementation AudioDSPUplinkSpeechMixer

double __44__AudioDSPUplinkSpeechMixer_v1_processBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  DSPGraph::Graph::preflight();
  DSPGraph::Graph::processMultiple();
  v7 = *(a1 + 32);
  result = *(v7 + 168) + a5;
  *(v7 + 168) = result;
  return result;
}

uint64_t __44__AudioDSPUplinkSpeechMixer_v2_processBlock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v81 = 1;
  v10 = *(*(a1 + 32) + 88);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = v10;
  v79 = 1;
  v68[0] = a5;
  v68[1] = a5;
  memset(v67, 0, sizeof(v67));
  CA::DSP::Graph::GetModel(&v62);
  v11 = MEMORY[0x1E12BB230](v62) & 0xFFFFFFFF00000000;
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v62);
  v12 = *(a1 + 32);
  *__s = v11 | a5;
  v85 = 1;
  CA::DSP::C::API::Call<unsigned char ()(__CADSPGraph *,unsigned int *,unsigned long,unsigned int *,unsigned long,CADSPAudioSliceDuration const*,unsigned int,__CADSPRealTimeError **)>::operator()<__CADSPGraph *,unsigned int *&,unsigned long &,unsigned int *&,unsigned long &,CADSPAudioSliceDuration const*&,unsigned int>(&v61, MEMORY[0x1E698D488], *(v12 + 56), v68, 2, v63, 1, __s, 0);
  v13 = v61.__r_.__value_.__s.__data_[8];
  if (v61.__r_.__value_.__s.__data_[8])
  {
    v83.__r_.__value_.__s.__data_[8] = v61.__r_.__value_.__s.__data_[8];
    if (v81)
    {
      goto LABEL_13;
    }

    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v80);
    goto LABEL_4;
  }

  v14 = v61.__r_.__value_.__r.__words[0];
  v61.__r_.__value_.__r.__words[0] = 0;
  v82 = 0;
  v83.__r_.__value_.__r.__words[0] = v14;
  CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v82);
  v83.__r_.__value_.__s.__data_[8] = v13;
  if ((v61.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v61.__r_.__value_.__l.__data_);
    v15 = v83.__r_.__value_.__s.__data_[8];
    if ((v81 & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v80);
      if (v15)
      {
LABEL_4:
        v81 = 1;
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v83.__r_.__value_.__s.__data_[8])
    {
      goto LABEL_13;
    }

LABEL_10:
    v16 = v83.__r_.__value_.__r.__words[0];
    v83.__r_.__value_.__r.__words[0] = 0;
    v80 = v16;
    v81 = 0;
    goto LABEL_13;
  }

  if (v81)
  {
    goto LABEL_10;
  }

  CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v80);
LABEL_12:
  v17 = v83.__r_.__value_.__r.__words[0];
  v83.__r_.__value_.__r.__words[0] = 0;
  v80 = v17;
LABEL_13:
  if ((v83.__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v83.__r_.__value_.__l.__data_);
  }

  v18 = 1685286945;
  if (v81)
  {
    v71 = a5;
    v69 = a2;
    v70 = &v75;
    v74 = a5;
    v72 = a3;
    v73 = &v75;
    v66 = a5;
    v64 = a4;
    v65 = v67;
    CA::DSP::Graph::Process(&v61);
    v19 = v61.__r_.__value_.__s.__data_[8];
    if (v81 == 1)
    {
      if ((v61.__r_.__value_.__s.__data_[8] & 1) == 0)
      {
        v20 = v61.__r_.__value_.__r.__words[0];
        v61.__r_.__value_.__r.__words[0] = 0;
        v80 = v20;
        v81 = 0;
      }
    }

    else
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v80);
      if (v19)
      {
        v81 = 1;
      }

      else
      {
        v43 = v61.__r_.__value_.__r.__words[0];
        v61.__r_.__value_.__r.__words[0] = 0;
        v80 = v43;
      }
    }

    if ((v61.__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v61.__r_.__value_.__l.__data_);
    }

    *(*(a1 + 32) + 88) = *(*(a1 + 32) + 88) + a5;
    if (v81)
    {
      v18 = 0;
      goto LABEL_113;
    }

    Code = CADSPRealTimeErrorGetCode();
    v45 = bswap32(Code);
    *(&v83.__r_.__value_.__l.__data_ + 1) = v45;
    if ((v45 - 32) > 0x5E || ((v45 >> 8) - 32) > 0x5E || ((v45 << 8 >> 24) - 32) > 0x5E || ((v45 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v61, Code);
    }

    else
    {
      *(v83.__r_.__value_.__r.__words + 5) = 39;
      v83.__r_.__value_.__s.__data_[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v61, &v83);
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v61;
    }

    else
    {
      v46 = v61.__r_.__value_.__r.__words[0];
    }

    Status = CADSPRealTimeErrorGetStatus();
    v48 = bswap32(Status);
    *&__s[1] = v48;
    if ((v48 - 32) > 0x5E || ((v48 >> 8) - 32) > 0x5E || ((v48 << 8 >> 24) - 32) > 0x5E || ((v48 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v83, Status);
    }

    else
    {
      strcpy(&__s[5], "'");
      __s[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v83, __s);
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v83;
    }

    else
    {
      v49 = v83.__r_.__value_.__r.__words[0];
    }

    v50 = strlen(v46);
    v51 = v50 + strlen(v49);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v52 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(*(*(a1 + 32) + 72), v51 + 2 + v52, 16);
    if (message)
    {
      v31 = message;
      v32 = _os_log_pack_fill();
      v33 = *(a1 + 32);
      v54 = CADSPRealTimeErrorGetCode();
      v55 = bswap32(v54);
      *(&v83.__r_.__value_.__l.__data_ + 1) = v55;
      if ((v55 - 32) > 0x5E || ((v55 >> 8) - 32) > 0x5E || ((v55 << 8 >> 24) - 32) > 0x5E || ((v55 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v61, v54);
      }

      else
      {
        *(v83.__r_.__value_.__r.__words + 5) = 39;
        v83.__r_.__value_.__s.__data_[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v61, &v83);
      }

      v36 = v31 + v52;
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v61;
      }

      else
      {
        v56 = v61.__r_.__value_.__r.__words[0];
      }

      v57 = stpcpy(v36, v56);
      v58 = CADSPRealTimeErrorGetStatus();
      v59 = bswap32(v58);
      *&__s[1] = v59;
      if ((v59 - 32) > 0x5E || ((v59 >> 8) - 32) > 0x5E || ((v59 << 8 >> 24) - 32) > 0x5E || ((v59 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v83, v58);
      }

      else
      {
        strcpy(&__s[5], "'");
        __s[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v83, __s);
      }

      v41 = v57 + 1;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v83;
      }

      else
      {
        v42 = v83.__r_.__value_.__r.__words[0];
      }

LABEL_108:
      stpcpy(v41, v42);
      *v32 = 134218498;
      *(v32 + 4) = v33;
      *(v32 + 12) = 2080;
      *(v32 + 14) = v36;
      *(v32 + 22) = 2080;
      *(v32 + 24) = v41;
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      caulk::concurrent::messenger::enqueue(*(*(*(a1 + 32) + 72) + 16), v31);
    }
  }

  else
  {
    v21 = CADSPRealTimeErrorGetCode();
    v22 = bswap32(v21);
    *(&v83.__r_.__value_.__l.__data_ + 1) = v22;
    if ((v22 - 32) > 0x5E || ((v22 >> 8) - 32) > 0x5E || ((v22 << 8 >> 24) - 32) > 0x5E || ((v22 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v61, v21);
    }

    else
    {
      *(v83.__r_.__value_.__r.__words + 5) = 39;
      v83.__r_.__value_.__s.__data_[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v61, &v83);
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v61;
    }

    else
    {
      v23 = v61.__r_.__value_.__r.__words[0];
    }

    v24 = CADSPRealTimeErrorGetStatus();
    v25 = bswap32(v24);
    *&__s[1] = v25;
    if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v83, v24);
    }

    else
    {
      strcpy(&__s[5], "'");
      __s[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v83, __s);
    }

    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v83;
    }

    else
    {
      v26 = v83.__r_.__value_.__r.__words[0];
    }

    v27 = strlen(v23);
    v28 = v27 + strlen(v26);
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v29 = _os_log_pack_size() + 88;
    v30 = caulk::deferred_logger::create_message(*(*(a1 + 32) + 72), v28 + 2 + v29, 16);
    if (v30)
    {
      v31 = v30;
      v32 = _os_log_pack_fill();
      v33 = *(a1 + 32);
      v34 = CADSPRealTimeErrorGetCode();
      v35 = bswap32(v34);
      *(&v83.__r_.__value_.__l.__data_ + 1) = v35;
      if ((v35 - 32) > 0x5E || ((v35 >> 8) - 32) > 0x5E || ((v35 << 8 >> 24) - 32) > 0x5E || ((v35 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v61, v34);
      }

      else
      {
        *(v83.__r_.__value_.__r.__words + 5) = 39;
        v83.__r_.__value_.__s.__data_[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v61, &v83);
      }

      v36 = v31 + v29;
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v61;
      }

      else
      {
        v37 = v61.__r_.__value_.__r.__words[0];
      }

      v38 = stpcpy(v36, v37);
      v39 = CADSPRealTimeErrorGetStatus();
      v40 = bswap32(v39);
      *&__s[1] = v40;
      if ((v40 - 32) > 0x5E || ((v40 >> 8) - 32) > 0x5E || ((v40 << 8 >> 24) - 32) > 0x5E || ((v40 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v83, v39);
      }

      else
      {
        strcpy(&__s[5], "'");
        __s[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v83, __s);
      }

      v41 = v38 + 1;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v83;
      }

      else
      {
        v42 = v83.__r_.__value_.__r.__words[0];
      }

      goto LABEL_108;
    }
  }

LABEL_113:
  if ((v81 & 1) == 0)
  {
    CA::DSP::ReferenceCounted<__CADSPRealTimeError *>::~ReferenceCounted(&v80);
  }

  return v18;
}

@end