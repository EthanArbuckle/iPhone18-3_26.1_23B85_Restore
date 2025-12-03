@interface CATransaction
+ (BOOL)BOOLValueForKey:(unsigned int)key;
+ (BOOL)addCommitHandler:(id)handler forPhase:(int)phase;
+ (BOOL)animatesFromModelValues;
+ (BOOL)batchWithDefaultServerObserver:(id)observer;
+ (BOOL)defaultDisableRunLoopObserverCommits;
+ (BOOL)disableActions;
+ (BOOL)disableImplicitTransactionMainThreadAssert;
+ (BOOL)disableRunLoopObserverCommits;
+ (BOOL)disableSignPosts;
+ (BOOL)emptyLowLatency;
+ (BOOL)frameStallSkipRequest;
+ (BOOL)lowLatency;
+ (CAMediaTimingFunction)animationTimingFunction;
+ (CFTimeInterval)animationDuration;
+ (double)beginTime;
+ (double)commitTime;
+ (double)earliestAutomaticCommitTime;
+ (double)inputTime;
+ (double)updateDeadline;
+ (id)_implicitAnimationForLayer:(id)layer keyPath:(id)path;
+ (id)animator;
+ (id)committingContexts;
+ (id)valueForKey:(NSString *)key;
+ (int)currentPhase;
+ (unint64_t)remoteInputMachTime;
+ (unsigned)currentState;
+ (unsigned)generateSeed;
+ (unsigned)registerBoolKey;
+ (unsigned)startFrameWithReason:(int)reason beginTime:(double)time commitDeadline:(double)deadline;
+ (void)activate;
+ (void)activateBackground:(BOOL)background;
+ (void)assertInactive;
+ (void)commit;
+ (void)completionBlock;
+ (void)finishFrameWithToken:(unsigned int)token;
+ (void)flush;
+ (void)flushAsRunLoopObserver;
+ (void)lock;
+ (void)popAnimator;
+ (void)pushAnimator:(id)animator;
+ (void)setAnimatesFromModelValues:(BOOL)values;
+ (void)setAnimationDuration:(CFTimeInterval)dur;
+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)function;
+ (void)setBeginTime:(double)time;
+ (void)setBoolValue:(BOOL)value forKey:(unsigned int)key;
+ (void)setCommitTime:(double)time;
+ (void)setCommittingContexts:(id)contexts;
+ (void)setCompletionBlock:(void *)block;
+ (void)setDefaultDisableRunLoopObserverCommits:(BOOL)commits;
+ (void)setDisableActions:(BOOL)flag;
+ (void)setDisableImplicitTransactionMainThreadAssert:(BOOL)assert;
+ (void)setDisableRunLoopObserverCommits:(BOOL)commits;
+ (void)setDisableSignPosts:(BOOL)posts;
+ (void)setEarliestAutomaticCommitTime:(double)time;
+ (void)setEmptyLowLatency:(BOOL)latency;
+ (void)setFrameInputTime:(double)time withToken:(unsigned int)token;
+ (void)setFrameStallSkipRequest:(BOOL)request;
+ (void)setImplicitTransactionDidBeginHandler:(id)handler;
+ (void)setInputTime:(double)time;
+ (void)setLowLatency:(BOOL)latency;
+ (void)setPresentationHandler:(id)handler queue:(id)queue;
+ (void)setRemoteInputMachTime:(unint64_t)time;
+ (void)setUpdateDeadline:(double)deadline;
+ (void)setValue:(id)anObject forKey:(NSString *)key;
+ (void)synchronize;
+ (void)unlock;
@end

@implementation CATransaction

+ (BOOL)disableActions
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v3 = v2 + 104;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[28])
    {
      return v3[24] & 1;
    }
  }

  return 0;
}

+ (void)activate
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  if (!**(v2 + 15))
  {

    CA::Transaction::ensure_implicit(v2, 1);
  }
}

+ (void)commit
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2)
  {
    if (**(v2 + 15))
    {
      CA::Transaction::pop(v2, a2);
    }
  }
}

+ (unsigned)currentState
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 120);
  if (!*v3)
  {
    return 0;
  }

  v4 = *(v3 + 204);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 | (2 * v4) & 4;
  if (*(v2 + 128))
  {
    v6 |= 8u;
  }

  return v6 | (8 * *(v2 + 132)) & 0x10;
}

+ (int)currentPhase
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  return *(*(v2 + 15) + 56);
}

+ (void)lock
{
  v2 = CA::Transaction::ensure_compat(self);
  v3 = *(v2 + 29);
  *(v2 + 29) = v3 + 1;
  if (!v3)
  {

    os_unfair_lock_lock(&CA::Transaction::transaction_lock);
  }
}

+ (void)unlock
{
  v2 = CA::Transaction::ensure_compat(self);

  CA::Transaction::unlock(v2);
}

+ (void)flushAsRunLoopObserver
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && **(v2 + 120) && (*(v2 + 132) & 1) != 0)
  {
    CA::Transaction::flush_as_runloop_observer(v2, 0);
  }
}

+ (void)flush
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2)
  {
    if (**(v2 + 15))
    {
      CA::Transaction::flush(v2);
    }
  }
}

+ (void)synchronize
{
  v81 = *MEMORY[0x1E69E9840];
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(self);
  }

  v4 = *(v3 + 15);
  if (*v4 && +[CATransaction(CATransactionPrivate) synchronize]::last_sync_seed == v4[50])
  {
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v5 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      *v73 = 0;
      _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "+[CATransaction synchronize] called within transaction", v73, 2u);
    }
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  *v73 = 0u;
  v74 = 0u;
  v67 = 16;
  v6 = CA::Context::retain_all_contexts(0, v73, &v67, 0, v2);
  v7 = v67;
  if (v67)
  {
    v8 = v6;
    v63 = v3;
    name = 0;
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::__rehash<true>(&v68, v67);
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = *&v8[8 * v9];
      pthread_mutex_lock((v11 + 16));
      v12 = *&v8[8 * v9];
      v13 = *(v12 + 128);
      if (v13 > *(v12 + 132) && !*(v12 + 104))
      {
        v16 = *(v12 + 160);
        if (v16)
        {
          if ((*(v12 + 257) & 2) == 0)
          {
            break;
          }
        }
      }

LABEL_13:
      pthread_mutex_unlock((v11 + 16));
      v9 = v10;
      v15 = v7 > v10++;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    v17 = name;
    if (name - 1 < 0xFFFFFFFE || (v18 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name), v17 = name, name - 1 < 0xFFFFFFFE))
    {
      v65 = v10;
      v19 = _CASSynchronize(v16, v17, -1, v10, v13, 0, 0);
      if (v19)
      {
        v20 = v19;
        if (v19 == 268435459)
        {
          *(*&v8[8 * v9] + 257) |= 2u;
        }

        CAVerifyServerReturn(v19);
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v21 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          v22 = *(*&v8[8 * v9] + 4);
          v23 = mach_error_string(v20);
          *buf = 67109634;
          *v72 = v22;
          *&v72[4] = 1024;
          *&v72[6] = v20;
          *&v72[10] = 2080;
          *&v72[12] = v23;
          _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "Failed to register commit sync (client=0x%x) [0x%x %s]", buf, 0x18u);
        }
      }

      else
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v68, v10);
      }

      goto LABEL_13;
    }

    v24 = v18;
    if (x_log_get_api::once[0] != -1)
    {
      dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
    }

    v25 = x_log_get_api::log;
    if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
    {
      v61 = *(*&v8[8 * v9] + 4);
      v62 = mach_error_string(v24);
      *buf = 67109634;
      *v72 = v61;
      *&v72[4] = 1024;
      *&v72[6] = v24;
      *&v72[10] = 2080;
      *&v72[12] = v62;
      _os_log_error_impl(&dword_183AA6000, v25, OS_LOG_TYPE_ERROR, "Failed to make reply port for commit sync (client=0x%x) [0x%x %s]", buf, 0x18u);
    }

    pthread_mutex_unlock((v11 + 16));
LABEL_32:
    if (*(&v69 + 1))
    {
      v26 = 0;
      v27 = 0;
      while (1)
      {
        v65 = 0;
        *v64 = 0;
        v28 = CA::Render::Context::wait_for_synchronize(name, &v65, &v64[1], v64, v14);
        if (v28 <= 2)
        {
          break;
        }

        if (v28 != 3)
        {
          if (v28 == 4)
          {
            v32 = [MEMORY[0x1E696AD60] stringWithString:@"["];
            v33 = v69;
            if (v69)
            {
              v34 = @"%u(%u:%x)";
              do
              {
                v35 = *&v8[8 * (*(v33 + 4) - 1)];
                [v32 appendFormat:v34, *(v33 + 4), *(v35 + 12), *(v35 + 4)];
                v33 = *v33;
                v34 = @",%u(%u:%x)";
              }

              while (v33);
            }

            if (v27)
            {
              [v32 appendFormat:@"-%u", v27];
            }

            [v32 appendString:@"]"];
            if (v26 > 8)
            {
              if (x_log_get_api::once[0] != -1)
              {
                dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
              }

              v47 = x_log_get_api::log;
              if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
              {
                uTF8String = [v32 UTF8String];
                *buf = 136315138;
                *v72 = uTF8String;
                _os_log_error_impl(&dword_183AA6000, v47, OS_LOG_TYPE_ERROR, "excessive commit sync wait : %s", buf, 0xCu);
              }

              v27 = (v27 + DWORD2(v69));
            }

            else
            {
              if (x_log_get_api::once[0] != -1)
              {
                dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
              }

              v36 = x_log_get_api::log;
              if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
              {
                uTF8String2 = [v32 UTF8String];
                *buf = 67109378;
                *v72 = v26 + 1;
                *&v72[4] = 2080;
                *&v72[6] = uTF8String2;
                _os_log_error_impl(&dword_183AA6000, v36, OS_LOG_TYPE_ERROR, "long commit sync wait %i : %s", buf, 0x12u);
              }
            }

            ++v26;
            goto LABEL_84;
          }

LABEL_53:
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v38 = x_log_get_api::log;
          if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          *buf = 0;
          v30 = v38;
          v31 = "unknown error while waiting for commit sync";
          goto LABEL_68;
        }

        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v27 = (v27 + 1);
        v45 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 0;
        v30 = v45;
        v31 = "unrecognized reply from commit sync";
LABEL_68:
        v46 = 2;
LABEL_69:
        _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, v31, buf, v46);
LABEL_84:
        if (*(&v69 + 1) <= v27)
        {
          goto LABEL_92;
        }
      }

      if (v28 == 1)
      {
        v39 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(&v68, v65);
        if (v39)
        {
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::erase(&v68, v39);
          v40 = v65 - 1;
          v41 = *&v8[8 * v65 - 8];
          pthread_mutex_lock((v41 + 16));
          v42 = v64[1];
          v43 = *&v8[8 * v40];
          v44 = v43[33];
          if (v64[1] > v44)
          {
            v43[33] = v64[1];
            v44 = v42;
          }

          if (v64[0] > v43[34])
          {
            v43[34] = v64[0];
          }

          if (v44 > v43[32])
          {
            if (x_log_get_api::once[0] != -1)
            {
              dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
            }

            v56 = x_log_get_api::log;
            if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
            {
              v57 = *(*&v8[8 * v40] + 128);
              v58 = *(*&v8[8 * v40] + 132);
              *buf = 67109376;
              *v72 = v58;
              *&v72[4] = 1024;
              *&v72[6] = v57;
              _os_log_error_impl(&dword_183AA6000, v56, OS_LOG_TYPE_ERROR, "server/client commit_seed mismatch : sync server seed (%u) > client (%u)", buf, 0xEu);
            }

            *(*&v8[8 * v40] + 128) = *(*&v8[8 * v40] + 132);
          }

          pthread_mutex_unlock((v41 + 16));
          goto LABEL_84;
        }

        v48 = [MEMORY[0x1E696AD60] stringWithString:@"["];
        v49 = v69;
        if (v69)
        {
          v50 = @"%u(%u:%x)";
          do
          {
            v51 = *&v8[8 * (*(v49 + 4) - 1)];
            [v48 appendFormat:v50, *(v49 + 4), *(v51 + 12), *(v51 + 4)];
            v49 = *v49;
            v50 = @",%u(%u:%x)";
          }

          while (v49);
        }

        v27 = (v27 + 1);
        if (v27)
        {
          [v48 appendFormat:@"-%u", v27];
        }

        [v48 appendString:@"]"];
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v52 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        v54 = v65;
        uTF8String3 = [v48 UTF8String];
        *buf = 67109378;
        *v72 = v54;
        *&v72[4] = 2080;
        *&v72[6] = uTF8String3;
        v30 = v52;
        v31 = "bad index in commit sync reply : %u not in %s";
        v46 = 18;
        goto LABEL_69;
      }

      if (v28 == 2)
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v27 = (v27 + 1);
        v29 = x_log_get_api::log;
        if (!os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_84;
        }

        *buf = 0;
        v30 = v29;
        v31 = "dead reply from commit sync";
        goto LABEL_68;
      }

      goto LABEL_53;
    }

LABEL_92:
    v3 = v63;
    if (name - 1 < 0xFFFFFFFE)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    }

    v59 = 0;
    v60 = 1;
    do
    {
      CA::Context::unref(*&v8[8 * v59], 0);
      v59 = v60;
      v15 = v7 > v60++;
    }

    while (v15);
    if (v8 != v73)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      malloc_zone_free(malloc_zone, v8);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(&v68);
  }

  +[CATransaction(CATransactionPrivate) synchronize]::last_sync_seed = *(*(v3 + 15) + 200);
}

+ (double)commitTime
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v5[0] = 0;
  value = CA::Transaction::get_value(*(v2 + 13), 122, 0x12, v5);
  result = *v5;
  if (!value)
  {
    return 0.0;
  }

  return result;
}

+ (void)popAnimator
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(self);
  }

  v3 = *(v2 + 1);
  if (v3)
  {
    if (*v3)
    {
      _Block_release(*v3);
      v3 = *(v2 + 1);
    }

    *(v2 + 1) = x_list_remove_head(v3);
  }
}

+ (void)setValue:(id)anObject forKey:(NSString *)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = anObject;
  v6 = CAInternAtom(key, 1);
  v7 = v6;
  v8 = &transaction_properties;
  v9 = 9;
  while (*v8 != v6)
  {
    v8 += 12;
    if (!--v9)
    {
      v10 = CA::Transaction::ensure_compat(v6);
      CA::Transaction::set_value(v10, v7, 2, v13);
      return;
    }
  }

  v11 = *(v8 + 3);
  if (!v11)
  {
    v11 = sel_registerName(*(v8 + 1));
    *(v8 + 3) = v11;
  }

  v12 = v8[10];

  CA_setValueForKey(self, v11, v12, anObject);
}

+ (id)valueForKey:(NSString *)key
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = CAInternAtom(key, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = &transaction_properties;
  v7 = 9;
  while (*v6 != v4)
  {
    v6 += 12;
    if (!--v7)
    {
      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
      if (!v8)
      {
        v8 = CA::Transaction::create(0);
      }

      v12[0] = 0;
      if (CA::Transaction::get_value(*(v8 + 13), v5, 2, v12))
      {
        return v12[0];
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(v6 + 4);
  if (!v10)
  {
    v10 = sel_registerName(*(v6 + 2));
    *(v6 + 4) = v10;
  }

  v11 = v6[10];

  return CA_valueForKey(self, v10, v11);
}

+ (void)setCompletionBlock:(void *)block
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = CA::Transaction::ensure_compat(self);
  v12 = 0;
  if (CA::Transaction::get_value(v4[13], 123, 5, &v12))
  {
    v5 = v12 == block;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = _Block_copy(block);
    v13[0] = v6;
    CA::Transaction::set_value(v4, 0x7B, 5, v13);
    v7 = v4[13];
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      CA::Transaction::Continuation::unref(v8);
      v7[1] = 0;
    }

    if (v6)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v10 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x165299FDuLL);
      if (v10)
      {
        if (v9)
        {
          v11 = *(v9 + 8);
          *v10 = 0;
          if (v11)
          {
            atomic_fetch_add(v11, 1u);
          }
        }

        else
        {
          v11 = 0;
        }

        v10[1] = v11;
        v10[2] = v6;
        *v10 = 1;
      }

      v7[1] = v10;
    }
  }
}

+ (void)completionBlock
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v4[0] = 0;
  if (CA::Transaction::get_value(*(v2 + 13), 123, 5, v4))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

+ (void)setDisableActions:(BOOL)flag
{
  v3 = flag;
  v4 = CA::Transaction::ensure_compat(self);

  CA::Transaction::set_BOOL_value(v4, v3, 0);
}

+ (void)setAnimationTimingFunction:(CAMediaTimingFunction *)function
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = function;
  v3 = CA::Transaction::ensure_compat(self);
  CA::Transaction::set_value(v3, 0x28, 2, v4);
}

+ (CAMediaTimingFunction)animationTimingFunction
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v4[0] = 0;
  if (CA::Transaction::get_value(*(v2 + 13), 40, 2, v4))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

+ (void)setAnimationDuration:(CFTimeInterval)dur
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = dur;
  v3 = CA::Transaction::ensure_compat(self);
  CA::Transaction::set_value(v3, 0x27, 18, v4);
}

+ (CFTimeInterval)animationDuration
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v5[0] = 0;
  value = CA::Transaction::get_value(*(v2 + 13), 39, 0x12, v5);
  result = *v5;
  if (!value)
  {
    return 0.25;
  }

  return result;
}

+ (BOOL)batchWithDefaultServerObserver:(id)observer
{
  v4 = CA::Transaction::ensure_compat(self);
  *(*(v4 + 15) + 204) |= 0x40u;
  v5 = *(v4 + 132);
  if ((v5 & 2) == 0)
  {
    v6 = v4;
    v7 = *(v4 + 15);
    if (!*v7)
    {
      CA::Transaction::ensure_implicit(v4, 1);
      v7 = *(v6 + 15);
    }

    v8 = *(v6 + 29);
    *(v6 + 29) = v8 + 1;
    if (!v8)
    {
      os_unfair_lock_lock(&CA::Transaction::transaction_lock);
    }

    v9 = *(v7 + 48);
    v10 = _Block_copy(observer);
    *(v7 + 48) = x_list_prepend(v9, v10);
    CA::Transaction::unlock(v6);
  }

  return (v5 & 2) == 0;
}

+ (void)setImplicitTransactionDidBeginHandler:(id)handler
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
  }

  v5 = *(*(v4 + 15) + 112);
  if (v5)
  {
    _Block_release(v5);
    *(*(v4 + 15) + 112) = 0;
  }

  if (handler)
  {
    *(*(v4 + 15) + 112) = _Block_copy(handler);
  }
}

+ (void)setCommittingContexts:(id)contexts
{
  v4 = (*(CA::Transaction::ensure_compat(self) + 15) + 120);

  X::CFRef<CGColorSpace *>::operator=(v4, contexts);
}

+ (id)committingContexts
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2)
  {
    return *(*(v2 + 120) + 120);
  }

  else
  {
    return 0;
  }
}

+ (void)setBoolValue:(BOOL)value forKey:(unsigned int)key
{
  valueCopy = value;
  v6 = CA::Transaction::ensure_compat(self);

  CA::Transaction::set_BOOL_value(v6, valueCopy, key);
}

+ (BOOL)BOOLValueForKey:(unsigned int)key
{
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v3)
  {
    if (key >= 0x20)
    {
      __assert_rtn("BOOL_value", "CATransactionInternal.mm", 1346, "key < (CHAR_BIT * sizeof (Level::_BOOL_values))");
    }

    v4 = 1 << key;
    v5 = (v3 + 104);
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if ((*(v5 + 7) & v4) != 0)
      {
        return (v5[3] & v4) != 0;
      }
    }
  }

  return 0;
}

+ (unsigned)registerBoolKey
{
  v2 = atomic_load(CA::_BOOL_key);
  if (v2 >= 0x20)
  {
    __assert_rtn("register_BOOL_key", "CATransactionInternal.mm", 1338, "_BOOL_key < CHAR_BIT * sizeof (Level::_BOOL_values)");
  }

  return atomic_fetch_add(CA::_BOOL_key, 1u);
}

+ (void)assertInactive
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2)
  {
    v3 = *(v2 + 120);
    if (*v3)
    {
      if (CA::Transaction::_debug_transactions == 1)
      {
        *buf = 0;
        v16 = 0;
        v17 = 0;
        v9 = backtrace_symbols(*(v3 + 240), *(v3 + 206));
        if (v9)
        {
          if (*(v3 + 206))
          {
            v12 = 0;
            do
            {
              X::Stream::printf(buf, "\n%s", v9[v12++]);
            }

            while (v12 < *(v3 + 206));
          }

          free(v9);
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v13 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            v14 = x_stream_get(buf);
            *v18 = 136315138;
            v19 = v14;
            v5 = "CoreAnimation: Encountered thread with uncommitted CATransaction; created by:%s";
            v6 = v18;
            v7 = v13;
            v8 = 12;
            goto LABEL_9;
          }
        }

        else
        {
          if (x_log_get_api::once[0] != -1)
          {
            dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
          }

          v10 = x_log_get_api::log;
          if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
          {
            v11 = x_stream_get(buf);
            *v18 = 136315138;
            v19 = v11;
            _os_log_error_impl(&dword_183AA6000, v10, OS_LOG_TYPE_ERROR, "Encountered thread with uncommitted CATransaction; created by:%s", v18, 0xCu);
            if (*buf)
            {
              free(*buf);
              abort();
            }
          }
        }
      }

      else
      {
        if (x_log_get_api::once[0] != -1)
        {
          dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
        }

        v4 = x_log_get_api::log;
        if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v5 = "warning, encountered thread with uncommitted CATransaction; set CA_DEBUG_TRANSACTIONS=1 in environment to log backtraces, or set CA_ASSERT_MAIN_THREAD_TRANSACTIONS=1 to abort when an implicit transaction isn't created on a main thread.\n";
          v6 = buf;
          v7 = v4;
          v8 = 2;
LABEL_9:
          _os_log_error_impl(&dword_183AA6000, v7, OS_LOG_TYPE_ERROR, v5, v6, v8);
        }
      }

      abort();
    }
  }
}

+ (unsigned)generateSeed
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(self);
  }

  v3 = v2[15];
  if (!*v3)
  {
    CA::Transaction::ensure_implicit(v2, 1);
    v3 = v2[15];
  }

  *(v3 + 204) |= 4u;
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  CA::Transaction::set_frame_begin_time(v2[15], v5);
  v6 = *(v2[15] + 200);
  getpid();
  kdebug_trace();
  return v6;
}

+ (void)setEmptyLowLatency:(BOOL)latency
{
  v5 = *MEMORY[0x1E69E9840];
  latencyCopy = latency;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(0);
  }

  CA::Transaction::set_value(v3, 0xE9, 7, &latencyCopy);
}

+ (BOOL)emptyLowLatency
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && (v5 = 0, (CA::Transaction::get_value(*(v2 + 104), 233, 7, &v5) & 1) != 0))
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

+ (void)setLowLatency:(BOOL)latency
{
  v5 = *MEMORY[0x1E69E9840];
  latencyCopy = latency;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v3)
  {
    v3 = CA::Transaction::create(0);
  }

  CA::Transaction::set_value(v3, 0x1EB, 7, &latencyCopy);
}

+ (BOOL)lowLatency
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && (v5 = 0, (CA::Transaction::get_value(*(v2 + 104), 491, 7, &v5) & 1) != 0))
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

+ (void)setFrameInputTime:(double)time withToken:(unsigned int)token
{
  if (token)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v5)
    {
      v5 = CA::Transaction::create(0);
    }

    v6 = *(v5 + 15);

    CA::Transaction::set_frame_input_time(v6, time);
  }
}

+ (void)finishFrameWithToken:(unsigned int)token
{
  if (token)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v3)
    {
      v3 = CA::Transaction::create(0);
    }

    CA::Transaction::finish_frame(v3);
  }
}

+ (unsigned)startFrameWithReason:(int)reason beginTime:(double)time commitDeadline:(double)deadline
{
  if (time == 0.0 || deadline == 0.0)
  {
    return 0;
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v8)
  {
    v8 = CA::Transaction::create(self);
  }

  v9 = mach_absolute_time();
  v10 = CATimeWithHostTime(v9);
  v11 = *(v8 + 15);

  return CA::Transaction::start_frame(v11, reason, time, v10, deadline);
}

+ (void)setBeginTime:(double)time
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(0);
  }

  v5 = *(v4 + 15);

  CA::Transaction::set_frame_begin_time(v5, time);
}

+ (double)beginTime
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    return 1.79769313e308;
  }

  result = *(*(v2 + 120) + 176);
  if (result == 0.0)
  {
    return 1.79769313e308;
  }

  return result;
}

+ (void)setRemoteInputMachTime:(unint64_t)time
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = time;
  if (time)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v4)
    {
      v4 = CA::Transaction::create(self);
    }

    v6 = -1;
    if (CA::Transaction::get_value(v4[13], 600, 0x10, &v6))
    {
      v5 = v6 > time;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      CA::Transaction::set_value(v4, 0x258, 16, v7);
    }
  }
}

+ (unint64_t)remoteInputMachTime
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && (v4[0] = 0, (CA::Transaction::get_value(*(v2 + 104), 600, 0x10, v4) & 1) != 0))
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

+ (void)setFrameStallSkipRequest:(BOOL)request
{
  requestCopy = request;
  v8 = *MEMORY[0x1E69E9840];
  requestCopy2 = request;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
  }

  v6 = 0;
  if (CA::Transaction::get_value(v4[13], 268, 7, &v6))
  {
    v5 = v6 == requestCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    CA::Transaction::set_value(v4, 0x10C, 7, &requestCopy2);
  }

  kdebug_trace();
}

+ (BOOL)frameStallSkipRequest
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && (v5 = 0, (CA::Transaction::get_value(*(v2 + 104), 268, 0x12, &v5) & 1) != 0))
  {
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

+ (void)setInputTime:(double)time
{
  if (time != 0.0)
  {
    v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (!v5)
    {
      v5 = CA::Transaction::create(0);
    }

    v6 = *(v5 + 15);

    CA::Transaction::set_frame_input_time(v6, time);
  }
}

+ (double)inputTime
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2)
  {
    return *(*(v2 + 120) + 192);
  }

  else
  {
    return 0.0;
  }
}

+ (void)setDefaultDisableRunLoopObserverCommits:(BOOL)commits
{
  commitsCopy = commits;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(0);
  }

  if (commitsCopy)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  *(*(v4 + 15) + 204) = *(*(v4 + 15) + 204) & 0xEF | v5;
}

+ (BOOL)defaultDisableRunLoopObserverCommits
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  return (*(*(v2 + 15) + 204) >> 4) & 1;
}

+ (void)setDisableRunLoopObserverCommits:(BOOL)commits
{
  commitsCopy = commits;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(0);
  }

  if (commitsCopy)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(*(v4 + 15) + 204) = *(*(v4 + 15) + 204) & 0xF7 | v5;
}

+ (BOOL)disableRunLoopObserverCommits
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  return (*(*(v2 + 15) + 204) >> 3) & 1;
}

+ (void)setEarliestAutomaticCommitTime:(double)time
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = time;
  v3 = CA::Transaction::ensure_compat(self);
  CA::Transaction::set_value(v3, 0xD4, 18, v4);
}

+ (double)earliestAutomaticCommitTime
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v5[0] = 0;
  value = CA::Transaction::get_value(*(v2 + 13), 212, 0x12, v5);
  result = *v5;
  if (!value)
  {
    return 0.0;
  }

  return result;
}

+ (void)setUpdateDeadline:(double)deadline
{
  v7[1] = *MEMORY[0x1E69E9840];
  *v7 = deadline;
  v4 = CA::Transaction::ensure_compat(self);
  v6 = 0.0;
  if (CA::Transaction::get_value(v4[13], 727, 0x12, &v6))
  {
    deadlineCopy = v6;
    if (v6 > deadline)
    {
      deadlineCopy = deadline;
    }

    *v7 = deadlineCopy;
  }

  CA::Transaction::set_value(v4, 0x2D7, 18, v7);
}

+ (double)updateDeadline
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v5[0] = 0;
  value = CA::Transaction::get_value(*(v2 + 13), 727, 0x12, v5);
  result = *v5;
  if (!value)
  {
    return 0.0;
  }

  return result;
}

+ (void)setCommitTime:(double)time
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = time;
  v3 = CA::Transaction::ensure_compat(self);
  CA::Transaction::set_value(v3, 0x7A, 18, v4);
}

+ (void)setDisableSignPosts:(BOOL)posts
{
  postsCopy = posts;
  v4 = *(CA::Transaction::ensure_compat(self) + 15);
  if (postsCopy)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 204) = *(v4 + 204) & 0xDF | v5;
}

+ (BOOL)disableSignPosts
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  return (*(*(v2 + 15) + 204) >> 5) & 1;
}

+ (void)setAnimatesFromModelValues:(BOOL)values
{
  v5 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v3 = CA::Transaction::ensure_compat(self);
  CA::Transaction::set_value(v3, 0x25, 7, &valuesCopy);
}

+ (BOOL)animatesFromModelValues
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v5 = 0;
  value = CA::Transaction::get_value(*(v2 + 13), 37, 7, &v5);
  return value & v5;
}

+ (void)setDisableImplicitTransactionMainThreadAssert:(BOOL)assert
{
  assertCopy = assert;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v4 || (v4 = CA::Transaction::create(0)) != 0)
  {
    if (assertCopy)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 132) = *(v4 + 132) & 0xF7 | v5;
  }
}

+ (BOOL)disableImplicitTransactionMainThreadAssert
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  return (*(v2 + 132) >> 3) & 1;
}

+ (void)activateBackground:(BOOL)background
{
  backgroundCopy = background;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
  }

  if (**(v4 + 15))
  {
    if (!backgroundCopy)
    {
      return;
    }
  }

  else
  {
    CA::Transaction::ensure_implicit(v4, 0);
    if (!backgroundCopy)
    {
      return;
    }
  }

  if (pthread_main_np())
  {
    [MEMORY[0x1E695DF30] raise:@"CATransactionInvalidThread" format:@"May not mark the main thread as a background transaction"];
  }

  *(v4 + 132) |= 4u;
}

+ (void)setPresentationHandler:(id)handler queue:(id)queue
{
  os_unfair_lock_lock(&CA::Transaction::presentation_handler_lock);
  if (queue)
  {
    dispatch_retain(queue);
  }

  if (handler)
  {
    handler = _Block_copy(handler);
  }

  if (CA::Transaction::presentation_handler)
  {
    _Block_release(CA::Transaction::presentation_handler);
  }

  if (CA::Transaction::presentation_handler_queue)
  {
    dispatch_release(CA::Transaction::presentation_handler_queue);
  }

  CA::Transaction::presentation_handler = handler;
  CA::Transaction::presentation_handler_queue = queue;

  os_unfair_lock_unlock(&CA::Transaction::presentation_handler_lock);
}

+ (BOOL)addCommitHandler:(id)handler forPhase:(int)phase
{
  v4 = *&phase;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(0);
  }

  return CA::Transaction::add_commit_handler(v6, handler, v4);
}

+ (id)animator
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v2)
  {
    v2 = CA::Transaction::create(0);
  }

  v3 = *(v2 + 1);
  if (v3)
  {
    return *v3;
  }

  else
  {
    return &__block_literal_global_20949;
  }
}

+ (void)pushAnimator:(id)animator
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v4)
  {
    v4 = CA::Transaction::create(self);
    if (animator)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (!animator)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = _Block_copy(animator);
LABEL_6:
  *(v4 + 1) = x_list_prepend(*(v4 + 1), v5);
}

+ (id)_implicitAnimationForLayer:(id)layer keyPath:(id)path
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (!v6)
  {
    v6 = CA::Transaction::create(0);
  }

  v7 = *(v6 + 1);
  if (v7)
  {
    result = *v7;
    if (*v7)
    {
      v9 = *(result + 2);

      return v9();
    }
  }

  else
  {

    return [layer implicitAnimationForKeyPath:path];
  }

  return result;
}

@end