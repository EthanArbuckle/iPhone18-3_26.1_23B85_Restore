@interface TranslatorClientDelegate
- (id).cxx_construct;
- (void)client:(id)client didGenerateTranslatedAudio:(id)audio;
- (void)client:(id)client didPauseTranslationWithReason:(id)reason;
- (void)client:(id)client didStopTranslationWithError:(id)error;
- (void)serverDidDisconnectForClient:(id)client;
- (void)translationDidResumeForClient:(id)client;
- (void)translationDidStartForClient:(id)client;
@end

@implementation TranslatorClientDelegate

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)client:(id)client didGenerateTranslatedAudio:(id)audio
{
  v41 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  audioCopy = audio;
  v8 = AT::Translation::gTranslationLog;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    mScope = self->mScope;
    v10 = "unknown";
    if (mScope == 2)
    {
      v10 = "out";
    }

    *&buf[1] = "AudioStreamTranslator.mm";
    buf[0] = 136315650;
    if (mScope == 1)
    {
      v11 = "in";
    }

    else
    {
      v11 = v10;
    }

    v35 = 1024;
    *v36 = 177;
    *&v36[4] = 2080;
    *&v36[6] = v11;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d TranslatorClientDelegate::didGenerateTranslatedAudio; scope: %s", buf, 0x1Cu);
  }

  cntrl = self->mImpl.__cntrl_;
  if (!cntrl)
  {
    goto LABEL_37;
  }

  v13 = std::__shared_weak_count::lock(cntrl);
  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = v13;
  ptr = self->mImpl.__ptr_;
  if (!ptr || *(ptr + 7) != clientCopy)
  {
    goto LABEL_36;
  }

  v16 = audioCopy;
  if (!*(*ptr + 32))
  {
    goto LABEL_35;
  }

  v32.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  audioBufferList = [v16 audioBufferList];
  v18 = AT::Translation::gTranslationLog;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(ptr + 7);
    frameLength = [v16 frameLength];
    buf[0] = 136316162;
    *&buf[1] = "AudioStreamTranslator.mm";
    v35 = 1024;
    *v36 = 400;
    *&v36[4] = 2048;
    *&v36[6] = v19;
    v37 = 1024;
    v38 = frameLength;
    v39 = 2048;
    v40 = audioBufferList;
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d STSpeechTranslatorClient@%p: Received %d number of samples, abl %lu", buf, 0x2Cu);
  }

  os_unfair_lock_lock(ptr + 18);
  v33 = v16;
  v21 = 0x9DDFEA08EB382D69 * ((8 * (audioBufferList & 0x1FFFFFFF) + 8) ^ HIDWORD(audioBufferList));
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(audioBufferList) ^ (v21 >> 47) ^ v21);
  v23 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
  v24 = *(ptr + 88);
  if (!*&v24)
  {
    goto LABEL_32;
  }

  v25 = vcnt_s8(v24);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    v26 = 0x9DDFEA08EB382D69 * (v22 ^ (v22 >> 47));
    if (v23 >= *&v24)
    {
      v26 = v23 % *&v24;
    }
  }

  else
  {
    v26 = v23 & (*&v24 - 1);
  }

  v27 = *(*(ptr + 10) + 8 * v26);
  if (!v27 || (v28 = *v27) == 0)
  {
LABEL_32:
    operator new();
  }

  while (1)
  {
    v29 = v28[1];
    if (v29 == v23)
    {
      break;
    }

    if (v25.u32[0] > 1uLL)
    {
      if (v29 >= *&v24)
      {
        v29 %= *&v24;
      }
    }

    else
    {
      v29 &= *&v24 - 1;
    }

    if (v29 != v26)
    {
      goto LABEL_32;
    }

LABEL_31:
    v28 = *v28;
    if (!v28)
    {
      goto LABEL_32;
    }
  }

  if (v28[2] != audioBufferList)
  {
    goto LABEL_31;
  }

  os_unfair_lock_unlock(ptr + 18);
  std::function<void ()(std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,AudioBufferList const&,int)>::operator()(*(*ptr + 32), v32.__d_.__rep_, audioBufferList, [v33 frameLength]);
  v30 = *(ptr + 18);
  if (v30)
  {
    (*(*v30 + 24))(v30, [v33 frameLength], audioBufferList, 0);
  }

LABEL_35:

LABEL_36:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
LABEL_37:

  v31 = *MEMORY[0x1E69E9840];
}

- (void)translationDidResumeForClient:(id)client
{
  clientCopy = client;
  cntrl = self->mImpl.__cntrl_;
  if (cntrl)
  {
    v9 = clientCopy;
    v6 = std::__shared_weak_count::lock(cntrl);
    if (v6)
    {
      v7 = v6;
      ptr = self->mImpl.__ptr_;
      if (ptr && *(ptr + 7) == v9)
      {
        AT::Translation::TranslatorClient::setState(ptr, 2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)client:(id)client didPauseTranslationWithReason:(id)reason
{
  clientCopy = client;
  reasonCopy = reason;
  cntrl = self->mImpl.__cntrl_;
  if (cntrl)
  {
    v8 = std::__shared_weak_count::lock(cntrl);
    if (v8)
    {
      v9 = v8;
      ptr = self->mImpl.__ptr_;
      if (ptr && *(ptr + 7) == clientCopy)
      {
        AT::Translation::TranslatorClient::setState(ptr, 1);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

- (void)translationDidStartForClient:(id)client
{
  clientCopy = client;
  cntrl = self->mImpl.__cntrl_;
  if (cntrl)
  {
    v9 = clientCopy;
    v6 = std::__shared_weak_count::lock(cntrl);
    if (v6)
    {
      v7 = v6;
      ptr = self->mImpl.__ptr_;
      if (ptr && *(ptr + 7) == v9)
      {
        AT::Translation::TranslatorClient::setState(ptr, 2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)serverDidDisconnectForClient:(id)client
{
  v18 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  cntrl = self->mImpl.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      v6 = v5;
      ptr = self->mImpl.__ptr_;
      if (ptr && *(ptr + 7) == clientCopy)
      {
        v8 = AT::Translation::gTranslationLog;
        if (os_log_type_enabled(AT::Translation::gTranslationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v13 = "AudioStreamTranslator.mm";
          v14 = 1024;
          v15 = 343;
          v16 = 2048;
          v17 = clientCopy;
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d STSpeechTranslatorClient@%p: server disconnected", buf, 0x1Cu);
        }

        v9 = *(*ptr + 64);
        if (v9)
        {
          (*(*v9 + 48))(v9);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)client:(id)client didStopTranslationWithError:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  errorCopy = error;
  cntrl = self->mImpl.__cntrl_;
  if (cntrl)
  {
    v8 = std::__shared_weak_count::lock(cntrl);
    if (v8)
    {
      v9 = v8;
      ptr = self->mImpl.__ptr_;
      if (ptr && *(ptr + 7) == clientCopy)
      {
        v11 = errorCopy;
        if (v11)
        {
          v12 = AT::Translation::gTranslationLog;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = *(ptr + 7);
            *buf = 136315906;
            v18 = "AudioStreamTranslator.mm";
            v19 = 1024;
            v20 = 333;
            v21 = 2048;
            v22 = v13;
            v23 = 1024;
            code = [v11 code];
            _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d STSpeechTranslatorClient@%p: translation did stop with error: %d", buf, 0x22u);
          }
        }

        *(ptr + 32) = 0;
        v14 = *(*ptr + 64);
        if (v14)
        {
          (*(*v14 + 48))(v14);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end