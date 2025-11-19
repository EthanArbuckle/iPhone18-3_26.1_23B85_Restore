void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_393(uint64_t a1)
{
  *(*(a1 + 56) + 592) = 0;
  if (([*(a1 + 32) skipAlert] & 1) == 0)
  {
    v2 = *(a1 + 56);
    v2[43] = -1;
    v2[44] = -1;
    v2[42] = -1;
    v3 = *(a1 + 56);
    *(v3 + 336) = [*(a1 + 32) startAlert];
    v4 = *(a1 + 56);
    *(v4 + 344) = [*(a1 + 32) stopAlert];
    v5 = *(a1 + 56);
    *(v5 + 352) = [*(a1 + 32) stopOnErrorAlert];
  }

  v6 = *(a1 + 56);
  v7 = *(v6 + 424);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_394;
  v11[3] = &unk_1F3847FA0;
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v15 = v9;
  v16 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
  }

  v19 = v7;
  v10 = *(a1 + 64);
  v17 = v6;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 32);
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  (*(*v9 + 328))(v9, v11, "startRecordForStream_block_invoke");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1BA5D2A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_394(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_3;
  aBlock[3] = &unk_1F38482E8;
  v2 = *(a1 + 64);
  v31 = *(a1 + 56);
  v32 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(a1 + 88);
  v3 = *(a1 + 80);
  v33 = *(a1 + 72);
  v34 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (a1 + 32);
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v5 = _Block_copy(aBlock);
  if ([*v4 skipAlert])
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "ControllerImpl.mm";
      v38 = 1024;
      v39 = 5056;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d startRecordForStream: Skipping alert playback and continuing to startRecord", buf, 0x12u);
    }

    goto LABEL_22;
  }

  v7 = (*(**(a1 + 56) + 64))(*(a1 + 56), 0);
  v8 = [v7 sessionState] == 7;

  if (!v8)
  {
LABEL_22:
    v5[2](v5, 0);
    goto LABEL_23;
  }

  v9 = *(a1 + 56);
  v11 = *(v9 + 264);
  v10 = *(v9 + 272);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_400;
  v17[3] = &unk_1F3849038;
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  v22 = v13;
  v23 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(a1 + 56);
  }

  v24 = v10;
  v25 = v9;
  v14 = *(a1 + 64);
  v26 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 40);
  v27 = v11;
  v20 = *(a1 + 48);
  v19 = *(a1 + 32);
  v21 = v5;
  ControllerImpl::safeWork(v13, v17, "startRecordForStream_block_invoke");

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_23:

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D2DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_3(uint64_t a1, char a2)
{
  v38 = *MEMORY[0x1E69E9840];
  AVVCRecordingEngine::setRecordErrorStatus(*(a1 + 48), 0, "startRecordForStream_block_invoke");
  (*(**(a1 + 48) + 264))();
  (*(**(a1 + 48) + 288))();
  v4 = *(a1 + 48);
  *(v4 + 200) = *(a1 + 80);
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RecordLock::RecordLock(buf, v5, v6);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v7 = (*(**(a1 + 48) + 96))(*(a1 + 48));
    VCLocker::~VCLocker(buf);
    if (v7)
    {
      if (kAVVCScope)
      {
        v8 = *kAVVCScope;
        if (!v8)
        {
LABEL_16:
          v18 = *(a1 + 40);
          v19 = *(*(a1 + 48) + 216);
          v20 = *(a1 + 64);
          v21 = v18 != 0;
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_396;
          v26[3] = &unk_1E7EF5DD8;
          v28[0] = v18;
          v27 = *(a1 + 32);
          v28[1] = v19;
          v29 = v7;
          ControllerImpl::safeNotifyAlwaysAsync(v20, v21, v26);
          v13 = v28;
          v14 = &v27;
          goto LABEL_17;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      v16 = v8;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) streamID];
        *buf = 136315906;
        v31 = "ControllerImpl.mm";
        v32 = 1024;
        v33 = 4994;
        v34 = 2048;
        v35 = v17;
        v36 = 1024;
        v37 = v7;
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Error in startRecording for stream(%lu): %d", buf, 0x22u);
      }

      goto LABEL_16;
    }

    v4 = *(a1 + 48);
  }

  v9 = *(v4 + 216);
  v10 = *(a1 + 64);
  v11 = *(a1 + 40);
  v12 = v11 != 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_397;
  v23[3] = &unk_1E7EF5DB0;
  v25[0] = v11;
  v24 = *(a1 + 32);
  v25[1] = v9;
  ControllerImpl::safeNotifyAlwaysAsync(v10, v12, v23);
  v13 = v25;
  v14 = &v24;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCAudioQueueRecordingEngine::setupAudioCaptures(AVVCAudioQueueRecordingEngine *this)
{
  v2 = *(this + 39);
  v25[0] = *(this + 38);
  v25[1] = v2;
  v26 = *(this + 80);
  std::string::basic_string[abi:ne200100]<0>(&__p, "Capture");
  v3 = NewAVVCAudioCapturer();
  *(this + 9) = v3;
  if (v24 < 0)
  {
    operator delete(__p);
    v3 = *(this + 9);
  }

  if (v3)
  {
    (*(*v3 + 16))(v3, *(this + 33), v25, 0);
  }

  if (IsDSPGraphSupported() && *(this + 33) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "Capture-DSPOut");
    v4 = NewAVVCAudioCapturer();
    *(this + 105) = v4;
    if (v22 < 0)
    {
      operator delete(v21);
      if (!*(this + 105))
      {
        return 0;
      }
    }

    else if (!v4)
    {
      return 0;
    }

    LODWORD(v19[0]) = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, v19) && LODWORD(v19[0]) == 1)
    {
      v5 = 1;
    }

    else
    {
      LODWORD(v19[0]) = 0;
      v6 = CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, v19);
      if ((v6 & (LODWORD(v19[0]) == 2)) != 0)
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = [[AVAudioChannelLayout alloc] initWithLayoutTag:9633794];
    v8 = [[AVAudioFormat alloc] initWithCommonFormat:v5 sampleRate:0 interleaved:v7 channelLayout:*(this + 3)];
    v9 = [(AVAudioFormat *)v8 streamDescription];
    v10 = *v9;
    v11 = *(v9 + 16);
    v20 = *(v9 + 32);
    v19[0] = v10;
    v19[1] = v11;
    v12 = [[AVAudioFormat alloc] initWithCommonFormat:v5 sampleRate:1 interleaved:v7 channelLayout:*(this + 3)];
    v13 = [(AVAudioFormat *)v12 streamDescription];
    v14 = *v13;
    v15 = *(v13 + 16);
    v18 = *(v13 + 32);
    v17[0] = v14;
    v17[1] = v15;
    (*(**(this + 105) + 16))(*(this + 105), *(this + 33), v19, v17);
  }

  return 0;
}

void __copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 3);
}

char *CAStreamBasicDescription::AsString(CAStreamBasicDescription *this, char *a2, size_t a3, double a4, int8x8_t a5)
{
  v67 = *MEMORY[0x1E69E9840];
  var1 = this->var1;
  if (var1 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", __p, this->var6, *&this->var0);
    goto LABEL_70;
  }

  if (var1 == 1819304813 && this->var4 == 1)
  {
    var5 = this->var5;
    if (var5 == this->var3)
    {
      var7 = this->var7;
      if (var5 >= var7 >> 3)
      {
        var6 = this->var6;
        if (var6)
        {
          var2 = this->var2;
          if ((var2 & 0x20) != 0 || (v17 = var5 == var5 / var6 * var6, var5 /= var6, v17))
          {
            if ((var2 & 2) == 0 && 8 * var5 == var7)
            {
              if (var2)
              {
                if ((var2 & 0x1F84) == 0)
                {
                  if (var5 == 4)
                  {
                    v14 = 1;
                    goto LABEL_170;
                  }

                  v17 = var5 == 8;
                  v59 = var5 == 8;
                  if (v17)
                  {
                    v14 = 4 * v59;
                    goto LABEL_170;
                  }
                }
              }

              else if ((var2 & 4) != 0)
              {
                v13 = (var2 >> 7) & 0x3F;
                if (v13 == 24 && var5 == 4)
                {
                  v14 = 3;
LABEL_170:
                  if ((var2 & 0x20) != 0)
                  {
                    v60 = ", deinterleaved";
                  }

                  else
                  {
                    v60 = ", interleaved";
                  }

                  if (var6 == 1)
                  {
                    v60 = "";
                  }

                  caulk::make_string("%2u ch, %6.0f Hz, %s%s", __p, var6, *&this->var0, *(&off_1E7EF5368 + v14), v60);
                  goto LABEL_70;
                }

                if (!v13 && var5 == 4)
                {
                  v14 = 5;
                  goto LABEL_170;
                }

                if (!v13 && var5 == 2)
                {
                  v14 = 2;
                  goto LABEL_170;
                }
              }
            }
          }
        }
      }
    }
  }

  v15 = this->var6;
  var0 = this->var0;
  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = var1 == 0;
  }

  if (v17 && var0 == 0.0)
  {
    caulk::make_string("%2u ch, %6.0f Hz", __p, 0, *&this->var0);
    goto LABEL_70;
  }

  a5.i32[0] = bswap32(var1);
  v18 = vzip1_s8(a5, *&var0);
  v19.i64[0] = 0x1F0000001FLL;
  v19.i64[1] = 0x1F0000001FLL;
  v20.i64[0] = 0x5F0000005FLL;
  v20.i64[1] = 0x5F0000005FLL;
  *(&v66.__r_.__value_.__s + 23) = 4;
  LODWORD(v66.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v20, vsraq_n_s32(v19, vshlq_n_s32(vmovl_u16(v18), 0x18uLL), 0x18uLL))), v18, 0x2E002E002E002ELL), *&var0).u32[0];
  v66.__r_.__value_.__s.__data_[4] = 0;
  caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v64, v15, *&var0, &v66, this->var2);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  v21 = this->var1;
  if (v21 <= 1819304812)
  {
    if (v21 != 1634492771 && v21 != 1634497332 && v21 != 1718378851)
    {
LABEL_76:
      caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v66, this->var7, this->var3, this->var4, this->var5);
      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v64;
      }

      else
      {
        v34 = v64.__r_.__value_.__r.__words[0];
      }

      if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v64.__r_.__value_.__l.__size_;
      }

LABEL_63:
      v36 = std::string::insert(&v66, 0, v34, size);
      v37 = *&v36->__r_.__value_.__l.__data_;
      v62 = v36->__r_.__value_.__r.__words[2];
      *__p = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      v38 = v66.__r_.__value_.__r.__words[0];
      goto LABEL_65;
    }

LABEL_46:
    v31 = this->var2;
    if ((v31 - 1) < 4 || !v31 && (v21 == 1634497332 || v21 == 1936487278 || v21 == 1936487267))
    {
      caulk::make_string("from %u-bit source, ", &v66, CA::StreamDescription::AsString(void)const::kSourceBits[v31]);
      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v66;
      }

      else
      {
        v32 = v66.__r_.__value_.__r.__words[0];
      }

      if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v66.__r_.__value_.__l.__size_;
      }

      std::string::append(&v64, v32, v33);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v64, "from UNKNOWN source bit depth, ", 0x1FuLL);
    }

    caulk::make_string("%u frames/packet", &v66, this->var4);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v64;
    }

    else
    {
      v34 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v64.__r_.__value_.__l.__size_;
    }

    goto LABEL_63;
  }

  if (v21 == 1936487278 || v21 == 1936487267)
  {
    goto LABEL_46;
  }

  if (v21 != 1819304813)
  {
    goto LABEL_76;
  }

  v22 = this->var2;
  v23 = v22 & 0x20;
  v24 = "";
  v25 = this->var5;
  v26 = " signed";
  if (!v25)
  {
    goto LABEL_37;
  }

  if ((v22 & 0x20) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = this->var6;
    if (!v27)
    {
      v23 = 0;
LABEL_37:
      if ((v22 & 4) != 0)
      {
        v28 = " signed";
      }

      else
      {
        v28 = " unsigned";
      }

      if (v22)
      {
        v29 = "float";
      }

      else
      {
        v29 = "integer";
      }

      if (v22)
      {
        v30 = "";
      }

      else
      {
        v30 = v28;
      }

LABEL_109:
      v66.__r_.__value_.__s.__data_[0] = 0;
      if (v23)
      {
        v45 = ", deinterleaved";
      }

      else
      {
        v45 = "";
      }

      v46 = this->var7;
      v43 = "";
      v47 = "";
      goto LABEL_113;
    }
  }

  v42 = v25 / v27;
  if (v25 / v27 < 2)
  {
    if ((v22 & 4) != 0)
    {
      v44 = " signed";
    }

    else
    {
      v44 = " unsigned";
    }

    if (v22)
    {
      v29 = "float";
    }

    else
    {
      v29 = "integer";
    }

    if (v22)
    {
      v30 = "";
    }

    else
    {
      v30 = v44;
    }

    if (v27 > v25)
    {
      goto LABEL_109;
    }

    v42 = 1;
    v43 = "";
  }

  else
  {
    if ((v22 & 2) != 0)
    {
      v43 = " big-endian";
    }

    else
    {
      v43 = " little-endian";
    }

    if ((v22 & 4) == 0)
    {
      v26 = " unsigned";
    }

    if (v22)
    {
      v29 = "float";
    }

    else
    {
      v29 = "integer";
    }

    if (v22)
    {
      v30 = "";
    }

    else
    {
      v30 = v26;
    }
  }

  v48 = this->var6;
  if ((v22 & 0x20) != 0)
  {
    v49 = 1;
  }

  else
  {
    v49 = this->var6;
  }

  if (v49)
  {
    v49 = 8 * (v25 / v49);
  }

  if (v49 == this->var7)
  {
    v66.__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if ((v22 & 8) != 0)
    {
      v50 = "";
    }

    else
    {
      v50 = "un";
    }

    snprintf(&v66, 0x20uLL, "%spacked in %u bytes", v50, v42);
    v25 = this->var5;
    v22 = this->var2;
    if (!v25)
    {
      v51 = 0;
      v23 = this->var2 & 0x20;
      goto LABEL_135;
    }

    v48 = this->var6;
    v23 = this->var2 & 0x20;
  }

  if (v23)
  {
    v51 = 1;
  }

  else
  {
    v51 = v48;
  }

  if (v51)
  {
    v51 = 8 * (v25 / v51);
  }

LABEL_135:
  v52 = this->var7;
  v53 = " high-aligned";
  if ((v22 & 0x10) == 0)
  {
    v53 = " low-aligned";
  }

  if ((v52 & 7) == 0 && v51 == v52)
  {
    v47 = "";
  }

  else
  {
    v47 = v53;
  }

  if (v23)
  {
    v45 = ", deinterleaved";
  }

  else
  {
    v45 = "";
  }

  if (v66.__r_.__value_.__s.__data_[0])
  {
    v24 = ", ";
    goto LABEL_148;
  }

LABEL_113:
  if (*v47)
  {
    v24 = ", ";
  }

LABEL_148:
  if (((v22 >> 7) & 0x3F) != 0)
  {
    snprintf(__str, 0x14uLL, "%u.%u");
  }

  else
  {
    snprintf(__str, 0x14uLL, "%u");
  }

  caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v63, __str, v43, v30, v29, v24, &v66, v47, v45);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = &v64;
  }

  else
  {
    v55 = v64.__r_.__value_.__r.__words[0];
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v64.__r_.__value_.__l.__size_;
  }

  v57 = std::string::insert(&v63, 0, v55, v56);
  v58 = *&v57->__r_.__value_.__l.__data_;
  v62 = v57->__r_.__value_.__r.__words[2];
  *__p = v58;
  v57->__r_.__value_.__l.__size_ = 0;
  v57->__r_.__value_.__r.__words[2] = 0;
  v57->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    v38 = v63.__r_.__value_.__r.__words[0];
LABEL_65:
    operator delete(v38);
  }

LABEL_66:
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

LABEL_70:
  if (v62 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  strlcpy(a2, v39, a3);
  if (SHIBYTE(v62) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1BA5D3CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIxNS_9allocatorIxEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettings_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v8 = v6;
  if (v6)
  {
    LODWORD(v6) = [v6 code];
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  v7 = *(a1 + 32);
  if (v7)
  {
    dispatch_semaphore_signal(v7);
  }
}

void __destroy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void AVVCAudioQueueRecordingEngine::AudioQueueRecordPropertyListenerProc(AVVCAudioQueueRecordingEngine *this, void *a2, OpaqueAudioQueue *a3)
{
  v3 = a3;
  v33 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "AVVCAudioQueueRecordingEngine.mm";
    v25 = 1024;
    v26 = 164;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioQueueRecordPropertyListenerProc called ", buf, 0x12u);
  }

LABEL_8:
  TraceMethod::TraceMethod(v22, "AudioQueueRecordPropertyListenerProc");
  v9 = *this;
  v8 = *(this + 1);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!kAVVCScope)
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_14:
    v12 = v10;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

      goto LABEL_26;
    }

    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v9)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = v9[33];
        v15 = v8->__shared_owners_ + 1;
LABEL_20:
        v16 = [v13 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v9, v14, v15];
LABEL_22:
        *buf = 136316162;
        v24 = "AVVCAudioQueueRecordingEngine.mm";
        v25 = 1024;
        v26 = 169;
        v27 = 2112;
        v28 = v16;
        v29 = 2048;
        v30 = a2;
        v31 = 1024;
        v32 = v3;
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioQueueRecordPropertyListenerProc: Engine[%@] Queue(%p) Property(%d)", buf, 0x2Cu);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_25;
      }
    }

    else if (v9)
    {
      v15 = 0;
      v13 = MEMORY[0x1E696AEC0];
      v14 = v9[33];
      goto LABEL_20;
    }

    v16 = @"(0x0) use_count:0";
    goto LABEL_22;
  }

  v10 = *kAVVCScope;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_26:
  if (v9)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = ___ZN29AVVCAudioQueueRecordingEngine36AudioQueueRecordPropertyListenerProcEPvP16OpaqueAudioQueuej_block_invoke;
    v18[3] = &__block_descriptor_60_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
    v18[4] = v9;
    v19 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a2;
    v21 = v3;
    (*(*v9 + 336))(v9, v18, "AudioQueueRecordPropertyListenerProc");
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  TraceMethod::~TraceMethod(v22);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D42D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::dispatchAndSafeWork(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v14, *(a1 + 8), *(a1 + 16));
      v6 = v14;
      v7 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v6 + 520);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3321888768;
      v9[2] = ___ZN19AVVCRecordingEngine19dispatchAndSafeWorkEU13block_pointerFvvEPKc_block_invoke;
      v9[3] = &unk_1F384D028;
      v11 = v6;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = a3;
      v10 = v5;
      dispatch_async(v8, v9);

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v5[2](v5);
    }
  }
}

uint64_t __copy_helper_block_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_305(uint64_t a1)
{
  *&v19[9] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = *(a1 + 40);
  if (WeakRetained && v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(v7 + 264);
    v10 = *(v7 + 224);
    v17[0] = v7;
    v17[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    ControllerImpl::startKeepAliveQueue(*(v5 + 8), *(v5 + 16), v17);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_307;
    v14[3] = &unk_1E7EF5C98;
    objc_copyWeak(v15, (a1 + 32));
    v15[1] = v9;
    v16 = v10;
    ControllerImpl::safeNotify(v5, "beganRecording", v14);
    objc_destroyWeak(v15);
    objc_autoreleasePoolPop(v6);
    *buf = 4115;
    LOBYTE(v19[0]) = 0;
    memset(&v19[1], 0, 32);
    kdebug_trace();
    TraceWrapper::~TraceWrapper(buf);
    goto LABEL_20;
  }

LABEL_12:
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *v19 = "ControllerImpl.mm";
    LOWORD(v19[2]) = 1024;
    *(&v19[2] + 2) = 3965;
    HIWORD(v19[3]) = 2048;
    *&v19[4] = WeakRetained;
    LOWORD(v19[6]) = 2048;
    *(&v19[6] + 2) = v5;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_19:
  if (v4)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D4708(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_307(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beganRecording:*(a1 + 40) status:*(a1 + 48)];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 3974;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

id GetRecordingAppsList(void)
{
  v10 = *MEMORY[0x1E69E9840];
  if (isAVSystemControllerAvailable(void)::onceToken != -1)
  {
    dispatch_once(&isAVSystemControllerAvailable(void)::onceToken, &__block_literal_global_230);
  }

  if (isAVSystemControllerAvailable(void)::isAvailable)
  {
    v0 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v1 = [v0 attributeForKey:*MEMORY[0x1E69AEB38]];

    goto LABEL_13;
  }

  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
    goto LABEL_9;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
LABEL_9:
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "AVVCUtils.mm";
      v8 = 1024;
      v9 = 1490;
      _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVSystemController API not available", &v6, 0x12u);
    }
  }

  v1 = 0;
LABEL_13:
  v4 = *MEMORY[0x1E69E9840];

  return v1;
}

id ControllerImpl::getRecordSettingsForStream(ControllerImpl *this, AVVoiceController *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5601;
  v18 = __Block_byref_object_dispose__5602;
  v19 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllerm_block_invoke;
  v9[3] = &unk_1E7EF5E78;
  v12 = this;
  v13 = a3;
  v10 = v5;
  v11 = &v14;
  v6 = v5;
  makeSynchronous(v9);
  v7 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void sub_1BA5D4CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllerm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = a1[7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllerm_block_invoke_2;
  v11[3] = &unk_1E7EF6058;
  v6 = a1[5];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getRecordSettingsForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA5D4E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllerm_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void AVVCRecordingEngine::setRecordErrorStatus(AVVCRecordingEngine *this, unsigned int a2, const char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v9 = v6;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    CAX4CCString::CAX4CCString(v19, a2);
    v10 = *(this + 56);
    if (v10)
    {
      v11 = v18;
      CAX4CCString::CAX4CCString(v18, v10);
    }

    else
    {
      v11 = "noErr";
    }

    *buf = 136316162;
    v21 = "AVVCRecordingEngine.mm";
    v22 = 1024;
    v23 = 373;
    v24 = 2080;
    v25 = v19;
    v26 = 2080;
    v27 = v11;
    v28 = 2080;
    v29 = a3;
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_21;
  }

  if (*(this + 56))
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    v9 = v7;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v15 = *(this + 56);
    if (v15)
    {
      v16 = v19;
      CAX4CCString::CAX4CCString(v19, v15);
    }

    else
    {
      v16 = "noErr";
    }

    *buf = 136316162;
    v21 = "AVVCRecordingEngine.mm";
    v22 = 1024;
    v23 = 376;
    v24 = 2080;
    v25 = "noErr";
    v26 = 2080;
    v27 = v16;
    v28 = 2080;
    v29 = a3;
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
    _os_log_impl(&dword_1BA5AC000, v12, v13, "%25s:%-5d setRecordErrorStatus: '%s' Previous: '%s' Caller: %s", buf, 0x30u);
LABEL_22:
  }

LABEL_23:
  *(this + 56) = a2;
  v17 = *MEMORY[0x1E69E9840];
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

uint64_t NewAVVCAudioCapturer()
{
  v2 = *MEMORY[0x1E69E9840];
  if (CFPreferencesGetAppBooleanValue(@"dump_input", @"com.apple.avfoundation.avvc", 0))
  {
    operator new();
  }

  v0 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BA5D5450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  operator delete(__p);
  MEMORY[0x1BFAF5800](v18, v19);
  _Unwind_Resume(a1);
}

uint64_t AVVCAudioQueueRecordingEngine::startRecording(AVVCAudioQueueRecordingEngine *this)
{
  v79 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v74, "startRecording");
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v60, *(this + 1), *(this + 2));
    v5 = v60;
    if (v60)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v72, *(this + 1), *(this + 2));
      v56 = (*(*v72 + 64))(v72, 0);
      v6 = [v56 sessionState];
      v7 = "ILLEGAL";
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            v7 = "Activating";
          }

          else if (v6 == 7)
          {
            v7 = "Active";
          }
        }

        else if (v6 == 4)
        {
          v7 = "Deactivating";
        }

        else
        {
          v7 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v7 = "InteruptedWhileRecording";
        }

        else
        {
          v7 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v7 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v7 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v70, *(this + 1), *(this + 2));
    if (v70)
    {
      v8 = v71;
      if (v71)
      {
        v8 = (v71->__shared_owners_ + 1);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v70, *(v70 + 264), v8];
    }

    else
    {
      v9 = @"(0x0) use_count:0";
    }

    v10 = v9;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v57, *(this + 1), *(this + 2));
    v11 = v57;
    if (v57)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v68, *(this + 1), *(this + 2));
      v12 = (*(*v68 + 296))(v68);
      if (v12 > 4)
      {
        v13 = "ILLEGAL";
      }

      else
      {
        v13 = off_1E7EF6310[v12];
      }
    }

    else
    {
      v13 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v66, *(this + 1), *(this + 2));
    if (v66)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v64, *(this + 1), *(this + 2));
      v14 = *(v64 + 216);
      if (v14 > 6)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6338[v14];
      }

      *buf = 136316418;
      *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 989;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      *&buf[28] = 2112;
      *&buf[30] = v10;
      *&buf[38] = 2080;
      v76 = v13;
      v77 = 2080;
      v78 = v15;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }
    }

    else
    {
      *buf = 136316418;
      *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 989;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      *&buf[28] = 2112;
      *&buf[30] = v10;
      *&buf[38] = 2080;
      v76 = v13;
      v77 = 2080;
      v78 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    if (v11 && v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    if (v5)
    {

      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }
    }

    if (*(&v60 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
    }

    goto LABEL_48;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*(this + 27) != 4)
  {
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
LABEL_76:
        v17 = 0;
        goto LABEL_77;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 992;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioQueue startRecording: record state already started or stopping -- no-op", buf, 0x12u);
    }

    goto LABEL_76;
  }

  v16 = +[AVVCMetricsManager sharedManager];
  v17 = [v16 resetAudioIssueDetector];

  if (v17)
  {
    goto LABEL_77;
  }

  v18 = +[AVVCMetricsManager sharedManager];
  v19 = *(this + 39);
  *buf = *(this + 38);
  *&buf[16] = v19;
  *&buf[32] = *(this + 80);
  [v18 setADAMFormat:buf numFrames:*(this + 202)];

  *(this + 752) = 0;
  if (*(this + 676))
  {
LABEL_65:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v25 = *(this + 29);
    if (v25)
    {
      if (kAVVCScope)
      {
        v26 = *kAVVCScope;
        if (!v26)
        {
LABEL_90:
          *&v60 = 0;
          *(&v60 + 1) = v25;
          v61 = 0u;
          v62 = 0u;
          *&v63 = 0;
          DWORD2(v63) = 2;
          v34 = &v60;
          v35 = v25;
          *(this + 872) = 1;
          goto LABEL_103;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      v33 = v26;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1034;
        *&buf[18] = 2048;
        *&buf[20] = v25;
        _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### Starting record queue at time %llu ####", buf, 0x1Cu);
      }

      goto LABEL_90;
    }

    if (kAVVCScope)
    {
      v31 = *kAVVCScope;
      if (!v31)
      {
LABEL_102:
        *(this + 872) = 1;
        v35 = mach_absolute_time();
        v34 = 0;
LABEL_103:
        *(this + 85) = v35;
        v39 = mach_absolute_time();
        if (kAVVCScope)
        {
          v40 = *kAVVCScope;
          if (!v40)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v40 = MEMORY[0x1E69E9C10];
          v41 = MEMORY[0x1E69E9C10];
        }

        v42 = v40;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = "past";
          if (v25 > v39)
          {
            v43 = "future";
          }

          *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1045;
          v44 = *(this + 85);
          *buf = 136315906;
          if (!v25)
          {
            v43 = "immediate";
          }

          *&buf[18] = 2080;
          *&buf[20] = v43;
          *&buf[28] = 2048;
          *&buf[30] = v44;
          _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC starting (%s) recording at hosttime (%lld) for AQ engine", buf, 0x26u);
        }

LABEL_114:
        LODWORD(v57) = 4103;
        BYTE4(v57) = 1;
        v58 = 0u;
        v59 = 0u;
        kdebug_trace();
        ElapsedTime::ElapsedTime(buf, "startRecording", "startRecording : AudioQueueStart", 0);
        ProfileMetrics(&cfstr_AvvcProfilePro_12.isa);
        v17 = AudioQueueStart(*(this + 75), v34);
        ProfileMetrics(&cfstr_AvvcProfilePro_13.isa);
        ElapsedTime::~ElapsedTime(buf);
        TraceWrapper::~TraceWrapper(&v57);
        if (!v17)
        {
          *(this + 29) = 0;
          goto LABEL_77;
        }

        if ((v17 + 199999) >= 0x61A7F)
        {
          if (kAVVCScope)
          {
            v46 = *kAVVCScope;
            if (!v46)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v46 = MEMORY[0x1E69E9C10];
            v50 = MEMORY[0x1E69E9C10];
          }

          v48 = v46;
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_130;
          }

          *buf = 136315650;
          *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1057;
          *&buf[18] = 1024;
          *&buf[20] = v17;
          v49 = "%25s:%-5d ERROR: startRecordQueue: AudioQueueStart err %{audio:4CC}d";
        }

        else
        {
          if (kAVVCScope)
          {
            v45 = *kAVVCScope;
            if (!v45)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v45 = MEMORY[0x1E69E9C10];
            v47 = MEMORY[0x1E69E9C10];
          }

          v48 = v45;
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
LABEL_130:

LABEL_131:
            *(this + 29) = 0;
            goto LABEL_144;
          }

          *buf = 136315650;
          *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1057;
          *&buf[18] = 1024;
          *&buf[20] = v17;
          v49 = "%25s:%-5d ERROR: startRecordQueue: AudioQueueStart err %d";
        }

        _os_log_impl(&dword_1BA5AC000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x18u);
        goto LABEL_130;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    v38 = v31;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1031;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### Starting record queue immediately ####", buf, 0x12u);
    }

    goto LABEL_102;
  }

  if (*(this + 27) == 5)
  {
    CAVerboseAbort();
LABEL_147:
    CAVerboseAbort();
  }

  if (*(this + 165))
  {
    goto LABEL_147;
  }

  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v20 = *kAVVCScope;
      if (v20)
      {
        v21 = v20;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(this + 164);
          *buf = 136315650;
          *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1009;
          *&buf[18] = 1024;
          *&buf[20] = v22;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d startRecordQueue: enqueing %d buffers", buf, 0x18u);
        }
      }
    }
  }

  if (!*(this + 164))
  {
LABEL_64:
    *(this + 676) = 1;
    goto LABEL_65;
  }

  v23 = 0;
  while (1)
  {
    v24 = AudioQueueEnqueueBuffer(*(this + 75), *(*(this + 81) + 8 * v23), 0, 0);
    v17 = v24;
    if (v24)
    {
      break;
    }

    atomic_fetch_add_explicit(this + 165, 1u, memory_order_relaxed);
    if (++v23 >= *(this + 164))
    {
      goto LABEL_64;
    }
  }

  if ((v24 + 199999) >= 0x61A7F)
  {
    if (kAVVCScope)
    {
      v36 = *kAVVCScope;
      if (!v36)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v53 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_142;
    }

    *buf = 136315650;
    *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1012;
    *&buf[18] = 1024;
    *&buf[20] = v17;
    v52 = "%25s:%-5d ERROR: startRecordQueue: AudioQueueEnqueueBuffer err %{audio:4CC}d";
    goto LABEL_141;
  }

  if (kAVVCScope)
  {
    v36 = *kAVVCScope;
    if (!v36)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AVVCAudioQueueRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1012;
    *&buf[18] = 1024;
    *&buf[20] = v17;
    v52 = "%25s:%-5d ERROR: startRecordQueue: AudioQueueEnqueueBuffer err %d";
LABEL_141:
    _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_ERROR, v52, buf, 0x18u);
  }

LABEL_142:

LABEL_143:
  ElapsedTime::ElapsedTime(buf, "startRecording", "startRecording:AudioQueueReset", 0);
  AudioQueueReset(*(this + 75));
  *(this + 165) = 0;
  ElapsedTime::~ElapsedTime(buf);
  *(this + 676) = 0;
LABEL_144:
  AVVCRecordingEngine::setRecordErrorStatus(this, v17, "startRecording");
  AVVCRecordingEngine::setStreamState(this, 3);
  v54 = +[AVVCMetricsManager sharedManager];
  [v54 resetAudioIssueDetector];

  v55 = +[AVVCMetricsManager sharedManager];
  [v55 disposeADAM];

  if (v17 == -66671)
  {
    v17 = (*(*this + 112))(this, 0);
  }

LABEL_77:
  TraceMethod::~TraceMethod(v74);
  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1BA5D6120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, char a40)
{
  ElapsedTime::~ElapsedTime(&a40);
  TraceMethod::~TraceMethod(&a38);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1BA5D6418(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_397(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(v2 + 16);
  v5 = *(a1 + 48);

  return v4(v2, v3, 1, v5, 0);
}

void AVVCAudioQueueRecordingEngine::AudioQueueRecordInputCallback(AVVCAudioQueueRecordingEngine *this, void *a2, OpaqueAudioQueue *a3, AudioQueueBuffer *a4, const AudioTimeStamp *a5, uint64_t a6, const AudioStreamPacketDescription *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "AVVCAudioQueueRecordingEngine.mm";
    v20 = 1024;
    v21 = 150;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioQueueRecordInputCallback called ", &v18, 0x12u);
  }

LABEL_8:
  v15 = *this;
  v16 = *(this + 1);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15)
  {
    (*(*v15 + 248))(v15, a2, a3, a4, a5, a6);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D65F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AVVCRecordingEngine::avvcAudioBufferReceived(AVVCRecordingEngine *this, AVVCAudioBuffer *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7 = *(this + 13);
  if (v7)
  {
    (*(v7 + 16))(v7, *(this + 33), v8, a3, a4);
  }
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *(a1 + 40);
      if (WeakRetained && v13)
      {
        v14 = objc_loadWeakRetained((v13 + 168));

        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = objc_loadWeakRetained((v13 + 168));
        v16 = objc_opt_respondsToSelector() & a4;

        if (v16 != 1)
        {
LABEL_27:
          v23 = objc_loadWeakRetained((v13 + 168));
          v24 = objc_opt_respondsToSelector();

          if ((v24 & a5) != 0)
          {
            if (kAVVCScope)
            {
              v25 = *kAVVCScope;
              if (!v25)
              {
LABEL_35:
                v27 = objc_loadWeakRetained((v13 + 168));
                [v27 voiceControllerAudioCallback:WeakRetained forStream:a2 buffer:v9];

                goto LABEL_20;
              }
            }

            else
            {
              v25 = MEMORY[0x1E69E9C10];
              v26 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v28 = 136315394;
              v29 = "ControllerImpl.mm";
              v30 = 1024;
              v31 = 3957;
              _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling (v2) voiceControllerAudioCallback:forStream:buffer:", &v28, 0x12u);
            }

            goto LABEL_35;
          }

LABEL_20:
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          goto LABEL_21;
        }

        if (kAVVCScope)
        {
          v17 = *kAVVCScope;
          if (!v17)
          {
LABEL_26:
            v22 = objc_loadWeakRetained((v13 + 168));
            [v22 voiceControllerLPCMAudioCallback:WeakRetained forStream:a2 buffer:v9];

            goto LABEL_27;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v21 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v28 = 136315394;
          v29 = "ControllerImpl.mm";
          v30 = 1024;
          v31 = 3953;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling (v2) voiceControllerLPCMAudioCallback:forStream:buffer:", &v28, 0x12u);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315906;
    v29 = "ControllerImpl.mm";
    v30 = 1024;
    v31 = 3949;
    v32 = 2048;
    v33 = WeakRetained;
    v34 = 2048;
    v35 = v13;
    _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v28, 0x26u);
  }

LABEL_19:
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_21:

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D69CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  _Unwind_Resume(a1);
}

void MyAudioQueueBuffer::~MyAudioQueueBuffer(MyAudioQueueBuffer *this)
{
  var5 = this->var5;
  if (var5)
  {
    MEMORY[0x1BFAF57D0](var5, 0x1000C80451B5BE8);
  }

  var1 = this->var1;
  if (var1)
  {
    MEMORY[0x1BFAF57D0](var1, 0x1000C8077774924);
  }
}

uint64_t ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_323(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = *(a1 + 48);
  if (!v11)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v12 = std::__shared_weak_count::lock(v11);
  if (!v12)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v13 = *(a1 + 40);
  if (!WeakRetained || !v13)
  {
LABEL_24:
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4041;
      *&buf[18] = 2048;
      *&buf[20] = WeakRetained;
      *&buf[28] = 2048;
      *&buf[30] = v13;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
    }

LABEL_31:
    v25 = 0;
    v26 = 0;
    if (!v12)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v14 = WeakRetained;
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x20) != 0)
    {
      v15 = *kAVVCScope;
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2881;
          *&buf[18] = 2048;
          *&buf[20] = a2;
          _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d checkForEndpoint entered: inBuffer %p", buf, 0x1Cu);
        }
      }
    }
  }

  v17 = objc_loadWeakRetained((v13 + 416));
  v18 = v17 == 0;

  if (v18)
  {
    goto LABEL_38;
  }

  if (*(v13 + 424) == 1)
  {
    v19 = objc_loadWeakRetained((v13 + 416));
    [v19 getStatus:a3 count:a4];
  }

  v20 = objc_loadWeakRetained((v13 + 416));
  v21 = [v20 getStatus:a2];

  if (v21 == 1)
  {
    if (*(v13 + 425) != 1 || *(v13 + 428) == 2)
    {
      *(v13 + 425) = 1;
      objc_initWeak(&v34, v14);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke;
      *&buf[24] = &unk_1E7EF6678;
      objc_copyWeak(&buf[32], &v34);
      ControllerImpl::safeNotify(v13, "startpointDetected", buf);
      objc_destroyWeak(&buf[32]);
      objc_destroyWeak(&v34);
    }

    goto LABEL_38;
  }

  if (v21 == 2)
  {
    if (*(v13 + 428) == 2)
    {
      objc_initWeak(&v34, v14);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke_255;
      *&buf[24] = &unk_1E7EF5BD0;
      objc_copyWeak(&buf[32], &v34);
      v39 = a5;
      ControllerImpl::safeNotify(v13, "interspeechPointDetected", buf);
      objc_destroyWeak(&buf[32]);
      objc_destroyWeak(&v34);
    }

    goto LABEL_38;
  }

  if (v21 != 3 || (*(v13 + 426) & 1) != 0)
  {
LABEL_38:
    v25 = 0;
    goto LABEL_39;
  }

  if (*(v13 + 425))
  {
    goto LABEL_52;
  }

  if (kAVVCScope)
  {
    v22 = *kAVVCScope;
    if (!v22)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2913;
    _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d #### AVVoiceController: Detected end point but NO START POINT ####", buf, 0x12u);
  }

LABEL_52:
  *(v13 + 426) = 1;
  v25 = *(v13 + 427);
  if (v25 == 1)
  {
    if (kAVVCScope)
    {
      v32 = *kAVVCScope;
      if (!v32)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2917;
      _os_log_impl(&dword_1BA5AC000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d checkForEndpoint: auto-stopping record", buf, 0x12u);
    }
  }

LABEL_60:
  objc_initWeak(&v34, v14);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke_257;
  *&buf[24] = &unk_1E7EF5BD0;
  objc_copyWeak(&buf[32], &v34);
  v39 = a5;
  ControllerImpl::safeNotify(v13, "endpointDetected", buf);
  objc_destroyWeak(&buf[32]);
  objc_destroyWeak(&v34);
LABEL_39:
  if (kAVVCScope)
  {
    if ((*(kAVVCScope + 12) & 0x20) != 0)
    {
      v27 = *kAVVCScope;
      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v34 = 136315394;
          v35 = "ControllerImpl.mm";
          v36 = 1024;
          v37 = 2932;
          _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d checkForEndpoint exiting", &v34, 0x12u);
        }
      }
    }
  }

LABEL_46:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v26 = v25;
LABEL_47:

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_1BA5D710C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v11 + 32));
  objc_destroyWeak(&a9);

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::stopRecordForStream(ControllerImpl *this, AVVoiceController *a2, uint64_t a3)
{
  v5 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllerm_block_invoke;
  v9[3] = &unk_1E7EF5E78;
  v12 = this;
  v6 = v5;
  v13 = a3;
  v10 = v6;
  v11 = &v14;
  makeSynchronous(v9);
  v7 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v7;
}

void sub_1BA5D72C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllerm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = a1[7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllerm_block_invoke_2;
  v9[3] = &unk_1E7EF5E00;
  v7 = a1[4];
  v6 = a1[5];
  v10 = v3;
  v11 = v6;
  v8 = v3;
  ControllerImpl::stopRecordForStream(v4, v7, v5, v9);
}

void ControllerImpl::stopRecordForStream(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v9 = *kAVVCScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 5085;
          v20 = 2048;
          v21 = a3;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d stopRecordForStream streamID(%lu)", buf, 0x1Cu);
        }
      }
    }
  }

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(a1 + 8), *(a1 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v11 = *buf;
  v16 = *buf;
  v17 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a3;
  v12 = v8;
  v15 = v12;
  ControllerImpl::safeWork(v11, v14, "stopRecordForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D7598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 56);
      *buf = 136315650;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 5092;
      v32 = 2048;
      v33 = v10;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordForStream: Cannot find recording engine for streamID(%lu). Failing.", buf, 0x1Cu);
    }

LABEL_20:
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v11 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_418;
    v23[3] = &unk_1E7EF6590;
    v14 = v11;
    v15 = *(a1 + 56);
    v24 = v14;
    v25 = v15;
    ControllerImpl::safeNotifyAlwaysAsync(v12, v13, v23);

    v4 = v27;
    if (!v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2;
  v16[3] = &unk_1F38484E0;
  v3 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v27;
  v20 = v2;
  v21 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v17 = v5;
  v22 = v6;
  (*(*v2 + 328))(v2, v16, "stopRecordForStream_block_invoke");

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v4)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D7868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 88));
  }

  _Unwind_Resume(a1);
}

BOOL QueueIsRunning(_BOOL8 result)
{
  v16 = *MEMORY[0x1E69E9840];
  outData = 0;
  if (result)
  {
    ioDataSize = 4;
    Property = AudioQueueGetProperty(result, 0x6171726Eu, &outData, &ioDataSize);
    if (!Property)
    {
LABEL_18:
      result = outData == 1;
      goto LABEL_19;
    }

    v2 = Property;
    if ((Property + 199999) > 0x61A7E)
    {
      if (kAVVCScope)
      {
        v3 = *kAVVCScope;
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v3 = MEMORY[0x1E69E9C10];
        v6 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136315650;
      v11 = "AVVCUtils.mm";
      v12 = 1024;
      v13 = 1354;
      v14 = 1024;
      v15 = v2;
      v5 = "%25s:%-5d ERROR: QueueIsRunning: AudioQueueGetProperty(kAudioQueueProperty_IsRunning) (ignored) err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v3 = *kAVVCScope;
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v3 = MEMORY[0x1E69E9C10];
        v4 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136315650;
      v11 = "AVVCUtils.mm";
      v12 = 1024;
      v13 = 1354;
      v14 = 1024;
      v15 = v2;
      v5 = "%25s:%-5d ERROR: QueueIsRunning: AudioQueueGetProperty(kAudioQueueProperty_IsRunning) (ignored) err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0x18u);
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  RecordLock::RecordLock(v49, v2, v3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = 0;
  v5 = *(a1 + 56);
  v6 = *(v5 + 216);
  if (v6 > 3)
  {
    if (v6 != 4)
    {
      if (v6 != 5)
      {
        if (v6 != 6)
        {
          goto LABEL_49;
        }

        goto LABEL_12;
      }

      if (!*(v5 + 224))
      {
        v4 = 0;
        goto LABEL_49;
      }

      if (kAVVCScope)
      {
        v19 = *kAVVCScope;
        if (!v19)
        {
LABEL_48:
          v4 = 1;
          goto LABEL_49;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      v29 = v19;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*(a1 + 56) + 224);
        *buf = 136315650;
        v51 = "ControllerImpl.mm";
        v52 = 1024;
        v53 = 5130;
        v54 = 1024;
        LODWORD(v55) = v30;
        _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: an error : %d  occurred while recording and we need to synthesize doneRecording", buf, 0x18u);
      }

      goto LABEL_48;
    }

    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
LABEL_42:
        v4 = 1;
        *(*(a1 + 56) + 80) = 1;
        goto LABEL_49;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v51 = "ControllerImpl.mm";
      v52 = 1024;
      v53 = 5137;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: Attempt to stop while stream is about to start. NotifyStartBeforeStop", buf, 0x12u);
    }

    goto LABEL_42;
  }

  if (v6 < 2)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_36:
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v24 = v22 != 0;
        v15 = v48;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_419;
        v48[3] = &unk_1E7EF5E28;
        v25 = v22;
        v26 = *(a1 + 72);
        v48[4] = v25;
        v48[5] = v26;
        v48[6] = v6;
        ControllerImpl::safeNotifyAlwaysAsync(v23, v24, v48);
        goto LABEL_37;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v21 = "Uninitialized";
      v51 = "ControllerImpl.mm";
      *buf = 136315650;
      if (!v6)
      {
        v21 = "Invalid";
      }

      v52 = 1024;
      v53 = 5110;
      v54 = 2080;
      v55 = v21;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordForStream: Attempt to stop on an %s stream.", buf, 0x1Cu);
    }

    goto LABEL_36;
  }

  if ((v6 - 2) >= 2)
  {
LABEL_49:
    v31 = *(a1 + 56);
    v31[245] = 1;
    v32 = (*(*v31 + 104))(v31);
    if (!v32)
    {
      if (!v4)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (kAVVCScope)
    {
      v33 = *kAVVCScope;
      if (!v33)
      {
LABEL_59:
        AVVCRecordingEngine::setRecordErrorStatus(*(a1 + 56), v32, "stopRecordForStream_block_invoke");
LABEL_60:
        AVVCRecordingEngine::doneRecording(*(a1 + 56));
LABEL_61:
        VCLocker::~VCLocker(v49);
        v35 = *(*(a1 + 56) + 216);
        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v38 = v36 != 0;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_422;
        v42[3] = &unk_1E7EF5E50;
        v39 = v36;
        v40 = *(a1 + 72);
        v43 = v39;
        v44 = v40;
        v46 = v32;
        v45 = v35;
        ControllerImpl::safeNotifyAlwaysAsync(v37, v38, v42);

        goto LABEL_62;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "ControllerImpl.mm";
      v52 = 1024;
      v53 = 5152;
      v54 = 1024;
      LODWORD(v55) = v32;
      _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecordForStream: Error stopping record engine: %d", buf, 0x18u);
    }

    goto LABEL_59;
  }

LABEL_12:
  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_19;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
LABEL_19:
    v10 = v7;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = off_1E7EF6370[v6 - 2];
      *buf = 136315650;
      v51 = "ControllerImpl.mm";
      v52 = 1024;
      v53 = 5120;
      v54 = 2080;
      v55 = v11;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordForStream: Attempt to stop while stream is already %s. No-op.", buf, 0x1Cu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v12 != 0;
  v15 = v47;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_420;
  v47[3] = &unk_1E7EF5E28;
  v16 = v12;
  v17 = *(a1 + 72);
  v47[4] = v16;
  v47[5] = v17;
  v47[6] = v6;
  ControllerImpl::safeNotifyAlwaysAsync(v13, v14, v47);
LABEL_37:

  VCLocker::~VCLocker(v49);
LABEL_62:
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCAudioQueueRecordingEngine::stopRecording(AVVCAudioQueueRecordingEngine *this)
{
  v54 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v38, "stopRecording");
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v51, *(this + 1), *(this + 2));
    v5 = v51;
    if (v51)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v36, *(this + 1), *(this + 2));
      v25 = (*(*v36 + 64))(v36, 0);
      v6 = [v25 sessionState];
      v7 = "ILLEGAL";
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            v7 = "Activating";
          }

          else if (v6 == 7)
          {
            v7 = "Active";
          }
        }

        else if (v6 == 4)
        {
          v7 = "Deactivating";
        }

        else
        {
          v7 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v7 = "InteruptedWhileRecording";
        }

        else
        {
          v7 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v7 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v7 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v34, *(this + 1), *(this + 2));
    if (v34)
    {
      v8 = v35;
      if (v35)
      {
        v8 = (v35->__shared_owners_ + 1);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v34, *(v34 + 264), v8];
    }

    else
    {
      v9 = @"(0x0) use_count:0";
    }

    v10 = v9;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v32, *(this + 1), *(this + 2));
    v11 = v32;
    if (v32)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v30, *(this + 1), *(this + 2));
      v12 = (*(*v30 + 296))(v30);
      if (v12 > 4)
      {
        v13 = "ILLEGAL";
      }

      else
      {
        v13 = off_1E7EF6310[v12];
      }
    }

    else
    {
      v13 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v28, *(this + 1), *(this + 2));
    if (v28)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v26, *(this + 1), *(this + 2));
      v14 = *(v26 + 216);
      if (v14 > 6)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6338[v14];
      }

      *buf = 136316418;
      v40 = "AVVCAudioQueueRecordingEngine.mm";
      v41 = 1024;
      v42 = 1087;
      v43 = 2080;
      v44 = v7;
      v45 = 2112;
      v46 = v10;
      v47 = 2080;
      v48 = v13;
      v49 = 2080;
      v50 = v15;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    else
    {
      *buf = 136316418;
      v40 = "AVVCAudioQueueRecordingEngine.mm";
      v41 = 1024;
      v42 = 1087;
      v43 = 2080;
      v44 = v7;
      v45 = 2112;
      v46 = v10;
      v47 = 2080;
      v48 = v13;
      v49 = 2080;
      v50 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (v11 && v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (v5)
    {

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    goto LABEL_48;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*(this + 75))
  {
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v16 = *kAVVCScope;
        if (v16)
        {
          v17 = v16;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v40 = "AVVCAudioQueueRecordingEngine.mm";
            v41 = 1024;
            v42 = 1096;
            _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d stopRecordQueue: mRecordIsStopping set to true", buf, 0x12u);
          }
        }
      }
    }

    *(this + 244) = 1;
    AVVCRecordingEngine::setStreamState(this, 6);
    LODWORD(v51) = 4105;
    BYTE4(v51) = 1;
    v52 = 0u;
    v53 = 0u;
    kdebug_trace();
    ElapsedTime::ElapsedTime(buf, "stopRecording", "mRecordQueue : AudioQueueStop", 0);
    v18 = AudioQueueStop(*(this + 75), 1u);
    ElapsedTime::~ElapsedTime(buf);
    TraceWrapper::~TraceWrapper(&v51);
    if (kAVVCScope)
    {
      v19 = *kAVVCScope;
      if (!v19)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    v21 = v19;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(&v51, v18);
      v22 = " but failed";
      v40 = "AVVCAudioQueueRecordingEngine.mm";
      v41 = 1024;
      v42 = 1105;
      *buf = 136315906;
      if (!v18)
      {
        v22 = "";
      }

      v43 = 2080;
      v44 = v22;
      v45 = 2080;
      v46 = &v51;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d stopRecordQueue: AudioQueueStop%s err(%s)", buf, 0x26u);
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_66:
  TraceMethod::~TraceMethod(v38);
  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1BA5D941C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_422(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56) == 0;
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:? userInfo:?];
  (*(v1 + 16))(v1, v2, v3, v4);
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllerm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  *(*(*(a1 + 40) + 8) + 24) = [v7 code];
  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_semaphore_signal(v6);
  }
}

void AVVCRecordingEngine::doneRecording(AVVCRecordingEngine *this)
{
  v26 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v24, "doneRecording");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v22, *(this + 1), *(this + 2));
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN19AVVCRecordingEngine34serializedUpdateStreamStoppedStateEv_block_invoke;
  *&buf[24] = &__block_descriptor_40_e5_v8__0l;
  *&buf[32] = v22;
  if (!AVVCRecordingEngine::if_running_then(v22, buf))
  {
    goto LABEL_36;
  }

  (*(*v22 + 280))(v22);
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v2 = *kAVVCScope;
      if (v2)
      {
        v3 = v2;
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "AVVCRecordingEngine.mm";
          *&buf[12] = 1024;
          *&buf[14] = 985;
          _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d doneRecording: resetting mRecordIsStopping and mRecordIsPrimed", buf, 0x12u);
        }
      }
    }
  }

  v4 = v22;
  *(v22 + 244) = 0;
  (*(*v4 + 136))(v4);
  v5 = v22;
  v6 = *(v22 + 224);
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(v22 + 224) userInfo:0];
    v5 = v22;
  }

  else
  {
    v7 = 0;
  }

  if (*(v5 + 80) == 1)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_19:
        v12 = *(v5 + 88);
        if (v12)
        {
          (*(v12 + 16))(v12, *(v5 + 264), v6 == 0, *(v5 + 216), v7);
          v5 = v22;
        }

        *(v5 + 80) = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    v10 = v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = _Block_copy(*(this + 11));
      *buf = 136315906;
      *&buf[4] = "AVVCRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 997;
      *&buf[18] = 2048;
      *&buf[20] = v11;
      *&buf[28] = 2112;
      *&buf[30] = v7;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d doneRecording: calling mStartRecordCompletionBlock(%p) (notify start before stop). Error: %@", buf, 0x26u);
    }

    v5 = v22;
    goto LABEL_19;
  }

LABEL_22:
  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_26;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
LABEL_26:
    v15 = v13;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = _Block_copy(*(this + 12));
      *buf = 136315650;
      *&buf[4] = "AVVCRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1004;
      *&buf[18] = 2048;
      *&buf[20] = v16;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d calling mStopRecordCompletionBlock(%p)", buf, 0x1Cu);
    }

    v5 = v22;
  }

  v17 = *(v5 + 96);
  if (v17)
  {
    (*(v17 + 16))(v17, *(v5 + 264), v6 == 0, *(v5 + 216), v7);
    v5 = v22;
  }

  (*(*v5 + 288))(v5);
  if ((*(*v22 + 296))(v22) == 2)
  {
    v18 = +[AVVCMetricsManager sharedManager];
    [v18 resetAudioIssueDetector];

    v19 = +[AVVCMetricsManager sharedManager];
    [v19 disposeADAM];
  }

  v20 = *(v22 + 112);
  if (v20)
  {
    (*(v20 + 16))();
    AVVCRecordingEngine::setDidStopDelegateCompletionBlock(v22, 0);
  }

LABEL_36:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  TraceMethod::~TraceMethod(v24);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1BA5D9C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);

  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

BOOL AVVCRecordingEngine::if_running_then(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v4 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((a1 + 440));
  }

  v5 = *(a1 + 216);
  if (v5 >= 4)
  {
    v3[2](v3);
    goto LABEL_17;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 216);
    if (v8 > 6)
    {
      v9 = "ILLEGAL";
    }

    else
    {
      v9 = off_1E7EF6338[v8];
    }

    v12 = 136315650;
    v13 = "AVVCRecordingEngine.mm";
    v14 = 1024;
    v15 = 860;
    v16 = 2080;
    v17 = v9;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring action, since streamState is already %s", &v12, 0x1Cu);
  }

LABEL_17:
  if ((v4 & 1) == 0)
  {
    std::mutex::unlock((a1 + 440));
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5 > 3;
}

void sub_1BA5D9E08(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::mutex::unlock((v2 + 440));
  }

  _Unwind_Resume(a1);
}

void AVVCAudioQueueRecordingEngine::updateStreamStoppedState(AVVCAudioQueueRecordingEngine *this)
{
  if (*(this + 75))
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  AVVCRecordingEngine::setStreamState(this, v1);
}

uint64_t AVVCAudioQueueRecordingEngine::disposeAudioCaptures(AVVCAudioQueueRecordingEngine *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v3 = *(this + 9);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 9) = 0;
  }

  v4 = *(this + 105);
  if (v4)
  {
    (*(*v4 + 32))(v4);
    v5 = *(this + 105);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 105) = 0;
  }

  return 0;
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_309(uint64_t a1)
{
  *&v17[9] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = *(a1 + 40);
  if (WeakRetained && v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 56);
    v8 = *(v7 + 264);
    v9 = *(v7 + 224);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_311;
    v13[3] = &unk_1E7EF5C98;
    objc_copyWeak(v14, (a1 + 32));
    v14[1] = v8;
    v15 = v9;
    ControllerImpl::safeNotify(v5, "finishedRecording", v13);
    objc_destroyWeak(v14);
    objc_autoreleasePoolPop(v6);
    *buf = 4116;
    LOBYTE(v17[0]) = 0;
    memset(&v17[1], 0, 32);
    kdebug_trace();
    TraceWrapper::~TraceWrapper(buf);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *v17 = "ControllerImpl.mm";
    LOWORD(v17[2]) = 1024;
    *(&v17[2] + 2) = 3991;
    HIWORD(v17[3]) = 2048;
    *&v17[4] = WeakRetained;
    LOWORD(v17[6]) = 2048;
    *(&v17[6] + 2) = v5;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_17:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1BA5DA16C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_311(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained finishedRecording:*(a1 + 40) status:*(a1 + 48)];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 3996;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

BOOL ObjectExists(AVVoiceController *a1)
{
  v1 = a1;
  pthread_mutex_lock(&MapLocker::sMapLock);
  ObjectMap = GetObjectMap();
  v4 = ObjectMap + 8;
  v3 = *(ObjectMap + 8);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = ObjectMap + 8;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= v1;
    v8 = v6 < v1;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == v4 || *(v5 + 32) > v1)
  {
LABEL_9:
    v5 = ObjectMap + 8;
  }

  pthread_mutex_unlock(&MapLocker::sMapLock);

  return v5 != v4;
}

void sub_1BA5DA368(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&MapLocker::sMapLock);

  _Unwind_Resume(a1);
}

uint64_t GetObjectMap(void)
{
  result = sObjectMap;
  if (!sObjectMap)
  {
    pthread_mutex_lock(&sObjectMapCreationLock);
    if (!sObjectMap)
    {
      operator new();
    }

    pthread_mutex_unlock(&sObjectMapCreationLock);
    return sObjectMap;
  }

  return result;
}

void ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordMode_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void sub_1BA5DA8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ControllerImpl::getAVVCSessionState(ControllerImpl *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN14ControllerImpl19getAVVCSessionStateEm_block_invoke;
  v4[3] = &unk_1E7EF5EC8;
  v4[5] = this;
  v4[6] = a2;
  v4[4] = &v5;
  makeSynchronous(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN14ControllerImpl19getAVVCSessionStateEm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl19getAVVCSessionStateEm_block_invoke_2;
  v11[3] = &unk_1E7EF5F18;
  v6 = a1[4];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl19getAVVCSessionStateEmU13block_pointerFvm16AVVCSessionStateP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getAVVCSessionState");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA5DAAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19getAVVCSessionStateEmU13block_pointerFvm16AVVCSessionStateP7NSErrorE_block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = ControllerImpl::sessionManagerForStreamID(a1[5], a1[7], 0);
  v3 = v2;
  if (!v2)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_12:
        v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
        v6 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[7];
      *buf = 136315650;
      v22 = "ControllerImpl.mm";
      v23 = 1024;
      v24 = 5392;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Cannot find sessionManager for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_12;
  }

  v4 = [v2 sessionState] - 1;
  if (v4 > 6)
  {
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = qword_1BA6CF628[v4];
  }

LABEL_13:
  v10 = a1[4];
  v11 = a1[5];
  v12 = v10 != 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZN14ControllerImpl19getAVVCSessionStateEmU13block_pointerFvm16AVVCSessionStateP7NSErrorE_block_invoke_445;
  v16[3] = &unk_1E7EF5EF0;
  v13 = v10;
  v19 = a1[7];
  v20 = v6;
  v17 = v5;
  v18 = v13;
  v14 = v5;
  ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v16);

  v15 = *MEMORY[0x1E69E9840];
}

NSObject *___ZN14ControllerImpl19getAVVCSessionStateEm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t ControllerImpl::setAlertURL(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURL_block_invoke;
  v13[3] = &unk_1E7EF5B58;
  v17 = a1;
  v9 = v7;
  v14 = v9;
  v18 = a3;
  v10 = v8;
  v15 = v10;
  v16 = &v19;
  makeSynchronous(v13);
  v11 = *(v20 + 6);

  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_1BA5DAEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURL_block_invoke_2;
  v17[3] = &unk_1E7EF5B30;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = v3;
  v19 = v7;
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = v17;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v27, *(v8 + 8), *(v8 + 16));
  v13 = v27;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3321888768;
  v20[2] = ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURLU13block_pointerFviE_block_invoke;
  v20[3] = &unk_1F3848518;
  v14 = v11;
  v26 = v4;
  v21 = v14;
  v24 = v27;
  v25 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v10;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  ControllerImpl::safeWork(v13, v20, "setAlertURL");

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_1BA5DB07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURLU13block_pointerFviE_block_invoke(uint64_t a1)
{
  TraceMethod::TraceMethod(v18, "setAlertURL");
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
    v4 = ControllerImpl::setupAlert(*(a1 + 56), *(a1 + 40), *(a1 + 72), v3);
  }

  else
  {
    v5 = *(a1 + 72) - 1;
    if (v5 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(&off_1E7EF6270 + v5);
    }

    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v4 = ControllerImpl::setupAlert(*(a1 + 56), *(a1 + 40), *(a1 + 72), v3);
  }

  v7 = v4;
  v8 = *(*(a1 + 56) + 280);
  if (!v8)
  {
LABEL_14:
    operator new();
  }

  v9 = *(a1 + 72);
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = *(v8 + 8);
      if (v9 >= v11)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_14;
      }
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  objc_storeStrong(v10 + 5, v3);
  v12 = *(a1 + 56);
  if (*(v12 + 360) == 201)
  {
    ControllerImpl::setAlertQueueState(*(a1 + 56), 200);
    v12 = *(a1 + 56);
  }

  v13 = *(a1 + 48);
  v14 = v13 != 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURLU13block_pointerFviE_block_invoke_2;
  v15[3] = &unk_1E7EF5A18;
  v16 = v13;
  v17 = v7;
  ControllerImpl::safeNotifyAlwaysAsync(v12, v14, v15);

  TraceMethod::~TraceMethod(v18);
}

void sub_1BA5DB2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void *AVAudioCompressedBuffer.packetDependencies.getter()
{
  result = [v0 packetDependencies];
  if (result)
  {
    v2 = result;
    v3 = [v0 packetCount];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BA5DB428(v3, 0);
      memcpy(v5 + 4, v2, 16 * v4);
      return v5;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1BA5DB428(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC09F08, &qword_1BA6CF0A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BA5DB508(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA5DB528(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for AudioStreamPacketDependencyDescription()
{
  if (!qword_1EBC09F10)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBC09F10);
    }
  }
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA5DB818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1BFAF5800](v3, 0x10B1C40DE6C58B7);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    std::recursive_mutex::unlock(*(a1 + 16));
  }

  if (*(a1 + 8) == 1)
  {
    std::recursive_mutex::unlock(*a1);
  }

  return a1;
}

void sub_1BA5DB9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1BFAF5800](v9, 0x10B1C40BCBC013ALL);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(&a9);
  _Unwind_Resume(a1);
}

void AVAudioGenericIONodeImpl::AVAudioGenericIONodeImpl(AVAudioGenericIONodeImpl *this, BOOL a2, AVAudioEngineManualRenderingMode a3)
{
  v3 = xmmword_1BA6CF2F0;
  v4 = 0;
  AVAudioNodeImpl::AVAudioNodeImpl(this, 0, &v3, 0);
}

void AVAudioUnitImpl::~AVAudioUnitImpl(id *this)
{
  *this = &unk_1F384C120;

  this[2] = 0;

  AVAudioNodeImpl::~AVAudioNodeImpl(this);
}

{
  AVAudioUnitImpl::~AVAudioUnitImpl(this);

  JUMPOUT(0x1BFAF5800);
}

uint64_t AVAudioNodeImplBase::IsPlayingImpl(AVAudioNodeImplBase *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    LOBYTE(v1) = *(this + 48);
  }

  return v1 & 1;
}

uint64_t AVAudioNodeImplBase::Clock(AVAudioNodeImplBase *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = (*(*this + 424))(this);
    *(this + 2) = result;
  }

  return result;
}

void AVAudioNodeImplBase::Stop(AVAudioNodeImplBase *this)
{
  (*(*this + 456))(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);

    AVAudioEngineImpl::NodeRenderingStateChanged(v3, this);
  }
}

void AVAudioNodeImplBase::Pause(AVAudioNodeImplBase *this)
{
  (*(*this + 448))(this);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(v2 + 8);

    AVAudioEngineImpl::NodeRenderingStateChanged(v3, this);
  }
}

void AVAudioNodeImplBase::Start(AVAudioNodeImplBase *this, AVAudioTime *a2)
{
  (*(*this + 440))(this, a2);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(v3 + 8);

    AVAudioEngineImpl::NodeRenderingStateChanged(v4, this);
  }
}

uint64_t AVAudioNodeImplBase::SetManualRenderingMode(AVAudioNodeImplBase *this, unsigned int a2, AVAudioEngineManualRenderingMode a3)
{
  *(this + 72) = a2;
  if (a2)
  {
    v4 = a3;
  }

  else
  {
    v4 = AVAudioEngineManualRenderingModeRealtime;
  }

  *(this + 10) = v4;
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = (*(*this + 40))(this);
  result = (*(*v6 + 184))(v6, v5);
  *(this + 49) = v5;
  return result;
}

uint64_t AVAudioNodeImpl::GetComponentDescription(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 16);

  return v1();
}

uint64_t AVAudioNodeImpl::GetAudioUnitV3(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 304);

  return v1();
}

uint64_t AVAudioNodeImpl::GetAudioUnitV2(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 272);

  return v1();
}

uint64_t AVAudioNodeImplBase::RemoveRenderCallback(AVAudioNodeImplBase *this, uint64_t a2, const AURenderCallbackStruct *a3)
{
  v5 = (*(*this + 40))(this);
  v6 = *(*v5 + 216);

  return v6(v5, a2, a3);
}

uint64_t AVAudioNodeImplBase::AddRenderCallback(AVAudioNodeImplBase *this, uint64_t a2, const AURenderCallbackStruct *a3)
{
  v5 = (*(*this + 40))(this);
  v6 = *(*v5 + 208);

  return v6(v5, a2, a3);
}

uint64_t AVAudioNodeImplBase::RemoveRenderObserver(AVAudioNodeImplBase *this, const AURenderCallbackStruct *a2)
{
  v3 = (*(*this + 40))(this);
  v4 = *(*v3 + 200);

  return v4(v3, a2);
}

uint64_t AVAudioNodeImplBase::AddRenderObserver(AVAudioNodeImplBase *this, const AURenderCallbackStruct *a2)
{
  v3 = (*(*this + 40))(this);
  v4 = *(*v3 + 192);

  return v4(v3, a2);
}

uint64_t AVAudioNodeImpl::SetNumberOutputs(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 112);

  return v1();
}

uint64_t AVAudioNodeImpl::SetNumberInputs(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 104);

  return v1();
}

uint64_t AVAudioNodeImpl::NumberOutputs(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 96);

  return v1();
}

uint64_t AVAudioNodeImpl::NumberInputs(AVAudioNodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 88);

  return v1();
}

uint64_t AVAudioNodeImpl::AVAE_CheckNodeHasEngine(uint64_t this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(this + 160) && !*(this + 8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v1 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v4 = "AVAEInternal.h";
      v5 = 1024;
      v6 = 71;
      v7 = 2080;
      v8 = "AVAudioNodeImpl.h";
      v9 = 1024;
      v10 = 300;
      v11 = 2080;
      v12 = "AVAE_CheckNodeHasEngine";
      v13 = 2080;
      v14 = "_engine != nil";
      _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    this = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_engine != nil"}];
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

void AVAudioGenericIONodeImpl::~AVAudioGenericIONodeImpl(id *this)
{
  AVAudioUnitImpl::~AVAudioUnitImpl(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA5DD250(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 96));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

BOOL std::lock[abi:ne200100]<std::recursive_mutex,std::recursive_mutex>(std::recursive_mutex *this, std::recursive_mutex *a2)
{
  while (1)
  {
    std::recursive_mutex::lock(this);
    result = std::recursive_mutex::try_lock(a2);
    if (result)
    {
      break;
    }

    std::recursive_mutex::unlock(this);
    sched_yield();
    std::recursive_mutex::lock(a2);
    result = std::recursive_mutex::try_lock(this);
    if (result)
    {
      break;
    }

    std::recursive_mutex::unlock(a2);
    sched_yield();
  }

  return result;
}

void sub_1BA5DD364(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 96));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA5DDCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DDDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DDED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DDFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DE080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DE144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DE21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DE2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_1BA5DE3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t ___Z26isAVOutputContextAvailablev_block_invoke()
{
  getAVOutputContextClass();
  result = objc_opt_class();
  isAVOutputContextAvailable(void)::wirelessSplitterModeAPIAvailable = result != 0;
  return result;
}

Class ___ZL23getAVOutputContextClassv_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!AVFoundationLibraryCore(char **)::frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = ___ZL23AVFoundationLibraryCorePPc_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E7EF51B8;
    v10 = 0;
    AVFoundationLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!AVFoundationLibraryCore(char **)::frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFoundationLibrary()"];
    [v4 handleFailureInFunction:v5 file:@"AVVCCarplayRuntimeAvailability.mm" lineNumber:50 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("AVOutputContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVOutputContextClass()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"AVVCCarplayRuntimeAvailability.mm" lineNumber:51 description:{@"Unable to find class %s", "AVOutputContext"}];

LABEL_10:
    __break(1u);
  }

  getAVOutputContextClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL23AVFoundationLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void XPC_Dictionary::~XPC_Dictionary(XPC_Dictionary *this)
{
  XPC_Object::~XPC_Object(this);

  JUMPOUT(0x1BFAF5800);
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

__CFString *GetModelPathComponent(void)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MGIsQuestionValid())
  {
    v0 = MGGetSInt32Answer();
    if (v0 >= 1)
    {
      v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%d", @"AID", v0];
      goto LABEL_58;
    }
  }

  else
  {
    LODWORD(v0) = 0;
  }

  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "AVVCUtils.mm";
    v12 = 1024;
    v13 = 547;
    v14 = 1024;
    v15 = v0;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Acoustic ID returned %d. Lets try the older method to load DSP graph", buf, 0x18u);
  }

LABEL_12:
  v4 = MGGetProductType();
  v5 = v4;
  if (v4 <= 1492264614)
  {
    if (v4 > 648163783)
    {
      if (v4 > 1064539871)
      {
        if (v4 == 1064539872)
        {
          v1 = @"J152f";
          goto LABEL_58;
        }

        if (v4 == 1102220960)
        {
          v1 = @"J680";
          goto LABEL_58;
        }
      }

      else
      {
        if (v4 == 648163784)
        {
          v1 = @"J223";
          goto LABEL_58;
        }

        if (v4 == 995309656)
        {
          v1 = @"J230k";
          goto LABEL_58;
        }
      }
    }

    else if (v4 > 463077441)
    {
      if (v4 == 463077442)
      {
        v1 = @"J137";
        goto LABEL_58;
      }

      if (v4 == 647612397)
      {
        v1 = @"J215";
        goto LABEL_58;
      }
    }

    else
    {
      if (v4 == 95249044)
      {
        v1 = @"J132";
        goto LABEL_58;
      }

      if (v4 == 376943508)
      {
        v1 = @"J327";
        goto LABEL_58;
      }
    }

    goto LABEL_50;
  }

  if (v4 <= 2799443389)
  {
    if (v4 > 2325660397)
    {
      if (v4 == 2325660398)
      {
        v1 = @"J214k";
        goto LABEL_58;
      }

      if (v4 == 2440616150)
      {
        v1 = @"J213";
        goto LABEL_58;
      }

      goto LABEL_50;
    }

    if (v4 != 1492264615)
    {
      if (v4 == 1568600092)
      {
        v1 = @"J214";
        goto LABEL_58;
      }

      goto LABEL_50;
    }

LABEL_30:
    v1 = @"J185";
    goto LABEL_58;
  }

  if (v4 <= 3273904383)
  {
    if (v4 == 2799443390)
    {
      v1 = @"J140a";
      goto LABEL_58;
    }

    if (v4 != 3019628807)
    {
      goto LABEL_50;
    }

    goto LABEL_30;
  }

  if (v4 == 3273904384)
  {
    v1 = @"J780";
    goto LABEL_58;
  }

  if (v4 == 3457645855)
  {
    v1 = @"J140K";
    goto LABEL_58;
  }

LABEL_50:
  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_54;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_54:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "AVVCUtils.mm";
      v12 = 1024;
      v13 = 646;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected product 0x%x will not load DSP graph", buf, 0x18u);
    }
  }

  v1 = @"???";
LABEL_58:
  v8 = *MEMORY[0x1E69E9840];

  return v1;
}

id GetLowercaseModelName(void)
{
  v0 = GetModelPathComponent();
  v1 = [v0 lowercaseString];

  return v1;
}

uint64_t ___Z17isDarwinOSProductv_block_invoke()
{
  result = os_variant_is_darwinos();
  isDarwinOSProduct(void)::isDarwinOS = result;
  return result;
}

void UpdateWithHardwareDeviceNumInputChannels(unsigned int *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (isDarwinOSProduct(void)::isDarwinOS == 1)
  {
    v2 = MGGetProductType();
    if (v2 == 376943508)
    {
      *a1 = 10;
    }

    else
    {
      v3 = v2;
      if (kAVVCScope)
      {
        v4 = *kAVVCScope;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
        v5 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        v8 = 136315906;
        v9 = "AVVCUtils.mm";
        v10 = 1024;
        v11 = 855;
        v12 = 1024;
        v13 = v3;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Product 0x%x, numChannels unchanged at: %u", &v8, 0x1Eu);
      }
    }
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

__CFString *ExtractProcessNameFromString(NSString *a1)
{
  v1 = a1;
  if (v1)
  {
    v12 = 0;
    v2 = objc_msgSend(MEMORY[0x1E696AE70], "regularExpressionWithPattern:options:error:", @"(?<=,)(.*)(?=\\()"), 0, &v12;
    v3 = v12;
    v4 = [v2 firstMatchInString:v1 options:0 range:{0, -[NSString length](v1, "length")}];
    v5 = &stru_1F384E730;
    v6 = v4;
    if (v4)
    {
      v7 = [v4 range];
      v9 = [(NSString *)v1 substringWithRange:v7, v8];
      v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v5 = [v9 stringByTrimmingCharactersInSet:v10];
    }
  }

  else
  {
    v5 = &stru_1F384E730;
  }

  return v5;
}

uint64_t ___Z23isAudioSessionAvailablev_block_invoke()
{
  result = objc_opt_class();
  isAudioSessionAvailable(void)::audioSessionAvailable = result != 0;
  return result;
}

uint64_t ___Z26isAudioStatisticsAvailablev_block_invoke()
{
  result = objc_opt_class();
  isAudioStatisticsAvailable(void)::audioStatisticsAvailable = result != 0;
  return result;
}

void ___Z22IsSerializationEnabledv_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avfoundation.avvc"];
  v1 = [v0 objectForKey:@"enable_serialization"];

  if (v1)
  {
    IsSerializationEnabled(void)::enable = [v0 BOOLForKey:@"enable_serialization"];
  }

  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = " NOT";
    v7 = "AVVCUtils.mm";
    v6 = 136315650;
    if (IsSerializationEnabled(void)::enable)
    {
      v4 = "";
    }

    v8 = 1024;
    v9 = 1219;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC_SERIALIZATION_POLICY_LOCK is%s enabled", &v6, 0x1Cu);
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
}

BOOL ExecuteBlockOnRunLoop(__CFRunLoop *a1, dispatch_time_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = dispatch_semaphore_create(0);
  v7 = *MEMORY[0x1E695E8E0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___Z21ExecuteBlockOnRunLoopP11__CFRunLoop18AVVCBlockingPolicyyU13block_pointerFvvE_block_invoke;
  block[3] = &unk_1E7EF5D38;
  v8 = v5;
  v17 = v8;
  v18 = 1;
  v9 = v6;
  v16 = v9;
  CFRunLoopPerformBlock(a1, v7, block);
  CFRunLoopWakeUp(a1);
  v10 = dispatch_semaphore_wait(v9, a2);
  if (v10)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVVCUtils.mm";
      v21 = 1024;
      v22 = 1279;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d runloop block timeout!", buf, 0x12u);
    }
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
  return v10 != 0;
}

intptr_t ___Z21ExecuteBlockOnRunLoopP11__CFRunLoop18AVVCBlockingPolicyyU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

void CallbackBarrier(__CFRunLoop *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "AVVCUtils.mm";
    v12 = 1024;
    v13 = 1290;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d waiting for any in-flight AudioQueue property change message on run loop...", &v10, 0x12u);
  }

LABEL_8:
  v4 = dispatch_time(0, 9000000000);
  if (!ExecuteBlockOnRunLoop(a1, v4, 0))
  {
    goto LABEL_16;
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "AVVCUtils.mm";
    v12 = 1024;
    v13 = 1295;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d CallbackBarrier: 9 second timeout!", &v10, 0x12u);
  }

LABEL_16:
  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315394;
    v11 = "AVVCUtils.mm";
    v12 = 1024;
    v13 = 1297;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d received all AudioQueue property change messages on run loop.", &v10, 0x12u);
  }

LABEL_23:
  v9 = *MEMORY[0x1E69E9840];
}

void ___Z20IsMetricsOwnedByAVVCv_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avfoundation.avvc"];
  v1 = [v0 objectForKey:@"avvc_owned_metrics"];

  if (v1)
  {
    IsMetricsOwnedByAVVC(void)::owned = [v0 BOOLForKey:@"avvc_owned_metrics"];
  }

  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = " NOT";
    v7 = "AVVCUtils.mm";
    v6 = 136315650;
    if (IsMetricsOwnedByAVVC(void)::owned)
    {
      v4 = "";
    }

    v8 = 1024;
    v9 = 1342;
    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Metrics is%s owned by AVVC", &v6, 0x1Cu);
  }

LABEL_12:
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t GetTrailingSilenceFromBuffer(__int16 *a1, uint64_t a2, float a3)
{
  v38 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v37, "GetTrailingSilenceFromBuffer", 0, 0);
  if (a2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1;
    v7 = a2;
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 < 0)
      {
        v8 = -v8;
      }

      if (v8 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
  }

  v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avfoundation.avvc"];
  v11 = [v10 objectForKey:@"beep_silence_threshold"];
  v12 = v11 == 0;

  if (v12)
  {
    v14 = 0.0;
  }

  else
  {
    [v10 floatForKey:@"beep_silence_threshold"];
    v14 = v13;
  }

  v15 = v5;
  v16 = (v14 * v5);
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &a1[a2 - 1];
    while (1)
    {
      v20 = *v18--;
      v19 = v20;
      if (v20 < 0)
      {
        v19 = -v19;
      }

      if (v19 > v16)
      {
        break;
      }

      if (a2 == ++v17)
      {
        v17 = a2;
        break;
      }
    }
  }

  if (kAVVCScope)
  {
    v21 = *kAVVCScope;
    if (!v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 136316418;
    v26 = "AVVCUtils.mm";
    v27 = 1024;
    v28 = 1468;
    v29 = 1024;
    v30 = v15;
    v31 = 1024;
    v32 = v16;
    v33 = 2048;
    v34 = v14;
    v35 = 2048;
    v36 = v17;
    _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d max: %hd, threshold %hd threshold: %f silenceFrames: %lld", &v25, 0x32u);
  }

LABEL_28:
  ElapsedTime::~ElapsedTime(v37);
  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1BA5E0028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

uint64_t ___Z29isAVSystemControllerAvailablev_block_invoke()
{
  result = objc_opt_class();
  isAVSystemControllerAvailable(void)::isAvailable = result != 0;
  return result;
}

uint64_t isNSStringEmptyOrNil(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 isEqualToString:&stru_1F384E730];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t AVVCPluginRecordingEngine::_asbdForClientSettings(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v44 = a3;
  v6 = 0;
  LODWORD(v46) = 0;
  v7 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v8 = [v5 supportedFormats];
    v9 = [v8 count] > v6;

    if (!v9)
    {
      break;
    }

    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v7;
      v10 = v7;
    }

    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v5 supportedFormats];
      v14 = [v13 objectAtIndexedSubscript:v6];
      v15 = [v14 debugDescription];
      HIDWORD(v46) = 136315906;
      v47 = "AVVCPluginRecordingEngine.mm";
      v48 = 1024;
      v49 = 386;
      v50 = 1024;
      *v51 = v6;
      *&v51[4] = 2112;
      *&v51[6] = v15;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d supported Formats[%d] : %@ ", &v46 + 4, 0x22u);
    }

LABEL_10:
    ++v6;
  }

  v16 = [v5 supportedFormats];
  v17 = [v16 objectAtIndexedSubscript:0];

  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  v20 = v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v17 debugDescription];
    HIDWORD(v46) = 136315650;
    v47 = "AVVCPluginRecordingEngine.mm";
    v48 = 1024;
    v49 = 392;
    v50 = 2112;
    *v51 = v21;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using Format[0] : %@ ", &v46 + 4, 0x1Cu);
  }

LABEL_18:
  if (v17)
  {
    if (*([v17 streamDescription] + 8) == 1869641075)
    {
      goto LABEL_20;
    }

    if (*([v17 streamDescription] + 8) == 1936745848)
    {
      v26 = [v17 streamDescription];
      v27 = *v26;
      v28 = *(v26 + 16);
      a4[4] = *(v26 + 32);
      *a4 = v27;
      *(a4 + 1) = v28;
      a4[2] = 0x14000000046;
      goto LABEL_32;
    }

    if (*([v17 streamDescription] + 8) == 1819304813)
    {
LABEL_20:
      v22 = [v17 streamDescription];
      v24 = *v22;
      v25 = *(v22 + 16);
      a4[4] = *(v22 + 32);
      *a4 = v24;
      *(a4 + 1) = v25;
      goto LABEL_32;
    }
  }

  if (!kAVVCScope)
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
    goto LABEL_28;
  }

  v29 = *kAVVCScope;
  if (v29)
  {
LABEL_28:
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(v46) = 136315394;
      v47 = "AVVCPluginRecordingEngine.mm";
      v48 = 1024;
      v49 = 407;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d No Format specified.. Error", &v46 + 4, 0x12u);
    }
  }

  LODWORD(v46) = 5;
LABEL_32:
  v45 = 0;
  if (getFloat64ForKey(v44, &v45, &v46, v23))
  {
    if (kAVVCScope)
    {
      v31 = *kAVVCScope;
      if (!v31)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *a4;
      HIDWORD(v46) = 136315906;
      v47 = "AVVCPluginRecordingEngine.mm";
      v48 = 1024;
      v49 = 413;
      v50 = 2048;
      *v51 = v45;
      *&v51[8] = 2048;
      *&v51[10] = v33;
      v34 = "%25s:%-5d clientRequestedSR was:%.2f, setting to %.2f";
      v35 = v31;
      v36 = 38;
      goto LABEL_45;
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v31 = *kAVVCScope;
      if (!v31)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v31 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *a4;
      HIDWORD(v46) = 136315650;
      v47 = "AVVCPluginRecordingEngine.mm";
      v48 = 1024;
      v49 = 416;
      v50 = 2048;
      *v51 = v38;
      v34 = "%25s:%-5d clientRequestedSR was not specified, setting to %.2f";
      v35 = v31;
      v36 = 28;
LABEL_45:
      _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_DEFAULT, v34, &v46 + 4, v36);
    }
  }

LABEL_47:
  (*(*a1 + 40))(a1, *a4);
  v39 = LODWORD(v46);

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t AVVCPluginRecordingEngine::getRecordRoute(uint64_t *a1, void **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(a1);
  v5 = a1[46];
  v6 = v4;
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v7 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((v5 + 56));
  }

  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 remoteInputDeviceName];
      v9 = [v8 copy];
      v10 = *v5;
      *v5 = v9;

      goto LABEL_23;
    }

    v14 = *v5;
    *v5 = @"Error! No RemoteInputDeviceName property";

    if (kAVVCScope)
    {
      v15 = *kAVVCScope;
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315394;
      v31 = "AVVCRouteManager.mm";
      v32 = 1024;
      v33 = 79;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d active device doesn't support remoteInputDeviceName property", &v30, 0x12u);
    }

LABEL_23:
    v20 = objc_opt_respondsToSelector();
    if (v20)
    {
      v21 = [v6 deviceCategory];
      *(v5 + 8) = v21;
      v22 = MEMORY[0x1E696AEC0];
      if (v21 <= 1919512179)
      {
        if (v21 != 1919510644)
        {
          if (v21 == 1919511158)
          {
            v23 = &AVVoiceControllerRemoteInputJarvisRoute;
LABEL_37:
            v24 = [v22 stringWithString:*v23];
LABEL_38:
            v17 = v24;
            if (v24)
            {
              v18 = 0;
            }

            else
            {
              v17 = @"No Record Route";
              v25 = @"No Record Route";
              v18 = 4294955512;
            }

            v26 = [(__CFString *)v17 copy];
            v27 = *(v5 + 32);
            *(v5 + 32) = v26;

            goto LABEL_42;
          }

LABEL_34:
          v23 = AVVoiceControllerNoRecordRoute;
          goto LABEL_37;
        }

LABEL_31:
        v23 = &AVVoiceControllerBluetoothDoAPRoute;
        goto LABEL_37;
      }

      if (v21 == 1919512180)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithString:@"AVVCTestDevice"];
        goto LABEL_38;
      }

      if (v21 != 1919513718)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (caulk::product::get_device_class(v20) != 4 || (MGGetBoolAnswer() & 1) != 0)
      {
        v22 = MEMORY[0x1E696AEC0];
        goto LABEL_31;
      }

      v22 = MEMORY[0x1E696AEC0];
    }

    v23 = &AVVoiceControllerATVRemoteInputRoute;
    goto LABEL_37;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithString:@"No Record Route"];
  v12 = *(v5 + 32);
  *(v5 + 32) = v11;

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
    goto LABEL_15;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
LABEL_15:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315650;
      v31 = "AVVCRouteManager.mm";
      v32 = 1024;
      v33 = 71;
      v34 = 1024;
      v35 = 2;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::getRecordRoute : no matching device found, error : %d", &v30, 0x18u);
    }
  }

  v17 = *v5;
  *v5 = @"Error! No Remote Device Found";
  v18 = 2;
LABEL_42:

  if ((v7 & 1) == 0)
  {
    std::mutex::unlock((v5 + 56));
  }

  AVVCRouteManager::getRecordRoute(a1[46], a2);
  v28 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1BA5E0BC0(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    std::mutex::unlock((v3 + 56));
  }

  _Unwind_Resume(a1);
}

id AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(AVVCPluginRecordingEngine *this)
{
  *&v18[5] = *MEMORY[0x1E69E9840];
  v2 = AVVCRouteManager::getRecordDeviceUID(*(this + 46));
  v3 = v2;
  if (*(this + 34) != 1936750196)
  {
    if (!v2)
    {
      if (kAVVCScope)
      {
        v5 = *kAVVCScope;
        if (!v5)
        {
          v4 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "AVVCPluginRecordingEngine.mm";
        v15 = 1024;
        v16 = 68;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d device identifier shouldn't be NULL... ", &v13, 0x12u);
      }

      v4 = 0;
      goto LABEL_24;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_19:
        v4 = [*(this + 75) findDeviceWithIdentifier:v3];
        goto LABEL_25;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "AVVCPluginRecordingEngine.mm";
      v15 = 1024;
      v16 = 71;
      v17 = 2112;
      *v18 = v3;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d device identifier : %@", &v13, 0x1Cu);
    }

    goto LABEL_19;
  }

  v4 = [*(this + 75) findFirstBluetoothDevice];
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
LABEL_13:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 34);
      v13 = 136315906;
      v14 = "AVVCPluginRecordingEngine.mm";
      v15 = 1024;
      v16 = 63;
      v17 = 1024;
      v18[0] = v8;
      LOWORD(v18[1]) = 2048;
      *(&v18[1] + 2) = v4;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d finding the first device for activation mode (%{audio:4CC}d)  : %p", &v13, 0x22u);
    }

LABEL_24:

    goto LABEL_25;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_25:

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t AVVCPluginRecordingEngine::setSessionIsRecordingFlag(AVVCPluginRecordingEngine *this)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v19 = 0;
  isSessionRecording = AVVCRecordingEngine::isSessionRecording(this);
  v3 = (*(*this + 64))(this, 0);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v16, *(this + 1), *(this + 2));
  v5 = v16;
  v4 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN25AVVCPluginRecordingEngine25setSessionIsRecordingFlagEv_block_invoke;
  v9[3] = &unk_1F3848550;
  v13 = v5;
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  v15 = isSessionRecording;
  v10 = v6;
  v11 = v18;
  v12 = &v20;
  (*(*this + 336))(this, v9, "setSessionIsRecordingFlag");
  v7 = *(v21 + 6);

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  return v7;
}

void sub_1BA5E10A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose((v28 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void ___ZN25AVVCPluginRecordingEngine25setSessionIsRecordingFlagEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      if (v5)
      {
        v6 = *(a1 + 72);
        v7 = *(a1 + 32);
        v8 = *(*(a1 + 40) + 8);
        obj = *(v8 + 40);
        [v7 setRecordingFromRemoteInput:v6 error:&obj];
        objc_storeStrong((v8 + 40), obj);
        v9 = *(*(*(a1 + 40) + 8) + 40);
        if (v9)
        {
          *(*(*(a1 + 48) + 8) + 24) = [v9 code];
        }

        if (!*(*(*(a1 + 48) + 8) + 24))
        {
          if (*(a1 + 72))
          {
            v10 = 1;
          }

          else
          {
            v10 = 2;
          }

          AVVCRecordingEngine::setRecordMode(v5, v10);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __destroy_helper_block_ea8_56c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_56c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
}

uint64_t AVVCPluginRecordingEngine::disposeAudioCaptures(AVVCPluginRecordingEngine *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 32))(v2);
    v3 = *(this + 9);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 9) = 0;
  }

  return 0;
}

uint64_t AVVCPluginRecordingEngine::logAudioCaptures(AVVCPluginRecordingEngine *this, AVVCAudioCapturer *a2, AVAudioBuffer *a3, uint64_t a4)
{
  v6 = a3;
  if (a2)
  {
    (*(*a2 + 24))(a2, v6, a4);
  }

  return 0;
}

uint64_t AVVCPluginRecordingEngine::setupAudioCaptures(AVVCPluginRecordingEngine *this)
{
  v2 = *(this + 40);
  v5[0] = *(this + 24);
  v5[1] = v2;
  v6 = *(this + 7);
  v3 = NewAVVCAudioCapturer();
  *(this + 9) = v3;
  if (v3)
  {
    (*(*v3 + 16))(v3, *(this + 33), v5, 0);
  }

  return 0;
}

void AVVCPluginRecordingEngine::handleRecordInput(AVVCPluginRecordingEngine *this, AVAudioBuffer *a2, int a3, float *a4, const AudioTimeStamp *a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    mSampleTime = a5->mSampleTime;
    mHostTime = a5->mHostTime;
    *buf = 136316162;
    v63 = "AVVCPluginRecordingEngine.mm";
    v64 = 1024;
    v65 = 595;
    v66 = 1024;
    *v67 = a3;
    *&v67[4] = 2048;
    *&v67[6] = mHostTime;
    *&v67[14] = 2048;
    *&v67[16] = mSampleTime;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d In AVVCPluginRecordingEngine::handleRecordInput: %u frames, hostTime : %lld, sampletime : %f", buf, 0x2Cu);
  }

LABEL_8:
  if (*(this + 632) != 1)
  {
    goto LABEL_24;
  }

  v14 = mach_absolute_time();
  v15 = *(this + 78);
  v16 = __udivti3();
  if (v14 >= v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v16;
  }

  if (!kAVVCScope)
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
LABEL_16:
    v20 = v18;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v60, *(this + 1), *(this + 2));
      if (a5)
      {
        v22 = a5->mSampleTime;
        v21 = a5->mHostTime;
      }

      else
      {
        v21 = 0;
        v22 = 0.0;
      }

      v23 = *(this + 78);
      *buf = 136316930;
      v63 = "AVVCPluginRecordingEngine.mm";
      v64 = 1024;
      v65 = 601;
      v66 = 2048;
      *v67 = v60;
      *&v67[8] = 2048;
      *&v67[10] = v14;
      *&v67[18] = 2048;
      *&v67[20] = v21;
      *v68 = 2048;
      *&v68[2] = v22;
      v69 = 2048;
      v70 = v23;
      v71 = 2048;
      v72 = v17 / 1000000.0;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First callback - Plugin engine (%p) - Now:(ht: %llu), BuffStartTime:(ht: %llu st: %f), SiriRequestedStartTime:(ht: %llu). Now-SiriRequestedStartTime: %0.6f ms", buf, 0x4Eu);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }
    }

    goto LABEL_23;
  }

  v18 = *kAVVCScope;
  if (v18)
  {
    goto LABEL_16;
  }

LABEL_23:
  *(this + 632) = 0;
LABEL_24:
  v24 = *(this + 27);
  if ((v24 == 6 || v24 <= 3) && (*(this + 245) & 1) == 0)
  {
    if (kAVVCScope)
    {
      v33 = *kAVVCScope;
      if (!v33)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    v25 = v33;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(this + 27);
      if (v38 > 6)
      {
        v39 = "ILLEGAL";
      }

      else
      {
        v39 = off_1E7EF6338[v38];
      }

      v47 = *(this + 245);
      *buf = 136315906;
      v63 = "AVVCPluginRecordingEngine.mm";
      v64 = 1024;
      v65 = 608;
      v66 = 2080;
      *v67 = v39;
      *&v67[8] = 1024;
      *&v67[10] = v47;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::handleRecordInput: record internally stopped, so throwing away buffer. StreamState(%s). RecordCancelled(%d)", buf, 0x22u);
    }

    goto LABEL_72;
  }

  if (v9 || v24 != 5)
  {
    v26 = [(AVAudioBuffer *)v9 format];
    v27 = *([v26 streamDescription] + 8);

    if (v27 != 1936745848)
    {
      if (v27 != 1869641075)
      {
        if (v27 == 1819304813)
        {
          v28 = v9;
          v29 = [(AVAudioBuffer *)v28 format];
          v30 = *([v29 streamDescription] + 24);
          [(AVAudioBuffer *)v28 frameLength];

          v31 = a5->mHostTime;
          v32 = v28;
          operator new();
        }

        if (kAVVCScope)
        {
          v25 = *kAVVCScope;
          if (!v25)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v25 = MEMORY[0x1E69E9C10];
          v48 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *buf = 136315650;
        v63 = "AVVCPluginRecordingEngine.mm";
        v64 = 1024;
        v65 = 706;
        v66 = 1024;
        *v67 = v27;
        v35 = "%25s:%-5d AVVCPluginRecordingEngine::handleRecordInput - Unsupported formatID: %u";
        v36 = v25;
        v58 = 24;
        goto LABEL_71;
      }

      v40 = v9;
      v41 = [(AVAudioBuffer *)v40 packetDescriptions];
      v42 = (v41 + 16 * ([(AVAudioBuffer *)v40 packetCount]- 1));
      v43 = v42[3] + *v42;
      if (kAVVCScope)
      {
        v44 = *kAVVCScope;
        if (!v44)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v44 = MEMORY[0x1E69E9C10];
        v52 = MEMORY[0x1E69E9C10];
      }

      v53 = v44;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = [(AVAudioBuffer *)v40 packetCount];
        v55 = *v42;
        v56 = v42[2];
        v57 = v42[3];
        *buf = 136316674;
        v63 = "AVVCPluginRecordingEngine.mm";
        v64 = 1024;
        v65 = 642;
        v66 = 1024;
        *v67 = v43;
        *&v67[4] = 1024;
        *&v67[6] = v54;
        *&v67[10] = 2048;
        *&v67[12] = v55;
        *&v67[20] = 1024;
        *&v67[22] = v56;
        *&v67[26] = 1024;
        *v68 = v57;
        _os_log_impl(&dword_1BA5AC000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::handleRecordInput (opus). bufferLength : %d, packetCount : %d, packetDesc.startOffset %lld, packetDesc.mVariableFramesInPacket %u, packetDesc.DataByteSize = %u", buf, 0x34u);
      }

LABEL_70:
      operator new();
    }

    v45 = v9;
    AVVCRecordingEngine::checkForEndpoint(this, 0, a4);
    if (kAVVCScope)
    {
      v46 = *kAVVCScope;
      if (!v46)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v46 = MEMORY[0x1E69E9C10];
      v49 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v63 = "AVVCPluginRecordingEngine.mm";
      v64 = 1024;
      v65 = 676;
      _os_log_impl(&dword_1BA5AC000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting up client buffer", buf, 0x12u);
    }

LABEL_65:
    [(AVAudioBuffer *)v45 packetCount];
    v50 = [(AVAudioBuffer *)v45 format];
    v51 = *([v50 streamDescription] + 16);

    operator new();
  }

  if (kAVVCScope)
  {
    v25 = *kAVVCScope;
    if (!v25)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v63 = "AVVCPluginRecordingEngine.mm";
    v64 = 1024;
    v65 = 615;
    v35 = "%25s:%-5d AVVCPluginRecordingEngine::handleRecordInput - recordState is active, but getting nil buffer";
    v36 = v25;
    v58 = 18;
LABEL_71:
    _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_ERROR, v35, buf, v58);
  }

LABEL_72:

LABEL_73:
  v59 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCPluginRecordingEngine::updateMeterLevels(AVVCPluginRecordingEngine *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(this + 27) < 2)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = 136315650;
    v20 = "AVVCPluginRecordingEngine.mm";
    v21 = 1024;
    v22 = 360;
    v23 = 1024;
    v24 = -11781;
    v8 = "%25s:%-5d AVVCPluginRecordingEngine::updateMeterLevels: Error! Stream has not been prepared. Error(%d)";
    v9 = v6;
    v10 = OS_LOG_TYPE_ERROR;
    v11 = 24;
    goto LABEL_24;
  }

  v2 = *(this + 13);
  v3 = *(this + 37);
  if (!v3)
  {
    v3 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
    *(this + 37) = v3;
  }

  if (*(this + 288) != 1 || v3 == 0 || v2 == 0)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

LABEL_26:
      result = 4294955515;
      goto LABEL_27;
    }

    v13 = *(this + 288);
    v14 = *(this + 37) != 0;
    v19 = 136315906;
    v20 = "AVVCPluginRecordingEngine.mm";
    v21 = 1024;
    v22 = 357;
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = v14;
    v8 = "%25s:%-5d AVVCAudioQueueRecordingEngine::updateMeterLevels: Not fetching meter levels because one of them is untrue: mMeteringEnabled(%d), mRecordMeters(%d)";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 30;
LABEL_24:
    _os_log_impl(&dword_1BA5AC000, v9, v10, v8, &v19, v11);
    goto LABEL_25;
  }

  v17 = (this + 636);
  v18 = vld1_dup_f32(v17);
  do
  {
    *v3++ = v18;
    --v2;
  }

  while (v2);
  result = 0;
LABEL_27:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 AVVCPluginRecordingEngine::getRecordQueueFormat@<Q0>(AVVCPluginRecordingEngine *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 24);
  v3 = *(this + 40);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 7);
  return result;
}

uint64_t AVVCPluginRecordingEngine::destroyRecordEngine(AVVCPluginRecordingEngine *this, int a2)
{
  v67 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v54, "AVVCPluginRecordingEngine::destroyRecordEngine");
  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
LABEL_5:
    v6 = v4;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v52, *(this + 1), *(this + 2));
    v7 = v52;
    if (v52)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v50, *(this + 1), *(this + 2));
      v36 = (*(*v50 + 64))(v50, 0);
      v8 = [v36 sessionState];
      v9 = "ILLEGAL";
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 == 6)
          {
            v9 = "Activating";
          }

          else if (v8 == 7)
          {
            v9 = "Active";
          }
        }

        else if (v8 == 4)
        {
          v9 = "Deactivating";
        }

        else
        {
          v9 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v9 = "InteruptedWhileRecording";
        }

        else
        {
          v9 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v9 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v9 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v48, *(this + 1), *(this + 2));
    v37 = v7;
    if (v48)
    {
      v10 = v49;
      if (v49)
      {
        v10 = (v49->__shared_owners_ + 1);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v48, *(v48 + 264), v10];
    }

    else
    {
      v11 = @"(0x0) use_count:0";
    }

    v12 = v11;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v46, *(this + 1), *(this + 2));
    v13 = v46;
    if (v46)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v44, *(this + 1), *(this + 2));
      v14 = (*(*v44 + 296))(v44);
      if (v14 > 4)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6310[v14];
      }
    }

    else
    {
      v15 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v42, *(this + 1), *(this + 2));
    if (v42)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v40, *(this + 1), *(this + 2));
      v16 = *(v40 + 216);
      if (v16 > 6)
      {
        v17 = "ILLEGAL";
      }

      else
      {
        v17 = off_1E7EF6338[v16];
      }

      *buf = 136316418;
      v56 = "AVVCPluginRecordingEngine.mm";
      v57 = 1024;
      v58 = 287;
      v59 = 2080;
      v60 = v9;
      v61 = 2112;
      v62 = v12;
      v63 = 2080;
      v64 = v15;
      v65 = 2080;
      v66 = v17;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }
    }

    else
    {
      *buf = 136316418;
      v56 = "AVVCPluginRecordingEngine.mm";
      v57 = 1024;
      v58 = 287;
      v59 = 2080;
      v60 = v9;
      v61 = 2112;
      v62 = v12;
      v63 = 2080;
      v64 = v15;
      v65 = 2080;
      v66 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v13 && v45)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45);
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (v37)
    {

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    goto LABEL_48;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (kAVVCScope)
  {
    v18 = *kAVVCScope;
    if (!v18)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  v20 = v18;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v52, *(this + 1), *(this + 2));
    *buf = 136315650;
    v56 = "AVVCPluginRecordingEngine.mm";
    v57 = 1024;
    v58 = 288;
    v59 = 2048;
    v60 = v52;
    _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d (self %p)AVVCPluginRecordingEngine::destroyRecordEngine: Entering --->", buf, 0x1Cu);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }
  }

LABEL_57:
  *(this + 244) = 1;
  v21 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(this);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v52, *(this + 1), *(this + 2));
  if (!v21)
  {
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
LABEL_70:
        v25 = 2;
        goto LABEL_84;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v56 = "AVVCPluginRecordingEngine.mm";
      v57 = 1024;
      v58 = 322;
      v59 = 1024;
      LODWORD(v60) = 2;
      _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d destroyRecordEngine: device found, err : %d", buf, 0x18u);
    }

    goto LABEL_70;
  }

  if (!a2 || *(this + 56) == -11785)
  {
    goto LABEL_81;
  }

  if (!kAVVCScope)
  {
    v22 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
    goto LABEL_77;
  }

  v22 = *kAVVCScope;
  if (v22)
  {
LABEL_77:
    v27 = v22;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v56 = "AVVCPluginRecordingEngine.mm";
      v57 = 1024;
      v58 = 300;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCPluginRecordingEngine::destroyRecordEngine: about to call stopRecordingCompletionBlock - previous stop completion block didn't happen", buf, 0x12u);
    }
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = ___ZN25AVVCPluginRecordingEngine19destroyRecordEngineEb_block_invoke;
  v38[3] = &__block_descriptor_36_e17_v16__0__NSError_8l;
  v39 = 0;
  [v21 stopRecordingWithCompletionBlock:v38];
LABEL_81:
  [v21 setAudioInputBlock:0];
  if (objc_opt_respondsToSelector())
  {
    [v21 setStatusChangeBlock:0];
  }

  v25 = 0;
LABEL_84:
  if (kAVVCScope)
  {
    v28 = *kAVVCScope;
    if (!v28)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
  }

  v30 = v28;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v56 = "AVVCPluginRecordingEngine.mm";
    v57 = 1024;
    v58 = 326;
    _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCPluginRecordingEngine::destroyRecordEngine: Calling doneRecording explicitly", buf, 0x12u);
  }

LABEL_91:
  AVVCRecordingEngine::doneRecording(v52);
  AVVCRecordingEngine::setStreamState(this, 1);
  *(this + 244) = 0;
  if (kAVVCScope)
  {
    v31 = *kAVVCScope;
    if (!v31)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
    v32 = MEMORY[0x1E69E9C10];
  }

  v33 = v31;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v46, *(this + 1), *(this + 2));
    *buf = 136315650;
    v56 = "AVVCPluginRecordingEngine.mm";
    v57 = 1024;
    v58 = 331;
    v59 = 2048;
    v60 = v46;
    _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d (self %p)AVVCPluginRecordingEngine::destroyRecordEngine: Exiting <---", buf, 0x1Cu);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }

LABEL_99:
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  TraceMethod::~TraceMethod(v54);
  v34 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_1BA5E2C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v35 && a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a14)
  {

    if (a31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a31);
    }
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  TraceMethod::~TraceMethod((v36 - 184));
  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine19destroyRecordEngineEb_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v5 = v4;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v3 debugDescription];
      v11 = 136315906;
      v12 = "AVVCPluginRecordingEngine.mm";
      v13 = 1024;
      v14 = 309;
      v15 = 1024;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::destroyRecordEngine - stopRecordingWithCompletionBlock: returned error(%d) : %@ ", &v11, 0x22u);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "AVVCPluginRecordingEngine.mm";
      v13 = 1024;
      v14 = 306;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d AVVCPluginRecordingEngine::destroyRecordEngine -- stopRecordingWithCompletionBlock: STOPPED", &v11, 0x12u);
    }
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t AVVCPluginRecordingEngine::stopRecording(AVVCPluginRecordingEngine *this)
{
  v54 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v43, "AVVCPluginRecordingEngine::stopRecording");
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(v44, *(this + 1), *(this + 2));
    v5 = *v44;
    if (*v44)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v41, *(this + 1), *(this + 2));
      v28 = (*(*v41 + 64))(v41, 0);
      v6 = [v28 sessionState];
      v7 = "ILLEGAL";
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            v7 = "Activating";
          }

          else if (v6 == 7)
          {
            v7 = "Active";
          }
        }

        else if (v6 == 4)
        {
          v7 = "Deactivating";
        }

        else
        {
          v7 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v7 = "InteruptedWhileRecording";
        }

        else
        {
          v7 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v7 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v7 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v39, *(this + 1), *(this + 2));
    if (v39)
    {
      v8 = v40;
      if (v40)
      {
        v8 = (v40->__shared_owners_ + 1);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v39, *(v39 + 264), v8];
    }

    else
    {
      v9 = @"(0x0) use_count:0";
    }

    v10 = v9;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v37, *(this + 1), *(this + 2));
    v11 = v37;
    if (v37)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v35, *(this + 1), *(this + 2));
      v12 = (*(*v35 + 296))(v35);
      if (v12 > 4)
      {
        v13 = "ILLEGAL";
      }

      else
      {
        v13 = off_1E7EF6310[v12];
      }
    }

    else
    {
      v13 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v33, *(this + 1), *(this + 2));
    if (v33)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v31, *(this + 1), *(this + 2));
      v14 = *(v31 + 216);
      if (v14 > 6)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6338[v14];
      }

      *buf = 136316418;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 221;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      v48 = 2112;
      v49 = v10;
      v50 = 2080;
      v51 = v13;
      v52 = 2080;
      v53 = v15;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    else
    {
      *buf = 136316418;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 221;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      v48 = 2112;
      v49 = v10;
      v50 = 2080;
      v51 = v13;
      v52 = 2080;
      v53 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (v11 && v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    if (v5)
    {

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }

    if (*&v44[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
    }

    goto LABEL_48;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*(this + 27) < 4)
  {
    v16 = 0;
    goto LABEL_78;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v17 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(this);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v37, *(this + 1), *(this + 2));
  if (v17)
  {
    AVVCRecordingEngine::setStreamState(this, 6);
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
LABEL_62:
        *(this + 244) = 1;
        std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(v44, *(this + 1), *(this + 2));
        v23 = *v44;
        v22 = *&v44[8];
        if (*&v44[8])
        {
          atomic_fetch_add_explicit((*&v44[8] + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3321888768;
        v29[2] = ___ZN25AVVCPluginRecordingEngine13stopRecordingEv_block_invoke;
        v29[3] = &unk_1F3848A90;
        v29[5] = this;
        v29[6] = v23;
        v30 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v29[4] = buf;
        [v17 stopRecordingWithCompletionBlock:v29];
        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

        goto LABEL_75;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v44 = 136315394;
      *&v44[4] = "AVVCPluginRecordingEngine.mm";
      *&v44[12] = 1024;
      *&v44[14] = 240;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::stopRecording: mRecordIsStopping set to true", v44, 0x12u);
    }

    goto LABEL_62;
  }

  v19 = *&buf[8];
  *(*&buf[8] + 24) = 2;
  if (!kAVVCScope)
  {
    v20 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
    goto LABEL_71;
  }

  v20 = *kAVVCScope;
  if (v20)
  {
LABEL_71:
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v19 + 24);
      *v44 = 136315650;
      *&v44[4] = "AVVCPluginRecordingEngine.mm";
      *&v44[12] = 1024;
      *&v44[14] = 271;
      v45 = 1024;
      v46 = v25;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecording:  No device found error :%d", v44, 0x18u);
    }

    v19 = *&buf[8];
  }

  AVVCRecordingEngine::setRecordErrorStatus(this, *(v19 + 24), "stopRecording");
  AVVCRecordingEngine::doneRecording(v37);
LABEL_75:
  v16 = *(*&buf[8] + 24);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Block_object_dispose(buf, 8);

LABEL_78:
  TraceMethod::~TraceMethod(v43);
  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1BA5E362C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, char a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (v39 && a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  if (v38)
  {

    if (a33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a33);
    }
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  TraceMethod::~TraceMethod(&a34);
  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine13stopRecordingEv_block_invoke(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[6];
      if (v7)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3321888768;
        v11[2] = ___ZN25AVVCPluginRecordingEngine13stopRecordingEv_block_invoke_123;
        v11[3] = &unk_1F38486A0;
        v14 = v5;
        v12 = v3;
        v15 = v7;
        v16 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = a1[4];
        (*(*v7 + 336))(v7, v11, "stopRecording_block_invoke");
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v18 = "AVVCPluginRecordingEngine.mm";
    v19 = 1024;
    v20 = 248;
    v21 = 2048;
    v22 = 0;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d stopRecording: nil object encountered (eng: %p). Bailing", buf, 0x1Cu);
  }

LABEL_15:
  if (v6)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA5E395C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_48c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_48c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN25AVVCPluginRecordingEngine13stopRecordingEv_block_invoke_123(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 code];
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_12:
        v11 = *(a1 + 56);
        v10 = (a1 + 56);
        AVVCRecordingEngine::setRecordErrorStatus(v11, *(*(*(v10 - 2) + 1) + 24), "stopRecording_block_invoke");
        AVVCRecordingEngine::doneRecording(*v10);
        goto LABEL_20;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = [*(a1 + 32) debugDescription];
      v15 = 136315906;
      v16 = "AVVCPluginRecordingEngine.mm";
      v17 = 1024;
      v18 = 261;
      v19 = 1024;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::stopRecordingWithCompletionBlock: returned error(%d) : %@ ", &v15, 0x22u);
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 48);
  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_14;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_14:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "AVVCPluginRecordingEngine.mm";
      v17 = 1024;
      v18 = 253;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::stopRecordingWithCompletionBlock: STOPPED", &v15, 0x12u);
    }
  }

  v13 = *(a1 + 56);
  if (*(v13 + 216) == 6)
  {
    AVVCRecordingEngine::doneRecording(v13);
  }

  *(v4 + 636) = -1024458752;
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t AVVCPluginRecordingEngine::startRecording(AVVCPluginRecordingEngine *this)
{
  v78 = *MEMORY[0x1E69E9840];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  TraceMethod::TraceMethod(v64, "AVVCPluginRecordingEngine::startRecording");
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_48:

      goto LABEL_49;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v62, *(this + 1), *(this + 2));
    v5 = v62;
    if (v62)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v60, *(this + 1), *(this + 2));
      v44 = (*(*v60 + 64))(v60, 0);
      v6 = [v44 sessionState];
      v7 = "ILLEGAL";
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            v7 = "Activating";
          }

          else if (v6 == 7)
          {
            v7 = "Active";
          }
        }

        else if (v6 == 4)
        {
          v7 = "Deactivating";
        }

        else
        {
          v7 = "Prewarming";
        }

        goto LABEL_13;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v7 = "InteruptedWhileRecording";
        }

        else
        {
          v7 = "InteruptedWhilePlaying";
        }

        goto LABEL_13;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          v7 = "Inactive";
        }

        goto LABEL_13;
      }
    }

    v7 = "NotConfigured";
LABEL_13:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v58, *(this + 1), *(this + 2));
    if (v58)
    {
      v8 = v59;
      if (v59)
      {
        v8 = (v59->__shared_owners_ + 1);
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v58, *(v58 + 264), v8];
    }

    else
    {
      v9 = @"(0x0) use_count:0";
    }

    v10 = v9;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v56, *(this + 1), *(this + 2));
    v11 = v56;
    if (v56)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v54, *(this + 1), *(this + 2));
      v12 = (*(*v54 + 296))(v54);
      if (v12 > 4)
      {
        v13 = "ILLEGAL";
      }

      else
      {
        v13 = off_1E7EF6310[v12];
      }
    }

    else
    {
      v13 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v52, *(this + 1), *(this + 2));
    if (v52)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v50, *(this + 1), *(this + 2));
      v14 = *(v50 + 216);
      if (v14 > 6)
      {
        v15 = "ILLEGAL";
      }

      else
      {
        v15 = off_1E7EF6338[v14];
      }

      *buf = 136316418;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 114;
      v70 = 2080;
      v71 = v7;
      v72 = 2112;
      v73 = v10;
      v74 = 2080;
      v75 = v13;
      v76 = 2080;
      v77 = v15;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }
    }

    else
    {
      *buf = 136316418;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 114;
      v70 = 2080;
      v71 = v7;
      v72 = 2112;
      v73 = v10;
      v74 = 2080;
      v75 = v13;
      v76 = 2080;
      v77 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    if (v11 && v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }

    if (v5)
    {

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }
    }

    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }

    goto LABEL_48;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_49:
  *(this + 76) = 0;
  *(this + 154) = 0;
  v16 = AVVCPluginRecordingEngine::getCurrentDeviceFromActivationContext(this);
  if (v16)
  {
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    v21 = v17;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v62, *(this + 1), *(this + 2));
      *buf = 136315906;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      v70 = 2048;
      v71 = v62;
      v72 = 2048;
      v73 = v16;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d (self %p)startRecord : using activeDevice: %p", buf, 0x26u);
      if (v63)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v63);
      }
    }

LABEL_61:
    *(this + 632) = 1;
    v22 = *(this + 29);
    v23 = mach_absolute_time();
    v24 = v22;
    if (!v22)
    {
      v24 = mach_absolute_time();
    }

    *(this + 78) = v24;
    if (kAVVCScope)
    {
      v25 = *kAVVCScope;
      if (!v25)
      {
LABEL_74:
        std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(this + 1), *(this + 2));
        v31 = *buf;
        v30 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3321888768;
        aBlock[2] = ___ZN25AVVCPluginRecordingEngine14startRecordingEv_block_invoke;
        aBlock[3] = &unk_1F38489B0;
        v48 = v31;
        v49 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v47 = &v65;
        v32 = v16;
        v46 = v32;
        v33 = _Block_copy(aBlock);
        if (objc_opt_respondsToSelector())
        {
          v34 = MEMORY[0x1E695DF20];
          v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24];
          v36 = [MEMORY[0x1E696AD98] numberWithInteger:*(this + 60)];
          v37 = [v34 dictionaryWithObjectsAndKeys:{v35, @"StartTime", v36, @"StartAnchorPoint", 0}];

          [(__CFString *)v32 startRecordingWithSettings:v37 withCompletionBlock:v33];
        }

        else
        {
          [(__CFString *)v32 startRecordingWithCompletionBlock:v33];
        }

        if (v49)
        {
          std::__shared_weak_count::__release_weak(v49);
        }

        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }

        goto LABEL_89;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    v27 = v25;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = "past";
      v29 = *(this + 78);
      *buf = 136316162;
      *&buf[4] = "AVVCPluginRecordingEngine.mm";
      if (v22 > v23)
      {
        v28 = "future";
      }

      *&buf[12] = 1024;
      *&buf[14] = 139;
      v70 = 2080;
      if (!v24)
      {
        v28 = "immediate";
      }

      v71 = v28;
      v72 = 2048;
      v73 = v29;
      v74 = 2048;
      v75 = v16;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC starting (%s) recording at hosttime (%lld) for Plugin engine on device (%p)", buf, 0x30u);
    }

    goto LABEL_74;
  }

  v18 = v66;
  *(v66 + 6) = 2;
  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v38 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v39 = *(v18 + 6);
    *buf = 136315650;
    *&buf[4] = "AVVCPluginRecordingEngine.mm";
    *&buf[12] = 1024;
    *&buf[14] = 207;
    v70 = 1024;
    LODWORD(v71) = v39;
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordQueue:  No device found, err : %d", buf, 0x18u);
  }

LABEL_89:
  v40 = *(v66 + 6);
  if (v40)
  {
    AVVCRecordingEngine::setRecordErrorStatus(this, v40, "startRecording");
    AVVCRecordingEngine::setStreamState(this, 3);
    v41 = *(v66 + 6);
  }

  else
  {
    v41 = 0;
  }

  TraceMethod::~TraceMethod(v64);
  _Block_object_dispose(&v65, 8);
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

void sub_1BA5E44CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN25AVVCPluginRecordingEngine14startRecordingEv_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3321888768;
        v12[2] = ___ZN25AVVCPluginRecordingEngine14startRecordingEv_block_invoke_114;
        v12[3] = &unk_1F3848668;
        v13 = v3;
        v15 = v6;
        v16 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *(a1 + 32);
        v7 = v11;
        v14 = v11;
        (*(*v6 + 336))(v6, v12, "startRecording_block_invoke");

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v18 = "AVVCPluginRecordingEngine.mm";
    v19 = 1024;
    v20 = 148;
    v21 = 2048;
    v22 = 0;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d startedRecording: nil object encountered (eng: %p). Bailing", buf, 0x1Cu);
  }

LABEL_15:
  if (v5)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA5E4850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  _Unwind_Resume(a1);
}

void ___ZN25AVVCPluginRecordingEngine14startRecordingEv_block_invoke_114(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  p_superclass = AVAudioPCMBuffer.superclass;
  if (!v2)
  {
    if (*(*(a1 + 56) + 216) == 4)
    {
      if (kAVVCScope)
      {
        v5 = *kAVVCScope;
        if (!v5)
        {
LABEL_32:
          AVVCRecordingEngine::startedRecording(*(a1 + 56));
          goto LABEL_77;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v38 = "AVVCPluginRecordingEngine.mm";
        v39 = 1024;
        v40 = 156;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCPluginRecordingEngine::startRecordingWithCompletionBlock: RUNNING", buf, 0x12u);
      }

      goto LABEL_32;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v38 = "AVVCPluginRecordingEngine.mm";
      v39 = 1024;
      v40 = 160;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCPluginRecordingEngine::startRecordingWithCompletionBlock: RUNNING-PAUSED", buf, 0x12u);
    }

LABEL_37:
    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    v19 = v17;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_76;
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      p_superclass = (*(*v20 + 64))(*(a1 + 56), 0);
      v21 = [p_superclass sessionState];
      v22 = "ILLEGAL";
      if (v21 > 3)
      {
        if (v21 > 5)
        {
          if (v21 == 6)
          {
            v22 = "Activating";
          }

          else if (v21 == 7)
          {
            v22 = "Active";
          }
        }

        else if (v21 == 4)
        {
          v22 = "Deactivating";
        }

        else
        {
          v22 = "Prewarming";
        }

LABEL_50:
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v23)
          {
            v25 = MEMORY[0x1E696AEC0];
            v26 = *(v23 + 264);
            v27 = v24->__shared_owners_ + 1;
LABEL_55:
            v28 = [v25 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v23, v26, v27];
LABEL_57:
            v29 = v28;
            v30 = *(a1 + 56);
            if (v30)
            {
              v31 = (*(*v30 + 296))(v30);
              if (v31 > 4)
              {
                v32 = "ILLEGAL";
              }

              else
              {
                v32 = off_1E7EF6310[v31];
              }

              v34 = *(a1 + 56);
              if (v34)
              {
                v35 = *(v34 + 216);
                v33 = "ILLEGAL";
                if (v35 <= 2)
                {
                  if (v35)
                  {
                    if (v35 == 1)
                    {
                      v33 = "Uninitialized";
                    }

                    else if (v35 == 2)
                    {
                      v33 = "Prepared";
                    }
                  }

                  else
                  {
                    v33 = "Invalid";
                  }
                }

                else if (v35 > 4)
                {
                  if (v35 == 5)
                  {
                    v33 = "Running";
                  }

                  else if (v35 == 6)
                  {
                    v33 = "Stopping";
                  }
                }

                else if (v35 == 3)
                {
                  v33 = "Stopped";
                }

                else
                {
                  v33 = "Starting";
                }
              }

              else
              {
                v33 = "unconfigured";
              }
            }

            else
            {
              v32 = "unconfigured";
              v33 = "unconfigured";
            }

            *buf = 136316418;
            v38 = "AVVCPluginRecordingEngine.mm";
            v39 = 1024;
            v40 = 161;
            v41 = 2080;
            *v42 = v22;
            *&v42[8] = 2112;
            *&v42[10] = v29;
            v43 = 2080;
            v44 = v32;
            v45 = 2080;
            v46 = v33;
            _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v20)
            {
            }

LABEL_76:
            goto LABEL_77;
          }
        }

        else if (v23)
        {
          v27 = 0;
          v25 = MEMORY[0x1E696AEC0];
          v26 = *(v23 + 264);
          goto LABEL_55;
        }

        v28 = @"(0x0) use_count:0";
        goto LABEL_57;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v22 = "InteruptedWhileRecording";
        }

        else
        {
          v22 = "InteruptedWhilePlaying";
        }

        goto LABEL_50;
      }

      if (v21)
      {
        if (v21 == 1)
        {
          v22 = "Inactive";
        }

        goto LABEL_50;
      }
    }

    v22 = "NotConfigured";
    goto LABEL_50;
  }

  *(*(*(a1 + 48) + 8) + 24) = [v2 code];
  if (*(*(*(a1 + 48) + 8) + 24) == 1919115630)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_20:
        AVVCRecordingEngine::setStreamState(*(a1 + 56), 6);
        v9 = *(a1 + 56);
        *(v9 + 244) = 1;
        AVVCRecordingEngine::setRecordErrorStatus(v9, *(*(*(a1 + 48) + 8) + 24), "startRecording_block_invoke");
        AVVCRecordingEngine::doneRecording(*(a1 + 56));
        goto LABEL_26;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "AVVCPluginRecordingEngine.mm";
      v39 = 1024;
      v40 = 168;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCPluginRecordingEngine::startRecordingWithCompletionBlock: Recording cancelled by plugin device. Calling didStop recording and setting audioInputBlock to nil.", buf, 0x12u);
    }

    goto LABEL_20;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_22:
    v11 = v6;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v13 = [*(a1 + 32) debugDescription];
      *buf = 136315906;
      v38 = "AVVCPluginRecordingEngine.mm";
      v39 = 1024;
      v40 = 177;
      v41 = 1024;
      *v42 = v12;
      *&v42[4] = 2112;
      *&v42[6] = v13;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCPluginRecordingEngine::startRecordingWithCompletionBlock: returned error(%d) : %@. Setting the audioInputBlock to nil.", buf, 0x22u);
    }
  }

  AVVCRecordingEngine::setRecordErrorStatus(*(a1 + 56), *(*(*(a1 + 48) + 8) + 24), "startRecording_block_invoke");
  AVVCRecordingEngine::setStreamState(*(a1 + 56), 3);
  AVVCRecordingEngine::startedRecording(*(a1 + 56));
LABEL_26:
  [*(a1 + 40) setAudioInputBlock:0];
  v14 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setStatusChangeBlock:0];
  }

LABEL_77:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1BA5E4FA4(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t AVVCPluginRecordingEngine::prepareRecording(AVVCRecordingEngine *this, NSDictionary *a2)
{
  v3 = a2;
  TraceMethod::TraceMethod(v6, "prepareRecording");
  Recorder = AVVCRecordingEngine::setupASBDAndCreateRecorder(this, v3);
  if (!Recorder)
  {
    AVVCRecordingEngine::setStreamState(this, 2);
  }

  TraceMethod::~TraceMethod(v6);

  return Recorder;
}

void sub_1BA5E507C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TraceMethod::~TraceMethod(va);

  _Unwind_Resume(a1);
}