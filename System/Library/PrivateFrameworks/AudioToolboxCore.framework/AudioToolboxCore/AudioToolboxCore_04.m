void sub_18F6243A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t buf, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, xpc_object_t object)
{
  if (v40)
  {
    if (a9)
    {
      operator delete(a9);
    }
  }

  xpc_release(object);
  swix::encode_message::~encode_message(v39);
  _Unwind_Resume(a1);
}

swix::message *swix::message::message(swix::message *this)
{
  *this = 0;
  *(this + 1) = xpc_null_create();
  *(this + 2) = 0;
  return this;
}

int64_t swix::decode_message::decode<int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_int64(a1, a2);
  if (result != result)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F033FDD0;
  }

  return result;
}

void AudioConverterXPC_Client::~AudioConverterXPC_Client(AudioConverterXPC_Client *this)
{
  swix::ipc_interface::~ipc_interface(this);

  JUMPOUT(0x193ADF220);
}

uint64_t __AudioConverterPrepare_block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

uint64_t std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__function::__func<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1},std::allocator<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = gService_0;
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((gService_0 + 56));
  v4 = *(v1 + 120);
  v3 = *(v1 + 128);
  if (v4 != v3)
  {
    while (*v4 != v2)
    {
      if (++v4 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  if (v4 != v3)
  {
    v5 = *(*v2 + 16);
    if (!v5)
    {
      std::terminate();
    }

    v6 = *(v5 + 8);
    swix::connection::state::cancel_connection();
    v7 = v4 + 1;
    v8 = *(v1 + 128);
    if (v4 + 1 != v8)
    {
      do
      {
        v4 = v7;
        v9 = v7 - 1;
        v10 = *v7;
        *v7++ = 0;
        std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](v9, v10);
      }

      while (v7 != v8);
      v8 = *(v1 + 128);
    }

    while (v8 != v4)
    {
      std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](--v8, 0);
    }

    *(v1 + 128) = v4;
    if (*(v1 + 120) == v4)
    {
      XOSTransactor::endTransaction((v1 + 320));
    }

    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v11 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (*(v1 + 128) - *(v1 + 120)) >> 3;
      v13 = atomic_load((v1 + 280));
      v15 = 136316162;
      v16 = "AudioConverterService.cpp";
      v17 = 1024;
      v18 = 218;
      v19 = 2048;
      v20 = v1;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService -> %p: Client disconnected, number of remote connections: %u, number of converters: %u.", &v15, 0x28u);
    }
  }

LABEL_18:
  std::recursive_mutex::unlock((v1 + 56));
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t **std::unique_ptr<RemoteAudioConverter>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 + 40);
      swix::ipc_interface::~ipc_interface((v3 + 8));
      MEMORY[0x193ADF220](v3, 0x10A0C40BF9D22C6);
    }

    JUMPOUT(0x193ADF220);
  }

  return result;
}

_OWORD *SwapPCM16_ARM(_OWORD *result, int8x16_t *a2, unsigned int a3)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v3 = a2 + 2;
    do
    {
      v4 = *result;
      result = (result + 2);
      a2->i16[0] = bswap32(v4) >> 16;
      a2 = (a2 + 2);
      v5 = a3 - 1;
      if ((v3 & 0xF) == 0)
      {
        break;
      }

      v3 += 2;
      --a3;
    }

    while (a3);
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0x10)
  {
    v6 = v5 >> 4;
    do
    {
      v7 = *result;
      v8 = *(result + 1);
      result += 2;
      *a2 = vrev16q_s8(v7);
      a2[1] = vrev16q_s8(v8);
      a2 += 2;
      --v6;
    }

    while (v6);
  }

  for (i = v5 & 0xF; i; --i)
  {
    v10 = *result;
    result = (result + 2);
    a2->i16[0] = bswap32(v10) >> 16;
    a2 = (a2 + 2);
  }

  return result;
}

void sub_18F624DCC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AudioFileLocker::~AudioFileLocker(&a9);
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v12 = *v11;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F624DB0);
}

uint64_t AudioFileObjectHandle::AFAPI_WritePackets(AudioFileObjectHandle *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, const void *a7)
{
  v7 = *(this + 6);
  if ((v7[100] & 2) != 0)
  {
    return (*(*v7 + 136))(v7, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return 1886547263;
  }
}

uint64_t CAFAudioFile::WritePackets(CAFAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v10 = a3;
  v56 = *MEMORY[0x1E69E9840];
  v12 = *(this + 10);
  v13 = *(this + 11);
  *(this + 208) = 1;
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v16 = *(this + 15);
    if (v16)
    {
      v17 = *(v16 + 24);
    }

    else
    {
      v17 = 0;
    }

    v53 = 0;
    v20 = (*(*this + 640))(this);
    if (a5 < 0 || v17 == a5)
    {
      if (a4)
      {
        v24 = a4[*a6 - 1].mStartOffset + a4[*a6 - 1].mDataByteSize;
        if (v24 <= v10)
        {
          v50 = a7;
          mStartOffset = a4->mStartOffset;
          v26 = *(this + 15);
          if (!v26)
          {
            operator new();
          }

          v52 = a6;
          if (*(v26 + 24))
          {
            if (v17 > a5)
            {
              v21 = 1885563711;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "CAFAudioFile.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 3238;
                v22 = MEMORY[0x1E69E9C10];
                v23 = "%25s:%-5d  ";
                goto LABEL_28;
              }

              goto LABEL_29;
            }

            v48 = a5;
            CompressedPacketTable::operator[](buf, v26, v17 - 1);
            *&v54.mVariableFramesInPacket = *&buf[8];
            v28 = *buf + *&buf[12];
            v54.mStartOffset = v28;
          }

          else
          {
            v48 = a5;
            v28 = 0;
            v54.mStartOffset = 0;
            *&v54.mVariableFramesInPacket = *&a4->mVariableFramesInPacket;
          }

          v29 = *a6;
          if (v29)
          {
            v30 = 0;
            v31 = a4 + 1;
            v32 = a4->mStartOffset;
            while (v29 - 1 != v30)
            {
              v32 += v31[-1].mDataByteSize;
              v33 = v31->mStartOffset;
              ++v31;
              ++v30;
              if (v33 != v32)
              {
                if (v30 >= v29)
                {
                  break;
                }

                v34 = 0;
                v51 = 0;
                v35 = 0;
                p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
                do
                {
                  v37 = *(p_mVariableFramesInPacket - 1);
                  v38 = *p_mVariableFramesInPacket;
                  v39 = p_mVariableFramesInPacket[1];
                  v54.mVariableFramesInPacket = *p_mVariableFramesInPacket;
                  v54.mDataByteSize = v39;
                  if (v13)
                  {
                    v40 = v13;
                  }

                  else
                  {
                    v40 = v38;
                  }

                  if (v39 <= v20)
                  {
                    v20 = v20;
                  }

                  else
                  {
                    v20 = v39;
                  }

                  v49 = (*(**(this + 13) + 56))(*(this + 13), 0, v28 + *(this + 9), v39, &v50[v37], &v53);
                  v41 = v53;
                  AudioFileObject::AppendPacket(this, &v54);
                  v35 += v40;
                  v51 += v41;
                  v28 += v39;
                  v54.mStartOffset = v28;
                  ++v34;
                  p_mVariableFramesInPacket += 4;
                }

                while (v34 < *v52);
                goto LABEL_57;
              }
            }
          }

          v49 = (*(**(this + 13) + 56))(*(this + 13), 0, v28 + *(this + 9), v24 - mStartOffset, &v50[mStartOffset], &v53);
          v51 = v53;
          LODWORD(v34) = *a6;
          if (*a6)
          {
            v42 = 0;
            v35 = 0;
            p_mDataByteSize = &a4->mDataByteSize;
            do
            {
              v44 = *(p_mDataByteSize - 1);
              v45 = *p_mDataByteSize;
              v54.mVariableFramesInPacket = v44;
              v54.mDataByteSize = v45;
              if (v13)
              {
                v46 = v13;
              }

              else
              {
                v46 = v44;
              }

              if (v45 <= v20)
              {
                v20 = v20;
              }

              else
              {
                v20 = v45;
              }

              AudioFileObject::AppendPacket(this, &v54);
              v35 += v46;
              v28 += v45;
              v54.mStartOffset = v28;
              ++v42;
              p_mDataByteSize += 4;
            }

            while (v42 < *v52);
          }

          else
          {
            v35 = 0;
          }

LABEL_57:
          (*(*this + 256))(this, v48 + v34);
          (*(*this + 656))(this, v20);
          *(this + 22) = (*(this + 22) & ~(*(this + 22) >> 63)) + v35;
          *(this + 136) = 1;
          *v52 = v34;
          v47 = (*(*this + 232))(this);
          (*(*this + 240))(this, v47 + v51);
          v21 = v49;
          goto LABEL_29;
        }

        v21 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CAFAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3225;
          v22 = MEMORY[0x1E69E9C10];
          v23 = "%25s:%-5d  Packet Descriptions are out of bounds";
          goto LABEL_28;
        }
      }

      else
      {
        v21 = 1885563711;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CAFAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3216;
          v22 = MEMORY[0x1E69E9C10];
          v23 = "%25s:%-5d  Packet Descriptions were not provided";
          goto LABEL_28;
        }
      }
    }

    else
    {
      v21 = 1885563711;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CAFAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3215;
        v22 = MEMORY[0x1E69E9C10];
        v23 = "%25s:%-5d  ";
LABEL_28:
        _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0x12u);
      }
    }

LABEL_29:
    v27 = *MEMORY[0x1E69E9840];
    return v21;
  }

  v18 = *MEMORY[0x1E69E9840];

  return AudioFileObject::WritePackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t CompressedPacketTable::operator[](uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 5 >= 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2 + 24 * (a3 >> 5);
  v6 = *(v5 + 8);
  if (v6 <= 2)
  {
    if (*(v5 + 8))
    {
      if (v6 == 1)
      {
        v17 = *(v5 + 16) + 4 * (a3 & 0x1F);
        if ((a3 & 0x1F) != 0)
        {
          v3 = *(v17 - 4);
        }

        else
        {
          v3 = 0;
        }

        v4 = *(v17 + 2);
        goto LABEL_37;
      }

      if (v6 != 2)
      {
        goto LABEL_37;
      }

      v9 = *(v5 + 16);
      v10 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v9 + 4 * v10 - 4);
      }

      else
      {
        v3 = 0;
      }

      v18 = *(v9 + 4 * v10);
    }

    else
    {
      v13 = *(v5 + 16);
      v14 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v13 + 2 * v14 - 2);
      }

      else
      {
        v3 = 0;
      }

      v18 = *(v13 + 2 * v14);
    }

    v4 = v18 - v3;
    goto LABEL_37;
  }

  if (*(v5 + 8) <= 4u)
  {
    if (v6 == 3)
    {
      v15 = *(v5 + 16) + 8 * (a3 & 0x1F);
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v15 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v15 + 4);
    }

    else if (v6 == 4)
    {
      v7 = *(v5 + 16);
      v8 = a3 & 0x1F;
      if ((a3 & 0x1F) != 0)
      {
        v3 = *(v7 + 8 * v8 - 8);
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v7 + 8 * v8) - v3;
    }

    goto LABEL_37;
  }

  if (v6 == 5)
  {
    v16 = *(v5 + 16) + 16 * (a3 & 0x1F);
    if ((a3 & 0x1F) != 0)
    {
      v3 = *(v16 - 16);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v16 + 8);
    goto LABEL_37;
  }

  if (v6 != 6)
  {
LABEL_37:
    *result = *v5 + v3;
    *(result + 8) = 0;
    *(result + 12) = v4;
    v12 = *(a2 + 32) + *(a2 + 32) * a3;
    goto LABEL_38;
  }

  v11 = *(v5 + 16) + 24 * (a3 & 0x1F);
  *result = *v11;
  v12 = *(v11 + 16);
LABEL_38:
  *(result + 16) = v12;
  return result;
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(uint64_t a1)
{
  atomic_store(0, *(a1 + 8));
  v2 = audioipc::eventlink_primitive::timed_wait_signal_or_error(*(a1 + 40), 3.0);
  v3 = atomic_load((a1 + 33));
  if (v3)
  {
    LOBYTE(v4) = 0;
    v6 = 0;
    atomic_store(2u, *(a1 + 8));
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 8);
    if (!HIDWORD(v2))
    {
      atomic_store(2u, v5);
      audioipc::log_error("rt_sender::signal_wait_with_timeout", v2);
      v7 = 0;
      v6 = v4 & 0xFFFFFF00;
      return v4 | v7 | v6;
    }

    v6 = 0;
    atomic_store(1u, v5);
    *(a1 + 32) = v2;
  }

  v7 = 0x100000000;
  return v4 | v7 | v6;
}

unint64_t audioipc::eventlink_primitive::wait_signal_or_error(audioipc::eventlink_primitive *this)
{
  os_retain(this);
  v2 = os_eventlink_signal_and_wait();
  os_release(this);
  return v2 | ((v2 == 0) << 32);
}

unint64_t audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(uint64_t a1, double a2)
{
  v2 = atomic_load((a1 + 33));
  v3 = *(a1 + 8);
  if (v2)
  {
    v8 = 0;
    v6 = 0;
    atomic_store(2u, v3);
LABEL_10:
    LOBYTE(v7) = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  v4 = atomic_load(v3);
  if (v4 == 2)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(*(a1 + 16));
  if (v5 == 2)
  {
    goto LABEL_9;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = 1;
    return v8 | (v6 << 8) | (v7 << 32);
  }

  if (atomic_load(*(a1 + 16)))
  {
LABEL_9:
    v8 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v11 = audioipc::eventlink_primitive::timed_wait_or_error(*(a1 + 40), a2);
  v6 = v11 >> 8;
  v7 = HIDWORD(v11);
  v8 = v11;
  if ((v11 & 0x100000000) == 0)
  {
    v14 = v11;
    v12 = HIDWORD(v11);
    v13 = v11 >> 8;
    audioipc::log_error("can_send draining", v11);
    LOBYTE(v7) = v12;
    v6 = v13;
    v8 = v14;
  }

  return v8 | (v6 << 8) | (v7 << 32);
}

uint64_t acv2::CodecConverter::ProduceOutput(uint64_t a1, int *a2, char a3)
{
  v118 = a3;
  if (*(a1 + 211) == 1 && !*(a1 + 408))
  {
    v8 = 0;
    v6 = 0x100000000;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  v3 = 7303231;
  if (!a2[1])
  {
    v6 = 0;
    v3 = 7304307;
    v8 = 122;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_16:
    v8 = 63;
    return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
  }

  if (*(a1 + 206) == 1 && *(a2 + 5) == 0)
  {
    v9 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + 88, 16);
    if (message)
    {
      v11 = message;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v11);
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    ConverterContext::realtimeViolation("calling an unsafe AudioCodec", a2);
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v13 = *(a1 + 72);
  if (a3 != 2 || *(a1 + 176) != 1 || *(a1 + 728) == 1)
  {
    *&__src[0] = a1;
    v14 = ConverterContext::withoutRealtimeSafety(a3, "codec being initialized", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::CheckInitialize_RT(ConverterContext)::$_0>, __src);
    if (v14)
    {
      v8 = v14;
      v6 = 0;
      v3 = v14 >> 8;
      return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
    }
  }

  v8 = 0;
  v117[0] = a1;
  v117[1] = &v118;
  v109 = (a1 + 580);
  v110 = (a1 + 568);
  v111 = (a1 + 596);
  v115 = vdupq_n_s64(4uLL);
  v114 = &off_18F900000;
  v15 = 1;
  v113 = v13;
  do
  {
    if (*a2 >= a2[1])
    {
      break;
    }

    ACBaseAudioSpan::setAfter(a1 + 224, a2);
    ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 224), a2);
    v16 = *(a1 + 408);
    if (*(a1 + 211) == 1)
    {
      if (v16)
      {
LABEL_29:
        if (v16 >= *(a1 + 228))
        {
          v17 = *(a1 + 228);
        }

        else
        {
          v17 = *(a1 + 408);
        }

        v18 = ACBaseAudioSpan::append((a1 + 224), (a1 + 408), v17, v13);
        if (!HIDWORD(v18))
        {
          v19 = v18;
          v20 = 0;
          v21 = v18 >> 8;
          goto LABEL_34;
        }

        if (*(a1 + 312) == 1 && *v111 && *(a1 + 304) && *(*(a1 + 296) + 28) >= *v111)
        {
          v22 = *(a1 + 584);
          __src[0] = *v110;
          __src[1] = v22;
          *&__src[2] = *(a1 + 600);
          DWORD1(__src[1]) = v17;
          *v109 = *v109 + v17;
          *(a1 + 588) -= v17;
          AudioMetadataFrame_AppendEvent((a1 + 272), __src);
          *(a1 + 296) += *(*(a1 + 296) + 8);
          --*(a1 + 304);
        }

        ACBaseAudioSpan::completeMetadataFrame((a1 + 224));
        v23 = ACBaseAudioSpan::advanceConsume((a1 + 408), v17, v13);
        if (!HIDWORD(v23))
        {
          v20 = 0;
          v114 = (v23 >> 8);
          v19 = v23;
          goto LABEL_225;
        }
      }

      v19 = 0;
LABEL_43:
      v8 = (v19 | v8) & 1;
      if ((v15 & 1) == 0)
      {
        v15 = 1;
      }

      goto LABEL_228;
    }

    if (v16)
    {
      goto LABEL_29;
    }

    v112 = v15;
    v19 = 0;
    v20 = 1;
    while (1)
    {
      outStatus = 999;
      v24 = *(a1 + 228);
      if (*(a1 + 205) == 1)
      {
        v25 = *(a1 + 368);
        v26 = *(a1 + 228);
        if (v25)
        {
          v26 = v24 / v25;
        }
      }

      else
      {
        v26 = *(a1 + 228);
      }

      if (v26 <= *(a1 + 372))
      {
        v27 = *(a1 + 372);
      }

      else
      {
        v27 = v26;
      }

      v28 = v27;
      if (*(a1 + 204) == 1)
      {
        v29 = *(a1 + 368);
        if (v29 <= 1)
        {
          v29 = 1;
        }

        v28 = v29 * v27;
      }

      v30 = v27;
      if (*(a1 + 205))
      {
        v31 = *(a1 + 368);
        if (v31 <= 1)
        {
          v31 = 1;
        }

        v30 = v31 * v27;
      }

      if (*(a1 + 388) == 1 && *(a1 + 396) != 1 || v30 > v24)
      {
        v33 = *(a1 + 512);
        if (*(a1 + 520) == *(a1 + 528))
        {
          v34 = 0;
        }

        else
        {
          v34 = *(a1 + 520);
        }

        v35 = *(a1 + 544);
        if (v35 == *(a1 + 552))
        {
          v35 = 0;
        }

        v36 = *(a1 + 400);
        v37 = *(a1 + 404);
        *(a1 + 448) = v35;
        ACBaseAudioSpan::set((a1 + 408), v33 + 2, v34, v36, v37);
        if (*(a1 + 436) == 1)
        {
          v38 = *(a1 + 424);
          if (v38[4 * *v38 + 2] == 1094863915)
          {
            v39 = *(v38 - 9);
            if (v39)
            {
              *(a1 + 568) = 1;
              v40 = (v38 + v39 - 48);
              *(a1 + 569) = 0;
              *(a1 + 572) = 0;
              *(a1 + 576) = 40;
              *v109 = 0.0;
              *(a1 + 588) = 0;
              *(a1 + 592) = 1;
              *v111 = 0;
              *(a1 + 604) = 0;
              memset(__src, 0, 44);
              BYTE8(__src[1]) = 1;
              *&__src[2] = 0x10000002CLL;
              AudioMetadataFrame::begin_new(v40, __src);
              AudioMetadataFrame_AppendEvent(v40, v110);
            }
          }
        }

        ACBaseAudioSpan::copyEmptyMetadataEventsFrom((a1 + 408), (a1 + 224));
        if (*(a1 + 372) < v27)
        {
          v27 = *(a1 + 372);
        }

        if (*(a1 + 204) == 1)
        {
          v116 = 0;
          v41 = *(a1 + 368);
          if (v41 <= 1)
          {
            v41 = 1;
          }

          v28 = v41 * v27;
        }

        else
        {
          v116 = 0;
          v28 = v27;
        }

        v32 = 408;
      }

      else
      {
        v116 = 1;
        v32 = 224;
      }

      if (*(a1 + 210))
      {
        v42 = 0;
        goto LABEL_146;
      }

      if (*(a1 + 207))
      {
        v28 = 0;
        v42 = 0;
        goto LABEL_142;
      }

      if (ACv2Workarounds::fix84702776_86723525_86479548_89800354_SinglePacketDesc == 1 && *(a1 + 205) == 1)
      {
        v43 = *(a1 + 40) == 0;
        if (!*(a1 + 40))
        {
          v28 = 1;
        }
      }

      else
      {
        v43 = 0;
      }

      v44 = *(a1 + 104);
      if (!v44 || (v45 = *(v44 + 24)) == 0 && !*(v44 + 128))
      {
        acv2::AudioConverterChain::ObtainInput(__src, *(a1 + 8), a1, v28, v118);
        if ((__src[1] & 1) == 0)
        {
          goto LABEL_128;
        }

        v61 = *(&__src[0] + 1);
        v62 = *&__src[0];
        if (*(a1 + 209) == 1 && *(a1 + 205) == 1 && **&__src[0] && !*(*&__src[0] + 32))
        {
          v42 = 561015652;
LABEL_141:
          if (!v28)
          {
            v19 = v42;
LABEL_223:
            v20 = 0;
            LODWORD(v114) = v42 >> 8;
LABEL_224:
            v15 = v112;
            v13 = v113;
            goto LABEL_225;
          }

          goto LABEL_142;
        }

        v63 = *(*&__src[0] + 16);
        mNumberBuffers = v63->mNumberBuffers;
        v65 = *(*&__src[0] + 8);
        if (mNumberBuffers)
        {
          v66 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
          v67 = vdupq_n_s64(mNumberBuffers - 1);
          v68 = &v63[1].mBuffers[0].mData + 1;
          v69 = xmmword_18F9016C0;
          v70 = xmmword_18F9016B0;
          do
          {
            v71 = vmovn_s64(vcgeq_u64(v67, v69));
            if (vuzp1_s16(v71, *v67.i8).u8[0])
            {
              *(v68 - 8) = v65;
            }

            if (vuzp1_s16(v71, *&v67).i8[2])
            {
              *(v68 - 4) = v65;
            }

            if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v70))).i32[1])
            {
              *v68 = v65;
              v68[4] = v65;
            }

            v70 = vaddq_s64(v70, v115);
            v69 = vaddq_s64(v69, v115);
            v68 += 16;
            v66 -= 4;
          }

          while (v66);
        }

        v72 = *v62;
        outBytesConsumed[0] = v65;
        outBytesConsumed[1] = v72;
        if (v72)
        {
          *v108 = v61;
          appended = acv2::CodecConverter::AppendNewInput(a1, v63, &outBytesConsumed[1], outBytesConsumed, *(v62 + 32));
          if (appended)
          {
            v42 = appended;
            v28 = 0;
            goto LABEL_141;
          }

          v75 = *v62;
          v61 = *v108;
          if (*v62)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v75 = *v62;
        }

        *(a1 + 207) = 1;
LABEL_135:
        v76 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), v75, v61, outBytesConsumed[1]);
        if (HIDWORD(v76))
        {
          v42 = 0;
          v28 = outBytesConsumed[1];
        }

        else
        {
          v42 = v76;
          if (v76)
          {
            goto LABEL_141;
          }
        }

        goto LABEL_142;
      }

      v46 = *(v44 + 128) + v45;
      if (v43)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46;
      }

      acv2::AudioConverterChain::ObtainInput(__src, *(a1 + 8), a1, v47, v118);
      if ((__src[1] & 1) == 0)
      {
LABEL_128:
        v28 = 0;
        v42 = __src[0];
        if (LODWORD(__src[0]))
        {
          goto LABEL_141;
        }

        goto LABEL_142;
      }

      v48 = __src[0];
      v49 = *(*&__src[0] + 16);
      v50 = v49->mNumberBuffers;
      v51 = *(*&__src[0] + 8);
      if (v50)
      {
        v52 = (v50 + 3) & 0x1FFFFFFFCLL;
        v53 = vdupq_n_s64(v50 - 1);
        v54 = &v49[1].mBuffers[0].mData + 1;
        v55 = xmmword_18F9016C0;
        v56 = xmmword_18F9016B0;
        do
        {
          v57 = vmovn_s64(vcgeq_u64(v53, v55));
          if (vuzp1_s16(v57, *v53.i8).u8[0])
          {
            *(v54 - 8) = v51;
          }

          if (vuzp1_s16(v57, *&v53).i8[2])
          {
            *(v54 - 4) = v51;
          }

          if (vuzp1_s16(*&v53, vmovn_s64(vcgeq_u64(v53, *&v56))).i32[1])
          {
            *v54 = v51;
            v54[4] = v51;
          }

          v58 = vdupq_n_s64(4uLL);
          v56 = vaddq_s64(v56, v58);
          v55 = vaddq_s64(v55, v58);
          v54 += 16;
          v52 -= 4;
        }

        while (v52);
      }

      v59 = *v48;
      outBytesConsumed[0] = v51;
      outBytesConsumed[1] = v59;
      v42 = acv2::CodecConverter::AppendNewInput(a1, v49, &outBytesConsumed[1], outBytesConsumed, *(v48 + 32));
      v60 = *(a1 + 848);
      if (v60)
      {
        AudioConverterCapturer::write(v60, v49, *(v48 + 32), outBytesConsumed[1]);
      }

      if (v42)
      {
        v28 = 0;
      }

      else
      {
        v74 = acv2::AudioConverterChain::ConsumedInput(*(a1 + 8), *v48, *(&v48 + 1), outBytesConsumed[1]);
        if (HIDWORD(v74))
        {
          v42 = 0;
          v28 = outBytesConsumed[1];
        }

        else
        {
          v42 = v74;
        }
      }

      if (v42)
      {
        goto LABEL_141;
      }

LABEL_142:
      if (v28)
      {
        v19 = 1;
      }

      if (!((v28 == 0) | v20 & 1))
      {
        v20 = 1;
      }

LABEL_146:
      v77 = a1 + v32;
      v78 = acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(v117, v27, v77, &outStatus);
      v79 = v78;
      v80 = HIDWORD(v78);
      if ((v78 & 0x100000000) == 0)
      {
        v19 = v78;
        v42 = v78;
        goto LABEL_223;
      }

      v81 = outStatus;
      if (!v78 && outStatus == 4)
      {
        if (*(a1 + 207) != 1 || (v82 = *(a1 + 104)) != 0 && (*(v82 + 24) || *(v82 + 128)))
        {
          LODWORD(v83) = 0;
        }

        else
        {
          LODWORD(__src[0]) = 0;
          v93 = *(a1 + 336);
          v94 = *(a1 + 344);
          for (i = v93->mBuffers; i != v94; ++i)
          {
            i->mData = __src;
            i->mDataByteSize = 0;
          }

          *outBytesConsumed = 0;
          acv2::CodecConverter::AppendNewInput(a1, v93, &outBytesConsumed[1], outBytesConsumed, 0);
          outStatus = 998;
          v83 = acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(v117, v27, v77, &outStatus);
          if (HIDWORD(v83) == v80)
          {
            v96 = v79;
          }

          else
          {
            v96 = HIDWORD(v83) << 32;
          }

          if ((v96 & 0xFFFFFFFFFFLL) == 0)
          {
            goto LABEL_221;
          }

          if (!v83)
          {
            *(a1 + 211) = 1;
          }
        }

        v81 = outStatus;
        LODWORD(v79) = v83;
      }

      *(a1 + 210) = v81 == 3;
      if (v81 == 5)
      {
        *(a1 + 732) = 0;
        v84 = v116;
        if (!v79)
        {
          *(a1 + 211) = 1;
        }
      }

      else
      {
        v84 = v116;
        if (v81 == 1)
        {
          ++*(a1 + 732);
          *v77 = 0;
          *(v77 + 8) = 0;
          ACBaseAudioSpan::resetMetadataEvents(v77);
          if (*(a1 + 732) > 3u || *(a1 + 204) == 1)
          {
            if (v20)
            {
              v20 = 0;
            }

            v19 = 97;
          }
        }

        else
        {
          *(a1 + 732) = 0;
        }
      }

      if (*(a1 + 211) == 1)
      {
        *(*(a1 + 8) + 402) = 1;
      }

      if ((v84 & 1) == 0)
      {
        if (*(a1 + 388) == 1 && (*(a1 + 396) & 1) == 0)
        {
          v85 = *(a1 + 392) >= v79 ? v79 : *(a1 + 392);
          if (v85)
          {
            v83 = ACBaseAudioSpan::advanceConsume((a1 + 408), v85, v113);
            if (!HIDWORD(v83))
            {
              goto LABEL_221;
            }

            v86 = *(a1 + 392) - v85;
            *(a1 + 392) = v86;
            if (!v86)
            {
              *(a1 + 396) = 1;
            }

            LODWORD(v79) = v79 - v85;
          }
        }

        if (v79)
        {
          v87 = *(a1 + 408);
          v88 = *(a1 + 228);
          if (v88 >= v87)
          {
            v89 = v87;
          }

          else
          {
            v89 = v88;
          }

          v83 = ACBaseAudioSpan::append((a1 + 224), (a1 + 408), v89, v113);
          if (!HIDWORD(v83) || (v83 = ACBaseAudioSpan::advanceConsume((a1 + 408), v89, v113), !HIDWORD(v83)))
          {
LABEL_221:
            v19 = v83;
            v42 = v83;
            goto LABEL_223;
          }

          ACBaseAudioSpan::copyFilledMetadataEventsFrom((a1 + 224), a1 + 408, v89 | 0x100000000);
          if (*(a1 + 312) == 1)
          {
            v90 = *(a1 + 272);
            if ((*(a1 + 280) - v90) >= 0x2C)
            {
              if (v90)
              {
                v91 = *(v90 + 40);
                if (v91)
                {
                    ;
                  }

                  v97 = *j;
                  v98 = j[1];
                  *(a1 + 600) = *(j + 4);
                  *v110 = v97;
                  *(a1 + 584) = v98;
                  *v109 = *v109 + v89;
                  *(a1 + 588) -= v89;
                }
              }
            }
          }

          ACBaseAudioSpan::completeMetadataFrame((a1 + 224));
        }

        else if (*(a1 + 392) && *(a1 + 211) != 1)
        {
          goto LABEL_212;
        }
      }

      if (*(a1 + 224))
      {
        goto LABEL_215;
      }

      if (outStatus == 1)
      {
        break;
      }

      if (outStatus != 4 || (*(a1 + 211) & 1) != 0)
      {
        goto LABEL_215;
      }

LABEL_212:
      if (v42)
      {
        goto LABEL_215;
      }
    }

    if (*(a1 + 732) <= 3u && *(a1 + 204) != 1)
    {
      goto LABEL_212;
    }

LABEL_215:
    if (v42 && (v20 & 1) != 0)
    {
      v20 = 0;
      LODWORD(v114) = v42 >> 8;
      v19 = v42;
      goto LABEL_224;
    }

    v15 = v112;
    v13 = v113;
    if (v20)
    {
      goto LABEL_43;
    }

    LODWORD(v21) = 6447460;
LABEL_34:
    LODWORD(v114) = v21;
LABEL_225:
    if (v15)
    {
      v15 = v20;
    }

    v8 = v19;
    v19 = 0;
LABEL_228:
    v99 = *(a1 + 224);
    if (!v99 && (v19 & 1) == 0)
    {
      break;
    }

    v100 = *(a1 + 232);
    v101 = *a2;
    v102 = a2[2];
    if (v99)
    {
      v103 = *(a2 + 4);
      if (v103)
      {
        v104 = *a2;
        v105 = *(a1 + 224);
        do
        {
          *(v103 + 16 * v104++) += v102;
          --v105;
        }

        while (v105);
      }
    }

    *a2 = v101 + v99;
    a2[2] = v102 + v100;
    ACBaseAudioSpan::copyFilledMetadataEventsFrom(a2, a1 + 224, 0);
  }

  while ((v15 & 1) != 0);
  ACBaseAudioSpan::completeMetadataFrame(a2);
  v107 = *(a1 + 152);
  if (v107)
  {
    acv2::AudioConverterBase::writeCapture(v107, a2, v106);
  }

  if (v15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v114;
  }

  v6 = v15 << 32;
  if (v15)
  {
    v6 = 0x100000000;
  }

  return v8 | ((*&v3 & 0xFFFFFFLL) << 8) | v6;
}

uint64_t ConverterContext::withoutRealtimeSafety(char a1, ConverterContext *this, uint64_t (*a3)(void, void), uint64_t a4)
{
  v5 = a3;
  v6 = a4;
  if (a1 != 2)
  {
    return a3(&v6, this);
  }

  ConverterContext::realtimeViolation(this, this);
  return 1869627199;
}

void sub_18F62653C(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = *v3;
  }

  __cxa_end_catch();
  JUMPOUT(0x18F62652CLL);
}

uint64_t acv2::CodecConverter::AppendNewInput(acv2::CodecConverter *this, const AudioBufferList *a2, UInt32 *ioNumberPackets, UInt32 *outBytesConsumed, const AudioStreamPacketDescription *inPacketDescription)
{
  v9 = *(this + 42);
  if (v9 == a2)
  {
    goto LABEL_5;
  }

  mNumberBuffers = v9->mNumberBuffers;
  v11 = *(this + 43) - v9;
  if (mNumberBuffers != (v11 - 8) >> 4)
  {
    CAAssertRtn();
    goto LABEL_40;
  }

  if (a2->mNumberBuffers != mNumberBuffers)
  {
LABEL_40:
    v31 = CAAssertRtn();
    return AudioCodecAppendInputData(v31, v32, v33, v34, v35);
  }

  memcpy(*(this + 42), a2, v11);
  v9 = *(this + 42);
LABEL_5:
  v12 = *outBytesConsumed;
  v13 = *ioNumberPackets;
  if ((*(this + 28) & 0x20) != 0 && *(this + 11) >= 2u)
  {
    appended = AudioCodecAppendInputBufferList(*(this + 21), v9, ioNumberPackets, inPacketDescription, outBytesConsumed);
  }

  else
  {
    v15 = *(this + 6);
    if ((v15 == 1935767394 || v15 == 1935764850) && v13 == 1 && v12 == 0)
    {
      *outBytesConsumed = 4;
    }

    appended = AudioCodecAppendInputData(*(this + 21), v9->mBuffers[0].mData, outBytesConsumed, ioNumberPackets, inPacketDescription);
  }

  v19 = appended;
  if (appended)
  {
    v20 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v20 + 88, 16);
    if (message)
    {
      v22 = message;
      v23 = _os_log_pack_fill();
      v24 = *outBytesConsumed;
      v25 = *ioNumberPackets;
      *v23 = 67110144;
      *(v23 + 4) = v19;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v12;
      *(v23 + 14) = 1024;
      *(v23 + 16) = v13;
      *(v23 + 20) = 1024;
      *(v23 + 22) = v24;
      *(v23 + 26) = 1024;
      *(v23 + 28) = v25;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v22);
    }
  }

  else
  {
    v26 = *outBytesConsumed;
    if (v12 < *outBytesConsumed)
    {
      v26 = v12;
    }

    *outBytesConsumed = v26;
    LODWORD(v27) = *ioNumberPackets;
    if (v13 < *ioNumberPackets)
    {
      LODWORD(v27) = v13;
    }

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v13 == 1;
    }

    if (v28 && v12 == 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v27;
    }

    *ioNumberPackets = v27;
    *(this + 101) += v27;
    *(this + 102) += *outBytesConsumed;
  }

  return v19;
}

OSStatus AudioCodecAppendInputData(AudioCodec inCodec, const void *inInputData, UInt32 *ioInputDataByteSize, UInt32 *ioNumberPackets, const AudioStreamPacketDescription *inPacketDescription)
{
  if (!inCodec)
  {
    return -50;
  }

  v9 = (*(*inCodec + 8))(inCodec);
  if (!v9)
  {
    return 560947818;
  }

  v10 = v9;
  v11 = *(*((**v9)(v9) + 112) + 40);
  if (!v11)
  {
    return -4;
  }

  v12 = v10[3];

  return v11(v12, inInputData, ioInputDataByteSize, ioNumberPackets, inPacketDescription);
}

uint64_t acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator()(void *a1, UInt32 a2, uint64_t a3, UInt32 *outStatus)
{
  v7 = a1;
  v8 = *a1;
  v9 = *(a3 + 16);
  v10 = *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 16 * v10;
    do
    {
      v13 = *(a3 + 12);
      v14 = *(a3 + 16) + v11;
      *(v14 + 12) = v13;
      bzero(*(v14 + 16), v13);
      v11 += 16;
    }

    while (v12 != v11);
    v9 = *(a3 + 16);
  }

  v15 = v9[3];
  v16 = *(v8 + 720);
  if (!v16)
  {
    ioNumberPackets = a2;
    goto LABEL_22;
  }

  v17 = *(v16 + 40);
  v18 = v17 * *(v16 + 96);
  if (v18 >= v15)
  {
    v18 = v9[3];
  }

  v19 = v18 / v17 / *(v16 + 56) * *(v16 + 56);
  v15 = v19 * v17;
  v20 = ExtendedAudioBufferList_Prepare(**(v16 + 64), 1, v19 * v17);
  if (v20)
  {
    v9 = v20;
    v21 = 2003329396;
    if (v20[4 * *v20 + 2] == 1094863915)
    {
      v22 = *(v20 - 9);
      if (v22)
      {
        v75 = a2;
        v76 = outStatus;
        v77 = v7;
        v23 = (v20 + v22 - 48);
        v24 = *v23;
        v25 = *(v9 + v22 - 40) - *v23;
        if (v25 >= 1)
        {
          bzero(v24, v25);
          v24 = *v23;
        }

        v23[1] = v24;
        *ioOutputDataByteSize = 0u;
        memset(v82, 0, sizeof(v82));
        v82[8] = 1;
        *&v82[16] = 0x10000002CLL;
        AudioMetadataFrame::begin_new(v23, ioOutputDataByteSize);
        v26 = 2 * ((v19 + *(v16 + 56) - 1) / *(v16 + 56));
        v27 = *(v16 + 100);
        if (v27 >= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          v29 = 0;
          v30 = (*(v16 + 80) - *(v16 + 72)) / v27;
          do
          {
            v31 = *(v16 + 72);
            ioOutputBufferLists[0] = 1;
            *&ioOutputBufferLists[1] = 0x2800000000;
            *&ioOutputBufferLists[3] = 0;
            *&ioOutputBufferLists[5] = 0x100000000;
            ioOutputBufferLists[7] = v30;
            v80 = v31 + v30 * v29;
            AudioMetadataFrame_AppendEvent(v23, ioOutputBufferLists);
            ++v29;
          }

          while (v29 < v28);
        }

        v32 = *(v8 + 720);
        ioNumberPackets = v75;
        if (v32)
        {
          outStatus = v76;
          v7 = v77;
          goto LABEL_23;
        }

        outStatus = v76;
        v7 = v77;
LABEL_22:
        if ((*(v8 + 712) & 1) == 0 && ((*(v8 + 68) & 0x20) == 0 || *(v8 + 84) < 2u))
        {
          if (*(v8 + 204) == 1 && v15 < *(v8 + 364))
          {
            v35 = *(v8 + 784);
            v36 = *(v8 + 792);
            if (v35 == v36)
            {
              v37 = v7[1];
              *ioOutputDataByteSize = v8;
              ConverterContext::withoutRealtimeSafety(*v37, "encoder client's buffer is too small, allocating more", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#1}>, ioOutputDataByteSize);
              v35 = *(v8 + 784);
              v36 = *(v8 + 792);
            }

            ioOutputDataByteSize[0] = v36 - v35;
            v38 = AudioCodecProduceOutputPackets(*(v8 + 168), v35, ioOutputDataByteSize, &ioNumberPackets, *(a3 + 32), outStatus);
            if (!v38)
            {
              v39 = ioOutputDataByteSize[0];
              if (ioOutputDataByteSize[0] <= v9[3])
              {
                v9[3] = ioOutputDataByteSize[0];
                memcpy(*(v9 + 2), *(v8 + 784), v39);
                goto LABEL_44;
              }

              v38 = 560100710;
              v40 = _os_log_pack_size();
              message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v40 + 88, 17);
              if (message)
              {
                v42 = message;
                v43 = _os_log_pack_fill();
                v44 = ioOutputDataByteSize[0];
                *v43 = 67109120;
                v43[1] = v44;
                caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v42);
LABEL_39:
                v45 = _os_log_pack_size();
                v46 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v45 + 88, 2);
                if (v46)
                {
                  v47 = v46;
                  v48 = _os_log_pack_fill();
                  *v48 = 67109120;
                  v48[1] = v38;
                  caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v47);
                }

                v49 = 0;
                v50 = v9[3];
LABEL_47:
                *(v8 + 824) += v49;
                *(v8 + 832) += v50;
                v51 = *(v8 + 720);
                if (v51)
                {
                  v52 = *(a3 + 16);
                  v53 = *v52;
                  if (v53)
                  {
                    v54 = 0;
                    v55 = 16 * v53;
                    do
                    {
                      v56 = *(a3 + 12);
                      v57 = *(a3 + 16) + v54;
                      *(v57 + 12) = v56;
                      bzero(*(v57 + 16), v56);
                      v54 += 16;
                    }

                    while (v55 != v54);
                    v52 = *(a3 + 16);
                  }

                  *ioOutputDataByteSize = v9;
                  *ioOutputBufferLists = v52;
                  if (v49)
                  {
                    ioActionFlags = 0;
                    if (AudioUnitProcessMultiple(*(v51 + 8), &ioActionFlags, (v51 + 104), v49, 1u, ioOutputDataByteSize, 1u, ioOutputBufferLists))
                    {
                      v58 = _os_log_pack_size();
                      Packets = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v58 + 88, 16);
                      if (Packets)
                      {
                        v60 = Packets;
                        *_os_log_pack_fill() = 0;
                        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v60);
                        LODWORD(Packets) = 0;
                      }

                      v34 = 0x100000000;
LABEL_75:
                      v21 = Packets;
                      return v34 | v21;
                    }

                    *(v51 + 104) = *(v51 + 104) + v49;
                  }

                  else
                  {
                    v61 = *v52;
                    if (v61)
                    {
                      v62 = (v61 + 3) & 0x1FFFFFFFCLL;
                      v63 = vdupq_n_s64(v61 - 1);
                      v64 = xmmword_18F9016B0;
                      v65 = xmmword_18F9016C0;
                      v66 = v52 + 11;
                      v67 = vdupq_n_s64(4uLL);
                      do
                      {
                        v68 = vmovn_s64(vcgeq_u64(v63, v65));
                        if (vuzp1_s16(v68, *v63.i8).u8[0])
                        {
                          *(v66 - 8) = 0;
                        }

                        if (vuzp1_s16(v68, *&v63).i8[2])
                        {
                          *(v66 - 4) = 0;
                        }

                        if (vuzp1_s16(*&v63, vmovn_s64(vcgeq_u64(v63, *&v64))).i32[1])
                        {
                          *v66 = 0;
                          v66[4] = 0;
                        }

                        v64 = vaddq_s64(v64, v67);
                        v65 = vaddq_s64(v65, v67);
                        v66 += 16;
                        v62 -= 4;
                      }

                      while (v62);
                    }
                  }
                }

                v69 = *(v8 + 72);
                *a3 = v49;
                Packets = ACBaseAudioSpan::sizeOfFirstPackets(a3, v49, v69);
                v34 = HIDWORD(Packets);
                if (HIDWORD(Packets))
                {
                  *(a3 + 8) = Packets;
                  v71 = *(v8 + 856);
                  if (v71)
                  {
                    acv2::AudioConverterBase::writeCapture(v71, a3, v70);
                  }

                  v34 = 0x100000000;
                  if (*(v8 + 204) == 1)
                  {
                    v72 = *(a3 + 40);
                    if (v72)
                    {
                      v73 = v7[1];
                      *ioOutputDataByteSize = v8;
                      ioOutputDataByteSize[2] = v49;
                      *v82 = v72;
                      ConverterContext::withoutRealtimeSafety(*v73, "fetching packet dependencies", caulk::function_ref<int ()(void)>::functor_invoker<acv2::CodecConverter::ProduceOutput(ACAudioSpan &,ConverterContext)::$_0::operator() const(unsigned int,ACAudioSpan &,unsigned int &)::{lambda(void)#2}>, ioOutputDataByteSize);
                      v34 = 0x100000000;
                    }
                  }

                  LODWORD(Packets) = v49;
                }

                goto LABEL_75;
              }
            }

LABEL_38:
            if (v38)
            {
              goto LABEL_39;
            }

LABEL_44:
            v50 = v9[3];
            if (*(v8 + 205) == 1)
            {
              v49 = v50 / *(v8 + 72);
            }

            else
            {
              v49 = ioNumberPackets;
            }

            goto LABEL_47;
          }

          v33 = AudioCodecProduceOutputPackets(*(v8 + 168), *(v9 + 2), v9 + 3, &ioNumberPackets, *(a3 + 32), outStatus);
LABEL_37:
          v38 = v33;
          goto LABEL_38;
        }

LABEL_23:
        v33 = AudioCodecProduceOutputBufferList(*(v8 + 168), v9, &ioNumberPackets, *(a3 + 32), outStatus);
        goto LABEL_37;
      }
    }

    v34 = 0;
  }

  else
  {
    v34 = 0;
    v21 = 561013874;
  }

  return v34 | v21;
}

OSStatus AudioCodecProduceOutputPackets(AudioCodec inCodec, void *outOutputData, UInt32 *ioOutputDataByteSize, UInt32 *ioNumberPackets, AudioStreamPacketDescription *outPacketDescription, UInt32 *outStatus)
{
  if (!inCodec)
  {
    return -50;
  }

  v11 = (*(*inCodec + 8))(inCodec);
  v12 = v11;
  if (ioOutputDataByteSize)
  {
    v13 = *ioOutputDataByteSize;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = 560947818;
    if (!ioOutputDataByteSize)
    {
      return result;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = *(*((**v11)(v11) + 112) + 48);
  if (v14)
  {
    result = v14(v12[3], outOutputData, ioOutputDataByteSize, ioNumberPackets, outPacketDescription, outStatus);
    if (!ioOutputDataByteSize)
    {
      return result;
    }
  }

  else
  {
    result = -4;
    if (!ioOutputDataByteSize)
    {
      return result;
    }
  }

LABEL_12:
  if (*ioOutputDataByteSize > v13)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void AudioConverterServer::syncThreadPriorityAndWorkgroup(AudioConverterServer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = (*(*this + 16))(this);
  if (v3 > 0x5F)
  {
    if (*(this + 28) != 97)
    {
      v9 = *(this + 6);
      caulk::mach::this_thread::set_priority();
      *(this + 28) = 97;
    }

    auoop::WorkgroupMirror::lookup(v10, *(this + 33), v3);
    if (v11 != *(this + 26) || v13[24] != *(this + 256))
    {
      v6 = (this + 120);
      if (v11)
      {
        std::optional<audioipc::os_workgroup_joiner>::emplace[abi:ne200100]<caulk::mach::os_workgroup_managed &,void>(v6, v10);
      }

      else if (*(this + 192) == 1)
      {
        audioipc::os_workgroup_joiner::~os_workgroup_joiner(v6);
        *(this + 192) = 0;
      }

      caulk::mach::details::holder::operator=(this + 26, &v11);
      v7 = *v13;
      *(this + 216) = v12;
      *(this + 232) = v7;
      *(this + 241) = *&v13[9];
    }

    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v10);
    goto LABEL_18;
  }

  AudioConverterServer::WorkgroupJoiner::leave((this + 120), v2);
  if (!v3)
  {
LABEL_18:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = *MEMORY[0x1E69E9840];

  audioipc::priority_propagator_impl::apply_priority(this + 6, v3);
}

__int128 *audioipc::priority_propagator_impl::apply_priority(__int128 *this, int a2)
{
  if (*(this + 4) != a2)
  {
    v3 = this;
    if (a2 > 95)
    {
      v4 = *this;
    }

    this = caulk::mach::this_thread::set_priority();
    *(v3 + 16) = a2;
  }

  return this;
}

uint64_t ACRendererSharedMemory::mutableAudioBufferList(ACRendererSharedMemory *this, unsigned int a2, int a3)
{
  v3 = *(this + 11 * a2 + 7);
  result = v3 + 48;
  if (*(v3 + 48))
  {
    v5 = 0;
    v6 = vdupq_n_s64((*(v3 + 48) + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL);
    v7 = ((*(v3 + 48) + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL) - ((*(v3 + 48) - 1) & 3) + 4;
    v8 = (v3 + 108);
    do
    {
      v9 = vdupq_n_s64(v5);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_18F9016C0)));
      if (vuzp1_s16(v10, *v6.i8).u8[0])
      {
        *(v8 - 12) = a3;
      }

      if (vuzp1_s16(v10, *&v6).i8[2])
      {
        *(v8 - 8) = a3;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_18F9016B0)))).i32[1])
      {
        *(v8 - 4) = a3;
        *v8 = a3;
      }

      v5 += 4;
      v8 += 16;
    }

    while (v7 != v5);
  }

  return result;
}

uint64_t _ZN26AudioConverterRenderServer17converterCallbackMUlP20OpaqueAudioConverterPjP15AudioBufferListPP28AudioStreamPacketDescriptionPvE_8__invokeES1_S2_S4_S7_S8_(uint64_t a1, unsigned int *a2, unsigned int *a3, void **a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = *(*a5 + 488);
  v10 = *(v9 + 12);
  if (v10)
  {
    goto LABEL_2;
  }

  v18 = a3[3];
  *(v8 + 576) = 0;
  v19 = *a2;
  can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v8 + 8, 0.0);
  v21 = can_send;
  v22 = HIDWORD(can_send);
  if (can_send & 0x100000000) != 0 && (can_send)
  {
    *v9 = 26112;
    *(v9 + 12) = v19;
    *(v9 + 16) = v18;
    atomic_store(0, *(v8 + 16));
    v23 = audioipc::eventlink_primitive::wait_signal_or_error(*(v8 + 48));
    v24 = atomic_load((v8 + 41));
    if (v24)
    {
      v28 = 0;
      v27 = 0;
      atomic_store(2u, *(v8 + 16));
    }

    else
    {
      v25 = v23;
      v26 = *(v8 + 16);
      if (!HIDWORD(v23))
      {
        atomic_store(2u, v26);
        audioipc::log_error("rt_sender::signal_wait", v23);
        v29 = 0;
        v27 = v25 & 0xFFFFFF00;
        v28 = v25;
        goto LABEL_18;
      }

      v27 = 0;
      v28 = 1;
      atomic_store(1u, v26);
      *(v8 + 40) = 1;
    }

    v29 = 0x100000000;
LABEL_18:
    v21 = v28 | v27 | v29;
    v22 = HIDWORD(v29);
  }

  if (!v22)
  {
    v30 = 560164718;
    v39 = _os_log_pack_size();
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v39 + 88, 16);
    if (!message)
    {
      return v30;
    }

    v41 = message;
    v42 = _os_log_pack_fill();
    v43 = *(*(v8 + 480) + 104);
    *v42 = 134218240;
    *(v42 + 4) = v43;
    *(v42 + 12) = 1024;
    *(v42 + 14) = v21;
LABEL_41:
    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v41);
    return v30;
  }

  if ((v21 & 1) == 0)
  {
    v30 = 561277293;
    v44 = _os_log_pack_size();
    v45 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v44 + 88, 16);
    if (!v45)
    {
      return v30;
    }

    v41 = v45;
    v46 = _os_log_pack_fill();
    v47 = *(*(v8 + 480) + 104);
    *v46 = 134217984;
    *(v46 + 4) = v47;
    goto LABEL_41;
  }

  if (*v9 != 2)
  {
    return 4294956420;
  }

  v30 = *(v9 + 4);
  if (!v30)
  {
    v10 = *(v9 + 12);
LABEL_2:
    if (v10 >= *a2)
    {
      v10 = *a2;
    }

    *a2 = v10;
    if (a4 && *(v9 + 12))
    {
      v11 = (*(v8 + 520) + 16 * *(v8 + 576));
      v12 = &v11[2 * v10 - 2];
      if (16 * (v10 - 1) != -16)
      {
        memmove(*a4, (*(v8 + 520) + 16 * *(v8 + 576)), 16 * (v10 - 1) + 16);
        v10 = *a2;
      }

      v13 = *v11;
      v14 = *(v12 + 3) + *v12 - *v11;
      v15 = *v11 - *(v8 + 580) + v14;
      if (v10)
      {
        v16 = *a4;
        v17 = *a4 + 16 * v10;
        do
        {
          *v16 -= v13;
          v16 += 2;
        }

        while (v16 != v17);
      }
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      v31 = *(*(v8 + 296) + 96);
      v14 = v31 * v10;
      v13 = (*(v8 + 576) * v31);
      v15 = v31 * v10;
    }

    v32 = ACRendererSharedMemory::mutableAudioBufferList(*(v8 + 496), 0, v14);
    v33 = *v32;
    v34 = *a3;
    if (*v32 >= *a3)
    {
      v33 = *a3;
    }

    memcpy(a3 + 2, v32 + 2, 16 * v33);
    LODWORD(v35) = *v32;
    if (*v32 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v35;
    }

    if (v35)
    {
      v36 = a3 + 4;
      do
      {
        *v36 += v13;
        v36 += 2;
        --v35;
      }

      while (v35);
    }

    v37 = *(v9 + 12);
    *(v9 + 16) -= v15;
    *(v9 + 12) = v37 - *a2;
    *(v8 + 576) += *a2;
    *(v8 + 580) += v15;
    return *(v9 + 4);
  }

  return v30;
}

uint64_t ACSpanningInputBuffer::checkRelocateClientPacketDescriptions(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = 0;
  }

  else
  {
    v2 = result + 128 == a2;
  }

  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 32);
    if (v4 != *(result + 232))
    {
      v5 = *(result + 128);
      v6 = 16 * v5;
      v7 = *(result + 272);
      v8 = *(result + 256);
      if (v5 <= (v7 - v8) >> 4)
      {
        v13 = *(result + 264);
        v14 = v13 - v8;
        if (v5 <= (v13 - v8) >> 4)
        {
          if (v5)
          {
            result = memmove(*(result + 256), *(a2 + 32), 16 * v5);
          }

          v15 = &v8[v6];
        }

        else
        {
          if (v13 != v8)
          {
            result = memmove(*(result + 256), *(a2 + 32), v13 - v8);
          }

          v16 = v3[33];
          if (v14 != v6)
          {
            v17 = (v4 + v14);
            v18 = (&v8[v6] - v13);
            v16 = v3[33];
            do
            {
              v19 = *v17++;
              *v16 = v19;
              v16 += 16;
              v18 -= 16;
            }

            while (v18);
          }

          v15 = v16;
        }

        v3[33] = v15;
        goto LABEL_33;
      }

      v9 = MEMORY[0x1E69E3C08];
      if (v8)
      {
        *(result + 264) = v8;
        if (v7 - v8 < 0)
        {
          goto LABEL_36;
        }

        result = *v9;
        if (!*v9)
        {
          goto LABEL_36;
        }

        caulk::rt_safe_memory_resource::rt_deallocate(result, v8);
        v7 = 0;
        v3[32] = 0;
        v3[33] = 0;
        v3[34] = 0;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= v5)
      {
        v10 = v5;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      result = *v9;
      if (*v9)
      {
        result = caulk::rt_safe_memory_resource::rt_allocate(result);
        v3[32] = result;
        v3[33] = result;
        v3[34] = result + 16 * v11;
        do
        {
          v12 = *v4++;
          *result = v12;
          result += 16;
          v6 -= 16;
        }

        while (v6);
        v3[33] = result;
LABEL_33:
        v3[20] = v3[32];
        return result;
      }

LABEL_36:
      __break(1u);
    }
  }

  return result;
}

void AudioFileObject::AppendPacket(AudioFileObject *this, const AudioStreamPacketDescription *a2)
{
  v4 = *(this + 15);
  if (!v4)
  {
    operator new();
  }

  v5 = *(this + 11);
  v10 = *a2;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = DWORD2(v10);
  }

  v7 = *(v4 + 24);
  if (v7)
  {
    CompressedPacketTable::operator[](v9, v4, v7 - 1);
    v7 = v9[2];
  }

  v11 = v7 + v6;
  CompressedPacketTable::push_back(v4, &v10);
  mDataByteSize = a2->mDataByteSize;
  if (mDataByteSize > *(this + 28))
  {
    *(this + 28) = mDataByteSize;
  }
}

void CompressedPacketTable::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 24);
  if ((*(a1 + 24) & 0x1F) == 0)
  {
    v5 = malloc_type_malloc(0x300uLL, 0x1000040504FFAC1uLL);
    if (!v5)
    {
      goto LABEL_65;
    }

    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v7 >= v6)
    {
      v9 = *a1;
      v10 = v7 - *a1;
      v11 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3) + 1;
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v14 = 8 * (v10 >> 3);
      *v14 = 0;
      *(v14 + 8) = 6;
      *(v14 + 16) = v5;
      v8 = v14 + 24;
      v15 = v14 - v10;
      memcpy((v14 - v10), v9, v10);
      *a1 = v15;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 8) = 6;
      *(v7 + 16) = v5;
      v8 = v7 + 24;
    }

    *(a1 + 8) = v8;
  }

  v16 = *a1 + 24 * (v4 >> 5);
  v17 = *a2;
  v18 = *(v16 + 16) + 24 * (v4 & 0x1F);
  *(v18 + 16) = *(a2 + 2);
  *v18 = v17;
  if ((v4 & 0x1F) == 0x1F)
  {
    v19 = *(v16 + 16);
    if (!*(v19 + 8))
    {
      v20 = -1;
      v21 = 32;
      do
      {
        if (v20 == 30)
        {
          goto LABEL_23;
        }

        v22 = *(v19 + v21);
        ++v20;
        v21 += 24;
      }

      while (!v22);
      if (v20 >= 0x1F)
      {
LABEL_23:
        v23 = *v19;
        v24 = *v19 + *(v19 + 12);
        if (v24 == *(v19 + 24))
        {
          v25 = 0;
          v26 = (v19 + 36);
          while (v25 != 30)
          {
            v24 += *v26;
            v27 = *(v26 + 3);
            v26 += 6;
            ++v25;
            if (v24 != v27)
            {
              goto LABEL_31;
            }
          }

          v25 = 31;
LABEL_31:
          v29 = v25 > 0x1E;
          v28 = *(v19 + 744) - v23 + *(v19 + 756);
          *v16 = v23;
          if (v28 < 0x10000)
          {
            if (v25 >= 0x1F)
            {
              v30 = malloc_type_malloc(0x40uLL, 0x1000040BDFB0063uLL);
              if (v30)
              {
                v31 = 0;
                *(v16 + 16) = v30;
                *(v16 + 8) = 0;
                v32 = v19 + 96;
                v33 = vdupq_n_s64(v23);
                do
                {
                  v34.i64[0] = *(v32 - 48);
                  v34.i64[1] = *(v32 - 24);
                  v35.i64[0] = *(v32 - 96);
                  v35.i64[1] = *(v32 - 72);
                  v36.i64[0] = *(v32 + 48);
                  v36.i64[1] = *(v32 + 72);
                  v37.i64[0] = *v32;
                  v37.i64[1] = *(v32 + 24);
                  v38.i32[0] = *(v32 + 12);
                  v38.i32[1] = *(v32 + 36);
                  v39.i32[0] = *(v32 + 60);
                  v39.i32[1] = *(v32 + 84);
                  v40.i32[0] = *(v32 - 84);
                  v40.i32[1] = *(v32 - 60);
                  v41.i32[0] = *(v32 - 36);
                  v41.i32[1] = *(v32 - 12);
                  *&v30[v31] = vuzp1q_s16(vuzp1q_s32(vaddw_u32(vsubq_s64(v35, v33), v40), vaddw_u32(vsubq_s64(v34, v33), v41)), vuzp1q_s32(vaddw_u32(vsubq_s64(v37, v33), v38), vaddw_u32(vsubq_s64(v36, v33), v39)));
                  v31 += 16;
                  v32 += 192;
                }

                while (v31 != 64);
LABEL_63:
                free(v19);
                goto LABEL_64;
              }

              goto LABEL_65;
            }

LABEL_46:
            v53 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
            if (v53)
            {
              *(v16 + 16) = v53;
              *(v16 + 8) = 1;
              v54 = (v19 + 12);
              v55 = v53 + 1;
              v56 = 31;
              do
              {
                *(v55 - 1) = v54[3] - v23;
                v57 = *v54;
                v54 += 6;
                *v55 = v57;
                v55 += 2;
                --v56;
              }

              while (v56);
              v53[62] = 0;
              v53[63] = *(v19 + 756);
              goto LABEL_63;
            }

LABEL_65:
            exception = __cxa_allocate_exception(8uLL);
            v72 = std::bad_alloc::bad_alloc(exception);
          }
        }

        else
        {
          v28 = *(v19 + 744) - v23 + *(v19 + 756);
          *v16 = v23;
          if (v28 < 0x10000)
          {
            goto LABEL_46;
          }

          v29 = 0;
        }

        if (HIDWORD(v28))
        {
          goto LABEL_50;
        }

        v42 = (v19 + 60);
        v43 = 0uLL;
        v44 = 32;
        do
        {
          v45.i32[0] = *(v42 - 12);
          v45.i32[1] = *(v42 - 6);
          v45.i32[2] = *v42;
          v45.i32[3] = v42[6];
          v43 = vmaxq_u32(v45, v43);
          v42 += 24;
          v44 -= 4;
        }

        while (v44);
        if (vmaxvq_u32(v43) >> 16)
        {
LABEL_50:
          if (v29)
          {
            v58 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
            if (v58)
            {
              v59 = 0;
              *(v16 + 16) = v58;
              *(v16 + 8) = 4;
              v60 = v19;
              do
              {
                *&v58[v59] = *v60 - v23 + *(v60 + 12);
                v59 += 8;
                v60 += 24;
              }

              while (v59 != 256);
              goto LABEL_63;
            }
          }

          else
          {
            v61 = malloc_type_malloc(0x200uLL, 0x1000040D9A13B51uLL);
            if (v61)
            {
              *(v16 + 16) = v61;
              *(v16 + 8) = 5;
              v62 = (v19 + 12);
              v63 = v61 + 8;
              v64 = 31;
              do
              {
                *(v63 - 1) = *(v62 + 3) - v23;
                v65 = *v62;
                v62 += 6;
                *v63 = v65;
                v63 += 4;
                --v64;
              }

              while (v64);
              *(v61 + 62) = 0;
              *(v61 + 126) = *(v19 + 756);
              goto LABEL_63;
            }
          }
        }

        else if (v29)
        {
          v46 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
          if (v46)
          {
            v47 = 0;
            *(v16 + 16) = v46;
            *(v16 + 8) = 2;
            v48 = vdupq_n_s64(v23);
            v49 = v19 + 48;
            do
            {
              v50.i64[0] = *(v49 - 48);
              v50.i64[1] = *(v49 - 24);
              v51.i64[0] = *v49;
              v51.i64[1] = *(v49 + 24);
              v52.i32[0] = *(v49 - 36);
              v52.i32[1] = *(v49 - 12);
              v52.i32[2] = *(v49 + 12);
              v52.i32[3] = *(v49 + 36);
              *&v46[v47] = vaddq_s32(v52, vuzp1q_s32(vsubq_s64(v50, v48), vsubq_s64(v51, v48)));
              v47 += 16;
              v49 += 96;
            }

            while (v47 != 128);
            goto LABEL_63;
          }
        }

        else
        {
          v66 = malloc_type_malloc(0x100uLL, 0x1000040789AEA99uLL);
          if (v66)
          {
            *(v16 + 16) = v66;
            *(v16 + 8) = 3;
            v67 = (v19 + 12);
            v68 = v66 + 4;
            v69 = 31;
            do
            {
              *(v68 - 1) = v67[3] - v23;
              v70 = *v67;
              v67 += 6;
              *v68 = v70;
              v68 += 4;
              --v69;
            }

            while (v69);
            *(v66 + 62) = 0;
            *(v66 + 126) = *(v19 + 756);
            goto LABEL_63;
          }
        }

        goto LABEL_65;
      }
    }
  }

LABEL_64:
  ++*(a1 + 24);
}

uint64_t AudioConverterRenderClient::enterRenderLoop(audioipc *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned int *, uint64_t, uint64_t, uint64_t), uint64_t a4, AudioBufferList *a5, uint64_t a6, uint64_t a7, UInt32 *a8, const AudioStreamPacketDescription *a9)
{
  v13 = a1;
  v14 = *(a1 + 34);
  *(v14 + 12) = 0;
  *(v14 + 16) = 0;
  *(v14 + 32) = audioipc::current_render_context(a1);
  mDataByteSize = a5->mBuffers[0].mDataByteSize;
  v230 = a8;
  v16 = *a8;
  if (a5->mNumberBuffers)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      *(*(a7 + 40) + v17 * 16 + 56) = a5->mBuffers[v17];
      ++v18;
      ++v17;
    }

    while (v18 < a5->mNumberBuffers);
  }

  v19 = a9;
  if (*(*(a7 + 56) + 8) == **(a7 + 56))
  {
    v19 = 0;
  }

  *(a7 + 48) = v19;
  *(a7 + 76) = v16;
  *(a7 + 88) = 0;
  v228 = *a8;
  *a8 = 0;
  v220 = *(*(v13 + 35) + 128);
  v226 = mDataByteSize;
  if (*(v13 + 93))
  {
    if (a5->mBuffers[a5->mNumberBuffers].mNumberChannels == 1094863915)
    {
      v20 = a5[-2].mBuffers[0].mDataByteSize;
      if (v20)
      {
        v21 = &a5[-2] + v20;
      }

      else
      {
        v21 = 0;
      }

      v217 = v21;
    }

    else
    {
      v217 = 0;
    }

    if (mDataByteSize <= v220)
    {
      LOWORD(v24) = 0;
      v25 = 0;
    }

    else
    {
      v23 = *(v13 + 10);
      v24 = *(v23 + 92);
      if (v24)
      {
        v24 = *(v23 + 116) + 1;
      }

      v25 = v24 & 0xFF00;
      LOWORD(v24) = v24;
    }

    if (v217)
    {
      v26 = v24 | v25;
      if ((v217[1] - *v217) <= 0x2B)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v217;
      }

      v28 = *(v27 + 40);
      if (mDataByteSize <= v220)
      {
        v22 = v28;
      }

      else
      {
        v22 = v26;
      }
    }

    else
    {
      v22 = 0;
    }

    if ((v228 / *(v13 + 94)) + 1 < v22)
    {
      v29 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v29 + 88, 2);
      if (message)
      {
        v31 = message;
        v32 = _os_log_pack_fill();
        v33 = *(v13 + 48);
        *v32 = 134218496;
        *(v32 + 4) = v33;
        *(v32 + 12) = 1024;
        *(v32 + 14) = v22;
        *(v32 + 18) = 1024;
        *(v32 + 20) = v228;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v31);
      }

      mDataByteSize = v226;
    }
  }

  else
  {
    v22 = 0;
    v217 = 0;
  }

  p_mNumberChannels = &a5->mBuffers[0].mNumberChannels;
  v34 = (a6 + 76);
  v219 = (v13 + 408);
  p_mNumberBuffers = &a5[-2].mNumberBuffers;
  v35 = vdupq_n_s64(4uLL);
  v237 = v35;
  ioData = a5;
  v231 = v13;
  v229 = a7;
  v225 = v22;
  do
  {
    v36 = v228 - *v230;
    if (v228 <= *v230)
    {
      break;
    }

    v37 = *(a7 + 88);
    if (v37 >= mDataByteSize)
    {
      break;
    }

    v38 = mDataByteSize - v37;
    v39 = *(*(v13 + 35) + 128);
    if (v39 >= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = *(*(v13 + 35) + 128);
    }

    v41 = *(a7 + 80);
    v42 = v39 / v41;
    if (*(v13 + 93))
    {
      v43 = v42 - *(v13 + 95);
      if (v43 >= v36)
      {
        v44 = v228 - *v230;
      }

      else
      {
        v44 = v43;
      }
    }

    else
    {
      if (v42 >= v36)
      {
        v42 = v228 - *v230;
      }

      if (mDataByteSize <= v220)
      {
        v44 = v228 - *v230;
      }

      else
      {
        v44 = v42;
      }
    }

    v45 = *(v13 + 33);
    *(v45 + 96) = *(a6 + 80);
    *(v45 + 100) = v41;
    v46 = *(v13 + 34);
    can_send = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v13 + 8, *v35.i64);
    v48 = can_send;
    v49 = HIDWORD(can_send);
    if (can_send & 0x100000000) != 0 && (can_send)
    {
      *v46 = 25601;
      *(v46 + 20) = v40;
      *(v46 + 8) = v44;
      *(v46 + 24) = v225;
      v50 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(v13 + 8);
      v48 = v50;
      v49 = HIDWORD(v50);
    }

    if (!v49)
    {
      v125 = _os_log_pack_size();
      v126 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v125 + 88, 16);
      v127 = 560164718;
      if (v126)
      {
        v128 = v126;
        goto LABEL_141;
      }

      goto LABEL_165;
    }

    if (!v48)
    {
      v139 = _os_log_pack_size();
      v140 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v139 + 88, 16);
      v127 = 561277293;
      if (!v140)
      {
        goto LABEL_165;
      }

      v128 = v140;
LABEL_162:
      v153 = _os_log_pack_fill();
      v154 = *(v13 + 48);
      *v153 = 134217984;
      *(v153 + 4) = v154;
      goto LABEL_163;
    }

    v232 = v46;
    while (1)
    {
      v51 = *(v46 + 1);
      if (v51 != 102)
      {
        if (v51 == 100)
        {
          v141 = _os_log_pack_size();
          v142 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v141 + 88, 16);
          v127 = 561277293;
          if (!v142)
          {
            goto LABEL_165;
          }

          v138 = v142;
          goto LABEL_157;
        }

        if (v51 != 101)
        {
          v143 = _os_log_pack_size();
          v144 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v143 + 88, 16);
          v127 = 2003329396;
          if (!v144)
          {
            goto LABEL_165;
          }

          v138 = v144;
          goto LABEL_157;
        }

        v131 = *(v46 + 8);
        v132 = ACRendererSharedMemory::mutableAudioBufferList(*(v13 + 35), 1u, *(v46 + 20));
        v133 = *(v229 + 56);
        v134 = *v133;
        if (v131)
        {
          v135 = *(v13 + 39);
          if (v135)
          {
            if (v133[1] != v134)
            {
              memmove(v134, v135, 16 * v131);
              v134 = **(v229 + 56);
            }
          }
        }

        if (validateInputProcData(v229, v132, v131, v134, *(v229 + 80) | 0x100000000))
        {
          v136 = _os_log_pack_size();
          v137 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v136 + 88, 16);
          v127 = 2003329396;
          if (!v137)
          {
            goto LABEL_165;
          }

          v138 = v137;
LABEL_157:
          v145 = _os_log_pack_fill();
          v146 = *(v13 + 48);
          *v145 = 134217984;
          *(v145 + 4) = v146;
          v147 = *(gAudioConverterDeferredLog + 16);
          v148 = v138;
          goto LABEL_164;
        }

        if (*(v229 + 72) == 1)
        {
          if (v131)
          {
            v169 = 0;
            v170 = 0;
            v171 = *(v229 + 40);
            LODWORD(v172) = *(v171 + 60);
            v173 = v132[3];
            if (v172 >= v173)
            {
              v172 = v173;
            }

            else
            {
              v172 = v172;
            }

            v174 = **(v229 + 56);
            v175 = (*(*(v229 + 56) + 8) - v174) >> 4;
            while (1)
            {
              if (v175 < v131)
              {
                v170 = 0;
                LODWORD(v131) = 0;
                goto LABEL_208;
              }

              v176 = *v174 + *(v174 + 12);
              if (v176 > v172)
              {
                break;
              }

              ++v169;
              v174 += 16;
              v170 = v176;
              if (v131 == v169)
              {
                v170 = v176;
                goto LABEL_208;
              }
            }

            LODWORD(v131) = v169;
LABEL_208:
            v179 = *v132;
            if (v179)
            {
LABEL_209:
              v180 = 0;
              for (i = 0; i < v179; ++i)
              {
                v182 = *&v132[v180 / 4 + 4];
                v183 = *(v171 + v180 + 64);
                if (v182 != v183)
                {
                  memcpy(v183, v182, v170);
                  v171 = *(v229 + 40);
                  v179 = *v132;
                }

                v184 = v171 + v180;
                *(v184 + 60) = *(v171 + v180 + 60) - v170;
                *(v184 + 64) = *(v171 + v180 + 64) + v170;
                v180 += 16;
              }

              if (*(v229 + 72))
              {
                goto LABEL_214;
              }

LABEL_219:
              *(v229 + 88) += v170;
              *v230 += v131;
              v190 = *(v13 + 95);
              v191 = *(v13 + 94);
              if (v190 && v131 < v191)
              {
                v192 = 0;
              }

              else
              {
                v192 = (v190 + v131 - v191) % v191;
              }

              *(v13 + 95) = v192;
              v127 = *(v46 + 4);
              goto LABEL_165;
            }
          }

          else
          {
            v179 = *v132;
            if (v179)
            {
              LODWORD(v131) = 0;
              v170 = 0;
              v171 = *(v229 + 40);
              goto LABEL_209;
            }

            LODWORD(v131) = 0;
            v170 = 0;
          }

LABEL_214:
          v185 = *(v229 + 48);
          if (v185)
          {
            memcpy(v185, **(v229 + 56), 16 * v131);
            v186 = *(v229 + 48);
            if (v131)
            {
              v187 = *(v229 + 88);
              v188 = *(v229 + 48);
              v189 = v131;
              do
              {
                *v188 += v187;
                v188 += 2;
                --v189;
              }

              while (v189);
            }

            *(v229 + 48) = v186 + 16 * v131;
            *(v229 + 76) += v131;
          }

          goto LABEL_219;
        }

        v171 = *(v229 + 40);
        v177 = *(v171 + 60);
        if (v177 >= v132[3])
        {
          v177 = v132[3];
        }

        v178 = *(v229 + 80);
        LODWORD(v131) = v177 / v178;
        v170 = v177 / v178 * v178;
        v179 = *v132;
        if (v179)
        {
          goto LABEL_209;
        }

        goto LABEL_219;
      }

      v53 = *(v46 + 12);
      v52 = *(v46 + 16);
      *(v46 + 12) = 0;
      *(v46 + 16) = 0;
      v54 = *(v13 + 35);
      if (*(v54 + 10) >= v52)
      {
        v55 = v52;
      }

      else
      {
        v55 = *(v54 + 10);
      }

      v56 = ACRendererSharedMemory::mutableAudioBufferList(v54, 0, v55);
      v58 = v56;
      if (!*(*(a6 + 40) + 60))
      {
        v79 = *(a6 + 56);
        v80 = *v79;
        *(a6 + 48) = *v79;
        if (*v56)
        {
          v81 = 0;
          v82 = 0;
          do
          {
            *(*(a6 + 40) + v81 * 4 + 56) = *&v56[v81 + 2];
            ++v82;
            v81 += 4;
          }

          while (v82 < *v56);
          v79 = *(a6 + 56);
          v83 = *v79;
        }

        else
        {
          v83 = v80;
        }

        if (v79[1] == v83)
        {
          v80 = 0;
        }

        *(a6 + 48) = v80;
        *(a6 + 76) = v53;
        *(a6 + 88) = 0;
        v112 = *(v13 + 49);
        LODWORD(v112) = *(*(a6 + 40) + 60);
        v110 = a3(a2, v34, *(a6 + 40) + 48, a6 + 48, a4);
        v113 = *(v13 + 49);
        if (v110)
        {
          v97 = 0;
          v111 = 0;
          *(*(a6 + 40) + 60) = 0;
          *(a6 + 48) = 0;
          *(a6 + 76) = 0;
          *(a6 + 88) = 0;
          goto LABEL_128;
        }

        v114 = *(*(a6 + 40) + 60);
        v110 = validateInputProcData(a6, (*(a6 + 40) + 48), *(a6 + 76), *(a6 + 48), *(a6 + 80) | 0x100000000);
        v115 = v219;
        if (*v13)
        {
          v115 = (*v13 + 136);
        }

        if (*v115)
        {
          AudioConverterCapturer::write(*v115, (*(a6 + 40) + 48), *(a6 + 48), *(a6 + 76));
        }

        if (v110)
        {
          v97 = 0;
          v111 = 0;
          goto LABEL_128;
        }
      }

      v59 = *(v13 + 38);
      v60 = v34;
      if (v59)
      {
        v238 = *(*(v13 + 10) + 116);
        v60 = &v238;
        if (v238 >= *v34)
        {
          v60 = v34;
        }
      }

      v61 = *v60;
      v62 = *(v13 + 35);
      v63 = *(v62 + 56);
      v64 = v63[12];
      if (v64)
      {
        v65 = 0;
        v66 = *(v62 + 40);
        v67 = (v64 + 0xFFFFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFFFFLL;
        v68 = v67 - ((v64 + 0xFFFFFFFFFFFFFFFLL) & 3) + 4;
        v57 = vdupq_n_s64(v67);
        v69 = v63 + 27;
        do
        {
          v70 = vdupq_n_s64(v65);
          v71 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(v70, xmmword_18F9016C0)));
          if (vuzp1_s16(v71, *v57.i8).u8[0])
          {
            *(v69 - 12) = v66;
          }

          if (vuzp1_s16(v71, *&v57).i8[2])
          {
            *(v69 - 8) = v66;
          }

          if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, vorrq_s8(v70, xmmword_18F9016B0)))).i32[1])
          {
            *(v69 - 4) = v66;
            *v69 = v66;
          }

          v65 += 4;
          v69 += 16;
        }

        while (v68 != v65);
      }

      v72 = *(a6 + 48);
      v73 = !v59 || v72 == 0;
      v74 = v73;
      v236 = v74;
      if (v73)
      {
        v75 = 0;
        v76 = *(*(a6 + 40) + 60);
        if (v76 >= v63[15])
        {
          v76 = v63[15];
        }

        v77 = *(a6 + 80);
        v234 = v76 / v77;
        v78 = v76 / v77 * v77;
      }

      else
      {
        v84 = *v72;
        v75 = *v72 - *(a6 + 88);
        v85 = *(a6 + 76);
        v86 = v85 >= v61 ? v61 : v85;
        if (v86 && ((LODWORD(v87) = *(*(a6 + 40) + 60), v88 = v63[15], v87 >= v88) ? (v87 = v88) : (v87 = v87), v89 = *(v72 + 3), v89 <= v87))
        {
          v121 = 0;
          v122 = v72 + 7;
          while (1)
          {
            v78 = v89;
            if (v86 - 1 == v121)
            {
              break;
            }

            v123 = *(v122 - 3);
            v124 = *v122;
            v122 += 4;
            v89 = v123 - v84 + v124;
            ++v121;
            if (v89 > v87)
            {
              v234 = v121;
              goto LABEL_93;
            }
          }

          v234 = v86;
        }

        else
        {
          v78 = 0;
          v234 = 0;
        }
      }

LABEL_93:
      if (v64)
      {
        v90 = 0;
        v91 = 0;
        v92 = v78 + v75;
        v93 = *(a6 + 40);
        do
        {
          v94 = *&v63[v90 / 4 + 16];
          v95 = *(v93 + v90 + 64);
          if (v94 != v95)
          {
            memcpy(v94, &v95[v75], v78);
            v93 = *(a6 + 40);
            v64 = v63[12];
          }

          v63[v90 / 4 + 15] = v78;
          v96 = v93 + v90;
          *(v96 + 60) = *(v93 + v90 + 60) - v92;
          *(v96 + 64) = *(v93 + v90 + 64) + v92;
          ++v91;
          v90 += 16;
        }

        while (v91 < v64);
      }

      v34 = (a6 + 76);
      v97 = v234;
      v98 = v236;
      if ((v236 & 1) == 0)
      {
        memcpy(v59, *(a6 + 48), 16 * v234);
        if (v234)
        {
          v99 = *(a6 + 88) + v75;
          v100 = v234;
          do
          {
            *v59 -= v99;
            v59 += 2;
            --v100;
          }

          while (v100);
        }

        *(a6 + 48) += 16 * v234;
        v98 = v236;
      }

      v101 = *(a6 + 76) - v234;
      *(a6 + 76) = v101;
      *(a6 + 88) += v78 + v75;
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        v102 = v98;
      }

      v13 = v231;
      v46 = v232;
      if ((v102 & 1) == 0)
      {
        v103 = *(a6 + 40);
        v104 = *(v103 + 48);
        if (v104)
        {
          v105 = (v104 + 3) & 0x1FFFFFFFCLL;
          v57 = vdupq_n_s64(v104 - 1);
          v106 = (v103 + 108);
          v107 = xmmword_18F9016C0;
          v108 = xmmword_18F9016B0;
          do
          {
            v109 = vmovn_s64(vcgeq_u64(v57, v107));
            if (vuzp1_s16(v109, *v57.i8).u8[0])
            {
              *(v106 - 12) = 0;
            }

            if (vuzp1_s16(v109, *&v57).i8[2])
            {
              *(v106 - 8) = 0;
            }

            if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v57, *&v108))).i32[1])
            {
              *(v106 - 4) = 0;
              *v106 = 0;
            }

            v108 = vaddq_s64(v108, v237);
            v107 = vaddq_s64(v107, v237);
            v106 += 16;
            v105 -= 4;
          }

          while (v105);
        }
      }

      v110 = 0;
      v111 = v58[3];
LABEL_128:
      *(v46 + 4) = v110;
      v116 = *(v13 + 49);
      v117 = *(v13 + 34);
      v118 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::can_send(v13 + 8, *v57.i64);
      v48 = v118;
      v119 = HIDWORD(v118);
      if (v118 & 0x100000000) != 0 && (v118)
      {
        *v117 = 25602;
        *(v117 + 12) = v97;
        *(v117 + 16) = v111;
        v120 = audioipc::ipc_node_base<(audioipc::ipcnode_options)0,audioipc::eventlink_primitive,unilaterally_billed_shared_memory>::signal_wait_with_timeout(v13 + 8);
        v48 = v120;
        v119 = HIDWORD(v120);
      }

      if (!v119)
      {
        break;
      }

      if (!v48)
      {
        v151 = _os_log_pack_size();
        v152 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v151 + 88, 16);
        v127 = 561277293;
        if (!v152)
        {
          goto LABEL_165;
        }

        v128 = v152;
        goto LABEL_162;
      }
    }

    v149 = _os_log_pack_size();
    v150 = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v149 + 88, 16);
    v127 = 560164718;
    if (v150)
    {
      v128 = v150;
LABEL_141:
      v129 = _os_log_pack_fill();
      v130 = *(v13 + 48);
      *v129 = 134218240;
      *(v129 + 4) = v130;
      *(v129 + 12) = 1024;
      *(v129 + 14) = v48;
LABEL_163:
      v147 = *(gAudioConverterDeferredLog + 16);
      v148 = v128;
LABEL_164:
      caulk::concurrent::messenger::enqueue(v147, v148);
    }

LABEL_165:
    a5 = ioData;
    if (*(v13 + 93))
    {
      if (p_mNumberChannels[4 * ioData->mNumberBuffers] == 1094863915)
      {
        v155 = ioData[-2].mBuffers[0].mDataByteSize;
        v156 = (p_mNumberBuffers + v155);
        if (v155)
        {
          v157 = *(v13 + 35);
          if (*(v157 + 136))
          {
            v158 = *(v157 + 160);
            if (v158)
            {
              v159 = *v156;
              if ((v156[1] - *v156) >= 0x2C && v159 != 0)
              {
                v161 = *(v159 + 40);
                if (v161)
                {
                  v162 = 0;
                  v235 = *(v158 + 40);
                  v163 = v159 + 44;
                  while (*(v163 + 20))
                  {
                    v163 += *(v163 + 8);
                    if (v161 == ++v162)
                    {
                      v162 = *(v159 + 40);
                      break;
                    }
                  }

                  if (v235)
                  {
                    v164 = 0;
                    v165 = (v158 + *(v158 + 32) + 20);
                    v233 = v127;
                    do
                    {
                      if ((v162 + v164) >= *(v159 + 40) || !*v165 || !*(v163 + 28))
                      {
                        break;
                      }

                      if (!(v164 | (v162 + v164)))
                      {
                        *v159 = *(v165 - 1);
                      }

                      v166 = *(v163 + 32);
                      v167 = v165[2];
                      v168 = v157;
                      memcpy(v166, (*(v157 + 152) + (*(v157 + 136) * v164)), v167);
                      memcpy(v163, v165 - 5, *(v165 - 3));
                      v157 = v168;
                      *(v163 + 28) = v167;
                      *(v163 + 32) = v166;
                      v35.i32[0] = *(v163 + 20);
                      *v35.i64 = *(v159 + 8) + v35.u64[0];
                      *(v159 + 8) = v35.i64[0];
                      v163 += *(v163 + 8);
                      ++v164;
                      v165 += 10;
                      a5 = ioData;
                      v127 = v233;
                    }

                    while (v235 != v164);
                  }
                }
              }
            }
          }
        }
      }
    }

    a7 = v229;
    v34 = (a6 + 76);
    if (v127)
    {
      goto LABEL_226;
    }

    mDataByteSize = v226;
  }

  while (*(*(v13 + 34) + 8));
  v127 = 0;
LABEL_226:
  v193 = *(v13 + 34);
  v195 = *(v193 + 12);
  v194 = *(v193 + 16);
  *v34 += v195;
  v196 = *(a6 + 48);
  if (v196)
  {
    *(a6 + 48) = v196 - 16 * v195;
    *(a6 + 88) -= v194;
  }

  v197 = *(a6 + 40);
  v198 = *(v197 + 48);
  if (v198)
  {
    v199 = 16 * v198;
    v200 = (v197 + 64);
    do
    {
      *(v200 - 1) += v194;
      *v200 -= v194;
      v200 += 2;
      v199 -= 16;
    }

    while (v199);
  }

  mNumberBuffers = a5->mNumberBuffers;
  if (mNumberBuffers)
  {
    v202 = *(a7 + 88);
    v203 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
    v204 = vdupq_n_s64(mNumberBuffers - 1);
    v205 = xmmword_18F9016B0;
    v206 = xmmword_18F9016C0;
    v207 = &a5[1].mBuffers[0].mData + 1;
    v208 = vdupq_n_s64(4uLL);
    do
    {
      v209 = vmovn_s64(vcgeq_u64(v204, v206));
      if (vuzp1_s16(v209, *v204.i8).u8[0])
      {
        *(v207 - 8) = v202;
      }

      if (vuzp1_s16(v209, *&v204).i8[2])
      {
        *(v207 - 4) = v202;
      }

      if (vuzp1_s16(*&v204, vmovn_s64(vcgeq_u64(v204, *&v205))).i32[1])
      {
        *v207 = v202;
        v207[4] = v202;
      }

      v205 = vaddq_s64(v205, v208);
      v206 = vaddq_s64(v206, v208);
      v207 += 16;
      v203 -= 4;
    }

    while (v203);
  }

  if (v217)
  {
    v210 = *(v13 + 35);
    if (*(v210 + 136))
    {
      if (*(v210 + 160))
      {
        v211 = *v217;
        if ((v217[1] - *v217) >= 0x2C)
        {
          if (v211)
          {
            v212 = *(v211 + 40);
            if (v212)
            {
              v213 = 0;
              v214 = v211 + 44;
              while (*(v214 + 20))
              {
                v214 += *(v214 + 8);
                if (v212 == ++v213)
                {
                  v213 = *(v211 + 40);
                  break;
                }
              }
            }

            else
            {
              v213 = 0;
            }

            *(v211 + 40) = v213;
          }
        }
      }
    }
  }

  v215 = v219;
  if (*v13)
  {
    v215 = (*v13 + 136);
  }

  if (*v215)
  {
    AudioConverterCapturer::write(*v215, a5, a9, *v230);
  }

  return v127;
}

void *audioipc::current_render_context(audioipc *this)
{
  v1 = audioipc::tlsRenderThreadState();
  v2 = mach_absolute_time();
  base_priority = *v1;
  if (v2 > *(v1 + 8) || base_priority == 0)
  {
    v9 = pthread_self();
    base_priority = caulk::mach::thread::get_base_priority(v9, v10);
    *v1 = base_priority;
    *(v1 + 8) = v2 + 480000;
  }

  v5 = base_priority;
  if (base_priority >= 96)
  {
    v6 = os_workgroup_interval_copy_current_4AudioToolbox();
    if (v6)
    {
      v7 = v6;
      os_release(v6);
      return v7;
    }
  }

  return v5;
}

void AudioConverterRenderServer::serverThread(AudioConverterRenderServer *this)
{
  v58 = *MEMORY[0x1E69E9840];
  audioipc::eventlink_primitive::activate(this + 6);
  v3 = atomic_load(this + 41);
  v4 = *(this + 2);
  if ((v3 & 1) == 0)
  {
    atomic_store(0, v4);
    v5 = audioipc::eventlink_primitive::wait_or_error(*(this + 6));
    v6 = atomic_load(this + 41);
    if ((v6 & 1) == 0)
    {
      v7 = v5;
      while (1)
      {
        v8 = atomic_load(*(this + 3));
        if (v8 == 2)
        {
          break;
        }

        if ((v7 & 0x100000000) == 0)
        {
          v47 = CADefaultLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "rt_receiver::receive_loop";
            *&buf[12] = 1024;
            *&buf[14] = v7;
            _os_log_error_impl(&dword_18F5DF000, v47, OS_LOG_TYPE_ERROR, "%s failed: %d", buf, 0x12u);
          }

          break;
        }

        atomic_store(1u, *(this + 2));
        v9 = *(this + 4);
        v10 = *v9;
        if (v10 == 1)
        {
          AudioConverterServer::syncThreadPriorityAndWorkgroup(this);
          v12 = *(v9 + 2);
          v13 = *(v9 + 5);
          v14 = *(v9 + 12);
          inInputDataProcUserData = this;
          ACRendererSharedMemory::partitionMemory((this + 280), 1);
          v15 = ACRendererSharedMemory::mutableAudioBufferList(*(this + 62), 1u, v13);
          v16 = *(this + 66);
          if (v16 && *(*(this + 37) + 120) < v12)
          {
            v12 = *(*(this + 37) + 120);
          }

          ioOutputDataPacketSize = v12;
          v17 = *(this + 62);
          if (*(v17 + 96) == 1885564203 && *(v17 + 136))
          {
            v18 = *(v17 + 144);
            if (*(v18 + 16 * *(v18 + 48) + 56) == 1094863915)
            {
              v19 = *(v18 + 12);
              v20 = (v18 + v19);
              if (v19)
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }

            v24 = *v21;
            v25 = v21[1] - *v21;
            if (v25 >= 1)
            {
              bzero(v24, v25);
              v24 = *v21;
            }

            v21[1] = v24;
            memset(buf, 0, 44);
            buf[24] = 1;
            *&buf[32] = 0x10000002CLL;
            AudioMetadataFrame::begin_new(v21, buf);
            if (v14)
            {
              for (i = 0; i != v14; ++i)
              {
                v27 = *(v17 + 152);
                v28 = *(v17 + 136);
                v29 = (v27 + (v28 * i));
                __src = 1;
                v52 = 0x2800000000;
                v53 = 0;
                v54 = 0x100000000;
                v55 = v28;
                v56 = v29;
                if (i || (v30 = *(v17 + 168), v30 == -1))
                {
                  bzero(v29, v28);
                }

                else
                {
                  memcpy(v29, (v27 + (v30 * v28)), v28);
                }

                AudioMetadataFrame_AppendEvent(v21, &__src);
              }
            }

            memcpy(*(v17 + 160), *v21, v21[1] - *v21);
            *(v17 + 168) = -1;
          }

          v31 = AudioConverterFillComplexBuffer(*(*(this + 60) + 104), *(this + 34), &inInputDataProcUserData, &ioOutputDataPacketSize, v15, v16);
          v32 = *(this + 62);
          if (*(v32 + 136))
          {
            v33 = *(v32 + 160);
            if (v33)
            {
              v34 = *(v32 + 144);
              v35 = *(v34 + 12);
              v36 = v34 + v35;
              v37 = v35 ? v36 : 0;
              memcpy(v33, *v37, *(v37 + 8) - *v37);
              v38 = *(v37 + 8) - *v37 <= 0x2BuLL ? 0 : *v37;
              v39 = *(v38 + 40);
              if (v39)
              {
                v40 = 0;
                v41 = v38 + 44;
                do
                {
                  if (!*(v41 + 20))
                  {
                    break;
                  }

                  *(v32 + 168) = v40;
                  v41 += *(v41 + 8);
                  ++v40;
                }

                while (v39 != v40);
              }
            }
          }

          v42 = *(this + 61);
          *(v42 + 20) = *(v15 + 12);
          *(v42 + 8) = ioOutputDataPacketSize;
          *(v9 + 1) = v31;
        }

        else if (v10 == 3)
        {
          v11 = *(*(this + 60) + 104);
          *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
          *&buf[8] = &__src;
          *(v9 + 1) = with_resolved(v11, buf);
          *(this + 72) = 0;
        }

        else
        {
          if (gAudioConverterDeferredLogOnce != -1)
          {
            dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
          }

          v22 = *gAudioConverterLog;
          if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
          {
            v23 = *v9;
            *buf = 136315650;
            *&buf[4] = "AudioConverterRenderServer.h";
            *&buf[12] = 1024;
            *&buf[14] = 78;
            *&buf[18] = 1024;
            *&buf[20] = v23;
            _os_log_impl(&dword_18F5DF000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown or unexpected message: %d", buf, 0x18u);
          }
        }

        *v9 = 25856;
        v43 = atomic_load(this + 41);
        if ((v43 & 1) == 0)
        {
          v44 = atomic_load(*(this + 3));
          if (v44 != 2)
          {
            atomic_store(0, *(this + 2));
            v45 = audioipc::eventlink_primitive::wait_signal_or_error(*(this + 6));
            if ((v45 & 0x100000000) == 0)
            {
              v7 = v45;
            }

            v46 = atomic_load(this + 41);
            if ((v46 & 1) == 0)
            {
              continue;
            }
          }
        }

        break;
      }
    }

    v4 = *(this + 2);
  }

  atomic_store(2u, v4);
  AudioConverterServer::WorkgroupJoiner::leave((this + 120), v2);
  v48 = *MEMORY[0x1E69E9840];
}

uint64_t UnixFile_DataSource::WriteBytes(UnixFile_DataSource *this, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v11 = UnixFile_DataSource::UFCurrentOffset(this, a2, a3);
  if (v11 < 0)
  {
    return 4294967256;
  }

  v12 = v11;
  *(this + 3) = -1;
  v13 = (a2 >> 5) & 1;
  v14 = *(this + 5);
  if (v14 != v13)
  {
    *(this + 5) = v13;
    fcntl(*(this + 3), 48, v14);
  }

  v15 = pwrite(*(this + 3), a5, a4, v12);
  if (v15 == -1)
  {
    return 4294967256;
  }

  v16 = v15;
  *(this + 4) = v15 + v12;
  result = 0;
  if (a6)
  {
    *a6 = v16;
  }

  return result;
}

uint64_t Cached_DataSource::WriteBytes(Cached_DataSource *this, uint64_t a2, int64_t a3, uint64_t a4, char *__src, unsigned int *a6)
{
  if (!__src)
  {
    return 4294967246;
  }

  v28 = 0;
  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v28);
    if (result)
    {
      return result;
    }

    v13 = v28;
  }

  else
  {
    v14 = a3;
    if ((a2 & 3) == 0)
    {
      goto LABEL_11;
    }

    if ((a2 & 3) == 3)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v13 = *(this + 8);
  }

  v14 = v13 + a3;
LABEL_11:
  if (v14 < 0)
  {
    return 4294967256;
  }

LABEL_12:
  v15 = *(this + 3);
  if (v15)
  {
    v16 = *(this + 8);
    v17 = v16 > v14;
    v18 = v16 - v14;
    if (v17)
    {
      if (v18 >= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = v18;
      }

      memcpy((v15 + v14), __src, v19);
    }
  }

  v20 = *(this + 5);
  if (v20)
  {
    v21 = *(this + 7);
    if (v14 + a4 >= v21)
    {
      v22 = *(this + 13);
      if (v14 < v21 + v22)
      {
        if (v21 <= v14)
        {
          v23 = v14;
        }

        else
        {
          v23 = *(this + 7);
        }

        v24 = v21 - v23 + v22;
        if (v24 >= a4 - (v23 - v14))
        {
          v25 = a4 - (v23 - v14);
        }

        else
        {
          v25 = v24;
        }

        memcpy((v20 + v23 - v21), &__src[v23 - v14], v25);
      }
    }
  }

  v27 = 0;
  result = (*(**(this + 2) + 56))(*(this + 2), a2, a3, a4, __src, &v27);
  v26 = v27;
  *(this + 8) = v14 + v27;
  if (a6)
  {
    *a6 = v26;
  }

  return result;
}

void acv2::CodecConverter::CheckInitialize(acv2::CodecConverter *this, const void *a2, UInt32 a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (acv2::CodecConverter::IsInitialized(*(this + 21)))
  {
    if ((*(this + 728) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v6 = AudioCodecInitialize(*(this + 21), *(this + 87), *(this + 88), a2, a3);
    if (v6)
    {
      v7 = v6;
      v8 = *(this + 88);
      if (!v8)
      {
        goto LABEL_82;
      }

      if (*(v8 + 2) != 1885564203)
      {
        goto LABEL_82;
      }

      *(this + 712) = 1;
      v10 = *v8;
      v9 = v8[1];
      *&inOutputFormat.mBitsPerChannel = *(v8 + 4);
      *&inOutputFormat.mSampleRate = v10;
      *&inOutputFormat.mBytesPerPacket = v9;
      inOutputFormat.mFormatID = 1819304813;
      v7 = AudioCodecInitialize(*(this + 21), *(this + 87), &inOutputFormat, a2, a3);
      if (v7)
      {
LABEL_82:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(inOutputFormat.mSampleRate) = 136315394;
          *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
          LOWORD(inOutputFormat.mFormatFlags) = 1024;
          *(&inOutputFormat.mFormatFlags + 2) = 1735;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioCodecInitialize failed", &inOutputFormat, 0x12u);
        }

        exception = __cxa_allocate_exception(4uLL);
        *exception = v7;
        __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
      }
    }

    *(this + 176) = 1;
    *(this + 728) = 1;
  }

  LODWORD(inOutputFormat.mSampleRate) = 40;
  Property = AudioCodecGetProperty(*(this + 21), 0x69666D74u, &inOutputFormat, this + 16);
  if (Property)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1743;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyCurrentInputFormat failed", &inOutputFormat, 0x12u);
    }

    v41 = __cxa_allocate_exception(4uLL);
    *v41 = Property;
    __cxa_throw(v41, MEMORY[0x1E69E5478], 0);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  LODWORD(inOutputFormat.mSampleRate) = 40;
  v12 = AudioCodecGetProperty(*(this + 21), 0x6F666D74u, &inOutputFormat, &v49);
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1747;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyCurrentOutputFormat failed", &inOutputFormat, 0x12u);
    }

    v42 = __cxa_allocate_exception(4uLL);
    *v42 = v12;
    __cxa_throw(v42, MEMORY[0x1E69E5478], 0);
  }

  if (*(this + 712) == 1)
  {
    DWORD2(v49) = 1885564203;
  }

  v13 = *(this + 90);
  if (v13)
  {
    v14 = v51;
    v16 = v49;
    v15 = v50;
    *(v13 + 16) = v49;
    *(v13 + 32) = v15;
    *(v13 + 48) = v14;
    *&inOutputFormat.mSampleRate = v16;
    *&inOutputFormat.mBytesPerPacket = v50;
    *&inOutputFormat.mBitsPerChannel = v51;
    inOutputFormat.mFormatID = 1885564203;
    v17 = AudioUnitSetProperty(*(v13 + 8), 8u, 1u, 0, &inOutputFormat, 0x28u);
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(inOutputFormat.mSampleRate) = 136315394;
        *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
        LOWORD(inOutputFormat.mFormatFlags) = 1024;
        *(&inOutputFormat.mFormatFlags + 2) = 1759;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  set kAudioUnitProperty_StreamFormat(kAudioUnitScope_Input, 0) on AUSM failed", &inOutputFormat, 0x12u);
      }

      v18 = __cxa_allocate_exception(4uLL);
      *v18 = v17;
      __cxa_throw(v18, MEMORY[0x1E69E5478], 0);
    }
  }

  else
  {
    v19 = v50;
    *(this + 56) = v49;
    *(this + 72) = v19;
    *(this + 11) = v51;
  }

  if (!*(this + 11))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1768;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero input channels", &inOutputFormat, 0x12u);
    }

    v43 = __cxa_allocate_exception(4uLL);
    *v43 = -50;
  }

  if (!*(this + 21))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1770;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero output channels", &inOutputFormat, 0x12u);
    }

    v44 = __cxa_allocate_exception(4uLL);
    *v44 = -50;
  }

  v20 = *(this + 20);
  if (*(this + 205) == 1)
  {
    v21 = *(this + 1);
    v22 = *(this + 2);
    *(v20 + 32) = *(this + 6);
    *v20 = v21;
    *(v20 + 16) = v22;
  }

  else
  {
    v23 = *(this + 56);
    v24 = *(this + 72);
    *(v20 + 72) = *(this + 11);
    *(v20 + 56) = v24;
    *(v20 + 40) = v23;
  }

  v25 = 72;
  if (*(this + 205))
  {
    v25 = 32;
  }

  *(this + 209) = *(this + v25) == 0;
  LODWORD(inOutputFormat.mSampleRate) = 4;
  v26 = AudioCodecGetProperty(*(this + 21), 0x74627566u, &inOutputFormat, this + 360);
  if (v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1785;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyInputBufferSize failed", &inOutputFormat, 0x12u);
    }

    v45 = __cxa_allocate_exception(4uLL);
    *v45 = v26;
    __cxa_throw(v45, MEMORY[0x1E69E5478], 0);
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x70616B62u, &inOutputFormat, this + 364))
  {
    if (*(this + 205))
    {
      v27 = this + 16;
    }

    else
    {
      v27 = this + 56;
    }

    *(this + 91) = *(v27 + 4);
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  v28 = AudioCodecGetProperty(*(this + 21), 0x70616B66u, &inOutputFormat, this + 368);
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1798;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyPacketFrameSize failed", &inOutputFormat, 0x12u);
    }

    v46 = __cxa_allocate_exception(4uLL);
    *v46 = v28;
    __cxa_throw(v46, MEMORY[0x1E69E5478], 0);
  }

  if (!*(this + 92))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1802;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  kAudioCodecPropertyPacketFrameSize is zero", &inOutputFormat, 0x12u);
    }

    v47 = __cxa_allocate_exception(4uLL);
    *v47 = 2003329396;
    __cxa_throw(v47, MEMORY[0x1E69E5478], 0);
  }

  v29 = (this + 372);
  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x6D6E6F70u, &inOutputFormat, this + 372))
  {
    *v29 = 1;
  }

  else if (!*v29)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(inOutputFormat.mSampleRate) = 136315394;
      *(&inOutputFormat.mSampleRate + 4) = "CodecConverter.cpp";
      LOWORD(inOutputFormat.mFormatFlags) = 1024;
      *(&inOutputFormat.mFormatFlags + 2) = 1809;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Codec has zero minimum output packets", &inOutputFormat, 0x12u);
    }

    v48 = __cxa_allocate_exception(4uLL);
    *v48 = -50;
  }

  LODWORD(inOutputFormat.mSampleRate) = 4;
  if (AudioCodecGetProperty(*(this + 21), 0x6D646673u, &inOutputFormat, this + 376))
  {
    *(this + 94) = 0;
  }

  if (*(this + 204) == 1)
  {
    v30 = caulk::numeric::exceptional_mul<unsigned int>(*(this + 93), *(this + 91));
    std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](this + 400);
    ACCodecOutputBuffer::ACCodecOutputBuffer((this + 400), (this + 56), *(this + 93), v30, *(this + 209), 1);
  }

  else
  {
    v31 = caulk::numeric::exceptional_mul<unsigned int>(*(this + 93), *(this + 92));
    v32 = caulk::numeric::exceptional_mul<unsigned int>(v31, *(this + 20));
    std::__optional_destruct_base<ACCodecOutputBuffer,false>::reset[abi:ne200100](this + 400);
    ACCodecOutputBuffer::ACCodecOutputBuffer((this + 400), (this + 56), v31, v32, 0, 0);
  }

  *(this + 608) = 1;
  std::optional<ACAudioSpan>::emplace[abi:ne200100]<CA::StreamDescription const&,void>((this + 224), (this + 56));
  if ((*(this + 28) & 0x20) != 0)
  {
    v33 = *(this + 11);
  }

  else
  {
    v33 = 1;
  }

  v34 = (16 * v33) | 8;
  v36 = *(this + 42);
  v35 = *(this + 43);
  if (v34 <= v35 - v36)
  {
    if (v34 < v35 - v36)
    {
      *(this + 43) = v36 + v34;
    }
  }

  else
  {
    v37 = *(this + 44);
    if (v37 - v35 < v34 - (v35 - v36))
    {
      operator new();
    }

    v38 = v36 + v34;
    bzero(v35, v34 - (v35 - v36));
    *(this + 43) = v38;
    v36 = *(this + 42);
  }

  *v36 = v33;
  *(this + 728) = 0;
LABEL_52:
  v39 = *MEMORY[0x1E69E9840];
}

BOOL acv2::CodecConverter::IsInitialized(acv2::CodecConverter *this)
{
  v11 = *MEMORY[0x1E69E9840];
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  Property = AudioCodecGetProperty(this, 0x696E6974u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    v5 = Property;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ioPropertyDataSize = 136315394;
      v8 = "CodecConverter.cpp";
      v9 = 1024;
      v10 = 1693;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  get kAudioCodecPropertyIsInitialized failed", &ioPropertyDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = v5;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  result = outPropertyData != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ACRendererSharedMemory::calculateConfigAndPartitionMemory(ACRendererSharedMemory *this, uint64_t a2)
{
  v3 = 0;
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *(this + 25);
  *(this + 2) = v4;
  v21[0] = 0x100000000;
  do
  {
    v5 = *(v21 + v3);
    v6 = a2 + 56 * v5;
    v7 = v4 + 40 * v5;
    v8 = *(v6 + 32);
    v9 = *(v6 + 16);
    *v7 = *v6;
    *(v7 + 16) = v9;
    *(v7 + 32) = v8;
    *(v4 + 80 + 4 * v5) = *(v6 + 40);
    *(v4 + 96 + 4 * v5) = *(v6 + 48);
    *(v4 + 88 + 4 * v5) = *(v6 + 44);
    v3 += 4;
  }

  while (v3 != 8);
  result = ACRendererSharedMemory::computeMemoryConfig(this);
  if (!result)
  {
    *(*(this + 2) + 112) = 0;
    result = ACRendererSharedMemory::partitionMemory(this, 0);
    if (!result)
    {
      v11 = *(this + 2);
      v12 = *v11;
      v13 = v11[1];
      *(this + 56) = v11[2];
      *(this + 40) = v13;
      *(this + 24) = v12;
      v14 = v11[3];
      v15 = v11[4];
      v16 = v11[5];
      *(this + 120) = v11[6];
      *(this + 104) = v16;
      *(this + 88) = v15;
      *(this + 72) = v14;
      v17 = v11[7];
      v18 = v11[8];
      v19 = v11[9];
      *(this + 184) = v11[10];
      *(this + 168) = v19;
      *(this + 152) = v18;
      *(this + 136) = v17;
      *(this + 2) = this + 24;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ACRendererSharedMemory::computeMemoryConfig(ACRendererSharedMemory *this)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v1 = 2003329396;
  v2 = *(this + 2);
  if (*(v2 + 88))
  {
    goto LABEL_91;
  }

  v4 = caulk::numeric::exceptional_add<unsigned long>(*(this + 1) - *(v2 + 144) - 15, 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = *(this + 2);
  v6 = *(v5 + 92);
  if (!v6)
  {
    if ((*(v5 + 12) & 0x20) != 0)
    {
      v12 = *(v5 + 28);
    }

    else
    {
      v12 = 1;
    }

    v13 = caulk::numeric::exceptional_add<unsigned long>((v12 * *(v5 + 96)) + 16 * *(v5 + 80), 15);
    v14 = *(this + 2);
    if ((*(v14 + 52) & 0x20) != 0)
    {
      v15 = *(v14 + 68);
    }

    else
    {
      v15 = 1;
    }

    if ((caulk::numeric::exceptional_add<unsigned long>((v15 * *(v14 + 100)) + 16 * *(v14 + 84), 15) & 0xFFFFFFFFFFFFFFF0) + (v13 & 0xFFFFFFFFFFFFFFF0) > v4)
    {
      goto LABEL_91;
    }

    v16 = 0;
    v17 = caulk::numeric::exceptional_add<unsigned long>((v4 >> 1) - 15, 15) & 0xFFFFFFFFFFFFFFF0;
    v79[0] = v17;
    v79[1] = v17;
    v80[0] = 0x100000000;
    do
    {
      v18 = *(v80 + v16);
      v19 = *(this + 2);
      v20 = v19 + 40 * v18;
      if ((*(v20 + 12) & 0x20) != 0)
      {
        v21 = *(v20 + 28);
      }

      else
      {
        v21 = 1;
      }

      v22 = caulk::numeric::exceptional_add<unsigned long>((v21 * *(v19 + 4 * v18 + 96)) + 16 * *(v19 + 4 * v18 + 80), 15) & 0xFFFFFFFFFFFFFFF0;
      if (v22 > v17)
      {
        v79[v18] = v22;
        v79[1 - v18] = v4 - v22;
      }

      v16 += 4;
    }

    while (v16 != 8);
    v23 = 0;
    v80[0] = 0x100000000;
    v24 = *(this + 2);
    while (1)
    {
      v25 = *(v80 + v23);
      v26 = v24 + 4 * v25;
      v27 = *(v26 + 80);
      if (v27 || (v29 = v24 + 40 * v25, (v30 = *(v29 + 16)) == 0))
      {
        v28 = 64;
      }

      else
      {
        if ((*(v29 + 12) & 0x20) != 0)
        {
          v31 = *(v29 + 28);
        }

        else
        {
          v31 = 1;
        }

        v28 = (v31 * v30);
      }

      v32 = v79[v25];
      v33 = v32 / v28;
      v34 = *(v26 + 96);
      if (v32 - 16 * v33 >= v34)
      {
        goto LABEL_39;
      }

      v35 = v24 + 40 * v25;
      if ((*(v35 + 12) & 0x20) != 0)
      {
        v36 = *(v35 + 28);
      }

      else
      {
        v36 = 1;
      }

      v37 = caulk::numeric::exceptional_add<unsigned long>((v36 * v34) + 16 * v27, 15);
      v24 = *(this + 2);
      v27 = v24 + 4 * v25;
      v38 = *(v27 + 96);
      LODWORD(v27) = *(v27 + 80);
      if (*(v24 + 4 * (1 - v25) + 88))
      {
        goto LABEL_37;
      }

      v39 = v27;
      if (v38 <= 0x10000)
      {
        break;
      }

LABEL_38:
      LODWORD(v33) = (v32 - (v37 & 0xFFFFFFFFFFFFFFF0)) / (16 * v39 + v38) + 1;
LABEL_39:
      *(v24 + 4 * v25 + 116) = v33;
      v40 = (16 * v27) * v33;
      if ((v40 & 0xFFFFFFFF00000000) != 0)
      {
        v41 = 0xFFFFFFFFLL;
      }

      else
      {
        v41 = v40;
      }

      v42 = caulk::numeric::exceptional_add<unsigned long>(v41, 15);
      v24 = *(this + 2);
      *(v24 + 8 * v25 + 128) = v32 - (v42 & 0xFFFFFFFFFFFFFFF0);
      v23 += 4;
      if (v23 == 8)
      {
        goto LABEL_76;
      }
    }

    if (!v27)
    {
      v43 = v24 + 40 * v25;
      v44 = *(v43 + 16);
      if (v44)
      {
        if ((*(v43 + 12) & 0x20) != 0)
        {
          v45 = *(v43 + 28);
        }

        else
        {
          v45 = 1;
        }

        v39 = 0;
        v38 = v45 * v44;
      }

      else
      {
        v39 = 0;
        v38 = 64;
      }

      goto LABEL_38;
    }

    v38 = 64;
LABEL_37:
    v39 = v27;
    goto LABEL_38;
  }

  v7 = *(v5 + 20);
  v8 = *(v5 + 84);
  v9 = 16 * *(v5 + 80);
  v10 = *(v5 + 96);
  v11 = *(v5 + 100);
  if (!*(v5 + 88) && v11 <= 0x10000)
  {
    if (v8)
    {
LABEL_6:
      v11 = 64;
      goto LABEL_56;
    }

    v46 = *(v5 + 56);
    if (!v46)
    {
      v8 = 0;
      goto LABEL_6;
    }

    if ((*(v5 + 52) & 0x20) != 0)
    {
      v47 = *(v5 + 68);
    }

    else
    {
      v47 = 1;
    }

    v8 = 0;
    v11 = v47 * v46;
  }

LABEL_56:
  v48 = caulk::numeric::exceptional_add<unsigned long>(v6 + v10 + v9 + (16 * v8 + v11) * v7 + 40, 15);
  v49 = *(this + 2);
  v50 = *(v49 + 92);
  v51 = v4 - (v50 + 40) - 44;
  v52 = v51 / (v48 & 0xFFFFFFFFFFFFFFF0);
  *(v49 + 116) = v52;
  if (v51 >= (v48 & 0xFFFFFFFFFFFFFFF0))
  {
    *(v49 + 120) = v7 * v52;
    v53 = *(v49 + 96);
    if (!v50 && v53 <= 0x10000)
    {
      if (*(v49 + 80) || (v54 = *(v49 + 16)) == 0)
      {
        v53 = 64;
      }

      else
      {
        if ((*(v49 + 12) & 0x20) != 0)
        {
          v55 = *(v49 + 28);
        }

        else
        {
          v55 = 1;
        }

        v53 = v55 * v54;
      }
    }

    v56 = caulk::numeric::exceptional_add<unsigned long>(v53 * v52, 15);
    v57 = *(this + 2);
    *(v57 + 128) = v56 & 0xFFFFFFFFFFFFFFF0;
    v58 = *(v57 + 100);
    if (!*(v57 + 88) && v58 <= 0x10000)
    {
      if (*(v57 + 84) || (v59 = *(v57 + 56)) == 0)
      {
        v58 = 64;
      }

      else
      {
        if ((*(v57 + 52) & 0x20) != 0)
        {
          v60 = *(v57 + 68);
        }

        else
        {
          v60 = 1;
        }

        v58 = v60 * v59;
      }
    }

    v61 = caulk::numeric::exceptional_add<unsigned long>(*(v57 + 120) * v58, 15);
    v24 = *(this + 2);
    *(v24 + 136) = v61 & 0xFFFFFFFFFFFFFFF0;
LABEL_76:
    v62 = *(v24 + 144);
    v63 = *(v24 + 120) * (16 * *(v24 + 84));
    if ((v63 & 0xFFFFFFFF00000000) != 0)
    {
      v64 = 0xFFFFFFFFLL;
    }

    else
    {
      v64 = v63;
    }

    v65 = caulk::numeric::exceptional_add<unsigned long>(v64, 15);
    v66 = *(*(this + 2) + 116) * (16 * *(*(this + 2) + 80));
    if ((v66 & 0xFFFFFFFF00000000) != 0)
    {
      v67 = 0xFFFFFFFFLL;
    }

    else
    {
      v67 = v66;
    }

    v68 = (v65 & 0xFFFFFFFFFFFFFFF0) + v62 + (caulk::numeric::exceptional_add<unsigned long>(v67, 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = *(this + 2);
    *(v69 + 152) = v68;
    v70 = *(v69 + 92);
    if (v70)
    {
      v71 = caulk::numeric::exceptional_add<unsigned long>(40 * (*(v69 + 116) + 1) + 44, 15) & 0xFFFFFFFFFFFFFFF0;
      v69 = *(this + 2);
      v70 = *(v69 + 92);
    }

    else
    {
      v71 = 0;
    }

    v72 = v71 + v68;
    *(v69 + 160) = v72;
    v73 = v70 * (*(v69 + 116) + 1);
    if ((v73 & 0xFFFFFFFF00000000) != 0)
    {
      v74 = 0xFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    v75 = (caulk::numeric::exceptional_add<unsigned long>(v74, 15) & 0xFFFFFFFFFFFFFFF0) + v72;
    v76 = *(this + 2);
    v76[21] = v75;
    if (v76[16] + v76[17] + v75 <= *(this + 1))
    {
      v1 = 0;
    }

    else
    {
      v1 = 2003329396;
    }
  }

LABEL_91:
  v77 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_18F62A9C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ACRendererSharedMemory::partitionMemory(ACRendererSharedMemory *this, int a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = *(v6 + 144);
  if (a2)
  {
    if (*(v6 + 112))
    {
      return 0;
    }
  }

  else
  {
    *(v6 + 112) = 0;
  }

  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  v9 = *(v6 + 116) * (16 * *(v6 + 80));
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  v11 = caulk::numeric::exceptional_add<unsigned long>(v10, 15);
  v12 = v4 + v7;
  v13 = *(this + 2);
  if (v11 >= 0x10)
  {
    *(this + 30) = *this + *(v13 + 144);
    v14 = *(v13 + 116) * (16 * *(v13 + 80));
    if ((v14 & 0xFFFFFFFF00000000) != 0)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v12 += caulk::numeric::exceptional_add<unsigned long>(v15, 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = *(this + 2);
    *(this + 64) = *(v13 + 116);
  }

  v16 = *(v13 + 120) * (16 * *(v13 + 84));
  if ((v16 & 0xFFFFFFFF00000000) != 0)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = v16;
  }

  if (caulk::numeric::exceptional_add<unsigned long>(v17, 15) >= 0x10)
  {
    v19 = *(this + 2);
    v20 = *(v19 + 144);
    v21 = *(v19 + 116) * (16 * *(v19 + 80));
    if ((v21 & 0xFFFFFFFF00000000) != 0)
    {
      v22 = 0xFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    v18 = *this;
    *(this + 31) = v18 + v20 + (caulk::numeric::exceptional_add<unsigned long>(v22, 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(*(this + 2) + 120) * (16 * *(*(this + 2) + 84));
    if ((v23 & 0xFFFFFFFF00000000) != 0)
    {
      v24 = 0xFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    v12 += caulk::numeric::exceptional_add<unsigned long>(v24, 15) & 0xFFFFFFFFFFFFFFF0;
    *(this + 65) = *(*(this + 2) + 120);
  }

  v25 = v4 + v5;
  v8 = 2003329396;
  if (v12 <= v25 && (v12 & 0xF) == 0)
  {
    v27 = *(this + 2);
    v28 = *this + *(v27 + 152);
    if (v12 == v28)
    {
      v29 = *(v27 + 92);
      if (*(v27 + 88))
      {
        v30 = *this + *(v27 + 152);
      }

      else
      {
        v30 = 0;
      }

      if (!v29)
      {
        v28 = 0;
      }

      *(this + 33) = v30;
      *(this + 34) = v28;
      if (v29)
      {
        v31 = caulk::numeric::exceptional_add<unsigned long>(40 * (*(v27 + 116) + 1) + 44, 15) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v31 = 0;
      }

      v32 = v12 + v31;
      if (v32 <= v25)
      {
        v33 = *(this + 2);
        v34 = *this + *(v33 + 160);
        if (v32 == v34)
        {
          *(this + 280) = vbicq_s8(vdupq_n_s64(v34), vceqzq_s64(*(this + 264)));
          v35 = *(v33 + 92) * (*(v33 + 116) + 1);
          v36 = (v35 & 0xFFFFFFFF00000000) != 0 ? 0xFFFFFFFFLL : v35;
          v37 = (v32 + (caulk::numeric::exceptional_add<unsigned long>(v36, 15) & 0xFFFFFFFFFFFFFFF0));
          if (v37 <= v25)
          {
            v38 = (*this + *(*(this + 2) + 168));
            if (v37 == v38)
            {
              ACRendererSharedMemory::partitionMemoryForAudioBuffers(this, v38);
              v39 = *(this + 2);
              v40 = &v37[*(v39 + 128) + *(v39 + 136)];
              v41 = v40 <= v25 && (v40 & 0xF) == 0;
              if (v41)
              {
                v8 = 0;
              }

              else
              {
                v8 = 2003329396;
              }

              if (v41 && a2 != 0)
              {
                v8 = 0;
                *(v39 + 112) = 1;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t caulk::numeric::exceptional_add<unsigned long>(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception, "arithmetic addition overflow");
  }

  return result;
}

uint64_t ACRendererSharedMemory::partitionMemoryForAudioBuffers(ACRendererSharedMemory *this, unsigned __int8 *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = *(this + 27);
  v6 = *(this + 28);
  v5 = (this + 216);
  if (v4 == v6)
  {
    v23 = *(this + 2);
    *v52 = v23;
    if (*(v23 + 92))
    {
      v24 = *(v23 + 116) + 1;
    }

    else
    {
      v24 = 0;
    }

    v51 = v24;
    if (v4 >= *(this + 29))
    {
      v32 = std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(this + 27, v52, &v51, (v23 + 88), this + 35, this + 33);
    }

    else
    {
      std::vector<ACRendererSharedMemory::Element>::__construct_one_at_end[abi:ne200100]<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(this + 216, v23, v24, *(v23 + 88), *(this + 35), *(this + 33));
      v32 = v6 + 88;
    }

    *(this + 28) = v32;
    v33 = *(this + 2);
    *v52 = v33 + 40;
    v34 = *(v33 + 92);
    if (v34)
    {
      v35 = *(v33 + 116) + 1;
    }

    else
    {
      v35 = 0;
    }

    v51 = v35;
    if (v32 >= *(this + 29))
    {
      v36 = std::vector<ACRendererSharedMemory::Element>::__emplace_back_slow_path<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(v5, v52, &v51, (v33 + 92), this + 36, this + 34);
    }

    else
    {
      std::vector<ACRendererSharedMemory::Element>::__construct_one_at_end[abi:ne200100]<CA::StreamDescription *,unsigned int,unsigned int &,unsigned char *&,unsigned char *&>(v5, (v33 + 40), v35, v34, *(this + 36), *(this + 34));
      v36 = v32 + 88;
    }

    *(this + 28) = v36;
  }

  else
  {
    v7 = *(this + 2);
    v8 = *(v7 + 92);
    if (v8)
    {
      v8 = *(v7 + 116) + 1;
    }

    v9 = *(v7 + 88);
    v10 = *(this + 35);
    v11 = *(this + 33);
    v12 = *(v7 + 32);
    v13 = *(v7 + 16);
    *v52 = *v7;
    *&v52[16] = v13;
    *&v52[32] = v12;
    *&v52[40] = 0;
    *&v52[44] = v8;
    v53 = v9;
    CA::AudioBuffersBase::AudioBuffersBase(&v54, v52, 0);
    *&v55 = v10;
    *(&v55 + 1) = v11;
    v56 = -1;
    v14 = *v5;
    v15 = *v52;
    v16 = *&v52[16];
    v17 = *&v52[32];
    *(v14 + 48) = v53;
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v18 = *(v14 + 56);
    *(v14 + 56) = v54;
    v54 = v18;
    v19 = v56;
    *(v14 + 64) = v55;
    *(v14 + 80) = v19;
    ExtendedAudioBufferList_Destroy(v18);
    v20 = *(this + 2);
    v21 = *(v20 + 92);
    if (v21)
    {
      v22 = *(v20 + 116) + 1;
    }

    else
    {
      v22 = 0;
    }

    v25 = *(this + 36);
    v26 = *(this + 34);
    v27 = *(v20 + 56);
    *v52 = *(v20 + 40);
    *&v52[16] = v27;
    *&v52[32] = *(v20 + 72);
    *&v52[40] = 0;
    *&v52[44] = v22;
    v53 = v21;
    CA::AudioBuffersBase::AudioBuffersBase(&v54, v52, 0);
    v28 = *v5;
    v29 = *&v52[16];
    *(v28 + 120) = *&v52[32];
    v30 = *v52;
    *(v28 + 104) = v29;
    *&v55 = v25;
    *(&v55 + 1) = v26;
    *(v28 + 136) = v53;
    v31 = *(v28 + 144);
    *(v28 + 144) = v54;
    v56 = -1;
    *(v28 + 88) = v30;
    v54 = v31;
    *(v28 + 168) = -1;
    *(v28 + 152) = v55;
    ExtendedAudioBufferList_Destroy(v31);
  }

  v37 = 0;
  *v52 = 0x100000000;
  do
  {
    v38 = *&v52[v37];
    v39 = *v5 + 88 * v38;
    if ((*(v39 + 12) & 0x20) != 0)
    {
      v40 = *(v39 + 28);
    }

    else
    {
      v40 = 1;
    }

    result = caulk::numeric::exceptional_add<unsigned long>(*(*(this + 2) + 8 * v38 + 128) / v40 - 15, 15);
    v42 = result & 0xFFFFFFFFFFFFFFF0;
    *(v39 + 40) = result & 0xFFFFFFF0;
    v43 = *(v39 + 56);
    v44 = *(v43 + 48);
    if (v44)
    {
      v45 = v43 + 16 * v44 + 56;
      v46 = v43 + 56;
      v47 = *(this + 2) + 40 * v38;
      v48 = *(v47 + 12);
      do
      {
        v49 = *(v47 + 28);
        if ((v48 & 0x20) != 0)
        {
          v49 = 1;
        }

        *(v46 + 8) = a2;
        *v46 = v49;
        *(v46 + 4) = v42;
        v46 += 16;
        a2 += v42;
      }

      while (v46 != v45);
    }

    v37 += 4;
  }

  while (v37 != 8);
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F62B094(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::popResourceFromStack(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 64));
  if (a2 && (v2 & 1) == 0)
  {
    return 560164718;
  }

  v3 = 1919251263;
  if (caulk::semaphore::timed_wait((a1 + 48), 1.0))
  {
    for (i = 500; ; --i)
    {
      if (!i)
      {
        return 1919251263;
      }

      _X2 = 0;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X9] }

      if (_X2)
      {
        break;
      }

LABEL_11:
      ;
    }

    v3 = _X2;
    v12 = _X2;
    while (1)
    {
      _X6 = atomic_load((v3 + 416));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X6, X7, [X9] }

      if (_X2 == v12)
      {
        break;
      }

      v3 = _X2;
      v12 = _X2;
      if (!_X2)
      {
        goto LABEL_11;
      }
    }
  }

  return v3;
}

void AudioConverterServer::WorkgroupJoiner::leave(AudioConverterServer::WorkgroupJoiner *this, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  if (v2)
  {
    if (*(this + 72) == 1)
    {
      audioipc::os_workgroup_joiner::~os_workgroup_joiner(this);
      *(this + 72) = 0;
      v2 = *(this + 11);
    }

    v4 = MEMORY[0x1E69E3C18] + 16;
    v11 = 0u;
    memset(v12, 0, sizeof(v12));
    *(this + 11) = 0;
    v10[0] = v4;
    v10[1] = v2;
    caulk::mach::details::release_os_object(0, a2);
    v5 = *(this + 16);
    v6 = *(this + 6);
    v7 = *(this + 7);
    v8 = v12[0];
    *(this + 6) = v11;
    *(this + 7) = v8;
    *(this + 16) = *&v12[1];
    v11 = v6;
    v12[0] = v7;
    *&v12[1] = v5;
    LOBYTE(v5) = *(this + 136);
    *(this + 136) = BYTE8(v12[1]);
    BYTE8(v12[1]) = v5;
    caulk::mach::os_workgroup_managed::~os_workgroup_managed(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t ACResourcePoolManager<AudioConverterRenderClient,RendererConfiguration *>::pushResourceToStack(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    _X2 = a2;
    _X6 = 0;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X6, X7, [X8] }

    atomic_store(_X6, (a2 + 416));
    _X5 = 0;
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    if (_X4 != _X6)
    {
      do
      {
        atomic_store(_X4, (a2 + 416));
        _X7 = 0;
        __asm { CASPAL          X6, X7, X2, X3, [X8] }

        v14 = _X6 ^ _X4;
        _X4 = _X6;
      }

      while (v14);
    }

    return caulk::semaphore::signal((result + 48));
  }

  return result;
}

uint64_t CAFAudioFile::InitializeCAFChunks(CAFAudioFile *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v2 = *(this + 3);
  v4 = *(this + 8);
  v3 = *(this + 9);
  v24 = *(this + 5);
  v23 = *(this + 52);
  v28 = 0x10066666163;
  v5 = (*(**(this + 13) + 56))(*(this + 13), 0, 0, 8, &v28, &v27);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CAFAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1052;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d  FSWrite Failed";
LABEL_7:
      v10 = buf;
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, v8, v10, 0x12u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v25 = 1684370275;
  v26 = xmmword_18F901C00;
  std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v25);
  v9 = (*(*this + 776))(this, &v25, &v27);
  if (!v9)
  {
    *&buf[8] = v4;
    *&buf[12] = 0;
    if (v4 == 1819304813)
    {
      v14 = v23;
      v13 = v24;
      if ((v3 & 2) != 0)
      {
        v15 = 1;
      }

      else
      {
        *&buf[12] = 2;
        v15 = 3;
      }

      if ((v3 & 1) == 0)
      {
LABEL_17:
        *&buf[16] = v13;
        *buf = bswap64(v2);
        *&buf[8] = vrev32q_s8(*&buf[8]);
        v34 = vrev32_s8(v14);
        v16 = (*(**(this + 13) + 56))(*(this + 13), 0, 20, 32, buf, &v27);
        if (v16)
        {
          v6 = v16;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

          v29 = 136315394;
          v30 = "CAFAudioFile.cpp";
          v31 = 1024;
          v32 = 1072;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  FSWrite Failed";
          goto LABEL_20;
        }

        v17 = v27 + 20;
        if (*(this + 138))
        {
          v18 = *(this + 24);
          if (!v18)
          {
            CAFAudioFile::CalcSoundDataAlign(this);
            v18 = *(this + 24);
          }

          v25 = 1718773093;
          v19 = (v18 - 80) + 12;
          *&v26 = v19;
          *(&v26 + 1) = v17;
          std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v25);
          v20 = (*(*this + 776))(this, &v25, &v27);
          if (v20)
          {
            v6 = v20;
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_9;
            }

            v29 = 136315394;
            v30 = "CAFAudioFile.cpp";
            v31 = 1024;
            v32 = 1089;
            v7 = MEMORY[0x1E69E9C10];
            v8 = "%25s:%-5d  WriteChunkHeader Failed";
            goto LABEL_20;
          }

          v17 += v19;
        }

        v25 = 1684108385;
        *&v26 = -1;
        *(&v26 + 1) = v17;
        v21 = (*(*this + 776))(this, &v25, &v27);
        if (v21)
        {
          v6 = v21;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

          v29 = 136315394;
          v30 = "CAFAudioFile.cpp";
          v31 = 1024;
          v32 = 1100;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  WriteChunkHeader Failed";
        }

        else
        {
          *&v26 = 16;
          std::vector<ChunkInfo64>::push_back[abi:ne200100](this + 144, &v25);
          v22 = v17 + 12;
          *(this + 42) = 0;
          v27 = 4;
          v6 = (*(**(this + 13) + 56))(*(this + 13), 0, v22, 4, this + 168, &v27);
          if (!v6)
          {
            *(this + 9) = v22 + v27;
            *(this + 20) = 1;
            (*(*this + 240))(this, 0);
            (*(*this + 256))(this, 0);
            (*(*this + 656))(this, v24);
            goto LABEL_9;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

          v29 = 136315394;
          v30 = "CAFAudioFile.cpp";
          v31 = 1024;
          v32 = 1110;
          v7 = MEMORY[0x1E69E9C10];
          v8 = "%25s:%-5d  FSWrite Failed";
        }

LABEL_20:
        v10 = &v29;
        goto LABEL_8;
      }
    }

    else
    {
      v15 = v3;
      v14 = v23;
      v13 = v24;
    }

    *&buf[12] = v15;
    goto LABEL_17;
  }

  v6 = v9;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CAFAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1064;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  WriteChunkHeader Failed";
    goto LABEL_7;
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t audioipc::eventlink_primitive::timed_wait_signal_or_error(audioipc::eventlink_primitive *this, double a2)
{
  os_retain(this);
  v3 = os_eventlink_signal_and_wait_until();
  v4 = v3;
  if (v3)
  {
    if (v3 != 60)
    {
      v6 = 0;
      v5 = v3 & 0xFFFFFF00;
      goto LABEL_7;
    }

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = 0x100000000;
LABEL_7:
  os_release(this);
  return v6 | v5 | v4;
}

unint64_t audioipc::eventlink_primitive::wait_or_error(audioipc::eventlink_primitive *this)
{
  os_retain(this);
  v2 = os_eventlink_wait();
  os_release(this);
  return v2 | ((v2 == 0) << 32);
}

void std::vector<unsigned char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void PropertyMarshaller::~PropertyMarshaller(PropertyMarshaller *this)
{
  *this = &unk_1F033D1E8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<CADeserializer>::reset[abi:ne200100](this + 2, 0);
  std::unique_ptr<CASerializer>::reset[abi:ne200100](this + 1, 0);
}

void Marshaller::~Marshaller(Marshaller *this)
{
  *this = &unk_1F03374C0;
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; i = *(this + 2))
  {
    CFRelease(*v3++);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

uint64_t std::unique_ptr<CASerializer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x193ADE2A0]();

    JUMPOUT(0x193ADF220);
  }

  return result;
}

swix::data *swix::data::data(swix::data *this, const void *bytes, size_t length)
{
  v4 = xpc_data_create(bytes, length);
  *this = v4;
  if (!v4)
  {
    *this = xpc_null_create();
  }

  return this;
}

uint64_t swix::decode_message::decode<unsigned int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_uint64(a1, a2);
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_1F033FDD0;
  }

  return result;
}

void swix::xpcobj_coder<swix::data>::decode(xpc_object_t *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (object_getClass(v5) == MEMORY[0x1E69E9E70])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

void PropertyMarshaller::PropertyMarshaller(PropertyMarshaller *this, const void *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F033D1E8;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (a2)
  {
    operator new();
  }

  operator new();
}

void sub_18F62BF38(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v4, 0x20C4093837F09);
  v6 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<CADeserializer>::reset[abi:ne200100](v3, 0);
  std::unique_ptr<CASerializer>::reset[abi:ne200100](v2, 0);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<CADeserializer>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x193ADE3E0]();

    JUMPOUT(0x193ADF220);
  }

  return result;
}

uint64_t AudioConverterPropertyMarshaller::GetMarshaller(AudioConverterPropertyMarshaller *this, AUSpatialMixerPropertyMarshaller *a2)
{
  if (a2 > 1685218159)
  {
    if (a2 <= 1885627759)
    {
      if (a2 > 1832022883)
      {
        if (a2 <= 1868786719)
        {
          if (a2 <= 1835623026)
          {
            if (a2 > 1835296370)
            {
              if (a2 == 1835296371 || a2 == 1835298918)
              {
                goto LABEL_268;
              }

              v3 = 29283;
            }

            else
            {
              if (a2 == 1832022884)
              {
                operator new();
              }

              if (a2 == 1832150386)
              {
                goto LABEL_268;
              }

              v3 = 25446;
            }

            v4 = v3 | 0x6D640000;
            goto LABEL_267;
          }

          if (a2 <= 1835954031)
          {
            if (a2 == 1835623027 || a2 == 1835626096)
            {
              goto LABEL_268;
            }

            v4 = 1835952496;
            goto LABEL_267;
          }

          if (a2 == 1835954032 || a2 == 1836016243)
          {
            goto LABEL_268;
          }

          v2 = 1868784752;
          goto LABEL_236;
        }

        if (a2 > 1869836896)
        {
          if ((a2 - 1885432674) <= 0xB && ((1 << (a2 - 98)) & 0xC15) != 0)
          {
            goto LABEL_268;
          }

          if (a2 != 1869836897)
          {
            v4 = 1885430832;
            goto LABEL_267;
          }

LABEL_224:
          operator new();
        }

        if (a2 > 1868983586)
        {
          if (a2 != 1868983587)
          {
            if (a2 != 1868983668)
            {
              v4 = 1869639794;
              goto LABEL_267;
            }

            goto LABEL_242;
          }

LABEL_249:
          operator new();
        }

        if (a2 != 1868786720)
        {
          v5 = 1868969065;
LABEL_248:
          if (a2 != v5)
          {
            goto LABEL_275;
          }

          goto LABEL_249;
        }

        goto LABEL_250;
      }

      if (a2 > 1768123423)
      {
        if (a2 > 1768843635)
        {
          if (a2 > 1802857320)
          {
            if (a2 != 1802857321)
            {
              if (a2 == 1818518131)
              {
                goto LABEL_268;
              }

              v4 = 1819112035;
              goto LABEL_267;
            }

            goto LABEL_237;
          }

          if (a2 == 1768843636)
          {
            goto LABEL_268;
          }

          if (a2 != 1769172837)
          {
            v9 = 1769173601;
            goto LABEL_223;
          }

          goto LABEL_269;
        }

        if (a2 > 1768320371)
        {
          if (a2 != 1768320372)
          {
            if (a2 != 1768711273)
            {
              if (a2 == 1768780388)
              {
                operator new();
              }

              goto LABEL_275;
            }

            goto LABEL_269;
          }

LABEL_242:
          operator new();
        }

        if (a2 != 1768123424)
        {
          if (a2 == 1768305775)
          {
            goto LABEL_249;
          }

          v5 = 1768320291;
          goto LABEL_248;
        }

LABEL_250:
        operator new();
      }

      if (a2 > 1718383463)
      {
        if (a2 <= 1735422065)
        {
          if (a2 == 1718383464)
          {
            goto LABEL_268;
          }

          if (a2 != 1718383476)
          {
            v4 = 1718842483;
            goto LABEL_267;
          }

          goto LABEL_279;
        }

        if (a2 == 1735422066)
        {
          operator new();
        }

        if (a2 != 1752658554)
        {
          v2 = 1768121456;
          goto LABEL_236;
        }

LABEL_255:
        operator new();
      }

      if (a2 > 1685218163)
      {
        if (a2 == 1685218164)
        {
          operator new();
        }

        if (a2 == 1702060388)
        {
          goto LABEL_268;
        }

        v4 = 1717925491;
        goto LABEL_267;
      }

      if (a2 == 1685218160)
      {
        goto LABEL_268;
      }

      v6 = 1685218162;
LABEL_274:
      if (a2 != v6)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 <= 1936484722)
    {
      if (a2 <= 1919116143)
      {
        if (a2 <= 1886353265)
        {
          if (a2 > 1885759083)
          {
            if (a2 != 1885759084 && a2 != 1885823853)
            {
              if (a2 == 1886090345)
              {
                operator new();
              }

              goto LABEL_275;
            }

            goto LABEL_268;
          }

          if (a2 == 1885627760)
          {
            goto LABEL_268;
          }

          v4 = 1885758819;
          goto LABEL_267;
        }

        if (a2 > 1886546284)
        {
          if (a2 == 1886546285)
          {
            operator new();
          }

          if (a2 == 1886547309)
          {
            goto LABEL_268;
          }

          v4 = 1886678115;
          goto LABEL_267;
        }

        if (a2 == 1886353266)
        {
          goto LABEL_268;
        }

        if (a2 == 1886418028)
        {
          goto LABEL_271;
        }

        v6 = 1886545516;
        goto LABEL_274;
      }

      if (a2 > 1935896164)
      {
        if (a2 <= 1936028011)
        {
          if (a2 == 1935896165)
          {
            operator new();
          }

          if (a2 == 1935896684)
          {
            operator new();
          }

          v4 = 1936024440;
          goto LABEL_267;
        }

        if (a2 == 1936028012)
        {
          goto LABEL_268;
        }

        if (a2 != 1936286825)
        {
          v4 = 1936286832;
          goto LABEL_267;
        }

        goto LABEL_269;
      }

      if (a2 <= 1919837297)
      {
        if (a2 == 1919116144)
        {
          goto LABEL_268;
        }

        if (a2 != 1919185763)
        {
          goto LABEL_275;
        }

        goto LABEL_255;
      }

      if (a2 == 1919837298 || a2 == 1935765606)
      {
        goto LABEL_268;
      }

      v10 = 1935893603;
    }

    else
    {
      if (a2 > 1969386853)
      {
        if (a2 > 1986946670)
        {
          if (a2 > 2020172402)
          {
            if (a2 == 2020172403 || a2 == 2020175987)
            {
              goto LABEL_268;
            }

            v4 = 2020569203;
          }

          else
          {
            if (a2 == 1986946671)
            {
              operator new();
            }

            if (a2 == 1987076466)
            {
              goto LABEL_268;
            }

            v4 = 1987078975;
          }

          goto LABEL_267;
        }

        if (a2 <= 1986163312)
        {
          if (a2 == 1969386854 || a2 == 1970434930)
          {
            goto LABEL_268;
          }

          v4 = 1986163298;
          goto LABEL_267;
        }

        if (a2 == 1986163313)
        {
          goto LABEL_268;
        }

        if (a2 == 1986355826)
        {
          goto LABEL_224;
        }

        v9 = 1986360178;
        goto LABEL_223;
      }

      if (a2 > 1936876392)
      {
        if (a2 > 1936945515)
        {
          if (a2 != 1936945516)
          {
            if (a2 == 1952539491)
            {
              goto LABEL_268;
            }

            v4 = 1952609638;
            goto LABEL_267;
          }

          goto LABEL_278;
        }

        if (a2 == 1936876393)
        {
          goto LABEL_268;
        }

        if (a2 == 1936876400)
        {
          goto LABEL_264;
        }

        v7 = 25457;
LABEL_145:
        v4 = v7 | 0x73720000;
        goto LABEL_267;
      }

      if (a2 > 1936551779)
      {
        if (a2 == 1936551780 || a2 == 1936748400)
        {
          goto LABEL_268;
        }

        v7 = 25441;
        goto LABEL_145;
      }

      if (a2 == 1936484723)
      {
        operator new();
      }

      v10 = 1936548204;
    }

    if (a2 != v10)
    {
      goto LABEL_275;
    }

    goto LABEL_269;
  }

  if (a2 <= 1634366321)
  {
    if (a2 <= 1584620642)
    {
      if (a2 > 1584164459)
      {
        if (a2 <= 1584427883)
        {
          if (a2 <= 1584229483)
          {
            if (a2 != 1584164460)
            {
              if (a2 != 1584165744)
              {
                v2 = 1584227189;
                goto LABEL_236;
              }

LABEL_268:
              operator new();
            }

LABEL_271:
            operator new();
          }

          if (a2 == 1584229484 || a2 == 1584426093)
          {
            goto LABEL_271;
          }

          v4 = 1584427631;
LABEL_267:
          if (a2 != v4)
          {
            goto LABEL_275;
          }

          goto LABEL_268;
        }

        if (a2 <= 1584555631)
        {
          if (a2 == 1584427884)
          {
            goto LABEL_268;
          }

          if (a2 == 1584428140)
          {
            goto LABEL_271;
          }

          v4 = 1584488812;
          goto LABEL_267;
        }

        if (a2 == 1584555632)
        {
          operator new();
        }

        if (a2 != 1584620388)
        {
          v4 = 1584620400;
          goto LABEL_267;
        }

LABEL_237:
        operator new();
      }

      if (a2 <= 1583510387)
      {
        if (a2 <= 1583440992)
        {
          if (a2 == 560227360)
          {
            goto LABEL_268;
          }

          v4 = 610889331;
        }

        else
        {
          if (a2 == 1583440993)
          {
            goto LABEL_237;
          }

          if (a2 == 1583443042)
          {
            goto LABEL_268;
          }

          v4 = 1583506551;
        }

        goto LABEL_267;
      }

      if (a2 <= 1583574639)
      {
        if (a2 == 1583510388)
        {
          goto LABEL_271;
        }

        if (a2 != 1583572073)
        {
          if (a2 == 1583574386)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_269;
      }

      if (a2 != 1583574640)
      {
        if (a2 != 1583576436)
        {
          if (a2 == 1583640678)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_271;
      }

LABEL_278:
      operator new();
    }

    if (a2 > 1633904235)
    {
      if (a2 <= 1634034539)
      {
        if (a2 <= 1633906802)
        {
          if (a2 != 1633904236)
          {
            if (a2 != 1633904996 && a2 != 1633906532)
            {
              goto LABEL_275;
            }

            goto LABEL_242;
          }

LABEL_279:
          operator new();
        }

        if (a2 == 1633906803 || a2 == 1633907488)
        {
          goto LABEL_269;
        }

        v9 = 1634034290;
        goto LABEL_223;
      }

      if (a2 <= 1634167139)
      {
        if (a2 != 1634034540)
        {
          if (a2 != 1634038642)
          {
            v4 = 1634103408;
            goto LABEL_267;
          }

          goto LABEL_224;
        }

LABEL_225:
        operator new();
      }

      if (a2 == 1634167140)
      {
        goto LABEL_268;
      }

      if (a2 == 1634296684)
      {
        goto LABEL_225;
      }

      v9 = 1634300786;
LABEL_223:
      if (a2 != v9)
      {
        goto LABEL_275;
      }

      goto LABEL_224;
    }

    if (a2 > 1633842021)
    {
      if (a2 > 1633903205)
      {
        if (a2 != 1633903206 && a2 != 1633903974)
        {
          if (a2 == 1633904233)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_268;
      }

      if (a2 == 1633842022 || a2 == 1633842276)
      {
        goto LABEL_268;
      }

      v4 = 1633903204;
      goto LABEL_267;
    }

    if (a2 > 1584948335)
    {
      if (a2 == 1584948336)
      {
        goto LABEL_268;
      }

      if (a2 != 1584952428)
      {
        if (a2 == 1633776744)
        {
          operator new();
        }

        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 != 1584620643)
    {
      v4 = 1584688227;
      goto LABEL_267;
    }

LABEL_269:
    operator new();
  }

  if (a2 <= 1668248433)
  {
    if (a2 <= 1651668064)
    {
      if (a2 > 1634757730)
      {
        if (a2 <= 1651401846)
        {
          if (a2 != 1634757731 && a2 != 1634955366)
          {
            if (a2 == 1651401828)
            {
              operator new();
            }

            goto LABEL_275;
          }

          goto LABEL_268;
        }

        if (a2 == 1651401847 || a2 == 1651663220)
        {
          goto LABEL_268;
        }

        v8 = 1651668003;
        goto LABEL_183;
      }

      if (a2 > 1634562668)
      {
        if (a2 == 1634562669)
        {
          goto LABEL_268;
        }

        if (a2 == 1634689900)
        {
          goto LABEL_225;
        }

        v9 = 1634694002;
        goto LABEL_223;
      }

      if (a2 != 1634366322)
      {
        v4 = 1634493037;
        goto LABEL_267;
      }
    }

    else
    {
      if (a2 <= 1667855217)
      {
        if (a2 <= 1667527266)
        {
          if (a2 != 1651668065 && a2 != 1651668082)
          {
            v4 = 1667527029;
            goto LABEL_267;
          }

          goto LABEL_224;
        }

        if (a2 == 1667527267)
        {
          goto LABEL_268;
        }

        if (a2 != 1667788144)
        {
          v4 = 1667850867;
          goto LABEL_267;
        }

LABEL_280:
        operator new();
      }

      if (a2 > 1668244082)
      {
        if (a2 != 1668244083 && a2 != 1668247149)
        {
          if (a2 == 1668248169)
          {
            operator new();
          }

          goto LABEL_275;
        }

        goto LABEL_268;
      }

      if (a2 != 1667855218)
      {
        if (a2 == 1668114275)
        {
          goto LABEL_237;
        }

        v8 = 1668116067;
LABEL_183:
        if (a2 != v8)
        {
          goto LABEL_275;
        }

        goto LABEL_225;
      }
    }

LABEL_264:
    operator new();
  }

  if (a2 > 1684369509)
  {
    if (a2 <= 1684893539)
    {
      if (a2 > 1684826476)
      {
        if (a2 == 1684826477)
        {
          goto LABEL_268;
        }

        if (a2 == 1684891491)
        {
          goto LABEL_237;
        }

        v4 = 1684892024;
      }

      else
      {
        if (a2 == 1684369510)
        {
          goto LABEL_268;
        }

        if (a2 == 1684496752)
        {
          operator new();
        }

        v4 = 1684632680;
      }

      goto LABEL_267;
    }

    if (a2 > 1685218145)
    {
      if ((a2 - 1685218146) >= 2)
      {
        goto LABEL_275;
      }

      goto LABEL_271;
    }

    if (a2 == 1684893540)
    {
      goto LABEL_268;
    }

    if (a2 != 1685086578)
    {
      v4 = 1685089087;
      goto LABEL_267;
    }

    goto LABEL_269;
  }

  if (a2 <= 1668510306)
  {
    if (a2 > 1668312418)
    {
      if (a2 == 1668312419)
      {
        operator new();
      }

      if (a2 != 1668312939)
      {
        v4 = 1668441705;
        goto LABEL_267;
      }

      goto LABEL_225;
    }

    if (a2 != 1668248434)
    {
      if (a2 == 1668309874)
      {
        operator new();
      }

      if (a2 == 1668310371)
      {
        operator new();
      }

      goto LABEL_275;
    }

    goto LABEL_264;
  }

  if (a2 <= 1684238188)
  {
    if (a2 != 1668510307)
    {
      if (a2 == 1684171124)
      {
        goto LABEL_268;
      }

      v4 = 1684234608;
      goto LABEL_267;
    }

    goto LABEL_280;
  }

  if (a2 == 1684238189)
  {
    goto LABEL_268;
  }

  if (a2 == 1684238952)
  {
    goto LABEL_237;
  }

  v2 = 1684238960;
LABEL_236:
  if (a2 == v2)
  {
    goto LABEL_237;
  }

LABEL_275:

  return AUSpatialMixerPropertyMarshaller::GetSpatialMixerMarshaller(a2);
}

void Marshaller::CheckDest(Marshaller *this, void **a2, unsigned int *a3, unint64_t a4)
{
  v4 = a4;
  if (!*a2)
  {
    v7 = *(this + 5);
    v8 = (this + 40);
    v9 = *(this + 6) - v7;
    if (a4 <= v9)
    {
      if (a4 < v9)
      {
        *(this + 6) = &v7[a4];
      }
    }

    else
    {
      std::vector<unsigned char>::__append((this + 40), a4 - v9);
      v7 = *v8;
    }

    *a2 = v7;
    goto LABEL_9;
  }

  if (*a3 > a4)
  {
LABEL_9:
    *a3 = v4;
  }
}

const void *applesauce::CF::details::at_key<__CFString const* const&>(const __CFDictionary *a1, const void *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(a1, a2);
  }

  else
  {
    return 0;
  }
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_18F62DA90(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
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

void *std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

_BYTE *applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(UInt8 *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<std::string,0>(a1, v4);
}

void *applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(void *a1, const __CFDictionary *a2, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const* const&>(a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::ArrayRef::from_get(a1, v4);
}

void *applesauce::CF::ArrayRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFArrayGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_18F62E3A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::Graph::setAUStrip(DSPGraph::Graph *this, const __CFDictionary *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  applesauce::CF::DictionaryRef::from_get(v101, a2);
  if (!v101[0])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v4 = applesauce::CF::details::at_key<__CFString const* const&>(v101[0], @"version");
  if (!v4 || ((v5 = applesauce::CF::convert_as<int,0>(v4), (v5 & 0x100000000) == 0) ? (v6 = 1) : (v6 = v5), v6 == 1))
  {
    applesauce::CF::DictionaryRef::from_get(&v109, a2);
    if (!v109)
    {
      v83 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v83, "Could not construct");
    }

    if (applesauce::CF::details::has_key<__CFString const* const&>(v109, @"strips"))
    {
      if (!v109)
      {
        v84 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v84, "Could not construct");
      }

      applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v109, @"strips");
      if (DSPGraph::getLog(void)::onceToken != -1)
      {
        dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
      }

      v100 = os_signpost_id_make_with_pointer(DSPGraph::getLog(void)::gLog, this);
      v44 = theArray;
      if (!theArray)
      {
LABEL_168:
        v60 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v60, "Could not construct");
      }

      v45 = 0;
      v46 = v100 - 1;
      while (v45 < CFArrayGetCount(v44))
      {
        if (!theArray)
        {
          v71 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v71, "Could not construct");
        }

        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(buf, theArray, v45);
        if (!*buf)
        {
          v70 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v70, "Could not construct");
        }

        if (applesauce::CF::details::has_key<__CFString const* const&>(*buf, @"effects"))
        {
          if (!*buf)
          {
            v72 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v72, "Could not construct");
          }

          applesauce::CF::details::find_at_key<applesauce::CF::ArrayRef,__CFString const* const&>(&v112, *buf, @"effects");
          v47 = v112;
          if (!v112)
          {
LABEL_187:
            v64 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v64, "Could not construct");
          }

          v48 = 0;
          while (v48 < CFArrayGetCount(v47))
          {
            if (!v112)
            {
              v66 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v66, "Could not construct");
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v111, v112, v48);
            if (!v111)
            {
              v65 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v65, "Could not construct");
            }

            applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, v111, @"displayname");
            v49 = v104;
            v50 = v104;
            if ((v104 & 0x80u) != 0)
            {
              v49 = v103;
            }

            if (!v49)
            {
              __cxa_rethrow();
            }

            v51 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, &__p);
            if (v51)
            {
              v52 = v51[5];
              if (v52)
              {
                if (!v111)
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                }

                v53 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"aupreset");
                if (!v53)
                {
                  v69 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v69, "Could not find item");
                }

                applesauce::CF::DictionaryRef::from_get(&v108, v53);
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                if (v46 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v54 = DSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                  {
                    v55 = v52 + 32;
                    if (v52[55] < 0)
                    {
                      v55 = *v55;
                    }

                    *v114 = 136315138;
                    *&v114[4] = v55;
                    _os_signpost_emit_with_name_impl(&dword_18F5DF000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v100, "Box::setPreset", "%s", v114, 0xCu);
                  }
                }

                (*(*v52 + 352))(v52, v108);
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                if (v46 <= 0xFFFFFFFFFFFFFFFDLL)
                {
                  v56 = DSPGraph::getLog(void)::gLog;
                  if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                  {
                    v57 = v52 + 32;
                    if (v52[55] < 0)
                    {
                      v57 = *v57;
                    }

                    *v114 = 136315138;
                    *&v114[4] = v57;
                    _os_signpost_emit_with_name_impl(&dword_18F5DF000, v56, OS_SIGNPOST_INTERVAL_END, v100, "Box::setPreset", "%s", v114, 0xCu);
                  }
                }

                if (!v111)
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not construct");
                }

                v58 = applesauce::CF::details::at_key<__CFString const* const&>(v111, @"bypass");
                if (v58)
                {
                  v59 = applesauce::CF::convert_as<unsigned int,0>(v58);
                  if ((v59 & 0x100000000) != 0)
                  {
                    (*(*v52 + 56))(v52, v59 != 0);
                  }
                }

                if (v108)
                {
                  CFRelease(v108);
                }

                v50 = v104;
              }
            }

            if ((v50 & 0x80) != 0)
            {
              operator delete(__p);
            }

            if (v111)
            {
              CFRelease(v111);
            }

            ++v48;
            v47 = v112;
            if (!v112)
            {
              goto LABEL_187;
            }
          }

          if (v112)
          {
            CFRelease(v112);
          }
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        ++v45;
        v44 = theArray;
        if (!theArray)
        {
          goto LABEL_168;
        }
      }

      if (theArray)
      {
        CFRelease(theArray);
      }
    }

    else
    {
      if (!v109)
      {
        v85 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v85, "Could not construct");
      }

      if (CFDictionaryGetCount(v109))
      {
        v43 = 1886548769;
        goto LABEL_175;
      }
    }

    v43 = 0;
LABEL_175:
    v61 = v109;
    if (!v109)
    {
      goto LABEL_184;
    }

LABEL_183:
    CFRelease(v61);
    goto LABEL_184;
  }

  if (v6 != 2)
  {
    v43 = 4294956445;
    goto LABEL_184;
  }

  applesauce::CF::DictionaryRef::from_get(&v111, a2);
  if (!v111)
  {
    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&v109, v111, @"strips");
  if (v110 == 1)
  {
    v7 = v109;
    if (v109)
    {
      Count = CFArrayGetCount(v109);
      v88 = v7;
      v89 = CFArrayGetCount(v7);
      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          if (i == v89)
          {
            break;
          }

          applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v108, v88, i);
          if (!v108)
          {
            v82 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v82, "Could not construct");
          }

          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(&theArray, v108, @"effects");
          if (v107 == 1)
          {
            v9 = theArray;
            if (theArray)
            {
              v95 = CFArrayGetCount(theArray);
              v94 = CFArrayGetCount(v9);
              if (v95)
              {
                v10 = 0;
                v92 = v9;
                v93 = i;
                while (1)
                {
                  if (v10 == v94)
                  {
                    goto LABEL_104;
                  }

                  applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v9, v10);
                  if (!cf)
                  {
                    v79 = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(v79, "Could not construct");
                  }

                  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(&__p, cf, @"displayname");
                  v11 = v104;
                  v12 = v104;
                  if ((v104 & 0x80u) != 0)
                  {
                    v11 = v103;
                  }

                  if (!v11)
                  {
                    __cxa_rethrow();
                  }

                  v13 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(this + 98, &__p);
                  if (v13)
                  {
                    v14 = v13[5];
                    if (v14)
                    {
                      break;
                    }
                  }

LABEL_99:
                  if ((v12 & 0x80) != 0)
                  {
                    operator delete(__p);
                  }

                  v9 = v92;
                  i = v93;
                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (++v10 == v95)
                  {
                    goto LABEL_104;
                  }
                }

                v15 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                v101[1] = v15;
                if (DSPGraph::getLog(void)::onceToken != -1)
                {
                  dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                }

                spid = os_signpost_id_generate(DSPGraph::getLog(void)::gLog);
                if (!v15)
                {
                  v81 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v81, "Could not construct");
                }

                v16 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"aupreset");
                if (v16)
                {
                  v17 = v16;
                  CFRetain(v16);
                  v18 = CFGetTypeID(v17);
                  if (v18 == CFDictionaryGetTypeID())
                  {
                    *v114 = v17;
                    v114[8] = 1;
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v19 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v20 = v14 + 32;
                        if (v14[55] < 0)
                        {
                          v20 = *v20;
                        }

                        *buf = 136315138;
                        *&buf[4] = v20;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setPreset", "%s", buf, 0xCu);
                      }
                    }

                    (*(*v14 + 352))(v14, v17);
                    if (DSPGraph::getLog(void)::onceToken != -1)
                    {
                      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                    }

                    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v21 = DSPGraph::getLog(void)::gLog;
                      if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                      {
                        v22 = v14 + 32;
                        if (v14[55] < 0)
                        {
                          v22 = *v22;
                        }

                        *buf = 136315138;
                        *&buf[4] = v22;
                        _os_signpost_emit_with_name_impl(&dword_18F5DF000, v21, OS_SIGNPOST_INTERVAL_END, spid, "Box::setPreset", "%s", buf, 0xCu);
                      }
                    }

                    if (*v114)
                    {
                      CFRelease(*v114);
                    }

                    goto LABEL_51;
                  }

                  CFRelease(v17);
                }

                v114[0] = 0;
                v114[8] = 0;
LABEL_51:
                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const* const&>(v114, v15, @"parameters");
                if (v114[8] == 1)
                {
                  v23 = *v114;
                  if (*v114)
                  {
                    v99 = CFArrayGetCount(*v114);
                    v98 = CFArrayGetCount(v23);
                    if (v99)
                    {
                      v24 = 0;
                      v25 = spid - 1;
                      v91 = (v14 + 32);
                      v97 = v23;
                      while (1)
                      {
                        if (v98 == v24)
                        {
                          goto LABEL_90;
                        }

                        applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v112, v23, v24);
                        if (!v112)
                        {
                          v74 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v74, "Could not construct");
                        }

                        v26 = applesauce::CF::details::at_key<__CFString const* const&>(v112, @"scope");
                        if (v26)
                        {
                          v26 = applesauce::CF::convert_as<unsigned int,0>(v26);
                        }

                        if ((v26 & 0x100000000) != 0)
                        {
                          v27 = v26;
                        }

                        else
                        {
                          v27 = 0;
                        }

                        if (!v112)
                        {
                          v76 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v76, "Could not construct");
                        }

                        v28 = applesauce::CF::details::at_key<__CFString const* const&>(v112, @"element");
                        if (v28)
                        {
                          v28 = applesauce::CF::convert_as<unsigned int,0>(v28);
                        }

                        if ((v28 & 0x100000000) != 0)
                        {
                          v29 = v28;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        if (!v112)
                        {
                          v77 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v77, "Could not construct");
                        }

                        v30 = applesauce::CF::details::at_key<__CFString const* const&>(v112, @"parameterID");
                        if (!v30)
                        {
                          break;
                        }

                        v31 = applesauce::CF::convert_as<unsigned int,0>(v30);
                        if ((v31 & 0x100000000) == 0)
                        {
                          v75 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v75, "Could not convert");
LABEL_201:
                        }

                        v32 = v31;
                        if (!v112)
                        {
                          v78 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v78, "Could not construct");
                        }

                        v33 = applesauce::CF::details::at_key<__CFString const* const&>(v112, @"value");
                        if (!v33)
                        {
                          v73 = __cxa_allocate_exception(0x10uLL);
                          std::runtime_error::runtime_error(v73, "Could not find item");
                        }

                        v34 = applesauce::CF::convert_to<float,0>(v33);
                        if (DSPGraph::getLog(void)::onceToken != -1)
                        {
                          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                        }

                        if (v25 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v35 = DSPGraph::getLog(void)::gLog;
                          if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                          {
                            v36 = v14 + 32;
                            if (v14[55] < 0)
                            {
                              v36 = *v91;
                            }

                            *buf = 136315138;
                            *&buf[4] = v36;
                            _os_signpost_emit_with_name_impl(&dword_18F5DF000, v35, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Box::setParameter", "%s", buf, 0xCu);
                          }
                        }

                        (*(*v14 + 80))(v14, v32, v27, v29, 0, v34);
                        if (DSPGraph::getLog(void)::onceToken != -1)
                        {
                          dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_15679);
                        }

                        if (v25 <= 0xFFFFFFFFFFFFFFFDLL)
                        {
                          v37 = DSPGraph::getLog(void)::gLog;
                          if (os_signpost_enabled(DSPGraph::getLog(void)::gLog))
                          {
                            v38 = v14 + 32;
                            if (v14[55] < 0)
                            {
                              v38 = *v91;
                            }

                            *buf = 136315138;
                            *&buf[4] = v38;
                            _os_signpost_emit_with_name_impl(&dword_18F5DF000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Box::setParameter", "%s", buf, 0xCu);
                          }
                        }

                        if (v112)
                        {
                          CFRelease(v112);
                        }

                        ++v24;
                        v23 = v97;
                        if (v99 == v24)
                        {
                          goto LABEL_90;
                        }
                      }

                      v75 = __cxa_allocate_exception(0x10uLL);
                      std::runtime_error::runtime_error(v75, "Could not find item");
                      goto LABEL_201;
                    }

LABEL_90:
                    if (*v114)
                    {
                      CFRelease(*v114);
                    }
                  }
                }

                v39 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"bypass");
                if (v39)
                {
                  v40 = applesauce::CF::convert_as<unsigned int,0>(v39);
                  if ((v40 & 0x100000000) != 0)
                  {
                    (*(*v14 + 56))(v14, v40 != 0);
                  }
                }

                v41 = applesauce::CF::details::at_key<__CFString const* const&>(v15, @"bypass");
                if (v41)
                {
                  v42 = applesauce::CF::convert_as<BOOL,0>(v41);
                  if (v42 >= 0x100u)
                  {
                    (*(*v14 + 56))(v14, v42 & 1);
                  }
                }

                CFRelease(v15);
                v12 = v104;
                goto LABEL_99;
              }

LABEL_104:
              if (theArray)
              {
                CFRelease(theArray);
              }
            }
          }

          if (v108)
          {
            CFRelease(v108);
          }
        }
      }

      if (v109)
      {
        CFRelease(v109);
      }
    }

    v43 = 0;
  }

  else
  {
    if (!v111)
    {
      v87 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v87, "Could not construct");
    }

    if (CFDictionaryGetCount(v111))
    {
      v43 = 1886548769;
    }

    else
    {
      v43 = 0;
    }
  }

  v61 = v111;
  if (v111)
  {
    goto LABEL_183;
  }

LABEL_184:
  if (v101[0])
  {
    CFRelease(v101[0]);
  }

  v62 = *MEMORY[0x1E69E9840];
  return v43;
}

void sub_18F62F5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *a1, size_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  a1[23] = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  a1[a2] = 0;
  return a1;
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_18F901990);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_18F901730), xmmword_18F9019A0);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

uint64_t DSPGraph::Box::setPreset(DSPGraph::Box *this, CFTypeRef cf)
{
  if (!cf)
  {
    cfa = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    goto LABEL_43;
  }

  CFRetain(cf);
  cfa = cf;
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  v5 = applesauce::CF::details::at_key<__CFString const* const&>(cfa, @"version");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not find item");
LABEL_43:
  }

  if (applesauce::CF::convert_to<int,0>(v5))
  {
LABEL_5:
    v6 = 4294956445;
    goto LABEL_6;
  }

  applesauce::CF::details::find_at_key<std::string,__CFString const* const&>(__s1, cfa, @"classname");
  v8 = (*(*this + 16))(this);
  v9 = strlen(v8);
  v10 = v9;
  v11 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    if (v9 != __s1[1])
    {
      v6 = 4294956445;
      goto LABEL_39;
    }

    if (v9 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v12 = __s1[0];
  }

  else
  {
    if (v9 != v29)
    {
      goto LABEL_5;
    }

    v12 = __s1;
  }

  if (memcmp(v12, v8, v10))
  {
    v6 = 4294956445;
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

  if (!cfa)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  v13 = applesauce::CF::details::at_key<__CFString const* const&>(cfa, @"data");
  if (v13)
  {
    v14 = v13;
    CFRetain(v13);
    v15 = CFGetTypeID(v14);
    if (v15 == CFDataGetTypeID())
    {
      v27 = v14;
      BytePtr = CFDataGetBytePtr(v14);
      Length = CFDataGetLength(v14);
      if (Length >= 1)
      {
        v18 = BytePtr + Length;
        do
        {
          if ((BytePtr + 1) > v18)
          {
            break;
          }

          if ((BytePtr + 2) > v18)
          {
            break;
          }

          v19 = BytePtr + 3;
          if ((BytePtr + 3) > v18)
          {
            break;
          }

          v20 = BytePtr[2];
          if (v20)
          {
            v21 = bswap32(*BytePtr);
            v22 = bswap32(BytePtr[1]);
            v23 = bswap32(v20);
            while ((v19 + 1) <= v18)
            {
              BytePtr = v19 + 2;
              if ((v19 + 2) > v18)
              {
                BytePtr = v19 + 1;
                goto LABEL_35;
              }

              (*(*this + 80))(this, bswap32(*v19), v21, v22, 0, COERCE_FLOAT(bswap32(v19[1])));
              v19 = BytePtr;
              if (!--v23)
              {
                goto LABEL_35;
              }
            }
          }

          BytePtr = v19;
LABEL_35:
          ;
        }

        while (BytePtr < v18);
      }

      CFRelease(v27);
    }

    else
    {
      CFRelease(v14);
    }
  }

  v6 = 0;
  if (v29 < 0)
  {
LABEL_39:
    operator delete(__s1[0]);
  }

LABEL_6:
  if (cfa)
  {
    CFRelease(cfa);
  }

  return v6;
}

void sub_18F63014C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef(&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18F62FE10);
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

uint64_t *std::unique_ptr<DSPGraph::RenderObserverList<DSPGraph::Box>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(v2 + 64);
    caulk::concurrent::lf_read_synchronized_write<std::vector<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver,std::allocator<DSPGraph::RenderObserverList<DSPGraph::Box>::RenderObserver>>>::~lf_read_synchronized_write(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void DSPGraph::Interpreter::compileText(DSPGraph *this@<X1>, uint64_t **a2@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v159 = *MEMORY[0x1E69E9840];
  DSPGraph::checkASCIIEncoding(this, this);
  *(a2 + 184) = 0;
  a2[22] = 0;
  v135 = (a2 + 22);
  ((*a2)[3])(__p, a2);
  v10 = __p[0];
  __p[0] = 0;
  v11 = a2[1];
  a2[1] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = __p[0];
    __p[0] = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  memset(&v142, 0, sizeof(v142));
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  *__p = 0u;
  v138 = 0u;
  if (&v140 != a4)
  {
    v14 = *a4;
    v13 = a4[1];
    if (v13 != v14)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 3);
      if (v15 < 0xAAAAAAAAAAAAAABLL)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v15);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    *(&v140 + 1) = 0;
  }

  for (i = *(a3 + 16); i; i = *i)
  {
    DSPGraph::Preprocessor::def(__p, i + 2);
  }

  std::string::basic_string[abi:ne200100]<0>(&v158, this);
  DSPGraph::Preprocessor::preprocess(&__str, __p, &v158, 0);
  v142 = __str;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }

  __str.__r_.__value_.__r.__words[0] = &v140;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  std::deque<std::unique_ptr<DSPGraph::Macro>>::~deque[abi:ne200100](__p);
  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v142;
  }

  else
  {
    v18 = v142.__r_.__value_.__r.__words[0];
  }

  DSPGraph::checkASCIIEncoding(v18, v17);
  v136 = 0;
  while (v18->__r_.__value_.__s.__data_[0])
  {
    ++v136;
    memset(&v147, 0, sizeof(v147));
    while (1)
    {
      v19 = v18->__r_.__value_.__s.__data_[0];
      if (!v18->__r_.__value_.__s.__data_[0])
      {
        break;
      }

      v18 = (v18 + 1);
      if (v19 == 10)
      {
        break;
      }

      std::string::push_back(&v147, v19);
    }

    v20 = &v147;
    if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v147.__r_.__value_.__r.__words[0];
    }

    v146 = v20;
    DSPGraph::skipspace(&v146, v19);
    if (*v146 && *v146 != 59)
    {
      v144 = 0uLL;
      v145 = 0;
      if ((DSPGraph::Interpreter::parseName(&v146, &v144) & 1) == 0)
      {
        goto LABEL_319;
      }

      DSPGraph::skipspace(&v146, v21);
      v23 = v146;
      memset(&v143, 0, sizeof(v143));
      while (1)
      {
        v24 = *v23;
        if (v24 <= 0x3B && ((1 << v24) & 0x800000000000401) != 0)
        {
          break;
        }

        std::string::push_back(&v143, v24);
        ++v23;
      }

      v26 = v143.__r_.__value_.__r.__words[0];
      if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v143;
      }

      v146 = v26;
      if ((v145 & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v145) <= 7u)
        {
          if (HIBYTE(v145) > 3u)
          {
            if (HIBYTE(v145) != 4)
            {
              if (HIBYTE(v145) != 5)
              {
                if (HIBYTE(v145) == 6 && v144 == 1886680431 && WORD2(v144) == 29813)
                {
                  goto LABEL_86;
                }

                goto LABEL_205;
              }

              if (v144 == 1970302569 && BYTE4(v144) == 116)
              {
                goto LABEL_187;
              }

              if (v144 != 1634886000 || BYTE4(v144) != 109)
              {
LABEL_179:
                if (HIBYTE(v145) <= 0xBu)
                {
                  if (HIBYTE(v145) != 3)
                  {
                    if (HIBYTE(v145) == 4)
                    {
                      goto LABEL_182;
                    }

LABEL_92:
                    if (HIBYTE(v145) != 9)
                    {
                      goto LABEL_205;
                    }

                    if (v144 != 0x6172615065726977 || BYTE8(v144) != 109)
                    {
                      goto LABEL_205;
                    }

LABEL_98:
                    __p[0] = 0;
                    __p[1] = 0;
                    LODWORD(v138) = 0;
                    memset(&__str, 0, 20);
                    if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v146, __p))
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireParamCommand");
                      std::string::basic_string[abi:ne200100]<0>(&v152, "expected source endpoint in 'wireParam' command");
                      DSPGraph::ThrowException(1886548769, &v158, 1027, &buf, &v152);
                    }

                    if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v146, &__str))
                    {
                      std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                      std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireParamCommand");
                      std::string::basic_string[abi:ne200100]<0>(&v152, "expected destination endpoint in 'wireParam' command");
                      DSPGraph::ThrowException(1886548769, &v158, 1030, &buf, &v152);
                    }

                    v158.__r_.__value_.__s.__data_[0] = 0;
                    DSPGraph::Interpreter::parseBool(&v146, &v158.__r_.__value_.__l.__data_, v41);
                    DSPGraph::Graph::connectParams(a2[1], __p, &__str, v158.__r_.__value_.__s.__data_[0]);
LABEL_317:
                    if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v143.__r_.__value_.__l.__data_);
                    }

LABEL_319:
                    if (SHIBYTE(v145) < 0)
                    {
                      operator delete(v144);
                    }

                    goto LABEL_321;
                  }

LABEL_201:
                  if (v144 != 28514 || BYTE2(v144) != 120)
                  {
                    goto LABEL_205;
                  }

LABEL_215:
                  ((*a2)[2])(a2, &v146);
                  goto LABEL_317;
                }

LABEL_58:
                if (HIBYTE(v145) != 12)
                {
                  if (HIBYTE(v145) != 14)
                  {
                    if (HIBYTE(v145) != 17)
                    {
                      goto LABEL_205;
                    }

                    v30 = &v144;
                    goto LABEL_62;
                  }

                  if (v144 != 0x7061724765726977 || *(&v144 + 6) != 0x6D61726150687061)
                  {
                    goto LABEL_205;
                  }

LABEL_153:
                  LODWORD(v152.__r_.__value_.__l.__data_) = 0;
                  if ((DSPGraph::Interpreter::parse4cc(&v146, &v152.__r_.__value_.__l.__data_, 1) & 1) == 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&__str, "parseWireGraphParamCommand");
                    std::string::basic_string[abi:ne200100]<0>(&v158, "expected parameter ID in 'wireGraphParam' command");
                    DSPGraph::ThrowException(1886548769, __p, 1057, &__str, &v158);
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  LODWORD(v138) = 0;
                  if (!DSPGraph::Interpreter::parseParamEndpoint(a2, &v146, __p))
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                    std::string::basic_string[abi:ne200100]<0>(&v158, "parseWireGraphParamCommand");
                    std::string::basic_string[abi:ne200100]<0>(&buf, "expected endpoint in 'wireGraphParam' command");
                    DSPGraph::ThrowException(1886548769, &__str, 1062, &v158, &buf);
                  }

                  DSPGraph::Graph::connectParameter(a2[1], v152.__r_.__value_.__l.__data_, __p);
                  goto LABEL_317;
                }

                if (v144 != 0x706F725065726977 || DWORD2(v144) != 2037674597)
                {
                  goto LABEL_205;
                }

LABEL_161:
                __p[0] = 0;
                __p[1] = 0;
                LODWORD(v138) = 0;
                memset(&__str, 0, 20);
                if (!DSPGraph::Interpreter::parsePropertyEndpoint(a2, &v146, __p))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&buf, "parseWirePropertyCommand");
                  std::string::basic_string[abi:ne200100]<0>(&v152, "expected source endpoint in 'wireProperty' command");
                  DSPGraph::ThrowException(1886548769, &v158, 1042, &buf, &v152);
                }

                if (!DSPGraph::Interpreter::parsePropertyEndpoint(a2, &v146, &__str))
                {
                  std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                  std::string::basic_string[abi:ne200100]<0>(&buf, "parseWirePropertyCommand");
                  std::string::basic_string[abi:ne200100]<0>(&v152, "expected destination endpoint in 'wireProperty' command");
                  DSPGraph::ThrowException(1886548769, &v158, 1045, &buf, &v152);
                }

                v158.__r_.__value_.__s.__data_[0] = 0;
                DSPGraph::Interpreter::parseBool(&v146, &v158.__r_.__value_.__l.__data_, v54);
                DSPGraph::Graph::connectProperties(a2[1], __p, &__str, v158.__r_.__value_.__s.__data_[0]);
                goto LABEL_317;
              }

LABEL_193:
              LODWORD(v152.__r_.__value_.__l.__data_) = 0;
              if ((DSPGraph::Interpreter::parse4cc(&v146, &v152.__r_.__value_.__l.__data_, 1) & 1) == 0)
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "parseParamCommand");
                std::string::basic_string[abi:ne200100]<0>(&v158, "expected parameter ID in 'param' command");
                DSPGraph::ThrowException(1886548769, __p, 826, &__str, &v158);
              }

              DSPGraph::skipspace(&v146, v66);
              __p[0] = 0;
              v68 = strtof(v146, __p);
              v69 = __p[0];
              if (__p[0] == v146)
              {
LABEL_338:
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "parseParamCommand");
                std::string::basic_string[abi:ne200100]<0>(&v158, "expected parameter initial value in 'param' command");
                DSPGraph::ThrowException(1886548769, __p, 830, &__str, &v158);
              }

              v70 = v68;
              if (fabsf(v68) == INFINITY)
              {
                if (*__error())
                {
                  goto LABEL_338;
                }

                v69 = __p[0];
              }

              v146 = v69;
              v72 = DSPGraph::Interpreter::match(&v146, "out", v67);
              if ((v72 & 1) == 0)
              {
                DSPGraph::Interpreter::match(&v146, "in", v71);
              }

              DSPGraph::Graph::addParameter(a2[1], v152.__r_.__value_.__l.__data_, v70, v72);
              goto LABEL_317;
            }

LABEL_182:
            if (v144 != 1701996919)
            {
              goto LABEL_205;
            }

LABEL_183:
            __p[0] = 0;
            __p[1] = 0;
            *&v138 = 0;
            memset(&__str, 0, sizeof(__str));
            v153 = v26;
            v154 = 0;
            v132 = a2;
            if ((DSPGraph::Interpreter::parsePortDesc(&v153, __p, (&v154 + 4)) & 1) == 0)
            {
              memset(&v158, 0, sizeof(v158));
              strlcpy(&v158, v153, 0x18uLL);
              std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v152, "parseWireCommand");
              DSPGraph::strprintf("source port description parse failed. {%s}", v119, &v158);
            }

            if ((DSPGraph::Interpreter::parsePortDesc(&v153, &__str.__r_.__value_.__l.__data_, &v154) & 1) == 0)
            {
              std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::string::basic_string[abi:ne200100]<0>(&v152, "destination port description parse failed.");
              DSPGraph::ThrowException(1886548769, &v158, 983, &buf, &v152);
            }

            v60 = a2[1];
            v61 = HIDWORD(v154);
            if (HIDWORD(v154))
            {
              v62 = 0;
            }

            else
            {
              v86 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 80, __p);
              if (v86)
              {
                v62 = (v86 + 5);
              }

              else
              {
                v62 = 0;
              }
            }

            v87 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 98, __p);
            if (v87)
            {
              v88 = v87[5];
            }

            else
            {
              v88 = 0;
            }

            if (!(v88 | v62))
            {
              std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::operator+<char>();
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v150, &v149, " index ");
              std::to_string(&v148, v61);
              if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v120 = &v148;
              }

              else
              {
                v120 = v148.__r_.__value_.__r.__words[0];
              }

              if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v148.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v148.__r_.__value_.__l.__size_;
              }

              v122 = std::string::append(&v150, v120, size);
              v123 = *&v122->__r_.__value_.__l.__data_;
              v151.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
              *&v151.__r_.__value_.__l.__data_ = v123;
              v122->__r_.__value_.__l.__size_ = 0;
              v122->__r_.__value_.__r.__words[2] = 0;
              v122->__r_.__value_.__r.__words[0] = 0;
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v152, &v151, " not found");
              DSPGraph::ThrowException(1852204065, &v158, 988, &buf, &v152);
            }

            v89 = v154;
            if (v154)
            {
              v90 = 0;
            }

            else
            {
              v91 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 80, &__str);
              if (v91)
              {
                v90 = v91 + 5;
              }

              else
              {
                v90 = 0;
              }
            }

            v92 = std::__hash_table<std::__hash_value_type<std::string,DSPGraph::Box *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DSPGraph::Box *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DSPGraph::Box *>>>::find<std::string>(v60 + 98, &__str);
            if (v92)
            {
              v93 = v92[5];
            }

            else
            {
              v93 = 0;
            }

            if (!(v93 | v90))
            {
              std::string::basic_string[abi:ne200100]<0>(&v158, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&buf, "parseWireCommand");
              std::operator+<char>();
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v150, &v149, " index ");
              std::to_string(&v148, v89);
              if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v124 = &v148;
              }

              else
              {
                v124 = v148.__r_.__value_.__r.__words[0];
              }

              if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v125 = HIBYTE(v148.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v125 = v148.__r_.__value_.__l.__size_;
              }

              v126 = std::string::append(&v150, v124, v125);
              v127 = *&v126->__r_.__value_.__l.__data_;
              v151.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
              *&v151.__r_.__value_.__l.__data_ = v127;
              v126->__r_.__value_.__l.__size_ = 0;
              v126->__r_.__value_.__r.__words[2] = 0;
              v126->__r_.__value_.__r.__words[0] = 0;
              std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v152, &v151, " not found");
              DSPGraph::ThrowException(1852204065, &v158, 994, &buf, &v152);
            }

            memset(&v158, 0, sizeof(v158));
            v150.__r_.__value_.__r.__words[0] = v153;
            if (DSPGraph::Interpreter::parseString(&v150, &v158) && DSPGraph::Graph::getFormat(v132[1], &v158, v135))
            {
              *(v132 + 184) = 0;
              v94 = DSPGraph::Graph::connect(v132[1], v88, v93, v61, v89, v62, v90);
              DSPGraph::Wire::setGlobalFormat(v94, *v135);
              v146 = v150.__r_.__value_.__r.__words[0];
              goto LABEL_254;
            }

            if (DSPGraph::Interpreter::parseFormat(&v153, (v132 + 16)))
            {
              v95 = v132;
              *(v132 + 184) = 1;
              v132[22] = 0;
              goto LABEL_253;
            }

            if (*v135)
            {
              v96 = DSPGraph::Graph::connect(v132[1], v88, v93, v61, v89, v62, v90);
              DSPGraph::Wire::setGlobalFormat(v96, *v135);
            }

            else
            {
              v95 = v132;
              if (*(v132 + 184) != 1)
              {
                std::string::basic_string[abi:ne200100]<0>(&buf, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&v152, "parseWireCommand");
                std::string::basic_string[abi:ne200100]<0>(&v151, "expected format in 'wire' command");
                DSPGraph::ThrowException(1886548769, &buf, 1019, &v152, &v151);
              }

LABEL_253:
              DSPGraph::Graph::connect(v95[1], v88, v93, v61, v89, (v95 + 16), v62, v90);
            }

LABEL_254:
            if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v158.__r_.__value_.__l.__data_);
            }

            a2 = v132;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if ((SBYTE7(v138) & 0x80000000) == 0)
            {
              goto LABEL_317;
            }

            v65 = __p[0];
LABEL_192:
            operator delete(v65);
            goto LABEL_317;
          }

          if (HIBYTE(v145) != 2)
          {
            if (HIBYTE(v145) != 3)
            {
              goto LABEL_205;
            }

            if (v144 == 30063 && BYTE2(v144) == 116)
            {
              goto LABEL_86;
            }

            goto LABEL_201;
          }

          v42 = v144;
LABEL_165:
          if (v42 == 28265)
          {
            goto LABEL_187;
          }

          goto LABEL_205;
        }

        if (HIBYTE(v145) > 0xBu)
        {
          goto LABEL_58;
        }

        if (HIBYTE(v145) != 8)
        {
          goto LABEL_92;
        }

        if (v144 != 0x79747265706F7270)
        {
          goto LABEL_205;
        }

LABEL_168:
        LODWORD(v150.__r_.__value_.__l.__data_) = 0;
        LOBYTE(__p[0]) = 0;
        BYTE8(v138) = 0;
        memset(&v151, 0, sizeof(v151));
        if ((DSPGraph::Interpreter::parse4cc(&v146, &v150.__r_.__value_.__l.__data_, 1) & 1) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v158, "parsePropertyCommand");
          std::string::basic_string[abi:ne200100]<0>(&buf, "expected property ID in 'property' command");
          DSPGraph::ThrowException(1886548769, &__str, 852, &v158, &buf);
        }

        if (DSPGraph::Interpreter::match(&v146, "out", v55))
        {
LABEL_170:
          v57 = 1;
        }

        else
        {
          if (!DSPGraph::Interpreter::match(&v146, "in", v56))
          {
            DSPGraph::skipspace(&v146, v75);
            if (*v146)
            {
              DSPGraph::skipspace(&v146, v76);
              v130 = a5;
              v77 = v146;
              memset(&v158, 0, sizeof(v158));
              v78 = *v146;
              if (*v146)
              {
                do
                {
                  v79 = v78;
                  if (v78 < 0)
                  {
                    v80 = __maskrune(v78, 0x4000uLL);
                  }

                  else
                  {
                    v80 = *(MEMORY[0x1E69E9830] + 4 * v78 + 60) & 0x4000;
                  }

                  if (v80)
                  {
                    break;
                  }

                  std::string::push_back(&v158, v79);
                  v81 = *++v77;
                  v78 = v81;
                }

                while (v81);
                v82 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
                v83 = v158.__r_.__value_.__l.__size_;
                v84 = v158.__r_.__value_.__r.__words[0];
              }

              else
              {
                v83 = 0;
                v84 = 0;
                v82 = 0;
              }

              v146 = v77;
              if ((v82 & 0x80u) == 0)
              {
                v97 = &v158;
              }

              else
              {
                v97 = v84;
              }

              if ((v82 & 0x80u) == 0)
              {
                v98 = v82;
              }

              else
              {
                v98 = v83;
              }

              if (v98 < 2 || (LOWORD(v97->__r_.__value_.__l.__data_) == 30768 ? (v99 = (v98 & 1) == 0) : (v99 = 0), !v99))
              {
LABEL_368:
                std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&buf, "parsePropertyValue");
                std::string::basic_string[abi:ne200100]<0>(&v152, "bad property value hexadecimal formatting");
                DSPGraph::ThrowException(1886548769, &__str, 372, &buf, &v152);
              }

              if (v98 == 2)
              {
                v100 = 0;
              }

              else
              {
                v101 = &v97->__r_.__value_.__s.__data_[2];
                v102 = v98 - 2;
                do
                {
                  v103 = *v101;
                  if (v103 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v103 + 60) & 0x10000) == 0)
                  {
                    goto LABEL_368;
                  }

                  ++v101;
                  --v102;
                }

                while (v102);
                v100 = (v98 - 2) >> 1;
              }

              v151.__r_.__value_.__l.__size_ = 0;
              std::vector<unsigned char>::reserve(&v151, v100);
              v104 = v98 - 2;
              if (v98 != 2)
              {
                v105 = &v97->__r_.__value_.__s.__data_[2];
                v106 = v151.__r_.__value_.__l.__size_;
                v133 = a2;
                v134 = v151.__r_.__value_.__r.__words[2];
                __src = v151.__r_.__value_.__r.__words[0];
                do
                {
                  *(&__str.__r_.__value_.__s + 23) = 2;
                  LOWORD(__str.__r_.__value_.__l.__data_) = *v105;
                  __str.__r_.__value_.__s.__data_[2] = 0;
                  v107 = std::stoul(&__str, 0, 16);
                  if (v107 >= 0x100)
                  {
                    v151.__r_.__value_.__l.__size_ = v106;
                    v151.__r_.__value_.__r.__words[2] = v134;
                    v151.__r_.__value_.__r.__words[0] = __src;
                    exception = __cxa_allocate_exception(0x10uLL);
                    std::runtime_error::runtime_error(exception, "numerical cast overflow: could not retain value in conversion type");
                    exception->__vftable = (MEMORY[0x1E69E55C0] + 16);
                  }

                  if (v106 >= v134)
                  {
                    v108 = (v106 - __src);
                    v109 = v106 - __src + 1;
                    if (v109 < 0)
                    {
                      v151.__r_.__value_.__l.__size_ = v106;
                      v151.__r_.__value_.__r.__words[2] = v134;
                      v151.__r_.__value_.__r.__words[0] = __src;
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v110 = v134 - __src;
                    if (2 * (v134 - __src) > v109)
                    {
                      v109 = 2 * v110;
                    }

                    if (v110 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v111 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v111 = v109;
                    }

                    if (v111)
                    {
                      operator new();
                    }

                    v134 = 0;
                    *v108 = v107;
                    v106 = v108 + 1;
                    memcpy(0, __src, v108);
                    if (__src)
                    {
                      operator delete(__src);
                    }

                    __src = 0;
                    a2 = v133;
                  }

                  else
                  {
                    *v106++ = v107;
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  v105 += 2;
                  v104 -= 2;
                }

                while (v104);
                v151.__r_.__value_.__l.__size_ = v106;
                v151.__r_.__value_.__r.__words[2] = v134;
                v151.__r_.__value_.__r.__words[0] = __src;
              }

              if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v158.__r_.__value_.__l.__data_);
              }

              a5 = v130;
              if (BYTE8(v138) == 1)
              {
                std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_, v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]);
              }

              else
              {
                __p[0] = 0;
                __p[1] = 0;
                *&v138 = 0;
                std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, v151.__r_.__value_.__l.__data_, v151.__r_.__value_.__l.__size_, v151.__r_.__value_.__l.__size_ - v151.__r_.__value_.__r.__words[0]);
                BYTE8(v138) = 1;
              }

              if (DSPGraph::Interpreter::match(&v146, "out", v112))
              {
                goto LABEL_170;
              }

              DSPGraph::Interpreter::match(&v146, "in", v113);
            }
          }

          v57 = 0;
        }

        v114 = a2[1];
        data = v150.__r_.__value_.__l.__data_;
        std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](&__str, __p);
        DSPGraph::Graph::addProperty(v114, data, &__str, v57);
        if (v156 == 1 && __str.__r_.__value_.__r.__words[0])
        {
          __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v151.__r_.__value_.__r.__words[0])
        {
          operator delete(v151.__r_.__value_.__l.__data_);
        }

        if (BYTE8(v138) != 1)
        {
          goto LABEL_317;
        }

        v65 = __p[0];
        if (!__p[0])
        {
          goto LABEL_317;
        }

        goto LABEL_192;
      }

      v28 = *(&v144 + 1);
      if (*(&v144 + 1) > 4)
      {
        if (*(&v144 + 1) != 5)
        {
          if (*(&v144 + 1) == 6)
          {
            if (*v144 == 1886680431 && *(v144 + 4) == 29813)
            {
LABEL_86:
              DSPGraph::Interpreter::parseUInt64(&v146, &v152.__r_.__value_.__l.__data_, v22);
              __p[0] = 0;
              __p[1] = 0;
              *&v138 = 0;
              if (DSPGraph::Interpreter::parseString(&v146, __p))
              {
                v38 = a2[1];
                if ((SBYTE7(v138) & 0x80u) == 0)
                {
                  v39 = __p;
                }

                else
                {
                  v39 = __p[0];
                }

                std::string::basic_string[abi:ne200100]<0>(&__str, v39);
                DSPGraph::Graph::addOutput(v38);
              }

              std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
              std::string::basic_string[abi:ne200100]<0>(&v158, "parseGraphOutputCommand");
              std::string::basic_string[abi:ne200100]<0>(&buf, "expected name in 'output' command");
              DSPGraph::ThrowException(1886548769, &__str, 817, &v158, &buf);
            }

LABEL_205:
            if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "order"))
            {
              DSPGraph::Interpreter::parseOrderCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "set"))
            {
              DSPGraph::Interpreter::parseSetCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "beginSubset"))
            {
              DSPGraph::Interpreter::parseBeginSubsetCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "endSubset"))
            {
              DSPGraph::Interpreter::parseEndSubsetCommand(a2, v74);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "graphName"))
            {
              DSPGraph::Interpreter::parseGraphNameCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "componentName"))
            {
              DSPGraph::Interpreter::parseComponentNameCommand(&v146, v85);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "format"))
            {
              DSPGraph::Interpreter::parseNamedFormatCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "jack"))
            {
              DSPGraph::Interpreter::parseJackCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "record"))
            {
              DSPGraph::Interpreter::parseRecordCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "inject"))
            {
              DSPGraph::Interpreter::parseInjectCommand(a2, &v146);
            }

            else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "analysis"))
            {
              DSPGraph::Interpreter::parseAnalysisCommand(a2, &v146);
            }

            else
            {
              if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v144, "analysisDefine"))
              {
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
                std::string::basic_string[abi:ne200100]<0>(&__str, "interpretLine");
                v129 = &v144;
                if (v145 < 0)
                {
                  v129 = v144;
                }

                DSPGraph::strprintf("unknown command name '%s'\n", v128, v129);
              }

              DSPGraph::Interpreter::parseAnalysisDefineCommand(a2, &v146);
            }

            goto LABEL_317;
          }

          goto LABEL_101;
        }

        if (*v144 == 1970302569 && *(v144 + 4) == 116)
        {
LABEL_187:
          DSPGraph::Interpreter::parseUInt64(&v146, &v152.__r_.__value_.__l.__data_, v22);
          __p[0] = 0;
          __p[1] = 0;
          *&v138 = 0;
          if (DSPGraph::Interpreter::parseString(&v146, __p))
          {
            v63 = a2[1];
            if ((SBYTE7(v138) & 0x80u) == 0)
            {
              v64 = __p;
            }

            else
            {
              v64 = __p[0];
            }

            std::string::basic_string[abi:ne200100]<0>(&__str, v64);
            DSPGraph::Graph::addInput(v63);
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Interpreter.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v158, "parseGraphInputCommand");
          std::string::basic_string[abi:ne200100]<0>(&buf, "expected name in 'input' command");
          DSPGraph::ThrowException(1886548769, &__str, 805, &v158, &buf);
        }
      }

      else
      {
        if (*(&v144 + 1) == 2)
        {
          v42 = *v144;
          goto LABEL_165;
        }

        if (*(&v144 + 1) == 3)
        {
          if (*v144 == 30063 && *(v144 + 2) == 116)
          {
            goto LABEL_86;
          }

          if ((v145 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v28 = *(&v144 + 1);
        }

LABEL_101:
        if (v28 != 5)
        {
LABEL_113:
          if (v28 == 8)
          {
            if (*v144 == 0x79747265706F7270)
            {
              goto LABEL_168;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_179;
            }
          }

          v45 = *(&v144 + 1);
          if (*(&v144 + 1) == 3)
          {
            if (*v144 == 28514 && *(v144 + 2) == 120)
            {
              goto LABEL_215;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v45 = *(&v144 + 1);
          }

          if (v45 == 4)
          {
            if (*v144 == 1701996919)
            {
              goto LABEL_183;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }
          }

          v47 = *(&v144 + 1);
          if (*(&v144 + 1) == 9)
          {
            if (*v144 == 0x6172615065726977 && *(v144 + 8) == 109)
            {
              goto LABEL_98;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v47 = *(&v144 + 1);
          }

          if (v47 == 12)
          {
            if (*v144 == 0x706F725065726977 && *(v144 + 8) == 2037674597)
            {
              goto LABEL_161;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }
          }

          v50 = *(&v144 + 1);
          if (*(&v144 + 1) == 14)
          {
            if (*v144 == 0x7061724765726977 && *(v144 + 6) == 0x6D61726150687061)
            {
              goto LABEL_153;
            }

            if ((v145 & 0x8000000000000000) == 0)
            {
              goto LABEL_205;
            }

            v50 = *(&v144 + 1);
          }

          if (v50 != 17)
          {
            goto LABEL_205;
          }

          v30 = v144;
LABEL_62:
          v31 = *v30;
          v32 = *(v30 + 1);
          v33 = *(v30 + 16);
          if (v31 != 0x7061724765726977 || v32 != 0x747265706F725068 || v33 != 121)
          {
            goto LABEL_205;
          }

          DSPGraph::Interpreter::parseWireGraphPropertyCommand(a2, &v146);
          goto LABEL_317;
        }
      }

      if (*v144 == 1634886000 && *(v144 + 4) == 109)
      {
        goto LABEL_193;
      }

      v28 = *(&v144 + 1);
      goto LABEL_113;
    }

LABEL_321:
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }
  }

  DSPGraph::Graph::pruneSubsets(a2[1]);
  v116 = a2[1];
  a2[1] = 0;
  *a5 = v116;
  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  v117 = *MEMORY[0x1E69E9840];
}