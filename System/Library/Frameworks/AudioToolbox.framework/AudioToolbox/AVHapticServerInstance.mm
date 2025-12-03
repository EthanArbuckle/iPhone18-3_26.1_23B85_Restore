@interface AVHapticServerInstance
- (AVHapticServerInstance)initWithMaster:(id)master id:(unint64_t)id connection:(id)connection outError:(id *)error;
- (BOOL)handleClientApplicationStateChange:(id)change;
- (BOOL)handleClientApplicationStateChangeUsingAppState:(unint64_t)state;
- (BOOL)setupAudioSessionFromID:(unsigned int)d isShared:(BOOL)shared error:(id *)error;
- (id).cxx_construct;
- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (void)allocateClientResources:(id)resources;
- (void)configureWithOptions:(id)options reply:(id)reply;
- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (void)dealloc;
- (void)detachSequence:(unint64_t)sequence;
- (void)getHapticLatency:(id)latency;
- (void)handleClientRouteChange:(id)change;
- (void)handleConnectionError;
- (void)handleInterruptionForSession:(const void *)session command:(unsigned int)command dictionary:(id)dictionary;
- (void)loadHapticEvent:(id)event reply:(id)reply;
- (void)loadHapticSequenceFromData:(id)data reply:(id)reply;
- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply;
- (void)loadVibePattern:(id)pattern reply:(id)reply;
- (void)muteClientForRingerSwitch:(BOOL)switch;
- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error;
- (void)prepareHapticSequence:(caulk::inplace_function_detail::wrapper<-[AVHapticServerInstance)prepareHapticSequence:reply:]::$_1> reply:;
- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply;
- (void)prewarm:(id)prewarm;
- (void)queryCapabilities:(id)capabilities reply:(id)reply;
- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)releaseChannels;
- (void)releaseClientResources;
- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)removeChannel:(unint64_t)channel reply:(id)reply;
- (void)removeSessionListeners;
- (void)requestChannels:(unint64_t)channels reply:(id)reply;
- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply;
- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply;
- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply;
- (void)startRunning:(id)running;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)running;
- (void)unmuteClientAfterSessionInterruption:(float)interruption;
@end

@implementation AVHapticServerInstance

- (id).cxx_construct
{
  *(self + 76) = 0;
  *(self + 128) = 0;
  *(self + 136) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 108) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 57) = 0u;
  return self;
}

- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply
{
  indexCopy = index;
  v28 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v11 = *kHSRVScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *v21 = 136316162;
    *&v21[4] = "AVHapticServer.mm";
    *&v21[12] = 1024;
    *&v21[14] = 1525;
    v22 = 2080;
    v23 = "[AVHapticServerInstance setSequenceEventBehavior:behavior:channelIndex:reply:]";
    v24 = 2048;
    v25 = clientID;
    v26 = 1024;
    v27 = a4;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", v21, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    *v21 = 0;
    *&v21[8] = 0;
    goto LABEL_18;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!*v21)
  {
LABEL_18:
    v18 = -4812;
    goto LABEL_19;
  }

  [(AVHapticServer *)self->_master manager];
  v16 = *v21;
  v15 = *&v21[8];
  if (*&v21[8])
  {
    atomic_fetch_add_explicit((*&v21[8] + 8), 1uLL, memory_order_relaxed);
  }

  SequencerChannelForIndex = ClientEntry::getSequencerChannelForIndex(v16, behavior, indexCopy);
  if (SequencerChannelForIndex != -1)
  {
    ClientEntry::setChannelBehaviorForSynthChannel(v16, SequencerChannelForIndex, a4);
    v18 = 0;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = -4804;
  if (v15)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_15:
  if (SequencerChannelForIndex != -1)
  {
    v19 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v18 userInfo:{0, *v21}];
LABEL_20:
  replyCopy[2](replyCopy, v19);

  if (*&v21[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v21[8]);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v24 = "AVHapticServer.mm";
    v25 = 1024;
    v26 = 1512;
    v27 = 2080;
    v28 = "[AVHapticServerInstance setChannelEventBehavior:behavior:reply:]";
    v29 = 2048;
    v30 = clientID;
    v31 = 1024;
    behaviorCopy = a4;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v21)
  {
LABEL_14:
    v14 = -4812;
LABEL_15:
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:{0, v21}];
    goto LABEL_22;
  }

  if (kHSRVScope)
  {
    v13 = *kHSRVScope;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v21 + 24);
    *buf = 136316418;
    v24 = "ClientEntry.mm";
    v25 = 1024;
    v26 = 820;
    v27 = 2080;
    v28 = "setChannelBehaviorForChannelID";
    v29 = 2048;
    v30 = v17;
    v31 = 1024;
    behaviorCopy = behavior;
    v33 = 1024;
    v34 = a4;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Channel behavior change: Client ID 0x%lx, channelID: 0x%x, behavior: %u", buf, 0x32u);
  }

LABEL_20:
  AssignedChannelWithID = ClientEntry::getAssignedChannelWithID(v21, behavior);
  if (AssignedChannelWithID == -1)
  {
    v14 = -4804;
    goto LABEL_15;
  }

  ClientEntry::setChannelBehaviorForSynthChannel(v21, AssignedChannelWithID, a4);
  v15 = 0;
LABEL_22:
  v19 = v15;
  replyCopy[2](replyCopy, v19);

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeChannel:(unint64_t)channel reply:(id)reply
{
  v85 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCHNScope)
  {
    v8 = *kHCHNScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v76 = 1024;
    *v77 = 1492;
    *&v77[4] = 2080;
    *&v77[6] = "[AVHapticServerInstance removeChannel:reply:]";
    *&v77[14] = 2048;
    *&v77[16] = clientID;
    *&v77[24] = 1024;
    channelCopy = channel;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx channelID: %u", buf, 0x2Cu);
  }

LABEL_8:
  v11 = self->_master;
  objc_sync_enter(v11);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v70)
    {
      if (kHCHNScope)
      {
        if (*(kHCHNScope + 8))
        {
          v13 = *kHCHNScope;
          if (v13)
          {
            channelCopy3 = v13;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v70 + 24);
              *buf = 136316162;
              *&buf[4] = "ClientEntry.mm";
              *v77 = 229;
              *&v77[4] = 2080;
              v76 = 1024;
              *&v77[6] = "removeAssignedChannelWithID";
              *&v77[14] = 1024;
              *&v77[16] = v14;
              *&v77[20] = 1024;
              *&v77[22] = channel;
              _os_log_impl(&dword_1B9A08000, channelCopy3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, key: %u", buf, 0x28u);
            }
          }
        }
      }

      v15 = atomic_load((v70 + 120));
      if (v15 == 5 || (v16 = atomic_load((v70 + 120)), v16 > 1))
      {
        if (kHCHNScope)
        {
          v17 = *kHCHNScope;
          if (!v17)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ClientEntry.mm";
          v76 = 1024;
          *v77 = 252;
          *&v77[4] = 2080;
          *&v77[6] = "removeAssignedChannelWithID";
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Flushing or running, so queueing chan ID for later release", buf, 0x1Cu);
        }

LABEL_28:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v70 + 488);
        v21 = *(v70 + 456);
        if (v21)
        {
          v22 = vcnt_s8(v21);
          v22.i16[0] = vaddlv_u8(v22);
          if (v22.u32[0] > 1uLL)
          {
            channelCopy3 = channel;
            if (v21 <= channel)
            {
              channelCopy3 = channel % v21;
            }
          }

          else
          {
            channelCopy3 = (v21 - 1) & channel;
          }

          v24 = *(*(v70 + 448) + 8 * channelCopy3);
          if (v24)
          {
            for (i = *v24; i; i = *i)
            {
              v26 = i[1];
              if (v26 == channel)
              {
                if (i[2] == channel)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if (v22.u32[0] > 1uLL)
                {
                  if (v26 >= v21)
                  {
                    v26 %= v21;
                  }
                }

                else
                {
                  v26 &= v21 - 1;
                }

                if (v26 != channelCopy3)
                {
                  break;
                }
              }
            }
          }
        }

        v27 = MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_163;
        }

        v28 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *v28 = 0;
        *(v28 + 8) = channel;
        *(v28 + 16) = channel;
        *(v28 + 24) = 0;
        v29 = (*(v70 + 472) + 1);
        v30 = *(v70 + 480);
        if (v21 && (v30 * v21) >= v29)
        {
LABEL_124:
          v60 = *(v70 + 448);
          v61 = *(v60 + 8 * channelCopy3);
          if (v61)
          {
            *v28 = *v61;
          }

          else
          {
            *v28 = *(v70 + 464);
            *(v70 + 464) = v28;
            *(v60 + 8 * channelCopy3) = v70 + 464;
            if (!*v28)
            {
              goto LABEL_133;
            }

            v62 = *(*v28 + 8);
            if ((v21 & (v21 - 1)) != 0)
            {
              if (v62 >= v21)
              {
                v62 %= v21;
              }
            }

            else
            {
              v62 &= v21 - 1;
            }

            v61 = (*(v70 + 448) + 8 * v62);
          }

          *v61 = v28;
LABEL_133:
          ++*(v70 + 472);
LABEL_134:
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v70 + 488);
          goto LABEL_135;
        }

        v31 = 1;
        if (v21 >= 3)
        {
          v31 = (v21 & (v21 - 1)) != 0;
        }

        v32 = v31 | (2 * v21);
        v33 = vcvtps_u32_f32(v29 / v30);
        if (v32 <= v33)
        {
          prime = v33;
        }

        else
        {
          prime = v32;
        }

        if (*&prime == 1)
        {
          prime = 2;
        }

        else if ((*&prime & (*&prime - 1)) != 0)
        {
          prime = std::__next_prime(*&prime);
        }

        v21 = *(v70 + 456);
        if (*&prime > v21)
        {
LABEL_61:
          if (!(*&prime >> 61) && *v27)
          {
            v35 = caulk::rt_safe_memory_resource::rt_allocate(*v27);
            v36 = *(v70 + 448);
            *(v70 + 448) = v35;
            if (v36)
            {
              std::__bucket_list_deallocator<caulk::rt_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,BOOL>,void *> *> *>>::operator()[abi:ne200100](*(v70 + 456), v36);
            }

            v37 = 0;
            *(v70 + 456) = prime;
            do
            {
              *(*(v70 + 448) + 8 * v37++) = 0;
            }

            while (*&prime != v37);
            v38 = *(v70 + 464);
            if (v38)
            {
              v39 = v38[1];
              v40 = vcnt_s8(prime);
              v40.i16[0] = vaddlv_u8(v40);
              if (v40.u32[0] > 1uLL)
              {
                if (v39 >= *&prime)
                {
                  v39 %= *&prime;
                }
              }

              else
              {
                v39 &= *&prime - 1;
              }

              *(*(v70 + 448) + 8 * v39) = v70 + 464;
              v57 = *v38;
              if (*v38)
              {
                do
                {
                  v58 = v57[1];
                  if (v40.u32[0] > 1uLL)
                  {
                    if (v58 >= *&prime)
                    {
                      v58 %= *&prime;
                    }
                  }

                  else
                  {
                    v58 &= *&prime - 1;
                  }

                  if (v58 != v39)
                  {
                    v59 = *(v70 + 448);
                    if (!*(v59 + 8 * v58))
                    {
                      *(v59 + 8 * v58) = v38;
                      goto LABEL_115;
                    }

                    *v38 = *v57;
                    *v57 = **(v59 + 8 * v58);
                    **(v59 + 8 * v58) = v57;
                    v57 = v38;
                  }

                  v58 = v39;
LABEL_115:
                  v38 = v57;
                  v57 = *v57;
                  v39 = v58;
                }

                while (v57);
              }
            }

            v21 = prime;
            goto LABEL_119;
          }

LABEL_163:
          __break(1u);
          return;
        }

        if (*&prime < v21)
        {
          v41 = vcvtps_u32_f32(*(v70 + 472) / *(v70 + 480));
          if (v21 < 3 || (v42 = vcnt_s8(v21), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
          {
            v41 = std::__next_prime(v41);
          }

          else
          {
            v43 = 1 << -__clz(v41 - 1);
            if (v41 >= 2)
            {
              v41 = v43;
            }
          }

          if (*&prime <= v41)
          {
            prime = v41;
          }

          if (*&prime >= v21)
          {
            v21 = *(v70 + 456);
          }

          else
          {
            if (prime)
            {
              goto LABEL_61;
            }

            v66 = *(v70 + 448);
            *(v70 + 448) = 0;
            if (v66)
            {
              std::__bucket_list_deallocator<caulk::rt_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,BOOL>,void *> *> *>>::operator()[abi:ne200100](*(v70 + 456), v66);
            }

            v21 = 0;
            *(v70 + 456) = 0;
          }
        }

LABEL_119:
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v21 <= channel)
          {
            channelCopy3 = channel % v21;
          }

          else
          {
            channelCopy3 = channel;
          }
        }

        else
        {
          channelCopy3 = (v21 - 1) & channel;
        }

        goto LABEL_124;
      }

      if (kHCHNScope)
      {
        v23 = *kHCHNScope;
        if (!v23)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "ClientEntry.mm";
        v76 = 1024;
        *v77 = 232;
        *&v77[4] = 2080;
        *&v77[6] = "removeAssignedChannelWithID";
        _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Not flushing or running, so directly releasing assigned channel", buf, 0x1Cu);
      }

LABEL_80:
      __p = 0;
      v73 = 0;
      v45 = *(v70 + 432);
      v74 = 0;
      *buf = v70 + 256;
      buf[8] = 1;
      std::__shared_mutex_base::lock((v70 + 256));
      v46 = *(v70 + 240);
      *&v77[2] = v70 + 232;
      *&v77[10] = v70 + 424;
      *&v77[18] = v45;
      *(v70 + 424) = 1;
      if (!v46)
      {
        goto LABEL_88;
      }

      v47 = v70 + 240;
      do
      {
        v48 = *(v46 + 32);
        v49 = v48 >= channel;
        v50 = v48 < channel;
        if (v49)
        {
          v47 = v46;
        }

        v46 = *(v46 + 8 * v50);
      }

      while (v46);
      if (v47 != v70 + 240 && *(v47 + 32) <= channel)
      {
        if (*(v47 + 40) == -1)
        {
          if (kHCHNScope)
          {
            if (*(kHCHNScope + 8))
            {
              v67 = *kHCHNScope;
              if (v67)
              {
                v68 = v67;
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  *v79 = 136315650;
                  v80 = "ClientEntry.mm";
                  v81 = 1024;
                  v82 = 239;
                  v83 = 2080;
                  v84 = "operator()";
                  _os_log_impl(&dword_1B9A08000, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Channel was already released", v79, 0x1Cu);
                }
              }
            }
          }

          v69 = 0;
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](&__p, (v47 + 40));
          v69 = -1;
        }

        std::__tree<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>>>::__remove_node_pointer((v70 + 232), v47);
        operator delete(v47);
        v51 = 1;
        v52 = v69;
      }

      else
      {
LABEL_88:
        v51 = 0;
        v52 = -1;
      }

      *(v70 + 424) = 0;
      std::__shared_mutex_base::unlock((v70 + 256));
      if ((v51 & 1) == 0)
      {
        if (kHCHNScope)
        {
          if (*(kHCHNScope + 8))
          {
            v53 = *kHCHNScope;
            if (v53)
            {
              v54 = v53;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315906;
                *&buf[4] = "ClientEntry.mm";
                v76 = 1024;
                *v77 = 244;
                *&v77[4] = 2080;
                *&v77[6] = "removeAssignedChannelWithID";
                *&v77[14] = 1024;
                *&v77[16] = channel;
                _os_log_impl(&dword_1B9A08000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: ChannelID %u not found", buf, 0x22u);
              }
            }
          }
        }
      }

      v55 = __p;
      if (v73 != __p)
      {
        ClientEntry::releaseSynthChannels(v70, &__p);
        v52 = 0;
      }

      if (v55)
      {
        operator delete(v55);
      }

      if (!v52)
      {
LABEL_135:
        v19 = 0;
        goto LABEL_136;
      }

      if (kHCHNScope)
      {
        v56 = *kHCHNScope;
        if (!v56)
        {
LABEL_143:
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v52 userInfo:0];
          goto LABEL_23;
        }
      }

      else
      {
        v56 = MEMORY[0x1E69E9C10];
        v64 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v65 = self->_clientID;
        *buf = 136315906;
        *&buf[4] = "AVHapticServer.mm";
        v76 = 1024;
        *v77 = 1499;
        *&v77[4] = 2080;
        *&v77[6] = "[AVHapticServerInstance removeChannel:reply:]";
        *&v77[14] = 2048;
        *&v77[16] = v65;
        _os_log_impl(&dword_1B9A08000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: clientID: 0x%lx - failed to release channel!", buf, 0x26u);
      }

      goto LABEL_143;
    }
  }

  else
  {
    v71 = 0;
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
LABEL_23:
  v19 = v18;
LABEL_136:
  replyCopy[2](replyCopy, v19);

  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  objc_sync_exit(v11);

  v63 = *MEMORY[0x1E69E9840];
}

- (void)requestChannels:(unint64_t)channels reply:(id)reply
{
  v42 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCHNScope)
  {
    v7 = *kHCHNScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1448;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    *&buf[38] = 1024;
    channelsCopy = channels;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx count: %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v36 = 0;
    goto LABEL_52;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v35)
  {
    goto LABEL_52;
  }

  v34 = replyCopy;
  ClientEntry::getAssignedChannelIDs(buf, v35);
  v13 = *buf;
  v12 = *&buf[8];
  if (*buf)
  {
    operator delete(*buf);
  }

  if (v12 == v13)
  {
    if (channels >> 31)
    {
      CAAssertRtn();
      CAAssertRtn();
    }

    [(AVHapticServer *)self->_master getChannelID];
    channelsCopy2 = channels;
  }

  else
  {
    [(AVHapticServer *)self->_master getChannelID];
    channelsCopy2 = 1;
  }

  __p = 0;
  v38 = 0;
  v39 = 0;
  v33 = ClientEntry::requestAndInitializeSynthChannels(v35, &__p, channelsCopy2);
  if (!v33)
  {
    if (kHCHNScope)
    {
      v15 = *kHCHNScope;
      if (!v15)
      {
LABEL_25:
        if (__p != v38)
        {
          v17 = *__p;
          v18 = *(v35 + 432);
          *buf = v35 + 256;
          buf[8] = 1;
          std::__shared_mutex_base::lock((v35 + 256));
          *&buf[16] = v35 + 232;
          *&buf[24] = v35 + 424;
          *&buf[32] = v18;
          *(v35 + 424) = 1;
          operator new();
        }

        goto LABEL_27;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "ClientEntry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 209;
      *&buf[18] = 2080;
      *&buf[20] = "addChannels";
      *&buf[28] = 1024;
      *&buf[30] = (v38 - __p) >> 2;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %u new synth channels now available -- binding to keys", buf, 0x22u);
    }

    goto LABEL_25;
  }

LABEL_27:
  std::__shared_mutex_base::lock_shared((v35 + 256));
  v19 = *(v35 + 248);
  std::__shared_mutex_base::unlock_shared((v35 + 256));
  LODWORD(v20) = channels;
  *(v35 + 440) = v19 != 0;
  replyCopy = v34;
  if (__p)
  {
    operator delete(__p);
  }

  if (v33)
  {
    if (kHCHNScope)
    {
      v21 = *kHCHNScope;
      if (!v21)
      {
LABEL_42:
        v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v33 userInfo:0];
        (*(v34 + 2))(v34, 0, v28);

        goto LABEL_52;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1462;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
      *&buf[28] = 2048;
      *&buf[30] = v27;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: clientID: 0x%lx - failed to get more channels!", buf, 0x26u);
    }

    goto LABEL_42;
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ClientEntry::getAssignedChannelIDs(&__p, v35);
  v24 = __p;
  v23 = v38;
  if ((v38 - __p) >> 3 < channels)
  {
    v20 = (v38 - __p) >> 3;
  }

  if (!kHCHNScope)
  {
    v25 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    goto LABEL_44;
  }

  v25 = *kHCHNScope;
  if (v25)
  {
LABEL_44:
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1476;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
      *&buf[28] = 1024;
      *&buf[30] = v20;
      _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Placing %u assigned channel IDs in output NSArray", buf, 0x22u);
    }

    goto LABEL_47;
  }

  do
  {
LABEL_47:
    if (v23 == v24)
    {
      break;
    }

    v30 = *(v23 - 1);
    v23 -= 8;
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v30];
    [v22 addObject:v31];

    [(AVHapticServer *)self->_master incrementChannelID];
    LODWORD(v20) = v20 - 1;
  }

  while (v20);
  (*(v34 + 2))(v34, v22, 0);
  if (v24)
  {
    operator delete(v24);
  }

LABEL_52:
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  objc_sync_exit(v10);

  v32 = *MEMORY[0x1E69E9840];
}

- (void)releaseChannels
{
  v13 = *MEMORY[0x1E69E9840];
  if (kHCHNScope)
  {
    v3 = *kHCHNScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *v8 = 136315906;
    *&v8[4] = "AVHapticServer.mm";
    *&v8[12] = 1024;
    *&v8[14] = 1439;
    v9 = 2080;
    v10 = "[AVHapticServerInstance releaseChannels]";
    v11 = 2048;
    v12 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", v8, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (*v8)
    {
      ClientEntry::clearAssignedChannels(*v8);
    }
  }

  else
  {
    *v8 = 0;
    *&v8[8] = 0;
  }

  if (*&v8[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v8[8]);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply
{
  v82 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1409;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance setPlayerBehavior:reply:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    *&buf[38] = 1024;
    LODWORD(v78) = behavior;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v15 = 0;
    v59 = 0;
    goto LABEL_31;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v58)
  {
    v15 = 0;
    goto LABEL_31;
  }

  manager = [(AVHapticServer *)self->_master manager];
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (behavior >= 0x400)
  {
    if (kHSRVScope)
    {
      v16 = *kHSRVScope;
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1290;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 1024;
      *&buf[30] = behavior;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal or unsupported player behavior: 0x%x", buf, 0x22u);
    }

LABEL_29:
    v15 = -4800;
    if (!v59)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  routeUsesReceiver = self->_routeUsesReceiver;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  if ((~behavior & 0x11) == 0)
  {
    if (kHSRVScope)
    {
      v14 = *kHSRVScope;
      if (!v14)
      {
LABEL_41:
        v15 = -4800;
        goto LABEL_126;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1302;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set both haptics-only and audio-only", buf, 0x1Cu);
    }

    goto LABEL_41;
  }

  v56 = routeUsesReceiver;
  v57 = behavior & 0x10;
  if (kHSRVScope)
  {
    v17 = *kHSRVScope;
    if (!v17)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(v58 + 24);
    v24 = "audio-only";
    *buf = 136316162;
    *&buf[4] = "ServerManager.mm";
    if ((behavior & 0x10) == 0)
    {
      v24 = "haptics+audio";
    }

    *&buf[12] = 1024;
    *&buf[14] = 1306;
    *&buf[20] = "setClientPlayerBehavior";
    *&buf[28] = 2048;
    *&buf[18] = 2080;
    if (behavior)
    {
      v24 = "haptics-only";
    }

    *&buf[30] = v23;
    *&buf[38] = 2080;
    v78 = v24;
    _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx -> %s mode", buf, 0x30u);
  }

LABEL_50:
  v25 = (*(v58 + 96) & 0xFFFFFFFFFFFFFFFCLL | (2 * (behavior & 1)) | (v57 >> 4)) ^ 3;
  *(v58 + 96) = v25;
  if ((~behavior & 5) != 0)
  {
    goto LABEL_59;
  }

  if (!kHSRVScope)
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
    goto LABEL_55;
  }

  v26 = *kHSRVScope;
  if (v26)
  {
LABEL_55:
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v58 + 24);
      *buf = 136315906;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1312;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 2048;
      *&buf[30] = v28;
      _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Haptics-only client ID 0x%lx will not activate its audio session when starting", buf, 0x26u);
    }
  }

  v25 = *(v58 + 96) | 0x40;
  *(v58 + 96) = v25;
LABEL_59:
  if (((v25 >> 2) & 1) == (behavior & 2) >> 1)
  {
    goto LABEL_75;
  }

  *(v58 + 96) = v25 & 0xFFFFFFFFFFFFFFFBLL | (2 * (behavior & 2));
  if (!kHSRVScope)
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
    goto LABEL_64;
  }

  v29 = *kHSRVScope;
  if (v29)
  {
LABEL_64:
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *&buf[4] = "ServerManager.mm";
      v31 = "now";
      v32 = *(v58 + 24);
      *buf = 136316162;
      *&buf[12] = 1024;
      if ((behavior & 2) == 0)
      {
        v31 = "no longer";
      }

      *&buf[14] = 1322;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 2048;
      *&buf[30] = v32;
      *&buf[38] = 2080;
      v78 = v31;
      _os_log_impl(&dword_1B9A08000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx %s follows default route - updating mute state", buf, 0x30u);
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN13ServerManager23setClientPlayerBehaviorENSt3__110shared_ptrI11ClientEntryEEmb_block_invoke;
  *&buf[24] = &unk_1F37C5070;
  *&buf[32] = &v60;
  v78 = manager;
  v79 = v58;
  v80 = v59;
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v81 = v56;
  v33 = buf;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v34 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v34, v33, 0, "executeSync", "ServerManager.mm", 325);

  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

LABEL_75:
  v35 = behavior & 0x21;
  v36 = *(v58 + 96);
  if ((v35 != 0) == ((v36 >> 3) & 1))
  {
    goto LABEL_92;
  }

  if (!kHMUTScope)
  {
    v37 = MEMORY[0x1E69E9C10];
    v38 = MEMORY[0x1E69E9C10];
    goto LABEL_80;
  }

  v37 = *kHMUTScope;
  if (v37)
  {
LABEL_80:
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = "Unmuting";
      v40 = *(v58 + 24);
      *v64 = 136316674;
      v65 = "ServerManager.mm";
      v66 = 1024;
      if ((behavior & 0x21) != 0)
      {
        v39 = "Muting";
      }

      v67 = 1331;
      v68 = 2080;
      v69 = "setClientPlayerBehavior";
      v70 = 2080;
      *v71 = v39;
      *&v71[8] = 2048;
      v72 = v40;
      v73 = 1024;
      v74 = (behavior >> 5) & 1;
      v75 = 1024;
      v76 = behavior & 1;
      _os_log_impl(&dword_1B9A08000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s audio on client ID 0x%lx due to player behaviors: MuteAudio %d, HapticsOnly %d", v64, 0x3Cu);
    }
  }

  if (kHMUTScope)
  {
    if (*(kHMUTScope + 8))
    {
      v41 = *kHMUTScope;
      if (v41)
      {
        v42 = v41;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v43 = *(v58 + 24);
          *v64 = 136316162;
          v65 = "ClientEntry.mm";
          v67 = 793;
          v68 = 2080;
          v66 = 1024;
          v69 = "setAudioBehaviorMuted";
          v70 = 1024;
          *v71 = v43;
          *&v71[4] = 1024;
          *&v71[6] = v35 != 0;
          _os_log_impl(&dword_1B9A08000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, mute all audio on this client: %d", v64, 0x28u);
        }
      }
    }
  }

  *(v58 + 96) = *(v58 + 96) & 0xFFFFFFFFFFFFFFF7 | (8 * (v35 != 0));
  ClientEntry::muteAudio(v58, v35 != 0, 6, 0.0);
  v36 = *(v58 + 96);
LABEL_92:
  v44 = behavior & 0x50;
  if ((v44 != 0) == ((v36 >> 4) & 1))
  {
    goto LABEL_109;
  }

  if (!kHMUTScope)
  {
    v45 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
    goto LABEL_97;
  }

  v45 = *kHMUTScope;
  if (v45)
  {
LABEL_97:
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(v58 + 24);
      v48 = "Unmuting";
      *v64 = 136316674;
      v65 = "ServerManager.mm";
      v66 = 1024;
      v67 = 1339;
      v68 = 2080;
      if ((behavior & 0x50) != 0)
      {
        v48 = "Muting";
      }

      v69 = "setClientPlayerBehavior";
      v70 = 2080;
      *v71 = v48;
      *&v71[8] = 2048;
      v72 = v47;
      v73 = 1024;
      v74 = (behavior >> 6) & 1;
      v75 = 1024;
      v76 = v57 >> 4;
      _os_log_impl(&dword_1B9A08000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s haptics on client ID 0x%lx due to player behaviors: MuteHaptics %d, AudioOnly %d", v64, 0x3Cu);
    }
  }

  if (kHMUTScope)
  {
    if (*(kHMUTScope + 8))
    {
      v49 = *kHMUTScope;
      if (v49)
      {
        v50 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v51 = *(v58 + 24);
          *v64 = 136316162;
          v65 = "ClientEntry.mm";
          v67 = 799;
          v68 = 2080;
          v66 = 1024;
          v69 = "setHapticsBehaviorMuted";
          v70 = 1024;
          *v71 = v51;
          *&v71[4] = 1024;
          *&v71[6] = v44 != 0;
          _os_log_impl(&dword_1B9A08000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, mute all haptics on this client: %d", v64, 0x28u);
        }
      }
    }
  }

  *(v58 + 96) = *(v58 + 96) & 0xFFFFFFFFFFFFFFEFLL | (16 * (v44 != 0));
  (*(*v58 + 48))(v58, 0.0);
  v36 = *(v58 + 96);
LABEL_109:
  if (behavior < 0x200 != ((v36 & 0x100) == 0))
  {
    if (kHMUTScope)
    {
      v52 = *kHMUTScope;
      if (!v52)
      {
LABEL_119:
        *(v58 + 96) = *(v58 + 96) & 0xFFFFFFFFFFFFFEFFLL | ((behavior > 0x1FF) << 8);
        if (*(*(v58 + 224) + 321) == 1)
        {
          (*(*v58 + 48))(v58, behavior < 0x200, 1, 0.0);
        }

        goto LABEL_121;
      }
    }

    else
    {
      v52 = MEMORY[0x1E69E9C10];
      v53 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(v58 + 24);
      v55 = "no longer";
      *v64 = 136316162;
      v65 = "ServerManager.mm";
      v66 = 1024;
      if (behavior < 0x200)
      {
        v55 = "now";
      }

      v67 = 1347;
      v68 = 2080;
      v69 = "setClientPlayerBehavior";
      v70 = 2048;
      *v71 = v54;
      *&v71[8] = 2080;
      v72 = v55;
      _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx will %s mute haptics while device is recording", v64, 0x30u);
    }

    goto LABEL_119;
  }

LABEL_121:
  if ((behavior & 0x80) != 0)
  {
    *(v58 + 104) = 1003;
  }

  if ((behavior & 0x100) != 0)
  {
    *(v58 + 108) = 1;
  }

  v15 = *(v61 + 6);
LABEL_126:
  _Block_object_dispose(&v60, 8);
  if (v59)
  {
LABEL_30:
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

LABEL_31:
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  objc_sync_exit(v10);

  if (v15)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v15 userInfo:0];
  }

  else
  {
    v19 = 0;
  }

  replyCopy[2](replyCopy, v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)getHapticLatency:(id)latency
{
  latencyCopy = latency;
  v5 = self->_master;
  objc_sync_enter(v5);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    master = self->_master;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  manager = [(AVHapticServer *)master manager];
  v8 = (*(**(manager + 232) + 120))(*(manager + 232), (*(v11 + 96) >> 1) & 1, 9999999);
  if (v8 <= 0.0)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4806 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  latencyCopy[2](latencyCopy, v9, v8);

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  objc_sync_exit(v5);
}

- (void)stopRunning:(id)running
{
  v39 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v32 = "AVHapticServer.mm";
    v33 = 1024;
    v34 = 1366;
    v35 = 2080;
    v36 = "[AVHapticServerInstance stopRunning:]";
    v37 = 2048;
    v38 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = self->_master;
  objc_sync_enter(v8);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v25)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v10 = *kHSRVScope;
          if (v10)
          {
            v11 = v10;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v32 = "AVHapticServer.mm";
              v33 = 1024;
              v34 = 1373;
              v35 = 2080;
              v36 = "[AVHapticServerInstance stopRunning:]";
              _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3321888768;
      v21[2] = __38__AVHapticServerInstance_stopRunning___block_invoke;
      v21[3] = &unk_1F37BD7B8;
      objc_copyWeak(v22, &location);
      v21[5] = &v27;
      v22[1] = v25;
      v23 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21[4] = self;
      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v12 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v12, v21, 0, "[AVHapticServerInstance stopRunning:]", "AVHapticServer.mm", 1381);

      if (_os_feature_enabled_impl())
      {
        ptr = self->_hapticSession.__ptr_;
        if (ptr)
        {
          (*(*ptr + 56))(ptr, 0);
        }
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      objc_destroyWeak(v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  objc_sync_exit(v8);

  v14 = *(v28 + 6);
  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = _Block_copy(runningCopy);
    *buf = 136315906;
    v32 = "AVHapticServer.mm";
    v33 = 1024;
    v34 = 1388;
    v35 = 2080;
    v36 = "[AVHapticServerInstance stopRunning:]";
    v37 = 2048;
    v38 = v19;
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p", buf, 0x26u);
  }

LABEL_39:
  (*(runningCopy + 2))(runningCopy, v15);
  _Block_object_dispose(&v27, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __38__AVHapticServerInstance_stopRunning___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (!WeakRetained)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
LABEL_9:
        *(*(*(a1 + 40) + 8) + 24) = -4898;
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "AVHapticServer.mm";
      v12 = 1024;
      v13 = 1377;
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Haptic server master is nil - cannot stop!", buf, 0x12u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 doStopRunning:&v8 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v8), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stopRunning
{
  v26 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v19 = "AVHapticServer.mm";
    v20 = 1024;
    v21 = 1347;
    v22 = 2080;
    v23 = "[AVHapticServerInstance stopRunning]";
    v24 = 2048;
    v25 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    v8 = v16;
    if (v16)
    {
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v9 = *kHSRVScope;
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v19 = "AVHapticServer.mm";
              v20 = 1024;
              v21 = 1351;
              v22 = 2080;
              v23 = "[AVHapticServerInstance stopRunning]";
              _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
            }

            v8 = v16;
          }
        }
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3321888768;
      v14[2] = __37__AVHapticServerInstance_stopRunning__block_invoke;
      v14[3] = &unk_1F37BD828;
      v14[4] = self;
      v14[5] = v8;
      v15 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v11 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v11, v14, 0, "[AVHapticServerInstance stopRunning]", "AVHapticServer.mm", 1356);

      if (_os_feature_enabled_impl())
      {
        ptr = self->_hapticSession.__ptr_;
        if (ptr)
        {
          (*(*ptr + 56))(ptr, 0);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  objc_sync_exit(v6);

  v13 = *MEMORY[0x1E69E9840];
}

void __37__AVHapticServerInstance_stopRunning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasRunningAndSuspended:0];
  v2 = [*(a1 + 32) master];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v2 doStopRunning:&v4 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v4), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)startRunning:(id)running
{
  v35 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1319;
    v29 = 2080;
    v30 = "[AVHapticServerInstance startRunning:]";
    v31 = 2048;
    v32 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v8 = self->_master;
  objc_sync_enter(v8);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1323;
          v29 = 2080;
          v30 = "[AVHapticServerInstance startRunning:]";
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching unmuteClientAfterSessionInterruption on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__AVHapticServerInstance_startRunning___block_invoke;
  v27[3] = &unk_1E7ED02F0;
  v27[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v11 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v11, v27, 0, "[AVHapticServerInstance startRunning:]", "AVHapticServer.mm", 1326);

  master = self->_master;
  if (!master)
  {
    *buf = 0;
    *&buf[8] = 0;
    goto LABEL_24;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!*buf)
  {
LABEL_24:
    v14 = -4812;
    goto LABEL_25;
  }

  [(AVHapticServerInstance *)self setWasRunningAndSuspended:0];
  objc_initWeak(&location, self);
  master = [(AVHapticServerInstance *)self master];
  v24 = *buf;
  v25 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __39__AVHapticServerInstance_startRunning___block_invoke_2;
  v22[3] = &unk_1E7ECEC50;
  objc_copyWeak(&v23, &location);
  v14 = [master doStartRunning:&v24 completedBlock:v22];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_25:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_sync_exit(v8);

  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = _Block_copy(runningCopy);
    if (v15)
    {
      localizedDescription = [v15 localizedDescription];
    }

    else
    {
      localizedDescription = @"(no err)";
    }

    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1341;
    v29 = 2080;
    v30 = "[AVHapticServerInstance startRunning:]";
    v31 = 2048;
    v32 = v19;
    v33 = 2112;
    v34 = localizedDescription;
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p: %@", buf, 0x30u);
    if (v15)
    {
    }
  }

LABEL_42:
  (*(runningCopy + 2))(runningCopy, v15);

  v21 = *MEMORY[0x1E69E9840];
}

void __39__AVHapticServerInstance_startRunning___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*a2 + 96) & 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRunIncludesHaptics:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 runIncludesHaptics];

  if (!v9)
  {
    goto LABEL_12;
  }

  if (kHSRVScope)
  {
    v10 = *kHSRVScope;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "AVHapticServer.mm";
    v21 = 1024;
    v22 = 1334;
    v23 = 2080;
    v24 = "[AVHapticServerInstance startRunning:]_block_invoke_2";
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: runIncludesHaptics set to YES for this client", &v19, 0x1Cu);
  }

LABEL_12:
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*a2 + 96) >> 1) & 1;
  }

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setRunIncludesAudio:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 runIncludesAudio];

  if (v15)
  {
    if (kHSRVScope)
    {
      v16 = *kHSRVScope;
      if (!v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 1336;
      v23 = 2080;
      v24 = "[AVHapticServerInstance startRunning:]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: runIncludesAudio set to YES for this client", &v19, 0x1Cu);
    }
  }

LABEL_23:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)stopPrewarm
{
  v25 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v18 = "AVHapticServer.mm";
    v19 = 1024;
    v20 = 1305;
    v21 = 2080;
    v22 = "[AVHapticServerInstance stopPrewarm]";
    v23 = 2048;
    v24 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v15)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v7 = *kHSRVScope;
          if (v7)
          {
            v8 = v7;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v18 = "AVHapticServer.mm";
              v19 = 1024;
              v20 = 1309;
              v21 = 2080;
              v22 = "[AVHapticServerInstance stopPrewarm]";
              _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopPrewarm on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3321888768;
      v11[2] = __37__AVHapticServerInstance_stopPrewarm__block_invoke;
      v11[3] = &unk_1F37BD7F0;
      v11[4] = self;
      objc_copyWeak(v12, &location);
      v12[1] = v15;
      v13 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v9 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v9, v11, 0, "[AVHapticServerInstance stopPrewarm]", "AVHapticServer.mm", 1313);

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      objc_destroyWeak(v12);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __37__AVHapticServerInstance_stopPrewarm__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasPrewarmedAndSuspended:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained doStopPrewarm:&v4 audio:objc_msgSend(*(a1 + 32) haptics:{"prewarmIncludesAudio", v4), objc_msgSend(*(a1 + 32), "prewarmIncludesHaptics")}];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)prewarm:(id)prewarm
{
  v39 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v30 = "AVHapticServer.mm";
    v31 = 1024;
    v32 = 1284;
    v33 = 2080;
    v34 = "[AVHapticServerInstance prewarm:]";
    v35 = 2048;
    v36 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -4812;
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v23)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v9 = *kHSRVScope;
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v30 = "AVHapticServer.mm";
              v31 = 1024;
              v32 = 1290;
              v33 = 2080;
              v34 = "[AVHapticServerInstance prewarm:]";
              _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doPrewarm on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3321888768;
      v19[2] = __34__AVHapticServerInstance_prewarm___block_invoke;
      v19[3] = &unk_1F37BD7B8;
      v19[4] = self;
      v19[5] = &v25;
      objc_copyWeak(v20, &location);
      v20[1] = v23;
      v21 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v11 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v11, v19, 0, "[AVHapticServerInstance prewarm:]", "AVHapticServer.mm", 1296);

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v12 = *(v26 + 6);
  if (v12)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  if (kHSRVScope)
  {
    v14 = *kHSRVScope;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = _Block_copy(prewarmCopy);
    *buf = 136316162;
    v30 = "AVHapticServer.mm";
    v31 = 1024;
    v32 = 1299;
    v33 = 2080;
    v34 = "[AVHapticServerInstance prewarm:]";
    v35 = 2048;
    v36 = v17;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
  }

LABEL_34:
  (*(prewarmCopy + 2))(prewarmCopy, v13);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Block_object_dispose(&v25, 8);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __34__AVHapticServerInstance_prewarm___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasPrewarmedAndSuspended:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v4 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained doPrewarm:&v8];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 56) + 96) & 1;
  }

  [*(a1 + 32) setPrewarmIncludesHaptics:{v5, v8}];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(*(a1 + 56) + 96) >> 1) & 1;
  }

  return [*(a1 + 32) setPrewarmIncludesAudio:v6];
}

- (void)detachSequence:(unint64_t)sequence
{
  v21 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1273;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance detachSequence:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v17 = 0;
    goto LABEL_26;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v16)
  {
    goto LABEL_26;
  }

  manager = [(AVHapticServer *)self->_master manager];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!kHSEQScope)
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v10 = *kHSEQScope;
  if (v10)
  {
LABEL_17:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(v16 + 24);
      *buf = 136316162;
      *&buf[4] = "ServerManager.mm";
      *&buf[14] = 1263;
      *&buf[18] = 2080;
      *&buf[12] = 1024;
      *&buf[20] = "detachSequence";
      *&buf[28] = 1024;
      *&buf[30] = v12;
      *&buf[34] = 1024;
      *&buf[36] = sequence;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: client ID: 0x%x, asychronously detaching sequence with ID %u after 2-second delay", buf, 0x28u);
    }
  }

  v13 = dispatch_time(0, 2000000000);
  v14 = manager[41];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN13ServerManager14detachSequenceENSt3__110shared_ptrI11ClientEntryEEm_block_invoke;
  *&buf[24] = &__block_descriptor_56_ea8_32c39_ZTSNSt3__110shared_ptrI11ClientEntryEE_e5_v8__0l;
  *&buf[32] = v16;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sequenceCopy = sequence;
  dispatch_after(v13, v14, buf);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

LABEL_26:
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply
{
  sequenceCopy = sequence;
  v31[4] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *v23 = "AVHapticServer.mm";
    *&v23[8] = 1024;
    *&v23[10] = 1245;
    v24 = 2080;
    v25 = "[AVHapticServerInstance prepareHapticSequence:reply:]";
    v26 = 2048;
    v27 = clientID;
    v28 = 1024;
    LODWORD(v29) = sequenceCopy;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx seqID: %u", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v20)
    {
      objc_initWeak(&location, self);
      manager = [(AVHapticServer *)self->_master manager];
      v18[0] = v20;
      v18[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_copyWeak(buf, &location);
      *&v23[4] = a2;
      v30 = caulk::inplace_function<void ()(unsigned long),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<[AVHapticServerInstance prepareHapticSequence:reply:]::$_1>;
      objc_moveWeak(v31, buf);
      v31[1] = *&v23[4];
      ServerManager::prepareSequence(manager, v18, sequenceCopy, &v30);
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v14 = *kHSEQScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = _Block_copy(replyCopy);
          *buf = 136316162;
          *v23 = "AVHapticServer.mm";
          *&v23[8] = 1024;
          *&v23[10] = 1267;
          v24 = 2080;
          v25 = "[AVHapticServerInstance prepareHapticSequence:reply:]";
          v26 = 2048;
          v27 = v16;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v13);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)prepareHapticSequence:(caulk::inplace_function_detail::wrapper<-[AVHapticServerInstance)prepareHapticSequence:reply:]::$_1> reply:
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  WeakRetained = objc_loadWeakRetained(self);
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [WeakRetained getAsyncDelegateForMethod:*(self + 8) errorHandler:&__block_literal_global_561];
    if (kHSRVScope)
    {
      v7 = *kHSRVScope;
      if (!v7)
      {
LABEL_9:
        [v6 sequenceFinished:v3 error:0];

        objc_autoreleasePoolPop(v5);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = "AVHapticServer.mm";
      v12 = 1024;
      v13 = 1257;
      v14 = 2080;
      v15 = "operator()";
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Calling sequenceFinished: on client delegate for seqID %u>", &v10, 0x22u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)loadVibePattern:(id)pattern reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v23 = 1024;
    v24 = 1225;
    v25 = 2080;
    v26 = "[AVHapticServerInstance loadVibePattern:reply:]";
    v27 = 2048;
    v28 = clientID;
    v29 = 2048;
    v30 = patternCopy;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx pattern: %p", buf, 0x30u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_17;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v20)
  {
LABEL_17:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v20}];
    v13 = -1;
    goto LABEL_18;
  }

  [(AVHapticServer *)self->_master manager];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = -1;
  v12 = (*(*v20 + 56))(v20, patternCopy, buf);
  v13 = *buf;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (!v12)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v12 userInfo:0];
LABEL_18:
  v15 = v14;
LABEL_19:
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v16 = *kHSEQScope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = _Block_copy(replyCopy);
          *buf = 136316162;
          *&buf[4] = "AVHapticServer.mm";
          v23 = 1024;
          v24 = 1237;
          v25 = 2080;
          v26 = "[AVHapticServerInstance loadVibePattern:reply:]";
          v27 = 2048;
          v28 = v18;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v13, v15);

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v23 = 1024;
    v24 = 1202;
    v25 = 2080;
    v26 = "[AVHapticServerInstance loadHapticSequenceFromEvents:reply:]";
    v27 = 2048;
    v28 = clientID;
    v29 = 1024;
    v30 = [(NSArray *)eventsCopy count];
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx array of %u events", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v18)
    {
      [(AVHapticServer *)self->_master manager];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = 0.0;
      *buf = -1;
      v20 = 0;
      ClientEntry::loadAndAddSequence(v18, eventsCopy, buf, &v21, &v20);
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v18}];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v14 = *kHSEQScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = _Block_copy(replyCopy);
          *buf = 136316674;
          *&buf[4] = "AVHapticServer.mm";
          v24 = 1219;
          v25 = 2080;
          v23 = 1024;
          v26 = "[AVHapticServerInstance loadHapticSequenceFromEvents:reply:]";
          v27 = 2048;
          v28 = v16;
          v29 = 1024;
          v30 = -1;
          v31 = 1024;
          v32 = 0;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with seqID %u, channelCount %u, and error %@", buf, 0x3Cu);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, -1, 0, v13, 0.0);

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticSequenceFromData:(id)data reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316418;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1179;
    v26 = 2080;
    v27 = "[AVHapticServerInstance loadHapticSequenceFromData:reply:]";
    v28 = 2048;
    *v29 = clientID;
    *&v29[8] = 2048;
    *&v29[10] = dataCopy;
    *&v29[18] = 1024;
    v30[0] = [dataCopy length];
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx data: %p length: %u", buf, 0x36u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v23)
    {
      [(AVHapticServer *)self->_master manager];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = dataCopy;
      if (kHSEQScope)
      {
        v14 = *kHSEQScope;
        if (!v14)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = v23[3];
        *buf = 136316162;
        *&buf[4] = "ClientEntry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1241;
        v26 = 2080;
        v27 = "loadAndAddSequence";
        v28 = 1024;
        *v29 = v17;
        *&v29[4] = 2048;
        *&v29[6] = v13;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, sequenceData: %p", buf, 0x2Cu);
      }

LABEL_21:
      v18 = v23[11];
      *buf = v23[10];
      *&buf[8] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<HapticSequence,std::allocator<HapticSequence>,std::shared_ptr<MuteManager>,0>();
    }
  }

  else
  {
    v24 = 0;
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v19 = *kHSEQScope;
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = _Block_copy(replyCopy);
          *buf = 136316674;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[14] = 1196;
          v26 = 2080;
          *&buf[12] = 1024;
          v27 = "[AVHapticServerInstance loadHapticSequenceFromData:reply:]";
          v28 = 2048;
          *v29 = v21;
          *&v29[8] = 1024;
          *&v29[10] = -1;
          *&v29[14] = 1024;
          *&v29[16] = 0;
          LOWORD(v30[0]) = 2112;
          *(v30 + 2) = v15;
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with seqID %u, channelCount %u, and error %@", buf, 0x3Cu);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, -1, 0, v15, 0.0);

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)loadHapticEvent:(id)event reply:(id)reply
{
  v56 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  replyCopy = reply;
  if (kHSRVScope)
  {
    v8 = *kHSRVScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v47 = "AVHapticServer.mm";
    v48 = 1024;
    v49 = 1155;
    v50 = 2080;
    v51 = "[AVHapticServerInstance loadHapticEvent:reply:]";
    v52 = 2048;
    v53 = clientID;
    v54 = 2048;
    v55 = eventCopy;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx preset: %p", buf, 0x30u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v38 = 0;
    goto LABEL_15;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v37)
  {
LABEL_15:
    v14 = -4812;
LABEL_27:
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
    goto LABEL_28;
  }

  v12 = atomic_load((v37 + 120));
  if (v12 > 1)
  {
    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
LABEL_26:
        v14 = -4806;
        goto LABEL_27;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v47 = "AVHapticServer.mm";
      v48 = 1024;
      v49 = 1165;
      v50 = 2080;
      v51 = "[AVHapticServerInstance loadHapticEvent:reply:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player must be stopped to load a preset", buf, 0x1Cu);
    }

    goto LABEL_26;
  }

  manager = [(AVHapticServer *)self->_master manager];
  os_unfair_recursive_lock_lock_with_options();
  v16 = manager[29];
  v44 = eventCopy;
  v45 = 0;
  if (eventCopy)
  {
    v43 = 0;
    if (CACFDictionary::GetUInt32(&v44, @"TypeID", &v43))
    {
      if (v43 == 1000 || v43 == 2000 || v43 == 3000)
      {
        if (CACFDictionary::HasKey(&v44, @"Layers"))
        {
          theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v42 = 257;
          CACFDictionary::GetCACFArray(&v44, @"Layers", &theArray);
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          else
          {
            Count = 0;
          }

          if (kHPRSScope)
          {
            v26 = *kHPRSScope;
            if (!v26)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v26 = MEMORY[0x1E69E9C10];
            v27 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v47 = "HapticSynth_Parser.mm";
            v48 = 1024;
            v49 = 136;
            v50 = 2080;
            v51 = "loadEventDictionary";
            v52 = 1024;
            LODWORD(v53) = Count;
            _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event has %u layers", buf, 0x22u);
          }

LABEL_66:
          if (!Count)
          {
            if (kHPRSScope)
            {
              v28 = *kHPRSScope;
              if (!v28)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v28 = MEMORY[0x1E69E9C10];
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v47 = "HapticSynth_Parser.mm";
              v48 = 1024;
              v49 = 138;
              v50 = 2080;
              v51 = "loadEventDictionary";
              _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Empty layers array", buf, 0x1Cu);
            }

            goto LABEL_89;
          }

          if (Count >= 3)
          {
            if (kHPRSScope)
            {
              v28 = *kHPRSScope;
              if (!v28)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v28 = MEMORY[0x1E69E9C10];
              v34 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v47 = "HapticSynth_Parser.mm";
              v48 = 1024;
              v49 = 142;
              v50 = 2080;
              v51 = "loadEventDictionary";
              _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Single event dictionary cannot have more than 2 layers", buf, 0x1Cu);
            }

LABEL_89:

LABEL_90:
            PropertyInfo = -50;
LABEL_101:
            CACFArray::~CACFArray(&theArray);
            goto LABEL_81;
          }

          outDataSize = 0;
          outWritable = 0;
          v29 = *(v16 + 112);
          if (v29)
          {
            v30 = *(v29 + 16);
          }

          else
          {
            v30 = 0;
          }

          PropertyInfo = AudioUnitGetPropertyInfo(v30, 0x102Cu, 4u, 0, &outDataSize, &outWritable);
          if (!PropertyInfo)
          {
            operator new[]();
          }

          if (kHPRSScope)
          {
            v35 = *kHPRSScope;
            if (!v35)
            {
LABEL_100:

              goto LABEL_101;
            }
          }

          else
          {
            v35 = MEMORY[0x1E69E9C10];
            v36 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v47 = "HapticSynth_Parser.mm";
            v48 = 1024;
            v49 = 151;
            v50 = 2080;
            v51 = "loadEventDictionary";
            v52 = 1024;
            LODWORD(v53) = PropertyInfo;
            _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Call mSynthUnit.GetPropertyInfo(kAUSamplerProperty_LayerIDs, kAudioUnitScope_Part, 0, &propSize, &writable) failed with error %d", buf, 0x22u);
          }

          goto LABEL_100;
        }

        if (kHPRSScope)
        {
          v21 = *kHPRSScope;
          if (!v21)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v47 = "HapticSynth_Parser.mm";
          v48 = 1024;
          v49 = 202;
          v50 = 2080;
          v51 = "loadEventDictionary";
          _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: No layers array", buf, 0x1Cu);
        }
      }

      else
      {
        if (kHPRSScope)
        {
          v21 = *kHPRSScope;
          if (!v21)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v21 = MEMORY[0x1E69E9C10];
          v31 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v47 = "HapticSynth_Parser.mm";
          v48 = 1024;
          v49 = 124;
          v50 = 2080;
          v51 = "loadEventDictionary";
          _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unrecognized event dictionary 'LoadAs' key", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if (kHPRSScope)
      {
        v21 = *kHPRSScope;
        if (!v21)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v47 = "HapticSynth_Parser.mm";
        v48 = 1024;
        v49 = 129;
        v50 = 2080;
        v51 = "loadEventDictionary";
        _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Single event dictionary must provide a 'LoadAs' type key", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (kHPRSScope)
    {
      v21 = *kHPRSScope;
      if (!v21)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v47 = "HapticSynth_Parser.mm";
      v48 = 1024;
      v49 = 207;
      v50 = 2080;
      v51 = "loadEventDictionary";
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid event dictionary", buf, 0x1Cu);
    }
  }

LABEL_80:
  PropertyInfo = -50;
LABEL_81:
  CACFDictionary::~CACFDictionary(&v44);
  os_unfair_recursive_lock_unlock();
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:PropertyInfo userInfo:0];
LABEL_28:
  v19 = v18;
  replyCopy[2](replyCopy, 0, v18);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  eventCopy = event;
  v33 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCARScope)
  {
    v7 = *kHCARScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v25 = "AVHapticServer.mm";
    v26 = 1024;
    v27 = 1137;
    v28 = 2080;
    v29 = "[AVHapticServerInstance releaseCustomAudioEvent:reply:]";
    v30 = 2048;
    *v31 = clientID;
    *&v31[8] = 1024;
    LODWORD(v32) = eventCopy;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx, eventID %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v22)
  {
LABEL_14:
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v22}];
LABEL_15:
    v14 = v13;
    goto LABEL_24;
  }

  if (kHCARScope)
  {
    v12 = *kHCARScope;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v22 + 24);
    *buf = 136316162;
    v25 = "ClientEntry.mm";
    v27 = 534;
    v28 = 2080;
    v26 = 1024;
    v29 = "releaseCustomAudioEvent";
    v30 = 1024;
    *v31 = v16;
    *&v31[4] = 1024;
    *&v31[6] = eventCopy;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x eventID %u", buf, 0x28u);
  }

LABEL_20:
  if (!ClientEntry::sendRealTimeCommand(v22, 2, eventCopy))
  {
    v17 = ClientEntry::handleReleaseCustomAudioEvent(v22, eventCopy);
    if (v17)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v17 userInfo:0];
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_24:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  objc_sync_exit(v10);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v18 = *kHCARScope;
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v20 = _Block_copy(replyCopy);
          *buf = 136316162;
          v25 = "AVHapticServer.mm";
          v26 = 1024;
          v27 = 1149;
          v28 = 2080;
          v29 = "[AVHapticServerInstance releaseCustomAudioEvent:reply:]";
          v30 = 2048;
          *v31 = v20;
          *&v31[8] = 2112;
          v32 = v14;
          _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v14);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  eventCopy = event;
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCARScope)
  {
    v7 = *kHCARScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v24 = 1024;
    *v25 = 1117;
    *&v25[4] = 2080;
    *&v25[6] = "[AVHapticServerInstance referenceCustomAudioEvent:reply:]";
    *&v25[14] = 2048;
    *&v25[16] = clientID;
    *&v25[24] = 1024;
    LODWORD(v26) = eventCopy;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx, eventID %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v21)
    {
      if (kHCARScope)
      {
        if (*(kHCARScope + 8))
        {
          v12 = *kHCARScope;
          if (v12)
          {
            v13 = v12;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v21 + 24);
              *buf = 136316162;
              *&buf[4] = "ClientEntry.mm";
              *v25 = 485;
              *&v25[4] = 2080;
              v24 = 1024;
              *&v25[6] = "referenceCustomAudioEvent";
              *&v25[14] = 1024;
              *&v25[16] = v14;
              *&v25[20] = 1024;
              *&v25[22] = eventCopy;
              _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, eventID %u", buf, 0x28u);
            }
          }
        }
      }

      v15 = *(v21 + 832);
      *buf = v21 + 656;
      buf[8] = 1;
      std::__shared_mutex_base::lock((v21 + 656));
      *&v25[2] = v21 + 632;
      *&v25[10] = v21 + 824;
      *&v25[18] = v15;
      *(v21 + 824) = 1;
      std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>();
    }
  }

  else
  {
    v22 = 0;
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  objc_sync_exit(v10);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v17 = *kHCARScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = _Block_copy(replyCopy);
          *buf = 136316162;
          *&buf[4] = "AVHapticServer.mm";
          v24 = 1024;
          *v25 = 1129;
          *&v25[4] = 2080;
          *&v25[6] = "[AVHapticServerInstance referenceCustomAudioEvent:reply:]";
          *&v25[14] = 2048;
          *&v25[16] = v19;
          *&v25[24] = 2112;
          v26 = v16;
          _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v16);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  eventCopy = event;
  v68 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  if (kHCARScope)
  {
    v10 = *kHCARScope;
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

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v63 = 1024;
    *v64 = 1098;
    *&v64[4] = 2080;
    *&v64[6] = "[AVHapticServerInstance copyCustomAudioEvent:options:reply:]";
    *&v64[14] = 2048;
    *&v64[16] = clientID;
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v13 = self->_master;
  objc_sync_enter(v13);
  master = self->_master;
  if (!master)
  {
    v53 = 0;
    goto LABEL_26;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v52)
  {
LABEL_26:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    LODWORD(v26) = 0;
    goto LABEL_69;
  }

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v15 = *kHCARScope;
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v52 + 24);
          *buf = 136316162;
          *&buf[4] = "ClientEntry.mm";
          *v64 = 454;
          *&v64[4] = 2080;
          v63 = 1024;
          *&v64[6] = "copyCustomAudioEvent";
          *&v64[14] = 1024;
          *&v64[16] = v17;
          *&v64[20] = 1024;
          *&v64[22] = eventCopy;
          _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x eventID %u", buf, 0x28u);
        }
      }
    }
  }

  v18 = *(*(v52 + 224) + 264);
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v19 = *kHCARScope;
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AudioEventManager.mm";
          v63 = 1024;
          *v64 = 47;
          *&v64[4] = 2080;
          *&v64[6] = "copyCustomAudioEvent";
          *&v64[14] = 1024;
          *&v64[16] = eventCopy;
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requesting copy of event ID %u from synth", buf, 0x22u);
        }
      }
    }
  }

  v51 = optionsCopy;
  std::mutex::lock((v18 + 1));
  v21 = *v18;
  v22 = *(*v18 + 328);
  v23 = *(*v18 + 340);
  *v59 = 0;
  v57 = v51;
  v58 = 0;
  v56 = 1;
  CACFDictionary::GetBool(&v57, @"UseVolumeEnvelope", &v56);
  v55 = 0;
  CACFDictionary::GetBool(&v57, @"LoopEnabled", &v55);
  if (kHCARScope)
  {
    v24 = *kHCARScope;
    if (!*kHCARScope)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "HapticAudioUnit.cpp";
    v63 = 1024;
    *v64 = 1162;
    *&v64[4] = 2080;
    *&v64[6] = "copyCustomAudioEvent";
    *&v64[14] = 1024;
    *&v64[16] = eventCopy;
    _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding new zone from a copy of the sampleID for audio event ID %u", buf, 0x22u);
  }

LABEL_30:
  if (HapticAudioUnit::getLayerWithKey((v21 + 56), 10, &v59[1]))
  {
    LayerWithKey = HapticAudioUnit::getLayerWithKey((v21 + 56), 11, &v59[1]);
    if (LayerWithKey)
    {
      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HapticAudioUnit.cpp";
        v63 = 1024;
        *v64 = 1167;
        *&v64[4] = 2080;
        *&v64[6] = "copyCustomAudioEvent";
        _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to access layers for custom events", buf, 0x1Cu);
      }

      goto LABEL_57;
    }
  }

  if (v56)
  {
    v28 = 10;
  }

  else
  {
    v28 = 11;
  }

  if (!HapticAudioUnit::getLayerWithKey((v21 + 56), v28, v59))
  {
LABEL_59:
    inElement = 0;
    if (HapticAudioUnit::getZoneWithVelocity((v21 + 56), v59[1], BYTE1(eventCopy), &inElement))
    {
      goto LABEL_64;
    }

    outData = 0;
    *buf = 4;
    v34 = *(v21 + 112);
    v35 = v34 ? *(v34 + 16) : 0;
    if (AudioUnitGetProperty(v35, 0x1068u, 7u, inElement, &outData, buf))
    {
      goto LABEL_64;
    }

    inData = outData;
    if (outData == -1)
    {
      goto LABEL_64;
    }

    v41 = v59[0];
    CustomZoneVelocity = HapticAudioUnit::getCustomZoneVelocity((v21 + 56), v59[0]);
    if (CustomZoneVelocity == -1)
    {
      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_64:
        LODWORD(v26) = 0;
LABEL_65:
        LayerWithKey = -1;
        goto LABEL_66;
      }

      *buf = 136315650;
      *&buf[4] = "HapticAudioUnit.cpp";
      v63 = 1024;
      *v64 = 1189;
      *&v64[4] = 2080;
      *&v64[6] = "copyCustomAudioEvent";
      v47 = "%25s:%-5d %s: Unable to find a velocity slot for this event";
      v48 = v26;
      v49 = 28;
    }

    else
    {
      os_unfair_recursive_lock_lock_with_options();
      v43 = *(v21 + 112);
      if (v43)
      {
        v44 = *(v43 + 16);
      }

      else
      {
        v44 = 0;
      }

      v45 = AudioUnitSetProperty(v44, 0x1033u, 4u, 0, &inData, 4u);
      os_unfair_recursive_lock_unlock();
      if (!v45)
      {
        v46 = HapticAudioUnit::addZoneForSample((v21 + 56), inData, v41, v28, CustomZoneVelocity, v55, 1, 0, buf, v50);
        if (v46)
        {
          LODWORD(v26) = 0;
        }

        else
        {
          LODWORD(v26) = v28 | (CustomZoneVelocity << 8);
        }

        if (v46)
        {
          LayerWithKey = -1;
        }

        else
        {
          LayerWithKey = 0;
        }

        goto LABEL_66;
      }

      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 136315906;
      *&buf[4] = "HapticAudioUnit.cpp";
      v63 = 1024;
      *v64 = 1195;
      *&v64[4] = 2080;
      *&v64[6] = "copyCustomAudioEvent";
      *&v64[14] = 1024;
      *&v64[16] = inData;
      v47 = "%25s:%-5d %s: Unable to reference sampleID %u";
      v48 = v26;
      v49 = 34;
    }

    _os_log_impl(&dword_1B9A08000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);
    goto LABEL_64;
  }

  HIDWORD(v50) = v28;
  v29 = v56;
  inElement = 0;
  if (v56)
  {
    v30 = "Custom Audio Waveforms";
  }

  else
  {
    v30 = "Custom Audio Waveforms No Envelope";
  }

  v31 = CFStringCreateWithCString(0, v30, 0x600u);
  *buf = v31;
  if (v29)
  {
    v32 = 10;
  }

  else
  {
    v32 = 11;
  }

  LayerWithKey = HapticAudioUnit::addLayer((v21 + 56), 0, v22, v32, v31, &inElement);
  if (!LayerWithKey)
  {
    v33 = inElement;
    LayerWithKey = HapticAudioUnit::addDefaultGainConnections((v21 + 56), inElement, v23, 0, 0);
    if (!LayerWithKey)
    {
      outData = 0;
      LayerWithKey = HapticAudioUnit::addEnvelope((v21 + 56), v33, 0, v23, &outData);
      if (!LayerWithKey && (!v29 || (LayerWithKey = HapticAudioUnit::addCustomAudioEnvelopeConnections((v21 + 56), v33, outData)) == 0))
      {
        LayerWithKey = HapticAudioUnit::addPitchConnection((v21 + 56), v33, 0, 4.0);
        if (!LayerWithKey)
        {
          LayerWithKey = HapticAudioUnit::addFilterConnection((v21 + 56), v33, 24000.0, 2048.0);
          if (!LayerWithKey)
          {
            LayerWithKey = HapticAudioUnit::addCustomAudioOffsetStartTimeConnection((v21 + 56), v33);
            if (!LayerWithKey)
            {
              v59[0] = v33;
              Smart<__CFString const*>::~Smart(buf);
              v28 = HIDWORD(v50);
              goto LABEL_59;
            }
          }
        }
      }
    }
  }

  Smart<__CFString const*>::~Smart(buf);
LABEL_57:
  LODWORD(v26) = 0;
LABEL_66:
  CACFDictionary::~CACFDictionary(&v57);
  std::mutex::unlock((v18 + 1));
  if (!LayerWithKey)
  {
    v36 = v18[34];
    *buf = v18 + 12;
    buf[8] = 1;
    std::__shared_mutex_base::lock((v18 + 12));
    *&v64[2] = v18 + 9;
    *&v64[10] = v18 + 33;
    *&v64[18] = v36;
    *(v18 + 264) = 1;
    v57 = v26 | 0x100000000;
    std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>();
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:LayerWithKey userInfo:0];
  optionsCopy = v51;
LABEL_69:
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  objc_sync_exit(v13);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v37 = *kHCARScope;
      if (v37)
      {
        v38 = v37;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v39 = _Block_copy(replyCopy);
          *buf = 136316418;
          *&buf[4] = "AVHapticServer.mm";
          v63 = 1024;
          *v64 = 1111;
          *&v64[4] = 2080;
          *&v64[6] = "[AVHapticServerInstance copyCustomAudioEvent:options:reply:]";
          *&v64[14] = 2048;
          *&v64[16] = v39;
          *&v64[24] = 1024;
          v65 = v26;
          v66 = 2112;
          v67 = v25;
          _os_log_impl(&dword_1B9A08000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with eventID %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v26, v25);

  v40 = *MEMORY[0x1E69E9840];
}

- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  framesCopy = frames;
  v95 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  clientID = self->_clientID;
  LOBYTE(v65[0]) = 1;
  v65[1] = "AVHapticServerInstance_createCustomAudioEvent";
  v66 = clientID;
  v67 = 0;
  XOSTransactor::beginTransaction(v65);
  if (kHCARScope)
  {
    v16 = *kHCARScope;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v88 = 1024;
    *v89 = 1077;
    *&v89[4] = 2080;
    *&v89[6] = "[AVHapticServerInstance createCustomAudioEvent:format:frames:options:reply:]";
    *&v89[14] = 2048;
    *&v89[16] = v18;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v19 = self->_master;
  objc_sync_enter(v19);
  master = self->_master;
  v61 = formatCopy;
  if (!master)
  {
    v64 = 0;
    goto LABEL_26;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v63)
  {
LABEL_26:
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    LODWORD(v33) = 0;
    goto LABEL_63;
  }

  v21 = eventCopy;
  v60 = eventCopy;
  bytes = [eventCopy bytes];
  streamDescription = [formatCopy streamDescription];
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v22 = *kHCARScope;
      if (v22)
      {
        v23 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(v63 + 24);
          *buf = 136315906;
          *&buf[4] = "ClientEntry.mm";
          v88 = 1024;
          *v89 = 441;
          *&v89[4] = 2080;
          *&v89[6] = "createCustomAudioEvent";
          *&v89[14] = 1024;
          *&v89[16] = v24;
          _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x", buf, 0x22u);
        }
      }
    }
  }

  v25 = *(*(v63 + 224) + 264);
  v57 = *(v63 + 216);
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v26 = *kHCARScope;
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AudioEventManager.mm";
          v88 = 1024;
          *v89 = 34;
          *&v89[4] = 2080;
          *&v89[6] = "createCustomAudioEvent";
          _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requesting new event from synth", buf, 0x1Cu);
        }
      }
    }
  }

  std::mutex::lock((v25 + 1));
  v28 = *v25;
  v29 = *(*v25 + 328);
  v30 = *(*v25 + 340);
  inElement = 0;
  v70 = optionsCopy;
  v71 = 0;
  v69 = 1;
  CACFDictionary::GetBool(&v70, @"UseVolumeEnvelope", &v69);
  v68 = 0;
  CACFDictionary::GetBool(&v70, @"LoopEnabled", &v68);
  v56 = framesCopy;
  if (kHCARScope)
  {
    v31 = *kHCARScope;
    if (!*kHCARScope)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *&buf[4] = "HapticAudioUnit.cpp";
    v88 = 1024;
    if (v68)
    {
      v34 = "looped";
    }

    else
    {
      v34 = "unlooped";
    }

    v35 = "without";
    *v89 = 1102;
    *&v89[6] = "createCustomAudioEvent";
    *buf = 136316162;
    *&v89[4] = 2080;
    *&v89[14] = 2080;
    if (v69)
    {
      v35 = "with";
    }

    *&v89[16] = v34;
    *&v89[24] = 2080;
    *&v90 = v35;
    _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding layer/zone/waveform for %s custom audio event %s envelope", buf, 0x30u);
  }

LABEL_35:
  if (v69)
  {
    v36 = 10;
  }

  else
  {
    v36 = 11;
  }

  if (!HapticAudioUnit::getLayerWithKey((v28 + 56), v36, &inElement))
  {
    v39 = inElement;
    goto LABEL_54;
  }

  if (v69)
  {
    v37 = "Custom Audio Waveforms";
  }

  else
  {
    v37 = "Custom Audio Waveforms No Envelope";
  }

  *buf = CFStringCreateWithCString(0, v37, 0x600u);
  started = HapticAudioUnit::addLayer((v28 + 56), 0, v29, v36, *buf, &inElement);
  if (!started)
  {
    v39 = inElement;
    started = HapticAudioUnit::addDefaultGainConnections((v28 + 56), inElement, v30, 0, 0);
    if (!started)
    {
      v73[0] = 0;
      started = HapticAudioUnit::addEnvelope((v28 + 56), v39, 0, v30, v73);
      if (!started && (!v69 || (started = HapticAudioUnit::addCustomAudioEnvelopeConnections((v28 + 56), v39, v73[0])) == 0))
      {
        started = HapticAudioUnit::addPitchConnection((v28 + 56), v39, 0, 4.0);
        if (!started)
        {
          started = HapticAudioUnit::addFilterConnection((v28 + 56), v39, 24000.0, 2048.0);
          if (!started)
          {
            started = HapticAudioUnit::addCustomAudioOffsetStartTimeConnection((v28 + 56), v39);
            Smart<__CFString const*>::~Smart(buf);
            if (started)
            {
              goto LABEL_50;
            }

LABEL_54:
            v55 = v39;
            CustomZoneVelocity = HapticAudioUnit::getCustomZoneVelocity((v28 + 56), v39);
            if (CustomZoneVelocity != -1)
            {
              v41 = *(streamDescription + 24);
              if (kHPRSScope)
              {
                if (*(kHPRSScope + 8))
                {
                  v42 = *kHPRSScope;
                  if (*kHPRSScope)
                  {
                    if (os_log_type_enabled(*kHPRSScope, OS_LOG_TYPE_DEBUG))
                    {
                      v43 = *(streamDescription + 28);
                      *buf = 136317186;
                      *&buf[4] = "HapticAudioUnit.cpp";
                      v88 = 1024;
                      *v89 = 39;
                      *&v89[4] = 2080;
                      *&v89[6] = "addAudioSample";
                      *&v89[14] = 2048;
                      *&v89[16] = bytes;
                      *&v89[24] = 1024;
                      LODWORD(v90) = v41 * v56;
                      WORD2(v90) = 1024;
                      *(&v90 + 6) = v43;
                      WORD5(v90) = 1024;
                      HIDWORD(v90) = v56;
                      v91 = 1024;
                      v92 = v41;
                      v93 = 1024;
                      LODWORD(v94) = v57;
                      _os_log_impl(&dword_1B9A08000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding raw audio sample %p, size %u bytes. Raw audio has %u channels, %u frames, %u Bytes per frame, clientProcessTaskToken: %u", buf, 0x44u);
                    }
                  }
                }
              }

              v78 = 0;
              *v73 = bytes;
              v74 = (v41 * v56);
              v44 = *streamDescription;
              v45 = *(streamDescription + 16);
              v77 = *(streamDescription + 32);
              v75 = v44;
              v76 = v45;
              LODWORD(v78) = v57;
              v94 = 0x200000000;
              *buf = v73;
              os_unfair_recursive_lock_lock_with_options();
              v46 = *(v28 + 112);
              if (v46)
              {
                v47 = *(v46 + 16);
              }

              else
              {
                v47 = 0;
              }

              started = AudioUnitSetProperty(v47, 0x1030u, 4u, 0, buf, 0x48u);
              os_unfair_recursive_lock_unlock();
              if (!started)
              {
                started = HapticAudioUnit::addZoneForSample((v28 + 56), v94, v55, v36, CustomZoneVelocity, v68, 1, 0, buf, v54);
                LODWORD(v33) = v36 | (CustomZoneVelocity << 8);
                goto LABEL_51;
              }

              if (kHPRSScope)
              {
                v53 = *kHPRSScope;
                if (!*kHPRSScope)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v53 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *v79 = 136315906;
                v80 = "HapticAudioUnit.cpp";
                v81 = 1024;
                v82 = 46;
                v83 = 2080;
                v84 = "addAudioSample";
                v85 = 1024;
                v86 = started;
                _os_log_impl(&dword_1B9A08000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to load generated sample: err %d", v79, 0x22u);
              }

              goto LABEL_50;
            }

            if (kHCARScope)
            {
              v33 = *kHCARScope;
              if (!*kHCARScope)
              {
LABEL_88:
                started = -4825;
                goto LABEL_51;
              }
            }

            else
            {
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HapticAudioUnit.cpp";
              v88 = 1024;
              *v89 = 1137;
              *&v89[4] = 2080;
              *&v89[6] = "createCustomAudioEvent";
              _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to find a velocity slot for this event", buf, 0x1Cu);
            }

            LODWORD(v33) = 0;
            goto LABEL_88;
          }
        }
      }
    }
  }

  Smart<__CFString const*>::~Smart(buf);
LABEL_50:
  LODWORD(v33) = 0;
LABEL_51:
  CACFDictionary::~CACFDictionary(&v70);
  std::mutex::unlock((v25 + 1));
  if (!started)
  {
    v48 = v25[34];
    *buf = v25 + 12;
    buf[8] = 1;
    std::__shared_mutex_base::lock((v25 + 12));
    *&v89[2] = v25 + 9;
    *&v89[10] = v25 + 33;
    *&v89[18] = v48;
    *(v25 + 264) = 1;
    *v73 = v33 | 0x100000000;
    std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>();
  }

  v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:started userInfo:0];
  eventCopy = v60;
LABEL_63:
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  objc_sync_exit(v19);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v49 = *kHCARScope;
      if (v49)
      {
        v50 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v51 = _Block_copy(replyCopy);
          *buf = 136316418;
          *&buf[4] = "AVHapticServer.mm";
          v88 = 1024;
          *v89 = 1092;
          *&v89[4] = 2080;
          *&v89[6] = "[AVHapticServerInstance createCustomAudioEvent:format:frames:options:reply:]";
          *&v89[14] = 2048;
          *&v89[16] = v51;
          *&v89[24] = 1024;
          LODWORD(v90) = v33;
          WORD2(v90) = 2112;
          *(&v90 + 6) = v32;
          _os_log_impl(&dword_1B9A08000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with eventID %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v33, v32);

  XOSTransactor::endTransaction(v65);
  XOSTransactor::~XOSTransactor(v65);

  v52 = *MEMORY[0x1E69E9840];
}

- (void)releaseClientResources
{
  v33 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v26 = "AVHapticServer.mm";
    v27 = 1024;
    v28 = 1050;
    v29 = 2080;
    v30 = "[AVHapticServerInstance releaseClientResources]";
    v31 = 2048;
    v32 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    v8 = self->_master;
  }

  else
  {
    v8 = 0;
    v23 = 0;
    v24 = 0;
  }

  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v26 = "AVHapticServer.mm";
          v27 = 1024;
          v28 = 1056;
          v29 = 2080;
          v30 = "[AVHapticServerInstance releaseClientResources]";
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = __48__AVHapticServerInstance_releaseClientResources__block_invoke;
  v17[3] = &unk_1F37BD748;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(v19, &location);
  v19[1] = v23;
  v20 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v11 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v11, v17, 0, "[AVHapticServerInstance releaseClientResources]", "AVHapticServer.mm", 1060);

  if (_os_feature_enabled_impl())
  {
    ptr = self->_hapticSession.__ptr_;
    if (ptr)
    {
      (*(*ptr + 56))(ptr, 0);
    }
  }

  v13 = self->_master;
  v15 = v23;
  v16 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(AVHapticServer *)v13 doReleaseClientResources:&v15];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  objc_destroyWeak(v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  objc_sync_exit(v6);

  v14 = *MEMORY[0x1E69E9840];
}

void __48__AVHapticServerInstance_releaseClientResources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWasRunningAndSuspended:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 doStopRunning:&v5 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v5), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)allocateClientResources:(id)resources
{
  v53 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v42 = "AVHapticServer.mm";
    v43 = 1024;
    v44 = 1021;
    v45 = 2080;
    v46 = "[AVHapticServerInstance allocateClientResources:]";
    v47 = 2048;
    v48 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v8 = self->_master;
  objc_sync_enter(v8);
  master = self->_master;
  v40 = 0;
  v10 = [(AVHapticServer *)master incrementInit:&v40];
  v11 = v40;
  if (!v10)
  {
    (*(resourcesCopy + 2))(resourcesCopy, 0, 0, v11);
    goto LABEL_61;
  }

  v12 = self->_master;
  if (!v12)
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_18;
  }

  [(AVHapticServer *)v12 entryWithID:self->_clientID];
  if (!v38)
  {
LABEL_18:
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];

    v11 = v17;
    (*(resourcesCopy + 2))(resourcesCopy, 0, 0, v17);
    goto LABEL_59;
  }

  v37 = xpc_null_create();
  v36 = 2688;
  v13 = v38;
  ptr = self->_hapticSession.__ptr_;
  cntrl = self->_hapticSession.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = v38[3];
    *buf = 136315906;
    v42 = "ClientEntry.mm";
    v43 = 1024;
    v44 = 152;
    v45 = 2080;
    v46 = "initialize";
    v47 = 1024;
    LODWORD(v48) = v19;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x", buf, 0x22u);
  }

LABEL_23:
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v20 = v38[9];
  v38[8] = ptr;
  *(v13 + 72) = cntrl;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = HapticSharedMemoryReader::allocate((v13 + 128), &v37, &v36);
  if (v21)
  {
    goto LABEL_40;
  }

  ClientEntry::setState(v13, 1u);
  if (*(v13 + 472))
  {
    CAAssertRtn();
    goto LABEL_63;
  }

  if (SupportsMultiAudioOutput::once != -1)
  {
LABEL_63:
    dispatch_once(&SupportsMultiAudioOutput::once, &__block_literal_global_3_12895);
  }

  v21 = 0;
  if (gHapticAudioMultiOutputEnabled == 1 && ptr)
  {
    if (kHSRVScope)
    {
      v22 = *kHSRVScope;
      if (!v22)
      {
LABEL_39:
        v25 = *(*(v13 + 224) + 232);
        v26 = *(v13 + 24);
        v27 = (*(**(v13 + 64) + 16))(*(v13 + 64));
        v21 = (*(*v25 + 136))(v25, v26, v27, v13 + 32);
        goto LABEL_40;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = *(v13 + 24);
      *buf = 136315906;
      v42 = "ClientEntry.mm";
      v43 = 1024;
      v44 = 191;
      v45 = 2080;
      v46 = "addAudioOutput";
      v47 = 2048;
      v48 = v24;
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Registering audio SynthOutput for client ID: 0x%lx", buf, 0x26u);
    }

    goto LABEL_39;
  }

LABEL_40:
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (v21)
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v21 userInfo:0];
  }

  else
  {
    v28 = 0;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v29 = *kHSRVScope;
      if (v29)
      {
        v30 = v29;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v31 = _Block_copy(resourcesCopy);
          *buf = 136316418;
          v42 = "AVHapticServer.mm";
          v43 = 1024;
          v44 = 1040;
          v45 = 2080;
          v46 = "[AVHapticServerInstance allocateClientResources:]";
          v47 = 2048;
          v48 = v31;
          v49 = 1024;
          v50 = v36;
          v51 = 2112;
          v52 = v28;
          _os_log_impl(&dword_1B9A08000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with sharedBufferSize %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  v32 = v37;
  (*(resourcesCopy + 2))(resourcesCopy, v37, v36, v28);
  if (!kHSRVScope)
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
    goto LABEL_55;
  }

  v33 = *kHSRVScope;
  if (v33)
  {
LABEL_55:
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v42 = "AVHapticServer.mm";
      v43 = 1024;
      v44 = 1042;
      v45 = 2080;
      v46 = "[AVHapticServerInstance allocateClientResources:]";
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Done", buf, 0x1Cu);
    }
  }

  v11 = v28;
LABEL_59:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

LABEL_61:

  objc_sync_exit(v8);
  v35 = *MEMORY[0x1E69E9840];
}

- (void)queryCapabilities:(id)capabilities reply:(id)reply
{
  v73 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__4369;
  v68 = __Block_byref_object_dispose__4370;
  v69 = 0;
  v9 = unk_1F37DEF88(capabilitiesCopy, "objectForKey:", @"RequestedLocality");
  memset(&__p, 0, sizeof(__p));
  if ([v9 length])
  {
    v10 = v9;
    std::string::basic_string[abi:ne200100]<0>(buf, [v9 UTF8String]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *buf;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__count_unique<std::string>(*(*([(AVHapticServer *)self->_master manager]+ 232) + 16), &__p))
    {
      if (kHSRVScope)
      {
        v12 = *kHSRVScope;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 848;
        *&buf[18] = 2080;
        *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
        v71 = 2080;
        v72 = p_p;
        _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Found Locality: %s", buf, 0x26u);
      }

LABEL_21:
      v16 = *([(AVHapticServer *)self->_master manager]+ 232);
      *buf = &__p;
      std::__tree<std::__value_type<std::string,Locality>,std::__map_value_compare<std::string,std::__value_type<std::string,Locality>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Locality>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v16 + 8, &__p);
      operator new();
    }
  }

  else
  {
    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 843;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Locality passed in", buf, 0x1Cu);
    }
  }

LABEL_26:
  master = self->_master;
  if (!master)
  {
    v61 = 0;
    v62 = 0;
    goto LABEL_35;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v61)
  {
LABEL_35:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    v26 = v65[5];
    v65[5] = v25;

    replyCopy[2](replyCopy, 0, v65[5]);
    v27 = v9;
    goto LABEL_104;
  }

  v19 = unk_1F37DEF90(capabilitiesCopy, "objectForKey:", @"RequestedPriority");
  v20 = v19;
  if (!v19)
  {
    goto LABEL_39;
  }

  unsignedIntegerValue = [v19 unsignedIntegerValue];
  v22 = unsignedIntegerValue;
  if (unsignedIntegerValue > 1)
  {
    switch(unsignedIntegerValue)
    {
      case 2:
        v23 = v61;
        v24 = 1001;
        goto LABEL_48;
      case 3:
        v23 = v61;
        v24 = 1003;
        goto LABEL_48;
      case 4:
        v23 = v61;
        v24 = 1002;
LABEL_48:
        *(v23 + 104) = v24;
        goto LABEL_49;
    }

    goto LABEL_65;
  }

  if (!unsignedIntegerValue)
  {
LABEL_39:
    if (kHSRVScope)
    {
      v28 = *kHSRVScope;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 883;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Priority passed in", buf, 0x1Cu);
    }

LABEL_49:
    v30 = unk_1F37DEF98(capabilitiesCopy, "objectForKey:", @"RequestedPowerUsage");

    if (v30)
    {
      unsignedIntegerValue2 = [v30 unsignedIntegerValue];
      v32 = unsignedIntegerValue2;
      if (unsignedIntegerValue2)
      {
        if (unsignedIntegerValue2 == 11)
        {
          *(v61 + 108) = 1;
          goto LABEL_73;
        }

        if (unsignedIntegerValue2 == 10)
        {
          *(v61 + 108) = 0;
          goto LABEL_73;
        }

        if (kHSRVScope)
        {
          v35 = *kHSRVScope;
          if (!v35)
          {
LABEL_72:
            v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4850 userInfo:0];
            v39 = v65[5];
            v65[5] = v38;

            replyCopy[2](replyCopy, 0, v65[5]);
            goto LABEL_73;
          }
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
          v37 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 912;
          *&buf[18] = 2080;
          *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
          v71 = 1024;
          LODWORD(v72) = v32;
          _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal power usage: %u", buf, 0x22u);
        }

        goto LABEL_72;
      }
    }

    if (kHSRVScope)
    {
      v33 = *kHSRVScope;
      if (!v33)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 909;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Power usage passed in", buf, 0x1Cu);
    }

LABEL_73:
    v40 = unk_1F37DEFA0(capabilitiesCopy, "objectForKey:", @"AllowBackgroundHaptics");

    v41 = v40;
    if (v40)
    {
      *(v61 + 220) = [v40 BOOLValue];
    }

    v27 = unk_1F37DEFA8(capabilitiesCopy, "objectForKey:", @"RequestedUsageCategory");

    if (!v27)
    {
      goto LABEL_83;
    }

    v42 = v27;
    if ([v42 isEqualToString:@"UIFeedback"])
    {
      v43 = 1;
    }

    else
    {
      if (![v42 isEqualToString:@"iOSKeyboard"])
      {
        *(v61 + 112) = 0;
        goto LABEL_82;
      }

      v43 = 2;
    }

    *(v61 + 112) = v43;
LABEL_82:

LABEL_83:
    if (HardwareSupportsHaptics::sCheckServer_Once[0] != -1)
    {
      dispatch_once(HardwareSupportsHaptics::sCheckServer_Once, &__block_literal_global_12884);
    }

    v44 = HardwareSupportsHaptics::sHapticsSupported;
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v45 = *kHSRVScope;
        if (v45)
        {
          v46 = v45;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 934;
            *&buf[18] = 2080;
            *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
            v71 = 2112;
            v72 = capabilitiesCopy;
            _os_log_impl(&dword_1B9A08000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: queries: %@", buf, 0x26u);
          }
        }
      }
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3321888768;
    v52[2] = __50__AVHapticServerInstance_queryCapabilities_reply___block_invoke;
    v52[3] = &unk_1F37BD780;
    v47 = v8;
    v60 = v44;
    v53 = v47;
    v55 = v61;
    v56 = v62;
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = 0;
    v58 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v59, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v59 = __p;
    }

    v54 = &v64;
    unk_1F37DEFB0(capabilitiesCopy, "enumerateKeysAndObjectsUsingBlock:", v52);
    (replyCopy)[2](replyCopy, v47, v65[5]);
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    goto LABEL_103;
  }

  if (unsignedIntegerValue == 1)
  {
    v23 = v61;
    v24 = 1000;
    goto LABEL_48;
  }

LABEL_65:
  if (!kHSRVScope)
  {
    v36 = MEMORY[0x1E69E9C10];
    v49 = MEMORY[0x1E69E9C10];
    goto LABEL_110;
  }

  v36 = *kHSRVScope;
  if (v36)
  {
LABEL_110:
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 886;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      v71 = 1024;
      LODWORD(v72) = v22;
      _os_log_impl(&dword_1B9A08000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal priority: %u", buf, 0x22u);
    }
  }

  v50 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4850 userInfo:0];
  v51 = v65[5];
  v65[5] = v50;

  replyCopy[2](replyCopy, 0, v65[5]);
  v41 = v20;
  v27 = v9;
LABEL_103:

LABEL_104:
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v64, 8);
  v48 = *MEMORY[0x1E69E9840];
}

void __50__AVHapticServerInstance_queryCapabilities_reply___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v61 = "AVHapticServer.mm";
          v62 = 1024;
          v63 = 938;
          v64 = 2080;
          v65 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
          v66 = 2112;
          v67 = v7;
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: key: %@", buf, 0x26u);
        }
      }
    }
  }

  if ([v7 isEqualToString:@"SupportsHapticPlayback"])
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 104)];
    [v11 setObject:v12 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"SupportsAudioPlayback"] || objc_msgSend(v7, "isEqualToString:", @"SupportsAdvancedPatternPlayers"))
  {
    goto LABEL_15;
  }

  if ([v7 isEqualToString:@"HapticContinuousTimeLimit"])
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:30];
    [v13 setObject:v14 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"UsingInternalHaptics"])
  {
LABEL_15:
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v15 setObject:v16 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"BuiltInAudioEventIDs"])
  {
    v17 = *(a1 + 32);
    v18 = ClientEntry::getBuiltInAudioEventsDictionary(*(a1 + 48));
    [v17 setObject:v18 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientDefaultIntensity"])
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      v21 = *(a1 + 32);
      LODWORD(v19) = *(v20 + 36);
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v21 setObject:v22 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientDefaultSharpness"])
  {
    v24 = *(a1 + 64);
    if (v24)
    {
      v25 = *(a1 + 32);
      LODWORD(v23) = *(v24 + 40);
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      [v25 setObject:v26 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticContinuousDefaultIntensity"])
  {
    v28 = *(a1 + 64);
    if (v28)
    {
      v29 = *(a1 + 32);
      LODWORD(v27) = *(v28 + 44);
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
      [v29 setObject:v30 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticContinuousDefaultSharpness"])
  {
    v32 = *(a1 + 64);
    if (v32)
    {
      v33 = *(a1 + 32);
      LODWORD(v31) = *(v32 + 48);
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      [v33 setObject:v34 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientEventIDs"])
  {
    v35 = *(a1 + 64);
    if (!v35)
    {
      goto LABEL_42;
    }

    v36 = *(a1 + 32);
    memset(v59, 0, sizeof(v59));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v59, *(v35 + 56), *(v35 + 64), (*(v35 + 64) - *(v35 + 56)) >> 2);
    v37 = vectorOfUInt32ToNSArray(v59);
    [v36 setObject:v37 forKey:v7];

    v38 = v59[0];
    if (!v59[0])
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ([v7 isEqualToString:@"HapticContinuousSustainedEventIDs"])
  {
    v39 = *(a1 + 64);
    if (!v39)
    {
      goto LABEL_42;
    }

    v40 = *(a1 + 32);
    memset(v58, 0, sizeof(v58));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v58, *(v39 + 80), *(v39 + 88), (*(v39 + 88) - *(v39 + 80)) >> 2);
    v41 = vectorOfUInt32ToNSArray(v58);
    [v40 setObject:v41 forKey:v7];

    v38 = v58[0];
    if (!v58[0])
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ([v7 isEqualToString:@"HapticContinuousNonsustainedEventIDs"])
  {
    v42 = *(a1 + 64);
    if (!v42)
    {
      goto LABEL_42;
    }

    v43 = *(a1 + 32);
    memset(__p, 0, sizeof(__p));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *(v42 + 104), *(v42 + 112), (*(v42 + 112) - *(v42 + 104)) >> 2);
    v44 = vectorOfUInt32ToNSArray(__p);
    [v43 setObject:v44 forKey:v7];

    v38 = __p[0];
    if (!__p[0])
    {
      goto LABEL_42;
    }

LABEL_41:
    operator delete(v38);
    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"RequestedPriority"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"RequestedPowerUsage") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"RequestedUsageCategory") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"AllowBackgroundHaptics"))
  {
    goto LABEL_42;
  }

  v47 = *(a1 + 103);
  if (v47 < 0)
  {
    v47 = *(a1 + 88);
  }

  if (!v47)
  {
    v50 = CALog::LogObjIfEnabled(2, kHSRVScope, v46);
    v49 = v50;
    if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v61 = "AVHapticServer.mm";
      v62 = 1024;
      v63 = 1009;
      v64 = 2080;
      v65 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
      v66 = 2112;
      v67 = v7;
      _os_log_impl(&dword_1B9A08000, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Unrecognized server query: '%@'", buf, 0x26u);
    }

    goto LABEL_55;
  }

  if (*(a1 + 104) != 1 || *(a1 + 64))
  {
    v48 = CALog::LogObjIfEnabled(4, kHSRVScope, v46);
    v49 = v48;
    if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v61 = "AVHapticServer.mm";
      v62 = 1024;
      v63 = 1005;
      v64 = 2080;
      v65 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v49, OS_LOG_TYPE_INFO, "%25s:%-5d %s: No Localities supported by server - ignoring", buf, 0x1Cu);
    }

LABEL_55:

    goto LABEL_42;
  }

  v51 = CALog::LogObjIfEnabled(1, kHSRVScope, v46);
  v52 = v51;
  if (v51 && os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    v53 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v53 = *v53;
    }

    *buf = 136315906;
    v61 = "AVHapticServer.mm";
    v62 = 1024;
    v63 = 1000;
    v64 = 2080;
    v65 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
    v66 = 2080;
    v67 = v53;
    _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to find Locality: %s", buf, 0x26u);
  }

  v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4850 userInfo:0];
  v55 = *(*(a1 + 40) + 8);
  v56 = *(v55 + 40);
  *(v55 + 40) = v54;

  *a4 = 1;
LABEL_42:

  v45 = *MEMORY[0x1E69E9840];
}

- (void)configureWithOptions:(id)options reply:(id)reply
{
  v51 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v37 = [optionsCopy objectForKey:@"AudioSessionID"];
  v36 = [optionsCopy objectForKey:@"AudioSessionIsShared"];
  v35 = [optionsCopy objectForKey:@"BypassAudioSession"];
  v8 = [optionsCopy objectForKey:@"ClientProcessTaskToken"];
  unsignedIntegerValue = [v37 unsignedIntegerValue];
  bOOLValue = [v36 BOOLValue];
  bOOLValue2 = [v35 BOOLValue];
  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = "not shared";
    *buf = 136316418;
    v42 = "AVHapticServer.mm";
    v44 = 792;
    v43 = 1024;
    v46 = "[AVHapticServerInstance configureWithOptions:reply:]";
    v45 = 2080;
    if (bOOLValue)
    {
      v14 = "shared";
    }

    v47 = 1024;
    *v48 = unsignedIntegerValue;
    *&v48[4] = 2080;
    *&v48[6] = v14;
    v49 = 1024;
    v50 = bOOLValue2;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] called by client with sessionID: %u (%s), bypassAudioSession: %u", buf, 0x32u);
  }

LABEL_10:
  if (v8)
  {
    taskTokenDictionary = [v8 taskTokenDictionary];
    v16 = xpc_dictionary_copy_mach_send();
  }

  else
  {
    v16 = 0;
  }

  if (kHSRVScope)
  {
    v17 = *kHSRVScope;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v42 = "AVHapticServer.mm";
    v43 = 1024;
    v44 = 796;
    v45 = 2080;
    v46 = "[AVHapticServerInstance configureWithOptions:reply:]";
    v47 = 1024;
    *v48 = v16;
    _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s: taskToken: %u", buf, 0x22u);
  }

LABEL_20:
  master = self->_master;
  if (!master)
  {
    v39 = 0;
    v40 = 0;
LABEL_27:
    if (kHSRVScope)
    {
      v21 = *kHSRVScope;
      if (!v21)
      {
LABEL_34:
        v24 = 0;
LABEL_45:
        replyCopy[2](replyCopy, v24);
        v31 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      clientID = self->_clientID;
      *buf = 136315906;
      v42 = "AVHapticServer.mm";
      v43 = 1024;
      v44 = 814;
      v45 = 2080;
      v46 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v47 = 2048;
      *v48 = clientID;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: No matching entry found for clientID 0x%lx", buf, 0x26u);
    }

    goto LABEL_34;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v39)
  {
    goto LABEL_27;
  }

  *(v39 + 216) = v16;
  if (bOOLValue2)
  {
    if (kHSRVScope)
    {
      v20 = *kHSRVScope;
      if (!v20)
      {
LABEL_44:
        v24 = self->_clientID;
        goto LABEL_45;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v30 = self->_clientID;
      *buf = 136315906;
      v42 = "AVHapticServer.mm";
      v43 = 1024;
      v44 = 802;
      v45 = 2080;
      v46 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v47 = 2048;
      *v48 = v30;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Skipping setting up AudioSession; replying with 0x%lx", buf, 0x26u);
    }

    goto LABEL_44;
  }

  v38 = 0;
  v25 = [(AVHapticServerInstance *)self setupAudioSessionFromID:unsignedIntegerValue isShared:bOOLValue error:&v38];
  v26 = v38;
  if (v25)
  {
    if (kHSRVScope)
    {
      v27 = *kHSRVScope;
      if (!v27)
      {
LABEL_53:
        v28 = self->_clientID;
        goto LABEL_54;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v34 = self->_clientID;
      *buf = 136315906;
      v42 = "AVHapticServer.mm";
      v43 = 1024;
      v44 = 806;
      v45 = 2080;
      v46 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v47 = 2048;
      *v48 = v34;
      _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_INFO, "%25s:%-5d %s: replying with 0x%lx", buf, 0x26u);
    }

    goto LABEL_53;
  }

  v28 = 0;
LABEL_54:
  replyCopy[2](replyCopy, v28);
  v31 = v26;
LABEL_46:
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)setupAudioSessionFromID:(unsigned int)d isShared:(BOOL)shared error:(id *)error
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&buf, 0, sizeof(buf));
  HapticSession::create_shared(number, d, shared, &buf);
}

- (void)handleConnectionError
{
  v63 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v55 = "AVHapticServer.mm";
    v56 = 1024;
    v57 = 687;
    v58 = 2080;
    v59 = "[AVHapticServerInstance handleConnectionError]";
    v60 = 2048;
    *v61 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  [(AVHapticServerInstance *)self removeSessionListeners];
  master = self->_master;
  if (!master)
  {
    v52 = 0;
    v53 = 0;
    goto LABEL_93;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v52)
  {
    goto LABEL_93;
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_master);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v8 = *kHSRVScope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v55 = "AVHapticServer.mm";
          v56 = 1024;
          v57 = 694;
          v58 = 2080;
          v59 = "[AVHapticServerInstance handleConnectionError]";
          _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopPrewarm and doStopRunning on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3321888768;
  v46[2] = __47__AVHapticServerInstance_handleConnectionError__block_invoke;
  v46[3] = &unk_1F37BD748;
  objc_copyWeak(&v47, &from);
  objc_copyWeak(v48, &location);
  v48[1] = v52;
  v49 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v46[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v10 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v10, v46, 0, "[AVHapticServerInstance handleConnectionError]", "AVHapticServer.mm", 705);

  if (_os_feature_enabled_impl())
  {
    ptr = self->_hapticSession.__ptr_;
    if (ptr)
    {
      (*(*ptr + 56))(ptr, 0);
    }
  }

  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v55 = "AVHapticServer.mm";
    v56 = 1024;
    v57 = 709;
    v58 = 2080;
    v59 = "[AVHapticServerInstance handleConnectionError]";
    v60 = 2048;
    *v61 = v52;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Releasing resources (if necessary), unregistering and destroying client entry %p", buf, 0x26u);
  }

LABEL_31:
  v14 = self->_master;
  v44 = v52;
  v45 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(AVHapticServer *)v14 doReleaseClientResources:&v44];
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v15 = v52[54];
  if (v15 - 1 > 0xFFFFFFFD)
  {
    goto LABEL_51;
  }

  if (!kHSRVScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_40;
  }

  v16 = *kHSRVScope;
  if (v16)
  {
LABEL_40:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v55 = "AVHapticServer.mm";
      v56 = 1024;
      v57 = 713;
      v58 = 2080;
      v59 = "[AVHapticServerInstance handleConnectionError]";
      v60 = 1024;
      *v61 = v15;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: deallocating client process task token: %u", buf, 0x22u);
    }
  }

  v18 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
  if (!v18)
  {
    goto LABEL_51;
  }

  if (kHSRVScope)
  {
    v19 = *kHSRVScope;
    if (!v19)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v55 = "AVHapticServer.mm";
    v56 = 1024;
    v57 = 715;
    v58 = 2080;
    v59 = "[AVHapticServerInstance handleConnectionError]";
    v60 = 1024;
    *v61 = v15;
    *&v61[4] = 1024;
    *&v61[6] = v18;
    _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: mach_port_deallocate of client process task token %u failed with %d", buf, 0x28u);
  }

LABEL_51:
  manager = [(AVHapticServer *)self->_master manager];
  v23 = v52;
  v22 = v53;
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v24 = *kHSRVScope;
      if (v24)
      {
        v25 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v23 + 3);
          *buf = 136315906;
          v55 = "ServerManager.mm";
          v56 = 1024;
          v57 = 1211;
          v58 = 2080;
          v59 = "removeEntry";
          v60 = 2048;
          *v61 = v26;
          _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client ID: 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  std::__shared_mutex_base::lock((manager + 3));
  v27 = manager[1];
  v28 = 1;
  *(manager + 192) = 1;
  if (v27)
  {
    v29 = *(v23 + 3);
    v30 = (manager + 1);
    v31 = v27;
    do
    {
      v32 = v31[4];
      v33 = v32 >= v29;
      v34 = v32 < v29;
      if (v33)
      {
        v30 = v31;
      }

      v31 = v31[v34];
    }

    while (v31);
    if (v30 == (manager + 1) || v29 < v30[4])
    {
      v28 = 1;
    }

    else
    {
      v35 = v30[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        v37 = v30;
        do
        {
          v36 = v37[2];
          v38 = *v36 == v37;
          v37 = v36;
        }

        while (!v38);
      }

      if (*manager == v30)
      {
        *manager = v36;
      }

      manager[2] = (manager[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v27, v30);
      v39 = v30[6];
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      operator delete(v30);
      v28 = 0;
    }
  }

  *(manager + 192) = 0;
  std::__shared_mutex_base::unlock((manager + 3));
  if (v28)
  {
    if (kHSRVScope)
    {
      v40 = *kHSRVScope;
      if (!v40)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v23 + 3);
      *buf = 136316162;
      v55 = "ServerManager.mm";
      v56 = 1024;
      v57 = 1213;
      v58 = 2080;
      v59 = "removeEntry";
      v60 = 2048;
      *v61 = v23;
      *&v61[8] = 2048;
      v62 = v42;
      _os_log_impl(&dword_1B9A08000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid client entry: %p (connectionID 0x%lx)", buf, 0x30u);
    }

    goto LABEL_88;
  }

  ClientEntry::uninitialize(v23);
LABEL_88:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  objc_destroyWeak(v48);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
LABEL_93:
  [(AVHapticServer *)self->_master removeProcessEntry:self->_clientID];
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  objc_sync_exit(v6);

  v43 = *MEMORY[0x1E69E9840];
}

void __47__AVHapticServerInstance_handleConnectionError__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (!WeakRetained)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "AVHapticServer.mm";
      v22 = 1024;
      v23 = 696;
      v24 = 2080;
      v25 = "[AVHapticServerInstance handleConnectionError]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Server master is already nil - no call to stop prewarm or running possible", buf, 0x1Cu);
    }
  }

LABEL_9:
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setWasPrewarmedAndSuspended:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v6 doStopPrewarm:&v18 audio:objc_msgSend(*(a1 + 32) haptics:{"prewarmIncludesAudio"), objc_msgSend(*(a1 + 32), "prewarmIncludesHaptics")}];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setWasRunningAndSuspended:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = *(a1 + 64);
  v16 = *(a1 + 56);
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v9 doStopRunning:&v16 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v16), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 setClientSuspended:0];

  v12 = objc_loadWeakRetained((a1 + 48));
  [v12 setWasPrewarmedAndSuspended:0];

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 setClientInterrupted:0];

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 setRunningInBackground:0];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v3 = *kHSRVScope;
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v9 = "AVHapticServer.mm";
          v10 = 1024;
          v11 = 680;
          v12 = 2080;
          v13 = "[AVHapticServerInstance dealloc]";
          _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Entered", buf, 0x1Cu);
        }
      }
    }
  }

  [(AVHapticServerInstance *)self removeSessionListeners];
  connection = self->_connection;
  self->_connection = 0;

  v7.receiver = self;
  v7.super_class = AVHapticServerInstance;
  [(AVHapticServerInstance *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeSessionListeners
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->_listenerWrapper)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
LABEL_9:
        MEMORY[0x1BFAE2A20]();
        listenerWrapper = self->_listenerWrapper;
        v7 = *MEMORY[0x1E69AFAF8];
        ptr = self->_clientSession.__ptr_;
        v9 = FigNotificationCenterRemoveWeakListener();
        MEMORY[0x1BFAE2A20](v9);
        v10 = self->_listenerWrapper;
        v11 = *MEMORY[0x1E69AED90];
        v12 = self->_clientSession.__ptr_;
        FigNotificationCenterRemoveWeakListener();
        master = [(AVHapticServerInstance *)self master];
        v14 = self->_listenerWrapper;
        v15 = (*(*self->_hapticSession.__ptr_ + 16))(self->_hapticSession.__ptr_);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__AVHapticServerInstance_removeSessionListeners__block_invoke;
        block[3] = &unk_1E7ECEC00;
        v21 = master;
        v22 = v14;
        v23 = v15;
        v16 = v14;
        v17 = master;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        v18 = self->_listenerWrapper;
        self->_listenerWrapper = 0;

        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      clientID = self->_clientID;
      *buf = 136315906;
      v25 = "AVHapticServer.mm";
      v26 = 1024;
      v27 = 664;
      v28 = 2080;
      v29 = "[AVHapticServerInstance removeSessionListeners]";
      v30 = 2048;
      v31 = clientID;
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Removing session listeners on client 0x%lx", buf, 0x26u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v19 = *MEMORY[0x1E69E9840];
}

- (AVHapticServerInstance)initWithMaster:(id)master id:(unint64_t)id connection:(id)connection outError:(id *)error
{
  masterCopy = master;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = AVHapticServerInstance;
  v12 = [(AVHapticServerInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_master, master);
    objc_storeStrong(&v13->_connection, connection);
    v13->_clientID = id;
    *&v13->_clientSuspended = 0;
    v13->_runningInBackground = 0;
  }

  return v13;
}

- (void)handleInterruptionForSession:(const void *)session command:(unsigned int)command dictionary:(id)dictionary
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!AQMESession::isSameAudioSession(&self->_aqmeSession, session))
  {
    goto LABEL_93;
  }

  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v48 = "AVHapticServer.mm";
    v49 = 1024;
    v50 = 528;
    v51 = 2080;
    v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
    v53 = 2048;
    v54 = clientID;
    v55 = 1024;
    commandCopy = command;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Handling session interruption notification for client 0x%lx, interruption cmd: %u", buf, 0x2Cu);
  }

LABEL_9:
  master = self->_master;
  if (!master)
  {
    v45 = 0;
    v46 = 0;
    goto LABEL_91;
  }

  [(AVHapticServer *)master entryWithID:self->_clientID];
  if (!v45)
  {
    goto LABEL_91;
  }

  v43 = dictionaryCopy;
  v44 = 0;
  v41 = 0.5;
  v42 = 0.0;
  if (command <= 3)
  {
    if (command <= 1)
    {
      if (command)
      {
        if (command == 1)
        {
          if (!kHSRVScope)
          {
            goto LABEL_90;
          }

          if ((*(kHSRVScope + 8) & 1) == 0)
          {
            goto LABEL_90;
          }

          v15 = *kHSRVScope;
          if (!v15)
          {
            goto LABEL_90;
          }

          v16 = v15;
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_74;
          }

          *buf = 136315650;
          v48 = "AVHapticServer.mm";
          v49 = 1024;
          v50 = 548;
          v51 = 2080;
          v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
          v17 = "%25s:%-5d %s: Ignoring InterruptionEnded";
          v18 = v16;
          v19 = 28;
          goto LABEL_73;
        }

LABEL_82:
        if (!kHSRVScope)
        {
          goto LABEL_90;
        }

        if ((*(kHSRVScope + 8) & 1) == 0)
        {
          goto LABEL_90;
        }

        v39 = *kHSRVScope;
        if (!v39)
        {
          goto LABEL_90;
        }

        v16 = v39;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_74;
        }

        *buf = 136315906;
        v48 = "AVHapticServer.mm";
        v49 = 1024;
        v50 = 585;
        v51 = 2080;
        v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        v53 = 1024;
        LODWORD(v54) = command;
        v17 = "%25s:%-5d %s: Ignoring cmd: 0x%x";
        v18 = v16;
        v19 = 34;
        goto LABEL_73;
      }

      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v30 = *kHSRVScope;
          if (v30)
          {
            v31 = v30;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v48 = "AVHapticServer.mm";
              v49 = 1024;
              v50 = 541;
              v51 = 2080;
              v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
              _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling StopNow", buf, 0x1Cu);
            }
          }
        }
      }

      goto LABEL_60;
    }

    if (command == 2)
    {
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v34 = *kHSRVScope;
          if (v34)
          {
            v35 = v34;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v48 = "AVHapticServer.mm";
              v49 = 1024;
              v50 = 564;
              v51 = 2080;
              v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
              _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling BeginQuietTime", buf, 0x1Cu);
            }
          }
        }
      }

      v42 = 0.0;
      CACFDictionary::GetFloat32(&v43, *MEMORY[0x1E69AFA00], &v42);
      v24 = 0;
      v22 = 0;
      v23 = 1;
      *&v14 = v42;
      goto LABEL_68;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v25 = *kHSRVScope;
        if (v25)
        {
          v26 = v25;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v48 = "AVHapticServer.mm";
            v49 = 1024;
            v50 = 571;
            v51 = 2080;
            v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
            _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling EndQuietTime", buf, 0x1Cu);
          }
        }
      }
    }

    v24 = 0;
    v22 = 0;
    v23 = 0;
    v42 = 1.0;
LABEL_38:
    LODWORD(v14) = 1.0;
    goto LABEL_68;
  }

  if (command > 5)
  {
    if (command == 6)
    {
      if (!kHSRVScope || (*(kHSRVScope + 8) & 1) == 0 || (v38 = *kHSRVScope) == 0)
      {
        v29 = 1;
        goto LABEL_89;
      }

      v28 = v38;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v48 = "AVHapticServer.mm";
        v49 = 1024;
        v50 = 577;
        v51 = 2080;
        v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Silent Mute", buf, 0x1Cu);
      }

      v29 = 1;
    }

    else
    {
      if (command != 7)
      {
        goto LABEL_82;
      }

      if (!kHSRVScope || (*(kHSRVScope + 8) & 1) == 0 || (v27 = *kHSRVScope) == 0)
      {
        v29 = 0;
        goto LABEL_89;
      }

      v28 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v48 = "AVHapticServer.mm";
        v49 = 1024;
        v50 = 581;
        v51 = 2080;
        v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Silent UnMute", buf, 0x1Cu);
      }

      v29 = 0;
    }

LABEL_89:
    [(AVHapticServerInstance *)self muteClientForRingerSwitch:v29];
    goto LABEL_90;
  }

  if (command != 4)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v20 = *kHSRVScope;
        if (v20)
        {
          v21 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v48 = "AVHapticServer.mm";
            v49 = 1024;
            v50 = 558;
            v51 = 2080;
            v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
            _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Resume", buf, 0x1Cu);
          }
        }
      }
    }

    CACFDictionary::GetFloat32(&v43, *MEMORY[0x1E69AFA18], &v41);
    v22 = 0;
    v23 = 0;
    v42 = 1.0;
    v24 = 1;
    goto LABEL_38;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v32 = *kHSRVScope;
      if (v32)
      {
        v33 = v32;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v48 = "AVHapticServer.mm";
          v49 = 1024;
          v50 = 551;
          v51 = 2080;
          v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
          _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Pause", buf, 0x1Cu);
        }
      }
    }
  }

LABEL_60:
  CACFDictionary::GetFloat32(&v43, *MEMORY[0x1E69AFA18], &v41);
  v42 = 0.0;
  v24 = 1;
  v14 = 0.0;
  v22 = 1;
  v23 = 1;
LABEL_68:
  *&v13 = v41;
  [(AVHapticServerInstance *)self fadeClientForSessionInterruption:v23 affectHaptics:v24 fadeTime:v22 fadeLevel:v13 stopAfterFade:v14];
  if (!kHSRVScope)
  {
    goto LABEL_90;
  }

  if ((*(kHSRVScope + 8) & 1) == 0)
  {
    goto LABEL_90;
  }

  v36 = *kHSRVScope;
  if (!v36)
  {
    goto LABEL_90;
  }

  v16 = v36;
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_74;
  }

  v37 = self->_clientID;
  *buf = 136315906;
  v48 = "AVHapticServer.mm";
  v49 = 1024;
  v50 = 589;
  v51 = 2080;
  v52 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
  v53 = 2048;
  v54 = v37;
  v17 = "%25s:%-5d %s: Done handling interruption notification for client 0x%lx";
  v18 = v16;
  v19 = 38;
LABEL_73:
  _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
LABEL_74:

LABEL_90:
  CACFDictionary::~CACFDictionary(&v43);
LABEL_91:
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

LABEL_93:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)unmuteClientAfterSessionInterruption:(float)interruption
{
  v29 = *MEMORY[0x1E69E9840];
  if (!self->_clientInterrupted)
  {
    goto LABEL_30;
  }

  self->_clientInterrupted = 0;
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v19)
    {
      if (kHSRVScope)
      {
        v6 = *kHSRVScope;
        if (!v6)
        {
LABEL_17:
          manager = [(AVHapticServer *)self->_master manager];
          v14 = v20;
          v18[0] = v19;
          v18[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ServerManager::handleSessionInterruptionForEntry(interruption, 1.0, manager, v18, 0, 1);
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          if (!kHSRVScope)
          {
            goto LABEL_28;
          }

          if ((*(kHSRVScope + 8) & 1) == 0)
          {
            goto LABEL_28;
          }

          v15 = *kHSRVScope;
          if (!v15)
          {
            goto LABEL_28;
          }

          v8 = v15;
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_27;
          }

          clientID = self->_clientID;
          *buf = 136315906;
          v22 = "AVHapticServer.mm";
          v23 = 1024;
          v24 = 514;
          v25 = 2080;
          v26 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
          v27 = 2048;
          v28 = clientID;
          v10 = "%25s:%-5d %s: Done unmuting client 0x%lx";
          goto LABEL_26;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_clientID;
        *buf = 136315906;
        v22 = "AVHapticServer.mm";
        v23 = 1024;
        v24 = 512;
        v25 = 2080;
        v26 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
        v27 = 2048;
        v28 = v12;
        _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Interrupted client 0x%lx being unmuted on restart", buf, 0x26u);
      }

      goto LABEL_17;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v7 = *kHSRVScope;
      if (v7)
      {
        v8 = v7;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
LABEL_27:

          goto LABEL_28;
        }

        v9 = self->_clientID;
        *buf = 136315906;
        v22 = "AVHapticServer.mm";
        v23 = 1024;
        v24 = 517;
        v25 = 2080;
        v26 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
        v27 = 2048;
        v28 = v9;
        v10 = "%25s:%-5d %s: Client 0x%lx did not stop on interruption (or was not found)";
LABEL_26:
        _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, v10, buf, 0x26u);
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_30:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)muteClientForRingerSwitch:(BOOL)switch
{
  v22 = *MEMORY[0x1E69E9840];
  master = self->_master;
  if (master)
  {
    switchCopy = switch;
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v10)
    {
      [(AVHapticServer *)self->_master manager];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v6 = *kHSRVScope;
          if (v6)
          {
            v7 = v6;
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              v8 = *(v10 + 24);
              *buf = 136316162;
              v13 = "ServerManager.mm";
              v14 = 1024;
              v15 = 1174;
              v16 = 2080;
              v17 = "handleRingerSwitchForEntry";
              v18 = 2048;
              v19 = v8;
              v20 = 1024;
              v21 = switchCopy;
              _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client ID: 0x%lx, ringer switch: %d", buf, 0x2Cu);
            }
          }
        }
      }

      os_unfair_recursive_lock_lock_with_options();
      ClientEntry::muteAudio(v10, switchCopy, 1, 0.0);
      os_unfair_recursive_lock_unlock();
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)handleClientApplicationStateChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    v16 = 136315906;
    v17 = "AVHapticServer.mm";
    v18 = 1024;
    v19 = 458;
    v20 = 2080;
    v21 = "[AVHapticServerInstance handleClientApplicationStateChange:]";
    v22 = 2048;
    v23 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Handling app (client) state change for client 0x%lx", &v16, 0x26u);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69AFA58];
  v9 = [changeCopy objectForKey:v8];
  v10 = -[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:](self, "handleClientApplicationStateChangeUsingAppState:", [v9 unsignedIntegerValue]);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v11 = *kHSRVScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = self->_clientID;
          v16 = 136315906;
          v17 = "AVHapticServer.mm";
          v18 = 1024;
          v19 = 463;
          v20 = 2080;
          v21 = "[AVHapticServerInstance handleClientApplicationStateChange:]";
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling state change for client 0x%lx", &v16, 0x26u);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)handleClientApplicationStateChangeUsingAppState:(unint64_t)state
{
  v78 = *MEMORY[0x1E69E9840];
  if (state == 8)
  {
    if (![(AVHapticServerInstance *)self runningInBackground])
    {
      goto LABEL_106;
    }

    [(AVHapticServerInstance *)self setRunningInBackground:0];
    master = self->_master;
    if (master)
    {
      [(AVHapticServer *)master entryWithID:self->_clientID];
      if (v71)
      {
        if (kHSRVScope)
        {
          v8 = *kHSRVScope;
          if (!v8)
          {
LABEL_100:
            manager = [(AVHapticServer *)self->_master manager];
            v42 = v72;
            v64[0] = v71;
            v64[1] = v72;
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ServerManager::handleAppBackgroundingForEntry(manager, v64, 0);
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            goto LABEL_104;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v39 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          clientID = self->_clientID;
          *buf = 136315906;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 425;
          v74 = 2080;
          v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
          v76 = 2048;
          v77 = clientID;
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for backgrounded client 0x%lx returning to foreground - unmute haptics", buf, 0x26u);
        }

        goto LABEL_100;
      }
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

LABEL_104:
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

LABEL_106:
    if (![(AVHapticServerInstance *)self clientSuspended])
    {
      goto LABEL_145;
    }

    if (kHSRVScope)
    {
      v43 = *kHSRVScope;
      if (!v43)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 430;
      v74 = 2080;
      v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      v76 = 2048;
      v77 = v45;
      _os_log_impl(&dword_1B9A08000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for suspended client 0x%lx now resuming", buf, 0x26u);
    }

LABEL_114:
    [(AVHapticServerInstance *)self setClientSuspended:0];
    if (![(AVHapticServerInstance *)self wasPrewarmedAndSuspended])
    {
      goto LABEL_136;
    }

    [(AVHapticServerInstance *)self setWasPrewarmedAndSuspended:0];
    v46 = self->_master;
    if (v46)
    {
      [(AVHapticServer *)v46 entryWithID:self->_clientID];
      v47 = v71;
      if (v71)
      {
        if (kHSRVScope)
        {
          if (*(kHSRVScope + 8))
          {
            v48 = *kHSRVScope;
            if (v48)
            {
              v49 = v48;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "AVHapticServer.mm";
                *&buf[12] = 1024;
                *&buf[14] = 436;
                v74 = 2080;
                v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
                _os_log_impl(&dword_1B9A08000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doPrewarm (on ACQ) due to client resume", buf, 0x1Cu);
              }

              v47 = v71;
            }
          }
        }

        v50 = self->_master;
        v62 = v47;
        v63 = v72;
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(AVHapticServer *)v50 doPrewarm:&v62];
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

LABEL_134:
        if (v72)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
        }

LABEL_136:
        if (![(AVHapticServerInstance *)self wasRunningAndSuspended])
        {
          goto LABEL_145;
        }

        if (kHSRVScope)
        {
          v53 = *kHSRVScope;
          if (!v53)
          {
LABEL_144:
            [(AVHapticServerInstance *)self setWasRunningAndSuspended:0];
            goto LABEL_145;
          }
        }

        else
        {
          v53 = MEMORY[0x1E69E9C10];
          v54 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 444;
          v74 = 2080;
          v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
          _os_log_impl(&dword_1B9A08000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Not restarting engine after client leaves suspended state", buf, 0x1Cu);
        }

        goto LABEL_144;
      }
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v51 = *kHSRVScope;
        if (v51)
        {
          v52 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 440;
            v74 = 2080;
            v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client gone - noop", buf, 0x1Cu);
          }
        }
      }
    }

    goto LABEL_134;
  }

  stateCopy = state;
  if (state == 4)
  {
    if ([(AVHapticServerInstance *)self runningInBackground])
    {
      goto LABEL_145;
    }

    if (kHSRVScope)
    {
      v6 = *kHSRVScope;
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      v74 = 2080;
      v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      v76 = 2048;
      v77 = v12;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for client 0x%lx being run in background", buf, 0x26u);
    }

LABEL_28:
    [(AVHapticServerInstance *)self setRunningInBackground:1];
    if (![(AVHapticServerInstance *)self clientSuspended])
    {
      if (kHSRVScope)
      {
        v14 = *kHSRVScope;
        if (!v14)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 411;
        v74 = 2080;
        v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App coming from foreground - mute haptics", buf, 0x1Cu);
      }

      goto LABEL_87;
    }

    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
LABEL_82:
        [(AVHapticServerInstance *)self setClientSuspended:0];
LABEL_87:
        v36 = self->_master;
        if (v36)
        {
          [(AVHapticServer *)v36 entryWithID:self->_clientID];
          if (*buf)
          {
            manager2 = [(AVHapticServer *)self->_master manager];
            v38 = *&buf[8];
            v65[0] = *buf;
            v65[1] = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
            }

            ServerManager::handleAppBackgroundingForEntry(manager2, v65, 1);
            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = 0;
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        goto LABEL_145;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 407;
      v74 = 2080;
      v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App coming from suspended - re-mute haptics", buf, 0x1Cu);
    }

    goto LABEL_82;
  }

  if (state != 2)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v9 = *kHSRVScope;
        if (v9)
        {
          v10 = v9;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 450;
            v74 = 2080;
            v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            v76 = 1024;
            LODWORD(v77) = stateCopy;
            _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: New app state %d ignored", buf, 0x22u);
          }
        }
      }
    }

    goto LABEL_145;
  }

  if ([(AVHapticServerInstance *)self clientSuspended])
  {
LABEL_145:
    v55 = 0;
    goto LABEL_146;
  }

  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 369;
    v74 = 2080;
    v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v76 = 2048;
    v77 = v16;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for client 0x%lx being suspended", buf, 0x26u);
  }

LABEL_40:
  [(AVHapticServerInstance *)self setClientSuspended:1];
  v17 = self->_master;
  if (v17)
  {
    [(AVHapticServer *)v17 entryWithID:self->_clientID];
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  if ([(AVHapticServerInstance *)self runningInBackground])
  {
    [(AVHapticServerInstance *)self setRunningInBackground:0];
    if (!v71)
    {
      goto LABEL_73;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v19 = *kHSRVScope;
        if (v19)
        {
          v20 = v19;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 375;
            v74 = 2080;
            v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: App was in background-running - unmute haptics for suspend", buf, 0x1Cu);
          }
        }
      }
    }

    manager3 = [(AVHapticServer *)self->_master manager];
    v22 = v72;
    v70[0] = v71;
    v70[1] = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ServerManager::handleAppBackgroundingForEntry(manager3, v70, 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  if (!v71)
  {
LABEL_73:
    if (!kHSRVScope)
    {
      goto LABEL_160;
    }

    if ((*(kHSRVScope + 8) & 1) == 0)
    {
      goto LABEL_160;
    }

    v30 = *kHSRVScope;
    if (!v30)
    {
      goto LABEL_160;
    }

    v29 = v30;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_159;
    }

    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 397;
    v74 = 2080;
    v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v31 = "%25s:%-5d %s: Client gone - noop";
    v32 = v29;
    v33 = OS_LOG_TYPE_DEBUG;
LABEL_158:
    _os_log_impl(&dword_1B9A08000, v32, v33, v31, buf, 0x1Cu);
LABEL_159:

    goto LABEL_160;
  }

  if (*(v71 + 116) == 1)
  {
    [(AVHapticServerInstance *)self setWasPrewarmedAndSuspended:1];
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v23 = *kHSRVScope;
        if (v23)
        {
          v24 = v23;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 382;
            v74 = 2080;
            v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doStopPrewarm (on ACQ) due to client suspend", buf, 0x1Cu);
          }
        }
      }
    }

    v25 = self->_master;
    v68 = v71;
    v69 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(AVHapticServer *)v25 doStopPrewarm:&v68 audio:[(AVHapticServerInstance *)self prewarmIncludesAudio] haptics:[(AVHapticServerInstance *)self prewarmIncludesHaptics]];
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }
  }

  v26 = atomic_load((v71 + 120));
  if (v26 >= 2)
  {
    v27 = atomic_load((v71 + 120));
    if (v27 != 2)
    {
      v58 = CALog::LogObjIfEnabled(6, kHSRVScope, v18);
      v59 = v58;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 386;
        v74 = 2080;
        v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
        _os_log_impl(&dword_1B9A08000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doStopRunning (on ACQ) due to client suspend", buf, 0x1Cu);
      }

      [(AVHapticServerInstance *)self setWasRunningAndSuspended:1];
      v60 = self->_master;
      v66 = v71;
      v67 = v72;
      if (v72)
      {
        atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(AVHapticServer *)v60 doStopRunning:&v66 audio:[(AVHapticServerInstance *)self runIncludesAudio] haptics:[(AVHapticServerInstance *)self runIncludesHaptics]];
      if (v67)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      v55 = _os_feature_enabled_impl();
      [(AVHapticServerInstance *)self notifyClientOnStopWithReason:2 error:0];
      goto LABEL_161;
    }
  }

  v28 = atomic_load((v71 + 120));
  if (v28 == 2)
  {
    if (kHSRVScope)
    {
      v29 = *kHSRVScope;
      if (!v29)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v61 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_159;
    }

    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    v74 = 2080;
    v75 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v31 = "%25s:%-5d %s: Client already stopping when suspended - noop";
    v32 = v29;
    v33 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_158;
  }

LABEL_160:
  v55 = 0;
LABEL_161:
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

LABEL_146:
  v56 = *MEMORY[0x1E69E9840];
  return v55;
}

- (void)handleClientRouteChange:(id)change
{
  v31 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v5 = *kHSRVScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          clientID = self->_clientID;
          *buf = 136315906;
          v24 = "AVHapticServer.mm";
          v25 = 1024;
          v26 = 348;
          v27 = 2080;
          v28 = "[AVHapticServerInstance handleClientRouteChange:]";
          v29 = 2048;
          v30 = clientID;
          _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling client route change for client 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69AED30];
  v9 = [changeCopy objectForKey:v8];
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v10 = *kHSRVScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v24 = "AVHapticServer.mm";
          v25 = 1024;
          v26 = 351;
          v27 = 2080;
          v28 = "[AVHapticServerInstance handleClientRouteChange:]";
          v29 = 2112;
          v30 = v9;
          _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: New route: %@", buf, 0x26u);
        }
      }
    }
  }

  if ([v9 isEqualToString:@"Receiver"])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v9 isEqualToString:@"ReceiverAndMicrophone"];
  }

  self->_routeUsesReceiver = v12;
  [v9 isEqualToString:@"Speaker"];
  master = self->_master;
  if (master)
  {
    [(AVHapticServer *)master entryWithID:self->_clientID];
    if (v21)
    {
      manager = [(AVHapticServer *)self->_master manager];
      v20[0] = v21;
      v20[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      routeUsesReceiver = self->_routeUsesReceiver;
      ServerManager::handleRouteChangeForEntry(manager, v20);
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v16 = *kHSRVScope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = self->_clientID;
          *buf = 136315906;
          v24 = "AVHapticServer.mm";
          v25 = 1024;
          v26 = 360;
          v27 = 2080;
          v28 = "[AVHapticServerInstance handleClientRouteChange:]";
          v29 = 2048;
          v30 = v18;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling route change for client 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = [(AVHapticServerInstance *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_21];
  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  v11 = v9;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [errorCopy localizedDescription];
    v14 = 136316162;
    v15 = "AVHapticServer.mm";
    v16 = 1024;
    v17 = 342;
    v18 = 2080;
    v19 = "[AVHapticServerInstance notifyClientOnStopWithReason:error:]";
    v20 = 1024;
    reasonCopy = reason;
    v22 = 2112;
    v23 = localizedDescription;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Calling clientStoppedForReason:%d error:'%@' on client delegate>", &v14, 0x2Cu);
  }

LABEL_8:
  [v8 clientStoppedForReason:reason error:errorCopy];

  v13 = *MEMORY[0x1E69E9840];
}

void __61__AVHapticServerInstance_notifyClientOnStopWithReason_error___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticServer.mm";
    v10 = 1024;
    v11 = 340;
    v12 = 2080;
    v13 = "[AVHapticServerInstance notifyClientOnStopWithReason:error:]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to notify client of stop: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__AVHapticServerInstance_getSyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_1E7ECEB68;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __64__AVHapticServerInstance_getSyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kHSRVScope)
    {
      v4 = *kHSRVScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v12 = 136316418;
      v13 = "AVHapticServer.mm";
      v14 = 1024;
      v15 = 331;
      v16 = 2080;
      v17 = "[AVHapticServerInstance getSyncDelegateForMethod:errorHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Sync XPC call for '%@' (client ID 0x%x) failed: %@", &v12, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__AVHapticServerInstance_getAsyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_1E7ECEB68;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __65__AVHapticServerInstance_getAsyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kHSRVScope)
    {
      v4 = *kHSRVScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v12 = 136316418;
      v13 = "AVHapticServer.mm";
      v14 = 1024;
      v15 = 320;
      v16 = 2080;
      v17 = "[AVHapticServerInstance getAsyncDelegateForMethod:errorHandler:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Async XPC call for '%@' (client ID 0x%x) failed: %@", &v12, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();

  v11 = *MEMORY[0x1E69E9840];
}

@end